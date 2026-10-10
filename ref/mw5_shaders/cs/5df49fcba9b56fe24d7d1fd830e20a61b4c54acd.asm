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
; shader hash: 91819fc5fbd4991a96ff5d055c1f44d2
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
;   [464 x i8] (type annotation not present)
;
; }
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
;   [80 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
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
;   [20 x i8] (type annotation not present)
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
;   [16 x i8] (type annotation not present)
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
;   [8 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture  struct         r/o      T2             t3     1
;                                   texture  struct         r/o      T3             t4     1
;                                   texture  struct         r/o      T4             t7     1
;                                   texture  struct         r/o      T5             t9     1
;                                   texture  struct         r/o      T6             t6     1
;                                   texture  struct         r/o      T7             t0     1
;                                       UAV  struct         r/w      U0             u6     1
;                                       UAV    byte         r/w      U1             u0     1
;                                       UAV  struct         r/w      U2             u4     1
;                                       UAV    byte         r/w      U3             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<FxEmitterInstancePerFrameData>" = type { %struct.FxEmitterInstancePerFrameData }
%struct.FxEmitterInstancePerFrameData = type { <4 x float>, <3 x float>, i32, <3 x float>, i32, i32, float, float, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<FxEmitterDefPerFrameData>" = type { %struct.FxEmitterDefPerFrameData }
%struct.FxEmitterDefPerFrameData = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<FxParticle>" = type { %struct.FxParticle }
%struct.FxParticle = type { <2 x i32>, <2 x i32>, i32 }
%"class.StructuredBuffer<FxParticleCounter>" = type { %struct.FxParticleCounter }
%struct.FxParticleCounter = type { i32, i32, i32, i32 }
%"class.RWStructuredBuffer<FxSortItem>" = type { %struct.FxSortItem }
%struct.FxSortItem = type { float, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prerender_sorted_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %18, i32 0)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %18, i32 4)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = icmp ugt i32 %20, 1
  br i1 %23, label %24, label %44

; <label>:24                                      ; preds = %0
  br label %25

; <label>:25                                      ; preds = %25, %24
  %26 = phi i32 [ %37, %25 ], [ 0, %24 ]
  %27 = phi i32 [ %38, %25 ], [ 0, %24 ]
  %28 = phi i32 [ %39, %25 ], [ %20, %24 ]
  %29 = sub i32 %28, %26
  %30 = lshr i32 %29, 1
  %31 = add i32 %30, %26
  %32 = add i32 %22, 511
  %33 = add i32 %32, %31
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = icmp ult i32 %16, %35
  %37 = select i1 %36, i32 %26, i32 %31
  %38 = select i1 %36, i32 %27, i32 %35
  %39 = select i1 %36, i32 %31, i32 %28
  %40 = sub i32 %28, %31
  %41 = select i1 %36, i32 %30, i32 %40
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %25, label %43

; <label>:43                                      ; preds = %25
  br label %44

; <label>:44                                      ; preds = %43, %0
  %45 = phi i32 [ 0, %0 ], [ %37, %43 ]
  %46 = phi i32 [ 0, %0 ], [ %38, %43 ]
  %47 = phi i32 [ %20, %0 ], [ %39, %43 ]
  %48 = icmp eq i32 %45, 0
  %49 = shl i32 %46, 6
  %50 = select i1 %48, i32 0, i32 %49
  %51 = sub i32 %15, %50
  %52 = add i32 %22, -1
  %53 = add i32 %52, %47
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %53, i32 0)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %55, i32 0)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = extractvalue %dx.types.ResRet.f32 %56, 3
  %61 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %55, i32 16)  ; BufferLoad(srv,index,wot)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %55, i32 28)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %55, i32 44)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %55, i32 48)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %55, i32 12)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  %73 = icmp ult i32 %51, %72
  br i1 %73, label %74, label %1271, !dx.controlflow.hints !30

; <label>:74                                      ; preds = %44
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = extractvalue %dx.types.ResRet.f32 %77, 1
  %80 = extractvalue %dx.types.ResRet.f32 %77, 2
  %81 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = extractvalue %dx.types.ResRet.f32 %81, 1
  %84 = extractvalue %dx.types.ResRet.f32 %81, 2
  %85 = extractvalue %dx.types.ResRet.f32 %81, 3
  %86 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = extractvalue %dx.types.ResRet.f32 %86, 3
  %91 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = extractvalue %dx.types.ResRet.f32 %91, 1
  %94 = extractvalue %dx.types.ResRet.f32 %91, 2
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = extractvalue %dx.types.ResRet.f32 %95, 3
  %100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = extractvalue %dx.types.ResRet.f32 %100, 1
  %103 = extractvalue %dx.types.ResRet.f32 %100, 2
  %104 = extractvalue %dx.types.ResRet.f32 %100, 3
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = extractvalue %dx.types.ResRet.f32 %133, 1
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %138 = shl i32 %137, 8
  %139 = or i32 %138, 2
  %140 = add i32 %139, %55
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %140, i32 0)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.i32 %136, 2
  %144 = mul nsw i32 %143, %137
  %145 = sub nsw i32 %142, %144
  %146 = add i32 %145, %51
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %146, i32 4)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 0
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %148, i32 0)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = extractvalue %dx.types.ResRet.i32 %149, 1
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %148, i32 8)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = extractvalue %dx.types.ResRet.i32 %152, 1
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %148, i32 16)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %150, -2048
  %158 = bitcast i32 %157 to float
  %159 = shl i32 %150, 21
  %160 = lshr i32 %151, 11
  %161 = and i32 %160, 2095104
  %162 = or i32 %161, %159
  %163 = bitcast i32 %162 to float
  %164 = shl i32 %151, 10
  %165 = and i32 %164, -2048
  %166 = bitcast i32 %165 to float
  %167 = and i32 %76, 4194304
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %177, !dx.controlflow.hints !31

; <label>:169                                     ; preds = %74
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = fadd fast float %171, %158
  %175 = fadd fast float %172, %163
  %176 = fadd fast float %173, %166
  br label %177

; <label>:177                                     ; preds = %169, %74
  %178 = phi float [ %158, %74 ], [ %174, %169 ]
  %179 = phi float [ %163, %74 ], [ %175, %169 ]
  %180 = phi float [ %166, %74 ], [ %176, %169 ]
  %181 = lshr i32 %153, 16
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = and i32 %154, 65535
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = lshr i32 %154, 16
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = and i32 %153, 65535
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3EF0001000000000
  %190 = lshr i32 %156, 16
  %191 = shl nuw nsw i32 %190, 7
  %192 = and i32 %191, 65408
  %193 = xor i32 %192, %190
  %194 = lshr i32 %193, 9
  %195 = xor i32 %194, %193
  %196 = shl nuw nsw i32 %195, 8
  %197 = and i32 %196, 65280
  %198 = xor i32 %197, %195
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %108, 0x3EF0001000000000
  %201 = fmul fast float %200, %199
  %202 = fadd fast float %201, %106
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 65535
  %206 = lshr i32 %204, 16
  %207 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %208 = uitofp i32 %205 to float
  %209 = fmul fast float %208, %207
  %210 = add nsw i32 %205, -1
  %211 = call float @dx.op.unary.f32(i32 27, float %209)  ; Round_ni(value)
  %212 = fptosi float %211 to i32
  %213 = call i32 @dx.op.binary.i32(i32 38, i32 %212, i32 %210)  ; IMin(a,b)
  %214 = uitofp i32 %213 to float
  %215 = fsub fast float %209, %214
  %216 = shl i32 %213, 1
  %217 = mul i32 %213, 96
  %218 = add i32 %217, %206
  %219 = add i32 %218, 20
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add i32 %218, 24
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add i32 %218, 28
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = add i32 %218, 32
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = extractvalue %dx.types.ResRet.i32 %229, 1
  %232 = add i32 %218, 40
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = extractvalue %dx.types.ResRet.i32 %233, 1
  %236 = and i32 %230, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %230, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = and i32 %231, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %231, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = and i32 %234, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %234, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = and i32 %235, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %235, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = and i32 %221, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %221, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = and i32 %224, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %224, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = and i32 %227, 65535
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = or i32 %216, 1
  %263 = mul i32 %262, 48
  %264 = add i32 %263, %206
  %265 = add i32 %264, 20
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = add i32 %264, 24
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = add i32 %264, 28
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = add i32 %264, 32
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = extractvalue %dx.types.ResRet.i32 %275, 1
  %278 = add i32 %264, 40
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = extractvalue %dx.types.ResRet.i32 %279, 1
  %282 = and i32 %276, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %276, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = and i32 %277, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %277, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = and i32 %280, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %280, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = and i32 %281, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %281, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = and i32 %267, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %267, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = and i32 %270, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %270, 16
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = and i32 %273, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add nuw nsw i32 %206, 96
  %309 = add i32 %308, %217
  %310 = add i32 %309, 20
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %309, 24
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = add i32 %309, 28
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %309, 32
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = extractvalue %dx.types.ResRet.i32 %320, 1
  %323 = add i32 %309, 40
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = extractvalue %dx.types.ResRet.i32 %324, 1
  %327 = and i32 %321, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %321, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = and i32 %322, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %322, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = and i32 %325, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %325, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = and i32 %326, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %326, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = and i32 %312, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %312, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = and i32 %315, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %315, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = and i32 %318, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add nuw nsw i32 %206, 144
  %354 = add i32 %353, %217
  %355 = add i32 %354, 20
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = add i32 %354, 24
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %354, 28
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = add i32 %354, 32
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = extractvalue %dx.types.ResRet.i32 %365, 1
  %368 = add i32 %354, 40
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = extractvalue %dx.types.ResRet.i32 %369, 1
  %372 = and i32 %366, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %366, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = and i32 %367, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %367, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = and i32 %370, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %370, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = and i32 %371, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %371, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = and i32 %357, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %357, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = and i32 %360, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %360, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = and i32 %363, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = shl i32 %156, 7
  %399 = and i32 %398, 65408
  %400 = and i32 %156, 65535
  %401 = xor i32 %399, %400
  %402 = lshr i32 %401, 9
  %403 = xor i32 %402, %401
  %404 = shl nuw nsw i32 %403, 8
  %405 = and i32 %404, 65280
  %406 = xor i32 %405, %403
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3EF0001000000000
  %409 = shl nuw nsw i32 %406, 7
  %410 = and i32 %409, 65408
  %411 = xor i32 %410, %406
  %412 = lshr i32 %411, 9
  %413 = and i32 %412, 65535
  %414 = xor i32 %413, %411
  %415 = shl nuw nsw i32 %414, 8
  %416 = xor i32 %415, %414
  %417 = and i32 %416, 65535
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3EF0001000000000
  %420 = shl nuw nsw i32 %417, 7
  %421 = xor i32 %420, %416
  %422 = lshr i32 %421, 9
  %423 = and i32 %422, 127
  %424 = and i32 %421, 65535
  %425 = xor i32 %423, %424
  %426 = shl nuw nsw i32 %425, 8
  %427 = and i32 %426, 65280
  %428 = xor i32 %427, %425
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3EF0001000000000
  %431 = shl nuw nsw i32 %428, 7
  %432 = and i32 %431, 65408
  %433 = xor i32 %432, %428
  %434 = lshr i32 %433, 9
  %435 = xor i32 %434, %433
  %436 = shl nuw nsw i32 %435, 8
  %437 = and i32 %436, 65280
  %438 = xor i32 %437, %435
  %439 = fmul fast float %182, %182
  %440 = fmul fast float %184, %184
  %441 = fadd fast float %440, %439
  %442 = fmul fast float %186, %186
  %443 = fadd fast float %441, %442
  %444 = call float @dx.op.unary.f32(i32 24, float %443)  ; Sqrt(value)
  %445 = and i32 %76, 256
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %419, float %408
  %448 = fmul fast float %299, %408
  %449 = fmul fast float %301, %447
  %450 = fadd fast float %448, %253
  %451 = fadd fast float %449, %255
  %452 = fmul fast float %389, %408
  %453 = fmul fast float %391, %447
  %454 = fsub fast float %344, %450
  %455 = fadd fast float %454, %452
  %456 = fsub fast float %346, %451
  %457 = fadd fast float %456, %453
  %458 = fmul fast float %455, %215
  %459 = fmul fast float %457, %215
  %460 = fadd fast float %458, %450
  %461 = fadd fast float %459, %451
  %462 = and i32 %76, 262144
  %463 = icmp ne i32 %462, 0
  %464 = fmul fast float %461, %444
  %465 = select i1 %463, float %464, float %461
  %466 = fcmp fast ogt float %134, 0.000000e+00
  %467 = fcmp fast ogt float %135, 0.000000e+00
  %468 = or i1 %466, %467
  %469 = call float @dx.op.binary.f32(i32 35, float %465, float %134)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 36, float %469, float %135)  ; FMin(a,b)
  %471 = select i1 %468, float %470, float %465
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = fsub fast float -0.000000e+00, %473
  %479 = fsub fast float -0.000000e+00, %475
  %480 = fsub fast float -0.000000e+00, %477
  %481 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %482 = extractvalue %dx.types.CBufRet.f32 %474, 1
  %483 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %484 = fsub fast float -0.000000e+00, %481
  %485 = fsub fast float -0.000000e+00, %482
  %486 = fsub fast float -0.000000e+00, %483
  %487 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %488 = extractvalue %dx.types.CBufRet.f32 %474, 2
  %489 = extractvalue %dx.types.CBufRet.f32 %476, 2
  br i1 %168, label %554, label %490, !dx.controlflow.hints !32

; <label>:490                                     ; preds = %177
  %491 = fmul fast float %180, %58
  %492 = fmul fast float %179, %59
  %493 = fsub fast float %491, %492
  %494 = fmul fast float %178, %59
  %495 = fmul fast float %180, %57
  %496 = fsub fast float %494, %495
  %497 = fmul fast float %179, %57
  %498 = fmul fast float %178, %58
  %499 = fsub fast float %497, %498
  %500 = fmul fast float %493, 2.000000e+00
  %501 = fmul fast float %496, 2.000000e+00
  %502 = fmul fast float %499, 2.000000e+00
  %503 = fmul fast float %500, %60
  %504 = fmul fast float %501, %60
  %505 = fmul fast float %502, %60
  %506 = fmul fast float %502, %58
  %507 = fmul fast float %501, %59
  %508 = fmul fast float %500, %59
  %509 = fmul fast float %502, %57
  %510 = fmul fast float %501, %57
  %511 = fmul fast float %500, %58
  %512 = fadd fast float %178, %62
  %513 = fadd fast float %512, %506
  %514 = fadd fast float %513, %503
  %515 = fsub fast float %514, %507
  %516 = fadd fast float %179, %63
  %517 = fsub fast float %516, %509
  %518 = fadd fast float %517, %504
  %519 = fadd fast float %518, %508
  %520 = fadd fast float %180, %64
  %521 = fadd fast float %520, %505
  %522 = fsub fast float %521, %511
  %523 = fadd fast float %522, %510
  %524 = fmul fast float %186, %58
  %525 = fmul fast float %184, %59
  %526 = fsub fast float %524, %525
  %527 = fmul fast float %182, %59
  %528 = fmul fast float %186, %57
  %529 = fsub fast float %527, %528
  %530 = fmul fast float %184, %57
  %531 = fmul fast float %182, %58
  %532 = fsub fast float %530, %531
  %533 = fmul fast float %526, 2.000000e+00
  %534 = fmul fast float %529, 2.000000e+00
  %535 = fmul fast float %532, 2.000000e+00
  %536 = fmul fast float %533, %60
  %537 = fmul fast float %534, %60
  %538 = fmul fast float %535, %60
  %539 = fmul fast float %535, %58
  %540 = fmul fast float %534, %59
  %541 = fmul fast float %533, %59
  %542 = fmul fast float %535, %57
  %543 = fmul fast float %534, %57
  %544 = fmul fast float %533, %58
  %545 = fadd fast float %539, %182
  %546 = fadd fast float %545, %536
  %547 = fsub fast float %546, %540
  %548 = fsub fast float %184, %542
  %549 = fadd fast float %548, %537
  %550 = fadd fast float %549, %541
  %551 = fadd fast float %538, %186
  %552 = fsub fast float %551, %544
  %553 = fadd fast float %552, %543
  br label %554

; <label>:554                                     ; preds = %490, %177
  %555 = phi float [ %515, %490 ], [ %178, %177 ]
  %556 = phi float [ %519, %490 ], [ %179, %177 ]
  %557 = phi float [ %523, %490 ], [ %180, %177 ]
  %558 = phi float [ %547, %490 ], [ %182, %177 ]
  %559 = phi float [ %550, %490 ], [ %184, %177 ]
  %560 = phi float [ %553, %490 ], [ %186, %177 ]
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %561, 1
  %564 = extractvalue %dx.types.CBufRet.f32 %561, 2
  %565 = fsub fast float %555, %562
  %566 = fsub fast float %556, %563
  %567 = fsub fast float %557, %564
  %568 = fmul fast float %565, %565
  %569 = fmul fast float %566, %566
  %570 = fadd fast float %568, %569
  %571 = fmul fast float %567, %567
  %572 = fadd fast float %570, %571
  %573 = call float @dx.op.unary.f32(i32 24, float %572)  ; Sqrt(value)
  %574 = and i32 %76, 2097152
  %575 = icmp ne i32 %574, 0
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %578 = select i1 %575, float 1.000000e+00, float %577
  %579 = fmul fast float %578, %573
  %580 = call float @dx.op.binary.f32(i32 35, float %579, float %82)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 36, float %580, float %83)  ; FMin(a,b)
  %582 = fsub fast float %581, %82
  %583 = fmul fast float %88, %78
  %584 = fmul fast float %583, %582
  %585 = fadd fast float %584, %87
  %586 = call float @dx.op.binary.f32(i32 35, float %579, float %83)  ; FMax(a,b)
  %587 = call float @dx.op.binary.f32(i32 36, float %586, float %84)  ; FMin(a,b)
  %588 = fsub fast float %587, %83
  %589 = fmul fast float %588, %79
  %590 = fsub fast float %89, %585
  %591 = fmul fast float %589, %590
  %592 = fadd fast float %591, %585
  %593 = call float @dx.op.binary.f32(i32 35, float %579, float %84)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 36, float %593, float %85)  ; FMin(a,b)
  %595 = fsub fast float %594, %84
  %596 = fmul fast float %595, %80
  %597 = fsub fast float %90, %592
  %598 = fmul fast float %596, %597
  %599 = fadd fast float %598, %592
  %600 = call float @dx.op.binary.f32(i32 35, float %579, float %96)  ; FMax(a,b)
  %601 = call float @dx.op.binary.f32(i32 36, float %600, float %97)  ; FMin(a,b)
  %602 = fsub fast float %601, %96
  %603 = fmul fast float %102, %92
  %604 = fmul fast float %603, %602
  %605 = fadd fast float %604, %101
  %606 = call float @dx.op.binary.f32(i32 35, float %579, float %97)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 36, float %606, float %98)  ; FMin(a,b)
  %608 = fsub fast float %607, %97
  %609 = fmul fast float %608, %93
  %610 = fsub fast float %103, %605
  %611 = fmul fast float %609, %610
  %612 = fadd fast float %611, %605
  %613 = call float @dx.op.binary.f32(i32 35, float %579, float %98)  ; FMax(a,b)
  %614 = call float @dx.op.binary.f32(i32 36, float %613, float %99)  ; FMin(a,b)
  %615 = fsub fast float %614, %98
  %616 = fmul fast float %615, %94
  %617 = fsub fast float %104, %612
  %618 = fmul fast float %616, %617
  %619 = fsub fast float %612, %599
  %620 = fadd fast float %619, %618
  %621 = fmul fast float %430, %620
  %622 = fadd fast float %621, %599
  %623 = fmul fast float %622, %460
  %624 = fmul fast float %622, %471
  %625 = and i32 %76, 131072
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %672, label %627, !dx.controlflow.hints !33

; <label>:627                                     ; preds = %554
  %628 = call float @dx.op.dot3.f32(i32 55, float %558, float %559, float %560, float %558, float %559, float %560)  ; Dot3(ax,ay,az,bx,by,bz)
  %629 = call float @dx.op.unary.f32(i32 25, float %628)  ; Rsqrt(value)
  %630 = fmul fast float %629, %558
  %631 = fmul fast float %629, %559
  %632 = fmul fast float %629, %560
  %633 = and i32 %76, 524288
  %634 = icmp ne i32 %633, 0
  %635 = fsub fast float -0.000000e+00, %624
  %636 = select i1 %634, float %635, float %624
  %637 = fmul fast float %630, %636
  %638 = fmul fast float %631, %636
  %639 = fmul fast float %632, %636
  %640 = fadd fast float %637, %555
  %641 = fadd fast float %638, %556
  %642 = fadd fast float %639, %557
  %643 = fsub fast float %640, %562
  %644 = fsub fast float %641, %563
  %645 = fsub fast float %642, %564
  %646 = fsub fast float -0.000000e+00, %643
  %647 = fsub fast float -0.000000e+00, %644
  %648 = fsub fast float -0.000000e+00, %645
  %649 = fmul fast float %631, %648
  %650 = fmul fast float %632, %647
  %651 = fsub fast float %649, %650
  %652 = fmul fast float %632, %646
  %653 = fmul fast float %630, %648
  %654 = fsub fast float %652, %653
  %655 = fmul fast float %630, %647
  %656 = fmul fast float %631, %646
  %657 = fsub fast float %655, %656
  %658 = call float @dx.op.dot3.f32(i32 55, float %651, float %654, float %657, float %651, float %654, float %657)  ; Dot3(ax,ay,az,bx,by,bz)
  %659 = call float @dx.op.unary.f32(i32 25, float %658)  ; Rsqrt(value)
  %660 = fmul fast float %651, %659
  %661 = fmul fast float %654, %659
  %662 = fmul fast float %657, %659
  %663 = fmul fast float %661, %632
  %664 = fmul fast float %662, %631
  %665 = fsub fast float %663, %664
  %666 = fmul fast float %662, %630
  %667 = fmul fast float %660, %632
  %668 = fsub fast float %666, %667
  %669 = fmul fast float %660, %631
  %670 = fmul fast float %661, %630
  %671 = fsub fast float %669, %670
  br label %672

; <label>:672                                     ; preds = %627, %554
  %673 = phi float [ %640, %627 ], [ %555, %554 ]
  %674 = phi float [ %641, %627 ], [ %556, %554 ]
  %675 = phi float [ %642, %627 ], [ %557, %554 ]
  %676 = phi float [ %665, %627 ], [ %478, %554 ]
  %677 = phi float [ %668, %627 ], [ %479, %554 ]
  %678 = phi float [ %671, %627 ], [ %480, %554 ]
  %679 = phi float [ %660, %627 ], [ %484, %554 ]
  %680 = phi float [ %661, %627 ], [ %485, %554 ]
  %681 = phi float [ %662, %627 ], [ %486, %554 ]
  %682 = phi float [ %630, %627 ], [ %487, %554 ]
  %683 = phi float [ %631, %627 ], [ %488, %554 ]
  %684 = phi float [ %632, %627 ], [ %489, %554 ]
  %685 = shl nuw nsw i32 %438, 7
  %686 = xor i32 %685, %438
  %687 = lshr i32 %686, 9
  %688 = and i32 %687, 127
  %689 = and i32 %686, 65535
  %690 = xor i32 %688, %689
  %691 = shl nuw nsw i32 %690, 8
  %692 = and i32 %691, 65280
  %693 = xor i32 %692, %690
  %694 = uitofp i32 %693 to float
  %695 = shl nuw nsw i32 %693, 7
  %696 = and i32 %695, 65408
  %697 = xor i32 %696, %693
  %698 = lshr i32 %697, 9
  %699 = xor i32 %698, %697
  %700 = shl nuw nsw i32 %699, 8
  %701 = and i32 %700, 65280
  %702 = xor i32 %701, %699
  %703 = uitofp i32 %702 to float
  %704 = fmul fast float %132, 0x3EF0001000000000
  %705 = fmul fast float %704, %694
  %706 = fadd fast float %705, %130
  %707 = fmul fast float %128, 0x3EF0001000000000
  %708 = fmul fast float %707, %703
  %709 = fmul fast float %202, %189
  %710 = fmul fast float %709, %706
  %711 = fadd fast float %710, %126
  %712 = fadd fast float %711, %708
  %713 = fmul fast float %712, 0x3FC45F3060000000
  %714 = fsub fast float -0.000000e+00, %713
  %715 = fcmp fast oge float %713, %714
  %716 = call float @dx.op.unary.f32(i32 6, float %713)  ; FAbs(value)
  %717 = call float @dx.op.unary.f32(i32 22, float %716)  ; Frc(value)
  %718 = fsub fast float -0.000000e+00, %717
  %719 = select i1 %715, float %717, float %718
  %720 = fmul fast float %719, 0x401921FB60000000
  %721 = call float @dx.op.unary.f32(i32 13, float %720)  ; Sin(value)
  %722 = call float @dx.op.unary.f32(i32 12, float %720)  ; Cos(value)
  %723 = fmul fast float %722, %679
  %724 = fmul fast float %722, %680
  %725 = fmul fast float %722, %681
  %726 = fmul fast float %721, %682
  %727 = fmul fast float %721, %683
  %728 = fmul fast float %721, %684
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fadd fast float %725, %728
  %732 = fmul fast float %721, %679
  %733 = fmul fast float %721, %680
  %734 = fmul fast float %721, %681
  %735 = fmul fast float %722, %682
  %736 = fmul fast float %722, %683
  %737 = fmul fast float %722, %684
  %738 = fsub fast float %732, %735
  %739 = fsub fast float %733, %736
  %740 = fsub fast float %734, %737
  %741 = shl nuw nsw i32 %702, 7
  %742 = xor i32 %741, %702
  %743 = lshr i32 %742, 9
  %744 = and i32 %743, 127
  %745 = and i32 %742, 65535
  %746 = xor i32 %744, %745
  %747 = shl nuw nsw i32 %746, 8
  %748 = and i32 %747, 65280
  %749 = xor i32 %748, %746
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3EF0001000000000
  %752 = shl nuw nsw i32 %749, 7
  %753 = and i32 %752, 65408
  %754 = xor i32 %753, %749
  %755 = lshr i32 %754, 9
  %756 = xor i32 %755, %754
  %757 = shl nuw nsw i32 %756, 8
  %758 = and i32 %757, 65280
  %759 = xor i32 %758, %756
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3EF0001000000000
  %762 = and i32 %76, 1048576
  %763 = icmp ne i32 %762, 0
  %764 = select i1 %763, float %761, float %751
  %765 = fmul fast float %751, %123
  %766 = fmul fast float %764, %124
  %767 = fadd fast float %120, %765
  %768 = fadd fast float %121, %766
  %769 = fmul fast float %767, %623
  %770 = fsub fast float -0.000000e+00, %769
  %771 = fmul fast float %729, %770
  %772 = fmul fast float %730, %770
  %773 = fmul fast float %731, %770
  %774 = fmul fast float %768, %624
  %775 = fsub fast float -0.000000e+00, %774
  %776 = fmul fast float %738, %775
  %777 = fmul fast float %739, %775
  %778 = fmul fast float %740, %775
  %779 = fadd fast float %776, %673
  %780 = fadd fast float %779, %771
  %781 = fadd fast float %777, %674
  %782 = fadd fast float %781, %772
  %783 = fadd fast float %778, %675
  %784 = fadd fast float %783, %773
  %785 = fsub fast float %579, %116
  %786 = fmul fast float %785, %118
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = fsub fast float 1.000000e+00, %787
  %789 = fsub fast float %579, %112
  %790 = fmul fast float %789, %114
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = fmul fast float %788, %791
  %793 = shl nuw nsw i32 %759, 7
  %794 = xor i32 %793, %759
  %795 = lshr i32 %794, 9
  %796 = and i32 %795, 127
  %797 = and i32 %794, 65535
  %798 = xor i32 %796, %797
  %799 = shl nuw nsw i32 %798, 8
  %800 = and i32 %799, 65280
  %801 = xor i32 %800, %798
  %802 = uitofp i32 %801 to float
  %803 = fmul fast float %802, 0x3EF0001000000000
  %804 = fmul fast float %307, %803
  %805 = fadd fast float %804, %261
  %806 = fmul fast float %397, %803
  %807 = fsub fast float %352, %805
  %808 = fadd fast float %807, %806
  %809 = fmul fast float %808, %215
  %810 = fadd fast float %809, %805
  %811 = shl nuw nsw i32 %801, 7
  %812 = and i32 %811, 65408
  %813 = xor i32 %812, %801
  %814 = lshr i32 %813, 9
  %815 = xor i32 %814, %813
  %816 = shl nuw nsw i32 %815, 8
  %817 = and i32 %816, 65280
  %818 = xor i32 %817, %815
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3EF0001000000000
  %821 = shl nuw nsw i32 %818, 7
  %822 = xor i32 %821, %818
  %823 = lshr i32 %822, 9
  %824 = and i32 %823, 127
  %825 = and i32 %822, 65535
  %826 = xor i32 %824, %825
  %827 = shl nuw nsw i32 %826, 8
  %828 = and i32 %827, 65280
  %829 = xor i32 %828, %826
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3EF0001000000000
  %832 = shl nuw nsw i32 %829, 7
  %833 = and i32 %832, 65408
  %834 = xor i32 %833, %829
  %835 = lshr i32 %834, 9
  %836 = xor i32 %835, %834
  %837 = shl nuw nsw i32 %836, 8
  %838 = and i32 %837, 65280
  %839 = xor i32 %838, %836
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3EF0001000000000
  %842 = shl nuw nsw i32 %839, 7
  %843 = xor i32 %842, %839
  %844 = lshr i32 %843, 9
  %845 = and i32 %844, 127
  %846 = and i32 %843, 65535
  %847 = xor i32 %845, %846
  %848 = shl nuw nsw i32 %847, 8
  %849 = and i32 %848, 65280
  %850 = xor i32 %849, %847
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3EF0001000000000
  %853 = and i32 %76, 128
  %854 = icmp ne i32 %853, 0
  %855 = select i1 %854, float %831, float %820
  %856 = select i1 %854, float %841, float %820
  %857 = select i1 %854, float %852, float %820
  %858 = fmul fast float %291, %820
  %859 = fmul fast float %293, %855
  %860 = fmul fast float %295, %856
  %861 = fmul fast float %297, %857
  %862 = fadd fast float %858, %245
  %863 = fadd fast float %859, %247
  %864 = fadd fast float %860, %249
  %865 = fadd fast float %861, %251
  %866 = fmul fast float %381, %820
  %867 = fmul fast float %383, %855
  %868 = fmul fast float %385, %856
  %869 = fmul fast float %387, %857
  %870 = fsub fast float %336, %862
  %871 = fadd fast float %870, %866
  %872 = fsub fast float %338, %863
  %873 = fadd fast float %872, %867
  %874 = fsub fast float %340, %864
  %875 = fadd fast float %874, %868
  %876 = fsub fast float %342, %865
  %877 = fadd fast float %876, %869
  %878 = fmul fast float %871, %215
  %879 = fmul fast float %873, %215
  %880 = fmul fast float %875, %215
  %881 = fmul fast float %877, %215
  %882 = fadd fast float %878, %862
  %883 = fadd fast float %879, %863
  %884 = fadd fast float %880, %864
  %885 = fadd fast float %881, %865
  %886 = and i32 %76, 8388608
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %888, label %892, !dx.controlflow.hints !34

; <label>:888                                     ; preds = %672
  %889 = fmul fast float %882, %882
  %890 = fmul fast float %883, %883
  %891 = fmul fast float %884, %884
  br label %892

; <label>:892                                     ; preds = %888, %672
  %893 = phi float [ %882, %672 ], [ %889, %888 ]
  %894 = phi float [ %883, %672 ], [ %890, %888 ]
  %895 = phi float [ %884, %672 ], [ %891, %888 ]
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %898 = shl nuw nsw i32 %850, 7
  %899 = and i32 %898, 65408
  %900 = xor i32 %899, %850
  %901 = lshr i32 %900, 9
  %902 = xor i32 %901, %900
  %903 = shl nuw nsw i32 %902, 8
  %904 = and i32 %903, 65280
  %905 = xor i32 %904, %902
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %906, 0x3EF0001000000000
  %908 = fmul fast float %303, %907
  %909 = fadd fast float %908, %257
  %910 = fmul fast float %393, %907
  %911 = fsub fast float %348, %909
  %912 = fadd fast float %911, %910
  %913 = fmul fast float %912, %215
  %914 = fadd fast float %913, %909
  %915 = fadd fast float %914, %897
  %916 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %915)  ; FMax(a,b)
  %917 = shl nuw nsw i32 %905, 7
  %918 = xor i32 %917, %905
  %919 = lshr i32 %918, 9
  %920 = and i32 %919, 127
  %921 = and i32 %918, 65535
  %922 = xor i32 %920, %921
  %923 = shl nuw nsw i32 %922, 8
  %924 = and i32 %923, 65280
  %925 = xor i32 %924, %922
  %926 = uitofp i32 %925 to float
  %927 = fmul fast float %926, 0x3EF0001000000000
  %928 = shl nuw nsw i32 %925, 7
  %929 = and i32 %928, 65408
  %930 = xor i32 %929, %925
  %931 = lshr i32 %930, 9
  %932 = xor i32 %931, %930
  %933 = shl nuw nsw i32 %932, 8
  %934 = and i32 %933, 65280
  %935 = xor i32 %934, %932
  %936 = uitofp i32 %935 to float
  %937 = fmul fast float %936, 0x3EF0001000000000
  %938 = shl nuw nsw i32 %935, 7
  %939 = xor i32 %938, %935
  %940 = lshr i32 %939, 9
  %941 = and i32 %940, 127
  %942 = and i32 %939, 65535
  %943 = xor i32 %941, %942
  %944 = shl nuw nsw i32 %943, 8
  %945 = and i32 %944, 65280
  %946 = xor i32 %945, %943
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %947, 0x3EF0001000000000
  %949 = shl nuw nsw i32 %946, 7
  %950 = and i32 %949, 65408
  %951 = xor i32 %950, %946
  %952 = lshr i32 %951, 9
  %953 = xor i32 %952, %951
  %954 = shl nuw nsw i32 %953, 8
  %955 = and i32 %954, 65280
  %956 = xor i32 %955, %953
  %957 = uitofp i32 %956 to float
  %958 = fmul fast float %957, 0x3EF0001000000000
  %959 = and i32 %76, 64
  %960 = icmp ne i32 %959, 0
  %961 = select i1 %960, float %937, float %927
  %962 = select i1 %960, float %948, float %927
  %963 = select i1 %960, float %958, float %927
  %964 = fmul fast float %283, %927
  %965 = fmul fast float %285, %961
  %966 = fmul fast float %287, %962
  %967 = fmul fast float %289, %963
  %968 = fadd fast float %964, %237
  %969 = fadd fast float %965, %239
  %970 = fadd fast float %966, %241
  %971 = fadd fast float %967, %243
  %972 = fmul fast float %373, %927
  %973 = fmul fast float %375, %961
  %974 = fmul fast float %377, %962
  %975 = fmul fast float %379, %963
  %976 = fsub fast float %328, %968
  %977 = fadd fast float %976, %972
  %978 = fsub fast float %330, %969
  %979 = fadd fast float %978, %973
  %980 = fsub fast float %332, %970
  %981 = fadd fast float %980, %974
  %982 = fsub fast float %334, %971
  %983 = fadd fast float %982, %975
  %984 = fmul fast float %977, %215
  %985 = fmul fast float %979, %215
  %986 = fmul fast float %981, %215
  %987 = fmul fast float %983, %215
  %988 = fadd fast float %984, %968
  %989 = fadd fast float %985, %969
  %990 = fadd fast float %986, %970
  %991 = fadd fast float %987, %971
  br i1 %887, label %992, label %996, !dx.controlflow.hints !35

; <label>:992                                     ; preds = %892
  %993 = fmul fast float %988, %988
  %994 = fmul fast float %989, %989
  %995 = fmul fast float %990, %990
  br label %996

; <label>:996                                     ; preds = %992, %892
  %997 = phi float [ %988, %892 ], [ %993, %992 ]
  %998 = phi float [ %989, %892 ], [ %994, %992 ]
  %999 = phi float [ %990, %892 ], [ %995, %992 ]
  %1000 = shl nuw nsw i32 %956, 7
  %1001 = xor i32 %1000, %956
  %1002 = lshr i32 %1001, 9
  %1003 = and i32 %1002, 127
  %1004 = and i32 %1001, 65535
  %1005 = xor i32 %1003, %1004
  %1006 = shl nuw nsw i32 %1005, 8
  %1007 = and i32 %1006, 65280
  %1008 = xor i32 %1007, %1005
  %1009 = uitofp i32 %1008 to float
  %1010 = fmul fast float %1009, 0x3EF0001000000000
  %1011 = fadd fast float %1010, -5.000000e-01
  %1012 = and i32 %76, 32768
  %1013 = icmp ne i32 %1012, 0
  %1014 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1015 = fcmp fast ogt float %1014, 2.500000e-01
  %1016 = zext i1 %1015 to i32
  %1017 = and i32 %76, 8192
  %1018 = select i1 %1013, i32 %1016, i32 %1017
  %1019 = icmp ne i32 %1018, 0
  %1020 = and i32 %76, 65536
  %1021 = icmp ne i32 %1020, 0
  %1022 = fcmp fast ogt float %1011, 0.000000e+00
  %1023 = zext i1 %1022 to i32
  %1024 = and i32 %76, 16384
  %1025 = select i1 %1021, i32 %1023, i32 %1024
  %1026 = icmp ne i32 %1025, 0
  %1027 = zext i1 %1019 to i32
  %1028 = or i32 %1027, 2
  %1029 = select i1 %1026, i32 %1028, i32 %1027
  %1030 = and i32 %66, 65535
  %1031 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %1032 = fmul fast float %1031, 2.550000e+02
  %1033 = fptoui float %1032 to i32
  %1034 = shl nuw nsw i32 %1029, 24
  %1035 = shl i32 %1033, 16
  %1036 = or i32 %1035, %1030
  %1037 = or i32 %1036, %1034
  %1038 = shl nuw nsw i32 %1008, 7
  %1039 = and i32 %1038, 65408
  %1040 = xor i32 %1039, %1008
  %1041 = lshr i32 %1040, 9
  %1042 = xor i32 %1041, %1040
  %1043 = shl nuw nsw i32 %1042, 8
  %1044 = and i32 %1043, 65280
  %1045 = xor i32 %1044, %1042
  %1046 = uitofp i32 %1045 to float
  %1047 = fmul fast float %1046, 0x3EF0001000000000
  %1048 = shl nuw nsw i32 %1045, 7
  %1049 = xor i32 %1048, %1045
  %1050 = lshr i32 %1049, 9
  %1051 = and i32 %1050, 127
  %1052 = and i32 %1049, 65535
  %1053 = xor i32 %1051, %1052
  %1054 = fmul fast float %305, %1047
  %1055 = fadd fast float %1054, %259
  %1056 = fmul fast float %395, %1047
  %1057 = fsub fast float %350, %1055
  %1058 = fadd fast float %1057, %1056
  %1059 = fmul fast float %1058, %215
  %1060 = fadd fast float %1059, %1055
  %1061 = lshr i32 %110, 16
  %1062 = and i32 %110, 32767
  %1063 = icmp eq i32 %1062, 32767
  br i1 %1063, label %1081, label %1064, !dx.controlflow.hints !36

; <label>:1064                                    ; preds = %996
  %1065 = shl nuw nsw i32 %1053, 8
  %1066 = and i32 %1065, 65280
  %1067 = xor i32 %1066, %1053
  %1068 = uitofp i32 %1067 to float
  %1069 = fmul fast float %1068, 0x3EF0001000000000
  %1070 = fadd fast float %108, %106
  %1071 = fdiv fast float 1.000000e+00, %1070
  %1072 = fmul fast float %1060, %202
  %1073 = fmul fast float %1072, %1071
  %1074 = and i32 %110, 32768
  %1075 = icmp ne i32 %1074, 0
  %1076 = select i1 %1075, float 1.000000e+00, float %1069
  %1077 = uitofp i32 %1062 to float
  %1078 = fmul fast float %1076, %1077
  %1079 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1080 = fadd fast float %1073, %1079
  br label %1081

; <label>:1081                                    ; preds = %1064, %996
  %1082 = phi float [ %1080, %1064 ], [ %1060, %996 ]
  %1083 = icmp eq i32 %1061, 65535
  br i1 %1083, label %1089, label %1084, !dx.controlflow.hints !37

; <label>:1084                                    ; preds = %1081
  %1085 = uitofp i32 %1061 to float
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = call float @dx.op.binary.f32(i32 35, float %1082, float %1086)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %1087, float %1085)  ; FMin(a,b)
  br label %1089

; <label>:1089                                    ; preds = %1084, %1081
  %1090 = phi float [ %1088, %1084 ], [ %1082, %1081 ]
  %1091 = and i32 %66, -65536
  %1092 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1090)  ; LegacyF32ToF16(value)
  %1093 = and i32 %1092, 65535
  %1094 = or i32 %1093, %1091
  %1095 = fmul fast float %731, %677
  %1096 = fmul fast float %730, %678
  %1097 = fsub fast float %1095, %1096
  %1098 = fmul fast float %729, %678
  %1099 = fmul fast float %731, %676
  %1100 = fsub fast float %1098, %1099
  %1101 = fmul fast float %730, %676
  %1102 = fmul fast float %729, %677
  %1103 = fsub fast float %1101, %1102
  %1104 = fadd fast float %729, %678
  %1105 = fadd fast float %1104, %1100
  %1106 = fcmp fast ogt float %1105, 0.000000e+00
  br i1 %1106, label %1107, label %1118, !dx.controlflow.hints !38

; <label>:1107                                    ; preds = %1089
  %1108 = fadd fast float %1105, 1.000000e+00
  %1109 = fsub fast float %1103, %677
  %1110 = fsub fast float %676, %731
  %1111 = fsub fast float %730, %1097
  %1112 = call float @dx.op.unary.f32(i32 25, float %1108)  ; Rsqrt(value)
  %1113 = fmul fast float %1112, 5.000000e-01
  %1114 = fmul fast float %1113, %1109
  %1115 = fmul fast float %1113, %1110
  %1116 = fmul fast float %1113, %1111
  %1117 = fmul fast float %1113, %1108
  br label %1162

; <label>:1118                                    ; preds = %1089
  %1119 = fcmp fast ogt float %729, %1100
  %1120 = fcmp fast ogt float %729, %678
  %1121 = and i1 %1120, %1119
  br i1 %1121, label %1122, label %1135, !dx.controlflow.hints !39

; <label>:1122                                    ; preds = %1118
  %1123 = fsub fast float 1.000000e+00, %678
  %1124 = fadd fast float %1123, %729
  %1125 = fsub fast float %1124, %1100
  %1126 = fsub fast float %1103, %677
  %1127 = fadd fast float %1097, %730
  %1128 = fadd fast float %731, %676
  %1129 = call float @dx.op.unary.f32(i32 25, float %1125)  ; Rsqrt(value)
  %1130 = fmul fast float %1129, 5.000000e-01
  %1131 = fmul fast float %1130, %1125
  %1132 = fmul fast float %1130, %1127
  %1133 = fmul fast float %1130, %1128
  %1134 = fmul fast float %1130, %1126
  br label %1162

; <label>:1135                                    ; preds = %1118
  %1136 = fcmp fast ogt float %1100, %678
  %1137 = fadd fast float %1103, %677
  br i1 %1136, label %1138, label %1150, !dx.controlflow.hints !40

; <label>:1138                                    ; preds = %1135
  %1139 = fsub fast float 1.000000e+00, %678
  %1140 = fsub fast float %1139, %729
  %1141 = fadd fast float %1140, %1100
  %1142 = fsub fast float %676, %731
  %1143 = fadd fast float %1097, %730
  %1144 = call float @dx.op.unary.f32(i32 25, float %1141)  ; Rsqrt(value)
  %1145 = fmul fast float %1144, 5.000000e-01
  %1146 = fmul fast float %1145, %1143
  %1147 = fmul fast float %1145, %1141
  %1148 = fmul fast float %1145, %1137
  %1149 = fmul fast float %1145, %1142
  br label %1162

; <label>:1150                                    ; preds = %1135
  %1151 = fadd fast float %678, 1.000000e+00
  %1152 = fsub fast float %1151, %729
  %1153 = fsub fast float %1152, %1100
  %1154 = fsub fast float %730, %1097
  %1155 = fadd fast float %731, %676
  %1156 = call float @dx.op.unary.f32(i32 25, float %1153)  ; Rsqrt(value)
  %1157 = fmul fast float %1156, 5.000000e-01
  %1158 = fmul fast float %1157, %1155
  %1159 = fmul fast float %1157, %1137
  %1160 = fmul fast float %1157, %1153
  %1161 = fmul fast float %1157, %1154
  br label %1162

; <label>:1162                                    ; preds = %1150, %1138, %1122, %1107
  %1163 = phi float [ %1114, %1107 ], [ %1131, %1122 ], [ %1146, %1138 ], [ %1158, %1150 ]
  %1164 = phi float [ %1115, %1107 ], [ %1132, %1122 ], [ %1147, %1138 ], [ %1159, %1150 ]
  %1165 = phi float [ %1116, %1107 ], [ %1133, %1122 ], [ %1148, %1138 ], [ %1160, %1150 ]
  %1166 = phi float [ %1117, %1107 ], [ %1134, %1122 ], [ %1149, %1138 ], [ %1161, %1150 ]
  %1167 = call float @dx.op.unary.f32(i32 6, float %1165)  ; FAbs(value)
  %1168 = call float @dx.op.unary.f32(i32 6, float %1163)  ; FAbs(value)
  %1169 = fcmp fast oge float %1167, %1168
  %1170 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1171 = fcmp fast oge float %1167, %1170
  %1172 = and i1 %1169, %1171
  br i1 %1172, label %1173, label %1176, !dx.controlflow.hints !41

; <label>:1173                                    ; preds = %1162
  %1174 = fcmp fast olt float %1165, 0.000000e+00
  %1175 = select i1 %1174, float 5.000000e+00, float 4.000000e+00
  br label %1184

; <label>:1176                                    ; preds = %1162
  %1177 = fcmp fast ult float %1170, %1168
  br i1 %1177, label %1181, label %1178, !dx.controlflow.hints !42

; <label>:1178                                    ; preds = %1176
  %1179 = fcmp fast olt float %1164, 0.000000e+00
  %1180 = select i1 %1179, float 3.000000e+00, float 2.000000e+00
  br label %1184

; <label>:1181                                    ; preds = %1176
  %1182 = fcmp fast olt float %1163, 0.000000e+00
  %1183 = select i1 %1182, float 1.000000e+00, float 0.000000e+00
  br label %1184

; <label>:1184                                    ; preds = %1181, %1178, %1173
  %1185 = phi float [ %1175, %1173 ], [ %1180, %1178 ], [ %1183, %1181 ]
  %1186 = fmul fast float %1185, 5.000000e-01
  %1187 = fptoui float %1186 to i32
  %1188 = call float @dx.op.unary.f32(i32 6, float %1166)  ; FAbs(value)
  %1189 = call float @dx.op.binary.f32(i32 35, float %1170, float %1167)  ; FMax(a,b)
  %1190 = call float @dx.op.binary.f32(i32 35, float %1168, float %1189)  ; FMax(a,b)
  %1191 = fcmp fast ogt float %1188, %1190
  %1192 = select i1 %1191, i32 3, i32 %1187
  %1193 = icmp eq i32 %1192, 0
  %1194 = select i1 %1193, float %1164, float %1163
  %1195 = select i1 %1193, float %1165, float %1164
  %1196 = select i1 %1193, float %1166, float %1165
  %1197 = select i1 %1193, float %1163, float %1166
  %1198 = icmp eq i32 %1192, 1
  %1199 = select i1 %1198, float %1196, float %1195
  %1200 = select i1 %1198, float %1197, float %1196
  %1201 = select i1 %1198, float %1195, float %1197
  %1202 = icmp eq i32 %1192, 2
  %1203 = select i1 %1202, float %1201, float %1200
  %1204 = select i1 %1202, float %1200, float %1201
  %1205 = fcmp fast ogt float %1204, 0.000000e+00
  %1206 = select i1 %1205, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1207 = fmul fast float %1206, %1194
  %1208 = fmul fast float %1206, %1199
  %1209 = fmul fast float %1206, %1203
  %1210 = fadd fast float %1207, 1.000000e+00
  %1211 = fmul fast float %1210, 5.000000e-01
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1212, 1.023000e+03
  %1214 = fptoui float %1213 to i32
  %1215 = fadd fast float %1208, 1.000000e+00
  %1216 = fmul fast float %1215, 5.000000e-01
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = fmul fast float %1217, 1.023000e+03
  %1219 = fptoui float %1218 to i32
  %1220 = fadd fast float %1209, 1.000000e+00
  %1221 = fmul fast float %1220, 5.000000e-01
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fmul fast float %1222, 5.110000e+02
  %1224 = fptoui float %1223 to i32
  %1225 = shl i32 %1219, 10
  %1226 = shl i32 %1224, 20
  %1227 = shl i32 %1192, 30
  %1228 = or i32 %1227, %1214
  %1229 = or i32 %1228, %1225
  %1230 = or i32 %1229, %1226
  %1231 = fmul fast float %893, %792
  %1232 = fmul fast float %894, %792
  %1233 = fmul fast float %895, %792
  %1234 = fmul fast float %792, %885
  %1235 = fmul fast float %792, %991
  %1236 = call i32 @dx.op.legacyF32ToF16(i32 130, float %997)  ; LegacyF32ToF16(value)
  %1237 = call i32 @dx.op.legacyF32ToF16(i32 130, float %998)  ; LegacyF32ToF16(value)
  %1238 = shl i32 %1237, 16
  %1239 = or i32 %1238, %1236
  %1240 = call i32 @dx.op.legacyF32ToF16(i32 130, float %999)  ; LegacyF32ToF16(value)
  %1241 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1235)  ; LegacyF32ToF16(value)
  %1242 = shl i32 %1241, 16
  %1243 = or i32 %1242, %1240
  %1244 = bitcast i32 %1239 to float
  %1245 = bitcast i32 %1243 to float
  %1246 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1231)  ; LegacyF32ToF16(value)
  %1247 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1232)  ; LegacyF32ToF16(value)
  %1248 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1233)  ; LegacyF32ToF16(value)
  %1249 = lshr i32 %1246, 4
  %1250 = and i32 %1249, 2047
  %1251 = shl i32 %1247, 7
  %1252 = and i32 %1251, 4192256
  %1253 = or i32 %1252, %1250
  %1254 = lshr i32 %1248, 5
  %1255 = shl i32 %1254, 22
  %1256 = or i32 %1253, %1255
  %1257 = bitcast i32 %1256 to float
  %1258 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1234)  ; LegacyF32ToF16(value)
  %1259 = call i32 @dx.op.legacyF32ToF16(i32 130, float %916)  ; LegacyF32ToF16(value)
  %1260 = shl i32 %1259, 16
  %1261 = or i32 %1260, %1258
  %1262 = bitcast i32 %1261 to float
  %1263 = mul i32 %146, 56
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1263, i32 undef, float %780, float %782, float %784, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1264 = add i32 %1263, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1264, i32 undef, i32 %68, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1265 = add i32 %1263, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1265, i32 undef, float %623, float %624, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1266 = add i32 %1263, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1266, i32 undef, i32 %1094, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1267 = add i32 %1263, 28
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1267, i32 undef, i32 %1037, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1268 = add i32 %1263, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1268, i32 undef, float %1244, float %1245, float %1257, float %1262, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1269 = add i32 %1263, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1269, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1270 = add i32 %1263, 52
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1270, i32 undef, i32 %1230, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1271

; <label>:1271                                    ; preds = %1184, %44
  %1272 = phi float [ %780, %1184 ], [ 0.000000e+00, %44 ]
  %1273 = phi float [ %782, %1184 ], [ 0.000000e+00, %44 ]
  %1274 = phi float [ %784, %1184 ], [ 0.000000e+00, %44 ]
  %1275 = phi float [ %679, %1184 ], [ 0.000000e+00, %44 ]
  %1276 = phi float [ %680, %1184 ], [ 0.000000e+00, %44 ]
  %1277 = phi float [ %681, %1184 ], [ 0.000000e+00, %44 ]
  %1278 = phi float [ %682, %1184 ], [ 0.000000e+00, %44 ]
  %1279 = phi float [ %683, %1184 ], [ 0.000000e+00, %44 ]
  %1280 = phi float [ %684, %1184 ], [ 0.000000e+00, %44 ]
  %1281 = phi float [ %623, %1184 ], [ 0.000000e+00, %44 ]
  %1282 = phi float [ %624, %1184 ], [ 0.000000e+00, %44 ]
  %1283 = phi float [ %720, %1184 ], [ 0.000000e+00, %44 ]
  %1284 = phi i32 [ %146, %1184 ], [ 0, %44 ]
  %1285 = lshr i32 %70, 16
  %1286 = and i32 %1285, 4095
  %1287 = icmp ult i32 %1286, 2
  %1288 = and i1 %1287, %73
  br i1 %1288, label %1289, label %1386, !dx.controlflow.hints !43

; <label>:1289                                    ; preds = %1271
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1293 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  %1294 = fsub fast float %1272, %1291
  %1295 = fsub fast float %1273, %1292
  %1296 = fsub fast float %1274, %1293
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = call float @dx.op.dot3.f32(i32 55, float %1294, float %1295, float %1296, float %1298, float %1300, float %1302)  ; Dot3(ax,ay,az,bx,by,bz)
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 1
  %1306 = fmul fast float %1305, %1303
  %1307 = call float @dx.op.binary.f32(i32 35, float %1281, float %1282)  ; FMax(a,b)
  %1308 = fdiv fast float 1.000000e+00, %1306
  %1309 = fmul fast float %1308, %1307
  %1310 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1311 = fmul fast float %1309, %1310
  %1312 = fptosi float %1311 to i32
  %1313 = icmp sgt i32 %1312, 0
  br i1 %1313, label %1314, label %1322, !dx.controlflow.hints !44

; <label>:1314                                    ; preds = %1289
  %1315 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1312)  ; FirstbitHi(value)
  %1316 = sub i32 31, %1315
  %1317 = icmp eq i32 %1315, -1
  %1318 = select i1 %1317, i32 -1, i32 %1316
  %1319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.i32 %1319, 0
  %1321 = call i32 @dx.op.binary.i32(i32 40, i32 %1318, i32 %1320)  ; UMin(a,b)
  br label %1322

; <label>:1322                                    ; preds = %1314, %1289
  %1323 = phi i32 [ %1321, %1314 ], [ 0, %1289 ]
  %1324 = mul nuw nsw i32 %1286, 6
  %1325 = add i32 %1323, %1324
  %1326 = add i32 %1325, 17
  %1327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 %1326)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.i32 %1327, 0
  %1329 = extractvalue %dx.types.CBufRet.i32 %1327, 2
  %1330 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1325, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1331 = add i32 %1328, -1
  %1332 = call i32 @dx.op.binary.i32(i32 40, i32 %1330, i32 %1331)  ; UMin(a,b)
  %1333 = and i32 %70, -268435456
  %1334 = or i32 %1284, %1333
  %1335 = bitcast float %1272 to i32
  %1336 = bitcast float %1273 to i32
  %1337 = bitcast float %1274 to i32
  %1338 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1281)  ; LegacyF32ToF16(value)
  %1339 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1282)  ; LegacyF32ToF16(value)
  %1340 = shl i32 %1339, 16
  %1341 = or i32 %1340, %1338
  %1342 = fadd fast float %1275, 1.000000e+00
  %1343 = fadd fast float %1276, 1.000000e+00
  %1344 = fadd fast float %1277, 1.000000e+00
  %1345 = fmul fast float %1342, 5.000000e-01
  %1346 = fmul fast float %1343, 5.000000e-01
  %1347 = fmul fast float %1344, 5.000000e-01
  %1348 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1349 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1350 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1351 = fmul fast float %1348, 1.023000e+03
  %1352 = fmul fast float %1349, 1.023000e+03
  %1353 = fmul fast float %1350, 1.023000e+03
  %1354 = fptoui float %1351 to i32
  %1355 = fptoui float %1352 to i32
  %1356 = fptoui float %1353 to i32
  %1357 = shl i32 %1355, 10
  %1358 = or i32 %1357, %1354
  %1359 = shl i32 %1356, 20
  %1360 = or i32 %1358, %1359
  %1361 = fadd fast float %1278, 1.000000e+00
  %1362 = fadd fast float %1279, 1.000000e+00
  %1363 = fadd fast float %1280, 1.000000e+00
  %1364 = fmul fast float %1361, 5.000000e-01
  %1365 = fmul fast float %1362, 5.000000e-01
  %1366 = fmul fast float %1363, 5.000000e-01
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = fmul fast float %1367, 1.023000e+03
  %1371 = fmul fast float %1368, 1.023000e+03
  %1372 = fmul fast float %1369, 1.023000e+03
  %1373 = fptoui float %1370 to i32
  %1374 = fptoui float %1371 to i32
  %1375 = fptoui float %1372 to i32
  %1376 = shl i32 %1374, 10
  %1377 = or i32 %1376, %1373
  %1378 = shl i32 %1375, 20
  %1379 = or i32 %1377, %1378
  %1380 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1283)  ; LegacyF32ToF16(value)
  %1381 = shl i32 %70, 16
  %1382 = or i32 %1380, %1381
  %1383 = add i32 %1332, %1329
  %1384 = shl i32 %1383, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1384, i32 undef, i32 %1335, i32 %1336, i32 %1337, i32 %1334, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1385 = or i32 %1384, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1385, i32 undef, i32 %1341, i32 %1360, i32 %1379, i32 %1382, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1386

; <label>:1386                                    ; preds = %1322, %1271
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !24, null}
!5 = !{!6, !7, !9, !11, !13, !15, !16, !18}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<FxEmitterInstancePerFrameData>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 80}
!9 = !{i32 2, %"class.StructuredBuffer<FxEmitterDefPerFrameData>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 8}
!11 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{i32 4, %"class.StructuredBuffer<FxParticle>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 20}
!15 = !{i32 5, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !12}
!16 = !{i32 6, %"class.StructuredBuffer<FxParticleCounter>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 16}
!18 = !{i32 7, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !12}
!19 = !{!20, !21, !22, !23}
!20 = !{i32 0, %"class.RWStructuredBuffer<FxSortItem>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!23 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!26 = !{i32 1, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!27 = !{void ()* @cs_fx_prerender_sorted_particles, !"cs_fx_prerender_sorted_particles", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 64, i32 1, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}

