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
; shader hash: d0fad1997ce80716956a983a50ca7cc4
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
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
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
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = fadd fast float %61, 5.000000e-01
  %68 = fadd fast float %62, 5.000000e-01
  %69 = fmul fast float %67, 2.000000e+00
  %70 = fmul fast float %69, %25
  %71 = fmul fast float %68, 2.000000e+00
  %72 = fmul fast float %71, %26
  %73 = fadd fast float %70, -1.000000e+00
  %74 = fsub fast float 1.000000e+00, %72
  %75 = fmul fast float %27, %63
  %76 = fsub fast float %59, %60
  %77 = fmul fast float %75, %76
  %78 = fadd fast float %77, %60
  %79 = fadd fast float %63, 1.000000e+00
  %80 = fmul fast float %27, %79
  %81 = fmul fast float %80, %76
  %82 = fadd fast float %81, %60
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 0
  %89 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %90 = extractvalue %dx.types.CBufRet.f32 %87, 2
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fmul fast float %84, %73
  %96 = fmul fast float %85, %73
  %97 = fmul fast float %86, %73
  %98 = fmul fast float %88, %74
  %99 = fmul fast float %89, %74
  %100 = fmul fast float %90, %74
  %101 = fadd fast float %98, %95
  %102 = fadd fast float %99, %96
  %103 = fadd fast float %100, %97
  %104 = fadd fast float %101, %92
  %105 = fadd fast float %102, %93
  %106 = fadd fast float %103, %94
  %107 = fmul fast float %104, %78
  %108 = fmul fast float %105, %78
  %109 = fmul fast float %106, %78
  %110 = fmul fast float %84, %65
  %111 = fsub fast float -0.000000e+00, %110
  %112 = fmul fast float %85, %65
  %113 = fsub fast float -0.000000e+00, %112
  %114 = fmul fast float %86, %65
  %115 = fsub fast float -0.000000e+00, %114
  %116 = fmul fast float %110, %78
  %117 = fmul fast float %112, %78
  %118 = fmul fast float %114, %78
  %119 = fmul fast float %88, %66
  %120 = fmul fast float %89, %66
  %121 = fmul fast float %90, %66
  %122 = fmul fast float %119, %78
  %123 = fmul fast float %120, %78
  %124 = fmul fast float %121, %78
  %125 = fmul fast float %104, %82
  %126 = fmul fast float %105, %82
  %127 = fmul fast float %106, %82
  %128 = fmul fast float %110, %82
  %129 = fmul fast float %112, %82
  %130 = fmul fast float %114, %82
  %131 = fmul fast float %119, %82
  %132 = fmul fast float %120, %82
  %133 = fmul fast float %121, %82
  %134 = add i32 %20, 63
  %135 = and i32 %134, -64
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %1101, label %137

; <label>:137                                     ; preds = %56
  br label %138

; <label>:138                                     ; preds = %1095, %137
  %139 = phi i32 [ %1097, %1095 ], [ 0, %137 ]
  %140 = phi i32 [ %1098, %1095 ], [ 0, %137 ]
  %141 = add i32 %140, %8
  %142 = icmp ult i32 %141, %20
  br i1 %142, label %143, label %1043, !dx.controlflow.hints !27

; <label>:143                                     ; preds = %138
  %144 = mul i32 %141, 48
  %145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = extractvalue %dx.types.ResRet.f32 %145, 1
  %148 = extractvalue %dx.types.ResRet.f32 %145, 2
  %149 = or i32 %144, 12
  %150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = add i32 %144, 24
  %155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %154, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = add i32 %144, 36
  %160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = extractvalue %dx.types.ResRet.f32 %160, 1
  %163 = extractvalue %dx.types.ResRet.f32 %160, 2
  %164 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 0
  %165 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 0
  %166 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 0
  store float %151, float* %164, align 4
  store float %152, float* %165, align 4
  store float %153, float* %166, align 4
  %167 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 1
  %168 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 1
  %169 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 1
  store float %156, float* %167, align 4
  store float %157, float* %168, align 4
  store float %158, float* %169, align 4
  %170 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 2
  %171 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 2
  %172 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 2
  store float %161, float* %170, align 4
  store float %162, float* %171, align 4
  store float %163, float* %172, align 4
  %173 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %176 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %177 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %178 = fadd fast float %177, %175
  %179 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = fadd fast float %178, %180
  %182 = fsub fast float %173, %181
  %183 = fadd fast float %181, %173
  %184 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %186 = call float @dx.op.unary.f32(i32 6, float %185)  ; FAbs(value)
  %187 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %189 = fadd fast float %188, %186
  %190 = fsub fast float %184, %189
  %191 = fadd fast float %189, %184
  %192 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %193 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fadd fast float %196, %194
  %198 = fsub fast float %192, %197
  %199 = fadd fast float %197, %192
  %200 = fcmp fast olt float %198, %190
  %201 = select i1 %200, float %198, float %190
  %202 = fcmp fast ogt float %199, %191
  %203 = select i1 %202, float %199, float %191
  %204 = fcmp fast olt float %203, %182
  %205 = fcmp fast olt float %183, %201
  %206 = or i1 %204, %205
  br i1 %206, label %1043, label %207, !dx.controlflow.hints !28

; <label>:207                                     ; preds = %143
  %208 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %212 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %213 = fadd fast float %212, %210
  %214 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = fadd fast float %213, %215
  %217 = fsub fast float %208, %216
  %218 = fadd fast float %216, %208
  %219 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %222 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %223 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %224 = fadd fast float %223, %221
  %225 = fsub fast float %219, %224
  %226 = fadd fast float %224, %219
  %227 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %228 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %230 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %231 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %232 = fadd fast float %231, %229
  %233 = fsub fast float %227, %232
  %234 = fadd fast float %232, %227
  %235 = fcmp fast olt float %233, %225
  %236 = select i1 %235, float %233, float %225
  %237 = fcmp fast ogt float %234, %226
  %238 = select i1 %237, float %234, float %226
  %239 = fcmp fast olt float %238, %217
  %240 = fcmp fast olt float %218, %236
  %241 = or i1 %239, %240
  br i1 %241, label %1043, label %242, !dx.controlflow.hints !28

; <label>:242                                     ; preds = %207
  %243 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %245 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %246 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %247 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %248 = fadd fast float %247, %245
  %249 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %250 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %251 = fadd fast float %248, %250
  %252 = fsub fast float %243, %251
  %253 = fadd fast float %251, %243
  %254 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %255 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %256 = call float @dx.op.unary.f32(i32 6, float %255)  ; FAbs(value)
  %257 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %258 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %259 = fadd fast float %258, %256
  %260 = fsub fast float %254, %259
  %261 = fadd fast float %259, %254
  %262 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %263 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %264 = call float @dx.op.unary.f32(i32 6, float %263)  ; FAbs(value)
  %265 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %266 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %267 = fadd fast float %266, %264
  %268 = fsub fast float %262, %267
  %269 = fadd fast float %267, %262
  %270 = fcmp fast olt float %268, %260
  %271 = select i1 %270, float %268, float %260
  %272 = fcmp fast ogt float %269, %261
  %273 = select i1 %272, float %269, float %261
  %274 = fcmp fast olt float %273, %252
  %275 = fcmp fast olt float %253, %271
  %276 = or i1 %274, %275
  br i1 %276, label %1043, label %277, !dx.controlflow.hints !28

; <label>:277                                     ; preds = %242
  %278 = fcmp fast ole float %182, %201
  %279 = fcmp fast ole float %203, %183
  %280 = and i1 %278, %279
  %281 = zext i1 %280 to i32
  %282 = shl nuw nsw i32 %281, 1
  %283 = fcmp fast ole float %217, %236
  %284 = fcmp fast ole float %238, %218
  %285 = and i1 %283, %284
  %286 = zext i1 %285 to i32
  %287 = or i32 %286, %282
  %288 = shl nuw nsw i32 %287, 1
  %289 = fcmp fast ole float %252, %271
  %290 = fcmp fast ole float %273, %253
  %291 = and i1 %289, %290
  %292 = zext i1 %291 to i32
  %293 = or i32 %292, %288
  %294 = icmp eq i32 %293, 7
  br i1 %294, label %1043, label %295, !dx.controlflow.hints !29

; <label>:295                                     ; preds = %277
  %296 = fsub fast float %146, %107
  %297 = fsub fast float %147, %108
  %298 = fsub fast float %148, %109
  %299 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = call float @dx.op.unary.f32(i32 6, float %300)  ; FAbs(value)
  %302 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = call float @dx.op.unary.f32(i32 6, float %302)  ; FAbs(value)
  %304 = fadd fast float %303, %301
  %305 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %307 = fadd fast float %304, %306
  %308 = fsub fast float %299, %307
  %309 = fadd fast float %307, %299
  %310 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = call float @dx.op.unary.f32(i32 6, float %311)  ; FAbs(value)
  %313 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = fadd fast float %314, %312
  %316 = fsub fast float %310, %315
  %317 = fadd fast float %315, %310
  %318 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %296, float %297, float %298)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %323 = fadd fast float %322, %320
  %324 = fsub fast float %318, %323
  %325 = fadd fast float %323, %318
  %326 = fcmp fast olt float %324, %316
  %327 = select i1 %326, float %324, float %316
  %328 = fcmp fast ogt float %325, %317
  %329 = select i1 %328, float %325, float %317
  %330 = fcmp fast olt float %329, %308
  %331 = fcmp fast olt float %309, %327
  %332 = or i1 %330, %331
  br i1 %332, label %1043, label %333, !dx.controlflow.hints !30

; <label>:333                                     ; preds = %295
  %334 = fmul fast float %124, %117
  %335 = fmul fast float %123, %118
  %336 = fsub fast float %334, %335
  %337 = fmul fast float %122, %118
  %338 = fmul fast float %124, %116
  %339 = fsub fast float %337, %338
  %340 = fmul fast float %123, %116
  %341 = fmul fast float %122, %117
  %342 = fsub fast float %340, %341
  %343 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %347 = call float @dx.op.unary.f32(i32 6, float %346)  ; FAbs(value)
  %348 = fadd fast float %347, %345
  %349 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %351 = fadd fast float %348, %350
  %352 = fsub fast float %343, %351
  %353 = fadd fast float %351, %343
  %354 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %355 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = call float @dx.op.unary.f32(i32 6, float %355)  ; FAbs(value)
  %357 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = call float @dx.op.unary.f32(i32 6, float %357)  ; FAbs(value)
  %359 = fadd fast float %358, %356
  %360 = fsub fast float %354, %359
  %361 = fadd fast float %359, %354
  %362 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %365 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %336, float %339, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = call float @dx.op.unary.f32(i32 6, float %365)  ; FAbs(value)
  %367 = fadd fast float %366, %364
  %368 = fsub fast float %362, %367
  %369 = fadd fast float %367, %362
  %370 = fcmp fast olt float %368, %360
  %371 = select i1 %370, float %368, float %360
  %372 = fcmp fast ogt float %369, %361
  %373 = select i1 %372, float %369, float %361
  %374 = fcmp fast olt float %373, %352
  %375 = fcmp fast olt float %353, %371
  %376 = or i1 %374, %375
  br i1 %376, label %1043, label %377, !dx.controlflow.hints !31

; <label>:377                                     ; preds = %333
  %378 = fsub fast float %111, %119
  %379 = fadd fast float %378, %104
  %380 = fsub fast float %113, %120
  %381 = fadd fast float %380, %105
  %382 = fsub fast float %115, %121
  %383 = fadd fast float %382, %106
  %384 = fmul fast float %76, %27
  %385 = fmul fast float %379, %384
  %386 = fmul fast float %76, %27
  %387 = fmul fast float %381, %386
  %388 = fmul fast float %76, %27
  %389 = fmul fast float %383, %388
  %390 = fmul fast float %389, %117
  %391 = fmul fast float %387, %118
  %392 = fsub fast float %390, %391
  %393 = fmul fast float %385, %118
  %394 = fmul fast float %389, %116
  %395 = fsub fast float %393, %394
  %396 = fmul fast float %387, %116
  %397 = fmul fast float %385, %117
  %398 = fsub fast float %396, %397
  %399 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %401 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %402 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %403 = call float @dx.op.unary.f32(i32 6, float %402)  ; FAbs(value)
  %404 = fadd fast float %403, %401
  %405 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = call float @dx.op.unary.f32(i32 6, float %405)  ; FAbs(value)
  %407 = fadd fast float %404, %406
  %408 = fsub fast float %399, %407
  %409 = fadd fast float %407, %399
  %410 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %411 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %412 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %413 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = call float @dx.op.unary.f32(i32 6, float %413)  ; FAbs(value)
  %415 = fadd fast float %414, %412
  %416 = fsub fast float %410, %415
  %417 = fadd fast float %415, %410
  %418 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %419 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %420 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %421 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %392, float %395, float %398)  ; Dot3(ax,ay,az,bx,by,bz)
  %422 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  %423 = fadd fast float %422, %420
  %424 = fsub fast float %418, %423
  %425 = fadd fast float %423, %418
  %426 = fcmp fast olt float %424, %416
  %427 = select i1 %426, float %424, float %416
  %428 = fcmp fast ogt float %425, %417
  %429 = select i1 %428, float %425, float %417
  %430 = fcmp fast olt float %429, %408
  %431 = fcmp fast olt float %409, %427
  %432 = or i1 %430, %431
  br i1 %432, label %1043, label %433, !dx.controlflow.hints !32

; <label>:433                                     ; preds = %377
  %434 = fmul fast float %389, %123
  %435 = fmul fast float %387, %124
  %436 = fsub fast float %434, %435
  %437 = fmul fast float %385, %124
  %438 = fmul fast float %389, %122
  %439 = fsub fast float %437, %438
  %440 = fmul fast float %387, %122
  %441 = fmul fast float %385, %123
  %442 = fsub fast float %440, %441
  %443 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  %446 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %447 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %448 = fadd fast float %447, %445
  %449 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  %451 = fadd fast float %448, %450
  %452 = fsub fast float %443, %451
  %453 = fadd fast float %451, %443
  %454 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  %457 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  %459 = fadd fast float %458, %456
  %460 = fsub fast float %454, %459
  %461 = fadd fast float %459, %454
  %462 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %464 = call float @dx.op.unary.f32(i32 6, float %463)  ; FAbs(value)
  %465 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %436, float %439, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  %467 = fadd fast float %466, %464
  %468 = fsub fast float %462, %467
  %469 = fadd fast float %467, %462
  %470 = fcmp fast olt float %468, %460
  %471 = select i1 %470, float %468, float %460
  %472 = fcmp fast ogt float %469, %461
  %473 = select i1 %472, float %469, float %461
  %474 = fcmp fast olt float %473, %452
  %475 = fcmp fast olt float %453, %471
  %476 = or i1 %474, %475
  br i1 %476, label %1043, label %477, !dx.controlflow.hints !33

; <label>:477                                     ; preds = %433
  %478 = fmul fast float %65, -2.000000e+00
  %479 = fmul fast float %478, %84
  %480 = fmul fast float %479, %78
  %481 = fmul fast float %478, %85
  %482 = fmul fast float %481, %78
  %483 = fmul fast float %478, %86
  %484 = fmul fast float %483, %78
  br label %485

; <label>:485                                     ; preds = %536, %477
  %486 = phi float [ %153, %477 ], [ %542, %536 ]
  %487 = phi float [ %152, %477 ], [ %540, %536 ]
  %488 = phi float [ %151, %477 ], [ %538, %536 ]
  %489 = phi i32 [ 0, %477 ], [ %534, %536 ]
  %490 = fmul fast float %486, %482
  %491 = fmul fast float %487, %484
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %488, %484
  %494 = fmul fast float %486, %480
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %487, %480
  %497 = fmul fast float %488, %482
  %498 = fsub fast float %496, %497
  %499 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %502 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %503 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  %504 = fadd fast float %503, %501
  %505 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  %507 = fadd fast float %504, %506
  %508 = fsub fast float %499, %507
  %509 = fadd fast float %507, %499
  %510 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %511 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = call float @dx.op.unary.f32(i32 6, float %511)  ; FAbs(value)
  %513 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %514 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %515 = fadd fast float %514, %512
  %516 = fsub fast float %510, %515
  %517 = fadd fast float %515, %510
  %518 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %519 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %521 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %492, float %495, float %498)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  %523 = fadd fast float %522, %520
  %524 = fsub fast float %518, %523
  %525 = fadd fast float %523, %518
  %526 = fcmp fast olt float %524, %516
  %527 = select i1 %526, float %524, float %516
  %528 = fcmp fast ogt float %525, %517
  %529 = select i1 %528, float %525, float %517
  %530 = fcmp fast olt float %529, %508
  %531 = fcmp fast olt float %509, %527
  %532 = or i1 %530, %531
  br i1 %532, label %543, label %533, !dx.controlflow.hints !34

; <label>:533                                     ; preds = %485
  %534 = add nuw nsw i32 %489, 1
  %535 = icmp ult i32 %534, 3
  br i1 %535, label %536, label %543, !llvm.loop !35

; <label>:536                                     ; preds = %533
  %537 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %534
  %538 = load float, float* %537, align 4
  %539 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %534
  %540 = load float, float* %539, align 4
  %541 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %534
  %542 = load float, float* %541, align 4
  br label %485

; <label>:543                                     ; preds = %533, %485
  %544 = phi i1 [ true, %485 ], [ false, %533 ]
  br i1 %544, label %1043, label %545, !dx.controlflow.hints !37

; <label>:545                                     ; preds = %543
  %546 = fmul fast float %78, 2.000000e+00
  %547 = fmul fast float %119, %546
  %548 = fsub fast float -0.000000e+00, %547
  %549 = fmul fast float %120, %546
  %550 = fsub fast float -0.000000e+00, %549
  %551 = fmul fast float %121, %546
  %552 = fsub fast float -0.000000e+00, %551
  br label %553

; <label>:553                                     ; preds = %604, %545
  %554 = phi float [ %153, %545 ], [ %610, %604 ]
  %555 = phi float [ %152, %545 ], [ %608, %604 ]
  %556 = phi float [ %151, %545 ], [ %606, %604 ]
  %557 = phi i32 [ 0, %545 ], [ %602, %604 ]
  %558 = fmul fast float %554, %550
  %559 = fmul fast float %555, %552
  %560 = fsub fast float %558, %559
  %561 = fmul fast float %556, %552
  %562 = fmul fast float %554, %548
  %563 = fsub fast float %561, %562
  %564 = fmul fast float %555, %548
  %565 = fmul fast float %556, %550
  %566 = fsub fast float %564, %565
  %567 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = call float @dx.op.unary.f32(i32 6, float %568)  ; FAbs(value)
  %570 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %572 = fadd fast float %571, %569
  %573 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 6, float %573)  ; FAbs(value)
  %575 = fadd fast float %572, %574
  %576 = fsub fast float %567, %575
  %577 = fadd fast float %575, %567
  %578 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %579 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %581 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %582 = call float @dx.op.unary.f32(i32 6, float %581)  ; FAbs(value)
  %583 = fadd fast float %582, %580
  %584 = fsub fast float %578, %583
  %585 = fadd fast float %583, %578
  %586 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = call float @dx.op.unary.f32(i32 6, float %587)  ; FAbs(value)
  %589 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %560, float %563, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %591 = fadd fast float %590, %588
  %592 = fsub fast float %586, %591
  %593 = fadd fast float %591, %586
  %594 = fcmp fast olt float %592, %584
  %595 = select i1 %594, float %592, float %584
  %596 = fcmp fast ogt float %593, %585
  %597 = select i1 %596, float %593, float %585
  %598 = fcmp fast olt float %597, %576
  %599 = fcmp fast olt float %577, %595
  %600 = or i1 %598, %599
  br i1 %600, label %611, label %601, !dx.controlflow.hints !34

; <label>:601                                     ; preds = %553
  %602 = add nuw nsw i32 %557, 1
  %603 = icmp ult i32 %602, 3
  br i1 %603, label %604, label %611, !llvm.loop !35

; <label>:604                                     ; preds = %601
  %605 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %602
  %606 = load float, float* %605, align 4
  %607 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %602
  %608 = load float, float* %607, align 4
  %609 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %602
  %610 = load float, float* %609, align 4
  br label %553

; <label>:611                                     ; preds = %601, %553
  %612 = phi i1 [ true, %553 ], [ false, %601 ]
  br i1 %612, label %1043, label %613, !dx.controlflow.hints !38

; <label>:613                                     ; preds = %611
  %614 = fmul fast float %27, %76
  %615 = fmul fast float %614, %379
  %616 = fsub fast float -0.000000e+00, %615
  %617 = fmul fast float %27, %76
  %618 = fmul fast float %617, %381
  %619 = fsub fast float -0.000000e+00, %618
  %620 = fmul fast float %27, %76
  %621 = fmul fast float %620, %383
  %622 = fsub fast float -0.000000e+00, %621
  br label %623

; <label>:623                                     ; preds = %674, %613
  %624 = phi float [ %153, %613 ], [ %680, %674 ]
  %625 = phi float [ %152, %613 ], [ %678, %674 ]
  %626 = phi float [ %151, %613 ], [ %676, %674 ]
  %627 = phi i32 [ 0, %613 ], [ %672, %674 ]
  %628 = fmul fast float %624, %619
  %629 = fmul fast float %625, %622
  %630 = fsub fast float %628, %629
  %631 = fmul fast float %626, %622
  %632 = fmul fast float %624, %616
  %633 = fsub fast float %631, %632
  %634 = fmul fast float %625, %616
  %635 = fmul fast float %626, %619
  %636 = fsub fast float %634, %635
  %637 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %639 = call float @dx.op.unary.f32(i32 6, float %638)  ; FAbs(value)
  %640 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %642 = fadd fast float %641, %639
  %643 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %645 = fadd fast float %642, %644
  %646 = fsub fast float %637, %645
  %647 = fadd fast float %645, %637
  %648 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %651 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %652 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %653 = fadd fast float %652, %650
  %654 = fsub fast float %648, %653
  %655 = fadd fast float %653, %648
  %656 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.unary.f32(i32 6, float %657)  ; FAbs(value)
  %659 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %630, float %633, float %636)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.unary.f32(i32 6, float %659)  ; FAbs(value)
  %661 = fadd fast float %660, %658
  %662 = fsub fast float %656, %661
  %663 = fadd fast float %661, %656
  %664 = fcmp fast olt float %662, %654
  %665 = select i1 %664, float %662, float %654
  %666 = fcmp fast ogt float %663, %655
  %667 = select i1 %666, float %663, float %655
  %668 = fcmp fast olt float %667, %646
  %669 = fcmp fast olt float %647, %665
  %670 = or i1 %668, %669
  br i1 %670, label %681, label %671, !dx.controlflow.hints !34

; <label>:671                                     ; preds = %623
  %672 = add nuw nsw i32 %627, 1
  %673 = icmp ult i32 %672, 3
  br i1 %673, label %674, label %681, !llvm.loop !35

; <label>:674                                     ; preds = %671
  %675 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %672
  %676 = load float, float* %675, align 4
  %677 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %672
  %678 = load float, float* %677, align 4
  %679 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %672
  %680 = load float, float* %679, align 4
  br label %623

; <label>:681                                     ; preds = %671, %623
  %682 = phi i1 [ true, %623 ], [ false, %671 ]
  br i1 %682, label %1043, label %683, !dx.controlflow.hints !39

; <label>:683                                     ; preds = %681
  %684 = fsub fast float %146, %125
  %685 = fsub fast float %147, %126
  %686 = fsub fast float %148, %127
  %687 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %690 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = call float @dx.op.unary.f32(i32 6, float %690)  ; FAbs(value)
  %692 = fadd fast float %691, %689
  %693 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %695 = fadd fast float %692, %694
  %696 = fsub fast float %687, %695
  %697 = fadd fast float %695, %687
  %698 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %700 = call float @dx.op.unary.f32(i32 6, float %699)  ; FAbs(value)
  %701 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %703 = fadd fast float %702, %700
  %704 = fsub fast float %698, %703
  %705 = fadd fast float %703, %698
  %706 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %709 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %684, float %685, float %686)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %711 = fadd fast float %710, %708
  %712 = fsub fast float %706, %711
  %713 = fadd fast float %711, %706
  %714 = fcmp fast olt float %712, %704
  %715 = select i1 %714, float %712, float %704
  %716 = fcmp fast ogt float %713, %705
  %717 = select i1 %716, float %713, float %705
  %718 = fcmp fast olt float %717, %696
  %719 = fcmp fast olt float %697, %715
  %720 = or i1 %718, %719
  br i1 %720, label %1043, label %721, !dx.controlflow.hints !40

; <label>:721                                     ; preds = %683
  %722 = fadd fast float %119, %110
  %723 = fadd fast float %722, %104
  %724 = fadd fast float %120, %112
  %725 = fadd fast float %724, %105
  %726 = fadd fast float %121, %114
  %727 = fadd fast float %726, %106
  %728 = fmul fast float %76, %27
  %729 = fmul fast float %723, %728
  %730 = fmul fast float %76, %27
  %731 = fmul fast float %725, %730
  %732 = fmul fast float %76, %27
  %733 = fmul fast float %727, %732
  %734 = fmul fast float %733, %117
  %735 = fmul fast float %731, %118
  %736 = fsub fast float %734, %735
  %737 = fmul fast float %729, %118
  %738 = fmul fast float %733, %116
  %739 = fsub fast float %737, %738
  %740 = fmul fast float %731, %116
  %741 = fmul fast float %729, %117
  %742 = fsub fast float %740, %741
  %743 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %745 = call float @dx.op.unary.f32(i32 6, float %744)  ; FAbs(value)
  %746 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.unary.f32(i32 6, float %746)  ; FAbs(value)
  %748 = fadd fast float %747, %745
  %749 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = call float @dx.op.unary.f32(i32 6, float %749)  ; FAbs(value)
  %751 = fadd fast float %748, %750
  %752 = fsub fast float %743, %751
  %753 = fadd fast float %751, %743
  %754 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %757 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.unary.f32(i32 6, float %757)  ; FAbs(value)
  %759 = fadd fast float %758, %756
  %760 = fsub fast float %754, %759
  %761 = fadd fast float %759, %754
  %762 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.unary.f32(i32 6, float %763)  ; FAbs(value)
  %765 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %736, float %739, float %742)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %767 = fadd fast float %766, %764
  %768 = fsub fast float %762, %767
  %769 = fadd fast float %767, %762
  %770 = fcmp fast olt float %768, %760
  %771 = select i1 %770, float %768, float %760
  %772 = fcmp fast ogt float %769, %761
  %773 = select i1 %772, float %769, float %761
  %774 = fcmp fast olt float %773, %752
  %775 = fcmp fast olt float %753, %771
  %776 = or i1 %774, %775
  br i1 %776, label %1043, label %777, !dx.controlflow.hints !41

; <label>:777                                     ; preds = %721
  %778 = fmul fast float %733, %123
  %779 = fmul fast float %731, %124
  %780 = fsub fast float %778, %779
  %781 = fmul fast float %729, %124
  %782 = fmul fast float %733, %122
  %783 = fsub fast float %781, %782
  %784 = fmul fast float %731, %122
  %785 = fmul fast float %729, %123
  %786 = fsub fast float %784, %785
  %787 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = call float @dx.op.unary.f32(i32 6, float %788)  ; FAbs(value)
  %790 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %792 = fadd fast float %791, %789
  %793 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %795 = fadd fast float %792, %794
  %796 = fsub fast float %787, %795
  %797 = fadd fast float %795, %787
  %798 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %801 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 6, float %801)  ; FAbs(value)
  %803 = fadd fast float %802, %800
  %804 = fsub fast float %798, %803
  %805 = fadd fast float %803, %798
  %806 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %809 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %780, float %783, float %786)  ; Dot3(ax,ay,az,bx,by,bz)
  %810 = call float @dx.op.unary.f32(i32 6, float %809)  ; FAbs(value)
  %811 = fadd fast float %810, %808
  %812 = fsub fast float %806, %811
  %813 = fadd fast float %811, %806
  %814 = fcmp fast olt float %812, %804
  %815 = select i1 %814, float %812, float %804
  %816 = fcmp fast ogt float %813, %805
  %817 = select i1 %816, float %813, float %805
  %818 = fcmp fast olt float %817, %796
  %819 = fcmp fast olt float %797, %815
  %820 = or i1 %818, %819
  br i1 %820, label %1043, label %821, !dx.controlflow.hints !42

; <label>:821                                     ; preds = %777
  %822 = fmul fast float %27, %76
  %823 = fmul fast float %822, %723
  %824 = fsub fast float -0.000000e+00, %823
  %825 = fmul fast float %27, %76
  %826 = fmul fast float %825, %725
  %827 = fsub fast float -0.000000e+00, %826
  %828 = fmul fast float %27, %76
  %829 = fmul fast float %828, %727
  %830 = fsub fast float -0.000000e+00, %829
  br label %831

; <label>:831                                     ; preds = %882, %821
  %832 = phi float [ %153, %821 ], [ %888, %882 ]
  %833 = phi float [ %152, %821 ], [ %886, %882 ]
  %834 = phi float [ %151, %821 ], [ %884, %882 ]
  %835 = phi i32 [ 0, %821 ], [ %880, %882 ]
  %836 = fmul fast float %832, %827
  %837 = fmul fast float %833, %830
  %838 = fsub fast float %836, %837
  %839 = fmul fast float %834, %830
  %840 = fmul fast float %832, %824
  %841 = fsub fast float %839, %840
  %842 = fmul fast float %833, %824
  %843 = fmul fast float %834, %827
  %844 = fsub fast float %842, %843
  %845 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = call float @dx.op.unary.f32(i32 6, float %846)  ; FAbs(value)
  %848 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %850 = fadd fast float %849, %847
  %851 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = call float @dx.op.unary.f32(i32 6, float %851)  ; FAbs(value)
  %853 = fadd fast float %850, %852
  %854 = fsub fast float %845, %853
  %855 = fadd fast float %853, %845
  %856 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %859 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = call float @dx.op.unary.f32(i32 6, float %859)  ; FAbs(value)
  %861 = fadd fast float %860, %858
  %862 = fsub fast float %856, %861
  %863 = fadd fast float %861, %856
  %864 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %866 = call float @dx.op.unary.f32(i32 6, float %865)  ; FAbs(value)
  %867 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %838, float %841, float %844)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = call float @dx.op.unary.f32(i32 6, float %867)  ; FAbs(value)
  %869 = fadd fast float %868, %866
  %870 = fsub fast float %864, %869
  %871 = fadd fast float %869, %864
  %872 = fcmp fast olt float %870, %862
  %873 = select i1 %872, float %870, float %862
  %874 = fcmp fast ogt float %871, %863
  %875 = select i1 %874, float %871, float %863
  %876 = fcmp fast olt float %875, %854
  %877 = fcmp fast olt float %855, %873
  %878 = or i1 %876, %877
  br i1 %878, label %889, label %879, !dx.controlflow.hints !34

; <label>:879                                     ; preds = %831
  %880 = add nuw nsw i32 %835, 1
  %881 = icmp ult i32 %880, 3
  br i1 %881, label %882, label %889, !llvm.loop !35

; <label>:882                                     ; preds = %879
  %883 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %880
  %884 = load float, float* %883, align 4
  %885 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %880
  %886 = load float, float* %885, align 4
  %887 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %880
  %888 = load float, float* %887, align 4
  br label %831

; <label>:889                                     ; preds = %879, %831
  %890 = phi i1 [ true, %831 ], [ false, %879 ]
  br i1 %890, label %1043, label %891, !dx.controlflow.hints !43

; <label>:891                                     ; preds = %889
  %892 = fsub fast float %110, %119
  %893 = fadd fast float %892, %104
  %894 = fsub fast float %112, %120
  %895 = fadd fast float %894, %105
  %896 = fsub fast float %114, %121
  %897 = fadd fast float %896, %106
  %898 = fmul fast float %27, %76
  %899 = fmul fast float %898, %893
  %900 = fsub fast float -0.000000e+00, %899
  %901 = fmul fast float %27, %76
  %902 = fmul fast float %901, %895
  %903 = fsub fast float -0.000000e+00, %902
  %904 = fmul fast float %27, %76
  %905 = fmul fast float %904, %897
  %906 = fsub fast float -0.000000e+00, %905
  br label %907

; <label>:907                                     ; preds = %958, %891
  %908 = phi float [ %153, %891 ], [ %964, %958 ]
  %909 = phi float [ %152, %891 ], [ %962, %958 ]
  %910 = phi float [ %151, %891 ], [ %960, %958 ]
  %911 = phi i32 [ 0, %891 ], [ %956, %958 ]
  %912 = fmul fast float %908, %903
  %913 = fmul fast float %909, %906
  %914 = fsub fast float %912, %913
  %915 = fmul fast float %910, %906
  %916 = fmul fast float %908, %900
  %917 = fsub fast float %915, %916
  %918 = fmul fast float %909, %900
  %919 = fmul fast float %910, %903
  %920 = fsub fast float %918, %919
  %921 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %924 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %925 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %926 = fadd fast float %925, %923
  %927 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.unary.f32(i32 6, float %927)  ; FAbs(value)
  %929 = fadd fast float %926, %928
  %930 = fsub fast float %921, %929
  %931 = fadd fast float %929, %921
  %932 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %934 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %935 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = call float @dx.op.unary.f32(i32 6, float %935)  ; FAbs(value)
  %937 = fadd fast float %936, %934
  %938 = fsub fast float %932, %937
  %939 = fadd fast float %937, %932
  %940 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = call float @dx.op.unary.f32(i32 6, float %941)  ; FAbs(value)
  %943 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %914, float %917, float %920)  ; Dot3(ax,ay,az,bx,by,bz)
  %944 = call float @dx.op.unary.f32(i32 6, float %943)  ; FAbs(value)
  %945 = fadd fast float %944, %942
  %946 = fsub fast float %940, %945
  %947 = fadd fast float %945, %940
  %948 = fcmp fast olt float %946, %938
  %949 = select i1 %948, float %946, float %938
  %950 = fcmp fast ogt float %947, %939
  %951 = select i1 %950, float %947, float %939
  %952 = fcmp fast olt float %951, %930
  %953 = fcmp fast olt float %931, %949
  %954 = or i1 %952, %953
  br i1 %954, label %965, label %955, !dx.controlflow.hints !34

; <label>:955                                     ; preds = %907
  %956 = add nuw nsw i32 %911, 1
  %957 = icmp ult i32 %956, 3
  br i1 %957, label %958, label %965, !llvm.loop !35

; <label>:958                                     ; preds = %955
  %959 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %956
  %960 = load float, float* %959, align 4
  %961 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %956
  %962 = load float, float* %961, align 4
  %963 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %956
  %964 = load float, float* %963, align 4
  br label %907

; <label>:965                                     ; preds = %955, %907
  %966 = phi i1 [ true, %907 ], [ false, %955 ]
  br i1 %966, label %1043, label %967, !dx.controlflow.hints !44

; <label>:967                                     ; preds = %965
  %968 = fsub fast float %119, %110
  %969 = fadd fast float %968, %104
  %970 = fsub fast float %120, %112
  %971 = fadd fast float %970, %105
  %972 = fsub fast float %121, %114
  %973 = fadd fast float %972, %106
  %974 = fmul fast float %27, %76
  %975 = fmul fast float %974, %969
  %976 = fsub fast float -0.000000e+00, %975
  %977 = fmul fast float %27, %76
  %978 = fmul fast float %977, %971
  %979 = fsub fast float -0.000000e+00, %978
  %980 = fmul fast float %27, %76
  %981 = fmul fast float %980, %973
  %982 = fsub fast float -0.000000e+00, %981
  br label %983

; <label>:983                                     ; preds = %1034, %967
  %984 = phi float [ %153, %967 ], [ %1040, %1034 ]
  %985 = phi float [ %152, %967 ], [ %1038, %1034 ]
  %986 = phi float [ %151, %967 ], [ %1036, %1034 ]
  %987 = phi i32 [ 0, %967 ], [ %1032, %1034 ]
  %988 = fmul fast float %984, %979
  %989 = fmul fast float %985, %982
  %990 = fsub fast float %988, %989
  %991 = fmul fast float %986, %982
  %992 = fmul fast float %984, %976
  %993 = fsub fast float %991, %992
  %994 = fmul fast float %985, %976
  %995 = fmul fast float %986, %979
  %996 = fsub fast float %994, %995
  %997 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1000 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1002 = fadd fast float %1001, %999
  %1003 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call float @dx.op.unary.f32(i32 6, float %1003)  ; FAbs(value)
  %1005 = fadd fast float %1002, %1004
  %1006 = fsub fast float %997, %1005
  %1007 = fadd fast float %1005, %997
  %1008 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1010 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1011 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1013 = fadd fast float %1012, %1010
  %1014 = fsub fast float %1008, %1013
  %1015 = fadd fast float %1013, %1008
  %1016 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1019 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %990, float %993, float %996)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1021 = fadd fast float %1020, %1018
  %1022 = fsub fast float %1016, %1021
  %1023 = fadd fast float %1021, %1016
  %1024 = fcmp fast olt float %1022, %1014
  %1025 = select i1 %1024, float %1022, float %1014
  %1026 = fcmp fast ogt float %1023, %1015
  %1027 = select i1 %1026, float %1023, float %1015
  %1028 = fcmp fast olt float %1027, %1006
  %1029 = fcmp fast olt float %1007, %1025
  %1030 = or i1 %1028, %1029
  br i1 %1030, label %1041, label %1031, !dx.controlflow.hints !34

; <label>:1031                                    ; preds = %983
  %1032 = add nuw nsw i32 %987, 1
  %1033 = icmp ult i32 %1032, 3
  br i1 %1033, label %1034, label %1041, !llvm.loop !35

; <label>:1034                                    ; preds = %1031
  %1035 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1032
  %1036 = load float, float* %1035, align 4
  %1037 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1032
  %1038 = load float, float* %1037, align 4
  %1039 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1032
  %1040 = load float, float* %1039, align 4
  br label %983

; <label>:1041                                    ; preds = %1031, %983
  %1042 = phi i1 [ false, %983 ], [ true, %1031 ]
  br label %1043

; <label>:1043                                    ; preds = %1041, %965, %889, %777, %721, %683, %681, %611, %543, %433, %377, %333, %295, %277, %242, %207, %143, %138
  %1044 = phi i1 [ false, %138 ], [ true, %277 ], [ false, %295 ], [ false, %333 ], [ false, %377 ], [ false, %433 ], [ false, %543 ], [ false, %611 ], [ false, %681 ], [ false, %683 ], [ false, %721 ], [ false, %777 ], [ false, %889 ], [ false, %965 ], [ false, %242 ], [ false, %207 ], [ false, %143 ], [ %1042, %1041 ]
  %1045 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1044)  ; WaveActiveBallot(cond)
  %1046 = extractvalue %dx.types.fouri32 %1045, 0
  %1047 = extractvalue %dx.types.fouri32 %1045, 1
  %1048 = icmp ugt i32 %44, 63
  br i1 %1048, label %1070, label %1049, !dx.controlflow.hints !45

; <label>:1049                                    ; preds = %1043
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1050 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1050, label %1051, label %1054, !dx.controlflow.hints !46

; <label>:1051                                    ; preds = %1049
  %1052 = udiv i32 %8, %44
  %1053 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1052
  store i32 %1046, i32 addrspace(3)* %1053, align 4, !tbaa !23, !noalias !47
  br label %1054

; <label>:1054                                    ; preds = %1051, %1049
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1055 = icmp eq i32 %44, 32
  br i1 %1055, label %1056, label %1059, !dx.controlflow.hints !51

; <label>:1056                                    ; preds = %1054
  %1057 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !23, !noalias !47
  %1058 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !23, !noalias !47
  br label %1070

; <label>:1059                                    ; preds = %1054
  %1060 = icmp eq i32 %44, 16
  br i1 %1060, label %1061, label %1070, !dx.controlflow.hints !52

; <label>:1061                                    ; preds = %1059
  %1062 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !23, !noalias !47
  %1063 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !23, !noalias !47
  %1064 = shl i32 %1063, 16
  %1065 = or i32 %1064, %1062
  %1066 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !23, !noalias !47
  %1067 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !23, !noalias !47
  %1068 = shl i32 %1067, 16
  %1069 = or i32 %1068, %1066
  br label %1070

; <label>:1070                                    ; preds = %1061, %1059, %1056, %1043
  %1071 = phi i32 [ %1057, %1056 ], [ %1065, %1061 ], [ 0, %1059 ], [ %1046, %1043 ]
  %1072 = phi i32 [ %1058, %1056 ], [ %1069, %1061 ], [ 0, %1059 ], [ %1047, %1043 ]
  %1073 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1071)  ; Countbits(value)
  %1074 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1072)  ; Countbits(value)
  %1075 = and i32 %8, 32
  %1076 = and i32 %8, 31
  %1077 = shl i32 1, %1076
  %1078 = add i32 %1077, -1
  %1079 = icmp eq i32 %1075, 0
  %1080 = and i32 %1071, %1078
  %1081 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1080)  ; Countbits(value)
  %1082 = and i32 %1072, %1078
  %1083 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1082)  ; Countbits(value)
  %1084 = add i32 %1083, %1073
  %1085 = select i1 %1079, i32 %1081, i32 %1084
  %1086 = add i32 %1085, %139
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 1
  %1089 = icmp ult i32 %1086, %1088
  %1090 = and i1 %1044, %1089
  br i1 %1090, label %1091, label %1095, !dx.controlflow.hints !53

; <label>:1091                                    ; preds = %1070
  %1092 = add i32 %139, %57
  %1093 = add i32 %1092, %1085
  %1094 = shl i32 %1093, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1094, i32 undef, i32 %141, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1095

; <label>:1095                                    ; preds = %1091, %1070
  %1096 = add i32 %1073, %139
  %1097 = add i32 %1096, %1074
  %1098 = add nuw i32 %140, 64
  %1099 = icmp ult i32 %1098, %135
  br i1 %1099, label %138, label %1100

; <label>:1100                                    ; preds = %1095
  br label %1101

; <label>:1101                                    ; preds = %1100, %56
  %1102 = phi i32 [ 0, %56 ], [ %1097, %1100 ]
  %1103 = and i1 %35, %34
  br i1 %1103, label %1104, label %1134, !dx.controlflow.hints !54

; <label>:1104                                    ; preds = %1101
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 0
  %1107 = icmp ugt i32 %1106, %57
  %1108 = icmp ne i32 %1102, 0
  %1109 = and i1 %1108, %1107
  br i1 %1109, label %1110, label %1134, !dx.controlflow.hints !55

; <label>:1110                                    ; preds = %1104
  %1111 = extractvalue %dx.types.CBufRet.i32 %1105, 2
  %1112 = sub i32 %1106, %57
  %1113 = call i32 @dx.op.binary.i32(i32 40, i32 %1102, i32 %1112)  ; UMin(a,b)
  %1114 = add i32 %1113, -1
  %1115 = lshr i32 %1114, 1
  %1116 = or i32 %1115, %1114
  %1117 = lshr i32 %1116, 2
  %1118 = or i32 %1117, %1116
  %1119 = lshr i32 %1118, 4
  %1120 = or i32 %1119, %1118
  %1121 = lshr i32 %1120, 8
  %1122 = or i32 %1121, %1120
  %1123 = lshr i32 %1122, 16
  %1124 = or i32 %1123, %1122
  %1125 = add i32 %1124, 1
  %1126 = call i32 @dx.op.binary.i32(i32 40, i32 %1125, i32 64)  ; UMin(a,b)
  %1127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1126)  ; FirstbitLo(value)
  %1128 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %1127, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1129 = lshr i32 %1128, 3
  %1130 = icmp ult i32 %1129, %1111
  br i1 %1130, label %1131, label %1134, !dx.controlflow.hints !56

; <label>:1131                                    ; preds = %1110
  %1132 = mul i32 %1127, %1111
  %1133 = add i32 %1129, %1132
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1133, i32 0, i32 %18, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1133, i32 4, i32 %57, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1133, i32 8, i32 %1113, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1134

; <label>:1134                                    ; preds = %1131, %1110, %1104, %1101
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!49 = distinct !{!49, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!50 = distinct !{!50, !49, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}

