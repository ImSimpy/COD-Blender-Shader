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
; shader hash: a599aacb0fb4b6d4bfb408226fe4bcd7
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
;   [224 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t7     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<DecalVolumeLodState>" = type { %struct.DecalVolumeLodState }
%struct.DecalVolumeLodState = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, <3 x float>, float }
%decalVolumeLodStateConstants = type { %struct.DecalVolumeLodStateCsConstants }
%struct.DecalVolumeLodStateCsConstants = type { i32, float, float, i32, [6 x <4 x float>], float, float, i32, i32, float, float, float, i32, float, float, float, i32, <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, float, float, i32, i32 }

define void @cs_decal_volume_lod_update() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %6 = extractvalue %dx.types.ResRet.i32 %5, 0
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.f32 %9, 0
  %11 = extractvalue %dx.types.ResRet.f32 %9, 1
  %12 = extractvalue %dx.types.ResRet.f32 %9, 2
  %13 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 12)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 16)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  %17 = extractvalue %dx.types.ResRet.f32 %15, 1
  %18 = extractvalue %dx.types.ResRet.f32 %15, 2
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 32)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 0, i32 48)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %52

; <label>:30                                      ; preds = %0
  br label %31

; <label>:31                                      ; preds = %31, %30
  %32 = phi i32 [ %45, %31 ], [ 1, %30 ]
  %33 = phi float [ %49, %31 ], [ 0.000000e+00, %30 ]
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = uitofp i32 %35 to float
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 0
  %39 = add i32 %38, -1
  %40 = icmp eq i32 %32, %39
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %43 = select i1 %40, float %42, float 0.000000e+00
  %44 = fadd fast float %43, %36
  %45 = add i32 %32, 1
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 %45)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %44, %47
  %49 = call float @dx.op.binary.f32(i32 35, float %33, float %48)  ; FMax(a,b)
  %50 = icmp ult i32 %45, %38
  br i1 %50, label %31, label %51

; <label>:51                                      ; preds = %31
  br label %52

; <label>:52                                      ; preds = %51, %0
  %53 = phi float [ 0.000000e+00, %0 ], [ %49, %51 ]
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = fcmp fast ogt float %53, %55
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  br i1 %56, label %58, label %101, !dx.controlflow.hints !17

; <label>:58                                      ; preds = %52
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fsub fast float %10, %63
  %67 = fsub fast float %11, %64
  %68 = fsub fast float %12, %65
  %69 = call float @dx.op.binary.f32(i32 35, float %66, float %61)  ; FMax(a,b)
  %70 = call float @dx.op.binary.f32(i32 35, float %67, float %61)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float %68, float %61)  ; FMax(a,b)
  %72 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %73 = fsub fast float %16, %63
  %74 = fsub fast float %17, %64
  %75 = fsub fast float %18, %65
  %76 = call float @dx.op.binary.f32(i32 35, float %73, float %72)  ; FMax(a,b)
  %77 = call float @dx.op.binary.f32(i32 35, float %74, float %72)  ; FMax(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %75, float %72)  ; FMax(a,b)
  %79 = fmul fast float %61, 3.000000e+00
  %80 = fcmp fast ugt float %69, %79
  br i1 %80, label %88, label %81, !dx.controlflow.hints !18

; <label>:81                                      ; preds = %58
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fadd fast float %85, %20
  %87 = call float @dx.op.binary.f32(i32 36, float %86, float %83)  ; FMin(a,b)
  br label %88

; <label>:88                                      ; preds = %81, %58
  %89 = phi float [ %20, %58 ], [ %87, %81 ]
  %90 = fcmp fast ugt float %70, %79
  br i1 %90, label %201, label %194, !dx.controlflow.hints !18

; <label>:91                                      ; preds = %211
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fadd fast float %95, %24
  %97 = call float @dx.op.binary.f32(i32 36, float %96, float %93)  ; FMin(a,b)
  br label %98

; <label>:98                                      ; preds = %211, %91
  %99 = phi float [ %24, %211 ], [ %97, %91 ]
  %100 = fcmp fast ugt float %77, %213
  br i1 %100, label %184, label %177, !dx.controlflow.hints !19

; <label>:101                                     ; preds = %52
  %102 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %103 = fadd fast float %102, %14
  %104 = fcmp fast ult float %103, 0.000000e+00
  br i1 %104, label %136, label %105, !dx.controlflow.hints !20

; <label>:105                                     ; preds = %101
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = fmul fast float %102, %107
  %109 = fadd fast float %108, %10
  %110 = fadd fast float %108, %11
  %111 = fadd fast float %108, %12
  %112 = call float @dx.op.unary.f32(i32 7, float %109)  ; Saturate(value)
  %113 = call float @dx.op.unary.f32(i32 7, float %110)  ; Saturate(value)
  %114 = call float @dx.op.unary.f32(i32 7, float %111)  ; Saturate(value)
  %115 = fadd fast float %108, %16
  %116 = fadd fast float %108, %17
  %117 = fadd fast float %108, %18
  %118 = call float @dx.op.unary.f32(i32 7, float %115)  ; Saturate(value)
  %119 = call float @dx.op.unary.f32(i32 7, float %116)  ; Saturate(value)
  %120 = call float @dx.op.unary.f32(i32 7, float %117)  ; Saturate(value)
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = fmul fast float %102, %122
  %124 = fsub fast float %20, %123
  %125 = fsub fast float %21, %123
  %126 = fsub fast float %22, %123
  %127 = call float @dx.op.binary.f32(i32 35, float %124, float 1.000000e+00)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float %125, float 1.000000e+00)  ; FMax(a,b)
  %129 = call float @dx.op.binary.f32(i32 35, float %126, float 1.000000e+00)  ; FMax(a,b)
  %130 = fsub fast float %24, %123
  %131 = fsub fast float %25, %123
  %132 = fsub fast float %26, %123
  %133 = call float @dx.op.binary.f32(i32 35, float %130, float 1.000000e+00)  ; FMax(a,b)
  %134 = call float @dx.op.binary.f32(i32 35, float %131, float 1.000000e+00)  ; FMax(a,b)
  %135 = call float @dx.op.binary.f32(i32 35, float %132, float 1.000000e+00)  ; FMax(a,b)
  br label %136

; <label>:136                                     ; preds = %187, %184, %105, %101
  %137 = phi float [ %114, %105 ], [ %12, %101 ], [ %71, %187 ], [ %71, %184 ]
  %138 = phi float [ %113, %105 ], [ %11, %101 ], [ %70, %187 ], [ %70, %184 ]
  %139 = phi float [ %112, %105 ], [ %10, %101 ], [ %69, %187 ], [ %69, %184 ]
  %140 = phi float [ %120, %105 ], [ %18, %101 ], [ %78, %187 ], [ %78, %184 ]
  %141 = phi float [ %119, %105 ], [ %17, %101 ], [ %77, %187 ], [ %77, %184 ]
  %142 = phi float [ %118, %105 ], [ %16, %101 ], [ %76, %187 ], [ %76, %184 ]
  %143 = phi float [ %129, %105 ], [ %22, %101 ], [ %212, %187 ], [ %212, %184 ]
  %144 = phi float [ %128, %105 ], [ %21, %101 ], [ %202, %187 ], [ %202, %184 ]
  %145 = phi float [ %127, %105 ], [ %20, %101 ], [ %89, %187 ], [ %89, %184 ]
  %146 = phi float [ %135, %105 ], [ %26, %101 ], [ %193, %187 ], [ %26, %184 ]
  %147 = phi float [ %134, %105 ], [ %25, %101 ], [ %185, %187 ], [ %185, %184 ]
  %148 = phi float [ %133, %105 ], [ %24, %101 ], [ %99, %187 ], [ %99, %184 ]
  %149 = phi float [ 0.000000e+00, %105 ], [ %103, %101 ], [ %59, %187 ], [ %59, %184 ]
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = fcmp fast ult float %151, 0.000000e+00
  br i1 %152, label %156, label %153, !dx.controlflow.hints !21

; <label>:153                                     ; preds = %136
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  br label %156

; <label>:156                                     ; preds = %153, %136
  %157 = phi float [ %151, %153 ], [ %137, %136 ]
  %158 = phi float [ %151, %153 ], [ %138, %136 ]
  %159 = phi float [ %151, %153 ], [ %139, %136 ]
  %160 = phi float [ %151, %153 ], [ %140, %136 ]
  %161 = phi float [ %151, %153 ], [ %141, %136 ]
  %162 = phi float [ %151, %153 ], [ %142, %136 ]
  %163 = phi float [ %155, %153 ], [ %149, %136 ]
  %164 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %165 = fcmp fast ult float %164, 0.000000e+00
  br i1 %165, label %169, label %166, !dx.controlflow.hints !22

; <label>:166                                     ; preds = %156
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  br label %169

; <label>:169                                     ; preds = %166, %156
  %170 = phi float [ %164, %166 ], [ %143, %156 ]
  %171 = phi float [ %164, %166 ], [ %144, %156 ]
  %172 = phi float [ %164, %166 ], [ %145, %156 ]
  %173 = phi float [ %164, %166 ], [ %146, %156 ]
  %174 = phi float [ %164, %166 ], [ %147, %156 ]
  %175 = phi float [ %164, %166 ], [ %148, %156 ]
  %176 = phi float [ %168, %166 ], [ %163, %156 ]
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 0, float %159, float %158, float %157, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 12, float %176, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %162, float %161, float %160, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 28, i32 %6, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %172, float %171, float %170, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 44, i32 %8, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %175, float %174, float %173, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %53, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void

; <label>:177                                     ; preds = %98
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %182 = fadd fast float %181, %25
  %183 = call float @dx.op.binary.f32(i32 36, float %182, float %179)  ; FMin(a,b)
  br label %184

; <label>:184                                     ; preds = %177, %98
  %185 = phi float [ %25, %98 ], [ %183, %177 ]
  %186 = fcmp fast ugt float %78, %213
  br i1 %186, label %136, label %187, !dx.controlflow.hints !19

; <label>:187                                     ; preds = %184
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = fadd fast float %191, %26
  %193 = call float @dx.op.binary.f32(i32 36, float %192, float %189)  ; FMin(a,b)
  br label %136

; <label>:194                                     ; preds = %88
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 1
  %199 = fadd fast float %198, %21
  %200 = call float @dx.op.binary.f32(i32 36, float %199, float %196)  ; FMin(a,b)
  br label %201

; <label>:201                                     ; preds = %194, %88
  %202 = phi float [ %21, %88 ], [ %200, %194 ]
  %203 = fcmp fast ugt float %71, %79
  br i1 %203, label %211, label %204, !dx.controlflow.hints !18

; <label>:204                                     ; preds = %201
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fadd fast float %208, %22
  %210 = call float @dx.op.binary.f32(i32 36, float %209, float %206)  ; FMin(a,b)
  br label %211

; <label>:211                                     ; preds = %204, %201
  %212 = phi float [ %22, %201 ], [ %210, %204 ]
  %213 = fmul fast float %72, 3.000000e+00
  %214 = fcmp fast ugt float %76, %213
  br i1 %214, label %98, label %91, !dx.controlflow.hints !19
}

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWStructuredBuffer<DecalVolumeLodState>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 64}
!12 = !{!13}
!13 = !{i32 0, %decalVolumeLodStateConstants* undef, !"", i32 0, i32 0, i32 1, i32 224, null}
!14 = !{void ()* @cs_decal_volume_lod_update, !"cs_decal_volume_lod_update", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 1, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}

