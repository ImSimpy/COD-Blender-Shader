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
; shader hash: 8153fc5b896c5f890a61a84b05d78c7a
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
;                                       UAV  struct         r/w      U0             u3     1
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
%"class.RWStructuredBuffer<GfxIndexedIndirectArgs>" = type { %struct.GfxIndexedIndirectArgs }
%struct.GfxIndexedIndirectArgs = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prerender_unsorted_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %32 = add i32 %22, 255
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
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %55, i32 8)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  %73 = icmp ult i32 %51, %72
  %74 = zext i1 %73 to i32
  br i1 %73, label %75, label %1419, !dx.controlflow.hints !30

; <label>:75                                      ; preds = %44
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = extractvalue %dx.types.ResRet.f32 %82, 3
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = extractvalue %dx.types.ResRet.f32 %96, 3
  %101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = extractvalue %dx.types.ResRet.f32 %101, 3
  %106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = extractvalue %dx.types.ResRet.f32 %134, 1
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 3
  %139 = shl i32 %138, 8
  %140 = or i32 %139, 2
  %141 = add i32 %140, %55
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %141, i32 0)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = add i32 %143, %51
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %144, i32 0)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = extractvalue %dx.types.ResRet.i32 %145, 1
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %144, i32 8)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %144, i32 16)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %146, -2048
  %154 = bitcast i32 %153 to float
  %155 = shl i32 %146, 21
  %156 = lshr i32 %147, 11
  %157 = and i32 %156, 2095104
  %158 = or i32 %157, %155
  %159 = bitcast i32 %158 to float
  %160 = shl i32 %147, 10
  %161 = and i32 %160, -2048
  %162 = bitcast i32 %161 to float
  %163 = and i32 %77, 4194304
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %173, !dx.controlflow.hints !31

; <label>:165                                     ; preds = %75
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = fadd fast float %167, %154
  %171 = fadd fast float %168, %159
  %172 = fadd fast float %169, %162
  br label %173

; <label>:173                                     ; preds = %165, %75
  %174 = phi float [ %154, %75 ], [ %170, %165 ]
  %175 = phi float [ %159, %75 ], [ %171, %165 ]
  %176 = phi float [ %162, %75 ], [ %172, %165 ]
  %177 = lshr i32 %149, 16
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = and i32 %150, 65535
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %150, 16
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = and i32 %149, 65535
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3EF0001000000000
  %186 = lshr i32 %152, 16
  %187 = shl nuw nsw i32 %186, 7
  %188 = and i32 %187, 65408
  %189 = xor i32 %188, %186
  %190 = lshr i32 %189, 9
  %191 = xor i32 %190, %189
  %192 = shl nuw nsw i32 %191, 8
  %193 = and i32 %192, 65280
  %194 = xor i32 %193, %191
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %109, 0x3EF0001000000000
  %197 = fmul fast float %196, %195
  %198 = fadd fast float %197, %107
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 65535
  %202 = lshr i32 %200, 16
  %203 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %204 = uitofp i32 %201 to float
  %205 = fmul fast float %204, %203
  %206 = add nsw i32 %201, -1
  %207 = call float @dx.op.unary.f32(i32 27, float %205)  ; Round_ni(value)
  %208 = fptosi float %207 to i32
  %209 = call i32 @dx.op.binary.i32(i32 38, i32 %208, i32 %206)  ; IMin(a,b)
  %210 = uitofp i32 %209 to float
  %211 = fsub fast float %205, %210
  %212 = shl i32 %209, 1
  %213 = mul i32 %209, 96
  %214 = add i32 %213, %202
  %215 = add i32 %214, 20
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add i32 %214, 24
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %214, 28
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %214, 32
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = extractvalue %dx.types.ResRet.i32 %225, 1
  %228 = add i32 %214, 40
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = extractvalue %dx.types.ResRet.i32 %229, 1
  %232 = and i32 %226, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %226, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = and i32 %227, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %227, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = and i32 %230, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %230, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = and i32 %231, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %231, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = and i32 %217, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %217, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = and i32 %220, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %220, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = and i32 %223, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = or i32 %212, 1
  %259 = mul i32 %258, 48
  %260 = add i32 %259, %202
  %261 = add i32 %260, 20
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = add i32 %260, 24
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %260, 28
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = add i32 %260, 32
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = extractvalue %dx.types.ResRet.i32 %271, 1
  %274 = add i32 %260, 40
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = extractvalue %dx.types.ResRet.i32 %275, 1
  %278 = and i32 %272, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %272, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = and i32 %273, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %273, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = and i32 %276, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %276, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = and i32 %277, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %277, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = and i32 %263, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %263, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = and i32 %266, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %266, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = and i32 %269, 65535
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add nuw nsw i32 %202, 96
  %305 = add i32 %304, %213
  %306 = add i32 %305, 20
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = add i32 %305, 24
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = add i32 %305, 28
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = add i32 %305, 32
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = extractvalue %dx.types.ResRet.i32 %316, 1
  %319 = add i32 %305, 40
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = extractvalue %dx.types.ResRet.i32 %320, 1
  %323 = and i32 %317, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %317, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = and i32 %318, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %318, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = and i32 %321, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %321, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = and i32 %322, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %322, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = and i32 %308, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %308, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = and i32 %311, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %311, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = and i32 %314, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add nuw nsw i32 %202, 144
  %350 = add i32 %349, %213
  %351 = add i32 %350, 20
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = add i32 %350, 24
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = add i32 %350, 28
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = add i32 %350, 32
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = extractvalue %dx.types.ResRet.i32 %361, 1
  %364 = add i32 %350, 40
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = extractvalue %dx.types.ResRet.i32 %365, 1
  %368 = and i32 %362, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %362, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = and i32 %363, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %363, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = and i32 %366, 65535
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %366, 16
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = and i32 %367, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = lshr i32 %367, 16
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = and i32 %353, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %353, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = and i32 %356, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %356, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = and i32 %359, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = shl i32 %152, 7
  %395 = and i32 %394, 65408
  %396 = and i32 %152, 65535
  %397 = xor i32 %395, %396
  %398 = lshr i32 %397, 9
  %399 = xor i32 %398, %397
  %400 = shl nuw nsw i32 %399, 8
  %401 = and i32 %400, 65280
  %402 = xor i32 %401, %399
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3EF0001000000000
  %405 = shl nuw nsw i32 %402, 7
  %406 = and i32 %405, 65408
  %407 = xor i32 %406, %402
  %408 = lshr i32 %407, 9
  %409 = and i32 %408, 65535
  %410 = xor i32 %409, %407
  %411 = shl nuw nsw i32 %410, 8
  %412 = xor i32 %411, %410
  %413 = and i32 %412, 65535
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3EF0001000000000
  %416 = shl nuw nsw i32 %413, 7
  %417 = xor i32 %416, %412
  %418 = lshr i32 %417, 9
  %419 = and i32 %418, 127
  %420 = and i32 %417, 65535
  %421 = xor i32 %419, %420
  %422 = shl nuw nsw i32 %421, 8
  %423 = and i32 %422, 65280
  %424 = xor i32 %423, %421
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3EF0001000000000
  %427 = shl nuw nsw i32 %424, 7
  %428 = and i32 %427, 65408
  %429 = xor i32 %428, %424
  %430 = lshr i32 %429, 9
  %431 = xor i32 %430, %429
  %432 = shl nuw nsw i32 %431, 8
  %433 = and i32 %432, 65280
  %434 = xor i32 %433, %431
  %435 = fmul fast float %178, %178
  %436 = fmul fast float %180, %180
  %437 = fadd fast float %436, %435
  %438 = fmul fast float %182, %182
  %439 = fadd fast float %437, %438
  %440 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %441 = and i32 %77, 256
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %415, float %404
  %444 = fmul fast float %295, %404
  %445 = fmul fast float %297, %443
  %446 = fadd fast float %444, %249
  %447 = fadd fast float %445, %251
  %448 = fmul fast float %385, %404
  %449 = fmul fast float %387, %443
  %450 = fsub fast float %340, %446
  %451 = fadd fast float %450, %448
  %452 = fsub fast float %342, %447
  %453 = fadd fast float %452, %449
  %454 = fmul fast float %451, %211
  %455 = fmul fast float %453, %211
  %456 = fadd fast float %454, %446
  %457 = fadd fast float %455, %447
  %458 = and i32 %77, 262144
  %459 = icmp ne i32 %458, 0
  %460 = fmul fast float %457, %440
  %461 = select i1 %459, float %460, float %457
  %462 = fcmp fast ogt float %135, 0.000000e+00
  %463 = fcmp fast ogt float %136, 0.000000e+00
  %464 = or i1 %462, %463
  %465 = call float @dx.op.binary.f32(i32 35, float %461, float %135)  ; FMax(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float %465, float %136)  ; FMin(a,b)
  %467 = select i1 %464, float %466, float %461
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = fsub fast float -0.000000e+00, %469
  %475 = fsub fast float -0.000000e+00, %471
  %476 = fsub fast float -0.000000e+00, %473
  %477 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %478 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %480 = fsub fast float -0.000000e+00, %477
  %481 = fsub fast float -0.000000e+00, %478
  %482 = fsub fast float -0.000000e+00, %479
  %483 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %485 = extractvalue %dx.types.CBufRet.f32 %472, 2
  br i1 %164, label %550, label %486, !dx.controlflow.hints !32

; <label>:486                                     ; preds = %173
  %487 = fmul fast float %176, %58
  %488 = fmul fast float %175, %59
  %489 = fsub fast float %487, %488
  %490 = fmul fast float %174, %59
  %491 = fmul fast float %176, %57
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %175, %57
  %494 = fmul fast float %174, %58
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %489, 2.000000e+00
  %497 = fmul fast float %492, 2.000000e+00
  %498 = fmul fast float %495, 2.000000e+00
  %499 = fmul fast float %496, %60
  %500 = fmul fast float %497, %60
  %501 = fmul fast float %498, %60
  %502 = fmul fast float %498, %58
  %503 = fmul fast float %497, %59
  %504 = fmul fast float %496, %59
  %505 = fmul fast float %498, %57
  %506 = fmul fast float %497, %57
  %507 = fmul fast float %496, %58
  %508 = fadd fast float %174, %62
  %509 = fadd fast float %508, %502
  %510 = fadd fast float %509, %499
  %511 = fsub fast float %510, %503
  %512 = fadd fast float %175, %63
  %513 = fsub fast float %512, %505
  %514 = fadd fast float %513, %500
  %515 = fadd fast float %514, %504
  %516 = fadd fast float %176, %64
  %517 = fadd fast float %516, %501
  %518 = fsub fast float %517, %507
  %519 = fadd fast float %518, %506
  %520 = fmul fast float %182, %58
  %521 = fmul fast float %180, %59
  %522 = fsub fast float %520, %521
  %523 = fmul fast float %178, %59
  %524 = fmul fast float %182, %57
  %525 = fsub fast float %523, %524
  %526 = fmul fast float %180, %57
  %527 = fmul fast float %178, %58
  %528 = fsub fast float %526, %527
  %529 = fmul fast float %522, 2.000000e+00
  %530 = fmul fast float %525, 2.000000e+00
  %531 = fmul fast float %528, 2.000000e+00
  %532 = fmul fast float %529, %60
  %533 = fmul fast float %530, %60
  %534 = fmul fast float %531, %60
  %535 = fmul fast float %531, %58
  %536 = fmul fast float %530, %59
  %537 = fmul fast float %529, %59
  %538 = fmul fast float %531, %57
  %539 = fmul fast float %530, %57
  %540 = fmul fast float %529, %58
  %541 = fadd fast float %535, %178
  %542 = fadd fast float %541, %532
  %543 = fsub fast float %542, %536
  %544 = fsub fast float %180, %538
  %545 = fadd fast float %544, %533
  %546 = fadd fast float %545, %537
  %547 = fadd fast float %534, %182
  %548 = fsub fast float %547, %540
  %549 = fadd fast float %548, %539
  br label %550

; <label>:550                                     ; preds = %486, %173
  %551 = phi float [ %511, %486 ], [ %174, %173 ]
  %552 = phi float [ %515, %486 ], [ %175, %173 ]
  %553 = phi float [ %519, %486 ], [ %176, %173 ]
  %554 = phi float [ %543, %486 ], [ %178, %173 ]
  %555 = phi float [ %546, %486 ], [ %180, %173 ]
  %556 = phi float [ %549, %486 ], [ %182, %173 ]
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = fsub fast float %551, %558
  %562 = fsub fast float %552, %559
  %563 = fsub fast float %553, %560
  %564 = fmul fast float %561, %561
  %565 = fmul fast float %562, %562
  %566 = fadd fast float %564, %565
  %567 = fmul fast float %563, %563
  %568 = fadd fast float %566, %567
  %569 = call float @dx.op.unary.f32(i32 24, float %568)  ; Sqrt(value)
  %570 = and i32 %77, 2097152
  %571 = icmp ne i32 %570, 0
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %574 = select i1 %571, float 1.000000e+00, float %573
  %575 = fmul fast float %574, %569
  %576 = call float @dx.op.binary.f32(i32 35, float %575, float %83)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %576, float %84)  ; FMin(a,b)
  %578 = fsub fast float %577, %83
  %579 = fmul fast float %89, %79
  %580 = fmul fast float %579, %578
  %581 = fadd fast float %580, %88
  %582 = call float @dx.op.binary.f32(i32 35, float %575, float %84)  ; FMax(a,b)
  %583 = call float @dx.op.binary.f32(i32 36, float %582, float %85)  ; FMin(a,b)
  %584 = fsub fast float %583, %84
  %585 = fmul fast float %584, %80
  %586 = fsub fast float %90, %581
  %587 = fmul fast float %585, %586
  %588 = fadd fast float %587, %581
  %589 = call float @dx.op.binary.f32(i32 35, float %575, float %85)  ; FMax(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %589, float %86)  ; FMin(a,b)
  %591 = fsub fast float %590, %85
  %592 = fmul fast float %591, %81
  %593 = fsub fast float %91, %588
  %594 = fmul fast float %592, %593
  %595 = fadd fast float %594, %588
  %596 = call float @dx.op.binary.f32(i32 35, float %575, float %97)  ; FMax(a,b)
  %597 = call float @dx.op.binary.f32(i32 36, float %596, float %98)  ; FMin(a,b)
  %598 = fsub fast float %597, %97
  %599 = fmul fast float %103, %93
  %600 = fmul fast float %599, %598
  %601 = fadd fast float %600, %102
  %602 = call float @dx.op.binary.f32(i32 35, float %575, float %98)  ; FMax(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %602, float %99)  ; FMin(a,b)
  %604 = fsub fast float %603, %98
  %605 = fmul fast float %604, %94
  %606 = fsub fast float %104, %601
  %607 = fmul fast float %605, %606
  %608 = fadd fast float %607, %601
  %609 = call float @dx.op.binary.f32(i32 35, float %575, float %99)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float %609, float %100)  ; FMin(a,b)
  %611 = fsub fast float %610, %99
  %612 = fmul fast float %611, %95
  %613 = fsub fast float %105, %608
  %614 = fmul fast float %612, %613
  %615 = fsub fast float %608, %595
  %616 = fadd fast float %615, %614
  %617 = fmul fast float %426, %616
  %618 = fadd fast float %617, %595
  %619 = fmul fast float %618, %456
  %620 = fmul fast float %618, %467
  %621 = and i32 %77, 131072
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %668, label %623, !dx.controlflow.hints !33

; <label>:623                                     ; preds = %550
  %624 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %554, float %555, float %556)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 25, float %624)  ; Rsqrt(value)
  %626 = fmul fast float %625, %554
  %627 = fmul fast float %625, %555
  %628 = fmul fast float %625, %556
  %629 = and i32 %77, 524288
  %630 = icmp ne i32 %629, 0
  %631 = fsub fast float -0.000000e+00, %620
  %632 = select i1 %630, float %631, float %620
  %633 = fmul fast float %626, %632
  %634 = fmul fast float %627, %632
  %635 = fmul fast float %628, %632
  %636 = fadd fast float %633, %551
  %637 = fadd fast float %634, %552
  %638 = fadd fast float %635, %553
  %639 = fsub fast float %636, %558
  %640 = fsub fast float %637, %559
  %641 = fsub fast float %638, %560
  %642 = fsub fast float -0.000000e+00, %639
  %643 = fsub fast float -0.000000e+00, %640
  %644 = fsub fast float -0.000000e+00, %641
  %645 = fmul fast float %627, %644
  %646 = fmul fast float %628, %643
  %647 = fsub fast float %645, %646
  %648 = fmul fast float %628, %642
  %649 = fmul fast float %626, %644
  %650 = fsub fast float %648, %649
  %651 = fmul fast float %626, %643
  %652 = fmul fast float %627, %642
  %653 = fsub fast float %651, %652
  %654 = call float @dx.op.dot3.f32(i32 55, float %647, float %650, float %653, float %647, float %650, float %653)  ; Dot3(ax,ay,az,bx,by,bz)
  %655 = call float @dx.op.unary.f32(i32 25, float %654)  ; Rsqrt(value)
  %656 = fmul fast float %647, %655
  %657 = fmul fast float %650, %655
  %658 = fmul fast float %653, %655
  %659 = fmul fast float %657, %628
  %660 = fmul fast float %658, %627
  %661 = fsub fast float %659, %660
  %662 = fmul fast float %658, %626
  %663 = fmul fast float %656, %628
  %664 = fsub fast float %662, %663
  %665 = fmul fast float %656, %627
  %666 = fmul fast float %657, %626
  %667 = fsub fast float %665, %666
  br label %668

; <label>:668                                     ; preds = %623, %550
  %669 = phi float [ %636, %623 ], [ %551, %550 ]
  %670 = phi float [ %637, %623 ], [ %552, %550 ]
  %671 = phi float [ %638, %623 ], [ %553, %550 ]
  %672 = phi float [ %661, %623 ], [ %474, %550 ]
  %673 = phi float [ %664, %623 ], [ %475, %550 ]
  %674 = phi float [ %667, %623 ], [ %476, %550 ]
  %675 = phi float [ %656, %623 ], [ %480, %550 ]
  %676 = phi float [ %657, %623 ], [ %481, %550 ]
  %677 = phi float [ %658, %623 ], [ %482, %550 ]
  %678 = phi float [ %626, %623 ], [ %483, %550 ]
  %679 = phi float [ %627, %623 ], [ %484, %550 ]
  %680 = phi float [ %628, %623 ], [ %485, %550 ]
  %681 = shl nuw nsw i32 %434, 7
  %682 = xor i32 %681, %434
  %683 = lshr i32 %682, 9
  %684 = and i32 %683, 127
  %685 = and i32 %682, 65535
  %686 = xor i32 %684, %685
  %687 = shl nuw nsw i32 %686, 8
  %688 = and i32 %687, 65280
  %689 = xor i32 %688, %686
  %690 = uitofp i32 %689 to float
  %691 = shl nuw nsw i32 %689, 7
  %692 = and i32 %691, 65408
  %693 = xor i32 %692, %689
  %694 = lshr i32 %693, 9
  %695 = xor i32 %694, %693
  %696 = shl nuw nsw i32 %695, 8
  %697 = and i32 %696, 65280
  %698 = xor i32 %697, %695
  %699 = uitofp i32 %698 to float
  %700 = fmul fast float %133, 0x3EF0001000000000
  %701 = fmul fast float %700, %690
  %702 = fadd fast float %701, %131
  %703 = fmul fast float %129, 0x3EF0001000000000
  %704 = fmul fast float %703, %699
  %705 = fmul fast float %198, %185
  %706 = fmul fast float %705, %702
  %707 = fadd fast float %706, %127
  %708 = fadd fast float %707, %704
  %709 = fmul fast float %708, 0x3FC45F3060000000
  %710 = fsub fast float -0.000000e+00, %709
  %711 = fcmp fast oge float %709, %710
  %712 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %713 = call float @dx.op.unary.f32(i32 22, float %712)  ; Frc(value)
  %714 = fsub fast float -0.000000e+00, %713
  %715 = select i1 %711, float %713, float %714
  %716 = fmul fast float %715, 0x401921FB60000000
  %717 = call float @dx.op.unary.f32(i32 13, float %716)  ; Sin(value)
  %718 = call float @dx.op.unary.f32(i32 12, float %716)  ; Cos(value)
  %719 = fmul fast float %718, %675
  %720 = fmul fast float %718, %676
  %721 = fmul fast float %718, %677
  %722 = fmul fast float %717, %678
  %723 = fmul fast float %717, %679
  %724 = fmul fast float %717, %680
  %725 = fadd fast float %719, %722
  %726 = fadd fast float %720, %723
  %727 = fadd fast float %721, %724
  %728 = fmul fast float %717, %675
  %729 = fmul fast float %717, %676
  %730 = fmul fast float %717, %677
  %731 = fmul fast float %718, %678
  %732 = fmul fast float %718, %679
  %733 = fmul fast float %718, %680
  %734 = fsub fast float %728, %731
  %735 = fsub fast float %729, %732
  %736 = fsub fast float %730, %733
  %737 = fmul fast float %725, %619
  %738 = fmul fast float %726, %619
  %739 = fmul fast float %727, %619
  %740 = fmul fast float %734, %620
  %741 = fmul fast float %735, %620
  %742 = fmul fast float %736, %620
  %743 = shl nuw nsw i32 %698, 7
  %744 = xor i32 %743, %698
  %745 = lshr i32 %744, 9
  %746 = and i32 %745, 127
  %747 = and i32 %744, 65535
  %748 = xor i32 %746, %747
  %749 = shl nuw nsw i32 %748, 8
  %750 = and i32 %749, 65280
  %751 = xor i32 %750, %748
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3EF0001000000000
  %754 = shl nuw nsw i32 %751, 7
  %755 = and i32 %754, 65408
  %756 = xor i32 %755, %751
  %757 = lshr i32 %756, 9
  %758 = xor i32 %757, %756
  %759 = shl nuw nsw i32 %758, 8
  %760 = and i32 %759, 65280
  %761 = xor i32 %760, %758
  %762 = uitofp i32 %761 to float
  %763 = fmul fast float %762, 0x3EF0001000000000
  %764 = and i32 %77, 1048576
  %765 = icmp ne i32 %764, 0
  %766 = select i1 %765, float %763, float %753
  %767 = fmul fast float %753, %124
  %768 = fmul fast float %766, %125
  %769 = fadd fast float %121, %767
  %770 = fadd fast float %122, %768
  %771 = fsub fast float -0.000000e+00, %769
  %772 = fmul fast float %737, %771
  %773 = fmul fast float %738, %771
  %774 = fmul fast float %739, %771
  %775 = fsub fast float -0.000000e+00, %770
  %776 = fmul fast float %740, %775
  %777 = fmul fast float %741, %775
  %778 = fmul fast float %742, %775
  %779 = fadd fast float %776, %669
  %780 = fadd fast float %779, %772
  %781 = fadd fast float %777, %670
  %782 = fadd fast float %781, %773
  %783 = fadd fast float %778, %671
  %784 = fadd fast float %783, %774
  %785 = call float @dx.op.dot3.f32(i32 55, float %561, float %562, float %563, float %469, float %471, float %473)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 3
  %788 = fcmp fast ole float %785, %787
  %789 = fsub fast float %575, %117
  %790 = fmul fast float %789, %119
  %791 = call float @dx.op.unary.f32(i32 7, float %790)  ; Saturate(value)
  %792 = fsub fast float 1.000000e+00, %791
  %793 = fsub fast float %575, %113
  %794 = fmul fast float %793, %115
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %796 = fmul fast float %792, %795
  %797 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %798 = fcmp fast ole float %796, %797
  %799 = or i1 %788, %798
  br i1 %799, label %929, label %800, !dx.controlflow.hints !34

; <label>:800                                     ; preds = %668
  %801 = fsub fast float %780, %558
  %802 = fsub fast float %782, %559
  %803 = fsub fast float %784, %560
  %804 = fsub fast float %801, %737
  %805 = fsub fast float %802, %738
  %806 = fsub fast float %803, %739
  %807 = fadd fast float %804, %740
  %808 = fadd fast float %805, %741
  %809 = fadd fast float %806, %742
  %810 = fsub fast float %804, %740
  %811 = fsub fast float %805, %741
  %812 = fsub fast float %806, %742
  %813 = fsub fast float %737, %740
  %814 = fadd fast float %813, %801
  %815 = fsub fast float %738, %741
  %816 = fadd fast float %815, %802
  %817 = fsub fast float %739, %742
  %818 = fadd fast float %817, %803
  %819 = fadd fast float %740, %737
  %820 = fadd fast float %819, %801
  %821 = fadd fast float %741, %738
  %822 = fadd fast float %821, %802
  %823 = fadd fast float %742, %739
  %824 = fadd fast float %823, %803
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 3
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %832 = extractvalue %dx.types.CBufRet.f32 %829, 3
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %840 = extractvalue %dx.types.CBufRet.f32 %837, 3
  %841 = fmul fast float %807, %826
  %842 = call float @dx.op.tertiary.f32(i32 46, float %830, float %808, float %841)  ; FMad(a,b,c)
  %843 = call float @dx.op.tertiary.f32(i32 46, float %834, float %809, float %842)  ; FMad(a,b,c)
  %844 = fadd fast float %843, %838
  %845 = fmul fast float %807, %827
  %846 = call float @dx.op.tertiary.f32(i32 46, float %831, float %808, float %845)  ; FMad(a,b,c)
  %847 = call float @dx.op.tertiary.f32(i32 46, float %835, float %809, float %846)  ; FMad(a,b,c)
  %848 = fadd fast float %847, %839
  %849 = fmul fast float %807, %828
  %850 = call float @dx.op.tertiary.f32(i32 46, float %832, float %808, float %849)  ; FMad(a,b,c)
  %851 = call float @dx.op.tertiary.f32(i32 46, float %836, float %809, float %850)  ; FMad(a,b,c)
  %852 = fadd fast float %851, %840
  %853 = fdiv fast float %844, %852
  %854 = fdiv fast float %848, %852
  %855 = fmul fast float %826, %810
  %856 = call float @dx.op.tertiary.f32(i32 46, float %830, float %811, float %855)  ; FMad(a,b,c)
  %857 = call float @dx.op.tertiary.f32(i32 46, float %834, float %812, float %856)  ; FMad(a,b,c)
  %858 = fadd fast float %857, %838
  %859 = fmul fast float %827, %810
  %860 = call float @dx.op.tertiary.f32(i32 46, float %831, float %811, float %859)  ; FMad(a,b,c)
  %861 = call float @dx.op.tertiary.f32(i32 46, float %835, float %812, float %860)  ; FMad(a,b,c)
  %862 = fadd fast float %861, %839
  %863 = fmul fast float %828, %810
  %864 = call float @dx.op.tertiary.f32(i32 46, float %832, float %811, float %863)  ; FMad(a,b,c)
  %865 = call float @dx.op.tertiary.f32(i32 46, float %836, float %812, float %864)  ; FMad(a,b,c)
  %866 = fadd fast float %865, %840
  %867 = fdiv fast float %858, %866
  %868 = fdiv fast float %862, %866
  %869 = fmul fast float %826, %814
  %870 = call float @dx.op.tertiary.f32(i32 46, float %830, float %816, float %869)  ; FMad(a,b,c)
  %871 = call float @dx.op.tertiary.f32(i32 46, float %834, float %818, float %870)  ; FMad(a,b,c)
  %872 = fadd fast float %871, %838
  %873 = fmul fast float %827, %814
  %874 = call float @dx.op.tertiary.f32(i32 46, float %831, float %816, float %873)  ; FMad(a,b,c)
  %875 = call float @dx.op.tertiary.f32(i32 46, float %835, float %818, float %874)  ; FMad(a,b,c)
  %876 = fadd fast float %875, %839
  %877 = fmul fast float %828, %814
  %878 = call float @dx.op.tertiary.f32(i32 46, float %832, float %816, float %877)  ; FMad(a,b,c)
  %879 = call float @dx.op.tertiary.f32(i32 46, float %836, float %818, float %878)  ; FMad(a,b,c)
  %880 = fadd fast float %879, %840
  %881 = fdiv fast float %872, %880
  %882 = fdiv fast float %876, %880
  %883 = fmul fast float %826, %820
  %884 = call float @dx.op.tertiary.f32(i32 46, float %830, float %822, float %883)  ; FMad(a,b,c)
  %885 = call float @dx.op.tertiary.f32(i32 46, float %834, float %824, float %884)  ; FMad(a,b,c)
  %886 = fadd fast float %885, %838
  %887 = fmul fast float %827, %820
  %888 = call float @dx.op.tertiary.f32(i32 46, float %831, float %822, float %887)  ; FMad(a,b,c)
  %889 = call float @dx.op.tertiary.f32(i32 46, float %835, float %824, float %888)  ; FMad(a,b,c)
  %890 = fadd fast float %889, %839
  %891 = fmul fast float %828, %820
  %892 = call float @dx.op.tertiary.f32(i32 46, float %832, float %822, float %891)  ; FMad(a,b,c)
  %893 = call float @dx.op.tertiary.f32(i32 46, float %836, float %824, float %892)  ; FMad(a,b,c)
  %894 = fadd fast float %893, %840
  %895 = fdiv fast float %886, %894
  %896 = fdiv fast float %890, %894
  %897 = fcmp fast olt float %853, -1.000000e+00
  %898 = fcmp fast olt float %867, -1.000000e+00
  %899 = and i1 %897, %898
  %900 = fcmp fast olt float %881, -1.000000e+00
  %901 = and i1 %899, %900
  %902 = fcmp fast olt float %895, -1.000000e+00
  %903 = and i1 %901, %902
  br i1 %903, label %929, label %904, !dx.controlflow.hints !35

; <label>:904                                     ; preds = %800
  %905 = fcmp fast ogt float %853, 1.000000e+00
  %906 = fcmp fast ogt float %867, 1.000000e+00
  %907 = and i1 %905, %906
  %908 = fcmp fast ogt float %881, 1.000000e+00
  %909 = and i1 %907, %908
  %910 = fcmp fast ogt float %895, 1.000000e+00
  %911 = and i1 %909, %910
  br i1 %911, label %929, label %912, !dx.controlflow.hints !36

; <label>:912                                     ; preds = %904
  %913 = fcmp fast olt float %854, -1.000000e+00
  %914 = fcmp fast olt float %868, -1.000000e+00
  %915 = and i1 %913, %914
  %916 = fcmp fast olt float %882, -1.000000e+00
  %917 = and i1 %915, %916
  %918 = fcmp fast olt float %896, -1.000000e+00
  %919 = and i1 %917, %918
  br i1 %919, label %929, label %920, !dx.controlflow.hints !37

; <label>:920                                     ; preds = %912
  %921 = fcmp fast ogt float %854, 1.000000e+00
  %922 = fcmp fast ogt float %868, 1.000000e+00
  %923 = and i1 %921, %922
  %924 = fcmp fast ogt float %882, 1.000000e+00
  %925 = and i1 %923, %924
  %926 = fcmp fast ogt float %896, 1.000000e+00
  %927 = and i1 %925, %926
  %928 = xor i1 %927, true
  br label %929

; <label>:929                                     ; preds = %920, %912, %904, %800, %668
  %930 = phi i1 [ false, %668 ], [ false, %800 ], [ false, %904 ], [ false, %912 ], [ %928, %920 ]
  %931 = zext i1 %930 to i32
  br i1 %930, label %932, label %1419, !dx.controlflow.hints !38

; <label>:932                                     ; preds = %929
  %933 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 0, i32 %55, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.i32 %934, 3
  %936 = extractvalue %dx.types.CBufRet.i32 %934, 2
  %937 = mul nsw i32 %936, %935
  %938 = sub nsw i32 %143, %937
  %939 = udiv i32 %933, 6
  %940 = add i32 %938, %939
  %941 = shl nuw nsw i32 %761, 7
  %942 = xor i32 %941, %761
  %943 = lshr i32 %942, 9
  %944 = and i32 %943, 127
  %945 = and i32 %942, 65535
  %946 = xor i32 %944, %945
  %947 = shl nuw nsw i32 %946, 8
  %948 = and i32 %947, 65280
  %949 = xor i32 %948, %946
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3EF0001000000000
  %952 = fmul fast float %303, %951
  %953 = fadd fast float %952, %257
  %954 = fmul fast float %393, %951
  %955 = fsub fast float %348, %953
  %956 = fadd fast float %955, %954
  %957 = fmul fast float %956, %211
  %958 = fadd fast float %957, %953
  %959 = shl nuw nsw i32 %949, 7
  %960 = and i32 %959, 65408
  %961 = xor i32 %960, %949
  %962 = lshr i32 %961, 9
  %963 = xor i32 %962, %961
  %964 = shl nuw nsw i32 %963, 8
  %965 = and i32 %964, 65280
  %966 = xor i32 %965, %963
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3EF0001000000000
  %969 = shl nuw nsw i32 %966, 7
  %970 = xor i32 %969, %966
  %971 = lshr i32 %970, 9
  %972 = and i32 %971, 127
  %973 = and i32 %970, 65535
  %974 = xor i32 %972, %973
  %975 = shl nuw nsw i32 %974, 8
  %976 = and i32 %975, 65280
  %977 = xor i32 %976, %974
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %978, 0x3EF0001000000000
  %980 = shl nuw nsw i32 %977, 7
  %981 = and i32 %980, 65408
  %982 = xor i32 %981, %977
  %983 = lshr i32 %982, 9
  %984 = xor i32 %983, %982
  %985 = shl nuw nsw i32 %984, 8
  %986 = and i32 %985, 65280
  %987 = xor i32 %986, %984
  %988 = uitofp i32 %987 to float
  %989 = fmul fast float %988, 0x3EF0001000000000
  %990 = shl nuw nsw i32 %987, 7
  %991 = xor i32 %990, %987
  %992 = lshr i32 %991, 9
  %993 = and i32 %992, 127
  %994 = and i32 %991, 65535
  %995 = xor i32 %993, %994
  %996 = shl nuw nsw i32 %995, 8
  %997 = and i32 %996, 65280
  %998 = xor i32 %997, %995
  %999 = uitofp i32 %998 to float
  %1000 = fmul fast float %999, 0x3EF0001000000000
  %1001 = and i32 %77, 128
  %1002 = icmp ne i32 %1001, 0
  %1003 = select i1 %1002, float %979, float %968
  %1004 = select i1 %1002, float %989, float %968
  %1005 = select i1 %1002, float %1000, float %968
  %1006 = fmul fast float %287, %968
  %1007 = fmul fast float %289, %1003
  %1008 = fmul fast float %291, %1004
  %1009 = fmul fast float %293, %1005
  %1010 = fadd fast float %1006, %241
  %1011 = fadd fast float %1007, %243
  %1012 = fadd fast float %1008, %245
  %1013 = fadd fast float %1009, %247
  %1014 = fmul fast float %377, %968
  %1015 = fmul fast float %379, %1003
  %1016 = fmul fast float %381, %1004
  %1017 = fmul fast float %383, %1005
  %1018 = fsub fast float %332, %1010
  %1019 = fadd fast float %1018, %1014
  %1020 = fsub fast float %334, %1011
  %1021 = fadd fast float %1020, %1015
  %1022 = fsub fast float %336, %1012
  %1023 = fadd fast float %1022, %1016
  %1024 = fsub fast float %338, %1013
  %1025 = fadd fast float %1024, %1017
  %1026 = fmul fast float %1019, %211
  %1027 = fmul fast float %1021, %211
  %1028 = fmul fast float %1023, %211
  %1029 = fmul fast float %1025, %211
  %1030 = fadd fast float %1026, %1010
  %1031 = fadd fast float %1027, %1011
  %1032 = fadd fast float %1028, %1012
  %1033 = fadd fast float %1029, %1013
  %1034 = and i32 %77, 8388608
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1036, label %1040, !dx.controlflow.hints !39

; <label>:1036                                    ; preds = %932
  %1037 = fmul fast float %1030, %1030
  %1038 = fmul fast float %1031, %1031
  %1039 = fmul fast float %1032, %1032
  br label %1040

; <label>:1040                                    ; preds = %1036, %932
  %1041 = phi float [ %1030, %932 ], [ %1037, %1036 ]
  %1042 = phi float [ %1031, %932 ], [ %1038, %1036 ]
  %1043 = phi float [ %1032, %932 ], [ %1039, %1036 ]
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1046 = shl nuw nsw i32 %998, 7
  %1047 = and i32 %1046, 65408
  %1048 = xor i32 %1047, %998
  %1049 = lshr i32 %1048, 9
  %1050 = xor i32 %1049, %1048
  %1051 = shl nuw nsw i32 %1050, 8
  %1052 = and i32 %1051, 65280
  %1053 = xor i32 %1052, %1050
  %1054 = uitofp i32 %1053 to float
  %1055 = fmul fast float %1054, 0x3EF0001000000000
  %1056 = fmul fast float %299, %1055
  %1057 = fadd fast float %1056, %253
  %1058 = fmul fast float %389, %1055
  %1059 = fsub fast float %344, %1057
  %1060 = fadd fast float %1059, %1058
  %1061 = fmul fast float %1060, %211
  %1062 = fadd fast float %1061, %1057
  %1063 = fadd fast float %1062, %1045
  %1064 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1063)  ; FMax(a,b)
  %1065 = shl nuw nsw i32 %1053, 7
  %1066 = xor i32 %1065, %1053
  %1067 = lshr i32 %1066, 9
  %1068 = and i32 %1067, 127
  %1069 = and i32 %1066, 65535
  %1070 = xor i32 %1068, %1069
  %1071 = shl nuw nsw i32 %1070, 8
  %1072 = and i32 %1071, 65280
  %1073 = xor i32 %1072, %1070
  %1074 = uitofp i32 %1073 to float
  %1075 = fmul fast float %1074, 0x3EF0001000000000
  %1076 = shl nuw nsw i32 %1073, 7
  %1077 = and i32 %1076, 65408
  %1078 = xor i32 %1077, %1073
  %1079 = lshr i32 %1078, 9
  %1080 = xor i32 %1079, %1078
  %1081 = shl nuw nsw i32 %1080, 8
  %1082 = and i32 %1081, 65280
  %1083 = xor i32 %1082, %1080
  %1084 = uitofp i32 %1083 to float
  %1085 = fmul fast float %1084, 0x3EF0001000000000
  %1086 = shl nuw nsw i32 %1083, 7
  %1087 = xor i32 %1086, %1083
  %1088 = lshr i32 %1087, 9
  %1089 = and i32 %1088, 127
  %1090 = and i32 %1087, 65535
  %1091 = xor i32 %1089, %1090
  %1092 = shl nuw nsw i32 %1091, 8
  %1093 = and i32 %1092, 65280
  %1094 = xor i32 %1093, %1091
  %1095 = uitofp i32 %1094 to float
  %1096 = fmul fast float %1095, 0x3EF0001000000000
  %1097 = shl nuw nsw i32 %1094, 7
  %1098 = and i32 %1097, 65408
  %1099 = xor i32 %1098, %1094
  %1100 = lshr i32 %1099, 9
  %1101 = xor i32 %1100, %1099
  %1102 = shl nuw nsw i32 %1101, 8
  %1103 = and i32 %1102, 65280
  %1104 = xor i32 %1103, %1101
  %1105 = uitofp i32 %1104 to float
  %1106 = fmul fast float %1105, 0x3EF0001000000000
  %1107 = and i32 %77, 64
  %1108 = icmp ne i32 %1107, 0
  %1109 = select i1 %1108, float %1085, float %1075
  %1110 = select i1 %1108, float %1096, float %1075
  %1111 = select i1 %1108, float %1106, float %1075
  %1112 = fmul fast float %279, %1075
  %1113 = fmul fast float %281, %1109
  %1114 = fmul fast float %283, %1110
  %1115 = fmul fast float %285, %1111
  %1116 = fadd fast float %1112, %233
  %1117 = fadd fast float %1113, %235
  %1118 = fadd fast float %1114, %237
  %1119 = fadd fast float %1115, %239
  %1120 = fmul fast float %369, %1075
  %1121 = fmul fast float %371, %1109
  %1122 = fmul fast float %373, %1110
  %1123 = fmul fast float %375, %1111
  %1124 = fsub fast float %324, %1116
  %1125 = fadd fast float %1124, %1120
  %1126 = fsub fast float %326, %1117
  %1127 = fadd fast float %1126, %1121
  %1128 = fsub fast float %328, %1118
  %1129 = fadd fast float %1128, %1122
  %1130 = fsub fast float %330, %1119
  %1131 = fadd fast float %1130, %1123
  %1132 = fmul fast float %1125, %211
  %1133 = fmul fast float %1127, %211
  %1134 = fmul fast float %1129, %211
  %1135 = fmul fast float %1131, %211
  %1136 = fadd fast float %1132, %1116
  %1137 = fadd fast float %1133, %1117
  %1138 = fadd fast float %1134, %1118
  %1139 = fadd fast float %1135, %1119
  br i1 %1035, label %1140, label %1144, !dx.controlflow.hints !40

; <label>:1140                                    ; preds = %1040
  %1141 = fmul fast float %1136, %1136
  %1142 = fmul fast float %1137, %1137
  %1143 = fmul fast float %1138, %1138
  br label %1144

; <label>:1144                                    ; preds = %1140, %1040
  %1145 = phi float [ %1136, %1040 ], [ %1141, %1140 ]
  %1146 = phi float [ %1137, %1040 ], [ %1142, %1140 ]
  %1147 = phi float [ %1138, %1040 ], [ %1143, %1140 ]
  %1148 = shl nuw nsw i32 %1104, 7
  %1149 = xor i32 %1148, %1104
  %1150 = lshr i32 %1149, 9
  %1151 = and i32 %1150, 127
  %1152 = and i32 %1149, 65535
  %1153 = xor i32 %1151, %1152
  %1154 = shl nuw nsw i32 %1153, 8
  %1155 = and i32 %1154, 65280
  %1156 = xor i32 %1155, %1153
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3EF0001000000000
  %1159 = fadd fast float %1158, -5.000000e-01
  %1160 = and i32 %77, 32768
  %1161 = icmp ne i32 %1160, 0
  %1162 = call float @dx.op.unary.f32(i32 6, float %1159)  ; FAbs(value)
  %1163 = fcmp fast ogt float %1162, 2.500000e-01
  %1164 = zext i1 %1163 to i32
  %1165 = and i32 %77, 8192
  %1166 = select i1 %1161, i32 %1164, i32 %1165
  %1167 = icmp ne i32 %1166, 0
  %1168 = and i32 %77, 65536
  %1169 = icmp ne i32 %1168, 0
  %1170 = fcmp fast ogt float %1159, 0.000000e+00
  %1171 = zext i1 %1170 to i32
  %1172 = and i32 %77, 16384
  %1173 = select i1 %1169, i32 %1171, i32 %1172
  %1174 = icmp ne i32 %1173, 0
  %1175 = zext i1 %1167 to i32
  %1176 = or i32 %1175, 2
  %1177 = select i1 %1174, i32 %1176, i32 %1175
  %1178 = and i32 %66, 65535
  %1179 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  %1180 = fmul fast float %1179, 2.550000e+02
  %1181 = fptoui float %1180 to i32
  %1182 = shl nuw nsw i32 %1177, 24
  %1183 = shl i32 %1181, 16
  %1184 = or i32 %1183, %1178
  %1185 = or i32 %1184, %1182
  %1186 = shl nuw nsw i32 %1156, 7
  %1187 = and i32 %1186, 65408
  %1188 = xor i32 %1187, %1156
  %1189 = lshr i32 %1188, 9
  %1190 = xor i32 %1189, %1188
  %1191 = shl nuw nsw i32 %1190, 8
  %1192 = and i32 %1191, 65280
  %1193 = xor i32 %1192, %1190
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1194, 0x3EF0001000000000
  %1196 = shl nuw nsw i32 %1193, 7
  %1197 = xor i32 %1196, %1193
  %1198 = lshr i32 %1197, 9
  %1199 = and i32 %1198, 127
  %1200 = and i32 %1197, 65535
  %1201 = xor i32 %1199, %1200
  %1202 = fmul fast float %301, %1195
  %1203 = fadd fast float %1202, %255
  %1204 = fmul fast float %391, %1195
  %1205 = fsub fast float %346, %1203
  %1206 = fadd fast float %1205, %1204
  %1207 = fmul fast float %1206, %211
  %1208 = fadd fast float %1207, %1203
  %1209 = lshr i32 %111, 16
  %1210 = and i32 %111, 32767
  %1211 = icmp eq i32 %1210, 32767
  br i1 %1211, label %1229, label %1212, !dx.controlflow.hints !41

; <label>:1212                                    ; preds = %1144
  %1213 = shl nuw nsw i32 %1201, 8
  %1214 = and i32 %1213, 65280
  %1215 = xor i32 %1214, %1201
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3EF0001000000000
  %1218 = fadd fast float %109, %107
  %1219 = fdiv fast float 1.000000e+00, %1218
  %1220 = fmul fast float %1208, %198
  %1221 = fmul fast float %1220, %1219
  %1222 = and i32 %111, 32768
  %1223 = icmp ne i32 %1222, 0
  %1224 = select i1 %1223, float 1.000000e+00, float %1217
  %1225 = uitofp i32 %1210 to float
  %1226 = fmul fast float %1224, %1225
  %1227 = call float @dx.op.unary.f32(i32 27, float %1226)  ; Round_ni(value)
  %1228 = fadd fast float %1221, %1227
  br label %1229

; <label>:1229                                    ; preds = %1212, %1144
  %1230 = phi float [ %1228, %1212 ], [ %1208, %1144 ]
  %1231 = icmp eq i32 %1209, 65535
  br i1 %1231, label %1237, label %1232, !dx.controlflow.hints !42

; <label>:1232                                    ; preds = %1229
  %1233 = uitofp i32 %1209 to float
  %1234 = fsub fast float -0.000000e+00, %1233
  %1235 = call float @dx.op.binary.f32(i32 35, float %1230, float %1234)  ; FMax(a,b)
  %1236 = call float @dx.op.binary.f32(i32 36, float %1235, float %1233)  ; FMin(a,b)
  br label %1237

; <label>:1237                                    ; preds = %1232, %1229
  %1238 = phi float [ %1236, %1232 ], [ %1230, %1229 ]
  %1239 = and i32 %66, -65536
  %1240 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1238)  ; LegacyF32ToF16(value)
  %1241 = and i32 %1240, 65535
  %1242 = or i32 %1241, %1239
  %1243 = fmul fast float %727, %673
  %1244 = fmul fast float %726, %674
  %1245 = fsub fast float %1243, %1244
  %1246 = fmul fast float %725, %674
  %1247 = fmul fast float %727, %672
  %1248 = fsub fast float %1246, %1247
  %1249 = fmul fast float %726, %672
  %1250 = fmul fast float %725, %673
  %1251 = fsub fast float %1249, %1250
  %1252 = fadd fast float %725, %674
  %1253 = fadd fast float %1252, %1248
  %1254 = fcmp fast ogt float %1253, 0.000000e+00
  br i1 %1254, label %1255, label %1266, !dx.controlflow.hints !43

; <label>:1255                                    ; preds = %1237
  %1256 = fadd fast float %1253, 1.000000e+00
  %1257 = fsub fast float %1251, %673
  %1258 = fsub fast float %672, %727
  %1259 = fsub fast float %726, %1245
  %1260 = call float @dx.op.unary.f32(i32 25, float %1256)  ; Rsqrt(value)
  %1261 = fmul fast float %1260, 5.000000e-01
  %1262 = fmul fast float %1261, %1257
  %1263 = fmul fast float %1261, %1258
  %1264 = fmul fast float %1261, %1259
  %1265 = fmul fast float %1261, %1256
  br label %1310

; <label>:1266                                    ; preds = %1237
  %1267 = fcmp fast ogt float %725, %1248
  %1268 = fcmp fast ogt float %725, %674
  %1269 = and i1 %1268, %1267
  br i1 %1269, label %1270, label %1283, !dx.controlflow.hints !44

; <label>:1270                                    ; preds = %1266
  %1271 = fsub fast float 1.000000e+00, %674
  %1272 = fadd fast float %1271, %725
  %1273 = fsub fast float %1272, %1248
  %1274 = fsub fast float %1251, %673
  %1275 = fadd fast float %1245, %726
  %1276 = fadd fast float %727, %672
  %1277 = call float @dx.op.unary.f32(i32 25, float %1273)  ; Rsqrt(value)
  %1278 = fmul fast float %1277, 5.000000e-01
  %1279 = fmul fast float %1278, %1273
  %1280 = fmul fast float %1278, %1275
  %1281 = fmul fast float %1278, %1276
  %1282 = fmul fast float %1278, %1274
  br label %1310

; <label>:1283                                    ; preds = %1266
  %1284 = fcmp fast ogt float %1248, %674
  %1285 = fadd fast float %1251, %673
  br i1 %1284, label %1286, label %1298, !dx.controlflow.hints !45

; <label>:1286                                    ; preds = %1283
  %1287 = fsub fast float 1.000000e+00, %674
  %1288 = fsub fast float %1287, %725
  %1289 = fadd fast float %1288, %1248
  %1290 = fsub fast float %672, %727
  %1291 = fadd fast float %1245, %726
  %1292 = call float @dx.op.unary.f32(i32 25, float %1289)  ; Rsqrt(value)
  %1293 = fmul fast float %1292, 5.000000e-01
  %1294 = fmul fast float %1293, %1291
  %1295 = fmul fast float %1293, %1289
  %1296 = fmul fast float %1293, %1285
  %1297 = fmul fast float %1293, %1290
  br label %1310

; <label>:1298                                    ; preds = %1283
  %1299 = fadd fast float %674, 1.000000e+00
  %1300 = fsub fast float %1299, %725
  %1301 = fsub fast float %1300, %1248
  %1302 = fsub fast float %726, %1245
  %1303 = fadd fast float %727, %672
  %1304 = call float @dx.op.unary.f32(i32 25, float %1301)  ; Rsqrt(value)
  %1305 = fmul fast float %1304, 5.000000e-01
  %1306 = fmul fast float %1305, %1303
  %1307 = fmul fast float %1305, %1285
  %1308 = fmul fast float %1305, %1301
  %1309 = fmul fast float %1305, %1302
  br label %1310

; <label>:1310                                    ; preds = %1298, %1286, %1270, %1255
  %1311 = phi float [ %1262, %1255 ], [ %1279, %1270 ], [ %1294, %1286 ], [ %1306, %1298 ]
  %1312 = phi float [ %1263, %1255 ], [ %1280, %1270 ], [ %1295, %1286 ], [ %1307, %1298 ]
  %1313 = phi float [ %1264, %1255 ], [ %1281, %1270 ], [ %1296, %1286 ], [ %1308, %1298 ]
  %1314 = phi float [ %1265, %1255 ], [ %1282, %1270 ], [ %1297, %1286 ], [ %1309, %1298 ]
  %1315 = call float @dx.op.unary.f32(i32 6, float %1313)  ; FAbs(value)
  %1316 = call float @dx.op.unary.f32(i32 6, float %1311)  ; FAbs(value)
  %1317 = fcmp fast oge float %1315, %1316
  %1318 = call float @dx.op.unary.f32(i32 6, float %1312)  ; FAbs(value)
  %1319 = fcmp fast oge float %1315, %1318
  %1320 = and i1 %1317, %1319
  br i1 %1320, label %1321, label %1324, !dx.controlflow.hints !46

; <label>:1321                                    ; preds = %1310
  %1322 = fcmp fast olt float %1313, 0.000000e+00
  %1323 = select i1 %1322, float 5.000000e+00, float 4.000000e+00
  br label %1332

; <label>:1324                                    ; preds = %1310
  %1325 = fcmp fast ult float %1318, %1316
  br i1 %1325, label %1329, label %1326, !dx.controlflow.hints !47

; <label>:1326                                    ; preds = %1324
  %1327 = fcmp fast olt float %1312, 0.000000e+00
  %1328 = select i1 %1327, float 3.000000e+00, float 2.000000e+00
  br label %1332

; <label>:1329                                    ; preds = %1324
  %1330 = fcmp fast olt float %1311, 0.000000e+00
  %1331 = select i1 %1330, float 1.000000e+00, float 0.000000e+00
  br label %1332

; <label>:1332                                    ; preds = %1329, %1326, %1321
  %1333 = phi float [ %1323, %1321 ], [ %1328, %1326 ], [ %1331, %1329 ]
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = fptoui float %1334 to i32
  %1336 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1337 = call float @dx.op.binary.f32(i32 35, float %1318, float %1315)  ; FMax(a,b)
  %1338 = call float @dx.op.binary.f32(i32 35, float %1316, float %1337)  ; FMax(a,b)
  %1339 = fcmp fast ogt float %1336, %1338
  %1340 = select i1 %1339, i32 3, i32 %1335
  %1341 = icmp eq i32 %1340, 0
  %1342 = select i1 %1341, float %1312, float %1311
  %1343 = select i1 %1341, float %1313, float %1312
  %1344 = select i1 %1341, float %1314, float %1313
  %1345 = select i1 %1341, float %1311, float %1314
  %1346 = icmp eq i32 %1340, 1
  %1347 = select i1 %1346, float %1344, float %1343
  %1348 = select i1 %1346, float %1345, float %1344
  %1349 = select i1 %1346, float %1343, float %1345
  %1350 = icmp eq i32 %1340, 2
  %1351 = select i1 %1350, float %1349, float %1348
  %1352 = select i1 %1350, float %1348, float %1349
  %1353 = fcmp fast ogt float %1352, 0.000000e+00
  %1354 = select i1 %1353, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1355 = fmul fast float %1354, %1342
  %1356 = fmul fast float %1354, %1347
  %1357 = fmul fast float %1354, %1351
  %1358 = fadd fast float %1355, 1.000000e+00
  %1359 = fmul fast float %1358, 5.000000e-01
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1361 = fmul fast float %1360, 1.023000e+03
  %1362 = fptoui float %1361 to i32
  %1363 = fadd fast float %1356, 1.000000e+00
  %1364 = fmul fast float %1363, 5.000000e-01
  %1365 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1366 = fmul fast float %1365, 1.023000e+03
  %1367 = fptoui float %1366 to i32
  %1368 = fadd fast float %1357, 1.000000e+00
  %1369 = fmul fast float %1368, 5.000000e-01
  %1370 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1371 = fmul fast float %1370, 5.110000e+02
  %1372 = fptoui float %1371 to i32
  %1373 = shl i32 %1367, 10
  %1374 = shl i32 %1372, 20
  %1375 = shl i32 %1340, 30
  %1376 = or i32 %1375, %1362
  %1377 = or i32 %1376, %1373
  %1378 = or i32 %1377, %1374
  %1379 = fmul fast float %1041, %796
  %1380 = fmul fast float %1042, %796
  %1381 = fmul fast float %1043, %796
  %1382 = fmul fast float %796, %1033
  %1383 = fmul fast float %796, %1139
  %1384 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1145)  ; LegacyF32ToF16(value)
  %1385 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1146)  ; LegacyF32ToF16(value)
  %1386 = shl i32 %1385, 16
  %1387 = or i32 %1386, %1384
  %1388 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1147)  ; LegacyF32ToF16(value)
  %1389 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1383)  ; LegacyF32ToF16(value)
  %1390 = shl i32 %1389, 16
  %1391 = or i32 %1390, %1388
  %1392 = bitcast i32 %1387 to float
  %1393 = bitcast i32 %1391 to float
  %1394 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1379)  ; LegacyF32ToF16(value)
  %1395 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1380)  ; LegacyF32ToF16(value)
  %1396 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1381)  ; LegacyF32ToF16(value)
  %1397 = lshr i32 %1394, 4
  %1398 = and i32 %1397, 2047
  %1399 = shl i32 %1395, 7
  %1400 = and i32 %1399, 4192256
  %1401 = or i32 %1400, %1398
  %1402 = lshr i32 %1396, 5
  %1403 = shl i32 %1402, 22
  %1404 = or i32 %1401, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1382)  ; LegacyF32ToF16(value)
  %1407 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1064)  ; LegacyF32ToF16(value)
  %1408 = shl i32 %1407, 16
  %1409 = or i32 %1408, %1406
  %1410 = bitcast i32 %1409 to float
  %1411 = mul i32 %940, 56
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1411, i32 undef, float %780, float %782, float %784, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1412 = add i32 %1411, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1412, i32 undef, i32 %68, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1413 = add i32 %1411, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1413, i32 undef, float %619, float %620, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1414 = add i32 %1411, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1414, i32 undef, i32 %1242, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1415 = add i32 %1411, 28
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1415, i32 undef, i32 %1185, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1416 = add i32 %1411, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %1416, i32 undef, float %1392, float %1393, float %1405, float %1410, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1417 = add i32 %1411, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1417, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1418 = add i32 %1411, 52
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1418, i32 undef, i32 %1378, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1419

; <label>:1419                                    ; preds = %1332, %929, %44
  %1420 = phi float [ %780, %1332 ], [ %780, %929 ], [ 0.000000e+00, %44 ]
  %1421 = phi float [ %782, %1332 ], [ %782, %929 ], [ 0.000000e+00, %44 ]
  %1422 = phi float [ %784, %1332 ], [ %784, %929 ], [ 0.000000e+00, %44 ]
  %1423 = phi float [ %675, %1332 ], [ %675, %929 ], [ 0.000000e+00, %44 ]
  %1424 = phi float [ %676, %1332 ], [ %676, %929 ], [ 0.000000e+00, %44 ]
  %1425 = phi float [ %677, %1332 ], [ %677, %929 ], [ 0.000000e+00, %44 ]
  %1426 = phi float [ %678, %1332 ], [ %678, %929 ], [ 0.000000e+00, %44 ]
  %1427 = phi float [ %679, %1332 ], [ %679, %929 ], [ 0.000000e+00, %44 ]
  %1428 = phi float [ %680, %1332 ], [ %680, %929 ], [ 0.000000e+00, %44 ]
  %1429 = phi float [ %619, %1332 ], [ %619, %929 ], [ 0.000000e+00, %44 ]
  %1430 = phi float [ %620, %1332 ], [ %620, %929 ], [ 0.000000e+00, %44 ]
  %1431 = phi float [ %716, %1332 ], [ %716, %929 ], [ 0.000000e+00, %44 ]
  %1432 = phi i32 [ %931, %1332 ], [ %931, %929 ], [ %74, %44 ]
  %1433 = phi i32 [ %940, %1332 ], [ 0, %929 ], [ 0, %44 ]
  %1434 = lshr i32 %70, 16
  %1435 = and i32 %1434, 4095
  %1436 = icmp ne i32 %1432, 0
  %1437 = icmp ult i32 %1435, 2
  %1438 = and i1 %1437, %1436
  br i1 %1438, label %1439, label %1536, !dx.controlflow.hints !48

; <label>:1439                                    ; preds = %1419
  %1440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.f32 %1440, 0
  %1442 = extractvalue %dx.types.CBufRet.f32 %1440, 1
  %1443 = extractvalue %dx.types.CBufRet.f32 %1440, 2
  %1444 = fsub fast float %1420, %1441
  %1445 = fsub fast float %1421, %1442
  %1446 = fsub fast float %1422, %1443
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 0
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1444, float %1445, float %1446, float %1448, float %1450, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 1
  %1456 = fmul fast float %1455, %1453
  %1457 = call float @dx.op.binary.f32(i32 35, float %1429, float %1430)  ; FMax(a,b)
  %1458 = fdiv fast float 1.000000e+00, %1456
  %1459 = fmul fast float %1458, %1457
  %1460 = extractvalue %dx.types.CBufRet.f32 %1454, 2
  %1461 = fmul fast float %1459, %1460
  %1462 = fptosi float %1461 to i32
  %1463 = icmp sgt i32 %1462, 0
  br i1 %1463, label %1464, label %1472, !dx.controlflow.hints !49

; <label>:1464                                    ; preds = %1439
  %1465 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1462)  ; FirstbitHi(value)
  %1466 = sub i32 31, %1465
  %1467 = icmp eq i32 %1465, -1
  %1468 = select i1 %1467, i32 -1, i32 %1466
  %1469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.i32 %1469, 0
  %1471 = call i32 @dx.op.binary.i32(i32 40, i32 %1468, i32 %1470)  ; UMin(a,b)
  br label %1472

; <label>:1472                                    ; preds = %1464, %1439
  %1473 = phi i32 [ %1471, %1464 ], [ 0, %1439 ]
  %1474 = mul nuw nsw i32 %1435, 6
  %1475 = add i32 %1473, %1474
  %1476 = add i32 %1475, 17
  %1477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 %1476)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.i32 %1477, 0
  %1479 = extractvalue %dx.types.CBufRet.i32 %1477, 2
  %1480 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1475, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1481 = add i32 %1478, -1
  %1482 = call i32 @dx.op.binary.i32(i32 40, i32 %1480, i32 %1481)  ; UMin(a,b)
  %1483 = and i32 %70, -268435456
  %1484 = or i32 %1433, %1483
  %1485 = bitcast float %1420 to i32
  %1486 = bitcast float %1421 to i32
  %1487 = bitcast float %1422 to i32
  %1488 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1429)  ; LegacyF32ToF16(value)
  %1489 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1430)  ; LegacyF32ToF16(value)
  %1490 = shl i32 %1489, 16
  %1491 = or i32 %1490, %1488
  %1492 = fadd fast float %1423, 1.000000e+00
  %1493 = fadd fast float %1424, 1.000000e+00
  %1494 = fadd fast float %1425, 1.000000e+00
  %1495 = fmul fast float %1492, 5.000000e-01
  %1496 = fmul fast float %1493, 5.000000e-01
  %1497 = fmul fast float %1494, 5.000000e-01
  %1498 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1499 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1500 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1501 = fmul fast float %1498, 1.023000e+03
  %1502 = fmul fast float %1499, 1.023000e+03
  %1503 = fmul fast float %1500, 1.023000e+03
  %1504 = fptoui float %1501 to i32
  %1505 = fptoui float %1502 to i32
  %1506 = fptoui float %1503 to i32
  %1507 = shl i32 %1505, 10
  %1508 = or i32 %1507, %1504
  %1509 = shl i32 %1506, 20
  %1510 = or i32 %1508, %1509
  %1511 = fadd fast float %1426, 1.000000e+00
  %1512 = fadd fast float %1427, 1.000000e+00
  %1513 = fadd fast float %1428, 1.000000e+00
  %1514 = fmul fast float %1511, 5.000000e-01
  %1515 = fmul fast float %1512, 5.000000e-01
  %1516 = fmul fast float %1513, 5.000000e-01
  %1517 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1518 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1519 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1520 = fmul fast float %1517, 1.023000e+03
  %1521 = fmul fast float %1518, 1.023000e+03
  %1522 = fmul fast float %1519, 1.023000e+03
  %1523 = fptoui float %1520 to i32
  %1524 = fptoui float %1521 to i32
  %1525 = fptoui float %1522 to i32
  %1526 = shl i32 %1524, 10
  %1527 = or i32 %1526, %1523
  %1528 = shl i32 %1525, 20
  %1529 = or i32 %1527, %1528
  %1530 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1431)  ; LegacyF32ToF16(value)
  %1531 = shl i32 %70, 16
  %1532 = or i32 %1530, %1531
  %1533 = add i32 %1482, %1479
  %1534 = shl i32 %1533, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1534, i32 undef, i32 %1485, i32 %1486, i32 %1487, i32 %1484, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1535 = or i32 %1534, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1535, i32 undef, i32 %1491, i32 %1510, i32 %1529, i32 %1532, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1536

; <label>:1536                                    ; preds = %1472, %1419
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!20 = !{i32 0, %"class.RWStructuredBuffer<GfxIndexedIndirectArgs>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !14}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!23 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!26 = !{i32 1, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!27 = !{void ()* @cs_fx_prerender_unsorted_particles, !"cs_fx_prerender_unsorted_particles", null, !4, !28}
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

