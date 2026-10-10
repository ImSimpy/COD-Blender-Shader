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
; shader hash: ddc5b472e2c933f6164aea95754f925a
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
;   [8 x i8] (type annotation not present)
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
;                                       UAV  struct         r/w      U0             u4     1
;                                       UAV  struct         r/w      U1             u6     1
;                                       UAV    byte         r/w      U2             u2     1
;                                       UAV  struct         r/w      U3             u3     1
;                                       UAV  struct         r/w      U4             u0     1
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
%"class.RWStructuredBuffer<FxParticleCounter>" = type { %struct.FxParticleCounter }
%struct.FxParticleCounter = type { i32, i32, i32, i32 }
%"class.RWStructuredBuffer<FxSortItem>" = type { %struct.FxSortItem }
%struct.FxSortItem = type { float, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GfxIndexedIndirectArgs>" = type { %struct.GfxIndexedIndirectArgs }
%struct.GfxIndexedIndirectArgs = type { i32, i32, i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

define void @cs_fx_prepare_sorted_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %17, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %17, i32 4)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = icmp ugt i32 %19, 1
  br i1 %22, label %23, label %46

; <label>:23                                      ; preds = %0
  br label %24

; <label>:24                                      ; preds = %24, %23
  %25 = phi i32 [ %36, %24 ], [ 0, %23 ]
  %26 = phi i32 [ %37, %24 ], [ 0, %23 ]
  %27 = phi i32 [ %38, %24 ], [ %19, %23 ]
  %28 = sub i32 %27, %25
  %29 = lshr i32 %28, 1
  %30 = add i32 %29, %25
  %31 = add i32 %21, 255
  %32 = add i32 %31, %30
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = icmp ult i32 %15, %34
  %36 = select i1 %35, i32 %25, i32 %30
  %37 = select i1 %35, i32 %26, i32 %34
  %38 = select i1 %35, i32 %30, i32 %27
  %39 = sub i32 %27, %30
  %40 = select i1 %35, i32 %29, i32 %39
  %41 = icmp ugt i32 %40, 1
  br i1 %41, label %24, label %42

; <label>:42                                      ; preds = %24
  %43 = icmp eq i32 %36, 0
  %44 = shl i32 %37, 6
  %45 = select i1 %43, i32 0, i32 %44
  br label %46

; <label>:46                                      ; preds = %42, %0
  %47 = phi i32 [ 0, %0 ], [ %45, %42 ]
  %48 = phi i32 [ %19, %0 ], [ %38, %42 ]
  %49 = sub i32 %14, %47
  %50 = add i32 %21, -1
  %51 = add i32 %50, %48
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %51, i32 0)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %53, i32 0)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = extractvalue %dx.types.ResRet.f32 %54, 3
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %53, i32 16)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %53, i32 8)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = icmp ult i32 %49, %64
  br i1 %65, label %66, label %785, !dx.controlflow.hints !29

; <label>:66                                      ; preds = %46
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = extractvalue %dx.types.ResRet.f32 %73, 3
  %78 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = extractvalue %dx.types.ResRet.f32 %78, 3
  %83 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = extractvalue %dx.types.ResRet.f32 %87, 3
  %92 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = extractvalue %dx.types.ResRet.f32 %92, 1
  %95 = extractvalue %dx.types.ResRet.f32 %92, 2
  %96 = extractvalue %dx.types.ResRet.f32 %92, 3
  %97 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = extractvalue %dx.types.ResRet.f32 %112, 1
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 3
  %128 = shl i32 %127, 8
  %129 = or i32 %128, 2
  %130 = add i32 %129, %53
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %130, i32 0)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = add i32 %132, %49
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %133, i32 0)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = extractvalue %dx.types.ResRet.i32 %134, 1
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %133, i32 8)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = extractvalue %dx.types.ResRet.i32 %137, 1
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %133, i32 16)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %135, -2048
  %143 = bitcast i32 %142 to float
  %144 = shl i32 %135, 21
  %145 = lshr i32 %136, 11
  %146 = and i32 %145, 2095104
  %147 = or i32 %146, %144
  %148 = bitcast i32 %147 to float
  %149 = shl i32 %136, 10
  %150 = and i32 %149, -2048
  %151 = bitcast i32 %150 to float
  %152 = and i32 %68, 4194304
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162, !dx.controlflow.hints !30

; <label>:154                                     ; preds = %66
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fadd fast float %156, %143
  %160 = fadd fast float %157, %148
  %161 = fadd fast float %158, %151
  br label %162

; <label>:162                                     ; preds = %154, %66
  %163 = phi float [ %143, %66 ], [ %159, %154 ]
  %164 = phi float [ %148, %66 ], [ %160, %154 ]
  %165 = phi float [ %151, %66 ], [ %161, %154 ]
  %166 = lshr i32 %138, 16
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = and i32 %139, 65535
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = lshr i32 %139, 16
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = and i32 %138, 65535
  %173 = uitofp i32 %172 to float
  %174 = fmul fast float %173, 0x3EF0001000000000
  %175 = lshr i32 %141, 16
  %176 = shl nuw nsw i32 %175, 7
  %177 = and i32 %176, 65408
  %178 = xor i32 %177, %175
  %179 = lshr i32 %178, 9
  %180 = xor i32 %179, %178
  %181 = shl nuw nsw i32 %180, 8
  %182 = and i32 %181, 65280
  %183 = xor i32 %182, %180
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %100, 0x3EF0001000000000
  %186 = fmul fast float %185, %184
  %187 = fadd fast float %186, %98
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 65535
  %191 = lshr i32 %189, 16
  %192 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %193 = uitofp i32 %190 to float
  %194 = fmul fast float %193, %192
  %195 = add nsw i32 %190, -1
  %196 = call float @dx.op.unary.f32(i32 27, float %194)  ; Round_ni(value)
  %197 = fptosi float %196 to i32
  %198 = call i32 @dx.op.binary.i32(i32 38, i32 %197, i32 %195)  ; IMin(a,b)
  %199 = uitofp i32 %198 to float
  %200 = fsub fast float %194, %199
  %201 = shl i32 %198, 1
  %202 = mul i32 %198, 96
  %203 = add nuw nsw i32 %191, 20
  %204 = add i32 %203, %202
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 65535
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %206, 16
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = or i32 %201, 1
  %212 = mul i32 %211, 48
  %213 = add i32 %203, %212
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 65535
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %215, 16
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = add nuw nsw i32 %191, 116
  %221 = add i32 %220, %202
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = and i32 %223, 65535
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %223, 16
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add nuw nsw i32 %191, 164
  %229 = add i32 %228, %202
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %231, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = shl i32 %141, 7
  %237 = and i32 %236, 65408
  %238 = and i32 %141, 65535
  %239 = xor i32 %237, %238
  %240 = lshr i32 %239, 9
  %241 = xor i32 %240, %239
  %242 = shl nuw nsw i32 %241, 8
  %243 = and i32 %242, 65280
  %244 = xor i32 %243, %241
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3EF0001000000000
  %247 = shl nuw nsw i32 %244, 7
  %248 = and i32 %247, 65408
  %249 = xor i32 %248, %244
  %250 = lshr i32 %249, 9
  %251 = and i32 %250, 65535
  %252 = xor i32 %251, %249
  %253 = shl nuw nsw i32 %252, 8
  %254 = xor i32 %253, %252
  %255 = and i32 %254, 65535
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3EF0001000000000
  %258 = shl nuw nsw i32 %255, 7
  %259 = xor i32 %258, %254
  %260 = lshr i32 %259, 9
  %261 = and i32 %260, 127
  %262 = and i32 %259, 65535
  %263 = xor i32 %261, %262
  %264 = shl nuw nsw i32 %263, 8
  %265 = and i32 %264, 65280
  %266 = xor i32 %265, %263
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3EF0001000000000
  %269 = shl nuw nsw i32 %266, 7
  %270 = and i32 %269, 65408
  %271 = xor i32 %270, %266
  %272 = lshr i32 %271, 9
  %273 = xor i32 %272, %271
  %274 = shl nuw nsw i32 %273, 8
  %275 = and i32 %274, 65280
  %276 = xor i32 %275, %273
  %277 = fmul fast float %167, %167
  %278 = fmul fast float %169, %169
  %279 = fadd fast float %278, %277
  %280 = fmul fast float %171, %171
  %281 = fadd fast float %279, %280
  %282 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %283 = and i32 %68, 256
  %284 = icmp ne i32 %283, 0
  %285 = select i1 %284, float %257, float %246
  %286 = fmul fast float %217, %246
  %287 = fmul fast float %219, %285
  %288 = fadd fast float %286, %208
  %289 = fadd fast float %287, %210
  %290 = fmul fast float %233, %246
  %291 = fmul fast float %235, %285
  %292 = fsub fast float %225, %288
  %293 = fadd fast float %292, %290
  %294 = fsub fast float %227, %289
  %295 = fadd fast float %294, %291
  %296 = fmul fast float %293, %200
  %297 = fmul fast float %295, %200
  %298 = fadd fast float %296, %288
  %299 = fadd fast float %297, %289
  %300 = and i32 %68, 262144
  %301 = icmp ne i32 %300, 0
  %302 = fmul fast float %299, %282
  %303 = select i1 %301, float %302, float %299
  %304 = fcmp fast ogt float %124, 0.000000e+00
  %305 = fcmp fast ogt float %125, 0.000000e+00
  %306 = or i1 %304, %305
  %307 = call float @dx.op.binary.f32(i32 35, float %303, float %124)  ; FMax(a,b)
  %308 = call float @dx.op.binary.f32(i32 36, float %307, float %125)  ; FMin(a,b)
  %309 = select i1 %306, float %308, float %303
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = fsub fast float -0.000000e+00, %311
  %317 = fsub fast float -0.000000e+00, %313
  %318 = fsub fast float -0.000000e+00, %315
  %319 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %320 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %321 = extractvalue %dx.types.CBufRet.f32 %314, 2
  br i1 %153, label %386, label %322, !dx.controlflow.hints !31

; <label>:322                                     ; preds = %162
  %323 = fmul fast float %165, %56
  %324 = fmul fast float %164, %57
  %325 = fsub fast float %323, %324
  %326 = fmul fast float %163, %57
  %327 = fmul fast float %165, %55
  %328 = fsub fast float %326, %327
  %329 = fmul fast float %164, %55
  %330 = fmul fast float %163, %56
  %331 = fsub fast float %329, %330
  %332 = fmul fast float %325, 2.000000e+00
  %333 = fmul fast float %328, 2.000000e+00
  %334 = fmul fast float %331, 2.000000e+00
  %335 = fmul fast float %332, %58
  %336 = fmul fast float %333, %58
  %337 = fmul fast float %334, %58
  %338 = fmul fast float %334, %56
  %339 = fmul fast float %333, %57
  %340 = fmul fast float %332, %57
  %341 = fmul fast float %334, %55
  %342 = fmul fast float %333, %55
  %343 = fmul fast float %332, %56
  %344 = fadd fast float %163, %60
  %345 = fadd fast float %344, %338
  %346 = fadd fast float %345, %335
  %347 = fsub fast float %346, %339
  %348 = fadd fast float %164, %61
  %349 = fsub fast float %348, %341
  %350 = fadd fast float %349, %336
  %351 = fadd fast float %350, %340
  %352 = fadd fast float %165, %62
  %353 = fadd fast float %352, %337
  %354 = fsub fast float %353, %343
  %355 = fadd fast float %354, %342
  %356 = fmul fast float %171, %56
  %357 = fmul fast float %169, %57
  %358 = fsub fast float %356, %357
  %359 = fmul fast float %167, %57
  %360 = fmul fast float %171, %55
  %361 = fsub fast float %359, %360
  %362 = fmul fast float %169, %55
  %363 = fmul fast float %167, %56
  %364 = fsub fast float %362, %363
  %365 = fmul fast float %358, 2.000000e+00
  %366 = fmul fast float %361, 2.000000e+00
  %367 = fmul fast float %364, 2.000000e+00
  %368 = fmul fast float %365, %58
  %369 = fmul fast float %366, %58
  %370 = fmul fast float %367, %58
  %371 = fmul fast float %367, %56
  %372 = fmul fast float %366, %57
  %373 = fmul fast float %365, %57
  %374 = fmul fast float %367, %55
  %375 = fmul fast float %366, %55
  %376 = fmul fast float %365, %56
  %377 = fadd fast float %371, %167
  %378 = fadd fast float %377, %368
  %379 = fsub fast float %378, %372
  %380 = fsub fast float %169, %374
  %381 = fadd fast float %380, %369
  %382 = fadd fast float %381, %373
  %383 = fadd fast float %370, %171
  %384 = fsub fast float %383, %376
  %385 = fadd fast float %384, %375
  br label %386

; <label>:386                                     ; preds = %322, %162
  %387 = phi float [ %347, %322 ], [ %163, %162 ]
  %388 = phi float [ %351, %322 ], [ %164, %162 ]
  %389 = phi float [ %355, %322 ], [ %165, %162 ]
  %390 = phi float [ %379, %322 ], [ %167, %162 ]
  %391 = phi float [ %382, %322 ], [ %169, %162 ]
  %392 = phi float [ %385, %322 ], [ %171, %162 ]
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = fsub fast float %387, %394
  %398 = fsub fast float %388, %395
  %399 = fsub fast float %389, %396
  %400 = fmul fast float %397, %397
  %401 = fmul fast float %398, %398
  %402 = fadd fast float %400, %401
  %403 = fmul fast float %399, %399
  %404 = fadd fast float %402, %403
  %405 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %406 = and i32 %68, 2097152
  %407 = icmp ne i32 %406, 0
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %410 = select i1 %407, float 1.000000e+00, float %409
  %411 = fmul fast float %410, %405
  %412 = call float @dx.op.binary.f32(i32 35, float %411, float %74)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 36, float %412, float %75)  ; FMin(a,b)
  %414 = fsub fast float %413, %74
  %415 = fmul fast float %80, %70
  %416 = fmul fast float %415, %414
  %417 = fadd fast float %416, %79
  %418 = call float @dx.op.binary.f32(i32 35, float %411, float %75)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 36, float %418, float %76)  ; FMin(a,b)
  %420 = fsub fast float %419, %75
  %421 = fmul fast float %420, %71
  %422 = fsub fast float %81, %417
  %423 = fmul fast float %421, %422
  %424 = fadd fast float %423, %417
  %425 = call float @dx.op.binary.f32(i32 35, float %411, float %76)  ; FMax(a,b)
  %426 = call float @dx.op.binary.f32(i32 36, float %425, float %77)  ; FMin(a,b)
  %427 = fsub fast float %426, %76
  %428 = fmul fast float %427, %72
  %429 = fsub fast float %82, %424
  %430 = fmul fast float %428, %429
  %431 = fadd fast float %430, %424
  %432 = call float @dx.op.binary.f32(i32 35, float %411, float %88)  ; FMax(a,b)
  %433 = call float @dx.op.binary.f32(i32 36, float %432, float %89)  ; FMin(a,b)
  %434 = fsub fast float %433, %88
  %435 = fmul fast float %94, %84
  %436 = fmul fast float %435, %434
  %437 = fadd fast float %436, %93
  %438 = call float @dx.op.binary.f32(i32 35, float %411, float %89)  ; FMax(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %438, float %90)  ; FMin(a,b)
  %440 = fsub fast float %439, %89
  %441 = fmul fast float %440, %85
  %442 = fsub fast float %95, %437
  %443 = fmul fast float %441, %442
  %444 = fadd fast float %443, %437
  %445 = call float @dx.op.binary.f32(i32 35, float %411, float %90)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 36, float %445, float %91)  ; FMin(a,b)
  %447 = fsub fast float %446, %90
  %448 = fmul fast float %447, %86
  %449 = fsub fast float %96, %444
  %450 = fmul fast float %448, %449
  %451 = fsub fast float %444, %431
  %452 = fadd fast float %451, %450
  %453 = fmul fast float %268, %452
  %454 = fadd fast float %453, %431
  %455 = fmul fast float %454, %298
  %456 = fmul fast float %454, %309
  %457 = and i32 %68, 131072
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %495, label %459, !dx.controlflow.hints !32

; <label>:459                                     ; preds = %386
  %460 = call float @dx.op.dot3.f32(i32 55, float %390, float %391, float %392, float %390, float %391, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %461 = call float @dx.op.unary.f32(i32 25, float %460)  ; Rsqrt(value)
  %462 = fmul fast float %461, %390
  %463 = fmul fast float %461, %391
  %464 = fmul fast float %461, %392
  %465 = and i32 %68, 524288
  %466 = icmp ne i32 %465, 0
  %467 = fsub fast float -0.000000e+00, %456
  %468 = select i1 %466, float %467, float %456
  %469 = fmul fast float %462, %468
  %470 = fmul fast float %463, %468
  %471 = fmul fast float %464, %468
  %472 = fadd fast float %469, %387
  %473 = fadd fast float %470, %388
  %474 = fadd fast float %471, %389
  %475 = fsub fast float %472, %394
  %476 = fsub fast float %473, %395
  %477 = fsub fast float %474, %396
  %478 = fsub fast float -0.000000e+00, %475
  %479 = fsub fast float -0.000000e+00, %476
  %480 = fsub fast float -0.000000e+00, %477
  %481 = fmul fast float %463, %480
  %482 = fmul fast float %464, %479
  %483 = fsub fast float %481, %482
  %484 = fmul fast float %464, %478
  %485 = fmul fast float %462, %480
  %486 = fsub fast float %484, %485
  %487 = fmul fast float %462, %479
  %488 = fmul fast float %463, %478
  %489 = fsub fast float %487, %488
  %490 = call float @dx.op.dot3.f32(i32 55, float %483, float %486, float %489, float %483, float %486, float %489)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = call float @dx.op.unary.f32(i32 25, float %490)  ; Rsqrt(value)
  %492 = fmul fast float %483, %491
  %493 = fmul fast float %486, %491
  %494 = fmul fast float %489, %491
  br label %495

; <label>:495                                     ; preds = %459, %386
  %496 = phi float [ %472, %459 ], [ %387, %386 ]
  %497 = phi float [ %473, %459 ], [ %388, %386 ]
  %498 = phi float [ %474, %459 ], [ %389, %386 ]
  %499 = phi float [ %492, %459 ], [ %316, %386 ]
  %500 = phi float [ %493, %459 ], [ %317, %386 ]
  %501 = phi float [ %494, %459 ], [ %318, %386 ]
  %502 = phi float [ %462, %459 ], [ %319, %386 ]
  %503 = phi float [ %463, %459 ], [ %320, %386 ]
  %504 = phi float [ %464, %459 ], [ %321, %386 ]
  %505 = shl nuw nsw i32 %276, 7
  %506 = xor i32 %505, %276
  %507 = lshr i32 %506, 9
  %508 = and i32 %507, 127
  %509 = and i32 %506, 65535
  %510 = xor i32 %508, %509
  %511 = shl nuw nsw i32 %510, 8
  %512 = and i32 %511, 65280
  %513 = xor i32 %512, %510
  %514 = uitofp i32 %513 to float
  %515 = shl nuw nsw i32 %513, 7
  %516 = and i32 %515, 65408
  %517 = xor i32 %516, %513
  %518 = lshr i32 %517, 9
  %519 = xor i32 %518, %517
  %520 = shl nuw nsw i32 %519, 8
  %521 = and i32 %520, 65280
  %522 = xor i32 %521, %519
  %523 = uitofp i32 %522 to float
  %524 = fmul fast float %122, 0x3EF0001000000000
  %525 = fmul fast float %524, %514
  %526 = fadd fast float %525, %120
  %527 = fmul fast float %118, 0x3EF0001000000000
  %528 = fmul fast float %527, %523
  %529 = fmul fast float %187, %174
  %530 = fmul fast float %529, %526
  %531 = fadd fast float %530, %116
  %532 = fadd fast float %531, %528
  %533 = fmul fast float %532, 0x3FC45F3060000000
  %534 = fsub fast float -0.000000e+00, %533
  %535 = fcmp fast oge float %533, %534
  %536 = call float @dx.op.unary.f32(i32 6, float %533)  ; FAbs(value)
  %537 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %538 = fsub fast float -0.000000e+00, %537
  %539 = select i1 %535, float %537, float %538
  %540 = fmul fast float %539, 0x401921FB60000000
  %541 = call float @dx.op.unary.f32(i32 13, float %540)  ; Sin(value)
  %542 = call float @dx.op.unary.f32(i32 12, float %540)  ; Cos(value)
  %543 = fmul fast float %542, %499
  %544 = fmul fast float %542, %500
  %545 = fmul fast float %542, %501
  %546 = fmul fast float %541, %502
  %547 = fmul fast float %541, %503
  %548 = fmul fast float %541, %504
  %549 = fadd fast float %543, %546
  %550 = fadd fast float %544, %547
  %551 = fadd fast float %545, %548
  %552 = fmul fast float %541, %499
  %553 = fmul fast float %541, %500
  %554 = fmul fast float %541, %501
  %555 = fmul fast float %542, %502
  %556 = fmul fast float %542, %503
  %557 = fmul fast float %542, %504
  %558 = fsub fast float %552, %555
  %559 = fsub fast float %553, %556
  %560 = fsub fast float %554, %557
  %561 = fmul fast float %549, %455
  %562 = fmul fast float %550, %455
  %563 = fmul fast float %551, %455
  %564 = fmul fast float %558, %456
  %565 = fmul fast float %559, %456
  %566 = fmul fast float %560, %456
  %567 = shl nuw nsw i32 %522, 7
  %568 = xor i32 %567, %522
  %569 = lshr i32 %568, 9
  %570 = and i32 %569, 127
  %571 = and i32 %568, 65535
  %572 = xor i32 %570, %571
  %573 = shl nuw nsw i32 %572, 8
  %574 = and i32 %573, 65280
  %575 = xor i32 %574, %572
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3EF0001000000000
  %578 = shl nuw nsw i32 %575, 7
  %579 = and i32 %578, 65408
  %580 = xor i32 %579, %575
  %581 = lshr i32 %580, 9
  %582 = xor i32 %581, %580
  %583 = shl nuw nsw i32 %582, 8
  %584 = and i32 %583, 65280
  %585 = xor i32 %584, %582
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3EF0001000000000
  %588 = and i32 %68, 1048576
  %589 = icmp ne i32 %588, 0
  %590 = select i1 %589, float %587, float %577
  %591 = fmul fast float %577, %113
  %592 = fmul fast float %590, %114
  %593 = fadd fast float %110, %591
  %594 = fadd fast float %111, %592
  %595 = fsub fast float -0.000000e+00, %593
  %596 = fmul fast float %561, %595
  %597 = fmul fast float %562, %595
  %598 = fmul fast float %563, %595
  %599 = fsub fast float -0.000000e+00, %594
  %600 = fmul fast float %564, %599
  %601 = fmul fast float %565, %599
  %602 = fmul fast float %566, %599
  %603 = fadd fast float %600, %496
  %604 = fadd fast float %603, %596
  %605 = fadd fast float %601, %497
  %606 = fadd fast float %605, %597
  %607 = fadd fast float %602, %498
  %608 = fadd fast float %607, %598
  %609 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %610 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %612 = call float @dx.op.dot3.f32(i32 55, float %397, float %398, float %399, float %609, float %610, float %611)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 3
  %615 = fcmp fast ole float %612, %614
  %616 = fsub fast float %411, %106
  %617 = fmul fast float %616, %108
  %618 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %619 = fsub fast float 1.000000e+00, %618
  %620 = fsub fast float %411, %102
  %621 = fmul fast float %620, %104
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = fmul fast float %619, %622
  %624 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %625 = fcmp fast ole float %623, %624
  %626 = or i1 %615, %625
  br i1 %626, label %755, label %627, !dx.controlflow.hints !33

; <label>:627                                     ; preds = %495
  %628 = fsub fast float %604, %394
  %629 = fsub fast float %606, %395
  %630 = fsub fast float %608, %396
  %631 = fsub fast float %628, %561
  %632 = fsub fast float %629, %562
  %633 = fsub fast float %630, %563
  %634 = fadd fast float %631, %564
  %635 = fadd fast float %632, %565
  %636 = fadd fast float %633, %566
  %637 = fsub fast float %631, %564
  %638 = fsub fast float %632, %565
  %639 = fsub fast float %633, %566
  %640 = fsub fast float %561, %564
  %641 = fadd fast float %640, %628
  %642 = fsub fast float %562, %565
  %643 = fadd fast float %642, %629
  %644 = fsub fast float %563, %566
  %645 = fadd fast float %644, %630
  %646 = fadd fast float %564, %561
  %647 = fadd fast float %646, %628
  %648 = fadd fast float %565, %562
  %649 = fadd fast float %648, %629
  %650 = fadd fast float %566, %563
  %651 = fadd fast float %650, %630
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %658 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %659 = extractvalue %dx.types.CBufRet.f32 %656, 3
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 3
  %668 = fmul fast float %634, %653
  %669 = call float @dx.op.tertiary.f32(i32 46, float %657, float %635, float %668)  ; FMad(a,b,c)
  %670 = call float @dx.op.tertiary.f32(i32 46, float %661, float %636, float %669)  ; FMad(a,b,c)
  %671 = fadd fast float %670, %665
  %672 = fmul fast float %634, %654
  %673 = call float @dx.op.tertiary.f32(i32 46, float %658, float %635, float %672)  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %662, float %636, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %674, %666
  %676 = fmul fast float %634, %655
  %677 = call float @dx.op.tertiary.f32(i32 46, float %659, float %635, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float %663, float %636, float %677)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %667
  %680 = fdiv fast float %671, %679
  %681 = fdiv fast float %675, %679
  %682 = fmul fast float %653, %637
  %683 = call float @dx.op.tertiary.f32(i32 46, float %657, float %638, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %661, float %639, float %683)  ; FMad(a,b,c)
  %685 = fadd fast float %684, %665
  %686 = fmul fast float %654, %637
  %687 = call float @dx.op.tertiary.f32(i32 46, float %658, float %638, float %686)  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float %662, float %639, float %687)  ; FMad(a,b,c)
  %689 = fadd fast float %688, %666
  %690 = fmul fast float %655, %637
  %691 = call float @dx.op.tertiary.f32(i32 46, float %659, float %638, float %690)  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float %663, float %639, float %691)  ; FMad(a,b,c)
  %693 = fadd fast float %692, %667
  %694 = fdiv fast float %685, %693
  %695 = fdiv fast float %689, %693
  %696 = fmul fast float %653, %641
  %697 = call float @dx.op.tertiary.f32(i32 46, float %657, float %643, float %696)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float %661, float %645, float %697)  ; FMad(a,b,c)
  %699 = fadd fast float %698, %665
  %700 = fmul fast float %654, %641
  %701 = call float @dx.op.tertiary.f32(i32 46, float %658, float %643, float %700)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float %662, float %645, float %701)  ; FMad(a,b,c)
  %703 = fadd fast float %702, %666
  %704 = fmul fast float %655, %641
  %705 = call float @dx.op.tertiary.f32(i32 46, float %659, float %643, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %663, float %645, float %705)  ; FMad(a,b,c)
  %707 = fadd fast float %706, %667
  %708 = fdiv fast float %699, %707
  %709 = fdiv fast float %703, %707
  %710 = fmul fast float %653, %647
  %711 = call float @dx.op.tertiary.f32(i32 46, float %657, float %649, float %710)  ; FMad(a,b,c)
  %712 = call float @dx.op.tertiary.f32(i32 46, float %661, float %651, float %711)  ; FMad(a,b,c)
  %713 = fadd fast float %712, %665
  %714 = fmul fast float %654, %647
  %715 = call float @dx.op.tertiary.f32(i32 46, float %658, float %649, float %714)  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %662, float %651, float %715)  ; FMad(a,b,c)
  %717 = fadd fast float %716, %666
  %718 = fmul fast float %655, %647
  %719 = call float @dx.op.tertiary.f32(i32 46, float %659, float %649, float %718)  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float %663, float %651, float %719)  ; FMad(a,b,c)
  %721 = fadd fast float %720, %667
  %722 = fdiv fast float %713, %721
  %723 = fdiv fast float %717, %721
  %724 = fcmp fast olt float %680, -1.000000e+00
  %725 = fcmp fast olt float %694, -1.000000e+00
  %726 = and i1 %724, %725
  %727 = fcmp fast olt float %708, -1.000000e+00
  %728 = and i1 %726, %727
  %729 = fcmp fast olt float %722, -1.000000e+00
  %730 = and i1 %728, %729
  br i1 %730, label %755, label %731, !dx.controlflow.hints !34

; <label>:731                                     ; preds = %627
  %732 = fcmp fast ogt float %680, 1.000000e+00
  %733 = fcmp fast ogt float %694, 1.000000e+00
  %734 = and i1 %732, %733
  %735 = fcmp fast ogt float %708, 1.000000e+00
  %736 = and i1 %734, %735
  %737 = fcmp fast ogt float %722, 1.000000e+00
  %738 = and i1 %736, %737
  br i1 %738, label %755, label %739, !dx.controlflow.hints !35

; <label>:739                                     ; preds = %731
  %740 = fcmp fast olt float %681, -1.000000e+00
  %741 = fcmp fast olt float %695, -1.000000e+00
  %742 = and i1 %740, %741
  %743 = fcmp fast olt float %709, -1.000000e+00
  %744 = and i1 %742, %743
  %745 = fcmp fast olt float %723, -1.000000e+00
  %746 = and i1 %744, %745
  br i1 %746, label %755, label %747, !dx.controlflow.hints !36

; <label>:747                                     ; preds = %739
  %748 = fcmp fast ogt float %681, 1.000000e+00
  %749 = fcmp fast ogt float %695, 1.000000e+00
  %750 = and i1 %748, %749
  %751 = fcmp fast ogt float %709, 1.000000e+00
  %752 = and i1 %750, %751
  %753 = fcmp fast ogt float %723, 1.000000e+00
  %754 = and i1 %752, %753
  br label %755

; <label>:755                                     ; preds = %747, %739, %731, %627, %495
  %756 = phi i1 [ true, %495 ], [ true, %627 ], [ true, %731 ], [ true, %739 ], [ %754, %747 ]
  br i1 %756, label %785, label %757, !dx.controlflow.hints !37

; <label>:757                                     ; preds = %755
  %758 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 %53, i32 12, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %759 = and i32 %758, 63
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %761, label %768, !dx.controlflow.hints !38

; <label>:761                                     ; preds = %757
  %762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.i32 %762, 0
  %764 = shl i32 %763, 5
  %765 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %764, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %766 = add i32 %51, 512
  %767 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 %766, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %768

; <label>:768                                     ; preds = %761, %757
  %769 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %53, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = fsub fast float %604, %771
  %775 = fsub fast float %606, %772
  %776 = fsub fast float %608, %773
  %777 = call float @dx.op.dot3.f32(i32 55, float %774, float %775, float %776, float %774, float %775, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = fadd fast float %777, 0x3F50624DE0000000
  %779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.i32 %779, 3
  %781 = extractvalue %dx.types.CBufRet.i32 %779, 2
  %782 = mul nsw i32 %781, %780
  %783 = sub nsw i32 %132, %782
  %784 = add i32 %783, %758
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %4, i32 %784, i32 0, float %778, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %784, i32 4, i32 %133, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %785

; <label>:785                                     ; preds = %768, %755, %46
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!26}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !23, null}
!5 = !{!6, !7, !9, !11, !13, !15}
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
!16 = !{!17, !19, !20, !21, !22}
!17 = !{i32 0, %"class.RWStructuredBuffer<FxParticleCounter>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !18}
!18 = !{i32 1, i32 16}
!19 = !{i32 1, %"class.RWStructuredBuffer<FxSortItem>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!20 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!21 = !{i32 3, %"class.RWStructuredBuffer<GfxIndexedIndirectArgs>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !14}
!22 = !{i32 4, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!23 = !{!24, !25}
!24 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!25 = !{i32 1, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!26 = !{void ()* @cs_fx_prepare_sorted_particles, !"cs_fx_prepare_sorted_particles", null, !4, !27}
!27 = !{i32 0, i64 272, i32 4, !28}
!28 = !{i32 64, i32 1, i32 1}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}

