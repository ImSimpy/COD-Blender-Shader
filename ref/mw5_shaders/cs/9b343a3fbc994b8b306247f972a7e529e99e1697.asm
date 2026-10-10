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
; shader hash: 019b3b51decf913a86183ddb40da20cb
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
  br i1 %88, label %95, label %1246, !dx.controlflow.hints !26

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
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = fadd fast float %153, 5.000000e-01
  %160 = fadd fast float %154, 5.000000e-01
  %161 = fmul fast float %123, 2.000000e+00
  %162 = fmul fast float %161, %159
  %163 = fmul fast float %124, 2.000000e+00
  %164 = fmul fast float %163, %160
  %165 = fadd fast float %162, -1.000000e+00
  %166 = fsub fast float 1.000000e+00, %164
  %167 = fmul fast float %155, %93
  %168 = fsub fast float %151, %152
  %169 = fmul fast float %167, %168
  %170 = fadd fast float %169, %152
  %171 = fadd fast float %155, 1.000000e+00
  %172 = fmul fast float %171, %93
  %173 = fmul fast float %172, %168
  %174 = fadd fast float %173, %152
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %187 = fmul fast float %176, %165
  %188 = fmul fast float %177, %165
  %189 = fmul fast float %178, %165
  %190 = fmul fast float %180, %166
  %191 = fmul fast float %181, %166
  %192 = fmul fast float %182, %166
  %193 = fadd fast float %190, %187
  %194 = fadd fast float %191, %188
  %195 = fadd fast float %192, %189
  %196 = fadd fast float %193, %184
  %197 = fadd fast float %194, %185
  %198 = fadd fast float %195, %186
  %199 = fmul fast float %196, %170
  %200 = fmul fast float %197, %170
  %201 = fmul fast float %198, %170
  %202 = fmul fast float %176, %157
  %203 = fsub fast float -0.000000e+00, %202
  %204 = fmul fast float %177, %157
  %205 = fsub fast float -0.000000e+00, %204
  %206 = fmul fast float %178, %157
  %207 = fsub fast float -0.000000e+00, %206
  %208 = fmul fast float %202, %170
  %209 = fmul fast float %204, %170
  %210 = fmul fast float %206, %170
  %211 = fmul fast float %180, %158
  %212 = fmul fast float %181, %158
  %213 = fmul fast float %182, %158
  %214 = fmul fast float %211, %170
  %215 = fmul fast float %212, %170
  %216 = fmul fast float %213, %170
  %217 = fmul fast float %196, %174
  %218 = fmul fast float %197, %174
  %219 = fmul fast float %198, %174
  %220 = fmul fast float %202, %174
  %221 = fmul fast float %204, %174
  %222 = fmul fast float %206, %174
  %223 = fmul fast float %211, %174
  %224 = fmul fast float %212, %174
  %225 = fmul fast float %213, %174
  %226 = add i32 %105, 63
  %227 = and i32 %226, -64
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %1225, label %229

; <label>:229                                     ; preds = %147
  br label %230

; <label>:230                                     ; preds = %1220, %229
  %231 = phi i32 [ %1221, %1220 ], [ 0, %229 ]
  %232 = phi i32 [ %1222, %1220 ], [ 0, %229 ]
  %233 = add i32 %232, %9
  %234 = icmp ult i32 %233, %105
  %235 = and i1 %132, %234
  br i1 %235, label %236, label %241, !dx.controlflow.hints !33

; <label>:236                                     ; preds = %230
  %237 = add i32 %233, %103
  %238 = shl i32 %237, 2
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  br label %241

; <label>:241                                     ; preds = %236, %230
  %242 = phi i32 [ %240, %236 ], [ -1, %230 ]
  %243 = icmp ult i32 %242, %87
  br i1 %243, label %244, label %1144, !dx.controlflow.hints !34

; <label>:244                                     ; preds = %241
  %245 = mul i32 %242, 48
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = or i32 %245, 12
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = add i32 %245, 24
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = add i32 %245, 36
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 0
  %266 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 0
  %267 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 0
  store float %252, float* %265, align 4
  store float %253, float* %266, align 4
  store float %254, float* %267, align 4
  %268 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 1
  %269 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 1
  %270 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 1
  store float %257, float* %268, align 4
  store float %258, float* %269, align 4
  store float %259, float* %270, align 4
  %271 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 2
  %272 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 2
  %273 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 2
  store float %262, float* %271, align 4
  store float %263, float* %272, align 4
  store float %264, float* %273, align 4
  %274 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %275 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %276 = call float @dx.op.unary.f32(i32 6, float %275)  ; FAbs(value)
  %277 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %278 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %279 = fadd fast float %278, %276
  %280 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %281 = call float @dx.op.unary.f32(i32 6, float %280)  ; FAbs(value)
  %282 = fadd fast float %279, %281
  %283 = fsub fast float %274, %282
  %284 = fadd fast float %282, %274
  %285 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fadd fast float %289, %287
  %291 = fsub fast float %285, %290
  %292 = fadd fast float %290, %285
  %293 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %252, float %253, float %254)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = call float @dx.op.unary.f32(i32 6, float %296)  ; FAbs(value)
  %298 = fadd fast float %297, %295
  %299 = fsub fast float %293, %298
  %300 = fadd fast float %298, %293
  %301 = fcmp fast olt float %299, %291
  %302 = select i1 %301, float %299, float %291
  %303 = fcmp fast ogt float %300, %292
  %304 = select i1 %303, float %300, float %292
  %305 = fcmp fast olt float %304, %283
  %306 = fcmp fast olt float %284, %302
  %307 = or i1 %305, %306
  br i1 %307, label %1144, label %308, !dx.controlflow.hints !35

; <label>:308                                     ; preds = %244
  %309 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %310 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.unary.f32(i32 6, float %312)  ; FAbs(value)
  %314 = fadd fast float %313, %311
  %315 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %317 = fadd fast float %314, %316
  %318 = fsub fast float %309, %317
  %319 = fadd fast float %317, %309
  %320 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %321 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %323 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %325 = fadd fast float %324, %322
  %326 = fsub fast float %320, %325
  %327 = fadd fast float %325, %320
  %328 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = call float @dx.op.unary.f32(i32 6, float %329)  ; FAbs(value)
  %331 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %257, float %258, float %259)  ; Dot3(ax,ay,az,bx,by,bz)
  %332 = call float @dx.op.unary.f32(i32 6, float %331)  ; FAbs(value)
  %333 = fadd fast float %332, %330
  %334 = fsub fast float %328, %333
  %335 = fadd fast float %333, %328
  %336 = fcmp fast olt float %334, %326
  %337 = select i1 %336, float %334, float %326
  %338 = fcmp fast ogt float %335, %327
  %339 = select i1 %338, float %335, float %327
  %340 = fcmp fast olt float %339, %318
  %341 = fcmp fast olt float %319, %337
  %342 = or i1 %340, %341
  br i1 %342, label %1144, label %343, !dx.controlflow.hints !35

; <label>:343                                     ; preds = %308
  %344 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %347 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = call float @dx.op.unary.f32(i32 6, float %347)  ; FAbs(value)
  %349 = fadd fast float %348, %346
  %350 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %351 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %352 = fadd fast float %349, %351
  %353 = fsub fast float %344, %352
  %354 = fadd fast float %352, %344
  %355 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = call float @dx.op.unary.f32(i32 6, float %356)  ; FAbs(value)
  %358 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = call float @dx.op.unary.f32(i32 6, float %358)  ; FAbs(value)
  %360 = fadd fast float %359, %357
  %361 = fsub fast float %355, %360
  %362 = fadd fast float %360, %355
  %363 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call float @dx.op.unary.f32(i32 6, float %364)  ; FAbs(value)
  %366 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %262, float %263, float %264)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = call float @dx.op.unary.f32(i32 6, float %366)  ; FAbs(value)
  %368 = fadd fast float %367, %365
  %369 = fsub fast float %363, %368
  %370 = fadd fast float %368, %363
  %371 = fcmp fast olt float %369, %361
  %372 = select i1 %371, float %369, float %361
  %373 = fcmp fast ogt float %370, %362
  %374 = select i1 %373, float %370, float %362
  %375 = fcmp fast olt float %374, %353
  %376 = fcmp fast olt float %354, %372
  %377 = or i1 %375, %376
  br i1 %377, label %1144, label %378, !dx.controlflow.hints !35

; <label>:378                                     ; preds = %343
  %379 = fcmp fast ole float %283, %302
  %380 = fcmp fast ole float %304, %284
  %381 = and i1 %379, %380
  %382 = zext i1 %381 to i32
  %383 = shl nuw nsw i32 %382, 1
  %384 = fcmp fast ole float %318, %337
  %385 = fcmp fast ole float %339, %319
  %386 = and i1 %384, %385
  %387 = zext i1 %386 to i32
  %388 = or i32 %387, %383
  %389 = shl nuw nsw i32 %388, 1
  %390 = fcmp fast ole float %353, %372
  %391 = fcmp fast ole float %374, %354
  %392 = and i1 %390, %391
  %393 = zext i1 %392 to i32
  %394 = or i32 %393, %389
  %395 = icmp eq i32 %394, 7
  br i1 %395, label %1144, label %396, !dx.controlflow.hints !36

; <label>:396                                     ; preds = %378
  %397 = fsub fast float %247, %199
  %398 = fsub fast float %248, %200
  %399 = fsub fast float %249, %201
  %400 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %401 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = call float @dx.op.unary.f32(i32 6, float %401)  ; FAbs(value)
  %403 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %404 = call float @dx.op.unary.f32(i32 6, float %403)  ; FAbs(value)
  %405 = fadd fast float %404, %402
  %406 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = call float @dx.op.unary.f32(i32 6, float %406)  ; FAbs(value)
  %408 = fadd fast float %405, %407
  %409 = fsub fast float %400, %408
  %410 = fadd fast float %408, %400
  %411 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %414 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = call float @dx.op.unary.f32(i32 6, float %414)  ; FAbs(value)
  %416 = fadd fast float %415, %413
  %417 = fsub fast float %411, %416
  %418 = fadd fast float %416, %411
  %419 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %422 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %397, float %398, float %399)  ; Dot3(ax,ay,az,bx,by,bz)
  %423 = call float @dx.op.unary.f32(i32 6, float %422)  ; FAbs(value)
  %424 = fadd fast float %423, %421
  %425 = fsub fast float %419, %424
  %426 = fadd fast float %424, %419
  %427 = fcmp fast olt float %425, %417
  %428 = select i1 %427, float %425, float %417
  %429 = fcmp fast ogt float %426, %418
  %430 = select i1 %429, float %426, float %418
  %431 = fcmp fast olt float %430, %409
  %432 = fcmp fast olt float %410, %428
  %433 = or i1 %431, %432
  br i1 %433, label %1144, label %434, !dx.controlflow.hints !37

; <label>:434                                     ; preds = %396
  %435 = fmul fast float %216, %209
  %436 = fmul fast float %215, %210
  %437 = fsub fast float %435, %436
  %438 = fmul fast float %214, %210
  %439 = fmul fast float %216, %208
  %440 = fsub fast float %438, %439
  %441 = fmul fast float %215, %208
  %442 = fmul fast float %214, %209
  %443 = fsub fast float %441, %442
  %444 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %447 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %448 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %449 = fadd fast float %448, %446
  %450 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %452 = fadd fast float %449, %451
  %453 = fsub fast float %444, %452
  %454 = fadd fast float %452, %444
  %455 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = call float @dx.op.unary.f32(i32 6, float %456)  ; FAbs(value)
  %458 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %460 = fadd fast float %459, %457
  %461 = fsub fast float %455, %460
  %462 = fadd fast float %460, %455
  %463 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %464 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %466 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %437, float %440, float %443)  ; Dot3(ax,ay,az,bx,by,bz)
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %468 = fadd fast float %467, %465
  %469 = fsub fast float %463, %468
  %470 = fadd fast float %468, %463
  %471 = fcmp fast olt float %469, %461
  %472 = select i1 %471, float %469, float %461
  %473 = fcmp fast ogt float %470, %462
  %474 = select i1 %473, float %470, float %462
  %475 = fcmp fast olt float %474, %453
  %476 = fcmp fast olt float %454, %472
  %477 = or i1 %475, %476
  br i1 %477, label %1144, label %478, !dx.controlflow.hints !38

; <label>:478                                     ; preds = %434
  %479 = fsub fast float %203, %211
  %480 = fadd fast float %479, %196
  %481 = fsub fast float %205, %212
  %482 = fadd fast float %481, %197
  %483 = fsub fast float %207, %213
  %484 = fadd fast float %483, %198
  %485 = fmul fast float %168, %93
  %486 = fmul fast float %480, %485
  %487 = fmul fast float %168, %93
  %488 = fmul fast float %482, %487
  %489 = fmul fast float %168, %93
  %490 = fmul fast float %484, %489
  %491 = fmul fast float %490, %209
  %492 = fmul fast float %488, %210
  %493 = fsub fast float %491, %492
  %494 = fmul fast float %486, %210
  %495 = fmul fast float %490, %208
  %496 = fsub fast float %494, %495
  %497 = fmul fast float %488, %208
  %498 = fmul fast float %486, %209
  %499 = fsub fast float %497, %498
  %500 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %502 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %503 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  %505 = fadd fast float %504, %502
  %506 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %507 = call float @dx.op.unary.f32(i32 6, float %506)  ; FAbs(value)
  %508 = fadd fast float %505, %507
  %509 = fsub fast float %500, %508
  %510 = fadd fast float %508, %500
  %511 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.unary.f32(i32 6, float %512)  ; FAbs(value)
  %514 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call float @dx.op.unary.f32(i32 6, float %514)  ; FAbs(value)
  %516 = fadd fast float %515, %513
  %517 = fsub fast float %511, %516
  %518 = fadd fast float %516, %511
  %519 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %522 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %493, float %496, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.unary.f32(i32 6, float %522)  ; FAbs(value)
  %524 = fadd fast float %523, %521
  %525 = fsub fast float %519, %524
  %526 = fadd fast float %524, %519
  %527 = fcmp fast olt float %525, %517
  %528 = select i1 %527, float %525, float %517
  %529 = fcmp fast ogt float %526, %518
  %530 = select i1 %529, float %526, float %518
  %531 = fcmp fast olt float %530, %509
  %532 = fcmp fast olt float %510, %528
  %533 = or i1 %531, %532
  br i1 %533, label %1144, label %534, !dx.controlflow.hints !39

; <label>:534                                     ; preds = %478
  %535 = fmul fast float %490, %215
  %536 = fmul fast float %488, %216
  %537 = fsub fast float %535, %536
  %538 = fmul fast float %486, %216
  %539 = fmul fast float %490, %214
  %540 = fsub fast float %538, %539
  %541 = fmul fast float %488, %214
  %542 = fmul fast float %486, %215
  %543 = fsub fast float %541, %542
  %544 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.unary.f32(i32 6, float %545)  ; FAbs(value)
  %547 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 6, float %547)  ; FAbs(value)
  %549 = fadd fast float %548, %546
  %550 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = call float @dx.op.unary.f32(i32 6, float %550)  ; FAbs(value)
  %552 = fadd fast float %549, %551
  %553 = fsub fast float %544, %552
  %554 = fadd fast float %552, %544
  %555 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %556 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = call float @dx.op.unary.f32(i32 6, float %556)  ; FAbs(value)
  %558 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 6, float %558)  ; FAbs(value)
  %560 = fadd fast float %559, %557
  %561 = fsub fast float %555, %560
  %562 = fadd fast float %560, %555
  %563 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %566 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %537, float %540, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %567 = call float @dx.op.unary.f32(i32 6, float %566)  ; FAbs(value)
  %568 = fadd fast float %567, %565
  %569 = fsub fast float %563, %568
  %570 = fadd fast float %568, %563
  %571 = fcmp fast olt float %569, %561
  %572 = select i1 %571, float %569, float %561
  %573 = fcmp fast ogt float %570, %562
  %574 = select i1 %573, float %570, float %562
  %575 = fcmp fast olt float %574, %553
  %576 = fcmp fast olt float %554, %572
  %577 = or i1 %575, %576
  br i1 %577, label %1144, label %578, !dx.controlflow.hints !40

; <label>:578                                     ; preds = %534
  %579 = fmul fast float %157, -2.000000e+00
  %580 = fmul fast float %579, %176
  %581 = fmul fast float %580, %170
  %582 = fmul fast float %579, %177
  %583 = fmul fast float %582, %170
  %584 = fmul fast float %579, %178
  %585 = fmul fast float %584, %170
  br label %586

; <label>:586                                     ; preds = %637, %578
  %587 = phi float [ %254, %578 ], [ %643, %637 ]
  %588 = phi float [ %253, %578 ], [ %641, %637 ]
  %589 = phi float [ %252, %578 ], [ %639, %637 ]
  %590 = phi i32 [ 0, %578 ], [ %635, %637 ]
  %591 = fmul fast float %587, %583
  %592 = fmul fast float %588, %585
  %593 = fsub fast float %591, %592
  %594 = fmul fast float %589, %585
  %595 = fmul fast float %587, %581
  %596 = fsub fast float %594, %595
  %597 = fmul fast float %588, %581
  %598 = fmul fast float %589, %583
  %599 = fsub fast float %597, %598
  %600 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %602 = call float @dx.op.unary.f32(i32 6, float %601)  ; FAbs(value)
  %603 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = call float @dx.op.unary.f32(i32 6, float %603)  ; FAbs(value)
  %605 = fadd fast float %604, %602
  %606 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = call float @dx.op.unary.f32(i32 6, float %606)  ; FAbs(value)
  %608 = fadd fast float %605, %607
  %609 = fsub fast float %600, %608
  %610 = fadd fast float %608, %600
  %611 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %612 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %614 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = call float @dx.op.unary.f32(i32 6, float %614)  ; FAbs(value)
  %616 = fadd fast float %615, %613
  %617 = fsub fast float %611, %616
  %618 = fadd fast float %616, %611
  %619 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = call float @dx.op.unary.f32(i32 6, float %620)  ; FAbs(value)
  %622 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %593, float %596, float %599)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %624 = fadd fast float %623, %621
  %625 = fsub fast float %619, %624
  %626 = fadd fast float %624, %619
  %627 = fcmp fast olt float %625, %617
  %628 = select i1 %627, float %625, float %617
  %629 = fcmp fast ogt float %626, %618
  %630 = select i1 %629, float %626, float %618
  %631 = fcmp fast olt float %630, %609
  %632 = fcmp fast olt float %610, %628
  %633 = or i1 %631, %632
  br i1 %633, label %644, label %634, !dx.controlflow.hints !41

; <label>:634                                     ; preds = %586
  %635 = add nuw nsw i32 %590, 1
  %636 = icmp ult i32 %635, 3
  br i1 %636, label %637, label %644, !llvm.loop !42

; <label>:637                                     ; preds = %634
  %638 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %635
  %639 = load float, float* %638, align 4
  %640 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %635
  %641 = load float, float* %640, align 4
  %642 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %635
  %643 = load float, float* %642, align 4
  br label %586

; <label>:644                                     ; preds = %634, %586
  %645 = phi i1 [ true, %586 ], [ false, %634 ]
  br i1 %645, label %1144, label %646, !dx.controlflow.hints !44

; <label>:646                                     ; preds = %644
  %647 = fmul fast float %170, 2.000000e+00
  %648 = fmul fast float %211, %647
  %649 = fsub fast float -0.000000e+00, %648
  %650 = fmul fast float %212, %647
  %651 = fsub fast float -0.000000e+00, %650
  %652 = fmul fast float %213, %647
  %653 = fsub fast float -0.000000e+00, %652
  br label %654

; <label>:654                                     ; preds = %705, %646
  %655 = phi float [ %254, %646 ], [ %711, %705 ]
  %656 = phi float [ %253, %646 ], [ %709, %705 ]
  %657 = phi float [ %252, %646 ], [ %707, %705 ]
  %658 = phi i32 [ 0, %646 ], [ %703, %705 ]
  %659 = fmul fast float %655, %651
  %660 = fmul fast float %656, %653
  %661 = fsub fast float %659, %660
  %662 = fmul fast float %657, %653
  %663 = fmul fast float %655, %649
  %664 = fsub fast float %662, %663
  %665 = fmul fast float %656, %649
  %666 = fmul fast float %657, %651
  %667 = fsub fast float %665, %666
  %668 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %669 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %670 = call float @dx.op.unary.f32(i32 6, float %669)  ; FAbs(value)
  %671 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = call float @dx.op.unary.f32(i32 6, float %671)  ; FAbs(value)
  %673 = fadd fast float %672, %670
  %674 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = call float @dx.op.unary.f32(i32 6, float %674)  ; FAbs(value)
  %676 = fadd fast float %673, %675
  %677 = fsub fast float %668, %676
  %678 = fadd fast float %676, %668
  %679 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %681 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %682 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.unary.f32(i32 6, float %682)  ; FAbs(value)
  %684 = fadd fast float %683, %681
  %685 = fsub fast float %679, %684
  %686 = fadd fast float %684, %679
  %687 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %690 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %661, float %664, float %667)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %692 = fadd fast float %691, %689
  %693 = fsub fast float %687, %692
  %694 = fadd fast float %692, %687
  %695 = fcmp fast olt float %693, %685
  %696 = select i1 %695, float %693, float %685
  %697 = fcmp fast ogt float %694, %686
  %698 = select i1 %697, float %694, float %686
  %699 = fcmp fast olt float %698, %677
  %700 = fcmp fast olt float %678, %696
  %701 = or i1 %699, %700
  br i1 %701, label %712, label %702, !dx.controlflow.hints !41

; <label>:702                                     ; preds = %654
  %703 = add nuw nsw i32 %658, 1
  %704 = icmp ult i32 %703, 3
  br i1 %704, label %705, label %712, !llvm.loop !42

; <label>:705                                     ; preds = %702
  %706 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %703
  %707 = load float, float* %706, align 4
  %708 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %703
  %709 = load float, float* %708, align 4
  %710 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %703
  %711 = load float, float* %710, align 4
  br label %654

; <label>:712                                     ; preds = %702, %654
  %713 = phi i1 [ true, %654 ], [ false, %702 ]
  br i1 %713, label %1144, label %714, !dx.controlflow.hints !45

; <label>:714                                     ; preds = %712
  %715 = fmul fast float %93, %168
  %716 = fmul fast float %715, %480
  %717 = fsub fast float -0.000000e+00, %716
  %718 = fmul fast float %93, %168
  %719 = fmul fast float %718, %482
  %720 = fsub fast float -0.000000e+00, %719
  %721 = fmul fast float %93, %168
  %722 = fmul fast float %721, %484
  %723 = fsub fast float -0.000000e+00, %722
  br label %724

; <label>:724                                     ; preds = %775, %714
  %725 = phi float [ %254, %714 ], [ %781, %775 ]
  %726 = phi float [ %253, %714 ], [ %779, %775 ]
  %727 = phi float [ %252, %714 ], [ %777, %775 ]
  %728 = phi i32 [ 0, %714 ], [ %773, %775 ]
  %729 = fmul fast float %725, %720
  %730 = fmul fast float %726, %723
  %731 = fsub fast float %729, %730
  %732 = fmul fast float %727, %723
  %733 = fmul fast float %725, %717
  %734 = fsub fast float %732, %733
  %735 = fmul fast float %726, %717
  %736 = fmul fast float %727, %720
  %737 = fsub fast float %735, %736
  %738 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %740 = call float @dx.op.unary.f32(i32 6, float %739)  ; FAbs(value)
  %741 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %742 = call float @dx.op.unary.f32(i32 6, float %741)  ; FAbs(value)
  %743 = fadd fast float %742, %740
  %744 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %745 = call float @dx.op.unary.f32(i32 6, float %744)  ; FAbs(value)
  %746 = fadd fast float %743, %745
  %747 = fsub fast float %738, %746
  %748 = fadd fast float %746, %738
  %749 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %752 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %754 = fadd fast float %753, %751
  %755 = fsub fast float %749, %754
  %756 = fadd fast float %754, %749
  %757 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %760 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %731, float %734, float %737)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %762 = fadd fast float %761, %759
  %763 = fsub fast float %757, %762
  %764 = fadd fast float %762, %757
  %765 = fcmp fast olt float %763, %755
  %766 = select i1 %765, float %763, float %755
  %767 = fcmp fast ogt float %764, %756
  %768 = select i1 %767, float %764, float %756
  %769 = fcmp fast olt float %768, %747
  %770 = fcmp fast olt float %748, %766
  %771 = or i1 %769, %770
  br i1 %771, label %782, label %772, !dx.controlflow.hints !41

; <label>:772                                     ; preds = %724
  %773 = add nuw nsw i32 %728, 1
  %774 = icmp ult i32 %773, 3
  br i1 %774, label %775, label %782, !llvm.loop !42

; <label>:775                                     ; preds = %772
  %776 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %773
  %777 = load float, float* %776, align 4
  %778 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %773
  %779 = load float, float* %778, align 4
  %780 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %773
  %781 = load float, float* %780, align 4
  br label %724

; <label>:782                                     ; preds = %772, %724
  %783 = phi i1 [ true, %724 ], [ false, %772 ]
  br i1 %783, label %1144, label %784, !dx.controlflow.hints !46

; <label>:784                                     ; preds = %782
  %785 = fsub fast float %247, %217
  %786 = fsub fast float %248, %218
  %787 = fsub fast float %249, %219
  %788 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %790 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %791 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = call float @dx.op.unary.f32(i32 6, float %791)  ; FAbs(value)
  %793 = fadd fast float %792, %790
  %794 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %796 = fadd fast float %793, %795
  %797 = fsub fast float %788, %796
  %798 = fadd fast float %796, %788
  %799 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %802 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %803 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %804 = fadd fast float %803, %801
  %805 = fsub fast float %799, %804
  %806 = fadd fast float %804, %799
  %807 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %810 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %785, float %786, float %787)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %812 = fadd fast float %811, %809
  %813 = fsub fast float %807, %812
  %814 = fadd fast float %812, %807
  %815 = fcmp fast olt float %813, %805
  %816 = select i1 %815, float %813, float %805
  %817 = fcmp fast ogt float %814, %806
  %818 = select i1 %817, float %814, float %806
  %819 = fcmp fast olt float %818, %797
  %820 = fcmp fast olt float %798, %816
  %821 = or i1 %819, %820
  br i1 %821, label %1144, label %822, !dx.controlflow.hints !47

; <label>:822                                     ; preds = %784
  %823 = fadd fast float %211, %202
  %824 = fadd fast float %823, %196
  %825 = fadd fast float %212, %204
  %826 = fadd fast float %825, %197
  %827 = fadd fast float %213, %206
  %828 = fadd fast float %827, %198
  %829 = fmul fast float %168, %93
  %830 = fmul fast float %824, %829
  %831 = fmul fast float %168, %93
  %832 = fmul fast float %826, %831
  %833 = fmul fast float %168, %93
  %834 = fmul fast float %828, %833
  %835 = fmul fast float %834, %209
  %836 = fmul fast float %832, %210
  %837 = fsub fast float %835, %836
  %838 = fmul fast float %830, %210
  %839 = fmul fast float %834, %208
  %840 = fsub fast float %838, %839
  %841 = fmul fast float %832, %208
  %842 = fmul fast float %830, %209
  %843 = fsub fast float %841, %842
  %844 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = call float @dx.op.unary.f32(i32 6, float %845)  ; FAbs(value)
  %847 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = call float @dx.op.unary.f32(i32 6, float %847)  ; FAbs(value)
  %849 = fadd fast float %848, %846
  %850 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %852 = fadd fast float %849, %851
  %853 = fsub fast float %844, %852
  %854 = fadd fast float %852, %844
  %855 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = call float @dx.op.unary.f32(i32 6, float %856)  ; FAbs(value)
  %858 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = call float @dx.op.unary.f32(i32 6, float %858)  ; FAbs(value)
  %860 = fadd fast float %859, %857
  %861 = fsub fast float %855, %860
  %862 = fadd fast float %860, %855
  %863 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %866 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %837, float %840, float %843)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = call float @dx.op.unary.f32(i32 6, float %866)  ; FAbs(value)
  %868 = fadd fast float %867, %865
  %869 = fsub fast float %863, %868
  %870 = fadd fast float %868, %863
  %871 = fcmp fast olt float %869, %861
  %872 = select i1 %871, float %869, float %861
  %873 = fcmp fast ogt float %870, %862
  %874 = select i1 %873, float %870, float %862
  %875 = fcmp fast olt float %874, %853
  %876 = fcmp fast olt float %854, %872
  %877 = or i1 %875, %876
  br i1 %877, label %1144, label %878, !dx.controlflow.hints !48

; <label>:878                                     ; preds = %822
  %879 = fmul fast float %834, %215
  %880 = fmul fast float %832, %216
  %881 = fsub fast float %879, %880
  %882 = fmul fast float %830, %216
  %883 = fmul fast float %834, %214
  %884 = fsub fast float %882, %883
  %885 = fmul fast float %832, %214
  %886 = fmul fast float %830, %215
  %887 = fsub fast float %885, %886
  %888 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %891 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = call float @dx.op.unary.f32(i32 6, float %891)  ; FAbs(value)
  %893 = fadd fast float %892, %890
  %894 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = call float @dx.op.unary.f32(i32 6, float %894)  ; FAbs(value)
  %896 = fadd fast float %893, %895
  %897 = fsub fast float %888, %896
  %898 = fadd fast float %896, %888
  %899 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %900 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %902 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = call float @dx.op.unary.f32(i32 6, float %902)  ; FAbs(value)
  %904 = fadd fast float %903, %901
  %905 = fsub fast float %899, %904
  %906 = fadd fast float %904, %899
  %907 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %910 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %881, float %884, float %887)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call float @dx.op.unary.f32(i32 6, float %910)  ; FAbs(value)
  %912 = fadd fast float %911, %909
  %913 = fsub fast float %907, %912
  %914 = fadd fast float %912, %907
  %915 = fcmp fast olt float %913, %905
  %916 = select i1 %915, float %913, float %905
  %917 = fcmp fast ogt float %914, %906
  %918 = select i1 %917, float %914, float %906
  %919 = fcmp fast olt float %918, %897
  %920 = fcmp fast olt float %898, %916
  %921 = or i1 %919, %920
  br i1 %921, label %1144, label %922, !dx.controlflow.hints !49

; <label>:922                                     ; preds = %878
  %923 = fmul fast float %93, %168
  %924 = fmul fast float %923, %824
  %925 = fsub fast float -0.000000e+00, %924
  %926 = fmul fast float %93, %168
  %927 = fmul fast float %926, %826
  %928 = fsub fast float -0.000000e+00, %927
  %929 = fmul fast float %93, %168
  %930 = fmul fast float %929, %828
  %931 = fsub fast float -0.000000e+00, %930
  br label %932

; <label>:932                                     ; preds = %983, %922
  %933 = phi float [ %254, %922 ], [ %989, %983 ]
  %934 = phi float [ %253, %922 ], [ %987, %983 ]
  %935 = phi float [ %252, %922 ], [ %985, %983 ]
  %936 = phi i32 [ 0, %922 ], [ %981, %983 ]
  %937 = fmul fast float %933, %928
  %938 = fmul fast float %934, %931
  %939 = fsub fast float %937, %938
  %940 = fmul fast float %935, %931
  %941 = fmul fast float %933, %925
  %942 = fsub fast float %940, %941
  %943 = fmul fast float %934, %925
  %944 = fmul fast float %935, %928
  %945 = fsub fast float %943, %944
  %946 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %947 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %948 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %949 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %951 = fadd fast float %950, %948
  %952 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = call float @dx.op.unary.f32(i32 6, float %952)  ; FAbs(value)
  %954 = fadd fast float %951, %953
  %955 = fsub fast float %946, %954
  %956 = fadd fast float %954, %946
  %957 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %959 = call float @dx.op.unary.f32(i32 6, float %958)  ; FAbs(value)
  %960 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 6, float %960)  ; FAbs(value)
  %962 = fadd fast float %961, %959
  %963 = fsub fast float %957, %962
  %964 = fadd fast float %962, %957
  %965 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = call float @dx.op.unary.f32(i32 6, float %966)  ; FAbs(value)
  %968 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %939, float %942, float %945)  ; Dot3(ax,ay,az,bx,by,bz)
  %969 = call float @dx.op.unary.f32(i32 6, float %968)  ; FAbs(value)
  %970 = fadd fast float %969, %967
  %971 = fsub fast float %965, %970
  %972 = fadd fast float %970, %965
  %973 = fcmp fast olt float %971, %963
  %974 = select i1 %973, float %971, float %963
  %975 = fcmp fast ogt float %972, %964
  %976 = select i1 %975, float %972, float %964
  %977 = fcmp fast olt float %976, %955
  %978 = fcmp fast olt float %956, %974
  %979 = or i1 %977, %978
  br i1 %979, label %990, label %980, !dx.controlflow.hints !41

; <label>:980                                     ; preds = %932
  %981 = add nuw nsw i32 %936, 1
  %982 = icmp ult i32 %981, 3
  br i1 %982, label %983, label %990, !llvm.loop !42

; <label>:983                                     ; preds = %980
  %984 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %981
  %985 = load float, float* %984, align 4
  %986 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %981
  %987 = load float, float* %986, align 4
  %988 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %981
  %989 = load float, float* %988, align 4
  br label %932

; <label>:990                                     ; preds = %980, %932
  %991 = phi i1 [ true, %932 ], [ false, %980 ]
  br i1 %991, label %1144, label %992, !dx.controlflow.hints !50

; <label>:992                                     ; preds = %990
  %993 = fsub fast float %202, %211
  %994 = fadd fast float %993, %196
  %995 = fsub fast float %204, %212
  %996 = fadd fast float %995, %197
  %997 = fsub fast float %206, %213
  %998 = fadd fast float %997, %198
  %999 = fmul fast float %93, %168
  %1000 = fmul fast float %999, %994
  %1001 = fsub fast float -0.000000e+00, %1000
  %1002 = fmul fast float %93, %168
  %1003 = fmul fast float %1002, %996
  %1004 = fsub fast float -0.000000e+00, %1003
  %1005 = fmul fast float %93, %168
  %1006 = fmul fast float %1005, %998
  %1007 = fsub fast float -0.000000e+00, %1006
  br label %1008

; <label>:1008                                    ; preds = %1059, %992
  %1009 = phi float [ %254, %992 ], [ %1065, %1059 ]
  %1010 = phi float [ %253, %992 ], [ %1063, %1059 ]
  %1011 = phi float [ %252, %992 ], [ %1061, %1059 ]
  %1012 = phi i32 [ 0, %992 ], [ %1057, %1059 ]
  %1013 = fmul fast float %1009, %1004
  %1014 = fmul fast float %1010, %1007
  %1015 = fsub fast float %1013, %1014
  %1016 = fmul fast float %1011, %1007
  %1017 = fmul fast float %1009, %1001
  %1018 = fsub fast float %1016, %1017
  %1019 = fmul fast float %1010, %1001
  %1020 = fmul fast float %1011, %1004
  %1021 = fsub fast float %1019, %1020
  %1022 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1025 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1027 = fadd fast float %1026, %1024
  %1028 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.unary.f32(i32 6, float %1028)  ; FAbs(value)
  %1030 = fadd fast float %1027, %1029
  %1031 = fsub fast float %1022, %1030
  %1032 = fadd fast float %1030, %1022
  %1033 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1036 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1037 = call float @dx.op.unary.f32(i32 6, float %1036)  ; FAbs(value)
  %1038 = fadd fast float %1037, %1035
  %1039 = fsub fast float %1033, %1038
  %1040 = fadd fast float %1038, %1033
  %1041 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1042 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1044 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %1015, float %1018, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.unary.f32(i32 6, float %1044)  ; FAbs(value)
  %1046 = fadd fast float %1045, %1043
  %1047 = fsub fast float %1041, %1046
  %1048 = fadd fast float %1046, %1041
  %1049 = fcmp fast olt float %1047, %1039
  %1050 = select i1 %1049, float %1047, float %1039
  %1051 = fcmp fast ogt float %1048, %1040
  %1052 = select i1 %1051, float %1048, float %1040
  %1053 = fcmp fast olt float %1052, %1031
  %1054 = fcmp fast olt float %1032, %1050
  %1055 = or i1 %1053, %1054
  br i1 %1055, label %1066, label %1056, !dx.controlflow.hints !41

; <label>:1056                                    ; preds = %1008
  %1057 = add nuw nsw i32 %1012, 1
  %1058 = icmp ult i32 %1057, 3
  br i1 %1058, label %1059, label %1066, !llvm.loop !42

; <label>:1059                                    ; preds = %1056
  %1060 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1057
  %1061 = load float, float* %1060, align 4
  %1062 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1057
  %1063 = load float, float* %1062, align 4
  %1064 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1057
  %1065 = load float, float* %1064, align 4
  br label %1008

; <label>:1066                                    ; preds = %1056, %1008
  %1067 = phi i1 [ true, %1008 ], [ false, %1056 ]
  br i1 %1067, label %1144, label %1068, !dx.controlflow.hints !51

; <label>:1068                                    ; preds = %1066
  %1069 = fsub fast float %211, %202
  %1070 = fadd fast float %1069, %196
  %1071 = fsub fast float %212, %204
  %1072 = fadd fast float %1071, %197
  %1073 = fsub fast float %213, %206
  %1074 = fadd fast float %1073, %198
  %1075 = fmul fast float %93, %168
  %1076 = fmul fast float %1075, %1070
  %1077 = fsub fast float -0.000000e+00, %1076
  %1078 = fmul fast float %93, %168
  %1079 = fmul fast float %1078, %1072
  %1080 = fsub fast float -0.000000e+00, %1079
  %1081 = fmul fast float %93, %168
  %1082 = fmul fast float %1081, %1074
  %1083 = fsub fast float -0.000000e+00, %1082
  br label %1084

; <label>:1084                                    ; preds = %1135, %1068
  %1085 = phi float [ %254, %1068 ], [ %1141, %1135 ]
  %1086 = phi float [ %253, %1068 ], [ %1139, %1135 ]
  %1087 = phi float [ %252, %1068 ], [ %1137, %1135 ]
  %1088 = phi i32 [ 0, %1068 ], [ %1133, %1135 ]
  %1089 = fmul fast float %1085, %1080
  %1090 = fmul fast float %1086, %1083
  %1091 = fsub fast float %1089, %1090
  %1092 = fmul fast float %1087, %1083
  %1093 = fmul fast float %1085, %1077
  %1094 = fsub fast float %1092, %1093
  %1095 = fmul fast float %1086, %1077
  %1096 = fmul fast float %1087, %1080
  %1097 = fsub fast float %1095, %1096
  %1098 = call float @dx.op.dot3.f32(i32 55, float %247, float %248, float %249, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.dot3.f32(i32 55, float %252, float %253, float %254, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = call float @dx.op.unary.f32(i32 6, float %1099)  ; FAbs(value)
  %1101 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = call float @dx.op.unary.f32(i32 6, float %1101)  ; FAbs(value)
  %1103 = fadd fast float %1102, %1100
  %1104 = call float @dx.op.dot3.f32(i32 55, float %262, float %263, float %264, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1106 = fadd fast float %1103, %1105
  %1107 = fsub fast float %1098, %1106
  %1108 = fadd fast float %1106, %1098
  %1109 = call float @dx.op.dot3.f32(i32 55, float %199, float %200, float %201, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1110 = call float @dx.op.dot3.f32(i32 55, float %208, float %209, float %210, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1112 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1113 = call float @dx.op.unary.f32(i32 6, float %1112)  ; FAbs(value)
  %1114 = fadd fast float %1113, %1111
  %1115 = fsub fast float %1109, %1114
  %1116 = fadd fast float %1114, %1109
  %1117 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1118 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call float @dx.op.unary.f32(i32 6, float %1118)  ; FAbs(value)
  %1120 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %1091, float %1094, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = call float @dx.op.unary.f32(i32 6, float %1120)  ; FAbs(value)
  %1122 = fadd fast float %1121, %1119
  %1123 = fsub fast float %1117, %1122
  %1124 = fadd fast float %1122, %1117
  %1125 = fcmp fast olt float %1123, %1115
  %1126 = select i1 %1125, float %1123, float %1115
  %1127 = fcmp fast ogt float %1124, %1116
  %1128 = select i1 %1127, float %1124, float %1116
  %1129 = fcmp fast olt float %1128, %1107
  %1130 = fcmp fast olt float %1108, %1126
  %1131 = or i1 %1129, %1130
  br i1 %1131, label %1142, label %1132, !dx.controlflow.hints !41

; <label>:1132                                    ; preds = %1084
  %1133 = add nuw nsw i32 %1088, 1
  %1134 = icmp ult i32 %1133, 3
  br i1 %1134, label %1135, label %1142, !llvm.loop !42

; <label>:1135                                    ; preds = %1132
  %1136 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1133
  %1137 = load float, float* %1136, align 4
  %1138 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1133
  %1139 = load float, float* %1138, align 4
  %1140 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1133
  %1141 = load float, float* %1140, align 4
  br label %1084

; <label>:1142                                    ; preds = %1132, %1084
  %1143 = phi i32 [ 0, %1084 ], [ 1, %1132 ]
  br label %1144

; <label>:1144                                    ; preds = %1142, %1066, %990, %878, %822, %784, %782, %712, %644, %534, %478, %434, %396, %378, %343, %308, %244, %241
  %1145 = phi i32 [ 0, %241 ], [ 1, %378 ], [ 0, %396 ], [ 0, %434 ], [ 0, %478 ], [ 0, %534 ], [ 0, %644 ], [ 0, %712 ], [ 0, %782 ], [ 0, %784 ], [ 0, %822 ], [ 0, %878 ], [ 0, %990 ], [ 0, %1066 ], [ 0, %343 ], [ 0, %308 ], [ 0, %244 ], [ %1143, %1142 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %1145, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1147 = and i32 %9, 1
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1155, label %1149, !dx.controlflow.hints !56

; <label>:1149                                    ; preds = %1144
  %1150 = and i32 %9, -2
  %1151 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1150
  %1152 = load i32, i32 addrspace(3)* %1151, align 4, !tbaa !29, !noalias !52
  %1153 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  %1154 = add i32 %1153, %1152
  store i32 %1154, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1155

; <label>:1155                                    ; preds = %1149, %1144
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1156 = and i32 %9, 2
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1165, label %1158, !dx.controlflow.hints !57

; <label>:1158                                    ; preds = %1155
  %1159 = and i32 %9, -4
  %1160 = or i32 %1159, 1
  %1161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1160
  %1162 = load i32, i32 addrspace(3)* %1161, align 4, !tbaa !29, !noalias !52
  %1163 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  %1164 = add i32 %1163, %1162
  store i32 %1164, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1165

; <label>:1165                                    ; preds = %1158, %1155
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1166 = and i32 %9, 4
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1175, label %1168, !dx.controlflow.hints !58

; <label>:1168                                    ; preds = %1165
  %1169 = and i32 %9, -8
  %1170 = or i32 %1169, 3
  %1171 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1170
  %1172 = load i32, i32 addrspace(3)* %1171, align 4, !tbaa !29, !noalias !52
  %1173 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  %1174 = add i32 %1173, %1172
  store i32 %1174, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1175

; <label>:1175                                    ; preds = %1168, %1165
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1176 = and i32 %9, 8
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1185, label %1178, !dx.controlflow.hints !59

; <label>:1178                                    ; preds = %1175
  %1179 = and i32 %9, -16
  %1180 = or i32 %1179, 7
  %1181 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1180
  %1182 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !29, !noalias !52
  %1183 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  %1184 = add i32 %1183, %1182
  store i32 %1184, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1185

; <label>:1185                                    ; preds = %1178, %1175
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1186 = and i32 %9, 16
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1195, label %1188, !dx.controlflow.hints !60

; <label>:1188                                    ; preds = %1185
  %1189 = and i32 %9, -32
  %1190 = or i32 %1189, 15
  %1191 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1190
  %1192 = load i32, i32 addrspace(3)* %1191, align 4, !tbaa !29, !noalias !52
  %1193 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  %1194 = add i32 %1193, %1192
  store i32 %1194, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1195

; <label>:1195                                    ; preds = %1188, %1185
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1196 = and i32 %9, 32
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1198, label %1200, !dx.controlflow.hints !61

; <label>:1198                                    ; preds = %1195
  %1199 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1207

; <label>:1200                                    ; preds = %1195
  %1201 = and i32 %9, -64
  %1202 = or i32 %1201, 31
  %1203 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1202
  %1204 = load i32, i32 addrspace(3)* %1203, align 4, !tbaa !29, !noalias !52
  %1205 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  %1206 = add i32 %1205, %1204
  store i32 %1206, i32 addrspace(3)* %1146, align 4, !tbaa !29, !noalias !52
  br label %1207

; <label>:1207                                    ; preds = %1200, %1198
  %1208 = phi i32 [ %1199, %1198 ], [ %1206, %1200 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1209 = or i32 %9, 63
  %1210 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1209
  %1211 = load i32, i32 addrspace(3)* %1210, align 4, !tbaa !29, !noalias !52
  %1212 = sub i32 %1208, %1145
  %1213 = add i32 %231, %149
  %1214 = add i32 %1213, %1212
  %1215 = icmp ne i32 %1145, 0
  %1216 = icmp ult i32 %1214, %94
  %1217 = and i1 %1215, %1216
  br i1 %1217, label %1218, label %1220, !dx.controlflow.hints !62

; <label>:1218                                    ; preds = %1207
  %1219 = shl i32 %1214, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1219, i32 undef, i32 %242, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1220

; <label>:1220                                    ; preds = %1218, %1207
  %1221 = add i32 %1211, %231
  %1222 = add nuw i32 %232, 64
  %1223 = icmp ult i32 %1222, %227
  br i1 %1223, label %230, label %1224

; <label>:1224                                    ; preds = %1220
  br label %1225

; <label>:1225                                    ; preds = %1224, %147
  %1226 = phi i32 [ 0, %147 ], [ %1221, %1224 ]
  %1227 = and i1 %133, %132
  br i1 %1227, label %1228, label %2402, !dx.controlflow.hints !63

; <label>:1228                                    ; preds = %1225
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1231 = icmp ult i32 %149, %1230
  %1232 = icmp ne i32 %1226, 0
  %1233 = and i1 %1232, %1231
  br i1 %1233, label %1234, label %2402, !dx.controlflow.hints !64

; <label>:1234                                    ; preds = %1228
  %1235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.i32 %1235, 0
  %1237 = extractvalue %dx.types.CBufRet.i32 %1235, 1
  %1238 = mul i32 %1237, %129
  %1239 = add i32 %1238, %127
  %1240 = mul i32 %1239, %1236
  %1241 = add i32 %1240, %125
  %1242 = and i32 %1226, 1023
  %1243 = shl i32 %149, 10
  %1244 = or i32 %1242, %1243
  %1245 = shl i32 %1241, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1245, i32 undef, i32 %1244, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2402

; <label>:1246                                    ; preds = %82
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %83, i32 0)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = call i32 @dx.op.binary.i32(i32 40, i32 %1248, i32 %33)  ; UMin(a,b)
  %1250 = shl i32 %84, 6
  %1251 = sub i32 %11, %1250
  %1252 = lshr i32 %1251, %83
  %1253 = lshr i32 %1252, 3
  %1254 = mul i32 %20, %83
  %1255 = add i32 %1254, %1253
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1255, i32 0)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1255, i32 4)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = lshr i32 %1257, 20
  %1261 = lshr i32 %1252, 2
  %1262 = and i32 %1261, 1
  %1263 = lshr i32 %1252, 1
  %1264 = and i32 %1263, 1
  %1265 = and i32 %1252, 1
  %1266 = shl nuw nsw i32 %1260, 1
  %1267 = or i32 %1266, %1265
  %1268 = lshr i32 %1257, 7
  %1269 = and i32 %1268, 8190
  %1270 = or i32 %1269, %1264
  %1271 = shl i32 %1257, 1
  %1272 = and i32 %1271, 256
  %1273 = shl i32 %1267, 20
  %1274 = shl nuw nsw i32 %1270, 8
  %1275 = or i32 %1273, %1274
  %1276 = or i32 %1274, %1272
  %1277 = lshr i32 %9, %83
  %1278 = add i32 %85, -1
  %1279 = and i32 %1278, %9
  %1280 = shl i32 %1277, %83
  %1281 = lshr i32 %9, 5
  %1282 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %1283 = lshr i32 %1275, 20
  %1284 = lshr exact i32 %1276, 8
  %1285 = and i32 %1284, 4095
  %1286 = and i32 %1271, 254
  %1287 = or i32 %1286, %1262
  %1288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.i32 %1288, 1
  %1290 = icmp uge i32 %1283, %90
  %1291 = icmp uge i32 %1285, %91
  %1292 = or i1 %1290, %1291
  %1293 = icmp uge i32 %1252, %1249
  %1294 = or i1 %1292, %1293
  br i1 %1294, label %2285, label %1295, !dx.controlflow.hints !65

; <label>:1295                                    ; preds = %1246
  %1296 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1255, i32 8)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1302 = extractvalue %dx.types.CBufRet.f32 %1300, 0
  %1303 = uitofp i32 %1283 to float
  %1304 = uitofp i32 %1285 to float
  %1305 = uitofp i32 %1287 to float
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.CBufRet.f32 %1306, 1
  %1309 = fadd fast float %1303, 5.000000e-01
  %1310 = fadd fast float %1304, 5.000000e-01
  %1311 = fmul fast float %1297, 2.000000e+00
  %1312 = fmul fast float %1311, %1309
  %1313 = fmul fast float %1296, 2.000000e+00
  %1314 = fmul fast float %1313, %1310
  %1315 = fadd fast float %1312, -1.000000e+00
  %1316 = fsub fast float 1.000000e+00, %1314
  %1317 = fmul fast float %1305, %93
  %1318 = fsub fast float %1301, %1302
  %1319 = fmul fast float %1317, %1318
  %1320 = fadd fast float %1319, %1302
  %1321 = fadd fast float %1305, 1.000000e+00
  %1322 = fmul fast float %1321, %93
  %1323 = fmul fast float %1322, %1318
  %1324 = fadd fast float %1323, %1302
  %1325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.f32 %1325, 0
  %1327 = extractvalue %dx.types.CBufRet.f32 %1325, 1
  %1328 = extractvalue %dx.types.CBufRet.f32 %1325, 2
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 1
  %1332 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1334 = extractvalue %dx.types.CBufRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.CBufRet.f32 %1333, 1
  %1336 = extractvalue %dx.types.CBufRet.f32 %1333, 2
  %1337 = fmul fast float %1326, %1315
  %1338 = fmul fast float %1327, %1315
  %1339 = fmul fast float %1328, %1315
  %1340 = fmul fast float %1330, %1316
  %1341 = fmul fast float %1331, %1316
  %1342 = fmul fast float %1332, %1316
  %1343 = fadd fast float %1340, %1337
  %1344 = fadd fast float %1341, %1338
  %1345 = fadd fast float %1342, %1339
  %1346 = fadd fast float %1343, %1334
  %1347 = fadd fast float %1344, %1335
  %1348 = fadd fast float %1345, %1336
  %1349 = fmul fast float %1346, %1320
  %1350 = fmul fast float %1347, %1320
  %1351 = fmul fast float %1348, %1320
  %1352 = fmul fast float %1326, %1307
  %1353 = fsub fast float -0.000000e+00, %1352
  %1354 = fmul fast float %1327, %1307
  %1355 = fsub fast float -0.000000e+00, %1354
  %1356 = fmul fast float %1328, %1307
  %1357 = fsub fast float -0.000000e+00, %1356
  %1358 = fmul fast float %1352, %1320
  %1359 = fmul fast float %1354, %1320
  %1360 = fmul fast float %1356, %1320
  %1361 = fmul fast float %1330, %1308
  %1362 = fmul fast float %1331, %1308
  %1363 = fmul fast float %1332, %1308
  %1364 = fmul fast float %1361, %1320
  %1365 = fmul fast float %1362, %1320
  %1366 = fmul fast float %1363, %1320
  %1367 = fmul fast float %1346, %1324
  %1368 = fmul fast float %1347, %1324
  %1369 = fmul fast float %1348, %1324
  %1370 = fmul fast float %1352, %1324
  %1371 = fmul fast float %1354, %1324
  %1372 = fmul fast float %1356, %1324
  %1373 = fmul fast float %1361, %1324
  %1374 = fmul fast float %1362, %1324
  %1375 = fmul fast float %1363, %1324
  %1376 = icmp ult i32 %1279, %1299
  br i1 %1376, label %1377, label %1382, !dx.controlflow.hints !66

; <label>:1377                                    ; preds = %1295
  %1378 = add i32 %1259, %1279
  %1379 = shl i32 %1378, 2
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  br label %1382

; <label>:1382                                    ; preds = %1377, %1295
  %1383 = phi i32 [ %1381, %1377 ], [ -1, %1295 ]
  %1384 = icmp ult i32 %1383, %87
  br i1 %1384, label %1385, label %2285, !dx.controlflow.hints !67

; <label>:1385                                    ; preds = %1382
  %1386 = mul i32 %1383, 48
  %1387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = or i32 %1386, 12
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add i32 %1386, 24
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add i32 %1386, 36
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 0
  %1407 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 0
  %1408 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 0
  store float %1393, float* %1406, align 4
  store float %1394, float* %1407, align 4
  store float %1395, float* %1408, align 4
  %1409 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 1
  %1410 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 1
  %1411 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 1
  store float %1398, float* %1409, align 4
  store float %1399, float* %1410, align 4
  store float %1400, float* %1411, align 4
  %1412 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 2
  %1413 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 2
  %1414 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 2
  store float %1403, float* %1412, align 4
  store float %1404, float* %1413, align 4
  store float %1405, float* %1414, align 4
  %1415 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1416 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1417 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1418 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1419 = call float @dx.op.unary.f32(i32 6, float %1418)  ; FAbs(value)
  %1420 = fadd fast float %1419, %1417
  %1421 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1422 = call float @dx.op.unary.f32(i32 6, float %1421)  ; FAbs(value)
  %1423 = fadd fast float %1420, %1422
  %1424 = fsub fast float %1415, %1423
  %1425 = fadd fast float %1423, %1415
  %1426 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = call float @dx.op.unary.f32(i32 6, float %1429)  ; FAbs(value)
  %1431 = fadd fast float %1430, %1428
  %1432 = fsub fast float %1426, %1431
  %1433 = fadd fast float %1431, %1426
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = call float @dx.op.unary.f32(i32 6, float %1435)  ; FAbs(value)
  %1437 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1393, float %1394, float %1395)  ; Dot3(ax,ay,az,bx,by,bz)
  %1438 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1439 = fadd fast float %1438, %1436
  %1440 = fsub fast float %1434, %1439
  %1441 = fadd fast float %1439, %1434
  %1442 = fcmp fast olt float %1440, %1432
  %1443 = select i1 %1442, float %1440, float %1432
  %1444 = fcmp fast ogt float %1441, %1433
  %1445 = select i1 %1444, float %1441, float %1433
  %1446 = fcmp fast olt float %1445, %1424
  %1447 = fcmp fast olt float %1425, %1443
  %1448 = or i1 %1446, %1447
  br i1 %1448, label %2285, label %1449, !dx.controlflow.hints !35

; <label>:1449                                    ; preds = %1385
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1452 = call float @dx.op.unary.f32(i32 6, float %1451)  ; FAbs(value)
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call float @dx.op.unary.f32(i32 6, float %1453)  ; FAbs(value)
  %1455 = fadd fast float %1454, %1452
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = call float @dx.op.unary.f32(i32 6, float %1456)  ; FAbs(value)
  %1458 = fadd fast float %1455, %1457
  %1459 = fsub fast float %1450, %1458
  %1460 = fadd fast float %1458, %1450
  %1461 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = call float @dx.op.unary.f32(i32 6, float %1462)  ; FAbs(value)
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.unary.f32(i32 6, float %1464)  ; FAbs(value)
  %1466 = fadd fast float %1465, %1463
  %1467 = fsub fast float %1461, %1466
  %1468 = fadd fast float %1466, %1461
  %1469 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1470 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1471 = call float @dx.op.unary.f32(i32 6, float %1470)  ; FAbs(value)
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1398, float %1399, float %1400)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1474 = fadd fast float %1473, %1471
  %1475 = fsub fast float %1469, %1474
  %1476 = fadd fast float %1474, %1469
  %1477 = fcmp fast olt float %1475, %1467
  %1478 = select i1 %1477, float %1475, float %1467
  %1479 = fcmp fast ogt float %1476, %1468
  %1480 = select i1 %1479, float %1476, float %1468
  %1481 = fcmp fast olt float %1480, %1459
  %1482 = fcmp fast olt float %1460, %1478
  %1483 = or i1 %1481, %1482
  br i1 %1483, label %2285, label %1484, !dx.controlflow.hints !35

; <label>:1484                                    ; preds = %1449
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1487 = call float @dx.op.unary.f32(i32 6, float %1486)  ; FAbs(value)
  %1488 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1489 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1490 = fadd fast float %1489, %1487
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = call float @dx.op.unary.f32(i32 6, float %1491)  ; FAbs(value)
  %1493 = fadd fast float %1490, %1492
  %1494 = fsub fast float %1485, %1493
  %1495 = fadd fast float %1493, %1485
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1499 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1500 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1501 = fadd fast float %1500, %1498
  %1502 = fsub fast float %1496, %1501
  %1503 = fadd fast float %1501, %1496
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = call float @dx.op.unary.f32(i32 6, float %1505)  ; FAbs(value)
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1403, float %1404, float %1405)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.unary.f32(i32 6, float %1507)  ; FAbs(value)
  %1509 = fadd fast float %1508, %1506
  %1510 = fsub fast float %1504, %1509
  %1511 = fadd fast float %1509, %1504
  %1512 = fcmp fast olt float %1510, %1502
  %1513 = select i1 %1512, float %1510, float %1502
  %1514 = fcmp fast ogt float %1511, %1503
  %1515 = select i1 %1514, float %1511, float %1503
  %1516 = fcmp fast olt float %1515, %1494
  %1517 = fcmp fast olt float %1495, %1513
  %1518 = or i1 %1516, %1517
  br i1 %1518, label %2285, label %1519, !dx.controlflow.hints !35

; <label>:1519                                    ; preds = %1484
  %1520 = fcmp fast ole float %1424, %1443
  %1521 = fcmp fast ole float %1445, %1425
  %1522 = and i1 %1520, %1521
  %1523 = zext i1 %1522 to i32
  %1524 = shl nuw nsw i32 %1523, 1
  %1525 = fcmp fast ole float %1459, %1478
  %1526 = fcmp fast ole float %1480, %1460
  %1527 = and i1 %1525, %1526
  %1528 = zext i1 %1527 to i32
  %1529 = or i32 %1528, %1524
  %1530 = shl nuw nsw i32 %1529, 1
  %1531 = fcmp fast ole float %1494, %1513
  %1532 = fcmp fast ole float %1515, %1495
  %1533 = and i1 %1531, %1532
  %1534 = zext i1 %1533 to i32
  %1535 = or i32 %1534, %1530
  %1536 = icmp eq i32 %1535, 7
  br i1 %1536, label %2285, label %1537, !dx.controlflow.hints !36

; <label>:1537                                    ; preds = %1519
  %1538 = fsub fast float %1388, %1349
  %1539 = fsub fast float %1389, %1350
  %1540 = fsub fast float %1390, %1351
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = call float @dx.op.unary.f32(i32 6, float %1544)  ; FAbs(value)
  %1546 = fadd fast float %1545, %1543
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = call float @dx.op.unary.f32(i32 6, float %1547)  ; FAbs(value)
  %1549 = fadd fast float %1546, %1548
  %1550 = fsub fast float %1541, %1549
  %1551 = fadd fast float %1549, %1541
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = call float @dx.op.unary.f32(i32 6, float %1553)  ; FAbs(value)
  %1555 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1556 = call float @dx.op.unary.f32(i32 6, float %1555)  ; FAbs(value)
  %1557 = fadd fast float %1556, %1554
  %1558 = fsub fast float %1552, %1557
  %1559 = fadd fast float %1557, %1552
  %1560 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = call float @dx.op.unary.f32(i32 6, float %1561)  ; FAbs(value)
  %1563 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1538, float %1539, float %1540)  ; Dot3(ax,ay,az,bx,by,bz)
  %1564 = call float @dx.op.unary.f32(i32 6, float %1563)  ; FAbs(value)
  %1565 = fadd fast float %1564, %1562
  %1566 = fsub fast float %1560, %1565
  %1567 = fadd fast float %1565, %1560
  %1568 = fcmp fast olt float %1566, %1558
  %1569 = select i1 %1568, float %1566, float %1558
  %1570 = fcmp fast ogt float %1567, %1559
  %1571 = select i1 %1570, float %1567, float %1559
  %1572 = fcmp fast olt float %1571, %1550
  %1573 = fcmp fast olt float %1551, %1569
  %1574 = or i1 %1572, %1573
  br i1 %1574, label %2285, label %1575, !dx.controlflow.hints !37

; <label>:1575                                    ; preds = %1537
  %1576 = fmul fast float %1366, %1359
  %1577 = fmul fast float %1365, %1360
  %1578 = fsub fast float %1576, %1577
  %1579 = fmul fast float %1364, %1360
  %1580 = fmul fast float %1366, %1358
  %1581 = fsub fast float %1579, %1580
  %1582 = fmul fast float %1365, %1358
  %1583 = fmul fast float %1364, %1359
  %1584 = fsub fast float %1582, %1583
  %1585 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = call float @dx.op.unary.f32(i32 6, float %1586)  ; FAbs(value)
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = call float @dx.op.unary.f32(i32 6, float %1588)  ; FAbs(value)
  %1590 = fadd fast float %1589, %1587
  %1591 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1592 = call float @dx.op.unary.f32(i32 6, float %1591)  ; FAbs(value)
  %1593 = fadd fast float %1590, %1592
  %1594 = fsub fast float %1585, %1593
  %1595 = fadd fast float %1593, %1585
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = call float @dx.op.unary.f32(i32 6, float %1597)  ; FAbs(value)
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = call float @dx.op.unary.f32(i32 6, float %1599)  ; FAbs(value)
  %1601 = fadd fast float %1600, %1598
  %1602 = fsub fast float %1596, %1601
  %1603 = fadd fast float %1601, %1596
  %1604 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = call float @dx.op.unary.f32(i32 6, float %1605)  ; FAbs(value)
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1578, float %1581, float %1584)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = call float @dx.op.unary.f32(i32 6, float %1607)  ; FAbs(value)
  %1609 = fadd fast float %1608, %1606
  %1610 = fsub fast float %1604, %1609
  %1611 = fadd fast float %1609, %1604
  %1612 = fcmp fast olt float %1610, %1602
  %1613 = select i1 %1612, float %1610, float %1602
  %1614 = fcmp fast ogt float %1611, %1603
  %1615 = select i1 %1614, float %1611, float %1603
  %1616 = fcmp fast olt float %1615, %1594
  %1617 = fcmp fast olt float %1595, %1613
  %1618 = or i1 %1616, %1617
  br i1 %1618, label %2285, label %1619, !dx.controlflow.hints !38

; <label>:1619                                    ; preds = %1575
  %1620 = fsub fast float %1353, %1361
  %1621 = fadd fast float %1620, %1346
  %1622 = fsub fast float %1355, %1362
  %1623 = fadd fast float %1622, %1347
  %1624 = fsub fast float %1357, %1363
  %1625 = fadd fast float %1624, %1348
  %1626 = fmul fast float %1318, %93
  %1627 = fmul fast float %1621, %1626
  %1628 = fmul fast float %1318, %93
  %1629 = fmul fast float %1623, %1628
  %1630 = fmul fast float %1318, %93
  %1631 = fmul fast float %1625, %1630
  %1632 = fmul fast float %1631, %1359
  %1633 = fmul fast float %1629, %1360
  %1634 = fsub fast float %1632, %1633
  %1635 = fmul fast float %1627, %1360
  %1636 = fmul fast float %1631, %1358
  %1637 = fsub fast float %1635, %1636
  %1638 = fmul fast float %1629, %1358
  %1639 = fmul fast float %1627, %1359
  %1640 = fsub fast float %1638, %1639
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = call float @dx.op.unary.f32(i32 6, float %1642)  ; FAbs(value)
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = call float @dx.op.unary.f32(i32 6, float %1644)  ; FAbs(value)
  %1646 = fadd fast float %1645, %1643
  %1647 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1648 = call float @dx.op.unary.f32(i32 6, float %1647)  ; FAbs(value)
  %1649 = fadd fast float %1646, %1648
  %1650 = fsub fast float %1641, %1649
  %1651 = fadd fast float %1649, %1641
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1654 = call float @dx.op.unary.f32(i32 6, float %1653)  ; FAbs(value)
  %1655 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = call float @dx.op.unary.f32(i32 6, float %1655)  ; FAbs(value)
  %1657 = fadd fast float %1656, %1654
  %1658 = fsub fast float %1652, %1657
  %1659 = fadd fast float %1657, %1652
  %1660 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1661 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1662 = call float @dx.op.unary.f32(i32 6, float %1661)  ; FAbs(value)
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1634, float %1637, float %1640)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = call float @dx.op.unary.f32(i32 6, float %1663)  ; FAbs(value)
  %1665 = fadd fast float %1664, %1662
  %1666 = fsub fast float %1660, %1665
  %1667 = fadd fast float %1665, %1660
  %1668 = fcmp fast olt float %1666, %1658
  %1669 = select i1 %1668, float %1666, float %1658
  %1670 = fcmp fast ogt float %1667, %1659
  %1671 = select i1 %1670, float %1667, float %1659
  %1672 = fcmp fast olt float %1671, %1650
  %1673 = fcmp fast olt float %1651, %1669
  %1674 = or i1 %1672, %1673
  br i1 %1674, label %2285, label %1675, !dx.controlflow.hints !39

; <label>:1675                                    ; preds = %1619
  %1676 = fmul fast float %1631, %1365
  %1677 = fmul fast float %1629, %1366
  %1678 = fsub fast float %1676, %1677
  %1679 = fmul fast float %1627, %1366
  %1680 = fmul fast float %1631, %1364
  %1681 = fsub fast float %1679, %1680
  %1682 = fmul fast float %1629, %1364
  %1683 = fmul fast float %1627, %1365
  %1684 = fsub fast float %1682, %1683
  %1685 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1686 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1687 = call float @dx.op.unary.f32(i32 6, float %1686)  ; FAbs(value)
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.unary.f32(i32 6, float %1688)  ; FAbs(value)
  %1690 = fadd fast float %1689, %1687
  %1691 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = call float @dx.op.unary.f32(i32 6, float %1691)  ; FAbs(value)
  %1693 = fadd fast float %1690, %1692
  %1694 = fsub fast float %1685, %1693
  %1695 = fadd fast float %1693, %1685
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1699 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1700 = call float @dx.op.unary.f32(i32 6, float %1699)  ; FAbs(value)
  %1701 = fadd fast float %1700, %1698
  %1702 = fsub fast float %1696, %1701
  %1703 = fadd fast float %1701, %1696
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = call float @dx.op.unary.f32(i32 6, float %1707)  ; FAbs(value)
  %1709 = fadd fast float %1708, %1706
  %1710 = fsub fast float %1704, %1709
  %1711 = fadd fast float %1709, %1704
  %1712 = fcmp fast olt float %1710, %1702
  %1713 = select i1 %1712, float %1710, float %1702
  %1714 = fcmp fast ogt float %1711, %1703
  %1715 = select i1 %1714, float %1711, float %1703
  %1716 = fcmp fast olt float %1715, %1694
  %1717 = fcmp fast olt float %1695, %1713
  %1718 = or i1 %1716, %1717
  br i1 %1718, label %2285, label %1719, !dx.controlflow.hints !40

; <label>:1719                                    ; preds = %1675
  %1720 = fmul fast float %1307, -2.000000e+00
  %1721 = fmul fast float %1720, %1326
  %1722 = fmul fast float %1721, %1320
  %1723 = fmul fast float %1720, %1327
  %1724 = fmul fast float %1723, %1320
  %1725 = fmul fast float %1720, %1328
  %1726 = fmul fast float %1725, %1320
  br label %1727

; <label>:1727                                    ; preds = %1778, %1719
  %1728 = phi float [ %1395, %1719 ], [ %1784, %1778 ]
  %1729 = phi float [ %1394, %1719 ], [ %1782, %1778 ]
  %1730 = phi float [ %1393, %1719 ], [ %1780, %1778 ]
  %1731 = phi i32 [ 0, %1719 ], [ %1776, %1778 ]
  %1732 = fmul fast float %1728, %1724
  %1733 = fmul fast float %1729, %1726
  %1734 = fsub fast float %1732, %1733
  %1735 = fmul fast float %1730, %1726
  %1736 = fmul fast float %1728, %1722
  %1737 = fsub fast float %1735, %1736
  %1738 = fmul fast float %1729, %1722
  %1739 = fmul fast float %1730, %1724
  %1740 = fsub fast float %1738, %1739
  %1741 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = call float @dx.op.unary.f32(i32 6, float %1742)  ; FAbs(value)
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call float @dx.op.unary.f32(i32 6, float %1744)  ; FAbs(value)
  %1746 = fadd fast float %1745, %1743
  %1747 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1748 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1749 = fadd fast float %1746, %1748
  %1750 = fsub fast float %1741, %1749
  %1751 = fadd fast float %1749, %1741
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1754 = call float @dx.op.unary.f32(i32 6, float %1753)  ; FAbs(value)
  %1755 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1756 = call float @dx.op.unary.f32(i32 6, float %1755)  ; FAbs(value)
  %1757 = fadd fast float %1756, %1754
  %1758 = fsub fast float %1752, %1757
  %1759 = fadd fast float %1757, %1752
  %1760 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1761 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1762 = call float @dx.op.unary.f32(i32 6, float %1761)  ; FAbs(value)
  %1763 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1734, float %1737, float %1740)  ; Dot3(ax,ay,az,bx,by,bz)
  %1764 = call float @dx.op.unary.f32(i32 6, float %1763)  ; FAbs(value)
  %1765 = fadd fast float %1764, %1762
  %1766 = fsub fast float %1760, %1765
  %1767 = fadd fast float %1765, %1760
  %1768 = fcmp fast olt float %1766, %1758
  %1769 = select i1 %1768, float %1766, float %1758
  %1770 = fcmp fast ogt float %1767, %1759
  %1771 = select i1 %1770, float %1767, float %1759
  %1772 = fcmp fast olt float %1771, %1750
  %1773 = fcmp fast olt float %1751, %1769
  %1774 = or i1 %1772, %1773
  br i1 %1774, label %1785, label %1775, !dx.controlflow.hints !41

; <label>:1775                                    ; preds = %1727
  %1776 = add nuw nsw i32 %1731, 1
  %1777 = icmp ult i32 %1776, 3
  br i1 %1777, label %1778, label %1785, !llvm.loop !42

; <label>:1778                                    ; preds = %1775
  %1779 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1776
  %1780 = load float, float* %1779, align 4
  %1781 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1776
  %1782 = load float, float* %1781, align 4
  %1783 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1776
  %1784 = load float, float* %1783, align 4
  br label %1727

; <label>:1785                                    ; preds = %1775, %1727
  %1786 = phi i1 [ true, %1727 ], [ false, %1775 ]
  br i1 %1786, label %2285, label %1787, !dx.controlflow.hints !44

; <label>:1787                                    ; preds = %1785
  %1788 = fmul fast float %1320, 2.000000e+00
  %1789 = fmul fast float %1361, %1788
  %1790 = fsub fast float -0.000000e+00, %1789
  %1791 = fmul fast float %1362, %1788
  %1792 = fsub fast float -0.000000e+00, %1791
  %1793 = fmul fast float %1363, %1788
  %1794 = fsub fast float -0.000000e+00, %1793
  br label %1795

; <label>:1795                                    ; preds = %1846, %1787
  %1796 = phi float [ %1395, %1787 ], [ %1852, %1846 ]
  %1797 = phi float [ %1394, %1787 ], [ %1850, %1846 ]
  %1798 = phi float [ %1393, %1787 ], [ %1848, %1846 ]
  %1799 = phi i32 [ 0, %1787 ], [ %1844, %1846 ]
  %1800 = fmul fast float %1796, %1792
  %1801 = fmul fast float %1797, %1794
  %1802 = fsub fast float %1800, %1801
  %1803 = fmul fast float %1798, %1794
  %1804 = fmul fast float %1796, %1790
  %1805 = fsub fast float %1803, %1804
  %1806 = fmul fast float %1797, %1790
  %1807 = fmul fast float %1798, %1792
  %1808 = fsub fast float %1806, %1807
  %1809 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = call float @dx.op.unary.f32(i32 6, float %1812)  ; FAbs(value)
  %1814 = fadd fast float %1813, %1811
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = call float @dx.op.unary.f32(i32 6, float %1815)  ; FAbs(value)
  %1817 = fadd fast float %1814, %1816
  %1818 = fsub fast float %1809, %1817
  %1819 = fadd fast float %1817, %1809
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = call float @dx.op.unary.f32(i32 6, float %1821)  ; FAbs(value)
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 6, float %1823)  ; FAbs(value)
  %1825 = fadd fast float %1824, %1822
  %1826 = fsub fast float %1820, %1825
  %1827 = fadd fast float %1825, %1820
  %1828 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = call float @dx.op.unary.f32(i32 6, float %1829)  ; FAbs(value)
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1802, float %1805, float %1808)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = call float @dx.op.unary.f32(i32 6, float %1831)  ; FAbs(value)
  %1833 = fadd fast float %1832, %1830
  %1834 = fsub fast float %1828, %1833
  %1835 = fadd fast float %1833, %1828
  %1836 = fcmp fast olt float %1834, %1826
  %1837 = select i1 %1836, float %1834, float %1826
  %1838 = fcmp fast ogt float %1835, %1827
  %1839 = select i1 %1838, float %1835, float %1827
  %1840 = fcmp fast olt float %1839, %1818
  %1841 = fcmp fast olt float %1819, %1837
  %1842 = or i1 %1840, %1841
  br i1 %1842, label %1853, label %1843, !dx.controlflow.hints !41

; <label>:1843                                    ; preds = %1795
  %1844 = add nuw nsw i32 %1799, 1
  %1845 = icmp ult i32 %1844, 3
  br i1 %1845, label %1846, label %1853, !llvm.loop !42

; <label>:1846                                    ; preds = %1843
  %1847 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1844
  %1848 = load float, float* %1847, align 4
  %1849 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1844
  %1850 = load float, float* %1849, align 4
  %1851 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1844
  %1852 = load float, float* %1851, align 4
  br label %1795

; <label>:1853                                    ; preds = %1843, %1795
  %1854 = phi i1 [ true, %1795 ], [ false, %1843 ]
  br i1 %1854, label %2285, label %1855, !dx.controlflow.hints !45

; <label>:1855                                    ; preds = %1853
  %1856 = fmul fast float %93, %1318
  %1857 = fmul fast float %1856, %1621
  %1858 = fsub fast float -0.000000e+00, %1857
  %1859 = fmul fast float %93, %1318
  %1860 = fmul fast float %1859, %1623
  %1861 = fsub fast float -0.000000e+00, %1860
  %1862 = fmul fast float %93, %1318
  %1863 = fmul fast float %1862, %1625
  %1864 = fsub fast float -0.000000e+00, %1863
  br label %1865

; <label>:1865                                    ; preds = %1916, %1855
  %1866 = phi float [ %1395, %1855 ], [ %1922, %1916 ]
  %1867 = phi float [ %1394, %1855 ], [ %1920, %1916 ]
  %1868 = phi float [ %1393, %1855 ], [ %1918, %1916 ]
  %1869 = phi i32 [ 0, %1855 ], [ %1914, %1916 ]
  %1870 = fmul fast float %1866, %1861
  %1871 = fmul fast float %1867, %1864
  %1872 = fsub fast float %1870, %1871
  %1873 = fmul fast float %1868, %1864
  %1874 = fmul fast float %1866, %1858
  %1875 = fsub fast float %1873, %1874
  %1876 = fmul fast float %1867, %1858
  %1877 = fmul fast float %1868, %1861
  %1878 = fsub fast float %1876, %1877
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.unary.f32(i32 6, float %1880)  ; FAbs(value)
  %1882 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1883 = call float @dx.op.unary.f32(i32 6, float %1882)  ; FAbs(value)
  %1884 = fadd fast float %1883, %1881
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = call float @dx.op.unary.f32(i32 6, float %1885)  ; FAbs(value)
  %1887 = fadd fast float %1884, %1886
  %1888 = fsub fast float %1879, %1887
  %1889 = fadd fast float %1887, %1879
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call float @dx.op.unary.f32(i32 6, float %1891)  ; FAbs(value)
  %1893 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1894 = call float @dx.op.unary.f32(i32 6, float %1893)  ; FAbs(value)
  %1895 = fadd fast float %1894, %1892
  %1896 = fsub fast float %1890, %1895
  %1897 = fadd fast float %1895, %1890
  %1898 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1899 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1900 = call float @dx.op.unary.f32(i32 6, float %1899)  ; FAbs(value)
  %1901 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1872, float %1875, float %1878)  ; Dot3(ax,ay,az,bx,by,bz)
  %1902 = call float @dx.op.unary.f32(i32 6, float %1901)  ; FAbs(value)
  %1903 = fadd fast float %1902, %1900
  %1904 = fsub fast float %1898, %1903
  %1905 = fadd fast float %1903, %1898
  %1906 = fcmp fast olt float %1904, %1896
  %1907 = select i1 %1906, float %1904, float %1896
  %1908 = fcmp fast ogt float %1905, %1897
  %1909 = select i1 %1908, float %1905, float %1897
  %1910 = fcmp fast olt float %1909, %1888
  %1911 = fcmp fast olt float %1889, %1907
  %1912 = or i1 %1910, %1911
  br i1 %1912, label %1923, label %1913, !dx.controlflow.hints !41

; <label>:1913                                    ; preds = %1865
  %1914 = add nuw nsw i32 %1869, 1
  %1915 = icmp ult i32 %1914, 3
  br i1 %1915, label %1916, label %1923, !llvm.loop !42

; <label>:1916                                    ; preds = %1913
  %1917 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1914
  %1918 = load float, float* %1917, align 4
  %1919 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1914
  %1920 = load float, float* %1919, align 4
  %1921 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1914
  %1922 = load float, float* %1921, align 4
  br label %1865

; <label>:1923                                    ; preds = %1913, %1865
  %1924 = phi i1 [ true, %1865 ], [ false, %1913 ]
  br i1 %1924, label %2285, label %1925, !dx.controlflow.hints !46

; <label>:1925                                    ; preds = %1923
  %1926 = fsub fast float %1388, %1367
  %1927 = fsub fast float %1389, %1368
  %1928 = fsub fast float %1390, %1369
  %1929 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1931 = call float @dx.op.unary.f32(i32 6, float %1930)  ; FAbs(value)
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = call float @dx.op.unary.f32(i32 6, float %1932)  ; FAbs(value)
  %1934 = fadd fast float %1933, %1931
  %1935 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = call float @dx.op.unary.f32(i32 6, float %1935)  ; FAbs(value)
  %1937 = fadd fast float %1934, %1936
  %1938 = fsub fast float %1929, %1937
  %1939 = fadd fast float %1937, %1929
  %1940 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = call float @dx.op.unary.f32(i32 6, float %1941)  ; FAbs(value)
  %1943 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1944 = call float @dx.op.unary.f32(i32 6, float %1943)  ; FAbs(value)
  %1945 = fadd fast float %1944, %1942
  %1946 = fsub fast float %1940, %1945
  %1947 = fadd fast float %1945, %1940
  %1948 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1949 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1950 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1926, float %1927, float %1928)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = call float @dx.op.unary.f32(i32 6, float %1951)  ; FAbs(value)
  %1953 = fadd fast float %1952, %1950
  %1954 = fsub fast float %1948, %1953
  %1955 = fadd fast float %1953, %1948
  %1956 = fcmp fast olt float %1954, %1946
  %1957 = select i1 %1956, float %1954, float %1946
  %1958 = fcmp fast ogt float %1955, %1947
  %1959 = select i1 %1958, float %1955, float %1947
  %1960 = fcmp fast olt float %1959, %1938
  %1961 = fcmp fast olt float %1939, %1957
  %1962 = or i1 %1960, %1961
  br i1 %1962, label %2285, label %1963, !dx.controlflow.hints !47

; <label>:1963                                    ; preds = %1925
  %1964 = fadd fast float %1361, %1352
  %1965 = fadd fast float %1964, %1346
  %1966 = fadd fast float %1362, %1354
  %1967 = fadd fast float %1966, %1347
  %1968 = fadd fast float %1363, %1356
  %1969 = fadd fast float %1968, %1348
  %1970 = fmul fast float %1318, %93
  %1971 = fmul fast float %1965, %1970
  %1972 = fmul fast float %1318, %93
  %1973 = fmul fast float %1967, %1972
  %1974 = fmul fast float %1318, %93
  %1975 = fmul fast float %1969, %1974
  %1976 = fmul fast float %1975, %1359
  %1977 = fmul fast float %1973, %1360
  %1978 = fsub fast float %1976, %1977
  %1979 = fmul fast float %1971, %1360
  %1980 = fmul fast float %1975, %1358
  %1981 = fsub fast float %1979, %1980
  %1982 = fmul fast float %1973, %1358
  %1983 = fmul fast float %1971, %1359
  %1984 = fsub fast float %1982, %1983
  %1985 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = call float @dx.op.unary.f32(i32 6, float %1986)  ; FAbs(value)
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = call float @dx.op.unary.f32(i32 6, float %1988)  ; FAbs(value)
  %1990 = fadd fast float %1989, %1987
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = call float @dx.op.unary.f32(i32 6, float %1991)  ; FAbs(value)
  %1993 = fadd fast float %1990, %1992
  %1994 = fsub fast float %1985, %1993
  %1995 = fadd fast float %1993, %1985
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1998 = call float @dx.op.unary.f32(i32 6, float %1997)  ; FAbs(value)
  %1999 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %2000 = call float @dx.op.unary.f32(i32 6, float %1999)  ; FAbs(value)
  %2001 = fadd fast float %2000, %1998
  %2002 = fsub fast float %1996, %2001
  %2003 = fadd fast float %2001, %1996
  %2004 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %2005 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %2006 = call float @dx.op.unary.f32(i32 6, float %2005)  ; FAbs(value)
  %2007 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1978, float %1981, float %1984)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = call float @dx.op.unary.f32(i32 6, float %2007)  ; FAbs(value)
  %2009 = fadd fast float %2008, %2006
  %2010 = fsub fast float %2004, %2009
  %2011 = fadd fast float %2009, %2004
  %2012 = fcmp fast olt float %2010, %2002
  %2013 = select i1 %2012, float %2010, float %2002
  %2014 = fcmp fast ogt float %2011, %2003
  %2015 = select i1 %2014, float %2011, float %2003
  %2016 = fcmp fast olt float %2015, %1994
  %2017 = fcmp fast olt float %1995, %2013
  %2018 = or i1 %2016, %2017
  br i1 %2018, label %2285, label %2019, !dx.controlflow.hints !48

; <label>:2019                                    ; preds = %1963
  %2020 = fmul fast float %1975, %1365
  %2021 = fmul fast float %1973, %1366
  %2022 = fsub fast float %2020, %2021
  %2023 = fmul fast float %1971, %1366
  %2024 = fmul fast float %1975, %1364
  %2025 = fsub fast float %2023, %2024
  %2026 = fmul fast float %1973, %1364
  %2027 = fmul fast float %1971, %1365
  %2028 = fsub fast float %2026, %2027
  %2029 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2030 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2031 = call float @dx.op.unary.f32(i32 6, float %2030)  ; FAbs(value)
  %2032 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = call float @dx.op.unary.f32(i32 6, float %2032)  ; FAbs(value)
  %2034 = fadd fast float %2033, %2031
  %2035 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2036 = call float @dx.op.unary.f32(i32 6, float %2035)  ; FAbs(value)
  %2037 = fadd fast float %2034, %2036
  %2038 = fsub fast float %2029, %2037
  %2039 = fadd fast float %2037, %2029
  %2040 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2042 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2043 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call float @dx.op.unary.f32(i32 6, float %2043)  ; FAbs(value)
  %2045 = fadd fast float %2044, %2042
  %2046 = fsub fast float %2040, %2045
  %2047 = fadd fast float %2045, %2040
  %2048 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2049 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = call float @dx.op.unary.f32(i32 6, float %2049)  ; FAbs(value)
  %2051 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2022, float %2025, float %2028)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = call float @dx.op.unary.f32(i32 6, float %2051)  ; FAbs(value)
  %2053 = fadd fast float %2052, %2050
  %2054 = fsub fast float %2048, %2053
  %2055 = fadd fast float %2053, %2048
  %2056 = fcmp fast olt float %2054, %2046
  %2057 = select i1 %2056, float %2054, float %2046
  %2058 = fcmp fast ogt float %2055, %2047
  %2059 = select i1 %2058, float %2055, float %2047
  %2060 = fcmp fast olt float %2059, %2038
  %2061 = fcmp fast olt float %2039, %2057
  %2062 = or i1 %2060, %2061
  br i1 %2062, label %2285, label %2063, !dx.controlflow.hints !49

; <label>:2063                                    ; preds = %2019
  %2064 = fmul fast float %93, %1318
  %2065 = fmul fast float %2064, %1965
  %2066 = fsub fast float -0.000000e+00, %2065
  %2067 = fmul fast float %93, %1318
  %2068 = fmul fast float %2067, %1967
  %2069 = fsub fast float -0.000000e+00, %2068
  %2070 = fmul fast float %93, %1318
  %2071 = fmul fast float %2070, %1969
  %2072 = fsub fast float -0.000000e+00, %2071
  br label %2073

; <label>:2073                                    ; preds = %2124, %2063
  %2074 = phi float [ %1395, %2063 ], [ %2130, %2124 ]
  %2075 = phi float [ %1394, %2063 ], [ %2128, %2124 ]
  %2076 = phi float [ %1393, %2063 ], [ %2126, %2124 ]
  %2077 = phi i32 [ 0, %2063 ], [ %2122, %2124 ]
  %2078 = fmul fast float %2074, %2069
  %2079 = fmul fast float %2075, %2072
  %2080 = fsub fast float %2078, %2079
  %2081 = fmul fast float %2076, %2072
  %2082 = fmul fast float %2074, %2066
  %2083 = fsub fast float %2081, %2082
  %2084 = fmul fast float %2075, %2066
  %2085 = fmul fast float %2076, %2069
  %2086 = fsub fast float %2084, %2085
  %2087 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2088 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2089 = call float @dx.op.unary.f32(i32 6, float %2088)  ; FAbs(value)
  %2090 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2091 = call float @dx.op.unary.f32(i32 6, float %2090)  ; FAbs(value)
  %2092 = fadd fast float %2091, %2089
  %2093 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2094 = call float @dx.op.unary.f32(i32 6, float %2093)  ; FAbs(value)
  %2095 = fadd fast float %2092, %2094
  %2096 = fsub fast float %2087, %2095
  %2097 = fadd fast float %2095, %2087
  %2098 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2099 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = call float @dx.op.unary.f32(i32 6, float %2099)  ; FAbs(value)
  %2101 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2102 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2103 = fadd fast float %2102, %2100
  %2104 = fsub fast float %2098, %2103
  %2105 = fadd fast float %2103, %2098
  %2106 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2107 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = call float @dx.op.unary.f32(i32 6, float %2107)  ; FAbs(value)
  %2109 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2080, float %2083, float %2086)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = call float @dx.op.unary.f32(i32 6, float %2109)  ; FAbs(value)
  %2111 = fadd fast float %2110, %2108
  %2112 = fsub fast float %2106, %2111
  %2113 = fadd fast float %2111, %2106
  %2114 = fcmp fast olt float %2112, %2104
  %2115 = select i1 %2114, float %2112, float %2104
  %2116 = fcmp fast ogt float %2113, %2105
  %2117 = select i1 %2116, float %2113, float %2105
  %2118 = fcmp fast olt float %2117, %2096
  %2119 = fcmp fast olt float %2097, %2115
  %2120 = or i1 %2118, %2119
  br i1 %2120, label %2131, label %2121, !dx.controlflow.hints !41

; <label>:2121                                    ; preds = %2073
  %2122 = add nuw nsw i32 %2077, 1
  %2123 = icmp ult i32 %2122, 3
  br i1 %2123, label %2124, label %2131, !llvm.loop !42

; <label>:2124                                    ; preds = %2121
  %2125 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %2122
  %2126 = load float, float* %2125, align 4
  %2127 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %2122
  %2128 = load float, float* %2127, align 4
  %2129 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %2122
  %2130 = load float, float* %2129, align 4
  br label %2073

; <label>:2131                                    ; preds = %2121, %2073
  %2132 = phi i1 [ true, %2073 ], [ false, %2121 ]
  br i1 %2132, label %2285, label %2133, !dx.controlflow.hints !50

; <label>:2133                                    ; preds = %2131
  %2134 = fsub fast float %1352, %1361
  %2135 = fadd fast float %2134, %1346
  %2136 = fsub fast float %1354, %1362
  %2137 = fadd fast float %2136, %1347
  %2138 = fsub fast float %1356, %1363
  %2139 = fadd fast float %2138, %1348
  %2140 = fmul fast float %93, %1318
  %2141 = fmul fast float %2140, %2135
  %2142 = fsub fast float -0.000000e+00, %2141
  %2143 = fmul fast float %93, %1318
  %2144 = fmul fast float %2143, %2137
  %2145 = fsub fast float -0.000000e+00, %2144
  %2146 = fmul fast float %93, %1318
  %2147 = fmul fast float %2146, %2139
  %2148 = fsub fast float -0.000000e+00, %2147
  br label %2149

; <label>:2149                                    ; preds = %2200, %2133
  %2150 = phi float [ %1395, %2133 ], [ %2206, %2200 ]
  %2151 = phi float [ %1394, %2133 ], [ %2204, %2200 ]
  %2152 = phi float [ %1393, %2133 ], [ %2202, %2200 ]
  %2153 = phi i32 [ 0, %2133 ], [ %2198, %2200 ]
  %2154 = fmul fast float %2150, %2145
  %2155 = fmul fast float %2151, %2148
  %2156 = fsub fast float %2154, %2155
  %2157 = fmul fast float %2152, %2148
  %2158 = fmul fast float %2150, %2142
  %2159 = fsub fast float %2157, %2158
  %2160 = fmul fast float %2151, %2142
  %2161 = fmul fast float %2152, %2145
  %2162 = fsub fast float %2160, %2161
  %2163 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2164 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.unary.f32(i32 6, float %2164)  ; FAbs(value)
  %2166 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = call float @dx.op.unary.f32(i32 6, float %2166)  ; FAbs(value)
  %2168 = fadd fast float %2167, %2165
  %2169 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = call float @dx.op.unary.f32(i32 6, float %2169)  ; FAbs(value)
  %2171 = fadd fast float %2168, %2170
  %2172 = fsub fast float %2163, %2171
  %2173 = fadd fast float %2171, %2163
  %2174 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2176 = call float @dx.op.unary.f32(i32 6, float %2175)  ; FAbs(value)
  %2177 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2179 = fadd fast float %2178, %2176
  %2180 = fsub fast float %2174, %2179
  %2181 = fadd fast float %2179, %2174
  %2182 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2183 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2184 = call float @dx.op.unary.f32(i32 6, float %2183)  ; FAbs(value)
  %2185 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2156, float %2159, float %2162)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = call float @dx.op.unary.f32(i32 6, float %2185)  ; FAbs(value)
  %2187 = fadd fast float %2186, %2184
  %2188 = fsub fast float %2182, %2187
  %2189 = fadd fast float %2187, %2182
  %2190 = fcmp fast olt float %2188, %2180
  %2191 = select i1 %2190, float %2188, float %2180
  %2192 = fcmp fast ogt float %2189, %2181
  %2193 = select i1 %2192, float %2189, float %2181
  %2194 = fcmp fast olt float %2193, %2172
  %2195 = fcmp fast olt float %2173, %2191
  %2196 = or i1 %2194, %2195
  br i1 %2196, label %2207, label %2197, !dx.controlflow.hints !41

; <label>:2197                                    ; preds = %2149
  %2198 = add nuw nsw i32 %2153, 1
  %2199 = icmp ult i32 %2198, 3
  br i1 %2199, label %2200, label %2207, !llvm.loop !42

; <label>:2200                                    ; preds = %2197
  %2201 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %2198
  %2202 = load float, float* %2201, align 4
  %2203 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %2198
  %2204 = load float, float* %2203, align 4
  %2205 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %2198
  %2206 = load float, float* %2205, align 4
  br label %2149

; <label>:2207                                    ; preds = %2197, %2149
  %2208 = phi i1 [ true, %2149 ], [ false, %2197 ]
  br i1 %2208, label %2285, label %2209, !dx.controlflow.hints !51

; <label>:2209                                    ; preds = %2207
  %2210 = fsub fast float %1361, %1352
  %2211 = fadd fast float %2210, %1346
  %2212 = fsub fast float %1362, %1354
  %2213 = fadd fast float %2212, %1347
  %2214 = fsub fast float %1363, %1356
  %2215 = fadd fast float %2214, %1348
  %2216 = fmul fast float %93, %1318
  %2217 = fmul fast float %2216, %2211
  %2218 = fsub fast float -0.000000e+00, %2217
  %2219 = fmul fast float %93, %1318
  %2220 = fmul fast float %2219, %2213
  %2221 = fsub fast float -0.000000e+00, %2220
  %2222 = fmul fast float %93, %1318
  %2223 = fmul fast float %2222, %2215
  %2224 = fsub fast float -0.000000e+00, %2223
  br label %2225

; <label>:2225                                    ; preds = %2276, %2209
  %2226 = phi float [ %1395, %2209 ], [ %2282, %2276 ]
  %2227 = phi float [ %1394, %2209 ], [ %2280, %2276 ]
  %2228 = phi float [ %1393, %2209 ], [ %2278, %2276 ]
  %2229 = phi i32 [ 0, %2209 ], [ %2274, %2276 ]
  %2230 = fmul fast float %2226, %2221
  %2231 = fmul fast float %2227, %2224
  %2232 = fsub fast float %2230, %2231
  %2233 = fmul fast float %2228, %2224
  %2234 = fmul fast float %2226, %2218
  %2235 = fsub fast float %2233, %2234
  %2236 = fmul fast float %2227, %2218
  %2237 = fmul fast float %2228, %2221
  %2238 = fsub fast float %2236, %2237
  %2239 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2240 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2241 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2242 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2243 = call float @dx.op.unary.f32(i32 6, float %2242)  ; FAbs(value)
  %2244 = fadd fast float %2243, %2241
  %2245 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2246 = call float @dx.op.unary.f32(i32 6, float %2245)  ; FAbs(value)
  %2247 = fadd fast float %2244, %2246
  %2248 = fsub fast float %2239, %2247
  %2249 = fadd fast float %2247, %2239
  %2250 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2253 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2255 = fadd fast float %2254, %2252
  %2256 = fsub fast float %2250, %2255
  %2257 = fadd fast float %2255, %2250
  %2258 = call float @dx.op.dot3.f32(i32 55, float %1367, float %1368, float %1369, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call float @dx.op.dot3.f32(i32 55, float %1370, float %1371, float %1372, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2260 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2261 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2232, float %2235, float %2238)  ; Dot3(ax,ay,az,bx,by,bz)
  %2262 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2263 = fadd fast float %2262, %2260
  %2264 = fsub fast float %2258, %2263
  %2265 = fadd fast float %2263, %2258
  %2266 = fcmp fast olt float %2264, %2256
  %2267 = select i1 %2266, float %2264, float %2256
  %2268 = fcmp fast ogt float %2265, %2257
  %2269 = select i1 %2268, float %2265, float %2257
  %2270 = fcmp fast olt float %2269, %2248
  %2271 = fcmp fast olt float %2249, %2267
  %2272 = or i1 %2270, %2271
  br i1 %2272, label %2283, label %2273, !dx.controlflow.hints !41

; <label>:2273                                    ; preds = %2225
  %2274 = add nuw nsw i32 %2229, 1
  %2275 = icmp ult i32 %2274, 3
  br i1 %2275, label %2276, label %2283, !llvm.loop !42

; <label>:2276                                    ; preds = %2273
  %2277 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %2274
  %2278 = load float, float* %2277, align 4
  %2279 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %2274
  %2280 = load float, float* %2279, align 4
  %2281 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %2274
  %2282 = load float, float* %2281, align 4
  br label %2225

; <label>:2283                                    ; preds = %2273, %2225
  %2284 = phi i1 [ true, %2273 ], [ false, %2225 ]
  br label %2285

; <label>:2285                                    ; preds = %2283, %2207, %2131, %2019, %1963, %1925, %1923, %1853, %1785, %1675, %1619, %1575, %1537, %1519, %1484, %1449, %1385, %1382, %1246
  %2286 = phi i32 [ %1383, %1382 ], [ 0, %1246 ], [ %1383, %1385 ], [ %1383, %1449 ], [ %1383, %1484 ], [ %1383, %2207 ], [ %1383, %2131 ], [ %1383, %2019 ], [ %1383, %1963 ], [ %1383, %1925 ], [ %1383, %1923 ], [ %1383, %1853 ], [ %1383, %1785 ], [ %1383, %1675 ], [ %1383, %1619 ], [ %1383, %1575 ], [ %1383, %1537 ], [ %1383, %1519 ], [ %1383, %2283 ]
  %2287 = phi i1 [ false, %1382 ], [ false, %1246 ], [ false, %1385 ], [ false, %1449 ], [ false, %1484 ], [ false, %2207 ], [ false, %2131 ], [ false, %2019 ], [ false, %1963 ], [ false, %1925 ], [ false, %1923 ], [ false, %1853 ], [ false, %1785 ], [ false, %1675 ], [ false, %1619 ], [ false, %1575 ], [ false, %1537 ], [ true, %1519 ], [ %2284, %2283 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2288 = and i32 %9, 31
  %2289 = shl i32 1, %2288
  %2290 = select i1 %2287, i32 %2289, i32 0
  %2291 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %2290, i32 addrspace(3)* %2291, align 4, !tbaa !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2292 = icmp ult i32 %2288, 16
  br i1 %2292, label %2293, label %2299, !dx.controlflow.hints !68

; <label>:2293                                    ; preds = %2285
  %2294 = add i32 %9, 16
  %2295 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2294
  %2296 = load i32, i32 addrspace(3)* %2295, align 4, !tbaa !29
  %2297 = load i32, i32 addrspace(3)* %2291, align 4, !tbaa !29
  %2298 = or i32 %2297, %2296
  store i32 %2298, i32 addrspace(3)* %2291, align 4, !tbaa !29
  br label %2299

; <label>:2299                                    ; preds = %2293, %2285
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2300 = icmp ult i32 %2288, 8
  br i1 %2300, label %2301, label %2307, !dx.controlflow.hints !69

; <label>:2301                                    ; preds = %2299
  %2302 = add i32 %9, 8
  %2303 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2302
  %2304 = load i32, i32 addrspace(3)* %2303, align 4, !tbaa !29
  %2305 = load i32, i32 addrspace(3)* %2291, align 4, !tbaa !29
  %2306 = or i32 %2305, %2304
  store i32 %2306, i32 addrspace(3)* %2291, align 4, !tbaa !29
  br label %2307

; <label>:2307                                    ; preds = %2301, %2299
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2308 = icmp ult i32 %2288, 4
  br i1 %2308, label %2309, label %2315, !dx.controlflow.hints !70

; <label>:2309                                    ; preds = %2307
  %2310 = add i32 %9, 4
  %2311 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2310
  %2312 = load i32, i32 addrspace(3)* %2311, align 4, !tbaa !29
  %2313 = load i32, i32 addrspace(3)* %2291, align 4, !tbaa !29
  %2314 = or i32 %2313, %2312
  store i32 %2314, i32 addrspace(3)* %2291, align 4, !tbaa !29
  br label %2315

; <label>:2315                                    ; preds = %2309, %2307
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2316 = icmp ult i32 %2288, 2
  br i1 %2316, label %2317, label %2323, !dx.controlflow.hints !71

; <label>:2317                                    ; preds = %2315
  %2318 = add i32 %9, 2
  %2319 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2318
  %2320 = load i32, i32 addrspace(3)* %2319, align 4, !tbaa !29
  %2321 = load i32, i32 addrspace(3)* %2291, align 4, !tbaa !29
  %2322 = or i32 %2321, %2320
  store i32 %2322, i32 addrspace(3)* %2291, align 4, !tbaa !29
  br label %2323

; <label>:2323                                    ; preds = %2317, %2315
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2324 = icmp eq i32 %2288, 0
  br i1 %2324, label %2325, label %2331, !dx.controlflow.hints !72

; <label>:2325                                    ; preds = %2323
  %2326 = add i32 %9, 1
  %2327 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2326
  %2328 = load i32, i32 addrspace(3)* %2327, align 4, !tbaa !29
  %2329 = load i32, i32 addrspace(3)* %2291, align 4, !tbaa !29
  %2330 = or i32 %2329, %2328
  store i32 %2330, i32 addrspace(3)* %2291, align 4, !tbaa !29
  br label %2331

; <label>:2331                                    ; preds = %2325, %2323
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2332 = and i32 %9, -64
  %2333 = or i32 %2332, 32
  %2334 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2332
  %2335 = load i32, i32 addrspace(3)* %2334, align 4, !tbaa !29
  %2336 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2333
  %2337 = load i32, i32 addrspace(3)* %2336, align 4, !tbaa !29
  %2338 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 %2335, i32* %2338, align 4
  %2339 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 1
  store i32 %2337, i32* %2339, align 4
  %2340 = icmp eq i32 %83, 5
  %2341 = and i32 %85, 31
  %2342 = shl i32 1, %2341
  %2343 = add i32 %2342, -1
  %2344 = select i1 %2340, i32 -1, i32 %2343
  %2345 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 %1281
  %2346 = load i32, i32* %2345, align 4, !tbaa !29
  %2347 = and i32 %1280, 31
  %2348 = lshr i32 %2346, %2347
  %2349 = and i32 %2348, %2344
  %2350 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2349)  ; Countbits(value)
  %2351 = icmp eq i32 %9, 0
  br i1 %2351, label %2352, label %2353, !dx.controlflow.hints !73

; <label>:2352                                    ; preds = %2331
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !29
  br label %2353

; <label>:2353                                    ; preds = %2352, %2331
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2354 = icmp eq i32 %1279, 0
  br i1 %2354, label %2355, label %2360, !dx.controlflow.hints !74

; <label>:2355                                    ; preds = %2353
  %2356 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1277
  br i1 %1294, label %2359, label %2357, !dx.controlflow.hints !75

; <label>:2357                                    ; preds = %2355
  %2358 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %2350 seq_cst
  store i32 %2358, i32 addrspace(3)* %2356, align 4, !tbaa !29
  br label %2360

; <label>:2359                                    ; preds = %2355
  store i32 0, i32 addrspace(3)* %2356, align 4, !tbaa !29
  br label %2360

; <label>:2360                                    ; preds = %2359, %2357, %2353
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2351, label %2361, label %2364, !dx.controlflow.hints !76

; <label>:2361                                    ; preds = %2360
  %2362 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !29
  %2363 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1289, i32 0, i32 undef, i32 %2362)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %2363, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !29
  br label %2364

; <label>:2364                                    ; preds = %2361, %2360
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1294, label %2402, label %2365, !dx.controlflow.hints !77

; <label>:2365                                    ; preds = %2364
  %2366 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1277
  %2367 = load i32, i32 addrspace(3)* %2366, align 4, !tbaa !29
  %2368 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !29
  %2369 = add i32 %2367, %1282
  %2370 = add i32 %2369, %2368
  %2371 = and i32 %1279, 31
  %2372 = shl i32 1, %2371
  %2373 = and i32 %2349, %2372
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2383, label %2375, !dx.controlflow.hints !78

; <label>:2375                                    ; preds = %2365
  %2376 = add i32 %2372, -1
  %2377 = and i32 %2349, %2376
  %2378 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2377)  ; Countbits(value)
  %2379 = add i32 %2378, %2370
  %2380 = icmp ult i32 %2379, %94
  br i1 %2380, label %2381, label %2383, !dx.controlflow.hints !79

; <label>:2381                                    ; preds = %2375
  %2382 = shl i32 %2379, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2382, i32 undef, i32 %2286, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2383

; <label>:2383                                    ; preds = %2381, %2375, %2365
  br i1 %2354, label %2384, label %2402, !dx.controlflow.hints !80

; <label>:2384                                    ; preds = %2383
  %2385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.i32 %2385, 0
  %2387 = icmp ult i32 %2370, %2386
  %2388 = icmp ne i32 %2350, 0
  %2389 = and i1 %2388, %2387
  br i1 %2389, label %2390, label %2402, !dx.controlflow.hints !64

; <label>:2390                                    ; preds = %2384
  %2391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.i32 %2391, 0
  %2393 = extractvalue %dx.types.CBufRet.i32 %2391, 1
  %2394 = mul i32 %2393, %1287
  %2395 = add i32 %2394, %1285
  %2396 = mul i32 %2395, %2392
  %2397 = add i32 %2396, %1283
  %2398 = and i32 %2350, 1023
  %2399 = shl i32 %2370, 10
  %2400 = or i32 %2399, %2398
  %2401 = shl i32 %2397, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2401, i32 undef, i32 %2400, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2402

; <label>:2402                                    ; preds = %2390, %2384, %2383, %2364, %1234, %1228, %1225
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!54 = distinct !{!54, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!55 = distinct !{!55, !54, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}

