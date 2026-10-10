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
; shader hash: 22c11b262089cace1ec19a375e884e6e
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%struct.CellIndirection = type { i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

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
  %44 = lshr i32 %8, 6
  %45 = and i32 %8, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49, !dx.controlflow.hints !21

; <label>:47                                      ; preds = %42
  %48 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  store i32 %43, i32 addrspace(3)* %48, align 4, !tbaa !22
  br label %49

; <label>:49                                      ; preds = %47, %42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %50 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  %51 = load i32, i32 addrspace(3)* %50, align 4, !tbaa !22
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %55 = uitofp i32 %28 to float
  %56 = uitofp i32 %30 to float
  %57 = uitofp i32 %31 to float
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = fadd fast float %55, 5.000000e-01
  %62 = fadd fast float %56, 5.000000e-01
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %63, %25
  %65 = fmul fast float %62, 2.000000e+00
  %66 = fmul fast float %65, %26
  %67 = fadd fast float %64, -1.000000e+00
  %68 = fsub fast float 1.000000e+00, %66
  %69 = fmul fast float %27, %57
  %70 = fsub fast float %53, %54
  %71 = fmul fast float %69, %70
  %72 = fadd fast float %71, %54
  %73 = fadd fast float %57, 1.000000e+00
  %74 = fmul fast float %27, %73
  %75 = fmul fast float %74, %70
  %76 = fadd fast float %75, %54
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = fmul fast float %78, %67
  %90 = fmul fast float %79, %67
  %91 = fmul fast float %80, %67
  %92 = fmul fast float %82, %68
  %93 = fmul fast float %83, %68
  %94 = fmul fast float %84, %68
  %95 = fadd fast float %92, %89
  %96 = fadd fast float %93, %90
  %97 = fadd fast float %94, %91
  %98 = fadd fast float %95, %86
  %99 = fadd fast float %96, %87
  %100 = fadd fast float %97, %88
  %101 = fmul fast float %98, %72
  %102 = fmul fast float %99, %72
  %103 = fmul fast float %100, %72
  %104 = fmul fast float %78, %59
  %105 = fsub fast float -0.000000e+00, %104
  %106 = fmul fast float %79, %59
  %107 = fsub fast float -0.000000e+00, %106
  %108 = fmul fast float %80, %59
  %109 = fsub fast float -0.000000e+00, %108
  %110 = fmul fast float %104, %72
  %111 = fmul fast float %106, %72
  %112 = fmul fast float %108, %72
  %113 = fmul fast float %82, %60
  %114 = fmul fast float %83, %60
  %115 = fmul fast float %84, %60
  %116 = fmul fast float %113, %72
  %117 = fmul fast float %114, %72
  %118 = fmul fast float %115, %72
  %119 = fmul fast float %98, %76
  %120 = fmul fast float %99, %76
  %121 = fmul fast float %100, %76
  %122 = fmul fast float %104, %76
  %123 = fmul fast float %106, %76
  %124 = fmul fast float %108, %76
  %125 = fmul fast float %113, %76
  %126 = fmul fast float %114, %76
  %127 = fmul fast float %115, %76
  %128 = add i32 %20, 63
  %129 = and i32 %128, -64
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %1121, label %131

; <label>:131                                     ; preds = %49
  br label %132

; <label>:132                                     ; preds = %1116, %131
  %133 = phi i32 [ %1117, %1116 ], [ 0, %131 ]
  %134 = phi i32 [ %1118, %1116 ], [ 0, %131 ]
  %135 = add i32 %134, %8
  %136 = icmp ult i32 %135, %20
  br i1 %136, label %137, label %1037, !dx.controlflow.hints !26

; <label>:137                                     ; preds = %132
  %138 = mul i32 %135, 48
  %139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = or i32 %138, 12
  %144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = extractvalue %dx.types.ResRet.f32 %144, 1
  %147 = extractvalue %dx.types.ResRet.f32 %144, 2
  %148 = add i32 %138, 24
  %149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 1
  %152 = extractvalue %dx.types.ResRet.f32 %149, 2
  %153 = add i32 %138, 36
  %154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 0
  %159 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 0
  %160 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 0
  store float %145, float* %158, align 4
  store float %146, float* %159, align 4
  store float %147, float* %160, align 4
  %161 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 1
  %162 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 1
  %163 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 1
  store float %150, float* %161, align 4
  store float %151, float* %162, align 4
  store float %152, float* %163, align 4
  %164 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 2
  %165 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 2
  %166 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 2
  store float %155, float* %164, align 4
  store float %156, float* %165, align 4
  store float %157, float* %166, align 4
  %167 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = call float @dx.op.unary.f32(i32 6, float %168)  ; FAbs(value)
  %170 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = call float @dx.op.unary.f32(i32 6, float %170)  ; FAbs(value)
  %172 = fadd fast float %171, %169
  %173 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.unary.f32(i32 6, float %173)  ; FAbs(value)
  %175 = fadd fast float %172, %174
  %176 = fsub fast float %167, %175
  %177 = fadd fast float %175, %167
  %178 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %181 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %183 = fadd fast float %182, %180
  %184 = fsub fast float %178, %183
  %185 = fadd fast float %183, %178
  %186 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %187 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = call float @dx.op.unary.f32(i32 6, float %187)  ; FAbs(value)
  %189 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = call float @dx.op.unary.f32(i32 6, float %189)  ; FAbs(value)
  %191 = fadd fast float %190, %188
  %192 = fsub fast float %186, %191
  %193 = fadd fast float %191, %186
  %194 = fcmp fast olt float %192, %184
  %195 = select i1 %194, float %192, float %184
  %196 = fcmp fast ogt float %193, %185
  %197 = select i1 %196, float %193, float %185
  %198 = fcmp fast olt float %197, %176
  %199 = fcmp fast olt float %177, %195
  %200 = or i1 %198, %199
  br i1 %200, label %1037, label %201, !dx.controlflow.hints !27

; <label>:201                                     ; preds = %137
  %202 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %204 = call float @dx.op.unary.f32(i32 6, float %203)  ; FAbs(value)
  %205 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %206 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %207 = fadd fast float %206, %204
  %208 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %210 = fadd fast float %207, %209
  %211 = fsub fast float %202, %210
  %212 = fadd fast float %210, %202
  %213 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 6, float %214)  ; FAbs(value)
  %216 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = fadd fast float %217, %215
  %219 = fsub fast float %213, %218
  %220 = fadd fast float %218, %213
  %221 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %222 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %223 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %224 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %226 = fadd fast float %225, %223
  %227 = fsub fast float %221, %226
  %228 = fadd fast float %226, %221
  %229 = fcmp fast olt float %227, %219
  %230 = select i1 %229, float %227, float %219
  %231 = fcmp fast ogt float %228, %220
  %232 = select i1 %231, float %228, float %220
  %233 = fcmp fast olt float %232, %211
  %234 = fcmp fast olt float %212, %230
  %235 = or i1 %233, %234
  br i1 %235, label %1037, label %236, !dx.controlflow.hints !27

; <label>:236                                     ; preds = %201
  %237 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %238 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %239 = call float @dx.op.unary.f32(i32 6, float %238)  ; FAbs(value)
  %240 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %241 = call float @dx.op.unary.f32(i32 6, float %240)  ; FAbs(value)
  %242 = fadd fast float %241, %239
  %243 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %244 = call float @dx.op.unary.f32(i32 6, float %243)  ; FAbs(value)
  %245 = fadd fast float %242, %244
  %246 = fsub fast float %237, %245
  %247 = fadd fast float %245, %237
  %248 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %250 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %251 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %252 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %253 = fadd fast float %252, %250
  %254 = fsub fast float %248, %253
  %255 = fadd fast float %253, %248
  %256 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %258 = call float @dx.op.unary.f32(i32 6, float %257)  ; FAbs(value)
  %259 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %261 = fadd fast float %260, %258
  %262 = fsub fast float %256, %261
  %263 = fadd fast float %261, %256
  %264 = fcmp fast olt float %262, %254
  %265 = select i1 %264, float %262, float %254
  %266 = fcmp fast ogt float %263, %255
  %267 = select i1 %266, float %263, float %255
  %268 = fcmp fast olt float %267, %246
  %269 = fcmp fast olt float %247, %265
  %270 = or i1 %268, %269
  br i1 %270, label %1037, label %271, !dx.controlflow.hints !27

; <label>:271                                     ; preds = %236
  %272 = fcmp fast ole float %176, %195
  %273 = fcmp fast ole float %197, %177
  %274 = and i1 %272, %273
  %275 = zext i1 %274 to i32
  %276 = shl nuw nsw i32 %275, 1
  %277 = fcmp fast ole float %211, %230
  %278 = fcmp fast ole float %232, %212
  %279 = and i1 %277, %278
  %280 = zext i1 %279 to i32
  %281 = or i32 %280, %276
  %282 = shl nuw nsw i32 %281, 1
  %283 = fcmp fast ole float %246, %265
  %284 = fcmp fast ole float %267, %247
  %285 = and i1 %283, %284
  %286 = zext i1 %285 to i32
  %287 = or i32 %286, %282
  %288 = icmp eq i32 %287, 7
  br i1 %288, label %1037, label %289, !dx.controlflow.hints !28

; <label>:289                                     ; preds = %271
  %290 = fsub fast float %140, %101
  %291 = fsub fast float %141, %102
  %292 = fsub fast float %142, %103
  %293 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %294 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = call float @dx.op.unary.f32(i32 6, float %296)  ; FAbs(value)
  %298 = fadd fast float %297, %295
  %299 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.unary.f32(i32 6, float %299)  ; FAbs(value)
  %301 = fadd fast float %298, %300
  %302 = fsub fast float %293, %301
  %303 = fadd fast float %301, %293
  %304 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %305 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %306 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %307 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = fadd fast float %308, %306
  %310 = fsub fast float %304, %309
  %311 = fadd fast float %309, %304
  %312 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %290, float %291, float %292)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %317 = fadd fast float %316, %314
  %318 = fsub fast float %312, %317
  %319 = fadd fast float %317, %312
  %320 = fcmp fast olt float %318, %310
  %321 = select i1 %320, float %318, float %310
  %322 = fcmp fast ogt float %319, %311
  %323 = select i1 %322, float %319, float %311
  %324 = fcmp fast olt float %323, %302
  %325 = fcmp fast olt float %303, %321
  %326 = or i1 %324, %325
  br i1 %326, label %1037, label %327, !dx.controlflow.hints !29

; <label>:327                                     ; preds = %289
  %328 = fmul fast float %118, %111
  %329 = fmul fast float %117, %112
  %330 = fsub fast float %328, %329
  %331 = fmul fast float %116, %112
  %332 = fmul fast float %118, %110
  %333 = fsub fast float %331, %332
  %334 = fmul fast float %117, %110
  %335 = fmul fast float %116, %111
  %336 = fsub fast float %334, %335
  %337 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %340 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %341 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %342 = fadd fast float %341, %339
  %343 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %344 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %345 = fadd fast float %342, %344
  %346 = fsub fast float %337, %345
  %347 = fadd fast float %345, %337
  %348 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %349 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %351 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %352 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %353 = fadd fast float %352, %350
  %354 = fsub fast float %348, %353
  %355 = fadd fast float %353, %348
  %356 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %358 = call float @dx.op.unary.f32(i32 6, float %357)  ; FAbs(value)
  %359 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %330, float %333, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %360 = call float @dx.op.unary.f32(i32 6, float %359)  ; FAbs(value)
  %361 = fadd fast float %360, %358
  %362 = fsub fast float %356, %361
  %363 = fadd fast float %361, %356
  %364 = fcmp fast olt float %362, %354
  %365 = select i1 %364, float %362, float %354
  %366 = fcmp fast ogt float %363, %355
  %367 = select i1 %366, float %363, float %355
  %368 = fcmp fast olt float %367, %346
  %369 = fcmp fast olt float %347, %365
  %370 = or i1 %368, %369
  br i1 %370, label %1037, label %371, !dx.controlflow.hints !30

; <label>:371                                     ; preds = %327
  %372 = fsub fast float %105, %113
  %373 = fadd fast float %372, %98
  %374 = fsub fast float %107, %114
  %375 = fadd fast float %374, %99
  %376 = fsub fast float %109, %115
  %377 = fadd fast float %376, %100
  %378 = fmul fast float %70, %27
  %379 = fmul fast float %373, %378
  %380 = fmul fast float %70, %27
  %381 = fmul fast float %375, %380
  %382 = fmul fast float %70, %27
  %383 = fmul fast float %377, %382
  %384 = fmul fast float %383, %111
  %385 = fmul fast float %381, %112
  %386 = fsub fast float %384, %385
  %387 = fmul fast float %379, %112
  %388 = fmul fast float %383, %110
  %389 = fsub fast float %387, %388
  %390 = fmul fast float %381, %110
  %391 = fmul fast float %379, %111
  %392 = fsub fast float %390, %391
  %393 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %394 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %395 = call float @dx.op.unary.f32(i32 6, float %394)  ; FAbs(value)
  %396 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %397 = call float @dx.op.unary.f32(i32 6, float %396)  ; FAbs(value)
  %398 = fadd fast float %397, %395
  %399 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = call float @dx.op.unary.f32(i32 6, float %399)  ; FAbs(value)
  %401 = fadd fast float %398, %400
  %402 = fsub fast float %393, %401
  %403 = fadd fast float %401, %393
  %404 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %405 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %406 = call float @dx.op.unary.f32(i32 6, float %405)  ; FAbs(value)
  %407 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %409 = fadd fast float %408, %406
  %410 = fsub fast float %404, %409
  %411 = fadd fast float %409, %404
  %412 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = call float @dx.op.unary.f32(i32 6, float %413)  ; FAbs(value)
  %415 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %386, float %389, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %417 = fadd fast float %416, %414
  %418 = fsub fast float %412, %417
  %419 = fadd fast float %417, %412
  %420 = fcmp fast olt float %418, %410
  %421 = select i1 %420, float %418, float %410
  %422 = fcmp fast ogt float %419, %411
  %423 = select i1 %422, float %419, float %411
  %424 = fcmp fast olt float %423, %402
  %425 = fcmp fast olt float %403, %421
  %426 = or i1 %424, %425
  br i1 %426, label %1037, label %427, !dx.controlflow.hints !31

; <label>:427                                     ; preds = %371
  %428 = fmul fast float %383, %117
  %429 = fmul fast float %381, %118
  %430 = fsub fast float %428, %429
  %431 = fmul fast float %379, %118
  %432 = fmul fast float %383, %116
  %433 = fsub fast float %431, %432
  %434 = fmul fast float %381, %116
  %435 = fmul fast float %379, %117
  %436 = fsub fast float %434, %435
  %437 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %438 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %439 = call float @dx.op.unary.f32(i32 6, float %438)  ; FAbs(value)
  %440 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %441 = call float @dx.op.unary.f32(i32 6, float %440)  ; FAbs(value)
  %442 = fadd fast float %441, %439
  %443 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %444 = call float @dx.op.unary.f32(i32 6, float %443)  ; FAbs(value)
  %445 = fadd fast float %442, %444
  %446 = fsub fast float %437, %445
  %447 = fadd fast float %445, %437
  %448 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %449 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  %451 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  %453 = fadd fast float %452, %450
  %454 = fsub fast float %448, %453
  %455 = fadd fast float %453, %448
  %456 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  %459 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %430, float %433, float %436)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = fadd fast float %460, %458
  %462 = fsub fast float %456, %461
  %463 = fadd fast float %461, %456
  %464 = fcmp fast olt float %462, %454
  %465 = select i1 %464, float %462, float %454
  %466 = fcmp fast ogt float %463, %455
  %467 = select i1 %466, float %463, float %455
  %468 = fcmp fast olt float %467, %446
  %469 = fcmp fast olt float %447, %465
  %470 = or i1 %468, %469
  br i1 %470, label %1037, label %471, !dx.controlflow.hints !32

; <label>:471                                     ; preds = %427
  %472 = fmul fast float %59, -2.000000e+00
  %473 = fmul fast float %472, %78
  %474 = fmul fast float %473, %72
  %475 = fmul fast float %472, %79
  %476 = fmul fast float %475, %72
  %477 = fmul fast float %472, %80
  %478 = fmul fast float %477, %72
  br label %479

; <label>:479                                     ; preds = %530, %471
  %480 = phi float [ %147, %471 ], [ %536, %530 ]
  %481 = phi float [ %146, %471 ], [ %534, %530 ]
  %482 = phi float [ %145, %471 ], [ %532, %530 ]
  %483 = phi i32 [ 0, %471 ], [ %528, %530 ]
  %484 = fmul fast float %480, %476
  %485 = fmul fast float %481, %478
  %486 = fsub fast float %484, %485
  %487 = fmul fast float %482, %478
  %488 = fmul fast float %480, %474
  %489 = fsub fast float %487, %488
  %490 = fmul fast float %481, %474
  %491 = fmul fast float %482, %476
  %492 = fsub fast float %490, %491
  %493 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %494 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  %496 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %498 = fadd fast float %497, %495
  %499 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fadd fast float %498, %500
  %502 = fsub fast float %493, %501
  %503 = fadd fast float %501, %493
  %504 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %505 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %506 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  %507 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %509 = fadd fast float %508, %506
  %510 = fsub fast float %504, %509
  %511 = fadd fast float %509, %504
  %512 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %514 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %515 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %486, float %489, float %492)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 6, float %515)  ; FAbs(value)
  %517 = fadd fast float %516, %514
  %518 = fsub fast float %512, %517
  %519 = fadd fast float %517, %512
  %520 = fcmp fast olt float %518, %510
  %521 = select i1 %520, float %518, float %510
  %522 = fcmp fast ogt float %519, %511
  %523 = select i1 %522, float %519, float %511
  %524 = fcmp fast olt float %523, %502
  %525 = fcmp fast olt float %503, %521
  %526 = or i1 %524, %525
  br i1 %526, label %537, label %527, !dx.controlflow.hints !33

; <label>:527                                     ; preds = %479
  %528 = add nuw nsw i32 %483, 1
  %529 = icmp ult i32 %528, 3
  br i1 %529, label %530, label %537, !llvm.loop !34

; <label>:530                                     ; preds = %527
  %531 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %528
  %532 = load float, float* %531, align 4
  %533 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %528
  %534 = load float, float* %533, align 4
  %535 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %528
  %536 = load float, float* %535, align 4
  br label %479

; <label>:537                                     ; preds = %527, %479
  %538 = phi i1 [ true, %479 ], [ false, %527 ]
  br i1 %538, label %1037, label %539, !dx.controlflow.hints !36

; <label>:539                                     ; preds = %537
  %540 = fmul fast float %72, 2.000000e+00
  %541 = fmul fast float %113, %540
  %542 = fsub fast float -0.000000e+00, %541
  %543 = fmul fast float %114, %540
  %544 = fsub fast float -0.000000e+00, %543
  %545 = fmul fast float %115, %540
  %546 = fsub fast float -0.000000e+00, %545
  br label %547

; <label>:547                                     ; preds = %598, %539
  %548 = phi float [ %147, %539 ], [ %604, %598 ]
  %549 = phi float [ %146, %539 ], [ %602, %598 ]
  %550 = phi float [ %145, %539 ], [ %600, %598 ]
  %551 = phi i32 [ 0, %539 ], [ %596, %598 ]
  %552 = fmul fast float %548, %544
  %553 = fmul fast float %549, %546
  %554 = fsub fast float %552, %553
  %555 = fmul fast float %550, %546
  %556 = fmul fast float %548, %542
  %557 = fsub fast float %555, %556
  %558 = fmul fast float %549, %542
  %559 = fmul fast float %550, %544
  %560 = fsub fast float %558, %559
  %561 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 6, float %562)  ; FAbs(value)
  %564 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %566 = fadd fast float %565, %563
  %567 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  %569 = fadd fast float %566, %568
  %570 = fsub fast float %561, %569
  %571 = fadd fast float %569, %561
  %572 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %574 = call float @dx.op.unary.f32(i32 6, float %573)  ; FAbs(value)
  %575 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call float @dx.op.unary.f32(i32 6, float %575)  ; FAbs(value)
  %577 = fadd fast float %576, %574
  %578 = fsub fast float %572, %577
  %579 = fadd fast float %577, %572
  %580 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %582 = call float @dx.op.unary.f32(i32 6, float %581)  ; FAbs(value)
  %583 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %554, float %557, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %584 = call float @dx.op.unary.f32(i32 6, float %583)  ; FAbs(value)
  %585 = fadd fast float %584, %582
  %586 = fsub fast float %580, %585
  %587 = fadd fast float %585, %580
  %588 = fcmp fast olt float %586, %578
  %589 = select i1 %588, float %586, float %578
  %590 = fcmp fast ogt float %587, %579
  %591 = select i1 %590, float %587, float %579
  %592 = fcmp fast olt float %591, %570
  %593 = fcmp fast olt float %571, %589
  %594 = or i1 %592, %593
  br i1 %594, label %605, label %595, !dx.controlflow.hints !33

; <label>:595                                     ; preds = %547
  %596 = add nuw nsw i32 %551, 1
  %597 = icmp ult i32 %596, 3
  br i1 %597, label %598, label %605, !llvm.loop !34

; <label>:598                                     ; preds = %595
  %599 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %596
  %600 = load float, float* %599, align 4
  %601 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %596
  %602 = load float, float* %601, align 4
  %603 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %596
  %604 = load float, float* %603, align 4
  br label %547

; <label>:605                                     ; preds = %595, %547
  %606 = phi i1 [ true, %547 ], [ false, %595 ]
  br i1 %606, label %1037, label %607, !dx.controlflow.hints !37

; <label>:607                                     ; preds = %605
  %608 = fmul fast float %27, %70
  %609 = fmul fast float %608, %373
  %610 = fsub fast float -0.000000e+00, %609
  %611 = fmul fast float %27, %70
  %612 = fmul fast float %611, %375
  %613 = fsub fast float -0.000000e+00, %612
  %614 = fmul fast float %27, %70
  %615 = fmul fast float %614, %377
  %616 = fsub fast float -0.000000e+00, %615
  br label %617

; <label>:617                                     ; preds = %668, %607
  %618 = phi float [ %147, %607 ], [ %674, %668 ]
  %619 = phi float [ %146, %607 ], [ %672, %668 ]
  %620 = phi float [ %145, %607 ], [ %670, %668 ]
  %621 = phi i32 [ 0, %607 ], [ %666, %668 ]
  %622 = fmul fast float %618, %613
  %623 = fmul fast float %619, %616
  %624 = fsub fast float %622, %623
  %625 = fmul fast float %620, %616
  %626 = fmul fast float %618, %610
  %627 = fsub fast float %625, %626
  %628 = fmul fast float %619, %610
  %629 = fmul fast float %620, %613
  %630 = fsub fast float %628, %629
  %631 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %634 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 6, float %634)  ; FAbs(value)
  %636 = fadd fast float %635, %633
  %637 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = call float @dx.op.unary.f32(i32 6, float %637)  ; FAbs(value)
  %639 = fadd fast float %636, %638
  %640 = fsub fast float %631, %639
  %641 = fadd fast float %639, %631
  %642 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %645 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = call float @dx.op.unary.f32(i32 6, float %645)  ; FAbs(value)
  %647 = fadd fast float %646, %644
  %648 = fsub fast float %642, %647
  %649 = fadd fast float %647, %642
  %650 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %652 = call float @dx.op.unary.f32(i32 6, float %651)  ; FAbs(value)
  %653 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %624, float %627, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %654 = call float @dx.op.unary.f32(i32 6, float %653)  ; FAbs(value)
  %655 = fadd fast float %654, %652
  %656 = fsub fast float %650, %655
  %657 = fadd fast float %655, %650
  %658 = fcmp fast olt float %656, %648
  %659 = select i1 %658, float %656, float %648
  %660 = fcmp fast ogt float %657, %649
  %661 = select i1 %660, float %657, float %649
  %662 = fcmp fast olt float %661, %640
  %663 = fcmp fast olt float %641, %659
  %664 = or i1 %662, %663
  br i1 %664, label %675, label %665, !dx.controlflow.hints !33

; <label>:665                                     ; preds = %617
  %666 = add nuw nsw i32 %621, 1
  %667 = icmp ult i32 %666, 3
  br i1 %667, label %668, label %675, !llvm.loop !34

; <label>:668                                     ; preds = %665
  %669 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %666
  %670 = load float, float* %669, align 4
  %671 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %666
  %672 = load float, float* %671, align 4
  %673 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %666
  %674 = load float, float* %673, align 4
  br label %617

; <label>:675                                     ; preds = %665, %617
  %676 = phi i1 [ true, %617 ], [ false, %665 ]
  br i1 %676, label %1037, label %677, !dx.controlflow.hints !38

; <label>:677                                     ; preds = %675
  %678 = fsub fast float %140, %119
  %679 = fsub fast float %141, %120
  %680 = fsub fast float %142, %121
  %681 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = call float @dx.op.unary.f32(i32 6, float %682)  ; FAbs(value)
  %684 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = call float @dx.op.unary.f32(i32 6, float %684)  ; FAbs(value)
  %686 = fadd fast float %685, %683
  %687 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %688 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %689 = fadd fast float %686, %688
  %690 = fsub fast float %681, %689
  %691 = fadd fast float %689, %681
  %692 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %695 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %696 = call float @dx.op.unary.f32(i32 6, float %695)  ; FAbs(value)
  %697 = fadd fast float %696, %694
  %698 = fsub fast float %692, %697
  %699 = fadd fast float %697, %692
  %700 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %703 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.unary.f32(i32 6, float %703)  ; FAbs(value)
  %705 = fadd fast float %704, %702
  %706 = fsub fast float %700, %705
  %707 = fadd fast float %705, %700
  %708 = fcmp fast olt float %706, %698
  %709 = select i1 %708, float %706, float %698
  %710 = fcmp fast ogt float %707, %699
  %711 = select i1 %710, float %707, float %699
  %712 = fcmp fast olt float %711, %690
  %713 = fcmp fast olt float %691, %709
  %714 = or i1 %712, %713
  br i1 %714, label %1037, label %715, !dx.controlflow.hints !39

; <label>:715                                     ; preds = %677
  %716 = fadd fast float %113, %104
  %717 = fadd fast float %716, %98
  %718 = fadd fast float %114, %106
  %719 = fadd fast float %718, %99
  %720 = fadd fast float %115, %108
  %721 = fadd fast float %720, %100
  %722 = fmul fast float %70, %27
  %723 = fmul fast float %717, %722
  %724 = fmul fast float %70, %27
  %725 = fmul fast float %719, %724
  %726 = fmul fast float %70, %27
  %727 = fmul fast float %721, %726
  %728 = fmul fast float %727, %111
  %729 = fmul fast float %725, %112
  %730 = fsub fast float %728, %729
  %731 = fmul fast float %723, %112
  %732 = fmul fast float %727, %110
  %733 = fsub fast float %731, %732
  %734 = fmul fast float %725, %110
  %735 = fmul fast float %723, %111
  %736 = fsub fast float %734, %735
  %737 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = call float @dx.op.unary.f32(i32 6, float %738)  ; FAbs(value)
  %740 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %741 = call float @dx.op.unary.f32(i32 6, float %740)  ; FAbs(value)
  %742 = fadd fast float %741, %739
  %743 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = call float @dx.op.unary.f32(i32 6, float %743)  ; FAbs(value)
  %745 = fadd fast float %742, %744
  %746 = fsub fast float %737, %745
  %747 = fadd fast float %745, %737
  %748 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %750 = call float @dx.op.unary.f32(i32 6, float %749)  ; FAbs(value)
  %751 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %752 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %753 = fadd fast float %752, %750
  %754 = fsub fast float %748, %753
  %755 = fadd fast float %753, %748
  %756 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %758 = call float @dx.op.unary.f32(i32 6, float %757)  ; FAbs(value)
  %759 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %730, float %733, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = call float @dx.op.unary.f32(i32 6, float %759)  ; FAbs(value)
  %761 = fadd fast float %760, %758
  %762 = fsub fast float %756, %761
  %763 = fadd fast float %761, %756
  %764 = fcmp fast olt float %762, %754
  %765 = select i1 %764, float %762, float %754
  %766 = fcmp fast ogt float %763, %755
  %767 = select i1 %766, float %763, float %755
  %768 = fcmp fast olt float %767, %746
  %769 = fcmp fast olt float %747, %765
  %770 = or i1 %768, %769
  br i1 %770, label %1037, label %771, !dx.controlflow.hints !40

; <label>:771                                     ; preds = %715
  %772 = fmul fast float %727, %117
  %773 = fmul fast float %725, %118
  %774 = fsub fast float %772, %773
  %775 = fmul fast float %723, %118
  %776 = fmul fast float %727, %116
  %777 = fsub fast float %775, %776
  %778 = fmul fast float %725, %116
  %779 = fmul fast float %723, %117
  %780 = fsub fast float %778, %779
  %781 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %782 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %783 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %784 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 6, float %784)  ; FAbs(value)
  %786 = fadd fast float %785, %783
  %787 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %788 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %789 = fadd fast float %786, %788
  %790 = fsub fast float %781, %789
  %791 = fadd fast float %789, %781
  %792 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %793 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %795 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %797 = fadd fast float %796, %794
  %798 = fsub fast float %792, %797
  %799 = fadd fast float %797, %792
  %800 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 6, float %801)  ; FAbs(value)
  %803 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %774, float %777, float %780)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %805 = fadd fast float %804, %802
  %806 = fsub fast float %800, %805
  %807 = fadd fast float %805, %800
  %808 = fcmp fast olt float %806, %798
  %809 = select i1 %808, float %806, float %798
  %810 = fcmp fast ogt float %807, %799
  %811 = select i1 %810, float %807, float %799
  %812 = fcmp fast olt float %811, %790
  %813 = fcmp fast olt float %791, %809
  %814 = or i1 %812, %813
  br i1 %814, label %1037, label %815, !dx.controlflow.hints !41

; <label>:815                                     ; preds = %771
  %816 = fmul fast float %27, %70
  %817 = fmul fast float %816, %717
  %818 = fsub fast float -0.000000e+00, %817
  %819 = fmul fast float %27, %70
  %820 = fmul fast float %819, %719
  %821 = fsub fast float -0.000000e+00, %820
  %822 = fmul fast float %27, %70
  %823 = fmul fast float %822, %721
  %824 = fsub fast float -0.000000e+00, %823
  br label %825

; <label>:825                                     ; preds = %876, %815
  %826 = phi float [ %147, %815 ], [ %882, %876 ]
  %827 = phi float [ %146, %815 ], [ %880, %876 ]
  %828 = phi float [ %145, %815 ], [ %878, %876 ]
  %829 = phi i32 [ 0, %815 ], [ %874, %876 ]
  %830 = fmul fast float %826, %821
  %831 = fmul fast float %827, %824
  %832 = fsub fast float %830, %831
  %833 = fmul fast float %828, %824
  %834 = fmul fast float %826, %818
  %835 = fsub fast float %833, %834
  %836 = fmul fast float %827, %818
  %837 = fmul fast float %828, %821
  %838 = fsub fast float %836, %837
  %839 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %841 = call float @dx.op.unary.f32(i32 6, float %840)  ; FAbs(value)
  %842 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = call float @dx.op.unary.f32(i32 6, float %842)  ; FAbs(value)
  %844 = fadd fast float %843, %841
  %845 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = call float @dx.op.unary.f32(i32 6, float %845)  ; FAbs(value)
  %847 = fadd fast float %844, %846
  %848 = fsub fast float %839, %847
  %849 = fadd fast float %847, %839
  %850 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = call float @dx.op.unary.f32(i32 6, float %851)  ; FAbs(value)
  %853 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = call float @dx.op.unary.f32(i32 6, float %853)  ; FAbs(value)
  %855 = fadd fast float %854, %852
  %856 = fsub fast float %850, %855
  %857 = fadd fast float %855, %850
  %858 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %860 = call float @dx.op.unary.f32(i32 6, float %859)  ; FAbs(value)
  %861 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %832, float %835, float %838)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = call float @dx.op.unary.f32(i32 6, float %861)  ; FAbs(value)
  %863 = fadd fast float %862, %860
  %864 = fsub fast float %858, %863
  %865 = fadd fast float %863, %858
  %866 = fcmp fast olt float %864, %856
  %867 = select i1 %866, float %864, float %856
  %868 = fcmp fast ogt float %865, %857
  %869 = select i1 %868, float %865, float %857
  %870 = fcmp fast olt float %869, %848
  %871 = fcmp fast olt float %849, %867
  %872 = or i1 %870, %871
  br i1 %872, label %883, label %873, !dx.controlflow.hints !33

; <label>:873                                     ; preds = %825
  %874 = add nuw nsw i32 %829, 1
  %875 = icmp ult i32 %874, 3
  br i1 %875, label %876, label %883, !llvm.loop !34

; <label>:876                                     ; preds = %873
  %877 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %874
  %878 = load float, float* %877, align 4
  %879 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %874
  %880 = load float, float* %879, align 4
  %881 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %874
  %882 = load float, float* %881, align 4
  br label %825

; <label>:883                                     ; preds = %873, %825
  %884 = phi i1 [ true, %825 ], [ false, %873 ]
  br i1 %884, label %1037, label %885, !dx.controlflow.hints !42

; <label>:885                                     ; preds = %883
  %886 = fsub fast float %104, %113
  %887 = fadd fast float %886, %98
  %888 = fsub fast float %106, %114
  %889 = fadd fast float %888, %99
  %890 = fsub fast float %108, %115
  %891 = fadd fast float %890, %100
  %892 = fmul fast float %27, %70
  %893 = fmul fast float %892, %887
  %894 = fsub fast float -0.000000e+00, %893
  %895 = fmul fast float %27, %70
  %896 = fmul fast float %895, %889
  %897 = fsub fast float -0.000000e+00, %896
  %898 = fmul fast float %27, %70
  %899 = fmul fast float %898, %891
  %900 = fsub fast float -0.000000e+00, %899
  br label %901

; <label>:901                                     ; preds = %952, %885
  %902 = phi float [ %147, %885 ], [ %958, %952 ]
  %903 = phi float [ %146, %885 ], [ %956, %952 ]
  %904 = phi float [ %145, %885 ], [ %954, %952 ]
  %905 = phi i32 [ 0, %885 ], [ %950, %952 ]
  %906 = fmul fast float %902, %897
  %907 = fmul fast float %903, %900
  %908 = fsub fast float %906, %907
  %909 = fmul fast float %904, %900
  %910 = fmul fast float %902, %894
  %911 = fsub fast float %909, %910
  %912 = fmul fast float %903, %894
  %913 = fmul fast float %904, %897
  %914 = fsub fast float %912, %913
  %915 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = call float @dx.op.unary.f32(i32 6, float %916)  ; FAbs(value)
  %918 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %920 = fadd fast float %919, %917
  %921 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %922 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %923 = fadd fast float %920, %922
  %924 = fsub fast float %915, %923
  %925 = fadd fast float %923, %915
  %926 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.unary.f32(i32 6, float %927)  ; FAbs(value)
  %929 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %930 = call float @dx.op.unary.f32(i32 6, float %929)  ; FAbs(value)
  %931 = fadd fast float %930, %928
  %932 = fsub fast float %926, %931
  %933 = fadd fast float %931, %926
  %934 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %936 = call float @dx.op.unary.f32(i32 6, float %935)  ; FAbs(value)
  %937 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %908, float %911, float %914)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call float @dx.op.unary.f32(i32 6, float %937)  ; FAbs(value)
  %939 = fadd fast float %938, %936
  %940 = fsub fast float %934, %939
  %941 = fadd fast float %939, %934
  %942 = fcmp fast olt float %940, %932
  %943 = select i1 %942, float %940, float %932
  %944 = fcmp fast ogt float %941, %933
  %945 = select i1 %944, float %941, float %933
  %946 = fcmp fast olt float %945, %924
  %947 = fcmp fast olt float %925, %943
  %948 = or i1 %946, %947
  br i1 %948, label %959, label %949, !dx.controlflow.hints !33

; <label>:949                                     ; preds = %901
  %950 = add nuw nsw i32 %905, 1
  %951 = icmp ult i32 %950, 3
  br i1 %951, label %952, label %959, !llvm.loop !34

; <label>:952                                     ; preds = %949
  %953 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %950
  %954 = load float, float* %953, align 4
  %955 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %950
  %956 = load float, float* %955, align 4
  %957 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %950
  %958 = load float, float* %957, align 4
  br label %901

; <label>:959                                     ; preds = %949, %901
  %960 = phi i1 [ true, %901 ], [ false, %949 ]
  br i1 %960, label %1037, label %961, !dx.controlflow.hints !43

; <label>:961                                     ; preds = %959
  %962 = fsub fast float %113, %104
  %963 = fadd fast float %962, %98
  %964 = fsub fast float %114, %106
  %965 = fadd fast float %964, %99
  %966 = fsub fast float %115, %108
  %967 = fadd fast float %966, %100
  %968 = fmul fast float %27, %70
  %969 = fmul fast float %968, %963
  %970 = fsub fast float -0.000000e+00, %969
  %971 = fmul fast float %27, %70
  %972 = fmul fast float %971, %965
  %973 = fsub fast float -0.000000e+00, %972
  %974 = fmul fast float %27, %70
  %975 = fmul fast float %974, %967
  %976 = fsub fast float -0.000000e+00, %975
  br label %977

; <label>:977                                     ; preds = %1028, %961
  %978 = phi float [ %147, %961 ], [ %1034, %1028 ]
  %979 = phi float [ %146, %961 ], [ %1032, %1028 ]
  %980 = phi float [ %145, %961 ], [ %1030, %1028 ]
  %981 = phi i32 [ 0, %961 ], [ %1026, %1028 ]
  %982 = fmul fast float %978, %973
  %983 = fmul fast float %979, %976
  %984 = fsub fast float %982, %983
  %985 = fmul fast float %980, %976
  %986 = fmul fast float %978, %970
  %987 = fsub fast float %985, %986
  %988 = fmul fast float %979, %970
  %989 = fmul fast float %980, %973
  %990 = fsub fast float %988, %989
  %991 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %993 = call float @dx.op.unary.f32(i32 6, float %992)  ; FAbs(value)
  %994 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %995 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %996 = fadd fast float %995, %993
  %997 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = call float @dx.op.unary.f32(i32 6, float %997)  ; FAbs(value)
  %999 = fadd fast float %996, %998
  %1000 = fsub fast float %991, %999
  %1001 = fadd fast float %999, %991
  %1002 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call float @dx.op.unary.f32(i32 6, float %1003)  ; FAbs(value)
  %1005 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = call float @dx.op.unary.f32(i32 6, float %1005)  ; FAbs(value)
  %1007 = fadd fast float %1006, %1004
  %1008 = fsub fast float %1002, %1007
  %1009 = fadd fast float %1007, %1002
  %1010 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1011 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1013 = call float @dx.op.dot3.f32(i32 55, float %125, float %126, float %127, float %984, float %987, float %990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1015 = fadd fast float %1014, %1012
  %1016 = fsub fast float %1010, %1015
  %1017 = fadd fast float %1015, %1010
  %1018 = fcmp fast olt float %1016, %1008
  %1019 = select i1 %1018, float %1016, float %1008
  %1020 = fcmp fast ogt float %1017, %1009
  %1021 = select i1 %1020, float %1017, float %1009
  %1022 = fcmp fast olt float %1021, %1000
  %1023 = fcmp fast olt float %1001, %1019
  %1024 = or i1 %1022, %1023
  br i1 %1024, label %1035, label %1025, !dx.controlflow.hints !33

; <label>:1025                                    ; preds = %977
  %1026 = add nuw nsw i32 %981, 1
  %1027 = icmp ult i32 %1026, 3
  br i1 %1027, label %1028, label %1035, !llvm.loop !34

; <label>:1028                                    ; preds = %1025
  %1029 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1026
  %1030 = load float, float* %1029, align 4
  %1031 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1026
  %1032 = load float, float* %1031, align 4
  %1033 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1026
  %1034 = load float, float* %1033, align 4
  br label %977

; <label>:1035                                    ; preds = %1025, %977
  %1036 = phi i32 [ 0, %977 ], [ 1, %1025 ]
  br label %1037

; <label>:1037                                    ; preds = %1035, %959, %883, %771, %715, %677, %675, %605, %537, %427, %371, %327, %289, %271, %236, %201, %137, %132
  %1038 = phi i32 [ 0, %132 ], [ 1, %271 ], [ 0, %289 ], [ 0, %327 ], [ 0, %371 ], [ 0, %427 ], [ 0, %537 ], [ 0, %605 ], [ 0, %675 ], [ 0, %677 ], [ 0, %715 ], [ 0, %771 ], [ 0, %883 ], [ 0, %959 ], [ 0, %236 ], [ 0, %201 ], [ 0, %137 ], [ %1036, %1035 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1039 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %8
  store i32 %1038, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1040 = and i32 %8, 1
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1048, label %1042, !dx.controlflow.hints !48

; <label>:1042                                    ; preds = %1037
  %1043 = and i32 %8, -2
  %1044 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1043
  %1045 = load i32, i32 addrspace(3)* %1044, align 4, !tbaa !22, !noalias !44
  %1046 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  %1047 = add i32 %1046, %1045
  store i32 %1047, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1048

; <label>:1048                                    ; preds = %1042, %1037
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1049 = and i32 %8, 2
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1058, label %1051, !dx.controlflow.hints !49

; <label>:1051                                    ; preds = %1048
  %1052 = and i32 %8, -4
  %1053 = or i32 %1052, 1
  %1054 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1053
  %1055 = load i32, i32 addrspace(3)* %1054, align 4, !tbaa !22, !noalias !44
  %1056 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  %1057 = add i32 %1056, %1055
  store i32 %1057, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1058

; <label>:1058                                    ; preds = %1051, %1048
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1059 = and i32 %8, 4
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1068, label %1061, !dx.controlflow.hints !50

; <label>:1061                                    ; preds = %1058
  %1062 = and i32 %8, -8
  %1063 = or i32 %1062, 3
  %1064 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1063
  %1065 = load i32, i32 addrspace(3)* %1064, align 4, !tbaa !22, !noalias !44
  %1066 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  %1067 = add i32 %1066, %1065
  store i32 %1067, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1068

; <label>:1068                                    ; preds = %1061, %1058
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1069 = and i32 %8, 8
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1078, label %1071, !dx.controlflow.hints !51

; <label>:1071                                    ; preds = %1068
  %1072 = and i32 %8, -16
  %1073 = or i32 %1072, 7
  %1074 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1073
  %1075 = load i32, i32 addrspace(3)* %1074, align 4, !tbaa !22, !noalias !44
  %1076 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  %1077 = add i32 %1076, %1075
  store i32 %1077, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1078

; <label>:1078                                    ; preds = %1071, %1068
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1079 = and i32 %8, 16
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1088, label %1081, !dx.controlflow.hints !52

; <label>:1081                                    ; preds = %1078
  %1082 = and i32 %8, -32
  %1083 = or i32 %1082, 15
  %1084 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1083
  %1085 = load i32, i32 addrspace(3)* %1084, align 4, !tbaa !22, !noalias !44
  %1086 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  %1087 = add i32 %1086, %1085
  store i32 %1087, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1088

; <label>:1088                                    ; preds = %1081, %1078
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1089 = and i32 %8, 32
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1093, !dx.controlflow.hints !53

; <label>:1091                                    ; preds = %1088
  %1092 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1100

; <label>:1093                                    ; preds = %1088
  %1094 = and i32 %8, -64
  %1095 = or i32 %1094, 31
  %1096 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1095
  %1097 = load i32, i32 addrspace(3)* %1096, align 4, !tbaa !22, !noalias !44
  %1098 = load i32, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  %1099 = add i32 %1098, %1097
  store i32 %1099, i32 addrspace(3)* %1039, align 4, !tbaa !22, !noalias !44
  br label %1100

; <label>:1100                                    ; preds = %1093, %1091
  %1101 = phi i32 [ %1092, %1091 ], [ %1099, %1093 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1102 = or i32 %8, 63
  %1103 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1102
  %1104 = load i32, i32 addrspace(3)* %1103, align 4, !tbaa !22, !noalias !44
  %1105 = sub i32 %1101, %1038
  %1106 = icmp ne i32 %1038, 0
  %1107 = add i32 %1105, %133
  %1108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.i32 %1108, 1
  %1110 = icmp ult i32 %1107, %1109
  %1111 = and i1 %1106, %1110
  br i1 %1111, label %1112, label %1116, !dx.controlflow.hints !54

; <label>:1112                                    ; preds = %1100
  %1113 = add i32 %133, %51
  %1114 = add i32 %1113, %1105
  %1115 = shl i32 %1114, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1115, i32 undef, i32 %135, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1116

; <label>:1116                                    ; preds = %1112, %1100
  %1117 = add i32 %1104, %133
  %1118 = add nuw i32 %134, 64
  %1119 = icmp ult i32 %1118, %129
  br i1 %1119, label %132, label %1120

; <label>:1120                                    ; preds = %1116
  br label %1121

; <label>:1121                                    ; preds = %1120, %49
  %1122 = phi i32 [ 0, %49 ], [ %1117, %1120 ]
  %1123 = and i1 %35, %34
  br i1 %1123, label %1124, label %1154, !dx.controlflow.hints !55

; <label>:1124                                    ; preds = %1121
  %1125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.i32 %1125, 0
  %1127 = icmp ugt i32 %1126, %51
  %1128 = icmp ne i32 %1122, 0
  %1129 = and i1 %1128, %1127
  br i1 %1129, label %1130, label %1154, !dx.controlflow.hints !56

; <label>:1130                                    ; preds = %1124
  %1131 = extractvalue %dx.types.CBufRet.i32 %1125, 2
  %1132 = sub i32 %1126, %51
  %1133 = call i32 @dx.op.binary.i32(i32 40, i32 %1122, i32 %1132)  ; UMin(a,b)
  %1134 = add i32 %1133, -1
  %1135 = lshr i32 %1134, 1
  %1136 = or i32 %1135, %1134
  %1137 = lshr i32 %1136, 2
  %1138 = or i32 %1137, %1136
  %1139 = lshr i32 %1138, 4
  %1140 = or i32 %1139, %1138
  %1141 = lshr i32 %1140, 8
  %1142 = or i32 %1141, %1140
  %1143 = lshr i32 %1142, 16
  %1144 = or i32 %1143, %1142
  %1145 = add i32 %1144, 1
  %1146 = call i32 @dx.op.binary.i32(i32 40, i32 %1145, i32 64)  ; UMin(a,b)
  %1147 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1146)  ; FirstbitLo(value)
  %1148 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %1147, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1149 = lshr i32 %1148, 3
  %1150 = icmp ult i32 %1149, %1131
  br i1 %1150, label %1151, label %1154, !dx.controlflow.hints !57

; <label>:1151                                    ; preds = %1130
  %1152 = mul i32 %1147, %1131
  %1153 = add i32 %1149, %1152
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1153, i32 0, i32 %18, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1153, i32 4, i32 %51, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %1153, i32 8, i32 %1133, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1154

; <label>:1154                                    ; preds = %1151, %1130, %1124, %1121
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!46 = distinct !{!46, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!47 = distinct !{!47, !46, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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

