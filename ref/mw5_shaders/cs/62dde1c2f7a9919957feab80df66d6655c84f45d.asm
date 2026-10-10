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
; shader hash: 73b6de98f177606533a2b42cf0c87e61
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
  br i1 %90, label %97, label %1238, !dx.controlflow.hints !28

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
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = fadd fast float %159, 5.000000e-01
  %166 = fadd fast float %160, 5.000000e-01
  %167 = fmul fast float %126, 2.000000e+00
  %168 = fmul fast float %167, %165
  %169 = fmul fast float %127, 2.000000e+00
  %170 = fmul fast float %169, %166
  %171 = fadd fast float %168, -1.000000e+00
  %172 = fsub fast float 1.000000e+00, %170
  %173 = fmul fast float %161, %95
  %174 = fsub fast float %157, %158
  %175 = fmul fast float %173, %174
  %176 = fadd fast float %175, %158
  %177 = fadd fast float %161, 1.000000e+00
  %178 = fmul fast float %177, %95
  %179 = fmul fast float %178, %174
  %180 = fadd fast float %179, %158
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %232 = add i32 %107, 63
  %233 = and i32 %232, -64
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %1205, label %235

; <label>:235                                     ; preds = %154
  br label %236

; <label>:236                                     ; preds = %1199, %235
  %237 = phi i32 [ %1201, %1199 ], [ 0, %235 ]
  %238 = phi i32 [ %1202, %1199 ], [ 0, %235 ]
  %239 = add i32 %238, %11
  %240 = icmp ult i32 %239, %107
  %241 = and i1 %134, %240
  br i1 %241, label %242, label %247, !dx.controlflow.hints !36

; <label>:242                                     ; preds = %236
  %243 = add i32 %239, %105
  %244 = shl i32 %243, 2
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  br label %247

; <label>:247                                     ; preds = %242, %236
  %248 = phi i32 [ %246, %242 ], [ -1, %236 ]
  %249 = icmp ult i32 %248, %89
  br i1 %249, label %250, label %1150, !dx.controlflow.hints !37

; <label>:250                                     ; preds = %247
  %251 = mul i32 %248, 48
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = or i32 %251, 12
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %251, 24
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = add i32 %251, 36
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 0
  %272 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 0
  %273 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 0
  store float %258, float* %271, align 4
  store float %259, float* %272, align 4
  store float %260, float* %273, align 4
  %274 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 1
  %275 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 1
  %276 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 1
  store float %263, float* %274, align 4
  store float %264, float* %275, align 4
  store float %265, float* %276, align 4
  %277 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 2
  %278 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 2
  %279 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 2
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
  br i1 %313, label %1150, label %314, !dx.controlflow.hints !38

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
  br i1 %348, label %1150, label %349, !dx.controlflow.hints !38

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
  br i1 %383, label %1150, label %384, !dx.controlflow.hints !38

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
  br i1 %401, label %1150, label %402, !dx.controlflow.hints !39

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
  br i1 %439, label %1150, label %440, !dx.controlflow.hints !40

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
  br i1 %483, label %1150, label %484, !dx.controlflow.hints !41

; <label>:484                                     ; preds = %440
  %485 = fsub fast float %209, %217
  %486 = fadd fast float %485, %202
  %487 = fsub fast float %211, %218
  %488 = fadd fast float %487, %203
  %489 = fsub fast float %213, %219
  %490 = fadd fast float %489, %204
  %491 = fmul fast float %174, %95
  %492 = fmul fast float %486, %491
  %493 = fmul fast float %174, %95
  %494 = fmul fast float %488, %493
  %495 = fmul fast float %174, %95
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
  br i1 %539, label %1150, label %540, !dx.controlflow.hints !42

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
  br i1 %583, label %1150, label %584, !dx.controlflow.hints !43

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
  br i1 %639, label %650, label %640, !dx.controlflow.hints !44

; <label>:640                                     ; preds = %592
  %641 = add nuw nsw i32 %596, 1
  %642 = icmp ult i32 %641, 3
  br i1 %642, label %643, label %650, !llvm.loop !45

; <label>:643                                     ; preds = %640
  %644 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %641
  %645 = load float, float* %644, align 4
  %646 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %641
  %647 = load float, float* %646, align 4
  %648 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %641
  %649 = load float, float* %648, align 4
  br label %592

; <label>:650                                     ; preds = %640, %592
  %651 = phi i1 [ true, %592 ], [ false, %640 ]
  br i1 %651, label %1150, label %652, !dx.controlflow.hints !47

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
  br i1 %707, label %718, label %708, !dx.controlflow.hints !44

; <label>:708                                     ; preds = %660
  %709 = add nuw nsw i32 %664, 1
  %710 = icmp ult i32 %709, 3
  br i1 %710, label %711, label %718, !llvm.loop !45

; <label>:711                                     ; preds = %708
  %712 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %709
  %713 = load float, float* %712, align 4
  %714 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %709
  %715 = load float, float* %714, align 4
  %716 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %709
  %717 = load float, float* %716, align 4
  br label %660

; <label>:718                                     ; preds = %708, %660
  %719 = phi i1 [ true, %660 ], [ false, %708 ]
  br i1 %719, label %1150, label %720, !dx.controlflow.hints !48

; <label>:720                                     ; preds = %718
  %721 = fmul fast float %95, %174
  %722 = fmul fast float %721, %486
  %723 = fsub fast float -0.000000e+00, %722
  %724 = fmul fast float %95, %174
  %725 = fmul fast float %724, %488
  %726 = fsub fast float -0.000000e+00, %725
  %727 = fmul fast float %95, %174
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
  br i1 %777, label %788, label %778, !dx.controlflow.hints !44

; <label>:778                                     ; preds = %730
  %779 = add nuw nsw i32 %734, 1
  %780 = icmp ult i32 %779, 3
  br i1 %780, label %781, label %788, !llvm.loop !45

; <label>:781                                     ; preds = %778
  %782 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %779
  %783 = load float, float* %782, align 4
  %784 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %779
  %785 = load float, float* %784, align 4
  %786 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %779
  %787 = load float, float* %786, align 4
  br label %730

; <label>:788                                     ; preds = %778, %730
  %789 = phi i1 [ true, %730 ], [ false, %778 ]
  br i1 %789, label %1150, label %790, !dx.controlflow.hints !49

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
  br i1 %827, label %1150, label %828, !dx.controlflow.hints !50

; <label>:828                                     ; preds = %790
  %829 = fadd fast float %217, %208
  %830 = fadd fast float %829, %202
  %831 = fadd fast float %218, %210
  %832 = fadd fast float %831, %203
  %833 = fadd fast float %219, %212
  %834 = fadd fast float %833, %204
  %835 = fmul fast float %174, %95
  %836 = fmul fast float %830, %835
  %837 = fmul fast float %174, %95
  %838 = fmul fast float %832, %837
  %839 = fmul fast float %174, %95
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
  br i1 %883, label %1150, label %884, !dx.controlflow.hints !51

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
  br i1 %927, label %1150, label %928, !dx.controlflow.hints !52

; <label>:928                                     ; preds = %884
  %929 = fmul fast float %95, %174
  %930 = fmul fast float %929, %830
  %931 = fsub fast float -0.000000e+00, %930
  %932 = fmul fast float %95, %174
  %933 = fmul fast float %932, %832
  %934 = fsub fast float -0.000000e+00, %933
  %935 = fmul fast float %95, %174
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
  br i1 %985, label %996, label %986, !dx.controlflow.hints !44

; <label>:986                                     ; preds = %938
  %987 = add nuw nsw i32 %942, 1
  %988 = icmp ult i32 %987, 3
  br i1 %988, label %989, label %996, !llvm.loop !45

; <label>:989                                     ; preds = %986
  %990 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %987
  %991 = load float, float* %990, align 4
  %992 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %987
  %993 = load float, float* %992, align 4
  %994 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %987
  %995 = load float, float* %994, align 4
  br label %938

; <label>:996                                     ; preds = %986, %938
  %997 = phi i1 [ true, %938 ], [ false, %986 ]
  br i1 %997, label %1150, label %998, !dx.controlflow.hints !53

; <label>:998                                     ; preds = %996
  %999 = fsub fast float %208, %217
  %1000 = fadd fast float %999, %202
  %1001 = fsub fast float %210, %218
  %1002 = fadd fast float %1001, %203
  %1003 = fsub fast float %212, %219
  %1004 = fadd fast float %1003, %204
  %1005 = fmul fast float %95, %174
  %1006 = fmul fast float %1005, %1000
  %1007 = fsub fast float -0.000000e+00, %1006
  %1008 = fmul fast float %95, %174
  %1009 = fmul fast float %1008, %1002
  %1010 = fsub fast float -0.000000e+00, %1009
  %1011 = fmul fast float %95, %174
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
  br i1 %1061, label %1072, label %1062, !dx.controlflow.hints !44

; <label>:1062                                    ; preds = %1014
  %1063 = add nuw nsw i32 %1018, 1
  %1064 = icmp ult i32 %1063, 3
  br i1 %1064, label %1065, label %1072, !llvm.loop !45

; <label>:1065                                    ; preds = %1062
  %1066 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1063
  %1067 = load float, float* %1066, align 4
  %1068 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %1063
  %1069 = load float, float* %1068, align 4
  %1070 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %1063
  %1071 = load float, float* %1070, align 4
  br label %1014

; <label>:1072                                    ; preds = %1062, %1014
  %1073 = phi i1 [ true, %1014 ], [ false, %1062 ]
  br i1 %1073, label %1150, label %1074, !dx.controlflow.hints !54

; <label>:1074                                    ; preds = %1072
  %1075 = fsub fast float %217, %208
  %1076 = fadd fast float %1075, %202
  %1077 = fsub fast float %218, %210
  %1078 = fadd fast float %1077, %203
  %1079 = fsub fast float %219, %212
  %1080 = fadd fast float %1079, %204
  %1081 = fmul fast float %95, %174
  %1082 = fmul fast float %1081, %1076
  %1083 = fsub fast float -0.000000e+00, %1082
  %1084 = fmul fast float %95, %174
  %1085 = fmul fast float %1084, %1078
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = fmul fast float %95, %174
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
  br i1 %1137, label %1148, label %1138, !dx.controlflow.hints !44

; <label>:1138                                    ; preds = %1090
  %1139 = add nuw nsw i32 %1094, 1
  %1140 = icmp ult i32 %1139, 3
  br i1 %1140, label %1141, label %1148, !llvm.loop !45

; <label>:1141                                    ; preds = %1138
  %1142 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1139
  %1143 = load float, float* %1142, align 4
  %1144 = getelementptr [3 x float], [3 x float]* %18, i32 0, i32 %1139
  %1145 = load float, float* %1144, align 4
  %1146 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %1139
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
  br i1 %1155, label %1177, label %1156, !dx.controlflow.hints !55

; <label>:1156                                    ; preds = %1150
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1157 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1157, label %1158, label %1161, !dx.controlflow.hints !56

; <label>:1158                                    ; preds = %1156
  %1159 = udiv i32 %11, %142
  %1160 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1159
  store i32 %1153, i32 addrspace(3)* %1160, align 4, !tbaa !32, !noalias !57
  br label %1161

; <label>:1161                                    ; preds = %1158, %1156
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1162 = icmp eq i32 %142, 32
  br i1 %1162, label %1163, label %1166, !dx.controlflow.hints !61

; <label>:1163                                    ; preds = %1161
  %1164 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32, !noalias !57
  %1165 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32, !noalias !57
  br label %1177

; <label>:1166                                    ; preds = %1161
  %1167 = icmp eq i32 %142, 16
  br i1 %1167, label %1168, label %1177, !dx.controlflow.hints !62

; <label>:1168                                    ; preds = %1166
  %1169 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32, !noalias !57
  %1170 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32, !noalias !57
  %1171 = shl i32 %1170, 16
  %1172 = or i32 %1171, %1169
  %1173 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !32, !noalias !57
  %1174 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !32, !noalias !57
  %1175 = shl i32 %1174, 16
  %1176 = or i32 %1175, %1173
  br label %1177

; <label>:1177                                    ; preds = %1168, %1166, %1163, %1150
  %1178 = phi i32 [ %1164, %1163 ], [ %1172, %1168 ], [ 0, %1166 ], [ %1153, %1150 ]
  %1179 = phi i32 [ %1165, %1163 ], [ %1176, %1168 ], [ 0, %1166 ], [ %1154, %1150 ]
  %1180 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1178)  ; Countbits(value)
  %1181 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1179)  ; Countbits(value)
  %1182 = and i32 %11, 32
  %1183 = and i32 %11, 31
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
  %1195 = icmp ult i32 %1194, %96
  %1196 = and i1 %1151, %1195
  br i1 %1196, label %1197, label %1199, !dx.controlflow.hints !63

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
  %1207 = and i1 %135, %134
  br i1 %1207, label %1208, label %2383, !dx.controlflow.hints !64

; <label>:1208                                    ; preds = %1205
  %1209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.i32 %1209, 0
  %1211 = icmp ugt i32 %1210, %155
  %1212 = icmp ne i32 %1206, 0
  %1213 = and i1 %1212, %1211
  br i1 %1213, label %1214, label %2383, !dx.controlflow.hints !65

; <label>:1214                                    ; preds = %1208
  %1215 = extractvalue %dx.types.CBufRet.i32 %1209, 2
  %1216 = sub i32 %1210, %155
  %1217 = call i32 @dx.op.binary.i32(i32 40, i32 %1206, i32 %1216)  ; UMin(a,b)
  %1218 = add i32 %1217, -1
  %1219 = lshr i32 %1218, 1
  %1220 = or i32 %1219, %1218
  %1221 = lshr i32 %1220, 2
  %1222 = or i32 %1221, %1220
  %1223 = lshr i32 %1222, 4
  %1224 = or i32 %1223, %1222
  %1225 = lshr i32 %1224, 8
  %1226 = or i32 %1225, %1224
  %1227 = lshr i32 %1226, 16
  %1228 = or i32 %1227, %1226
  %1229 = add i32 %1228, 1
  %1230 = call i32 @dx.op.binary.i32(i32 40, i32 %1229, i32 64)  ; UMin(a,b)
  %1231 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1230)  ; FirstbitLo(value)
  %1232 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %1231, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1233 = lshr i32 %1232, 3
  %1234 = icmp ult i32 %1233, %1215
  br i1 %1234, label %1235, label %2383, !dx.controlflow.hints !66

; <label>:1235                                    ; preds = %1214
  %1236 = mul i32 %1231, %1215
  %1237 = add i32 %1233, %1236
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1237, i32 0, i32 %125, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1237, i32 4, i32 %155, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1237, i32 8, i32 %1217, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2383

; <label>:1238                                    ; preds = %84
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %85, i32 0)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = call i32 @dx.op.binary.i32(i32 40, i32 %1240, i32 %35)  ; UMin(a,b)
  %1242 = shl i32 %86, 6
  %1243 = sub i32 %13, %1242
  %1244 = lshr i32 %1243, %85
  %1245 = lshr i32 %1244, 3
  %1246 = mul i32 %22, %85
  %1247 = add i32 %1246, %1245
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1247, i32 0)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1247, i32 4)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = lshr i32 %1249, 20
  %1253 = lshr i32 %1244, 2
  %1254 = and i32 %1253, 1
  %1255 = lshr i32 %1244, 1
  %1256 = and i32 %1255, 1
  %1257 = and i32 %1244, 1
  %1258 = shl nuw nsw i32 %1252, 1
  %1259 = or i32 %1258, %1257
  %1260 = lshr i32 %1249, 7
  %1261 = and i32 %1260, 8190
  %1262 = or i32 %1261, %1256
  %1263 = shl i32 %1249, 1
  %1264 = and i32 %1263, 510
  %1265 = or i32 %1264, %1254
  %1266 = shl i32 %1259, 20
  %1267 = shl nuw nsw i32 %1262, 8
  %1268 = or i32 %1266, %1267
  %1269 = or i32 %1268, %1265
  %1270 = lshr i32 %11, %85
  %1271 = add i32 %87, -1
  %1272 = and i32 %1271, %11
  %1273 = shl i32 %1270, %85
  %1274 = lshr i32 %11, 5
  %1275 = lshr i32 %1268, 20
  %1276 = lshr i32 %1269, 8
  %1277 = and i32 %1276, 4095
  %1278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.i32 %1278, 1
  %1280 = icmp uge i32 %1275, %92
  %1281 = icmp uge i32 %1277, %93
  %1282 = or i1 %1280, %1281
  %1283 = icmp uge i32 %1244, %1241
  %1284 = or i1 %1282, %1283
  br i1 %1284, label %2276, label %1285, !dx.controlflow.hints !67

; <label>:1285                                    ; preds = %1238
  %1286 = and i32 %1265, 255
  %1287 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %1288 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1247, i32 8)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1294 = uitofp i32 %1275 to float
  %1295 = uitofp i32 %1277 to float
  %1296 = uitofp i32 %1286 to float
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1300 = fadd fast float %1294, 5.000000e-01
  %1301 = fadd fast float %1295, 5.000000e-01
  %1302 = fmul fast float %1288, 2.000000e+00
  %1303 = fmul fast float %1302, %1300
  %1304 = fmul fast float %1287, 2.000000e+00
  %1305 = fmul fast float %1304, %1301
  %1306 = fadd fast float %1303, -1.000000e+00
  %1307 = fsub fast float 1.000000e+00, %1305
  %1308 = fmul fast float %1296, %95
  %1309 = fsub fast float %1292, %1293
  %1310 = fmul fast float %1308, %1309
  %1311 = fadd fast float %1310, %1293
  %1312 = fadd fast float %1296, 1.000000e+00
  %1313 = fmul fast float %1312, %95
  %1314 = fmul fast float %1313, %1309
  %1315 = fadd fast float %1314, %1293
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.CBufRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.CBufRet.f32 %1320, 2
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1328 = fmul fast float %1317, %1306
  %1329 = fmul fast float %1318, %1306
  %1330 = fmul fast float %1319, %1306
  %1331 = fmul fast float %1321, %1307
  %1332 = fmul fast float %1322, %1307
  %1333 = fmul fast float %1323, %1307
  %1334 = fadd fast float %1331, %1328
  %1335 = fadd fast float %1332, %1329
  %1336 = fadd fast float %1333, %1330
  %1337 = fadd fast float %1334, %1325
  %1338 = fadd fast float %1335, %1326
  %1339 = fadd fast float %1336, %1327
  %1340 = fmul fast float %1337, %1311
  %1341 = fmul fast float %1338, %1311
  %1342 = fmul fast float %1339, %1311
  %1343 = fmul fast float %1317, %1298
  %1344 = fsub fast float -0.000000e+00, %1343
  %1345 = fmul fast float %1318, %1298
  %1346 = fsub fast float -0.000000e+00, %1345
  %1347 = fmul fast float %1319, %1298
  %1348 = fsub fast float -0.000000e+00, %1347
  %1349 = fmul fast float %1343, %1311
  %1350 = fmul fast float %1345, %1311
  %1351 = fmul fast float %1347, %1311
  %1352 = fmul fast float %1321, %1299
  %1353 = fmul fast float %1322, %1299
  %1354 = fmul fast float %1323, %1299
  %1355 = fmul fast float %1352, %1311
  %1356 = fmul fast float %1353, %1311
  %1357 = fmul fast float %1354, %1311
  %1358 = fmul fast float %1337, %1315
  %1359 = fmul fast float %1338, %1315
  %1360 = fmul fast float %1339, %1315
  %1361 = fmul fast float %1343, %1315
  %1362 = fmul fast float %1345, %1315
  %1363 = fmul fast float %1347, %1315
  %1364 = fmul fast float %1352, %1315
  %1365 = fmul fast float %1353, %1315
  %1366 = fmul fast float %1354, %1315
  %1367 = icmp ult i32 %1272, %1290
  br i1 %1367, label %1368, label %1373, !dx.controlflow.hints !68

; <label>:1368                                    ; preds = %1285
  %1369 = add i32 %1251, %1272
  %1370 = shl i32 %1369, 2
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  br label %1373

; <label>:1373                                    ; preds = %1368, %1285
  %1374 = phi i32 [ %1372, %1368 ], [ -1, %1285 ]
  %1375 = icmp ult i32 %1374, %89
  br i1 %1375, label %1376, label %2276, !dx.controlflow.hints !69

; <label>:1376                                    ; preds = %1373
  %1377 = mul i32 %1374, 48
  %1378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.ResRet.f32 %1378, 2
  %1382 = or i32 %1377, 12
  %1383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = add i32 %1377, 24
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = add i32 %1377, 36
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 0
  %1398 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 0
  %1399 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 0
  store float %1384, float* %1397, align 4
  store float %1385, float* %1398, align 4
  store float %1386, float* %1399, align 4
  %1400 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 1
  %1401 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 1
  %1402 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 1
  store float %1389, float* %1400, align 4
  store float %1390, float* %1401, align 4
  store float %1391, float* %1402, align 4
  %1403 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 2
  %1404 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 2
  %1405 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 2
  store float %1394, float* %1403, align 4
  store float %1395, float* %1404, align 4
  store float %1396, float* %1405, align 4
  %1406 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1408 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1411 = fadd fast float %1410, %1408
  %1412 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1413 = call float @dx.op.unary.f32(i32 6, float %1412)  ; FAbs(value)
  %1414 = fadd fast float %1411, %1413
  %1415 = fsub fast float %1406, %1414
  %1416 = fadd fast float %1414, %1406
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1419 = call float @dx.op.unary.f32(i32 6, float %1418)  ; FAbs(value)
  %1420 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1421 = call float @dx.op.unary.f32(i32 6, float %1420)  ; FAbs(value)
  %1422 = fadd fast float %1421, %1419
  %1423 = fsub fast float %1417, %1422
  %1424 = fadd fast float %1422, %1417
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1427 = call float @dx.op.unary.f32(i32 6, float %1426)  ; FAbs(value)
  %1428 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1384, float %1385, float %1386)  ; Dot3(ax,ay,az,bx,by,bz)
  %1429 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1430 = fadd fast float %1429, %1427
  %1431 = fsub fast float %1425, %1430
  %1432 = fadd fast float %1430, %1425
  %1433 = fcmp fast olt float %1431, %1423
  %1434 = select i1 %1433, float %1431, float %1423
  %1435 = fcmp fast ogt float %1432, %1424
  %1436 = select i1 %1435, float %1432, float %1424
  %1437 = fcmp fast olt float %1436, %1415
  %1438 = fcmp fast olt float %1416, %1434
  %1439 = or i1 %1437, %1438
  br i1 %1439, label %2276, label %1440, !dx.controlflow.hints !38

; <label>:1440                                    ; preds = %1376
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1443 = call float @dx.op.unary.f32(i32 6, float %1442)  ; FAbs(value)
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 6, float %1444)  ; FAbs(value)
  %1446 = fadd fast float %1445, %1443
  %1447 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1448 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1449 = fadd fast float %1446, %1448
  %1450 = fsub fast float %1441, %1449
  %1451 = fadd fast float %1449, %1441
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call float @dx.op.unary.f32(i32 6, float %1453)  ; FAbs(value)
  %1455 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1456 = call float @dx.op.unary.f32(i32 6, float %1455)  ; FAbs(value)
  %1457 = fadd fast float %1456, %1454
  %1458 = fsub fast float %1452, %1457
  %1459 = fadd fast float %1457, %1452
  %1460 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1461 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1462 = call float @dx.op.unary.f32(i32 6, float %1461)  ; FAbs(value)
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1389, float %1390, float %1391)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = call float @dx.op.unary.f32(i32 6, float %1463)  ; FAbs(value)
  %1465 = fadd fast float %1464, %1462
  %1466 = fsub fast float %1460, %1465
  %1467 = fadd fast float %1465, %1460
  %1468 = fcmp fast olt float %1466, %1458
  %1469 = select i1 %1468, float %1466, float %1458
  %1470 = fcmp fast ogt float %1467, %1459
  %1471 = select i1 %1470, float %1467, float %1459
  %1472 = fcmp fast olt float %1471, %1450
  %1473 = fcmp fast olt float %1451, %1469
  %1474 = or i1 %1472, %1473
  br i1 %1474, label %2276, label %1475, !dx.controlflow.hints !38

; <label>:1475                                    ; preds = %1440
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = call float @dx.op.unary.f32(i32 6, float %1477)  ; FAbs(value)
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = call float @dx.op.unary.f32(i32 6, float %1479)  ; FAbs(value)
  %1481 = fadd fast float %1480, %1478
  %1482 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1483 = call float @dx.op.unary.f32(i32 6, float %1482)  ; FAbs(value)
  %1484 = fadd fast float %1481, %1483
  %1485 = fsub fast float %1476, %1484
  %1486 = fadd fast float %1484, %1476
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1489 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1490 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1491 = call float @dx.op.unary.f32(i32 6, float %1490)  ; FAbs(value)
  %1492 = fadd fast float %1491, %1489
  %1493 = fsub fast float %1487, %1492
  %1494 = fadd fast float %1492, %1487
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1497 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1498 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1394, float %1395, float %1396)  ; Dot3(ax,ay,az,bx,by,bz)
  %1499 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1500 = fadd fast float %1499, %1497
  %1501 = fsub fast float %1495, %1500
  %1502 = fadd fast float %1500, %1495
  %1503 = fcmp fast olt float %1501, %1493
  %1504 = select i1 %1503, float %1501, float %1493
  %1505 = fcmp fast ogt float %1502, %1494
  %1506 = select i1 %1505, float %1502, float %1494
  %1507 = fcmp fast olt float %1506, %1485
  %1508 = fcmp fast olt float %1486, %1504
  %1509 = or i1 %1507, %1508
  br i1 %1509, label %2276, label %1510, !dx.controlflow.hints !38

; <label>:1510                                    ; preds = %1475
  %1511 = fcmp fast ole float %1415, %1434
  %1512 = fcmp fast ole float %1436, %1416
  %1513 = and i1 %1511, %1512
  %1514 = zext i1 %1513 to i32
  %1515 = shl nuw nsw i32 %1514, 1
  %1516 = fcmp fast ole float %1450, %1469
  %1517 = fcmp fast ole float %1471, %1451
  %1518 = and i1 %1516, %1517
  %1519 = zext i1 %1518 to i32
  %1520 = or i32 %1519, %1515
  %1521 = shl nuw nsw i32 %1520, 1
  %1522 = fcmp fast ole float %1485, %1504
  %1523 = fcmp fast ole float %1506, %1486
  %1524 = and i1 %1522, %1523
  %1525 = zext i1 %1524 to i32
  %1526 = or i32 %1525, %1521
  %1527 = icmp eq i32 %1526, 7
  br i1 %1527, label %2276, label %1528, !dx.controlflow.hints !39

; <label>:1528                                    ; preds = %1510
  %1529 = fsub fast float %1379, %1340
  %1530 = fsub fast float %1380, %1341
  %1531 = fsub fast float %1381, %1342
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = call float @dx.op.unary.f32(i32 6, float %1533)  ; FAbs(value)
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1537 = fadd fast float %1536, %1534
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = call float @dx.op.unary.f32(i32 6, float %1538)  ; FAbs(value)
  %1540 = fadd fast float %1537, %1539
  %1541 = fsub fast float %1532, %1540
  %1542 = fadd fast float %1540, %1532
  %1543 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = call float @dx.op.unary.f32(i32 6, float %1544)  ; FAbs(value)
  %1546 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = call float @dx.op.unary.f32(i32 6, float %1546)  ; FAbs(value)
  %1548 = fadd fast float %1547, %1545
  %1549 = fsub fast float %1543, %1548
  %1550 = fadd fast float %1548, %1543
  %1551 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = call float @dx.op.unary.f32(i32 6, float %1552)  ; FAbs(value)
  %1554 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1529, float %1530, float %1531)  ; Dot3(ax,ay,az,bx,by,bz)
  %1555 = call float @dx.op.unary.f32(i32 6, float %1554)  ; FAbs(value)
  %1556 = fadd fast float %1555, %1553
  %1557 = fsub fast float %1551, %1556
  %1558 = fadd fast float %1556, %1551
  %1559 = fcmp fast olt float %1557, %1549
  %1560 = select i1 %1559, float %1557, float %1549
  %1561 = fcmp fast ogt float %1558, %1550
  %1562 = select i1 %1561, float %1558, float %1550
  %1563 = fcmp fast olt float %1562, %1541
  %1564 = fcmp fast olt float %1542, %1560
  %1565 = or i1 %1563, %1564
  br i1 %1565, label %2276, label %1566, !dx.controlflow.hints !40

; <label>:1566                                    ; preds = %1528
  %1567 = fmul fast float %1357, %1350
  %1568 = fmul fast float %1356, %1351
  %1569 = fsub fast float %1567, %1568
  %1570 = fmul fast float %1355, %1351
  %1571 = fmul fast float %1357, %1349
  %1572 = fsub fast float %1570, %1571
  %1573 = fmul fast float %1356, %1349
  %1574 = fmul fast float %1355, %1350
  %1575 = fsub fast float %1573, %1574
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = call float @dx.op.unary.f32(i32 6, float %1577)  ; FAbs(value)
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = call float @dx.op.unary.f32(i32 6, float %1579)  ; FAbs(value)
  %1581 = fadd fast float %1580, %1578
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = call float @dx.op.unary.f32(i32 6, float %1582)  ; FAbs(value)
  %1584 = fadd fast float %1581, %1583
  %1585 = fsub fast float %1576, %1584
  %1586 = fadd fast float %1584, %1576
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1589 = call float @dx.op.unary.f32(i32 6, float %1588)  ; FAbs(value)
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = call float @dx.op.unary.f32(i32 6, float %1590)  ; FAbs(value)
  %1592 = fadd fast float %1591, %1589
  %1593 = fsub fast float %1587, %1592
  %1594 = fadd fast float %1592, %1587
  %1595 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1596 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1597 = call float @dx.op.unary.f32(i32 6, float %1596)  ; FAbs(value)
  %1598 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1569, float %1572, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1599 = call float @dx.op.unary.f32(i32 6, float %1598)  ; FAbs(value)
  %1600 = fadd fast float %1599, %1597
  %1601 = fsub fast float %1595, %1600
  %1602 = fadd fast float %1600, %1595
  %1603 = fcmp fast olt float %1601, %1593
  %1604 = select i1 %1603, float %1601, float %1593
  %1605 = fcmp fast ogt float %1602, %1594
  %1606 = select i1 %1605, float %1602, float %1594
  %1607 = fcmp fast olt float %1606, %1585
  %1608 = fcmp fast olt float %1586, %1604
  %1609 = or i1 %1607, %1608
  br i1 %1609, label %2276, label %1610, !dx.controlflow.hints !41

; <label>:1610                                    ; preds = %1566
  %1611 = fsub fast float %1344, %1352
  %1612 = fadd fast float %1611, %1337
  %1613 = fsub fast float %1346, %1353
  %1614 = fadd fast float %1613, %1338
  %1615 = fsub fast float %1348, %1354
  %1616 = fadd fast float %1615, %1339
  %1617 = fmul fast float %1309, %95
  %1618 = fmul fast float %1612, %1617
  %1619 = fmul fast float %1309, %95
  %1620 = fmul fast float %1614, %1619
  %1621 = fmul fast float %1309, %95
  %1622 = fmul fast float %1616, %1621
  %1623 = fmul fast float %1622, %1350
  %1624 = fmul fast float %1620, %1351
  %1625 = fsub fast float %1623, %1624
  %1626 = fmul fast float %1618, %1351
  %1627 = fmul fast float %1622, %1349
  %1628 = fsub fast float %1626, %1627
  %1629 = fmul fast float %1620, %1349
  %1630 = fmul fast float %1618, %1350
  %1631 = fsub fast float %1629, %1630
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = call float @dx.op.unary.f32(i32 6, float %1633)  ; FAbs(value)
  %1635 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1636 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1637 = fadd fast float %1636, %1634
  %1638 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1639 = call float @dx.op.unary.f32(i32 6, float %1638)  ; FAbs(value)
  %1640 = fadd fast float %1637, %1639
  %1641 = fsub fast float %1632, %1640
  %1642 = fadd fast float %1640, %1632
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = call float @dx.op.unary.f32(i32 6, float %1644)  ; FAbs(value)
  %1646 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1647 = call float @dx.op.unary.f32(i32 6, float %1646)  ; FAbs(value)
  %1648 = fadd fast float %1647, %1645
  %1649 = fsub fast float %1643, %1648
  %1650 = fadd fast float %1648, %1643
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = call float @dx.op.unary.f32(i32 6, float %1652)  ; FAbs(value)
  %1654 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1625, float %1628, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %1655 = call float @dx.op.unary.f32(i32 6, float %1654)  ; FAbs(value)
  %1656 = fadd fast float %1655, %1653
  %1657 = fsub fast float %1651, %1656
  %1658 = fadd fast float %1656, %1651
  %1659 = fcmp fast olt float %1657, %1649
  %1660 = select i1 %1659, float %1657, float %1649
  %1661 = fcmp fast ogt float %1658, %1650
  %1662 = select i1 %1661, float %1658, float %1650
  %1663 = fcmp fast olt float %1662, %1641
  %1664 = fcmp fast olt float %1642, %1660
  %1665 = or i1 %1663, %1664
  br i1 %1665, label %2276, label %1666, !dx.controlflow.hints !42

; <label>:1666                                    ; preds = %1610
  %1667 = fmul fast float %1622, %1356
  %1668 = fmul fast float %1620, %1357
  %1669 = fsub fast float %1667, %1668
  %1670 = fmul fast float %1618, %1357
  %1671 = fmul fast float %1622, %1355
  %1672 = fsub fast float %1670, %1671
  %1673 = fmul fast float %1620, %1355
  %1674 = fmul fast float %1618, %1356
  %1675 = fsub fast float %1673, %1674
  %1676 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.unary.f32(i32 6, float %1677)  ; FAbs(value)
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = call float @dx.op.unary.f32(i32 6, float %1679)  ; FAbs(value)
  %1681 = fadd fast float %1680, %1678
  %1682 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1683 = call float @dx.op.unary.f32(i32 6, float %1682)  ; FAbs(value)
  %1684 = fadd fast float %1681, %1683
  %1685 = fsub fast float %1676, %1684
  %1686 = fadd fast float %1684, %1676
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.unary.f32(i32 6, float %1688)  ; FAbs(value)
  %1690 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1691 = call float @dx.op.unary.f32(i32 6, float %1690)  ; FAbs(value)
  %1692 = fadd fast float %1691, %1689
  %1693 = fsub fast float %1687, %1692
  %1694 = fadd fast float %1692, %1687
  %1695 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.unary.f32(i32 6, float %1696)  ; FAbs(value)
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = call float @dx.op.unary.f32(i32 6, float %1698)  ; FAbs(value)
  %1700 = fadd fast float %1699, %1697
  %1701 = fsub fast float %1695, %1700
  %1702 = fadd fast float %1700, %1695
  %1703 = fcmp fast olt float %1701, %1693
  %1704 = select i1 %1703, float %1701, float %1693
  %1705 = fcmp fast ogt float %1702, %1694
  %1706 = select i1 %1705, float %1702, float %1694
  %1707 = fcmp fast olt float %1706, %1685
  %1708 = fcmp fast olt float %1686, %1704
  %1709 = or i1 %1707, %1708
  br i1 %1709, label %2276, label %1710, !dx.controlflow.hints !43

; <label>:1710                                    ; preds = %1666
  %1711 = fmul fast float %1298, -2.000000e+00
  %1712 = fmul fast float %1711, %1317
  %1713 = fmul fast float %1712, %1311
  %1714 = fmul fast float %1711, %1318
  %1715 = fmul fast float %1714, %1311
  %1716 = fmul fast float %1711, %1319
  %1717 = fmul fast float %1716, %1311
  br label %1718

; <label>:1718                                    ; preds = %1769, %1710
  %1719 = phi float [ %1386, %1710 ], [ %1775, %1769 ]
  %1720 = phi float [ %1385, %1710 ], [ %1773, %1769 ]
  %1721 = phi float [ %1384, %1710 ], [ %1771, %1769 ]
  %1722 = phi i32 [ 0, %1710 ], [ %1767, %1769 ]
  %1723 = fmul fast float %1719, %1715
  %1724 = fmul fast float %1720, %1717
  %1725 = fsub fast float %1723, %1724
  %1726 = fmul fast float %1721, %1717
  %1727 = fmul fast float %1719, %1713
  %1728 = fsub fast float %1726, %1727
  %1729 = fmul fast float %1720, %1713
  %1730 = fmul fast float %1721, %1715
  %1731 = fsub fast float %1729, %1730
  %1732 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1733 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1734 = call float @dx.op.unary.f32(i32 6, float %1733)  ; FAbs(value)
  %1735 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = call float @dx.op.unary.f32(i32 6, float %1735)  ; FAbs(value)
  %1737 = fadd fast float %1736, %1734
  %1738 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1739 = call float @dx.op.unary.f32(i32 6, float %1738)  ; FAbs(value)
  %1740 = fadd fast float %1737, %1739
  %1741 = fsub fast float %1732, %1740
  %1742 = fadd fast float %1740, %1732
  %1743 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call float @dx.op.unary.f32(i32 6, float %1744)  ; FAbs(value)
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call float @dx.op.unary.f32(i32 6, float %1746)  ; FAbs(value)
  %1748 = fadd fast float %1747, %1745
  %1749 = fsub fast float %1743, %1748
  %1750 = fadd fast float %1748, %1743
  %1751 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1754 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1725, float %1728, float %1731)  ; Dot3(ax,ay,az,bx,by,bz)
  %1755 = call float @dx.op.unary.f32(i32 6, float %1754)  ; FAbs(value)
  %1756 = fadd fast float %1755, %1753
  %1757 = fsub fast float %1751, %1756
  %1758 = fadd fast float %1756, %1751
  %1759 = fcmp fast olt float %1757, %1749
  %1760 = select i1 %1759, float %1757, float %1749
  %1761 = fcmp fast ogt float %1758, %1750
  %1762 = select i1 %1761, float %1758, float %1750
  %1763 = fcmp fast olt float %1762, %1741
  %1764 = fcmp fast olt float %1742, %1760
  %1765 = or i1 %1763, %1764
  br i1 %1765, label %1776, label %1766, !dx.controlflow.hints !44

; <label>:1766                                    ; preds = %1718
  %1767 = add nuw nsw i32 %1722, 1
  %1768 = icmp ult i32 %1767, 3
  br i1 %1768, label %1769, label %1776, !llvm.loop !45

; <label>:1769                                    ; preds = %1766
  %1770 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1767
  %1771 = load float, float* %1770, align 4
  %1772 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1767
  %1773 = load float, float* %1772, align 4
  %1774 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1767
  %1775 = load float, float* %1774, align 4
  br label %1718

; <label>:1776                                    ; preds = %1766, %1718
  %1777 = phi i1 [ true, %1718 ], [ false, %1766 ]
  br i1 %1777, label %2276, label %1778, !dx.controlflow.hints !47

; <label>:1778                                    ; preds = %1776
  %1779 = fmul fast float %1311, 2.000000e+00
  %1780 = fmul fast float %1352, %1779
  %1781 = fsub fast float -0.000000e+00, %1780
  %1782 = fmul fast float %1353, %1779
  %1783 = fsub fast float -0.000000e+00, %1782
  %1784 = fmul fast float %1354, %1779
  %1785 = fsub fast float -0.000000e+00, %1784
  br label %1786

; <label>:1786                                    ; preds = %1837, %1778
  %1787 = phi float [ %1386, %1778 ], [ %1843, %1837 ]
  %1788 = phi float [ %1385, %1778 ], [ %1841, %1837 ]
  %1789 = phi float [ %1384, %1778 ], [ %1839, %1837 ]
  %1790 = phi i32 [ 0, %1778 ], [ %1835, %1837 ]
  %1791 = fmul fast float %1787, %1783
  %1792 = fmul fast float %1788, %1785
  %1793 = fsub fast float %1791, %1792
  %1794 = fmul fast float %1789, %1785
  %1795 = fmul fast float %1787, %1781
  %1796 = fsub fast float %1794, %1795
  %1797 = fmul fast float %1788, %1781
  %1798 = fmul fast float %1789, %1783
  %1799 = fsub fast float %1797, %1798
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1802 = call float @dx.op.unary.f32(i32 6, float %1801)  ; FAbs(value)
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = call float @dx.op.unary.f32(i32 6, float %1803)  ; FAbs(value)
  %1805 = fadd fast float %1804, %1802
  %1806 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1807 = call float @dx.op.unary.f32(i32 6, float %1806)  ; FAbs(value)
  %1808 = fadd fast float %1805, %1807
  %1809 = fsub fast float %1800, %1808
  %1810 = fadd fast float %1808, %1800
  %1811 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1812 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1813 = call float @dx.op.unary.f32(i32 6, float %1812)  ; FAbs(value)
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.unary.f32(i32 6, float %1814)  ; FAbs(value)
  %1816 = fadd fast float %1815, %1813
  %1817 = fsub fast float %1811, %1816
  %1818 = fadd fast float %1816, %1811
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1821 = call float @dx.op.unary.f32(i32 6, float %1820)  ; FAbs(value)
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1793, float %1796, float %1799)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = call float @dx.op.unary.f32(i32 6, float %1822)  ; FAbs(value)
  %1824 = fadd fast float %1823, %1821
  %1825 = fsub fast float %1819, %1824
  %1826 = fadd fast float %1824, %1819
  %1827 = fcmp fast olt float %1825, %1817
  %1828 = select i1 %1827, float %1825, float %1817
  %1829 = fcmp fast ogt float %1826, %1818
  %1830 = select i1 %1829, float %1826, float %1818
  %1831 = fcmp fast olt float %1830, %1809
  %1832 = fcmp fast olt float %1810, %1828
  %1833 = or i1 %1831, %1832
  br i1 %1833, label %1844, label %1834, !dx.controlflow.hints !44

; <label>:1834                                    ; preds = %1786
  %1835 = add nuw nsw i32 %1790, 1
  %1836 = icmp ult i32 %1835, 3
  br i1 %1836, label %1837, label %1844, !llvm.loop !45

; <label>:1837                                    ; preds = %1834
  %1838 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1835
  %1839 = load float, float* %1838, align 4
  %1840 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1835
  %1841 = load float, float* %1840, align 4
  %1842 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1835
  %1843 = load float, float* %1842, align 4
  br label %1786

; <label>:1844                                    ; preds = %1834, %1786
  %1845 = phi i1 [ true, %1786 ], [ false, %1834 ]
  br i1 %1845, label %2276, label %1846, !dx.controlflow.hints !48

; <label>:1846                                    ; preds = %1844
  %1847 = fmul fast float %95, %1309
  %1848 = fmul fast float %1847, %1612
  %1849 = fsub fast float -0.000000e+00, %1848
  %1850 = fmul fast float %95, %1309
  %1851 = fmul fast float %1850, %1614
  %1852 = fsub fast float -0.000000e+00, %1851
  %1853 = fmul fast float %95, %1309
  %1854 = fmul fast float %1853, %1616
  %1855 = fsub fast float -0.000000e+00, %1854
  br label %1856

; <label>:1856                                    ; preds = %1907, %1846
  %1857 = phi float [ %1386, %1846 ], [ %1913, %1907 ]
  %1858 = phi float [ %1385, %1846 ], [ %1911, %1907 ]
  %1859 = phi float [ %1384, %1846 ], [ %1909, %1907 ]
  %1860 = phi i32 [ 0, %1846 ], [ %1905, %1907 ]
  %1861 = fmul fast float %1857, %1852
  %1862 = fmul fast float %1858, %1855
  %1863 = fsub fast float %1861, %1862
  %1864 = fmul fast float %1859, %1855
  %1865 = fmul fast float %1857, %1849
  %1866 = fsub fast float %1864, %1865
  %1867 = fmul fast float %1858, %1849
  %1868 = fmul fast float %1859, %1852
  %1869 = fsub fast float %1867, %1868
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call float @dx.op.unary.f32(i32 6, float %1873)  ; FAbs(value)
  %1875 = fadd fast float %1874, %1872
  %1876 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1877 = call float @dx.op.unary.f32(i32 6, float %1876)  ; FAbs(value)
  %1878 = fadd fast float %1875, %1877
  %1879 = fsub fast float %1870, %1878
  %1880 = fadd fast float %1878, %1870
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1883 = call float @dx.op.unary.f32(i32 6, float %1882)  ; FAbs(value)
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.unary.f32(i32 6, float %1884)  ; FAbs(value)
  %1886 = fadd fast float %1885, %1883
  %1887 = fsub fast float %1881, %1886
  %1888 = fadd fast float %1886, %1881
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = call float @dx.op.unary.f32(i32 6, float %1890)  ; FAbs(value)
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1863, float %1866, float %1869)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = call float @dx.op.unary.f32(i32 6, float %1892)  ; FAbs(value)
  %1894 = fadd fast float %1893, %1891
  %1895 = fsub fast float %1889, %1894
  %1896 = fadd fast float %1894, %1889
  %1897 = fcmp fast olt float %1895, %1887
  %1898 = select i1 %1897, float %1895, float %1887
  %1899 = fcmp fast ogt float %1896, %1888
  %1900 = select i1 %1899, float %1896, float %1888
  %1901 = fcmp fast olt float %1900, %1879
  %1902 = fcmp fast olt float %1880, %1898
  %1903 = or i1 %1901, %1902
  br i1 %1903, label %1914, label %1904, !dx.controlflow.hints !44

; <label>:1904                                    ; preds = %1856
  %1905 = add nuw nsw i32 %1860, 1
  %1906 = icmp ult i32 %1905, 3
  br i1 %1906, label %1907, label %1914, !llvm.loop !45

; <label>:1907                                    ; preds = %1904
  %1908 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1905
  %1909 = load float, float* %1908, align 4
  %1910 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1905
  %1911 = load float, float* %1910, align 4
  %1912 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1905
  %1913 = load float, float* %1912, align 4
  br label %1856

; <label>:1914                                    ; preds = %1904, %1856
  %1915 = phi i1 [ true, %1856 ], [ false, %1904 ]
  br i1 %1915, label %2276, label %1916, !dx.controlflow.hints !49

; <label>:1916                                    ; preds = %1914
  %1917 = fsub fast float %1379, %1358
  %1918 = fsub fast float %1380, %1359
  %1919 = fsub fast float %1381, %1360
  %1920 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = call float @dx.op.unary.f32(i32 6, float %1921)  ; FAbs(value)
  %1923 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1924 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1925 = fadd fast float %1924, %1922
  %1926 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1927 = call float @dx.op.unary.f32(i32 6, float %1926)  ; FAbs(value)
  %1928 = fadd fast float %1925, %1927
  %1929 = fsub fast float %1920, %1928
  %1930 = fadd fast float %1928, %1920
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1933 = call float @dx.op.unary.f32(i32 6, float %1932)  ; FAbs(value)
  %1934 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1935 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1936 = fadd fast float %1935, %1933
  %1937 = fsub fast float %1931, %1936
  %1938 = fadd fast float %1936, %1931
  %1939 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1940 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1941 = call float @dx.op.unary.f32(i32 6, float %1940)  ; FAbs(value)
  %1942 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1917, float %1918, float %1919)  ; Dot3(ax,ay,az,bx,by,bz)
  %1943 = call float @dx.op.unary.f32(i32 6, float %1942)  ; FAbs(value)
  %1944 = fadd fast float %1943, %1941
  %1945 = fsub fast float %1939, %1944
  %1946 = fadd fast float %1944, %1939
  %1947 = fcmp fast olt float %1945, %1937
  %1948 = select i1 %1947, float %1945, float %1937
  %1949 = fcmp fast ogt float %1946, %1938
  %1950 = select i1 %1949, float %1946, float %1938
  %1951 = fcmp fast olt float %1950, %1929
  %1952 = fcmp fast olt float %1930, %1948
  %1953 = or i1 %1951, %1952
  br i1 %1953, label %2276, label %1954, !dx.controlflow.hints !50

; <label>:1954                                    ; preds = %1916
  %1955 = fadd fast float %1352, %1343
  %1956 = fadd fast float %1955, %1337
  %1957 = fadd fast float %1353, %1345
  %1958 = fadd fast float %1957, %1338
  %1959 = fadd fast float %1354, %1347
  %1960 = fadd fast float %1959, %1339
  %1961 = fmul fast float %1309, %95
  %1962 = fmul fast float %1956, %1961
  %1963 = fmul fast float %1309, %95
  %1964 = fmul fast float %1958, %1963
  %1965 = fmul fast float %1309, %95
  %1966 = fmul fast float %1960, %1965
  %1967 = fmul fast float %1966, %1350
  %1968 = fmul fast float %1964, %1351
  %1969 = fsub fast float %1967, %1968
  %1970 = fmul fast float %1962, %1351
  %1971 = fmul fast float %1966, %1349
  %1972 = fsub fast float %1970, %1971
  %1973 = fmul fast float %1964, %1349
  %1974 = fmul fast float %1962, %1350
  %1975 = fsub fast float %1973, %1974
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.unary.f32(i32 6, float %1979)  ; FAbs(value)
  %1981 = fadd fast float %1980, %1978
  %1982 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %1984 = fadd fast float %1981, %1983
  %1985 = fsub fast float %1976, %1984
  %1986 = fadd fast float %1984, %1976
  %1987 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = call float @dx.op.unary.f32(i32 6, float %1988)  ; FAbs(value)
  %1990 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1991 = call float @dx.op.unary.f32(i32 6, float %1990)  ; FAbs(value)
  %1992 = fadd fast float %1991, %1989
  %1993 = fsub fast float %1987, %1992
  %1994 = fadd fast float %1992, %1987
  %1995 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %1998 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %1969, float %1972, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %1999 = call float @dx.op.unary.f32(i32 6, float %1998)  ; FAbs(value)
  %2000 = fadd fast float %1999, %1997
  %2001 = fsub fast float %1995, %2000
  %2002 = fadd fast float %2000, %1995
  %2003 = fcmp fast olt float %2001, %1993
  %2004 = select i1 %2003, float %2001, float %1993
  %2005 = fcmp fast ogt float %2002, %1994
  %2006 = select i1 %2005, float %2002, float %1994
  %2007 = fcmp fast olt float %2006, %1985
  %2008 = fcmp fast olt float %1986, %2004
  %2009 = or i1 %2007, %2008
  br i1 %2009, label %2276, label %2010, !dx.controlflow.hints !51

; <label>:2010                                    ; preds = %1954
  %2011 = fmul fast float %1966, %1356
  %2012 = fmul fast float %1964, %1357
  %2013 = fsub fast float %2011, %2012
  %2014 = fmul fast float %1962, %1357
  %2015 = fmul fast float %1966, %1355
  %2016 = fsub fast float %2014, %2015
  %2017 = fmul fast float %1964, %1355
  %2018 = fmul fast float %1962, %1356
  %2019 = fsub fast float %2017, %2018
  %2020 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = call float @dx.op.unary.f32(i32 6, float %2021)  ; FAbs(value)
  %2023 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call float @dx.op.unary.f32(i32 6, float %2023)  ; FAbs(value)
  %2025 = fadd fast float %2024, %2022
  %2026 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2027 = call float @dx.op.unary.f32(i32 6, float %2026)  ; FAbs(value)
  %2028 = fadd fast float %2025, %2027
  %2029 = fsub fast float %2020, %2028
  %2030 = fadd fast float %2028, %2020
  %2031 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2032 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = call float @dx.op.unary.f32(i32 6, float %2032)  ; FAbs(value)
  %2034 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2035 = call float @dx.op.unary.f32(i32 6, float %2034)  ; FAbs(value)
  %2036 = fadd fast float %2035, %2033
  %2037 = fsub fast float %2031, %2036
  %2038 = fadd fast float %2036, %2031
  %2039 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = call float @dx.op.unary.f32(i32 6, float %2040)  ; FAbs(value)
  %2042 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2013, float %2016, float %2019)  ; Dot3(ax,ay,az,bx,by,bz)
  %2043 = call float @dx.op.unary.f32(i32 6, float %2042)  ; FAbs(value)
  %2044 = fadd fast float %2043, %2041
  %2045 = fsub fast float %2039, %2044
  %2046 = fadd fast float %2044, %2039
  %2047 = fcmp fast olt float %2045, %2037
  %2048 = select i1 %2047, float %2045, float %2037
  %2049 = fcmp fast ogt float %2046, %2038
  %2050 = select i1 %2049, float %2046, float %2038
  %2051 = fcmp fast olt float %2050, %2029
  %2052 = fcmp fast olt float %2030, %2048
  %2053 = or i1 %2051, %2052
  br i1 %2053, label %2276, label %2054, !dx.controlflow.hints !52

; <label>:2054                                    ; preds = %2010
  %2055 = fmul fast float %95, %1309
  %2056 = fmul fast float %2055, %1956
  %2057 = fsub fast float -0.000000e+00, %2056
  %2058 = fmul fast float %95, %1309
  %2059 = fmul fast float %2058, %1958
  %2060 = fsub fast float -0.000000e+00, %2059
  %2061 = fmul fast float %95, %1309
  %2062 = fmul fast float %2061, %1960
  %2063 = fsub fast float -0.000000e+00, %2062
  br label %2064

; <label>:2064                                    ; preds = %2115, %2054
  %2065 = phi float [ %1386, %2054 ], [ %2121, %2115 ]
  %2066 = phi float [ %1385, %2054 ], [ %2119, %2115 ]
  %2067 = phi float [ %1384, %2054 ], [ %2117, %2115 ]
  %2068 = phi i32 [ 0, %2054 ], [ %2113, %2115 ]
  %2069 = fmul fast float %2065, %2060
  %2070 = fmul fast float %2066, %2063
  %2071 = fsub fast float %2069, %2070
  %2072 = fmul fast float %2067, %2063
  %2073 = fmul fast float %2065, %2057
  %2074 = fsub fast float %2072, %2073
  %2075 = fmul fast float %2066, %2057
  %2076 = fmul fast float %2067, %2060
  %2077 = fsub fast float %2075, %2076
  %2078 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2080 = call float @dx.op.unary.f32(i32 6, float %2079)  ; FAbs(value)
  %2081 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2082 = call float @dx.op.unary.f32(i32 6, float %2081)  ; FAbs(value)
  %2083 = fadd fast float %2082, %2080
  %2084 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2085 = call float @dx.op.unary.f32(i32 6, float %2084)  ; FAbs(value)
  %2086 = fadd fast float %2083, %2085
  %2087 = fsub fast float %2078, %2086
  %2088 = fadd fast float %2086, %2078
  %2089 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2090 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2091 = call float @dx.op.unary.f32(i32 6, float %2090)  ; FAbs(value)
  %2092 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2093 = call float @dx.op.unary.f32(i32 6, float %2092)  ; FAbs(value)
  %2094 = fadd fast float %2093, %2091
  %2095 = fsub fast float %2089, %2094
  %2096 = fadd fast float %2094, %2089
  %2097 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2099 = call float @dx.op.unary.f32(i32 6, float %2098)  ; FAbs(value)
  %2100 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2071, float %2074, float %2077)  ; Dot3(ax,ay,az,bx,by,bz)
  %2101 = call float @dx.op.unary.f32(i32 6, float %2100)  ; FAbs(value)
  %2102 = fadd fast float %2101, %2099
  %2103 = fsub fast float %2097, %2102
  %2104 = fadd fast float %2102, %2097
  %2105 = fcmp fast olt float %2103, %2095
  %2106 = select i1 %2105, float %2103, float %2095
  %2107 = fcmp fast ogt float %2104, %2096
  %2108 = select i1 %2107, float %2104, float %2096
  %2109 = fcmp fast olt float %2108, %2087
  %2110 = fcmp fast olt float %2088, %2106
  %2111 = or i1 %2109, %2110
  br i1 %2111, label %2122, label %2112, !dx.controlflow.hints !44

; <label>:2112                                    ; preds = %2064
  %2113 = add nuw nsw i32 %2068, 1
  %2114 = icmp ult i32 %2113, 3
  br i1 %2114, label %2115, label %2122, !llvm.loop !45

; <label>:2115                                    ; preds = %2112
  %2116 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %2113
  %2117 = load float, float* %2116, align 4
  %2118 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %2113
  %2119 = load float, float* %2118, align 4
  %2120 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %2113
  %2121 = load float, float* %2120, align 4
  br label %2064

; <label>:2122                                    ; preds = %2112, %2064
  %2123 = phi i1 [ true, %2064 ], [ false, %2112 ]
  br i1 %2123, label %2276, label %2124, !dx.controlflow.hints !53

; <label>:2124                                    ; preds = %2122
  %2125 = fsub fast float %1343, %1352
  %2126 = fadd fast float %2125, %1337
  %2127 = fsub fast float %1345, %1353
  %2128 = fadd fast float %2127, %1338
  %2129 = fsub fast float %1347, %1354
  %2130 = fadd fast float %2129, %1339
  %2131 = fmul fast float %95, %1309
  %2132 = fmul fast float %2131, %2126
  %2133 = fsub fast float -0.000000e+00, %2132
  %2134 = fmul fast float %95, %1309
  %2135 = fmul fast float %2134, %2128
  %2136 = fsub fast float -0.000000e+00, %2135
  %2137 = fmul fast float %95, %1309
  %2138 = fmul fast float %2137, %2130
  %2139 = fsub fast float -0.000000e+00, %2138
  br label %2140

; <label>:2140                                    ; preds = %2191, %2124
  %2141 = phi float [ %1386, %2124 ], [ %2197, %2191 ]
  %2142 = phi float [ %1385, %2124 ], [ %2195, %2191 ]
  %2143 = phi float [ %1384, %2124 ], [ %2193, %2191 ]
  %2144 = phi i32 [ 0, %2124 ], [ %2189, %2191 ]
  %2145 = fmul fast float %2141, %2136
  %2146 = fmul fast float %2142, %2139
  %2147 = fsub fast float %2145, %2146
  %2148 = fmul fast float %2143, %2139
  %2149 = fmul fast float %2141, %2133
  %2150 = fsub fast float %2148, %2149
  %2151 = fmul fast float %2142, %2133
  %2152 = fmul fast float %2143, %2136
  %2153 = fsub fast float %2151, %2152
  %2154 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2156 = call float @dx.op.unary.f32(i32 6, float %2155)  ; FAbs(value)
  %2157 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2158 = call float @dx.op.unary.f32(i32 6, float %2157)  ; FAbs(value)
  %2159 = fadd fast float %2158, %2156
  %2160 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2161 = call float @dx.op.unary.f32(i32 6, float %2160)  ; FAbs(value)
  %2162 = fadd fast float %2159, %2161
  %2163 = fsub fast float %2154, %2162
  %2164 = fadd fast float %2162, %2154
  %2165 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = call float @dx.op.unary.f32(i32 6, float %2166)  ; FAbs(value)
  %2168 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2169 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2170 = fadd fast float %2169, %2167
  %2171 = fsub fast float %2165, %2170
  %2172 = fadd fast float %2170, %2165
  %2173 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2176 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2147, float %2150, float %2153)  ; Dot3(ax,ay,az,bx,by,bz)
  %2177 = call float @dx.op.unary.f32(i32 6, float %2176)  ; FAbs(value)
  %2178 = fadd fast float %2177, %2175
  %2179 = fsub fast float %2173, %2178
  %2180 = fadd fast float %2178, %2173
  %2181 = fcmp fast olt float %2179, %2171
  %2182 = select i1 %2181, float %2179, float %2171
  %2183 = fcmp fast ogt float %2180, %2172
  %2184 = select i1 %2183, float %2180, float %2172
  %2185 = fcmp fast olt float %2184, %2163
  %2186 = fcmp fast olt float %2164, %2182
  %2187 = or i1 %2185, %2186
  br i1 %2187, label %2198, label %2188, !dx.controlflow.hints !44

; <label>:2188                                    ; preds = %2140
  %2189 = add nuw nsw i32 %2144, 1
  %2190 = icmp ult i32 %2189, 3
  br i1 %2190, label %2191, label %2198, !llvm.loop !45

; <label>:2191                                    ; preds = %2188
  %2192 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %2189
  %2193 = load float, float* %2192, align 4
  %2194 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %2189
  %2195 = load float, float* %2194, align 4
  %2196 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %2189
  %2197 = load float, float* %2196, align 4
  br label %2140

; <label>:2198                                    ; preds = %2188, %2140
  %2199 = phi i1 [ true, %2140 ], [ false, %2188 ]
  br i1 %2199, label %2276, label %2200, !dx.controlflow.hints !54

; <label>:2200                                    ; preds = %2198
  %2201 = fsub fast float %1352, %1343
  %2202 = fadd fast float %2201, %1337
  %2203 = fsub fast float %1353, %1345
  %2204 = fadd fast float %2203, %1338
  %2205 = fsub fast float %1354, %1347
  %2206 = fadd fast float %2205, %1339
  %2207 = fmul fast float %95, %1309
  %2208 = fmul fast float %2207, %2202
  %2209 = fsub fast float -0.000000e+00, %2208
  %2210 = fmul fast float %95, %1309
  %2211 = fmul fast float %2210, %2204
  %2212 = fsub fast float -0.000000e+00, %2211
  %2213 = fmul fast float %95, %1309
  %2214 = fmul fast float %2213, %2206
  %2215 = fsub fast float -0.000000e+00, %2214
  br label %2216

; <label>:2216                                    ; preds = %2267, %2200
  %2217 = phi float [ %1386, %2200 ], [ %2273, %2267 ]
  %2218 = phi float [ %1385, %2200 ], [ %2271, %2267 ]
  %2219 = phi float [ %1384, %2200 ], [ %2269, %2267 ]
  %2220 = phi i32 [ 0, %2200 ], [ %2265, %2267 ]
  %2221 = fmul fast float %2217, %2212
  %2222 = fmul fast float %2218, %2215
  %2223 = fsub fast float %2221, %2222
  %2224 = fmul fast float %2219, %2215
  %2225 = fmul fast float %2217, %2209
  %2226 = fsub fast float %2224, %2225
  %2227 = fmul fast float %2218, %2209
  %2228 = fmul fast float %2219, %2212
  %2229 = fsub fast float %2227, %2228
  %2230 = call float @dx.op.dot3.f32(i32 55, float %1379, float %1380, float %1381, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = call float @dx.op.dot3.f32(i32 55, float %1384, float %1385, float %1386, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2233 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2234 = call float @dx.op.unary.f32(i32 6, float %2233)  ; FAbs(value)
  %2235 = fadd fast float %2234, %2232
  %2236 = call float @dx.op.dot3.f32(i32 55, float %1394, float %1395, float %1396, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2237 = call float @dx.op.unary.f32(i32 6, float %2236)  ; FAbs(value)
  %2238 = fadd fast float %2235, %2237
  %2239 = fsub fast float %2230, %2238
  %2240 = fadd fast float %2238, %2230
  %2241 = call float @dx.op.dot3.f32(i32 55, float %1340, float %1341, float %1342, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = call float @dx.op.dot3.f32(i32 55, float %1349, float %1350, float %1351, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2243 = call float @dx.op.unary.f32(i32 6, float %2242)  ; FAbs(value)
  %2244 = call float @dx.op.dot3.f32(i32 55, float %1355, float %1356, float %1357, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = call float @dx.op.unary.f32(i32 6, float %2244)  ; FAbs(value)
  %2246 = fadd fast float %2245, %2243
  %2247 = fsub fast float %2241, %2246
  %2248 = fadd fast float %2246, %2241
  %2249 = call float @dx.op.dot3.f32(i32 55, float %1358, float %1359, float %1360, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2250 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1363, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2251 = call float @dx.op.unary.f32(i32 6, float %2250)  ; FAbs(value)
  %2252 = call float @dx.op.dot3.f32(i32 55, float %1364, float %1365, float %1366, float %2223, float %2226, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = call float @dx.op.unary.f32(i32 6, float %2252)  ; FAbs(value)
  %2254 = fadd fast float %2253, %2251
  %2255 = fsub fast float %2249, %2254
  %2256 = fadd fast float %2254, %2249
  %2257 = fcmp fast olt float %2255, %2247
  %2258 = select i1 %2257, float %2255, float %2247
  %2259 = fcmp fast ogt float %2256, %2248
  %2260 = select i1 %2259, float %2256, float %2248
  %2261 = fcmp fast olt float %2260, %2239
  %2262 = fcmp fast olt float %2240, %2258
  %2263 = or i1 %2261, %2262
  br i1 %2263, label %2274, label %2264, !dx.controlflow.hints !44

; <label>:2264                                    ; preds = %2216
  %2265 = add nuw nsw i32 %2220, 1
  %2266 = icmp ult i32 %2265, 3
  br i1 %2266, label %2267, label %2274, !llvm.loop !45

; <label>:2267                                    ; preds = %2264
  %2268 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %2265
  %2269 = load float, float* %2268, align 4
  %2270 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %2265
  %2271 = load float, float* %2270, align 4
  %2272 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %2265
  %2273 = load float, float* %2272, align 4
  br label %2216

; <label>:2274                                    ; preds = %2264, %2216
  %2275 = phi i1 [ true, %2264 ], [ false, %2216 ]
  br label %2276

; <label>:2276                                    ; preds = %2274, %2198, %2122, %2010, %1954, %1916, %1914, %1844, %1776, %1666, %1610, %1566, %1528, %1510, %1475, %1440, %1376, %1373, %1238
  %2277 = phi i32 [ %1374, %1373 ], [ 0, %1238 ], [ %1374, %1376 ], [ %1374, %1440 ], [ %1374, %1475 ], [ %1374, %2198 ], [ %1374, %2122 ], [ %1374, %2010 ], [ %1374, %1954 ], [ %1374, %1916 ], [ %1374, %1914 ], [ %1374, %1844 ], [ %1374, %1776 ], [ %1374, %1666 ], [ %1374, %1610 ], [ %1374, %1566 ], [ %1374, %1528 ], [ %1374, %1510 ], [ %1374, %2274 ]
  %2278 = phi i1 [ false, %1373 ], [ false, %1238 ], [ false, %1376 ], [ false, %1440 ], [ false, %1475 ], [ false, %2198 ], [ false, %2122 ], [ false, %2010 ], [ false, %1954 ], [ false, %1916 ], [ false, %1914 ], [ false, %1844 ], [ false, %1776 ], [ false, %1666 ], [ false, %1610 ], [ false, %1566 ], [ false, %1528 ], [ true, %1510 ], [ %2275, %2274 ]
  %2279 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %2280 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %2278)  ; WaveActiveBallot(cond)
  %2281 = extractvalue %dx.types.fouri32 %2280, 0
  %2282 = extractvalue %dx.types.fouri32 %2280, 1
  %2283 = icmp ugt i32 %2279, 63
  br i1 %2283, label %2305, label %2284, !dx.controlflow.hints !55

; <label>:2284                                    ; preds = %2276
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2285 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %2285, label %2286, label %2289, !dx.controlflow.hints !56

; <label>:2286                                    ; preds = %2284
  %2287 = udiv i32 %11, %2279
  %2288 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %2287
  store i32 %2281, i32 addrspace(3)* %2288, align 4, !tbaa !32
  br label %2289

; <label>:2289                                    ; preds = %2286, %2284
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2290 = icmp eq i32 %2279, 32
  br i1 %2290, label %2291, label %2294, !dx.controlflow.hints !61

; <label>:2291                                    ; preds = %2289
  %2292 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32
  %2293 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32
  br label %2305

; <label>:2294                                    ; preds = %2289
  %2295 = icmp eq i32 %2279, 16
  br i1 %2295, label %2296, label %2305, !dx.controlflow.hints !62

; <label>:2296                                    ; preds = %2294
  %2297 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32
  %2298 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32
  %2299 = shl i32 %2298, 16
  %2300 = or i32 %2299, %2297
  %2301 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !32
  %2302 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !32
  %2303 = shl i32 %2302, 16
  %2304 = or i32 %2303, %2301
  br label %2305

; <label>:2305                                    ; preds = %2296, %2294, %2291, %2276
  %2306 = phi i32 [ %2292, %2291 ], [ %2300, %2296 ], [ 0, %2294 ], [ %2281, %2276 ]
  %2307 = phi i32 [ %2293, %2291 ], [ %2304, %2296 ], [ 0, %2294 ], [ %2282, %2276 ]
  %2308 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %2306, i32* %2308, align 4
  %2309 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %2307, i32* %2309, align 4
  %2310 = icmp eq i32 %85, 5
  %2311 = and i32 %87, 31
  %2312 = shl i32 1, %2311
  %2313 = add i32 %2312, -1
  %2314 = select i1 %2310, i32 -1, i32 %2313
  %2315 = getelementptr [2 x i32], [2 x i32]* %20, i32 0, i32 %1274
  %2316 = load i32, i32* %2315, align 4, !tbaa !32
  %2317 = and i32 %1273, 31
  %2318 = lshr i32 %2316, %2317
  %2319 = and i32 %2318, %2314
  %2320 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2319)  ; Countbits(value)
  %2321 = icmp eq i32 %11, 0
  br i1 %2321, label %2322, label %2323, !dx.controlflow.hints !70

; <label>:2322                                    ; preds = %2305
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !32
  br label %2323

; <label>:2323                                    ; preds = %2322, %2305
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2324 = icmp eq i32 %1272, 0
  br i1 %2324, label %2325, label %2330, !dx.controlflow.hints !71

; <label>:2325                                    ; preds = %2323
  %2326 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1270
  br i1 %1284, label %2329, label %2327, !dx.controlflow.hints !72

; <label>:2327                                    ; preds = %2325
  %2328 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %2320 seq_cst
  store i32 %2328, i32 addrspace(3)* %2326, align 4, !tbaa !32
  br label %2330

; <label>:2329                                    ; preds = %2325
  store i32 0, i32 addrspace(3)* %2326, align 4, !tbaa !32
  br label %2330

; <label>:2330                                    ; preds = %2329, %2327, %2323
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2321, label %2331, label %2334, !dx.controlflow.hints !73

; <label>:2331                                    ; preds = %2330
  %2332 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !32
  %2333 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1279, i32 0, i32 undef, i32 %2332)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %2333, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !32
  br label %2334

; <label>:2334                                    ; preds = %2331, %2330
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1284, label %2383, label %2335, !dx.controlflow.hints !74

; <label>:2335                                    ; preds = %2334
  %2336 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1270
  %2337 = load i32, i32 addrspace(3)* %2336, align 4, !tbaa !32
  %2338 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !32
  %2339 = add i32 %2338, %2337
  %2340 = and i32 %1272, 31
  %2341 = shl i32 1, %2340
  %2342 = and i32 %2319, %2341
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2352, label %2344, !dx.controlflow.hints !75

; <label>:2344                                    ; preds = %2335
  %2345 = add i32 %2341, -1
  %2346 = and i32 %2319, %2345
  %2347 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2346)  ; Countbits(value)
  %2348 = add i32 %2347, %2339
  %2349 = icmp ult i32 %2348, %96
  br i1 %2349, label %2350, label %2352, !dx.controlflow.hints !76

; <label>:2350                                    ; preds = %2344
  %2351 = shl i32 %2348, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2351, i32 undef, i32 %2277, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2352

; <label>:2352                                    ; preds = %2350, %2344, %2335
  br i1 %2324, label %2353, label %2383, !dx.controlflow.hints !77

; <label>:2353                                    ; preds = %2352
  %2354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.i32 %2354, 0
  %2356 = icmp ugt i32 %2355, %2339
  %2357 = icmp ne i32 %2320, 0
  %2358 = and i1 %2357, %2356
  br i1 %2358, label %2359, label %2383, !dx.controlflow.hints !65

; <label>:2359                                    ; preds = %2353
  %2360 = extractvalue %dx.types.CBufRet.i32 %2354, 2
  %2361 = sub i32 %2355, %2339
  %2362 = call i32 @dx.op.binary.i32(i32 40, i32 %2320, i32 %2361)  ; UMin(a,b)
  %2363 = add i32 %2362, -1
  %2364 = lshr i32 %2363, 1
  %2365 = or i32 %2364, %2363
  %2366 = lshr i32 %2365, 2
  %2367 = or i32 %2366, %2365
  %2368 = lshr i32 %2367, 4
  %2369 = or i32 %2368, %2367
  %2370 = lshr i32 %2369, 8
  %2371 = or i32 %2370, %2369
  %2372 = lshr i32 %2371, 16
  %2373 = or i32 %2372, %2371
  %2374 = add i32 %2373, 1
  %2375 = call i32 @dx.op.binary.i32(i32 40, i32 %2374, i32 64)  ; UMin(a,b)
  %2376 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2375)  ; FirstbitLo(value)
  %2377 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %2376, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2378 = lshr i32 %2377, 3
  %2379 = icmp ult i32 %2378, %2360
  br i1 %2379, label %2380, label %2383, !dx.controlflow.hints !66

; <label>:2380                                    ; preds = %2359
  %2381 = mul i32 %2376, %2360
  %2382 = add i32 %2378, %2381
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2382, i32 0, i32 %1269, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2382, i32 4, i32 %2339, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %2382, i32 8, i32 %2362, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2383

; <label>:2383                                    ; preds = %2380, %2359, %2353, %2352, %2334, %1235, %1214, %1208, %1205
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
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
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
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!59 = distinct !{!59, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!60 = distinct !{!60, !59, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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

