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
; shader hash: ba3adcd43032dee4afe98e35f83827d8
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
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
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
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.i32 %21, 0
  br i1 %90, label %97, label %1258, !dx.controlflow.hints !28

; <label>:97                                      ; preds = %84
  %98 = sub i32 %12, %86
  %99 = lshr i32 %98, 3
  %100 = mul i32 %22, 6
  %101 = add i32 %100, %99
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %101, i32 0)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %101, i32 4)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %101, i32 8)  ; BufferLoad(srv,index,wot)
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
  %120 = and i32 %119, 510
  %121 = or i32 %120, %110
  %122 = shl i32 %115, 20
  %123 = shl nuw nsw i32 %118, 8
  %124 = or i32 %122, %123
  %125 = or i32 %124, %121
  %126 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %128 = lshr i32 %124, 20
  %129 = lshr i32 %125, 8
  %130 = and i32 %129, 4095
  %131 = and i32 %121, 255
  %132 = icmp ult i32 %128, %92
  %133 = icmp ult i32 %130, %93
  %134 = and i1 %132, %133
  %135 = icmp eq i32 %11, 0
  br i1 %135, label %136, label %140, !dx.controlflow.hints !29

; <label>:136                                     ; preds = %97
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %139 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %138, i32 0, i32 undef, i32 %107)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %140

; <label>:140                                     ; preds = %136, %97
  %141 = phi i32 [ %139, %136 ], [ 0, %97 ]
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
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = fadd fast float %153, 5.000000e-01
  %160 = fadd fast float %154, 5.000000e-01
  %161 = fmul fast float %126, 2.000000e+00
  %162 = fmul fast float %161, %159
  %163 = fmul fast float %127, 2.000000e+00
  %164 = fmul fast float %163, %160
  %165 = fadd fast float %162, -1.000000e+00
  %166 = fsub fast float 1.000000e+00, %164
  %167 = fmul fast float %155, %95
  %168 = fsub fast float %151, %152
  %169 = fmul fast float %167, %168
  %170 = fadd fast float %169, %152
  %171 = fadd fast float %155, 1.000000e+00
  %172 = fmul fast float %171, %95
  %173 = fmul fast float %172, %168
  %174 = fadd fast float %173, %152
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %226 = add i32 %107, 63
  %227 = and i32 %226, -64
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %1225, label %229

; <label>:229                                     ; preds = %147
  br label %230

; <label>:230                                     ; preds = %1220, %229
  %231 = phi i32 [ %1221, %1220 ], [ 0, %229 ]
  %232 = phi i32 [ %1222, %1220 ], [ 0, %229 ]
  %233 = add i32 %232, %11
  %234 = icmp ult i32 %233, %107
  %235 = and i1 %134, %234
  br i1 %235, label %236, label %241, !dx.controlflow.hints !35

; <label>:236                                     ; preds = %230
  %237 = add i32 %233, %105
  %238 = shl i32 %237, 2
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  br label %241

; <label>:241                                     ; preds = %236, %230
  %242 = phi i32 [ %240, %236 ], [ -1, %230 ]
  %243 = icmp ult i32 %242, %89
  br i1 %243, label %244, label %1144, !dx.controlflow.hints !36

; <label>:244                                     ; preds = %241
  %245 = mul i32 %242, 48
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = or i32 %245, 12
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = add i32 %245, 24
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = add i32 %245, 36
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 0
  %266 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 0
  %267 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 0
  store float %252, float* %265, align 4
  store float %253, float* %266, align 4
  store float %254, float* %267, align 4
  %268 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 1
  %269 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 1
  %270 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 1
  store float %257, float* %268, align 4
  store float %258, float* %269, align 4
  store float %259, float* %270, align 4
  %271 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 2
  %272 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 2
  %273 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 2
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
  br i1 %307, label %1144, label %308, !dx.controlflow.hints !37

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
  br i1 %342, label %1144, label %343, !dx.controlflow.hints !37

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
  br i1 %377, label %1144, label %378, !dx.controlflow.hints !37

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
  br i1 %395, label %1144, label %396, !dx.controlflow.hints !38

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
  br i1 %433, label %1144, label %434, !dx.controlflow.hints !39

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
  br i1 %477, label %1144, label %478, !dx.controlflow.hints !40

; <label>:478                                     ; preds = %434
  %479 = fsub fast float %203, %211
  %480 = fadd fast float %479, %196
  %481 = fsub fast float %205, %212
  %482 = fadd fast float %481, %197
  %483 = fsub fast float %207, %213
  %484 = fadd fast float %483, %198
  %485 = fmul fast float %168, %95
  %486 = fmul fast float %480, %485
  %487 = fmul fast float %168, %95
  %488 = fmul fast float %482, %487
  %489 = fmul fast float %168, %95
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
  br i1 %533, label %1144, label %534, !dx.controlflow.hints !41

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
  br i1 %577, label %1144, label %578, !dx.controlflow.hints !42

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
  br i1 %633, label %644, label %634, !dx.controlflow.hints !43

; <label>:634                                     ; preds = %586
  %635 = add nuw nsw i32 %590, 1
  %636 = icmp ult i32 %635, 3
  br i1 %636, label %637, label %644, !llvm.loop !44

; <label>:637                                     ; preds = %634
  %638 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %635
  %639 = load float, float* %638, align 4
  %640 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %635
  %641 = load float, float* %640, align 4
  %642 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %635
  %643 = load float, float* %642, align 4
  br label %586

; <label>:644                                     ; preds = %634, %586
  %645 = phi i1 [ true, %586 ], [ false, %634 ]
  br i1 %645, label %1144, label %646, !dx.controlflow.hints !46

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
  br i1 %701, label %712, label %702, !dx.controlflow.hints !43

; <label>:702                                     ; preds = %654
  %703 = add nuw nsw i32 %658, 1
  %704 = icmp ult i32 %703, 3
  br i1 %704, label %705, label %712, !llvm.loop !44

; <label>:705                                     ; preds = %702
  %706 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %703
  %707 = load float, float* %706, align 4
  %708 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %703
  %709 = load float, float* %708, align 4
  %710 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %703
  %711 = load float, float* %710, align 4
  br label %654

; <label>:712                                     ; preds = %702, %654
  %713 = phi i1 [ true, %654 ], [ false, %702 ]
  br i1 %713, label %1144, label %714, !dx.controlflow.hints !47

; <label>:714                                     ; preds = %712
  %715 = fmul fast float %95, %168
  %716 = fmul fast float %715, %480
  %717 = fsub fast float -0.000000e+00, %716
  %718 = fmul fast float %95, %168
  %719 = fmul fast float %718, %482
  %720 = fsub fast float -0.000000e+00, %719
  %721 = fmul fast float %95, %168
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
  br i1 %771, label %782, label %772, !dx.controlflow.hints !43

; <label>:772                                     ; preds = %724
  %773 = add nuw nsw i32 %728, 1
  %774 = icmp ult i32 %773, 3
  br i1 %774, label %775, label %782, !llvm.loop !44

; <label>:775                                     ; preds = %772
  %776 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %773
  %777 = load float, float* %776, align 4
  %778 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %773
  %779 = load float, float* %778, align 4
  %780 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %773
  %781 = load float, float* %780, align 4
  br label %724

; <label>:782                                     ; preds = %772, %724
  %783 = phi i1 [ true, %724 ], [ false, %772 ]
  br i1 %783, label %1144, label %784, !dx.controlflow.hints !48

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
  br i1 %821, label %1144, label %822, !dx.controlflow.hints !49

; <label>:822                                     ; preds = %784
  %823 = fadd fast float %211, %202
  %824 = fadd fast float %823, %196
  %825 = fadd fast float %212, %204
  %826 = fadd fast float %825, %197
  %827 = fadd fast float %213, %206
  %828 = fadd fast float %827, %198
  %829 = fmul fast float %168, %95
  %830 = fmul fast float %824, %829
  %831 = fmul fast float %168, %95
  %832 = fmul fast float %826, %831
  %833 = fmul fast float %168, %95
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
  br i1 %877, label %1144, label %878, !dx.controlflow.hints !50

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
  br i1 %921, label %1144, label %922, !dx.controlflow.hints !51

; <label>:922                                     ; preds = %878
  %923 = fmul fast float %95, %168
  %924 = fmul fast float %923, %824
  %925 = fsub fast float -0.000000e+00, %924
  %926 = fmul fast float %95, %168
  %927 = fmul fast float %926, %826
  %928 = fsub fast float -0.000000e+00, %927
  %929 = fmul fast float %95, %168
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
  br i1 %979, label %990, label %980, !dx.controlflow.hints !43

; <label>:980                                     ; preds = %932
  %981 = add nuw nsw i32 %936, 1
  %982 = icmp ult i32 %981, 3
  br i1 %982, label %983, label %990, !llvm.loop !44

; <label>:983                                     ; preds = %980
  %984 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %981
  %985 = load float, float* %984, align 4
  %986 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %981
  %987 = load float, float* %986, align 4
  %988 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %981
  %989 = load float, float* %988, align 4
  br label %932

; <label>:990                                     ; preds = %980, %932
  %991 = phi i1 [ true, %932 ], [ false, %980 ]
  br i1 %991, label %1144, label %992, !dx.controlflow.hints !52

; <label>:992                                     ; preds = %990
  %993 = fsub fast float %202, %211
  %994 = fadd fast float %993, %196
  %995 = fsub fast float %204, %212
  %996 = fadd fast float %995, %197
  %997 = fsub fast float %206, %213
  %998 = fadd fast float %997, %198
  %999 = fmul fast float %95, %168
  %1000 = fmul fast float %999, %994
  %1001 = fsub fast float -0.000000e+00, %1000
  %1002 = fmul fast float %95, %168
  %1003 = fmul fast float %1002, %996
  %1004 = fsub fast float -0.000000e+00, %1003
  %1005 = fmul fast float %95, %168
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
  br i1 %1055, label %1066, label %1056, !dx.controlflow.hints !43

; <label>:1056                                    ; preds = %1008
  %1057 = add nuw nsw i32 %1012, 1
  %1058 = icmp ult i32 %1057, 3
  br i1 %1058, label %1059, label %1066, !llvm.loop !44

; <label>:1059                                    ; preds = %1056
  %1060 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1057
  %1061 = load float, float* %1060, align 4
  %1062 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1057
  %1063 = load float, float* %1062, align 4
  %1064 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1057
  %1065 = load float, float* %1064, align 4
  br label %1008

; <label>:1066                                    ; preds = %1056, %1008
  %1067 = phi i1 [ true, %1008 ], [ false, %1056 ]
  br i1 %1067, label %1144, label %1068, !dx.controlflow.hints !53

; <label>:1068                                    ; preds = %1066
  %1069 = fsub fast float %211, %202
  %1070 = fadd fast float %1069, %196
  %1071 = fsub fast float %212, %204
  %1072 = fadd fast float %1071, %197
  %1073 = fsub fast float %213, %206
  %1074 = fadd fast float %1073, %198
  %1075 = fmul fast float %95, %168
  %1076 = fmul fast float %1075, %1070
  %1077 = fsub fast float -0.000000e+00, %1076
  %1078 = fmul fast float %95, %168
  %1079 = fmul fast float %1078, %1072
  %1080 = fsub fast float -0.000000e+00, %1079
  %1081 = fmul fast float %95, %168
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
  br i1 %1131, label %1142, label %1132, !dx.controlflow.hints !43

; <label>:1132                                    ; preds = %1084
  %1133 = add nuw nsw i32 %1088, 1
  %1134 = icmp ult i32 %1133, 3
  br i1 %1134, label %1135, label %1142, !llvm.loop !44

; <label>:1135                                    ; preds = %1132
  %1136 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1133
  %1137 = load float, float* %1136, align 4
  %1138 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1133
  %1139 = load float, float* %1138, align 4
  %1140 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1133
  %1141 = load float, float* %1140, align 4
  br label %1084

; <label>:1142                                    ; preds = %1132, %1084
  %1143 = phi i32 [ 0, %1084 ], [ 1, %1132 ]
  br label %1144

; <label>:1144                                    ; preds = %1142, %1066, %990, %878, %822, %784, %782, %712, %644, %534, %478, %434, %396, %378, %343, %308, %244, %241
  %1145 = phi i32 [ 0, %241 ], [ 1, %378 ], [ 0, %396 ], [ 0, %434 ], [ 0, %478 ], [ 0, %534 ], [ 0, %644 ], [ 0, %712 ], [ 0, %782 ], [ 0, %784 ], [ 0, %822 ], [ 0, %878 ], [ 0, %990 ], [ 0, %1066 ], [ 0, %343 ], [ 0, %308 ], [ 0, %244 ], [ %1143, %1142 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %1145, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1147 = and i32 %11, 1
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1155, label %1149, !dx.controlflow.hints !58

; <label>:1149                                    ; preds = %1144
  %1150 = and i32 %11, -2
  %1151 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1150
  %1152 = load i32, i32 addrspace(3)* %1151, align 4, !tbaa !31, !noalias !54
  %1153 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  %1154 = add i32 %1153, %1152
  store i32 %1154, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1155

; <label>:1155                                    ; preds = %1149, %1144
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1156 = and i32 %11, 2
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1165, label %1158, !dx.controlflow.hints !59

; <label>:1158                                    ; preds = %1155
  %1159 = and i32 %11, -4
  %1160 = or i32 %1159, 1
  %1161 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1160
  %1162 = load i32, i32 addrspace(3)* %1161, align 4, !tbaa !31, !noalias !54
  %1163 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  %1164 = add i32 %1163, %1162
  store i32 %1164, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1165

; <label>:1165                                    ; preds = %1158, %1155
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1166 = and i32 %11, 4
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1175, label %1168, !dx.controlflow.hints !60

; <label>:1168                                    ; preds = %1165
  %1169 = and i32 %11, -8
  %1170 = or i32 %1169, 3
  %1171 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1170
  %1172 = load i32, i32 addrspace(3)* %1171, align 4, !tbaa !31, !noalias !54
  %1173 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  %1174 = add i32 %1173, %1172
  store i32 %1174, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1175

; <label>:1175                                    ; preds = %1168, %1165
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1176 = and i32 %11, 8
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1185, label %1178, !dx.controlflow.hints !61

; <label>:1178                                    ; preds = %1175
  %1179 = and i32 %11, -16
  %1180 = or i32 %1179, 7
  %1181 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1180
  %1182 = load i32, i32 addrspace(3)* %1181, align 4, !tbaa !31, !noalias !54
  %1183 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  %1184 = add i32 %1183, %1182
  store i32 %1184, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1185

; <label>:1185                                    ; preds = %1178, %1175
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1186 = and i32 %11, 16
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1195, label %1188, !dx.controlflow.hints !62

; <label>:1188                                    ; preds = %1185
  %1189 = and i32 %11, -32
  %1190 = or i32 %1189, 15
  %1191 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1190
  %1192 = load i32, i32 addrspace(3)* %1191, align 4, !tbaa !31, !noalias !54
  %1193 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  %1194 = add i32 %1193, %1192
  store i32 %1194, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1195

; <label>:1195                                    ; preds = %1188, %1185
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1196 = and i32 %11, 32
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1198, label %1200, !dx.controlflow.hints !63

; <label>:1198                                    ; preds = %1195
  %1199 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1207

; <label>:1200                                    ; preds = %1195
  %1201 = and i32 %11, -64
  %1202 = or i32 %1201, 31
  %1203 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1202
  %1204 = load i32, i32 addrspace(3)* %1203, align 4, !tbaa !31, !noalias !54
  %1205 = load i32, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  %1206 = add i32 %1205, %1204
  store i32 %1206, i32 addrspace(3)* %1146, align 4, !tbaa !31, !noalias !54
  br label %1207

; <label>:1207                                    ; preds = %1200, %1198
  %1208 = phi i32 [ %1199, %1198 ], [ %1206, %1200 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1209 = or i32 %11, 63
  %1210 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1209
  %1211 = load i32, i32 addrspace(3)* %1210, align 4, !tbaa !31, !noalias !54
  %1212 = sub i32 %1208, %1145
  %1213 = add i32 %231, %149
  %1214 = add i32 %1213, %1212
  %1215 = icmp ne i32 %1145, 0
  %1216 = icmp ult i32 %1214, %96
  %1217 = and i1 %1215, %1216
  br i1 %1217, label %1218, label %1220, !dx.controlflow.hints !64

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
  %1227 = and i1 %135, %134
  br i1 %1227, label %1228, label %2424, !dx.controlflow.hints !65

; <label>:1228                                    ; preds = %1225
  %1229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.i32 %1229, 0
  %1231 = icmp ugt i32 %1230, %149
  %1232 = icmp ne i32 %1226, 0
  %1233 = and i1 %1232, %1231
  br i1 %1233, label %1234, label %2424, !dx.controlflow.hints !66

; <label>:1234                                    ; preds = %1228
  %1235 = extractvalue %dx.types.CBufRet.i32 %1229, 2
  %1236 = sub i32 %1230, %149
  %1237 = call i32 @dx.op.binary.i32(i32 40, i32 %1226, i32 %1236)  ; UMin(a,b)
  %1238 = add i32 %1237, -1
  %1239 = lshr i32 %1238, 1
  %1240 = or i32 %1239, %1238
  %1241 = lshr i32 %1240, 2
  %1242 = or i32 %1241, %1240
  %1243 = lshr i32 %1242, 4
  %1244 = or i32 %1243, %1242
  %1245 = lshr i32 %1244, 8
  %1246 = or i32 %1245, %1244
  %1247 = lshr i32 %1246, 16
  %1248 = or i32 %1247, %1246
  %1249 = add i32 %1248, 1
  %1250 = call i32 @dx.op.binary.i32(i32 40, i32 %1249, i32 64)  ; UMin(a,b)
  %1251 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1250)  ; FirstbitLo(value)
  %1252 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %1251, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1253 = lshr i32 %1252, 3
  %1254 = icmp ult i32 %1253, %1235
  br i1 %1254, label %1255, label %2424, !dx.controlflow.hints !67

; <label>:1255                                    ; preds = %1234
  %1256 = mul i32 %1251, %1235
  %1257 = add i32 %1253, %1256
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1257, i32 0, i32 %125, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1257, i32 4, i32 %149, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1257, i32 8, i32 %1237, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2424

; <label>:1258                                    ; preds = %84
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %85, i32 0)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = call i32 @dx.op.binary.i32(i32 40, i32 %1260, i32 %35)  ; UMin(a,b)
  %1262 = shl i32 %86, 6
  %1263 = sub i32 %13, %1262
  %1264 = lshr i32 %1263, %85
  %1265 = lshr i32 %1264, 3
  %1266 = mul i32 %22, %85
  %1267 = add i32 %1266, %1265
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1267, i32 0)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1267, i32 4)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1269, 20
  %1273 = lshr i32 %1264, 2
  %1274 = and i32 %1273, 1
  %1275 = lshr i32 %1264, 1
  %1276 = and i32 %1275, 1
  %1277 = and i32 %1264, 1
  %1278 = shl nuw nsw i32 %1272, 1
  %1279 = or i32 %1278, %1277
  %1280 = lshr i32 %1269, 7
  %1281 = and i32 %1280, 8190
  %1282 = or i32 %1281, %1276
  %1283 = shl i32 %1269, 1
  %1284 = and i32 %1283, 510
  %1285 = or i32 %1284, %1274
  %1286 = shl i32 %1279, 20
  %1287 = shl nuw nsw i32 %1282, 8
  %1288 = or i32 %1286, %1287
  %1289 = or i32 %1288, %1285
  %1290 = lshr i32 %11, %85
  %1291 = add i32 %87, -1
  %1292 = and i32 %1291, %11
  %1293 = shl i32 %1290, %85
  %1294 = lshr i32 %11, 5
  %1295 = lshr i32 %1288, 20
  %1296 = lshr i32 %1289, 8
  %1297 = and i32 %1296, 4095
  %1298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.i32 %1298, 1
  %1300 = icmp uge i32 %1295, %92
  %1301 = icmp uge i32 %1297, %93
  %1302 = or i1 %1300, %1301
  %1303 = icmp uge i32 %1264, %1261
  %1304 = or i1 %1302, %1303
  br i1 %1304, label %2296, label %1305, !dx.controlflow.hints !68

; <label>:1305                                    ; preds = %1258
  %1306 = and i32 %1285, 255
  %1307 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1267, i32 8)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1314 = uitofp i32 %1295 to float
  %1315 = uitofp i32 %1297 to float
  %1316 = uitofp i32 %1306 to float
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1320 = fadd fast float %1314, 5.000000e-01
  %1321 = fadd fast float %1315, 5.000000e-01
  %1322 = fmul fast float %1308, 2.000000e+00
  %1323 = fmul fast float %1322, %1320
  %1324 = fmul fast float %1307, 2.000000e+00
  %1325 = fmul fast float %1324, %1321
  %1326 = fadd fast float %1323, -1.000000e+00
  %1327 = fsub fast float 1.000000e+00, %1325
  %1328 = fmul fast float %1316, %95
  %1329 = fsub fast float %1312, %1313
  %1330 = fmul fast float %1328, %1329
  %1331 = fadd fast float %1330, %1313
  %1332 = fadd fast float %1316, 1.000000e+00
  %1333 = fmul fast float %1332, %95
  %1334 = fmul fast float %1333, %1329
  %1335 = fadd fast float %1334, %1313
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.CBufRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.CBufRet.f32 %1344, 2
  %1348 = fmul fast float %1337, %1326
  %1349 = fmul fast float %1338, %1326
  %1350 = fmul fast float %1339, %1326
  %1351 = fmul fast float %1341, %1327
  %1352 = fmul fast float %1342, %1327
  %1353 = fmul fast float %1343, %1327
  %1354 = fadd fast float %1351, %1348
  %1355 = fadd fast float %1352, %1349
  %1356 = fadd fast float %1353, %1350
  %1357 = fadd fast float %1354, %1345
  %1358 = fadd fast float %1355, %1346
  %1359 = fadd fast float %1356, %1347
  %1360 = fmul fast float %1357, %1331
  %1361 = fmul fast float %1358, %1331
  %1362 = fmul fast float %1359, %1331
  %1363 = fmul fast float %1337, %1318
  %1364 = fsub fast float -0.000000e+00, %1363
  %1365 = fmul fast float %1338, %1318
  %1366 = fsub fast float -0.000000e+00, %1365
  %1367 = fmul fast float %1339, %1318
  %1368 = fsub fast float -0.000000e+00, %1367
  %1369 = fmul fast float %1363, %1331
  %1370 = fmul fast float %1365, %1331
  %1371 = fmul fast float %1367, %1331
  %1372 = fmul fast float %1341, %1319
  %1373 = fmul fast float %1342, %1319
  %1374 = fmul fast float %1343, %1319
  %1375 = fmul fast float %1372, %1331
  %1376 = fmul fast float %1373, %1331
  %1377 = fmul fast float %1374, %1331
  %1378 = fmul fast float %1357, %1335
  %1379 = fmul fast float %1358, %1335
  %1380 = fmul fast float %1359, %1335
  %1381 = fmul fast float %1363, %1335
  %1382 = fmul fast float %1365, %1335
  %1383 = fmul fast float %1367, %1335
  %1384 = fmul fast float %1372, %1335
  %1385 = fmul fast float %1373, %1335
  %1386 = fmul fast float %1374, %1335
  %1387 = icmp ult i32 %1292, %1310
  br i1 %1387, label %1388, label %1393, !dx.controlflow.hints !69

; <label>:1388                                    ; preds = %1305
  %1389 = add i32 %1271, %1292
  %1390 = shl i32 %1389, 2
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  br label %1393

; <label>:1393                                    ; preds = %1388, %1305
  %1394 = phi i32 [ %1392, %1388 ], [ -1, %1305 ]
  %1395 = icmp ult i32 %1394, %89
  br i1 %1395, label %1396, label %2296, !dx.controlflow.hints !70

; <label>:1396                                    ; preds = %1393
  %1397 = mul i32 %1394, 48
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = or i32 %1397, 12
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = add i32 %1397, 24
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = add i32 %1397, 36
  %1413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1412, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = extractvalue %dx.types.ResRet.f32 %1413, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1413, 2
  %1417 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 0
  %1418 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 0
  %1419 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 0
  store float %1404, float* %1417, align 4
  store float %1405, float* %1418, align 4
  store float %1406, float* %1419, align 4
  %1420 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 1
  %1421 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 1
  %1422 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 1
  store float %1409, float* %1420, align 4
  store float %1410, float* %1421, align 4
  store float %1411, float* %1422, align 4
  %1423 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 2
  %1424 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 2
  %1425 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 2
  store float %1414, float* %1423, align 4
  store float %1415, float* %1424, align 4
  store float %1416, float* %1425, align 4
  %1426 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call float @dx.op.unary.f32(i32 6, float %1427)  ; FAbs(value)
  %1429 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1430 = call float @dx.op.unary.f32(i32 6, float %1429)  ; FAbs(value)
  %1431 = fadd fast float %1430, %1428
  %1432 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1433 = call float @dx.op.unary.f32(i32 6, float %1432)  ; FAbs(value)
  %1434 = fadd fast float %1431, %1433
  %1435 = fsub fast float %1426, %1434
  %1436 = fadd fast float %1434, %1426
  %1437 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = call float @dx.op.unary.f32(i32 6, float %1438)  ; FAbs(value)
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.unary.f32(i32 6, float %1440)  ; FAbs(value)
  %1442 = fadd fast float %1441, %1439
  %1443 = fsub fast float %1437, %1442
  %1444 = fadd fast float %1442, %1437
  %1445 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1446 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1447 = call float @dx.op.unary.f32(i32 6, float %1446)  ; FAbs(value)
  %1448 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1404, float %1405, float %1406)  ; Dot3(ax,ay,az,bx,by,bz)
  %1449 = call float @dx.op.unary.f32(i32 6, float %1448)  ; FAbs(value)
  %1450 = fadd fast float %1449, %1447
  %1451 = fsub fast float %1445, %1450
  %1452 = fadd fast float %1450, %1445
  %1453 = fcmp fast olt float %1451, %1443
  %1454 = select i1 %1453, float %1451, float %1443
  %1455 = fcmp fast ogt float %1452, %1444
  %1456 = select i1 %1455, float %1452, float %1444
  %1457 = fcmp fast olt float %1456, %1435
  %1458 = fcmp fast olt float %1436, %1454
  %1459 = or i1 %1457, %1458
  br i1 %1459, label %2296, label %1460, !dx.controlflow.hints !37

; <label>:1460                                    ; preds = %1396
  %1461 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = call float @dx.op.unary.f32(i32 6, float %1462)  ; FAbs(value)
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.unary.f32(i32 6, float %1464)  ; FAbs(value)
  %1466 = fadd fast float %1465, %1463
  %1467 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1468 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1469 = fadd fast float %1466, %1468
  %1470 = fsub fast float %1461, %1469
  %1471 = fadd fast float %1469, %1461
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1475 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1476 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1477 = fadd fast float %1476, %1474
  %1478 = fsub fast float %1472, %1477
  %1479 = fadd fast float %1477, %1472
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = call float @dx.op.unary.f32(i32 6, float %1481)  ; FAbs(value)
  %1483 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1409, float %1410, float %1411)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = call float @dx.op.unary.f32(i32 6, float %1483)  ; FAbs(value)
  %1485 = fadd fast float %1484, %1482
  %1486 = fsub fast float %1480, %1485
  %1487 = fadd fast float %1485, %1480
  %1488 = fcmp fast olt float %1486, %1478
  %1489 = select i1 %1488, float %1486, float %1478
  %1490 = fcmp fast ogt float %1487, %1479
  %1491 = select i1 %1490, float %1487, float %1479
  %1492 = fcmp fast olt float %1491, %1470
  %1493 = fcmp fast olt float %1471, %1489
  %1494 = or i1 %1492, %1493
  br i1 %1494, label %2296, label %1495, !dx.controlflow.hints !37

; <label>:1495                                    ; preds = %1460
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1499 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1500 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1501 = fadd fast float %1500, %1498
  %1502 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1503 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1504 = fadd fast float %1501, %1503
  %1505 = fsub fast float %1496, %1504
  %1506 = fadd fast float %1504, %1496
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = call float @dx.op.unary.f32(i32 6, float %1508)  ; FAbs(value)
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = call float @dx.op.unary.f32(i32 6, float %1510)  ; FAbs(value)
  %1512 = fadd fast float %1511, %1509
  %1513 = fsub fast float %1507, %1512
  %1514 = fadd fast float %1512, %1507
  %1515 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = call float @dx.op.unary.f32(i32 6, float %1516)  ; FAbs(value)
  %1518 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1414, float %1415, float %1416)  ; Dot3(ax,ay,az,bx,by,bz)
  %1519 = call float @dx.op.unary.f32(i32 6, float %1518)  ; FAbs(value)
  %1520 = fadd fast float %1519, %1517
  %1521 = fsub fast float %1515, %1520
  %1522 = fadd fast float %1520, %1515
  %1523 = fcmp fast olt float %1521, %1513
  %1524 = select i1 %1523, float %1521, float %1513
  %1525 = fcmp fast ogt float %1522, %1514
  %1526 = select i1 %1525, float %1522, float %1514
  %1527 = fcmp fast olt float %1526, %1505
  %1528 = fcmp fast olt float %1506, %1524
  %1529 = or i1 %1527, %1528
  br i1 %1529, label %2296, label %1530, !dx.controlflow.hints !37

; <label>:1530                                    ; preds = %1495
  %1531 = fcmp fast ole float %1435, %1454
  %1532 = fcmp fast ole float %1456, %1436
  %1533 = and i1 %1531, %1532
  %1534 = zext i1 %1533 to i32
  %1535 = shl nuw nsw i32 %1534, 1
  %1536 = fcmp fast ole float %1470, %1489
  %1537 = fcmp fast ole float %1491, %1471
  %1538 = and i1 %1536, %1537
  %1539 = zext i1 %1538 to i32
  %1540 = or i32 %1539, %1535
  %1541 = shl nuw nsw i32 %1540, 1
  %1542 = fcmp fast ole float %1505, %1524
  %1543 = fcmp fast ole float %1526, %1506
  %1544 = and i1 %1542, %1543
  %1545 = zext i1 %1544 to i32
  %1546 = or i32 %1545, %1541
  %1547 = icmp eq i32 %1546, 7
  br i1 %1547, label %2296, label %1548, !dx.controlflow.hints !38

; <label>:1548                                    ; preds = %1530
  %1549 = fsub fast float %1399, %1360
  %1550 = fsub fast float %1400, %1361
  %1551 = fsub fast float %1401, %1362
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1554 = call float @dx.op.unary.f32(i32 6, float %1553)  ; FAbs(value)
  %1555 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1556 = call float @dx.op.unary.f32(i32 6, float %1555)  ; FAbs(value)
  %1557 = fadd fast float %1556, %1554
  %1558 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1559 = call float @dx.op.unary.f32(i32 6, float %1558)  ; FAbs(value)
  %1560 = fadd fast float %1557, %1559
  %1561 = fsub fast float %1552, %1560
  %1562 = fadd fast float %1560, %1552
  %1563 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = call float @dx.op.unary.f32(i32 6, float %1564)  ; FAbs(value)
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.unary.f32(i32 6, float %1566)  ; FAbs(value)
  %1568 = fadd fast float %1567, %1565
  %1569 = fsub fast float %1563, %1568
  %1570 = fadd fast float %1568, %1563
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1573 = call float @dx.op.unary.f32(i32 6, float %1572)  ; FAbs(value)
  %1574 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1575 = call float @dx.op.unary.f32(i32 6, float %1574)  ; FAbs(value)
  %1576 = fadd fast float %1575, %1573
  %1577 = fsub fast float %1571, %1576
  %1578 = fadd fast float %1576, %1571
  %1579 = fcmp fast olt float %1577, %1569
  %1580 = select i1 %1579, float %1577, float %1569
  %1581 = fcmp fast ogt float %1578, %1570
  %1582 = select i1 %1581, float %1578, float %1570
  %1583 = fcmp fast olt float %1582, %1561
  %1584 = fcmp fast olt float %1562, %1580
  %1585 = or i1 %1583, %1584
  br i1 %1585, label %2296, label %1586, !dx.controlflow.hints !39

; <label>:1586                                    ; preds = %1548
  %1587 = fmul fast float %1377, %1370
  %1588 = fmul fast float %1376, %1371
  %1589 = fsub fast float %1587, %1588
  %1590 = fmul fast float %1375, %1371
  %1591 = fmul fast float %1377, %1369
  %1592 = fsub fast float %1590, %1591
  %1593 = fmul fast float %1376, %1369
  %1594 = fmul fast float %1375, %1370
  %1595 = fsub fast float %1593, %1594
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = call float @dx.op.unary.f32(i32 6, float %1597)  ; FAbs(value)
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = call float @dx.op.unary.f32(i32 6, float %1599)  ; FAbs(value)
  %1601 = fadd fast float %1600, %1598
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = call float @dx.op.unary.f32(i32 6, float %1602)  ; FAbs(value)
  %1604 = fadd fast float %1601, %1603
  %1605 = fsub fast float %1596, %1604
  %1606 = fadd fast float %1604, %1596
  %1607 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1608 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1609 = call float @dx.op.unary.f32(i32 6, float %1608)  ; FAbs(value)
  %1610 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1611 = call float @dx.op.unary.f32(i32 6, float %1610)  ; FAbs(value)
  %1612 = fadd fast float %1611, %1609
  %1613 = fsub fast float %1607, %1612
  %1614 = fadd fast float %1612, %1607
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = call float @dx.op.unary.f32(i32 6, float %1616)  ; FAbs(value)
  %1618 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1589, float %1592, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %1619 = call float @dx.op.unary.f32(i32 6, float %1618)  ; FAbs(value)
  %1620 = fadd fast float %1619, %1617
  %1621 = fsub fast float %1615, %1620
  %1622 = fadd fast float %1620, %1615
  %1623 = fcmp fast olt float %1621, %1613
  %1624 = select i1 %1623, float %1621, float %1613
  %1625 = fcmp fast ogt float %1622, %1614
  %1626 = select i1 %1625, float %1622, float %1614
  %1627 = fcmp fast olt float %1626, %1605
  %1628 = fcmp fast olt float %1606, %1624
  %1629 = or i1 %1627, %1628
  br i1 %1629, label %2296, label %1630, !dx.controlflow.hints !40

; <label>:1630                                    ; preds = %1586
  %1631 = fsub fast float %1364, %1372
  %1632 = fadd fast float %1631, %1357
  %1633 = fsub fast float %1366, %1373
  %1634 = fadd fast float %1633, %1358
  %1635 = fsub fast float %1368, %1374
  %1636 = fadd fast float %1635, %1359
  %1637 = fmul fast float %1329, %95
  %1638 = fmul fast float %1632, %1637
  %1639 = fmul fast float %1329, %95
  %1640 = fmul fast float %1634, %1639
  %1641 = fmul fast float %1329, %95
  %1642 = fmul fast float %1636, %1641
  %1643 = fmul fast float %1642, %1370
  %1644 = fmul fast float %1640, %1371
  %1645 = fsub fast float %1643, %1644
  %1646 = fmul fast float %1638, %1371
  %1647 = fmul fast float %1642, %1369
  %1648 = fsub fast float %1646, %1647
  %1649 = fmul fast float %1640, %1369
  %1650 = fmul fast float %1638, %1370
  %1651 = fsub fast float %1649, %1650
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1654 = call float @dx.op.unary.f32(i32 6, float %1653)  ; FAbs(value)
  %1655 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = call float @dx.op.unary.f32(i32 6, float %1655)  ; FAbs(value)
  %1657 = fadd fast float %1656, %1654
  %1658 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1659 = call float @dx.op.unary.f32(i32 6, float %1658)  ; FAbs(value)
  %1660 = fadd fast float %1657, %1659
  %1661 = fsub fast float %1652, %1660
  %1662 = fadd fast float %1660, %1652
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1665 = call float @dx.op.unary.f32(i32 6, float %1664)  ; FAbs(value)
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1667 = call float @dx.op.unary.f32(i32 6, float %1666)  ; FAbs(value)
  %1668 = fadd fast float %1667, %1665
  %1669 = fsub fast float %1663, %1668
  %1670 = fadd fast float %1668, %1663
  %1671 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = call float @dx.op.unary.f32(i32 6, float %1672)  ; FAbs(value)
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1645, float %1648, float %1651)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = call float @dx.op.unary.f32(i32 6, float %1674)  ; FAbs(value)
  %1676 = fadd fast float %1675, %1673
  %1677 = fsub fast float %1671, %1676
  %1678 = fadd fast float %1676, %1671
  %1679 = fcmp fast olt float %1677, %1669
  %1680 = select i1 %1679, float %1677, float %1669
  %1681 = fcmp fast ogt float %1678, %1670
  %1682 = select i1 %1681, float %1678, float %1670
  %1683 = fcmp fast olt float %1682, %1661
  %1684 = fcmp fast olt float %1662, %1680
  %1685 = or i1 %1683, %1684
  br i1 %1685, label %2296, label %1686, !dx.controlflow.hints !41

; <label>:1686                                    ; preds = %1630
  %1687 = fmul fast float %1642, %1376
  %1688 = fmul fast float %1640, %1377
  %1689 = fsub fast float %1687, %1688
  %1690 = fmul fast float %1638, %1377
  %1691 = fmul fast float %1642, %1375
  %1692 = fsub fast float %1690, %1691
  %1693 = fmul fast float %1640, %1375
  %1694 = fmul fast float %1638, %1376
  %1695 = fsub fast float %1693, %1694
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1698 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1699 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1700 = call float @dx.op.unary.f32(i32 6, float %1699)  ; FAbs(value)
  %1701 = fadd fast float %1700, %1698
  %1702 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1703 = call float @dx.op.unary.f32(i32 6, float %1702)  ; FAbs(value)
  %1704 = fadd fast float %1701, %1703
  %1705 = fsub fast float %1696, %1704
  %1706 = fadd fast float %1704, %1696
  %1707 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1708 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1709 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1710 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1711 = call float @dx.op.unary.f32(i32 6, float %1710)  ; FAbs(value)
  %1712 = fadd fast float %1711, %1709
  %1713 = fsub fast float %1707, %1712
  %1714 = fadd fast float %1712, %1707
  %1715 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1716 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1717 = call float @dx.op.unary.f32(i32 6, float %1716)  ; FAbs(value)
  %1718 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1689, float %1692, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1719 = call float @dx.op.unary.f32(i32 6, float %1718)  ; FAbs(value)
  %1720 = fadd fast float %1719, %1717
  %1721 = fsub fast float %1715, %1720
  %1722 = fadd fast float %1720, %1715
  %1723 = fcmp fast olt float %1721, %1713
  %1724 = select i1 %1723, float %1721, float %1713
  %1725 = fcmp fast ogt float %1722, %1714
  %1726 = select i1 %1725, float %1722, float %1714
  %1727 = fcmp fast olt float %1726, %1705
  %1728 = fcmp fast olt float %1706, %1724
  %1729 = or i1 %1727, %1728
  br i1 %1729, label %2296, label %1730, !dx.controlflow.hints !42

; <label>:1730                                    ; preds = %1686
  %1731 = fmul fast float %1318, -2.000000e+00
  %1732 = fmul fast float %1731, %1337
  %1733 = fmul fast float %1732, %1331
  %1734 = fmul fast float %1731, %1338
  %1735 = fmul fast float %1734, %1331
  %1736 = fmul fast float %1731, %1339
  %1737 = fmul fast float %1736, %1331
  br label %1738

; <label>:1738                                    ; preds = %1789, %1730
  %1739 = phi float [ %1406, %1730 ], [ %1795, %1789 ]
  %1740 = phi float [ %1405, %1730 ], [ %1793, %1789 ]
  %1741 = phi float [ %1404, %1730 ], [ %1791, %1789 ]
  %1742 = phi i32 [ 0, %1730 ], [ %1787, %1789 ]
  %1743 = fmul fast float %1739, %1735
  %1744 = fmul fast float %1740, %1737
  %1745 = fsub fast float %1743, %1744
  %1746 = fmul fast float %1741, %1737
  %1747 = fmul fast float %1739, %1733
  %1748 = fsub fast float %1746, %1747
  %1749 = fmul fast float %1740, %1733
  %1750 = fmul fast float %1741, %1735
  %1751 = fsub fast float %1749, %1750
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1754 = call float @dx.op.unary.f32(i32 6, float %1753)  ; FAbs(value)
  %1755 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1756 = call float @dx.op.unary.f32(i32 6, float %1755)  ; FAbs(value)
  %1757 = fadd fast float %1756, %1754
  %1758 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = call float @dx.op.unary.f32(i32 6, float %1758)  ; FAbs(value)
  %1760 = fadd fast float %1757, %1759
  %1761 = fsub fast float %1752, %1760
  %1762 = fadd fast float %1760, %1752
  %1763 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1764 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1765 = call float @dx.op.unary.f32(i32 6, float %1764)  ; FAbs(value)
  %1766 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1767 = call float @dx.op.unary.f32(i32 6, float %1766)  ; FAbs(value)
  %1768 = fadd fast float %1767, %1765
  %1769 = fsub fast float %1763, %1768
  %1770 = fadd fast float %1768, %1763
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = call float @dx.op.unary.f32(i32 6, float %1772)  ; FAbs(value)
  %1774 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1745, float %1748, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1775 = call float @dx.op.unary.f32(i32 6, float %1774)  ; FAbs(value)
  %1776 = fadd fast float %1775, %1773
  %1777 = fsub fast float %1771, %1776
  %1778 = fadd fast float %1776, %1771
  %1779 = fcmp fast olt float %1777, %1769
  %1780 = select i1 %1779, float %1777, float %1769
  %1781 = fcmp fast ogt float %1778, %1770
  %1782 = select i1 %1781, float %1778, float %1770
  %1783 = fcmp fast olt float %1782, %1761
  %1784 = fcmp fast olt float %1762, %1780
  %1785 = or i1 %1783, %1784
  br i1 %1785, label %1796, label %1786, !dx.controlflow.hints !43

; <label>:1786                                    ; preds = %1738
  %1787 = add nuw nsw i32 %1742, 1
  %1788 = icmp ult i32 %1787, 3
  br i1 %1788, label %1789, label %1796, !llvm.loop !44

; <label>:1789                                    ; preds = %1786
  %1790 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1787
  %1791 = load float, float* %1790, align 4
  %1792 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %1787
  %1793 = load float, float* %1792, align 4
  %1794 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %1787
  %1795 = load float, float* %1794, align 4
  br label %1738

; <label>:1796                                    ; preds = %1786, %1738
  %1797 = phi i1 [ true, %1738 ], [ false, %1786 ]
  br i1 %1797, label %2296, label %1798, !dx.controlflow.hints !46

; <label>:1798                                    ; preds = %1796
  %1799 = fmul fast float %1331, 2.000000e+00
  %1800 = fmul fast float %1372, %1799
  %1801 = fsub fast float -0.000000e+00, %1800
  %1802 = fmul fast float %1373, %1799
  %1803 = fsub fast float -0.000000e+00, %1802
  %1804 = fmul fast float %1374, %1799
  %1805 = fsub fast float -0.000000e+00, %1804
  br label %1806

; <label>:1806                                    ; preds = %1857, %1798
  %1807 = phi float [ %1406, %1798 ], [ %1863, %1857 ]
  %1808 = phi float [ %1405, %1798 ], [ %1861, %1857 ]
  %1809 = phi float [ %1404, %1798 ], [ %1859, %1857 ]
  %1810 = phi i32 [ 0, %1798 ], [ %1855, %1857 ]
  %1811 = fmul fast float %1807, %1803
  %1812 = fmul fast float %1808, %1805
  %1813 = fsub fast float %1811, %1812
  %1814 = fmul fast float %1809, %1805
  %1815 = fmul fast float %1807, %1801
  %1816 = fsub fast float %1814, %1815
  %1817 = fmul fast float %1808, %1801
  %1818 = fmul fast float %1809, %1803
  %1819 = fsub fast float %1817, %1818
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = call float @dx.op.unary.f32(i32 6, float %1821)  ; FAbs(value)
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 6, float %1823)  ; FAbs(value)
  %1825 = fadd fast float %1824, %1822
  %1826 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1827 = call float @dx.op.unary.f32(i32 6, float %1826)  ; FAbs(value)
  %1828 = fadd fast float %1825, %1827
  %1829 = fsub fast float %1820, %1828
  %1830 = fadd fast float %1828, %1820
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1833 = call float @dx.op.unary.f32(i32 6, float %1832)  ; FAbs(value)
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.unary.f32(i32 6, float %1834)  ; FAbs(value)
  %1836 = fadd fast float %1835, %1833
  %1837 = fsub fast float %1831, %1836
  %1838 = fadd fast float %1836, %1831
  %1839 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1840 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1841 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1842 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1813, float %1816, float %1819)  ; Dot3(ax,ay,az,bx,by,bz)
  %1843 = call float @dx.op.unary.f32(i32 6, float %1842)  ; FAbs(value)
  %1844 = fadd fast float %1843, %1841
  %1845 = fsub fast float %1839, %1844
  %1846 = fadd fast float %1844, %1839
  %1847 = fcmp fast olt float %1845, %1837
  %1848 = select i1 %1847, float %1845, float %1837
  %1849 = fcmp fast ogt float %1846, %1838
  %1850 = select i1 %1849, float %1846, float %1838
  %1851 = fcmp fast olt float %1850, %1829
  %1852 = fcmp fast olt float %1830, %1848
  %1853 = or i1 %1851, %1852
  br i1 %1853, label %1864, label %1854, !dx.controlflow.hints !43

; <label>:1854                                    ; preds = %1806
  %1855 = add nuw nsw i32 %1810, 1
  %1856 = icmp ult i32 %1855, 3
  br i1 %1856, label %1857, label %1864, !llvm.loop !44

; <label>:1857                                    ; preds = %1854
  %1858 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1855
  %1859 = load float, float* %1858, align 4
  %1860 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %1855
  %1861 = load float, float* %1860, align 4
  %1862 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %1855
  %1863 = load float, float* %1862, align 4
  br label %1806

; <label>:1864                                    ; preds = %1854, %1806
  %1865 = phi i1 [ true, %1806 ], [ false, %1854 ]
  br i1 %1865, label %2296, label %1866, !dx.controlflow.hints !47

; <label>:1866                                    ; preds = %1864
  %1867 = fmul fast float %95, %1329
  %1868 = fmul fast float %1867, %1632
  %1869 = fsub fast float -0.000000e+00, %1868
  %1870 = fmul fast float %95, %1329
  %1871 = fmul fast float %1870, %1634
  %1872 = fsub fast float -0.000000e+00, %1871
  %1873 = fmul fast float %95, %1329
  %1874 = fmul fast float %1873, %1636
  %1875 = fsub fast float -0.000000e+00, %1874
  br label %1876

; <label>:1876                                    ; preds = %1927, %1866
  %1877 = phi float [ %1406, %1866 ], [ %1933, %1927 ]
  %1878 = phi float [ %1405, %1866 ], [ %1931, %1927 ]
  %1879 = phi float [ %1404, %1866 ], [ %1929, %1927 ]
  %1880 = phi i32 [ 0, %1866 ], [ %1925, %1927 ]
  %1881 = fmul fast float %1877, %1872
  %1882 = fmul fast float %1878, %1875
  %1883 = fsub fast float %1881, %1882
  %1884 = fmul fast float %1879, %1875
  %1885 = fmul fast float %1877, %1869
  %1886 = fsub fast float %1884, %1885
  %1887 = fmul fast float %1878, %1869
  %1888 = fmul fast float %1879, %1872
  %1889 = fsub fast float %1887, %1888
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call float @dx.op.unary.f32(i32 6, float %1891)  ; FAbs(value)
  %1893 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1894 = call float @dx.op.unary.f32(i32 6, float %1893)  ; FAbs(value)
  %1895 = fadd fast float %1894, %1892
  %1896 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1897 = call float @dx.op.unary.f32(i32 6, float %1896)  ; FAbs(value)
  %1898 = fadd fast float %1895, %1897
  %1899 = fsub fast float %1890, %1898
  %1900 = fadd fast float %1898, %1890
  %1901 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = call float @dx.op.unary.f32(i32 6, float %1902)  ; FAbs(value)
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = call float @dx.op.unary.f32(i32 6, float %1904)  ; FAbs(value)
  %1906 = fadd fast float %1905, %1903
  %1907 = fsub fast float %1901, %1906
  %1908 = fadd fast float %1906, %1901
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1911 = call float @dx.op.unary.f32(i32 6, float %1910)  ; FAbs(value)
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1883, float %1886, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1914 = fadd fast float %1913, %1911
  %1915 = fsub fast float %1909, %1914
  %1916 = fadd fast float %1914, %1909
  %1917 = fcmp fast olt float %1915, %1907
  %1918 = select i1 %1917, float %1915, float %1907
  %1919 = fcmp fast ogt float %1916, %1908
  %1920 = select i1 %1919, float %1916, float %1908
  %1921 = fcmp fast olt float %1920, %1899
  %1922 = fcmp fast olt float %1900, %1918
  %1923 = or i1 %1921, %1922
  br i1 %1923, label %1934, label %1924, !dx.controlflow.hints !43

; <label>:1924                                    ; preds = %1876
  %1925 = add nuw nsw i32 %1880, 1
  %1926 = icmp ult i32 %1925, 3
  br i1 %1926, label %1927, label %1934, !llvm.loop !44

; <label>:1927                                    ; preds = %1924
  %1928 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1925
  %1929 = load float, float* %1928, align 4
  %1930 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %1925
  %1931 = load float, float* %1930, align 4
  %1932 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %1925
  %1933 = load float, float* %1932, align 4
  br label %1876

; <label>:1934                                    ; preds = %1924, %1876
  %1935 = phi i1 [ true, %1876 ], [ false, %1924 ]
  br i1 %1935, label %2296, label %1936, !dx.controlflow.hints !48

; <label>:1936                                    ; preds = %1934
  %1937 = fsub fast float %1399, %1378
  %1938 = fsub fast float %1400, %1379
  %1939 = fsub fast float %1401, %1380
  %1940 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = call float @dx.op.unary.f32(i32 6, float %1941)  ; FAbs(value)
  %1943 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1944 = call float @dx.op.unary.f32(i32 6, float %1943)  ; FAbs(value)
  %1945 = fadd fast float %1944, %1942
  %1946 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1947 = call float @dx.op.unary.f32(i32 6, float %1946)  ; FAbs(value)
  %1948 = fadd fast float %1945, %1947
  %1949 = fsub fast float %1940, %1948
  %1950 = fadd fast float %1948, %1940
  %1951 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1952 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1953 = call float @dx.op.unary.f32(i32 6, float %1952)  ; FAbs(value)
  %1954 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1955 = call float @dx.op.unary.f32(i32 6, float %1954)  ; FAbs(value)
  %1956 = fadd fast float %1955, %1953
  %1957 = fsub fast float %1951, %1956
  %1958 = fadd fast float %1956, %1951
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = call float @dx.op.unary.f32(i32 6, float %1960)  ; FAbs(value)
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1937, float %1938, float %1939)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.unary.f32(i32 6, float %1962)  ; FAbs(value)
  %1964 = fadd fast float %1963, %1961
  %1965 = fsub fast float %1959, %1964
  %1966 = fadd fast float %1964, %1959
  %1967 = fcmp fast olt float %1965, %1957
  %1968 = select i1 %1967, float %1965, float %1957
  %1969 = fcmp fast ogt float %1966, %1958
  %1970 = select i1 %1969, float %1966, float %1958
  %1971 = fcmp fast olt float %1970, %1949
  %1972 = fcmp fast olt float %1950, %1968
  %1973 = or i1 %1971, %1972
  br i1 %1973, label %2296, label %1974, !dx.controlflow.hints !49

; <label>:1974                                    ; preds = %1936
  %1975 = fadd fast float %1372, %1363
  %1976 = fadd fast float %1975, %1357
  %1977 = fadd fast float %1373, %1365
  %1978 = fadd fast float %1977, %1358
  %1979 = fadd fast float %1374, %1367
  %1980 = fadd fast float %1979, %1359
  %1981 = fmul fast float %1329, %95
  %1982 = fmul fast float %1976, %1981
  %1983 = fmul fast float %1329, %95
  %1984 = fmul fast float %1978, %1983
  %1985 = fmul fast float %1329, %95
  %1986 = fmul fast float %1980, %1985
  %1987 = fmul fast float %1986, %1370
  %1988 = fmul fast float %1984, %1371
  %1989 = fsub fast float %1987, %1988
  %1990 = fmul fast float %1982, %1371
  %1991 = fmul fast float %1986, %1369
  %1992 = fsub fast float %1990, %1991
  %1993 = fmul fast float %1984, %1369
  %1994 = fmul fast float %1982, %1370
  %1995 = fsub fast float %1993, %1994
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %1998 = call float @dx.op.unary.f32(i32 6, float %1997)  ; FAbs(value)
  %1999 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2000 = call float @dx.op.unary.f32(i32 6, float %1999)  ; FAbs(value)
  %2001 = fadd fast float %2000, %1998
  %2002 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2003 = call float @dx.op.unary.f32(i32 6, float %2002)  ; FAbs(value)
  %2004 = fadd fast float %2001, %2003
  %2005 = fsub fast float %1996, %2004
  %2006 = fadd fast float %2004, %1996
  %2007 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2008 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2009 = call float @dx.op.unary.f32(i32 6, float %2008)  ; FAbs(value)
  %2010 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2012 = fadd fast float %2011, %2009
  %2013 = fsub fast float %2007, %2012
  %2014 = fadd fast float %2012, %2007
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = call float @dx.op.unary.f32(i32 6, float %2016)  ; FAbs(value)
  %2018 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1989, float %1992, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %2019 = call float @dx.op.unary.f32(i32 6, float %2018)  ; FAbs(value)
  %2020 = fadd fast float %2019, %2017
  %2021 = fsub fast float %2015, %2020
  %2022 = fadd fast float %2020, %2015
  %2023 = fcmp fast olt float %2021, %2013
  %2024 = select i1 %2023, float %2021, float %2013
  %2025 = fcmp fast ogt float %2022, %2014
  %2026 = select i1 %2025, float %2022, float %2014
  %2027 = fcmp fast olt float %2026, %2005
  %2028 = fcmp fast olt float %2006, %2024
  %2029 = or i1 %2027, %2028
  br i1 %2029, label %2296, label %2030, !dx.controlflow.hints !50

; <label>:2030                                    ; preds = %1974
  %2031 = fmul fast float %1986, %1376
  %2032 = fmul fast float %1984, %1377
  %2033 = fsub fast float %2031, %2032
  %2034 = fmul fast float %1982, %1377
  %2035 = fmul fast float %1986, %1375
  %2036 = fsub fast float %2034, %2035
  %2037 = fmul fast float %1984, %1375
  %2038 = fmul fast float %1982, %1376
  %2039 = fsub fast float %2037, %2038
  %2040 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2042 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2043 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call float @dx.op.unary.f32(i32 6, float %2043)  ; FAbs(value)
  %2045 = fadd fast float %2044, %2042
  %2046 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = call float @dx.op.unary.f32(i32 6, float %2046)  ; FAbs(value)
  %2048 = fadd fast float %2045, %2047
  %2049 = fsub fast float %2040, %2048
  %2050 = fadd fast float %2048, %2040
  %2051 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2052 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2053 = call float @dx.op.unary.f32(i32 6, float %2052)  ; FAbs(value)
  %2054 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2055 = call float @dx.op.unary.f32(i32 6, float %2054)  ; FAbs(value)
  %2056 = fadd fast float %2055, %2053
  %2057 = fsub fast float %2051, %2056
  %2058 = fadd fast float %2056, %2051
  %2059 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2060 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = call float @dx.op.unary.f32(i32 6, float %2060)  ; FAbs(value)
  %2062 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2033, float %2036, float %2039)  ; Dot3(ax,ay,az,bx,by,bz)
  %2063 = call float @dx.op.unary.f32(i32 6, float %2062)  ; FAbs(value)
  %2064 = fadd fast float %2063, %2061
  %2065 = fsub fast float %2059, %2064
  %2066 = fadd fast float %2064, %2059
  %2067 = fcmp fast olt float %2065, %2057
  %2068 = select i1 %2067, float %2065, float %2057
  %2069 = fcmp fast ogt float %2066, %2058
  %2070 = select i1 %2069, float %2066, float %2058
  %2071 = fcmp fast olt float %2070, %2049
  %2072 = fcmp fast olt float %2050, %2068
  %2073 = or i1 %2071, %2072
  br i1 %2073, label %2296, label %2074, !dx.controlflow.hints !51

; <label>:2074                                    ; preds = %2030
  %2075 = fmul fast float %95, %1329
  %2076 = fmul fast float %2075, %1976
  %2077 = fsub fast float -0.000000e+00, %2076
  %2078 = fmul fast float %95, %1329
  %2079 = fmul fast float %2078, %1978
  %2080 = fsub fast float -0.000000e+00, %2079
  %2081 = fmul fast float %95, %1329
  %2082 = fmul fast float %2081, %1980
  %2083 = fsub fast float -0.000000e+00, %2082
  br label %2084

; <label>:2084                                    ; preds = %2135, %2074
  %2085 = phi float [ %1406, %2074 ], [ %2141, %2135 ]
  %2086 = phi float [ %1405, %2074 ], [ %2139, %2135 ]
  %2087 = phi float [ %1404, %2074 ], [ %2137, %2135 ]
  %2088 = phi i32 [ 0, %2074 ], [ %2133, %2135 ]
  %2089 = fmul fast float %2085, %2080
  %2090 = fmul fast float %2086, %2083
  %2091 = fsub fast float %2089, %2090
  %2092 = fmul fast float %2087, %2083
  %2093 = fmul fast float %2085, %2077
  %2094 = fsub fast float %2092, %2093
  %2095 = fmul fast float %2086, %2077
  %2096 = fmul fast float %2087, %2080
  %2097 = fsub fast float %2095, %2096
  %2098 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2099 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = call float @dx.op.unary.f32(i32 6, float %2099)  ; FAbs(value)
  %2101 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2102 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2103 = fadd fast float %2102, %2100
  %2104 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2105 = call float @dx.op.unary.f32(i32 6, float %2104)  ; FAbs(value)
  %2106 = fadd fast float %2103, %2105
  %2107 = fsub fast float %2098, %2106
  %2108 = fadd fast float %2106, %2098
  %2109 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2110 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2111 = call float @dx.op.unary.f32(i32 6, float %2110)  ; FAbs(value)
  %2112 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2113 = call float @dx.op.unary.f32(i32 6, float %2112)  ; FAbs(value)
  %2114 = fadd fast float %2113, %2111
  %2115 = fsub fast float %2109, %2114
  %2116 = fadd fast float %2114, %2109
  %2117 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2119 = call float @dx.op.unary.f32(i32 6, float %2118)  ; FAbs(value)
  %2120 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2091, float %2094, float %2097)  ; Dot3(ax,ay,az,bx,by,bz)
  %2121 = call float @dx.op.unary.f32(i32 6, float %2120)  ; FAbs(value)
  %2122 = fadd fast float %2121, %2119
  %2123 = fsub fast float %2117, %2122
  %2124 = fadd fast float %2122, %2117
  %2125 = fcmp fast olt float %2123, %2115
  %2126 = select i1 %2125, float %2123, float %2115
  %2127 = fcmp fast ogt float %2124, %2116
  %2128 = select i1 %2127, float %2124, float %2116
  %2129 = fcmp fast olt float %2128, %2107
  %2130 = fcmp fast olt float %2108, %2126
  %2131 = or i1 %2129, %2130
  br i1 %2131, label %2142, label %2132, !dx.controlflow.hints !43

; <label>:2132                                    ; preds = %2084
  %2133 = add nuw nsw i32 %2088, 1
  %2134 = icmp ult i32 %2133, 3
  br i1 %2134, label %2135, label %2142, !llvm.loop !44

; <label>:2135                                    ; preds = %2132
  %2136 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %2133
  %2137 = load float, float* %2136, align 4
  %2138 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %2133
  %2139 = load float, float* %2138, align 4
  %2140 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %2133
  %2141 = load float, float* %2140, align 4
  br label %2084

; <label>:2142                                    ; preds = %2132, %2084
  %2143 = phi i1 [ true, %2084 ], [ false, %2132 ]
  br i1 %2143, label %2296, label %2144, !dx.controlflow.hints !52

; <label>:2144                                    ; preds = %2142
  %2145 = fsub fast float %1363, %1372
  %2146 = fadd fast float %2145, %1357
  %2147 = fsub fast float %1365, %1373
  %2148 = fadd fast float %2147, %1358
  %2149 = fsub fast float %1367, %1374
  %2150 = fadd fast float %2149, %1359
  %2151 = fmul fast float %95, %1329
  %2152 = fmul fast float %2151, %2146
  %2153 = fsub fast float -0.000000e+00, %2152
  %2154 = fmul fast float %95, %1329
  %2155 = fmul fast float %2154, %2148
  %2156 = fsub fast float -0.000000e+00, %2155
  %2157 = fmul fast float %95, %1329
  %2158 = fmul fast float %2157, %2150
  %2159 = fsub fast float -0.000000e+00, %2158
  br label %2160

; <label>:2160                                    ; preds = %2211, %2144
  %2161 = phi float [ %1406, %2144 ], [ %2217, %2211 ]
  %2162 = phi float [ %1405, %2144 ], [ %2215, %2211 ]
  %2163 = phi float [ %1404, %2144 ], [ %2213, %2211 ]
  %2164 = phi i32 [ 0, %2144 ], [ %2209, %2211 ]
  %2165 = fmul fast float %2161, %2156
  %2166 = fmul fast float %2162, %2159
  %2167 = fsub fast float %2165, %2166
  %2168 = fmul fast float %2163, %2159
  %2169 = fmul fast float %2161, %2153
  %2170 = fsub fast float %2168, %2169
  %2171 = fmul fast float %2162, %2153
  %2172 = fmul fast float %2163, %2156
  %2173 = fsub fast float %2171, %2172
  %2174 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2176 = call float @dx.op.unary.f32(i32 6, float %2175)  ; FAbs(value)
  %2177 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2178 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2179 = fadd fast float %2178, %2176
  %2180 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2181 = call float @dx.op.unary.f32(i32 6, float %2180)  ; FAbs(value)
  %2182 = fadd fast float %2179, %2181
  %2183 = fsub fast float %2174, %2182
  %2184 = fadd fast float %2182, %2174
  %2185 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2186 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2187 = call float @dx.op.unary.f32(i32 6, float %2186)  ; FAbs(value)
  %2188 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2189 = call float @dx.op.unary.f32(i32 6, float %2188)  ; FAbs(value)
  %2190 = fadd fast float %2189, %2187
  %2191 = fsub fast float %2185, %2190
  %2192 = fadd fast float %2190, %2185
  %2193 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2194 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2195 = call float @dx.op.unary.f32(i32 6, float %2194)  ; FAbs(value)
  %2196 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2167, float %2170, float %2173)  ; Dot3(ax,ay,az,bx,by,bz)
  %2197 = call float @dx.op.unary.f32(i32 6, float %2196)  ; FAbs(value)
  %2198 = fadd fast float %2197, %2195
  %2199 = fsub fast float %2193, %2198
  %2200 = fadd fast float %2198, %2193
  %2201 = fcmp fast olt float %2199, %2191
  %2202 = select i1 %2201, float %2199, float %2191
  %2203 = fcmp fast ogt float %2200, %2192
  %2204 = select i1 %2203, float %2200, float %2192
  %2205 = fcmp fast olt float %2204, %2183
  %2206 = fcmp fast olt float %2184, %2202
  %2207 = or i1 %2205, %2206
  br i1 %2207, label %2218, label %2208, !dx.controlflow.hints !43

; <label>:2208                                    ; preds = %2160
  %2209 = add nuw nsw i32 %2164, 1
  %2210 = icmp ult i32 %2209, 3
  br i1 %2210, label %2211, label %2218, !llvm.loop !44

; <label>:2211                                    ; preds = %2208
  %2212 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %2209
  %2213 = load float, float* %2212, align 4
  %2214 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %2209
  %2215 = load float, float* %2214, align 4
  %2216 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %2209
  %2217 = load float, float* %2216, align 4
  br label %2160

; <label>:2218                                    ; preds = %2208, %2160
  %2219 = phi i1 [ true, %2160 ], [ false, %2208 ]
  br i1 %2219, label %2296, label %2220, !dx.controlflow.hints !53

; <label>:2220                                    ; preds = %2218
  %2221 = fsub fast float %1372, %1363
  %2222 = fadd fast float %2221, %1357
  %2223 = fsub fast float %1373, %1365
  %2224 = fadd fast float %2223, %1358
  %2225 = fsub fast float %1374, %1367
  %2226 = fadd fast float %2225, %1359
  %2227 = fmul fast float %95, %1329
  %2228 = fmul fast float %2227, %2222
  %2229 = fsub fast float -0.000000e+00, %2228
  %2230 = fmul fast float %95, %1329
  %2231 = fmul fast float %2230, %2224
  %2232 = fsub fast float -0.000000e+00, %2231
  %2233 = fmul fast float %95, %1329
  %2234 = fmul fast float %2233, %2226
  %2235 = fsub fast float -0.000000e+00, %2234
  br label %2236

; <label>:2236                                    ; preds = %2287, %2220
  %2237 = phi float [ %1406, %2220 ], [ %2293, %2287 ]
  %2238 = phi float [ %1405, %2220 ], [ %2291, %2287 ]
  %2239 = phi float [ %1404, %2220 ], [ %2289, %2287 ]
  %2240 = phi i32 [ 0, %2220 ], [ %2285, %2287 ]
  %2241 = fmul fast float %2237, %2232
  %2242 = fmul fast float %2238, %2235
  %2243 = fsub fast float %2241, %2242
  %2244 = fmul fast float %2239, %2235
  %2245 = fmul fast float %2237, %2229
  %2246 = fsub fast float %2244, %2245
  %2247 = fmul fast float %2238, %2229
  %2248 = fmul fast float %2239, %2232
  %2249 = fsub fast float %2247, %2248
  %2250 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.dot3.f32(i32 55, float %1404, float %1405, float %1406, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2253 = call float @dx.op.dot3.f32(i32 55, float %1409, float %1410, float %1411, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2255 = fadd fast float %2254, %2252
  %2256 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1415, float %1416, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = call float @dx.op.unary.f32(i32 6, float %2256)  ; FAbs(value)
  %2258 = fadd fast float %2255, %2257
  %2259 = fsub fast float %2250, %2258
  %2260 = fadd fast float %2258, %2250
  %2261 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1361, float %1362, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2262 = call float @dx.op.dot3.f32(i32 55, float %1369, float %1370, float %1371, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2263 = call float @dx.op.unary.f32(i32 6, float %2262)  ; FAbs(value)
  %2264 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1376, float %1377, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2265 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2266 = fadd fast float %2265, %2263
  %2267 = fsub fast float %2261, %2266
  %2268 = fadd fast float %2266, %2261
  %2269 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.dot3.f32(i32 55, float %1381, float %1382, float %1383, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2271 = call float @dx.op.unary.f32(i32 6, float %2270)  ; FAbs(value)
  %2272 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2243, float %2246, float %2249)  ; Dot3(ax,ay,az,bx,by,bz)
  %2273 = call float @dx.op.unary.f32(i32 6, float %2272)  ; FAbs(value)
  %2274 = fadd fast float %2273, %2271
  %2275 = fsub fast float %2269, %2274
  %2276 = fadd fast float %2274, %2269
  %2277 = fcmp fast olt float %2275, %2267
  %2278 = select i1 %2277, float %2275, float %2267
  %2279 = fcmp fast ogt float %2276, %2268
  %2280 = select i1 %2279, float %2276, float %2268
  %2281 = fcmp fast olt float %2280, %2259
  %2282 = fcmp fast olt float %2260, %2278
  %2283 = or i1 %2281, %2282
  br i1 %2283, label %2294, label %2284, !dx.controlflow.hints !43

; <label>:2284                                    ; preds = %2236
  %2285 = add nuw nsw i32 %2240, 1
  %2286 = icmp ult i32 %2285, 3
  br i1 %2286, label %2287, label %2294, !llvm.loop !44

; <label>:2287                                    ; preds = %2284
  %2288 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %2285
  %2289 = load float, float* %2288, align 4
  %2290 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %2285
  %2291 = load float, float* %2290, align 4
  %2292 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %2285
  %2293 = load float, float* %2292, align 4
  br label %2236

; <label>:2294                                    ; preds = %2284, %2236
  %2295 = phi i1 [ true, %2284 ], [ false, %2236 ]
  br label %2296

; <label>:2296                                    ; preds = %2294, %2218, %2142, %2030, %1974, %1936, %1934, %1864, %1796, %1686, %1630, %1586, %1548, %1530, %1495, %1460, %1396, %1393, %1258
  %2297 = phi i32 [ %1394, %1393 ], [ 0, %1258 ], [ %1394, %1396 ], [ %1394, %1460 ], [ %1394, %1495 ], [ %1394, %2218 ], [ %1394, %2142 ], [ %1394, %2030 ], [ %1394, %1974 ], [ %1394, %1936 ], [ %1394, %1934 ], [ %1394, %1864 ], [ %1394, %1796 ], [ %1394, %1686 ], [ %1394, %1630 ], [ %1394, %1586 ], [ %1394, %1548 ], [ %1394, %1530 ], [ %1394, %2294 ]
  %2298 = phi i1 [ false, %1393 ], [ false, %1258 ], [ false, %1396 ], [ false, %1460 ], [ false, %1495 ], [ false, %2218 ], [ false, %2142 ], [ false, %2030 ], [ false, %1974 ], [ false, %1936 ], [ false, %1934 ], [ false, %1864 ], [ false, %1796 ], [ false, %1686 ], [ false, %1630 ], [ false, %1586 ], [ false, %1548 ], [ true, %1530 ], [ %2295, %2294 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2299 = and i32 %11, 31
  %2300 = shl i32 1, %2299
  %2301 = select i1 %2298, i32 %2300, i32 0
  %2302 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %2301, i32 addrspace(3)* %2302, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2303 = icmp ult i32 %2299, 16
  br i1 %2303, label %2304, label %2310, !dx.controlflow.hints !71

; <label>:2304                                    ; preds = %2296
  %2305 = add i32 %11, 16
  %2306 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2305
  %2307 = load i32, i32 addrspace(3)* %2306, align 4, !tbaa !31
  %2308 = load i32, i32 addrspace(3)* %2302, align 4, !tbaa !31
  %2309 = or i32 %2308, %2307
  store i32 %2309, i32 addrspace(3)* %2302, align 4, !tbaa !31
  br label %2310

; <label>:2310                                    ; preds = %2304, %2296
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2311 = icmp ult i32 %2299, 8
  br i1 %2311, label %2312, label %2318, !dx.controlflow.hints !72

; <label>:2312                                    ; preds = %2310
  %2313 = add i32 %11, 8
  %2314 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2313
  %2315 = load i32, i32 addrspace(3)* %2314, align 4, !tbaa !31
  %2316 = load i32, i32 addrspace(3)* %2302, align 4, !tbaa !31
  %2317 = or i32 %2316, %2315
  store i32 %2317, i32 addrspace(3)* %2302, align 4, !tbaa !31
  br label %2318

; <label>:2318                                    ; preds = %2312, %2310
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2319 = icmp ult i32 %2299, 4
  br i1 %2319, label %2320, label %2326, !dx.controlflow.hints !73

; <label>:2320                                    ; preds = %2318
  %2321 = add i32 %11, 4
  %2322 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2321
  %2323 = load i32, i32 addrspace(3)* %2322, align 4, !tbaa !31
  %2324 = load i32, i32 addrspace(3)* %2302, align 4, !tbaa !31
  %2325 = or i32 %2324, %2323
  store i32 %2325, i32 addrspace(3)* %2302, align 4, !tbaa !31
  br label %2326

; <label>:2326                                    ; preds = %2320, %2318
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2327 = icmp ult i32 %2299, 2
  br i1 %2327, label %2328, label %2334, !dx.controlflow.hints !74

; <label>:2328                                    ; preds = %2326
  %2329 = add i32 %11, 2
  %2330 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2329
  %2331 = load i32, i32 addrspace(3)* %2330, align 4, !tbaa !31
  %2332 = load i32, i32 addrspace(3)* %2302, align 4, !tbaa !31
  %2333 = or i32 %2332, %2331
  store i32 %2333, i32 addrspace(3)* %2302, align 4, !tbaa !31
  br label %2334

; <label>:2334                                    ; preds = %2328, %2326
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2335 = icmp eq i32 %2299, 0
  br i1 %2335, label %2336, label %2342, !dx.controlflow.hints !75

; <label>:2336                                    ; preds = %2334
  %2337 = add i32 %11, 1
  %2338 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2337
  %2339 = load i32, i32 addrspace(3)* %2338, align 4, !tbaa !31
  %2340 = load i32, i32 addrspace(3)* %2302, align 4, !tbaa !31
  %2341 = or i32 %2340, %2339
  store i32 %2341, i32 addrspace(3)* %2302, align 4, !tbaa !31
  br label %2342

; <label>:2342                                    ; preds = %2336, %2334
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2343 = and i32 %11, -64
  %2344 = or i32 %2343, 32
  %2345 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2343
  %2346 = load i32, i32 addrspace(3)* %2345, align 4, !tbaa !31
  %2347 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2344
  %2348 = load i32, i32 addrspace(3)* %2347, align 4, !tbaa !31
  %2349 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %2346, i32* %2349, align 4
  %2350 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %2348, i32* %2350, align 4
  %2351 = icmp eq i32 %85, 5
  %2352 = and i32 %87, 31
  %2353 = shl i32 1, %2352
  %2354 = add i32 %2353, -1
  %2355 = select i1 %2351, i32 -1, i32 %2354
  %2356 = getelementptr [2 x i32], [2 x i32]* %20, i32 0, i32 %1294
  %2357 = load i32, i32* %2356, align 4, !tbaa !31
  %2358 = and i32 %1293, 31
  %2359 = lshr i32 %2357, %2358
  %2360 = and i32 %2359, %2355
  %2361 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2360)  ; Countbits(value)
  %2362 = icmp eq i32 %11, 0
  br i1 %2362, label %2363, label %2364, !dx.controlflow.hints !76

; <label>:2363                                    ; preds = %2342
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !31
  br label %2364

; <label>:2364                                    ; preds = %2363, %2342
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2365 = icmp eq i32 %1292, 0
  br i1 %2365, label %2366, label %2371, !dx.controlflow.hints !77

; <label>:2366                                    ; preds = %2364
  %2367 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1290
  br i1 %1304, label %2370, label %2368, !dx.controlflow.hints !78

; <label>:2368                                    ; preds = %2366
  %2369 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %2361 seq_cst
  store i32 %2369, i32 addrspace(3)* %2367, align 4, !tbaa !31
  br label %2371

; <label>:2370                                    ; preds = %2366
  store i32 0, i32 addrspace(3)* %2367, align 4, !tbaa !31
  br label %2371

; <label>:2371                                    ; preds = %2370, %2368, %2364
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2362, label %2372, label %2375, !dx.controlflow.hints !79

; <label>:2372                                    ; preds = %2371
  %2373 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !31
  %2374 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1299, i32 0, i32 undef, i32 %2373)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %2374, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !31
  br label %2375

; <label>:2375                                    ; preds = %2372, %2371
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1304, label %2424, label %2376, !dx.controlflow.hints !80

; <label>:2376                                    ; preds = %2375
  %2377 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1290
  %2378 = load i32, i32 addrspace(3)* %2377, align 4, !tbaa !31
  %2379 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !31
  %2380 = add i32 %2379, %2378
  %2381 = and i32 %1292, 31
  %2382 = shl i32 1, %2381
  %2383 = and i32 %2360, %2382
  %2384 = icmp eq i32 %2383, 0
  br i1 %2384, label %2393, label %2385, !dx.controlflow.hints !81

; <label>:2385                                    ; preds = %2376
  %2386 = add i32 %2382, -1
  %2387 = and i32 %2360, %2386
  %2388 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2387)  ; Countbits(value)
  %2389 = add i32 %2388, %2380
  %2390 = icmp ult i32 %2389, %96
  br i1 %2390, label %2391, label %2393, !dx.controlflow.hints !82

; <label>:2391                                    ; preds = %2385
  %2392 = shl i32 %2389, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2392, i32 undef, i32 %2297, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2393

; <label>:2393                                    ; preds = %2391, %2385, %2376
  br i1 %2365, label %2394, label %2424, !dx.controlflow.hints !83

; <label>:2394                                    ; preds = %2393
  %2395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2396 = extractvalue %dx.types.CBufRet.i32 %2395, 0
  %2397 = icmp ugt i32 %2396, %2380
  %2398 = icmp ne i32 %2361, 0
  %2399 = and i1 %2398, %2397
  br i1 %2399, label %2400, label %2424, !dx.controlflow.hints !66

; <label>:2400                                    ; preds = %2394
  %2401 = extractvalue %dx.types.CBufRet.i32 %2395, 2
  %2402 = sub i32 %2396, %2380
  %2403 = call i32 @dx.op.binary.i32(i32 40, i32 %2361, i32 %2402)  ; UMin(a,b)
  %2404 = add i32 %2403, -1
  %2405 = lshr i32 %2404, 1
  %2406 = or i32 %2405, %2404
  %2407 = lshr i32 %2406, 2
  %2408 = or i32 %2407, %2406
  %2409 = lshr i32 %2408, 4
  %2410 = or i32 %2409, %2408
  %2411 = lshr i32 %2410, 8
  %2412 = or i32 %2411, %2410
  %2413 = lshr i32 %2412, 16
  %2414 = or i32 %2413, %2412
  %2415 = add i32 %2414, 1
  %2416 = call i32 @dx.op.binary.i32(i32 40, i32 %2415, i32 64)  ; UMin(a,b)
  %2417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2416)  ; FirstbitLo(value)
  %2418 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %2417, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2419 = lshr i32 %2418, 3
  %2420 = icmp ult i32 %2419, %2401
  br i1 %2420, label %2421, label %2424, !dx.controlflow.hints !67

; <label>:2421                                    ; preds = %2400
  %2422 = mul i32 %2417, %2401
  %2423 = add i32 %2419, %2422
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2423, i32 0, i32 %1289, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2423, i32 4, i32 %2380, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2423, i32 8, i32 %2403, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2424

; <label>:2424                                    ; preds = %2421, %2400, %2394, %2393, %2375, %1255, %1234, %1228, %1225
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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!56 = distinct !{!56, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!57 = distinct !{!57, !56, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}

