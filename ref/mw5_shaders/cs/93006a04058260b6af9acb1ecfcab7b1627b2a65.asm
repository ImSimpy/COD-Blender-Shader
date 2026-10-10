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
; shader hash: 1e54c17f0f765a1f1440196c4ea2a30d
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
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWStructuredBuffer<MDBlock>" = type { %struct.MDBlock }
%struct.MDBlock = type { i32, float, float, float, float, <3 x float> }
%"class.RWStructuredBuffer<FrameStats>" = type { %struct.FrameStats }
%struct.FrameStats = type { float, float, float, float, float, <3 x float> }
%cbParameters = type { %struct.StatGenShader2Consts }
%struct.StatGenShader2Consts = type { i32, i32, <2 x float> }

@"\01?GroupOutput@@3PAUMDBlock@@A.0" = addrspace(3) global [128 x i32] undef, align 4
@"\01?GroupOutput@@3PAUMDBlock@@A.1" = addrspace(3) global [128 x float] undef, align 4
@"\01?GroupOutput@@3PAUMDBlock@@A.2" = addrspace(3) global [128 x float] undef, align 4
@"\01?GroupOutput@@3PAUMDBlock@@A.3" = addrspace(3) global [128 x float] undef, align 4
@"\01?GroupOutput@@3PAUMDBlock@@A.4" = addrspace(3) global [128 x float] undef, align 4
@"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim" = addrspace(3) global [384 x float] undef, align 4

define void @csmain() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = mul i32 %8, %5
  %10 = add i32 %9, %8
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %50

; <label>:12                                      ; preds = %0
  br label %13

; <label>:13                                      ; preds = %39, %12
  %14 = phi i32 [ %40, %39 ], [ 0, %12 ]
  %15 = phi float [ %41, %39 ], [ 1.000000e+07, %12 ]
  %16 = phi float [ %42, %39 ], [ -1.000000e+07, %12 ]
  %17 = phi float [ %43, %39 ], [ 0.000000e+00, %12 ]
  %18 = phi float [ %44, %39 ], [ 0.000000e+00, %12 ]
  %19 = phi i32 [ %45, %39 ], [ %9, %12 ]
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 1
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %39, !dx.controlflow.hints !14

; <label>:23                                      ; preds = %13
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %19, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %19, i32 4)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %19, i32 8)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %19, i32 12)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %19, i32 16)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = call float @dx.op.binary.f32(i32 36, float %15, float %27)  ; FMin(a,b)
  %35 = call float @dx.op.binary.f32(i32 35, float %16, float %29)  ; FMax(a,b)
  %36 = add i32 %25, %14
  %37 = fadd fast float %31, %17
  %38 = fadd fast float %33, %18
  br label %39

; <label>:39                                      ; preds = %23, %13
  %40 = phi i32 [ %36, %23 ], [ %14, %13 ]
  %41 = phi float [ %34, %23 ], [ %15, %13 ]
  %42 = phi float [ %35, %23 ], [ %16, %13 ]
  %43 = phi float [ %37, %23 ], [ %17, %13 ]
  %44 = phi float [ %38, %23 ], [ %18, %13 ]
  %45 = add i32 %19, 1
  %46 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %47 = add i32 %46, %9
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %13, label %49

; <label>:49                                      ; preds = %39
  br label %50

; <label>:50                                      ; preds = %49, %0
  %51 = phi i32 [ 0, %0 ], [ %40, %49 ]
  %52 = phi float [ 1.000000e+07, %0 ], [ %41, %49 ]
  %53 = phi float [ -1.000000e+07, %0 ], [ %42, %49 ]
  %54 = phi float [ 0.000000e+00, %0 ], [ %43, %49 ]
  %55 = phi float [ 0.000000e+00, %0 ], [ %44, %49 ]
  %56 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %6
  %57 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %6
  %58 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %6
  %59 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %6
  %60 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %6
  store i32 %51, i32 addrspace(3)* %56, align 4
  store float %52, float addrspace(3)* %57, align 4
  store float %53, float addrspace(3)* %58, align 4
  store float %54, float addrspace(3)* %59, align 4
  store float %55, float addrspace(3)* %60, align 4
  %61 = mul i32 %6, 3
  %62 = add i32 0, %61
  %63 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 %62
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  %64 = mul i32 %6, 3
  %65 = add i32 1, %64
  %66 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 %65
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  %67 = mul i32 %6, 3
  %68 = add i32 2, %67
  %69 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 %68
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %70 = icmp ult i32 %6, 64
  br i1 %70, label %71, label %93, !dx.controlflow.hints !15

; <label>:71                                      ; preds = %50
  %72 = load i32, i32 addrspace(3)* %56, align 4
  %73 = load float, float addrspace(3)* %57, align 4
  %74 = load float, float addrspace(3)* %58, align 4
  %75 = load float, float addrspace(3)* %59, align 4
  %76 = load float, float addrspace(3)* %60, align 4
  %77 = add i32 %6, 64
  %78 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %77
  %79 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %77
  %80 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %77
  %81 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %77
  %82 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %77
  %83 = load i32, i32 addrspace(3)* %78, align 4
  %84 = load float, float addrspace(3)* %79, align 4
  %85 = load float, float addrspace(3)* %80, align 4
  %86 = load float, float addrspace(3)* %81, align 4
  %87 = load float, float addrspace(3)* %82, align 4
  %88 = call float @dx.op.binary.f32(i32 36, float %73, float %84)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %74, float %85)  ; FMax(a,b)
  %90 = add i32 %83, %72
  %91 = fadd fast float %86, %75
  %92 = fadd fast float %87, %76
  store i32 %90, i32 addrspace(3)* %56, align 4
  store float %88, float addrspace(3)* %57, align 4
  store float %89, float addrspace(3)* %58, align 4
  store float %91, float addrspace(3)* %59, align 4
  store float %92, float addrspace(3)* %60, align 4
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  br label %93

; <label>:93                                      ; preds = %71, %50
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %94 = icmp ult i32 %6, 32
  br i1 %94, label %95, label %117, !dx.controlflow.hints !15

; <label>:95                                      ; preds = %93
  %96 = load i32, i32 addrspace(3)* %56, align 4
  %97 = load float, float addrspace(3)* %57, align 4
  %98 = load float, float addrspace(3)* %58, align 4
  %99 = load float, float addrspace(3)* %59, align 4
  %100 = load float, float addrspace(3)* %60, align 4
  %101 = add i32 %6, 32
  %102 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %101
  %103 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %101
  %104 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %101
  %105 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %101
  %106 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %101
  %107 = load i32, i32 addrspace(3)* %102, align 4
  %108 = load float, float addrspace(3)* %103, align 4
  %109 = load float, float addrspace(3)* %104, align 4
  %110 = load float, float addrspace(3)* %105, align 4
  %111 = load float, float addrspace(3)* %106, align 4
  %112 = call float @dx.op.binary.f32(i32 36, float %97, float %108)  ; FMin(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float %98, float %109)  ; FMax(a,b)
  %114 = add i32 %107, %96
  %115 = fadd fast float %110, %99
  %116 = fadd fast float %111, %100
  store i32 %114, i32 addrspace(3)* %56, align 4
  store float %112, float addrspace(3)* %57, align 4
  store float %113, float addrspace(3)* %58, align 4
  store float %115, float addrspace(3)* %59, align 4
  store float %116, float addrspace(3)* %60, align 4
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  br label %117

; <label>:117                                     ; preds = %95, %93
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %118 = icmp ult i32 %6, 16
  br i1 %118, label %119, label %141, !dx.controlflow.hints !15

; <label>:119                                     ; preds = %117
  %120 = load i32, i32 addrspace(3)* %56, align 4
  %121 = load float, float addrspace(3)* %57, align 4
  %122 = load float, float addrspace(3)* %58, align 4
  %123 = load float, float addrspace(3)* %59, align 4
  %124 = load float, float addrspace(3)* %60, align 4
  %125 = add i32 %6, 16
  %126 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %125
  %127 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %125
  %128 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %125
  %129 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %125
  %130 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %125
  %131 = load i32, i32 addrspace(3)* %126, align 4
  %132 = load float, float addrspace(3)* %127, align 4
  %133 = load float, float addrspace(3)* %128, align 4
  %134 = load float, float addrspace(3)* %129, align 4
  %135 = load float, float addrspace(3)* %130, align 4
  %136 = call float @dx.op.binary.f32(i32 36, float %121, float %132)  ; FMin(a,b)
  %137 = call float @dx.op.binary.f32(i32 35, float %122, float %133)  ; FMax(a,b)
  %138 = add i32 %131, %120
  %139 = fadd fast float %134, %123
  %140 = fadd fast float %135, %124
  store i32 %138, i32 addrspace(3)* %56, align 4
  store float %136, float addrspace(3)* %57, align 4
  store float %137, float addrspace(3)* %58, align 4
  store float %139, float addrspace(3)* %59, align 4
  store float %140, float addrspace(3)* %60, align 4
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  br label %141

; <label>:141                                     ; preds = %119, %117
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %142 = icmp ult i32 %6, 8
  br i1 %142, label %143, label %165, !dx.controlflow.hints !15

; <label>:143                                     ; preds = %141
  %144 = load i32, i32 addrspace(3)* %56, align 4
  %145 = load float, float addrspace(3)* %57, align 4
  %146 = load float, float addrspace(3)* %58, align 4
  %147 = load float, float addrspace(3)* %59, align 4
  %148 = load float, float addrspace(3)* %60, align 4
  %149 = add i32 %6, 8
  %150 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %149
  %151 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %149
  %152 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %149
  %153 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %149
  %154 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %149
  %155 = load i32, i32 addrspace(3)* %150, align 4
  %156 = load float, float addrspace(3)* %151, align 4
  %157 = load float, float addrspace(3)* %152, align 4
  %158 = load float, float addrspace(3)* %153, align 4
  %159 = load float, float addrspace(3)* %154, align 4
  %160 = call float @dx.op.binary.f32(i32 36, float %145, float %156)  ; FMin(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %146, float %157)  ; FMax(a,b)
  %162 = add i32 %155, %144
  %163 = fadd fast float %158, %147
  %164 = fadd fast float %159, %148
  store i32 %162, i32 addrspace(3)* %56, align 4
  store float %160, float addrspace(3)* %57, align 4
  store float %161, float addrspace(3)* %58, align 4
  store float %163, float addrspace(3)* %59, align 4
  store float %164, float addrspace(3)* %60, align 4
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  br label %165

; <label>:165                                     ; preds = %143, %141
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %166 = icmp ult i32 %6, 4
  br i1 %166, label %167, label %189, !dx.controlflow.hints !15

; <label>:167                                     ; preds = %165
  %168 = load i32, i32 addrspace(3)* %56, align 4
  %169 = load float, float addrspace(3)* %57, align 4
  %170 = load float, float addrspace(3)* %58, align 4
  %171 = load float, float addrspace(3)* %59, align 4
  %172 = load float, float addrspace(3)* %60, align 4
  %173 = add i32 %6, 4
  %174 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %173
  %175 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %173
  %176 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %173
  %177 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %173
  %178 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %173
  %179 = load i32, i32 addrspace(3)* %174, align 4
  %180 = load float, float addrspace(3)* %175, align 4
  %181 = load float, float addrspace(3)* %176, align 4
  %182 = load float, float addrspace(3)* %177, align 4
  %183 = load float, float addrspace(3)* %178, align 4
  %184 = call float @dx.op.binary.f32(i32 36, float %169, float %180)  ; FMin(a,b)
  %185 = call float @dx.op.binary.f32(i32 35, float %170, float %181)  ; FMax(a,b)
  %186 = add i32 %179, %168
  %187 = fadd fast float %182, %171
  %188 = fadd fast float %183, %172
  store i32 %186, i32 addrspace(3)* %56, align 4
  store float %184, float addrspace(3)* %57, align 4
  store float %185, float addrspace(3)* %58, align 4
  store float %187, float addrspace(3)* %59, align 4
  store float %188, float addrspace(3)* %60, align 4
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  br label %189

; <label>:189                                     ; preds = %167, %165
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %190 = icmp ult i32 %6, 2
  br i1 %190, label %191, label %213, !dx.controlflow.hints !15

; <label>:191                                     ; preds = %189
  %192 = load i32, i32 addrspace(3)* %56, align 4
  %193 = load float, float addrspace(3)* %57, align 4
  %194 = load float, float addrspace(3)* %58, align 4
  %195 = load float, float addrspace(3)* %59, align 4
  %196 = load float, float addrspace(3)* %60, align 4
  %197 = add i32 %6, 2
  %198 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 %197
  %199 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 %197
  %200 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 %197
  %201 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 %197
  %202 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 %197
  %203 = load i32, i32 addrspace(3)* %198, align 4
  %204 = load float, float addrspace(3)* %199, align 4
  %205 = load float, float addrspace(3)* %200, align 4
  %206 = load float, float addrspace(3)* %201, align 4
  %207 = load float, float addrspace(3)* %202, align 4
  %208 = call float @dx.op.binary.f32(i32 36, float %193, float %204)  ; FMin(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float %194, float %205)  ; FMax(a,b)
  %210 = add i32 %203, %192
  %211 = fadd fast float %206, %195
  %212 = fadd fast float %207, %196
  store i32 %210, i32 addrspace(3)* %56, align 4
  store float %208, float addrspace(3)* %57, align 4
  store float %209, float addrspace(3)* %58, align 4
  store float %211, float addrspace(3)* %59, align 4
  store float %212, float addrspace(3)* %60, align 4
  store float 0.000000e+00, float addrspace(3)* %63, align 4
  store float 0.000000e+00, float addrspace(3)* %66, align 4
  store float 0.000000e+00, float addrspace(3)* %69, align 4
  br label %213

; <label>:213                                     ; preds = %191, %189
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = icmp eq i32 %6, 0
  br i1 %214, label %215, label %231, !dx.controlflow.hints !15

; <label>:215                                     ; preds = %213
  %216 = load i32, i32 addrspace(3)* getelementptr inbounds ([128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 0), align 4
  %217 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 0), align 4
  %218 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 0), align 4
  %219 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 0), align 4
  %220 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 0), align 4
  %221 = load i32, i32 addrspace(3)* getelementptr inbounds ([128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 1), align 4
  %222 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 1), align 4
  %223 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 1), align 4
  %224 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 1), align 4
  %225 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 1), align 4
  %226 = call float @dx.op.binary.f32(i32 36, float %217, float %222)  ; FMin(a,b)
  %227 = call float @dx.op.binary.f32(i32 35, float %218, float %223)  ; FMax(a,b)
  %228 = add i32 %221, %216
  %229 = fadd fast float %224, %219
  %230 = fadd fast float %225, %220
  store i32 %228, i32 addrspace(3)* getelementptr inbounds ([128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 0), align 4
  store float %226, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 0), align 4
  store float %227, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 0), align 4
  store float %229, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 0), align 4
  store float %230, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 0), align 4
  store float 0.000000e+00, float addrspace(3)* getelementptr inbounds ([384 x float], [384 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 0), align 4
  store float 0.000000e+00, float addrspace(3)* getelementptr inbounds ([384 x float], [384 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 1), align 4
  store float 0.000000e+00, float addrspace(3)* getelementptr inbounds ([384 x float], [384 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 2), align 4
  br label %231

; <label>:231                                     ; preds = %215, %213
  %232 = phi i1 [ %214, %215 ], [ false, %213 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %232, label %233, label %249, !dx.controlflow.hints !16

; <label>:233                                     ; preds = %231
  %234 = load i32, i32 addrspace(3)* getelementptr inbounds ([128 x i32], [128 x i32] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.0", i32 0, i32 0), align 4
  %235 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.1", i32 0, i32 0), align 4
  %236 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.2", i32 0, i32 0), align 4
  %237 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.3", i32 0, i32 0), align 4
  %238 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?GroupOutput@@3PAUMDBlock@@A.4", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %4, i32 0, float %235, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %239 = uitofp i32 %234 to float
  %240 = fdiv fast float %237, %239
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %4, i32 4, float %240, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %4, i32 8, float %236, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %4, i32 4)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %4, i32 16, float %242, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %243 = fdiv fast float %238, %239
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %4, i32 4)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = fmul fast float %245, %245
  %247 = fsub fast float %243, %246
  %248 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %4, i32 12, float %248, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %249

; <label>:249                                     ; preds = %233, %231
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !9, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.RWStructuredBuffer<MDBlock>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!7 = !{i32 1, i32 32}
!8 = !{i32 1, %"class.RWStructuredBuffer<FrameStats>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!9 = !{!10}
!10 = !{i32 0, %cbParameters* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!11 = !{void ()* @csmain, !"csmain", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 128, i32 1, i32 1}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

