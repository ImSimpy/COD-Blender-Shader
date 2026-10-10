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
; shader hash: 268a7ec03b4a96ba13a9452ed0001358
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
;   [24 x i8] (type annotation not present)
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
;                                       UAV  struct         r/w      U2             u5     1
;                                       UAV  struct         r/w      U3             u1     1
;                                       UAV  struct         r/w      U4             u4     1
;                                       UAV    byte         r/w      U5             u2     1
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
%"class.RWStructuredBuffer<FxAABB>" = type { %struct.FxAABB }
%struct.FxAABB = type { i32, i32, i32, i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_fx_prerender_sorted_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %19 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 0
  %22 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %21, i32 4)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = icmp ugt i32 %23, 1
  br i1 %26, label %27, label %47

; <label>:27                                      ; preds = %0
  br label %28

; <label>:28                                      ; preds = %28, %27
  %29 = phi i32 [ %40, %28 ], [ 0, %27 ]
  %30 = phi i32 [ %41, %28 ], [ 0, %27 ]
  %31 = phi i32 [ %42, %28 ], [ %23, %27 ]
  %32 = sub i32 %31, %29
  %33 = lshr i32 %32, 1
  %34 = add i32 %33, %29
  %35 = add i32 %25, 511
  %36 = add i32 %35, %34
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 0
  %39 = icmp ult i32 %18, %38
  %40 = select i1 %39, i32 %29, i32 %34
  %41 = select i1 %39, i32 %30, i32 %38
  %42 = select i1 %39, i32 %34, i32 %31
  %43 = sub i32 %31, %34
  %44 = select i1 %39, i32 %33, i32 %43
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %28, label %46

; <label>:46                                      ; preds = %28
  br label %47

; <label>:47                                      ; preds = %46, %0
  %48 = phi i32 [ 0, %0 ], [ %40, %46 ]
  %49 = phi i32 [ 0, %0 ], [ %41, %46 ]
  %50 = phi i32 [ %23, %0 ], [ %42, %46 ]
  %51 = icmp eq i32 %48, 0
  %52 = shl i32 %49, 6
  %53 = select i1 %51, i32 0, i32 %52
  %54 = sub i32 %17, %53
  %55 = add i32 %25, -1
  %56 = add i32 %55, %50
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %56, i32 0)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %58, i32 0)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = extractvalue %dx.types.ResRet.f32 %59, 3
  %64 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %58, i32 16)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %58, i32 28)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %58, i32 44)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %58, i32 48)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %58, i32 12)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = icmp ult i32 %54, %75
  br i1 %76, label %77, label %1274, !dx.controlflow.hints !33

; <label>:77                                      ; preds = %47
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = extractvalue %dx.types.ResRet.f32 %80, 1
  %83 = extractvalue %dx.types.ResRet.f32 %80, 2
  %84 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = extractvalue %dx.types.ResRet.f32 %84, 1
  %87 = extractvalue %dx.types.ResRet.f32 %84, 2
  %88 = extractvalue %dx.types.ResRet.f32 %84, 3
  %89 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  %93 = extractvalue %dx.types.ResRet.f32 %89, 3
  %94 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = extractvalue %dx.types.ResRet.f32 %94, 1
  %97 = extractvalue %dx.types.ResRet.f32 %94, 2
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = extractvalue %dx.types.ResRet.f32 %98, 3
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = extractvalue %dx.types.ResRet.f32 %103, 1
  %106 = extractvalue %dx.types.ResRet.f32 %103, 2
  %107 = extractvalue %dx.types.ResRet.f32 %103, 3
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = extractvalue %dx.types.ResRet.f32 %122, 1
  %125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = extractvalue %dx.types.ResRet.f32 %136, 1
  %139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.i32 %139, 3
  %141 = shl i32 %140, 8
  %142 = or i32 %141, 2
  %143 = add i32 %142, %58
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %143, i32 0)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.i32 %139, 2
  %147 = mul nsw i32 %146, %140
  %148 = sub nsw i32 %145, %147
  %149 = add i32 %148, %54
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %149, i32 4)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %151, i32 0)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = extractvalue %dx.types.ResRet.i32 %152, 1
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %151, i32 8)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = extractvalue %dx.types.ResRet.i32 %155, 1
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %151, i32 16)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %153, -2048
  %161 = bitcast i32 %160 to float
  %162 = shl i32 %153, 21
  %163 = lshr i32 %154, 11
  %164 = and i32 %163, 2095104
  %165 = or i32 %164, %162
  %166 = bitcast i32 %165 to float
  %167 = shl i32 %154, 10
  %168 = and i32 %167, -2048
  %169 = bitcast i32 %168 to float
  %170 = and i32 %79, 4194304
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %180, !dx.controlflow.hints !34

; <label>:172                                     ; preds = %77
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = fadd fast float %174, %161
  %178 = fadd fast float %175, %166
  %179 = fadd fast float %176, %169
  br label %180

; <label>:180                                     ; preds = %172, %77
  %181 = phi float [ %161, %77 ], [ %177, %172 ]
  %182 = phi float [ %166, %77 ], [ %178, %172 ]
  %183 = phi float [ %169, %77 ], [ %179, %172 ]
  %184 = lshr i32 %156, 16
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = and i32 %157, 65535
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = lshr i32 %157, 16
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = and i32 %156, 65535
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3EF0001000000000
  %193 = lshr i32 %159, 16
  %194 = shl nuw nsw i32 %193, 7
  %195 = and i32 %194, 65408
  %196 = xor i32 %195, %193
  %197 = lshr i32 %196, 9
  %198 = xor i32 %197, %196
  %199 = shl nuw nsw i32 %198, 8
  %200 = and i32 %199, 65280
  %201 = xor i32 %200, %198
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %111, 0x3EF0001000000000
  %204 = fmul fast float %203, %202
  %205 = fadd fast float %204, %109
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = and i32 %207, 65535
  %209 = lshr i32 %207, 16
  %210 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %211 = uitofp i32 %208 to float
  %212 = fmul fast float %211, %210
  %213 = add nsw i32 %208, -1
  %214 = call float @dx.op.unary.f32(i32 27, float %212)  ; Round_ni(value)
  %215 = fptosi float %214 to i32
  %216 = call i32 @dx.op.binary.i32(i32 38, i32 %215, i32 %213)  ; IMin(a,b)
  %217 = uitofp i32 %216 to float
  %218 = fsub fast float %212, %217
  %219 = shl i32 %216, 1
  %220 = mul i32 %216, 96
  %221 = add i32 %220, %209
  %222 = add i32 %221, 20
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add i32 %221, 24
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = add i32 %221, 28
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = add i32 %221, 32
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = extractvalue %dx.types.ResRet.i32 %232, 1
  %235 = add i32 %221, 40
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = extractvalue %dx.types.ResRet.i32 %236, 1
  %239 = and i32 %233, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %233, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = and i32 %234, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %234, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = and i32 %237, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %237, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = and i32 %238, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %238, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = and i32 %224, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %224, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = and i32 %227, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %227, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = and i32 %230, 65535
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = or i32 %219, 1
  %266 = mul i32 %265, 48
  %267 = add i32 %266, %209
  %268 = add i32 %267, 20
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = add i32 %267, 24
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = add i32 %267, 28
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = add i32 %267, 32
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = extractvalue %dx.types.ResRet.i32 %278, 1
  %281 = add i32 %267, 40
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = extractvalue %dx.types.ResRet.i32 %282, 1
  %285 = and i32 %279, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %279, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = and i32 %280, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %280, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = and i32 %283, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %283, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = and i32 %284, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %284, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = and i32 %270, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %270, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = and i32 %273, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %273, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = and i32 %276, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add nuw nsw i32 %209, 96
  %312 = add i32 %311, %220
  %313 = add i32 %312, 20
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = add i32 %312, 24
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %312, 28
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %312, 32
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = extractvalue %dx.types.ResRet.i32 %323, 1
  %326 = add i32 %312, 40
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = extractvalue %dx.types.ResRet.i32 %327, 1
  %330 = and i32 %324, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %324, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = and i32 %325, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %325, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = and i32 %328, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %328, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = and i32 %329, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %329, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = and i32 %315, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %315, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = and i32 %318, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %318, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = and i32 %321, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add nuw nsw i32 %209, 144
  %357 = add i32 %356, %220
  %358 = add i32 %357, 20
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %357, 24
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = add i32 %357, 28
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = add i32 %357, 32
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = extractvalue %dx.types.ResRet.i32 %368, 1
  %371 = add i32 %357, 40
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = extractvalue %dx.types.ResRet.i32 %372, 1
  %375 = and i32 %369, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %369, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = and i32 %370, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %370, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = and i32 %373, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %373, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %374, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %374, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %360, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %360, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = and i32 %363, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %363, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = and i32 %366, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = shl i32 %159, 7
  %402 = and i32 %401, 65408
  %403 = and i32 %159, 65535
  %404 = xor i32 %402, %403
  %405 = lshr i32 %404, 9
  %406 = xor i32 %405, %404
  %407 = shl nuw nsw i32 %406, 8
  %408 = and i32 %407, 65280
  %409 = xor i32 %408, %406
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3EF0001000000000
  %412 = shl nuw nsw i32 %409, 7
  %413 = and i32 %412, 65408
  %414 = xor i32 %413, %409
  %415 = lshr i32 %414, 9
  %416 = and i32 %415, 65535
  %417 = xor i32 %416, %414
  %418 = shl nuw nsw i32 %417, 8
  %419 = xor i32 %418, %417
  %420 = and i32 %419, 65535
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3EF0001000000000
  %423 = shl nuw nsw i32 %420, 7
  %424 = xor i32 %423, %419
  %425 = lshr i32 %424, 9
  %426 = and i32 %425, 127
  %427 = and i32 %424, 65535
  %428 = xor i32 %426, %427
  %429 = shl nuw nsw i32 %428, 8
  %430 = and i32 %429, 65280
  %431 = xor i32 %430, %428
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3EF0001000000000
  %434 = shl nuw nsw i32 %431, 7
  %435 = and i32 %434, 65408
  %436 = xor i32 %435, %431
  %437 = lshr i32 %436, 9
  %438 = xor i32 %437, %436
  %439 = shl nuw nsw i32 %438, 8
  %440 = and i32 %439, 65280
  %441 = xor i32 %440, %438
  %442 = fmul fast float %185, %185
  %443 = fmul fast float %187, %187
  %444 = fadd fast float %443, %442
  %445 = fmul fast float %189, %189
  %446 = fadd fast float %444, %445
  %447 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %448 = and i32 %79, 256
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %449, float %422, float %411
  %451 = fmul fast float %302, %411
  %452 = fmul fast float %304, %450
  %453 = fadd fast float %451, %256
  %454 = fadd fast float %452, %258
  %455 = fmul fast float %392, %411
  %456 = fmul fast float %394, %450
  %457 = fsub fast float %347, %453
  %458 = fadd fast float %457, %455
  %459 = fsub fast float %349, %454
  %460 = fadd fast float %459, %456
  %461 = fmul fast float %458, %218
  %462 = fmul fast float %460, %218
  %463 = fadd fast float %461, %453
  %464 = fadd fast float %462, %454
  %465 = and i32 %79, 262144
  %466 = icmp ne i32 %465, 0
  %467 = fmul fast float %464, %447
  %468 = select i1 %466, float %467, float %464
  %469 = fcmp fast ogt float %137, 0.000000e+00
  %470 = fcmp fast ogt float %138, 0.000000e+00
  %471 = or i1 %469, %470
  %472 = call float @dx.op.binary.f32(i32 35, float %468, float %137)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float %472, float %138)  ; FMin(a,b)
  %474 = select i1 %471, float %473, float %468
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 0
  %481 = fsub fast float -0.000000e+00, %476
  %482 = fsub fast float -0.000000e+00, %478
  %483 = fsub fast float -0.000000e+00, %480
  %484 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %485 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %486 = extractvalue %dx.types.CBufRet.f32 %479, 1
  %487 = fsub fast float -0.000000e+00, %484
  %488 = fsub fast float -0.000000e+00, %485
  %489 = fsub fast float -0.000000e+00, %486
  %490 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %491 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %492 = extractvalue %dx.types.CBufRet.f32 %479, 2
  br i1 %171, label %557, label %493, !dx.controlflow.hints !35

; <label>:493                                     ; preds = %180
  %494 = fmul fast float %183, %61
  %495 = fmul fast float %182, %62
  %496 = fsub fast float %494, %495
  %497 = fmul fast float %181, %62
  %498 = fmul fast float %183, %60
  %499 = fsub fast float %497, %498
  %500 = fmul fast float %182, %60
  %501 = fmul fast float %181, %61
  %502 = fsub fast float %500, %501
  %503 = fmul fast float %496, 2.000000e+00
  %504 = fmul fast float %499, 2.000000e+00
  %505 = fmul fast float %502, 2.000000e+00
  %506 = fmul fast float %503, %63
  %507 = fmul fast float %504, %63
  %508 = fmul fast float %505, %63
  %509 = fmul fast float %505, %61
  %510 = fmul fast float %504, %62
  %511 = fmul fast float %503, %62
  %512 = fmul fast float %505, %60
  %513 = fmul fast float %504, %60
  %514 = fmul fast float %503, %61
  %515 = fadd fast float %181, %65
  %516 = fadd fast float %515, %509
  %517 = fadd fast float %516, %506
  %518 = fsub fast float %517, %510
  %519 = fadd fast float %182, %66
  %520 = fsub fast float %519, %512
  %521 = fadd fast float %520, %507
  %522 = fadd fast float %521, %511
  %523 = fadd fast float %183, %67
  %524 = fadd fast float %523, %508
  %525 = fsub fast float %524, %514
  %526 = fadd fast float %525, %513
  %527 = fmul fast float %189, %61
  %528 = fmul fast float %187, %62
  %529 = fsub fast float %527, %528
  %530 = fmul fast float %185, %62
  %531 = fmul fast float %189, %60
  %532 = fsub fast float %530, %531
  %533 = fmul fast float %187, %60
  %534 = fmul fast float %185, %61
  %535 = fsub fast float %533, %534
  %536 = fmul fast float %529, 2.000000e+00
  %537 = fmul fast float %532, 2.000000e+00
  %538 = fmul fast float %535, 2.000000e+00
  %539 = fmul fast float %536, %63
  %540 = fmul fast float %537, %63
  %541 = fmul fast float %538, %63
  %542 = fmul fast float %538, %61
  %543 = fmul fast float %537, %62
  %544 = fmul fast float %536, %62
  %545 = fmul fast float %538, %60
  %546 = fmul fast float %537, %60
  %547 = fmul fast float %536, %61
  %548 = fadd fast float %542, %185
  %549 = fadd fast float %548, %539
  %550 = fsub fast float %549, %543
  %551 = fsub fast float %187, %545
  %552 = fadd fast float %551, %540
  %553 = fadd fast float %552, %544
  %554 = fadd fast float %541, %189
  %555 = fsub fast float %554, %547
  %556 = fadd fast float %555, %546
  br label %557

; <label>:557                                     ; preds = %493, %180
  %558 = phi float [ %518, %493 ], [ %181, %180 ]
  %559 = phi float [ %522, %493 ], [ %182, %180 ]
  %560 = phi float [ %526, %493 ], [ %183, %180 ]
  %561 = phi float [ %550, %493 ], [ %185, %180 ]
  %562 = phi float [ %553, %493 ], [ %187, %180 ]
  %563 = phi float [ %556, %493 ], [ %189, %180 ]
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %568 = fsub fast float %558, %565
  %569 = fsub fast float %559, %566
  %570 = fsub fast float %560, %567
  %571 = fmul fast float %568, %568
  %572 = fmul fast float %569, %569
  %573 = fadd fast float %571, %572
  %574 = fmul fast float %570, %570
  %575 = fadd fast float %573, %574
  %576 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %577 = and i32 %79, 2097152
  %578 = icmp ne i32 %577, 0
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %581 = select i1 %578, float 1.000000e+00, float %580
  %582 = fmul fast float %581, %576
  %583 = call float @dx.op.binary.f32(i32 35, float %582, float %85)  ; FMax(a,b)
  %584 = call float @dx.op.binary.f32(i32 36, float %583, float %86)  ; FMin(a,b)
  %585 = fsub fast float %584, %85
  %586 = fmul fast float %91, %81
  %587 = fmul fast float %586, %585
  %588 = fadd fast float %587, %90
  %589 = call float @dx.op.binary.f32(i32 35, float %582, float %86)  ; FMax(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %589, float %87)  ; FMin(a,b)
  %591 = fsub fast float %590, %86
  %592 = fmul fast float %591, %82
  %593 = fsub fast float %92, %588
  %594 = fmul fast float %592, %593
  %595 = fadd fast float %594, %588
  %596 = call float @dx.op.binary.f32(i32 35, float %582, float %87)  ; FMax(a,b)
  %597 = call float @dx.op.binary.f32(i32 36, float %596, float %88)  ; FMin(a,b)
  %598 = fsub fast float %597, %87
  %599 = fmul fast float %598, %83
  %600 = fsub fast float %93, %595
  %601 = fmul fast float %599, %600
  %602 = fadd fast float %601, %595
  %603 = call float @dx.op.binary.f32(i32 35, float %582, float %99)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 36, float %603, float %100)  ; FMin(a,b)
  %605 = fsub fast float %604, %99
  %606 = fmul fast float %105, %95
  %607 = fmul fast float %606, %605
  %608 = fadd fast float %607, %104
  %609 = call float @dx.op.binary.f32(i32 35, float %582, float %100)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float %609, float %101)  ; FMin(a,b)
  %611 = fsub fast float %610, %100
  %612 = fmul fast float %611, %96
  %613 = fsub fast float %106, %608
  %614 = fmul fast float %612, %613
  %615 = fadd fast float %614, %608
  %616 = call float @dx.op.binary.f32(i32 35, float %582, float %101)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %616, float %102)  ; FMin(a,b)
  %618 = fsub fast float %617, %101
  %619 = fmul fast float %618, %97
  %620 = fsub fast float %107, %615
  %621 = fmul fast float %619, %620
  %622 = fsub fast float %615, %602
  %623 = fadd fast float %622, %621
  %624 = fmul fast float %433, %623
  %625 = fadd fast float %624, %602
  %626 = fmul fast float %625, %463
  %627 = fmul fast float %625, %474
  %628 = and i32 %79, 131072
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %675, label %630, !dx.controlflow.hints !36

; <label>:630                                     ; preds = %557
  %631 = call float @dx.op.dot3.f32(i32 55, float %561, float %562, float %563, float %561, float %562, float %563)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.unary.f32(i32 25, float %631)  ; Rsqrt(value)
  %633 = fmul fast float %632, %561
  %634 = fmul fast float %632, %562
  %635 = fmul fast float %632, %563
  %636 = and i32 %79, 524288
  %637 = icmp ne i32 %636, 0
  %638 = fsub fast float -0.000000e+00, %627
  %639 = select i1 %637, float %638, float %627
  %640 = fmul fast float %633, %639
  %641 = fmul fast float %634, %639
  %642 = fmul fast float %635, %639
  %643 = fadd fast float %640, %558
  %644 = fadd fast float %641, %559
  %645 = fadd fast float %642, %560
  %646 = fsub fast float %643, %565
  %647 = fsub fast float %644, %566
  %648 = fsub fast float %645, %567
  %649 = fsub fast float -0.000000e+00, %646
  %650 = fsub fast float -0.000000e+00, %647
  %651 = fsub fast float -0.000000e+00, %648
  %652 = fmul fast float %634, %651
  %653 = fmul fast float %635, %650
  %654 = fsub fast float %652, %653
  %655 = fmul fast float %635, %649
  %656 = fmul fast float %633, %651
  %657 = fsub fast float %655, %656
  %658 = fmul fast float %633, %650
  %659 = fmul fast float %634, %649
  %660 = fsub fast float %658, %659
  %661 = call float @dx.op.dot3.f32(i32 55, float %654, float %657, float %660, float %654, float %657, float %660)  ; Dot3(ax,ay,az,bx,by,bz)
  %662 = call float @dx.op.unary.f32(i32 25, float %661)  ; Rsqrt(value)
  %663 = fmul fast float %654, %662
  %664 = fmul fast float %657, %662
  %665 = fmul fast float %660, %662
  %666 = fmul fast float %664, %635
  %667 = fmul fast float %665, %634
  %668 = fsub fast float %666, %667
  %669 = fmul fast float %665, %633
  %670 = fmul fast float %663, %635
  %671 = fsub fast float %669, %670
  %672 = fmul fast float %663, %634
  %673 = fmul fast float %664, %633
  %674 = fsub fast float %672, %673
  br label %675

; <label>:675                                     ; preds = %630, %557
  %676 = phi float [ %643, %630 ], [ %558, %557 ]
  %677 = phi float [ %644, %630 ], [ %559, %557 ]
  %678 = phi float [ %645, %630 ], [ %560, %557 ]
  %679 = phi float [ %668, %630 ], [ %481, %557 ]
  %680 = phi float [ %671, %630 ], [ %482, %557 ]
  %681 = phi float [ %674, %630 ], [ %483, %557 ]
  %682 = phi float [ %663, %630 ], [ %487, %557 ]
  %683 = phi float [ %664, %630 ], [ %488, %557 ]
  %684 = phi float [ %665, %630 ], [ %489, %557 ]
  %685 = phi float [ %633, %630 ], [ %490, %557 ]
  %686 = phi float [ %634, %630 ], [ %491, %557 ]
  %687 = phi float [ %635, %630 ], [ %492, %557 ]
  %688 = shl nuw nsw i32 %441, 7
  %689 = xor i32 %688, %441
  %690 = lshr i32 %689, 9
  %691 = and i32 %690, 127
  %692 = and i32 %689, 65535
  %693 = xor i32 %691, %692
  %694 = shl nuw nsw i32 %693, 8
  %695 = and i32 %694, 65280
  %696 = xor i32 %695, %693
  %697 = uitofp i32 %696 to float
  %698 = shl nuw nsw i32 %696, 7
  %699 = and i32 %698, 65408
  %700 = xor i32 %699, %696
  %701 = lshr i32 %700, 9
  %702 = xor i32 %701, %700
  %703 = shl nuw nsw i32 %702, 8
  %704 = and i32 %703, 65280
  %705 = xor i32 %704, %702
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %135, 0x3EF0001000000000
  %708 = fmul fast float %707, %697
  %709 = fadd fast float %708, %133
  %710 = fmul fast float %131, 0x3EF0001000000000
  %711 = fmul fast float %710, %706
  %712 = fmul fast float %205, %192
  %713 = fmul fast float %712, %709
  %714 = fadd fast float %713, %129
  %715 = fadd fast float %714, %711
  %716 = fmul fast float %715, 0x3FC45F3060000000
  %717 = fsub fast float -0.000000e+00, %716
  %718 = fcmp fast oge float %716, %717
  %719 = call float @dx.op.unary.f32(i32 6, float %716)  ; FAbs(value)
  %720 = call float @dx.op.unary.f32(i32 22, float %719)  ; Frc(value)
  %721 = fsub fast float -0.000000e+00, %720
  %722 = select i1 %718, float %720, float %721
  %723 = fmul fast float %722, 0x401921FB60000000
  %724 = call float @dx.op.unary.f32(i32 13, float %723)  ; Sin(value)
  %725 = call float @dx.op.unary.f32(i32 12, float %723)  ; Cos(value)
  %726 = fmul fast float %725, %682
  %727 = fmul fast float %725, %683
  %728 = fmul fast float %725, %684
  %729 = fmul fast float %724, %685
  %730 = fmul fast float %724, %686
  %731 = fmul fast float %724, %687
  %732 = fadd fast float %726, %729
  %733 = fadd fast float %727, %730
  %734 = fadd fast float %728, %731
  %735 = fmul fast float %724, %682
  %736 = fmul fast float %724, %683
  %737 = fmul fast float %724, %684
  %738 = fmul fast float %725, %685
  %739 = fmul fast float %725, %686
  %740 = fmul fast float %725, %687
  %741 = fsub fast float %735, %738
  %742 = fsub fast float %736, %739
  %743 = fsub fast float %737, %740
  %744 = shl nuw nsw i32 %705, 7
  %745 = xor i32 %744, %705
  %746 = lshr i32 %745, 9
  %747 = and i32 %746, 127
  %748 = and i32 %745, 65535
  %749 = xor i32 %747, %748
  %750 = shl nuw nsw i32 %749, 8
  %751 = and i32 %750, 65280
  %752 = xor i32 %751, %749
  %753 = uitofp i32 %752 to float
  %754 = fmul fast float %753, 0x3EF0001000000000
  %755 = shl nuw nsw i32 %752, 7
  %756 = and i32 %755, 65408
  %757 = xor i32 %756, %752
  %758 = lshr i32 %757, 9
  %759 = xor i32 %758, %757
  %760 = shl nuw nsw i32 %759, 8
  %761 = and i32 %760, 65280
  %762 = xor i32 %761, %759
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3EF0001000000000
  %765 = and i32 %79, 1048576
  %766 = icmp ne i32 %765, 0
  %767 = select i1 %766, float %764, float %754
  %768 = fmul fast float %754, %126
  %769 = fmul fast float %767, %127
  %770 = fadd fast float %123, %768
  %771 = fadd fast float %124, %769
  %772 = fmul fast float %770, %626
  %773 = fsub fast float -0.000000e+00, %772
  %774 = fmul fast float %732, %773
  %775 = fmul fast float %733, %773
  %776 = fmul fast float %734, %773
  %777 = fmul fast float %771, %627
  %778 = fsub fast float -0.000000e+00, %777
  %779 = fmul fast float %741, %778
  %780 = fmul fast float %742, %778
  %781 = fmul fast float %743, %778
  %782 = fadd fast float %779, %676
  %783 = fadd fast float %782, %774
  %784 = fadd fast float %780, %677
  %785 = fadd fast float %784, %775
  %786 = fadd fast float %781, %678
  %787 = fadd fast float %786, %776
  %788 = fsub fast float %582, %119
  %789 = fmul fast float %788, %121
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = fsub fast float 1.000000e+00, %790
  %792 = fsub fast float %582, %115
  %793 = fmul fast float %792, %117
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = fmul fast float %791, %794
  %796 = shl nuw nsw i32 %762, 7
  %797 = xor i32 %796, %762
  %798 = lshr i32 %797, 9
  %799 = and i32 %798, 127
  %800 = and i32 %797, 65535
  %801 = xor i32 %799, %800
  %802 = shl nuw nsw i32 %801, 8
  %803 = and i32 %802, 65280
  %804 = xor i32 %803, %801
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3EF0001000000000
  %807 = fmul fast float %310, %806
  %808 = fadd fast float %807, %264
  %809 = fmul fast float %400, %806
  %810 = fsub fast float %355, %808
  %811 = fadd fast float %810, %809
  %812 = fmul fast float %811, %218
  %813 = fadd fast float %812, %808
  %814 = shl nuw nsw i32 %804, 7
  %815 = and i32 %814, 65408
  %816 = xor i32 %815, %804
  %817 = lshr i32 %816, 9
  %818 = xor i32 %817, %816
  %819 = shl nuw nsw i32 %818, 8
  %820 = and i32 %819, 65280
  %821 = xor i32 %820, %818
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3EF0001000000000
  %824 = shl nuw nsw i32 %821, 7
  %825 = xor i32 %824, %821
  %826 = lshr i32 %825, 9
  %827 = and i32 %826, 127
  %828 = and i32 %825, 65535
  %829 = xor i32 %827, %828
  %830 = shl nuw nsw i32 %829, 8
  %831 = and i32 %830, 65280
  %832 = xor i32 %831, %829
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3EF0001000000000
  %835 = shl nuw nsw i32 %832, 7
  %836 = and i32 %835, 65408
  %837 = xor i32 %836, %832
  %838 = lshr i32 %837, 9
  %839 = xor i32 %838, %837
  %840 = shl nuw nsw i32 %839, 8
  %841 = and i32 %840, 65280
  %842 = xor i32 %841, %839
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3EF0001000000000
  %845 = shl nuw nsw i32 %842, 7
  %846 = xor i32 %845, %842
  %847 = lshr i32 %846, 9
  %848 = and i32 %847, 127
  %849 = and i32 %846, 65535
  %850 = xor i32 %848, %849
  %851 = shl nuw nsw i32 %850, 8
  %852 = and i32 %851, 65280
  %853 = xor i32 %852, %850
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3EF0001000000000
  %856 = and i32 %79, 128
  %857 = icmp ne i32 %856, 0
  %858 = select i1 %857, float %834, float %823
  %859 = select i1 %857, float %844, float %823
  %860 = select i1 %857, float %855, float %823
  %861 = fmul fast float %294, %823
  %862 = fmul fast float %296, %858
  %863 = fmul fast float %298, %859
  %864 = fmul fast float %300, %860
  %865 = fadd fast float %861, %248
  %866 = fadd fast float %862, %250
  %867 = fadd fast float %863, %252
  %868 = fadd fast float %864, %254
  %869 = fmul fast float %384, %823
  %870 = fmul fast float %386, %858
  %871 = fmul fast float %388, %859
  %872 = fmul fast float %390, %860
  %873 = fsub fast float %339, %865
  %874 = fadd fast float %873, %869
  %875 = fsub fast float %341, %866
  %876 = fadd fast float %875, %870
  %877 = fsub fast float %343, %867
  %878 = fadd fast float %877, %871
  %879 = fsub fast float %345, %868
  %880 = fadd fast float %879, %872
  %881 = fmul fast float %874, %218
  %882 = fmul fast float %876, %218
  %883 = fmul fast float %878, %218
  %884 = fmul fast float %880, %218
  %885 = fadd fast float %881, %865
  %886 = fadd fast float %882, %866
  %887 = fadd fast float %883, %867
  %888 = fadd fast float %884, %868
  %889 = and i32 %79, 8388608
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %891, label %895, !dx.controlflow.hints !37

; <label>:891                                     ; preds = %675
  %892 = fmul fast float %885, %885
  %893 = fmul fast float %886, %886
  %894 = fmul fast float %887, %887
  br label %895

; <label>:895                                     ; preds = %891, %675
  %896 = phi float [ %885, %675 ], [ %892, %891 ]
  %897 = phi float [ %886, %675 ], [ %893, %891 ]
  %898 = phi float [ %887, %675 ], [ %894, %891 ]
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 3
  %901 = shl nuw nsw i32 %853, 7
  %902 = and i32 %901, 65408
  %903 = xor i32 %902, %853
  %904 = lshr i32 %903, 9
  %905 = xor i32 %904, %903
  %906 = shl nuw nsw i32 %905, 8
  %907 = and i32 %906, 65280
  %908 = xor i32 %907, %905
  %909 = uitofp i32 %908 to float
  %910 = fmul fast float %909, 0x3EF0001000000000
  %911 = fmul fast float %306, %910
  %912 = fadd fast float %911, %260
  %913 = fmul fast float %396, %910
  %914 = fsub fast float %351, %912
  %915 = fadd fast float %914, %913
  %916 = fmul fast float %915, %218
  %917 = fadd fast float %916, %912
  %918 = fadd fast float %917, %900
  %919 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %918)  ; FMax(a,b)
  %920 = shl nuw nsw i32 %908, 7
  %921 = xor i32 %920, %908
  %922 = lshr i32 %921, 9
  %923 = and i32 %922, 127
  %924 = and i32 %921, 65535
  %925 = xor i32 %923, %924
  %926 = shl nuw nsw i32 %925, 8
  %927 = and i32 %926, 65280
  %928 = xor i32 %927, %925
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3EF0001000000000
  %931 = shl nuw nsw i32 %928, 7
  %932 = and i32 %931, 65408
  %933 = xor i32 %932, %928
  %934 = lshr i32 %933, 9
  %935 = xor i32 %934, %933
  %936 = shl nuw nsw i32 %935, 8
  %937 = and i32 %936, 65280
  %938 = xor i32 %937, %935
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %939, 0x3EF0001000000000
  %941 = shl nuw nsw i32 %938, 7
  %942 = xor i32 %941, %938
  %943 = lshr i32 %942, 9
  %944 = and i32 %943, 127
  %945 = and i32 %942, 65535
  %946 = xor i32 %944, %945
  %947 = shl nuw nsw i32 %946, 8
  %948 = and i32 %947, 65280
  %949 = xor i32 %948, %946
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3EF0001000000000
  %952 = shl nuw nsw i32 %949, 7
  %953 = and i32 %952, 65408
  %954 = xor i32 %953, %949
  %955 = lshr i32 %954, 9
  %956 = xor i32 %955, %954
  %957 = shl nuw nsw i32 %956, 8
  %958 = and i32 %957, 65280
  %959 = xor i32 %958, %956
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3EF0001000000000
  %962 = and i32 %79, 64
  %963 = icmp ne i32 %962, 0
  %964 = select i1 %963, float %940, float %930
  %965 = select i1 %963, float %951, float %930
  %966 = select i1 %963, float %961, float %930
  %967 = fmul fast float %286, %930
  %968 = fmul fast float %288, %964
  %969 = fmul fast float %290, %965
  %970 = fmul fast float %292, %966
  %971 = fadd fast float %967, %240
  %972 = fadd fast float %968, %242
  %973 = fadd fast float %969, %244
  %974 = fadd fast float %970, %246
  %975 = fmul fast float %376, %930
  %976 = fmul fast float %378, %964
  %977 = fmul fast float %380, %965
  %978 = fmul fast float %382, %966
  %979 = fsub fast float %331, %971
  %980 = fadd fast float %979, %975
  %981 = fsub fast float %333, %972
  %982 = fadd fast float %981, %976
  %983 = fsub fast float %335, %973
  %984 = fadd fast float %983, %977
  %985 = fsub fast float %337, %974
  %986 = fadd fast float %985, %978
  %987 = fmul fast float %980, %218
  %988 = fmul fast float %982, %218
  %989 = fmul fast float %984, %218
  %990 = fmul fast float %986, %218
  %991 = fadd fast float %987, %971
  %992 = fadd fast float %988, %972
  %993 = fadd fast float %989, %973
  %994 = fadd fast float %990, %974
  br i1 %890, label %995, label %999, !dx.controlflow.hints !38

; <label>:995                                     ; preds = %895
  %996 = fmul fast float %991, %991
  %997 = fmul fast float %992, %992
  %998 = fmul fast float %993, %993
  br label %999

; <label>:999                                     ; preds = %995, %895
  %1000 = phi float [ %991, %895 ], [ %996, %995 ]
  %1001 = phi float [ %992, %895 ], [ %997, %995 ]
  %1002 = phi float [ %993, %895 ], [ %998, %995 ]
  %1003 = shl nuw nsw i32 %959, 7
  %1004 = xor i32 %1003, %959
  %1005 = lshr i32 %1004, 9
  %1006 = and i32 %1005, 127
  %1007 = and i32 %1004, 65535
  %1008 = xor i32 %1006, %1007
  %1009 = shl nuw nsw i32 %1008, 8
  %1010 = and i32 %1009, 65280
  %1011 = xor i32 %1010, %1008
  %1012 = uitofp i32 %1011 to float
  %1013 = fmul fast float %1012, 0x3EF0001000000000
  %1014 = fadd fast float %1013, -5.000000e-01
  %1015 = and i32 %79, 32768
  %1016 = icmp ne i32 %1015, 0
  %1017 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1018 = fcmp fast ogt float %1017, 2.500000e-01
  %1019 = zext i1 %1018 to i32
  %1020 = and i32 %79, 8192
  %1021 = select i1 %1016, i32 %1019, i32 %1020
  %1022 = icmp ne i32 %1021, 0
  %1023 = and i32 %79, 65536
  %1024 = icmp ne i32 %1023, 0
  %1025 = fcmp fast ogt float %1014, 0.000000e+00
  %1026 = zext i1 %1025 to i32
  %1027 = and i32 %79, 16384
  %1028 = select i1 %1024, i32 %1026, i32 %1027
  %1029 = icmp ne i32 %1028, 0
  %1030 = zext i1 %1022 to i32
  %1031 = or i32 %1030, 2
  %1032 = select i1 %1029, i32 %1031, i32 %1030
  %1033 = and i32 %69, 65535
  %1034 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %1035 = fmul fast float %1034, 2.550000e+02
  %1036 = fptoui float %1035 to i32
  %1037 = shl nuw nsw i32 %1032, 24
  %1038 = shl i32 %1036, 16
  %1039 = or i32 %1038, %1033
  %1040 = or i32 %1039, %1037
  %1041 = shl nuw nsw i32 %1011, 7
  %1042 = and i32 %1041, 65408
  %1043 = xor i32 %1042, %1011
  %1044 = lshr i32 %1043, 9
  %1045 = xor i32 %1044, %1043
  %1046 = shl nuw nsw i32 %1045, 8
  %1047 = and i32 %1046, 65280
  %1048 = xor i32 %1047, %1045
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3EF0001000000000
  %1051 = shl nuw nsw i32 %1048, 7
  %1052 = xor i32 %1051, %1048
  %1053 = lshr i32 %1052, 9
  %1054 = and i32 %1053, 127
  %1055 = and i32 %1052, 65535
  %1056 = xor i32 %1054, %1055
  %1057 = fmul fast float %308, %1050
  %1058 = fadd fast float %1057, %262
  %1059 = fmul fast float %398, %1050
  %1060 = fsub fast float %353, %1058
  %1061 = fadd fast float %1060, %1059
  %1062 = fmul fast float %1061, %218
  %1063 = fadd fast float %1062, %1058
  %1064 = lshr i32 %113, 16
  %1065 = and i32 %113, 32767
  %1066 = icmp eq i32 %1065, 32767
  br i1 %1066, label %1084, label %1067, !dx.controlflow.hints !39

; <label>:1067                                    ; preds = %999
  %1068 = shl nuw nsw i32 %1056, 8
  %1069 = and i32 %1068, 65280
  %1070 = xor i32 %1069, %1056
  %1071 = uitofp i32 %1070 to float
  %1072 = fmul fast float %1071, 0x3EF0001000000000
  %1073 = fadd fast float %111, %109
  %1074 = fdiv fast float 1.000000e+00, %1073
  %1075 = fmul fast float %1063, %205
  %1076 = fmul fast float %1075, %1074
  %1077 = and i32 %113, 32768
  %1078 = icmp ne i32 %1077, 0
  %1079 = select i1 %1078, float 1.000000e+00, float %1072
  %1080 = uitofp i32 %1065 to float
  %1081 = fmul fast float %1079, %1080
  %1082 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1083 = fadd fast float %1076, %1082
  br label %1084

; <label>:1084                                    ; preds = %1067, %999
  %1085 = phi float [ %1083, %1067 ], [ %1063, %999 ]
  %1086 = icmp eq i32 %1064, 65535
  br i1 %1086, label %1092, label %1087, !dx.controlflow.hints !40

; <label>:1087                                    ; preds = %1084
  %1088 = uitofp i32 %1064 to float
  %1089 = fsub fast float -0.000000e+00, %1088
  %1090 = call float @dx.op.binary.f32(i32 35, float %1085, float %1089)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1090, float %1088)  ; FMin(a,b)
  br label %1092

; <label>:1092                                    ; preds = %1087, %1084
  %1093 = phi float [ %1091, %1087 ], [ %1085, %1084 ]
  %1094 = and i32 %69, -65536
  %1095 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1093)  ; LegacyF32ToF16(value)
  %1096 = and i32 %1095, 65535
  %1097 = or i32 %1096, %1094
  %1098 = fmul fast float %734, %680
  %1099 = fmul fast float %733, %681
  %1100 = fsub fast float %1098, %1099
  %1101 = fmul fast float %732, %681
  %1102 = fmul fast float %734, %679
  %1103 = fsub fast float %1101, %1102
  %1104 = fmul fast float %733, %679
  %1105 = fmul fast float %732, %680
  %1106 = fsub fast float %1104, %1105
  %1107 = fadd fast float %732, %681
  %1108 = fadd fast float %1107, %1103
  %1109 = fcmp fast ogt float %1108, 0.000000e+00
  br i1 %1109, label %1110, label %1121, !dx.controlflow.hints !41

; <label>:1110                                    ; preds = %1092
  %1111 = fadd fast float %1108, 1.000000e+00
  %1112 = fsub fast float %1106, %680
  %1113 = fsub fast float %679, %734
  %1114 = fsub fast float %733, %1100
  %1115 = call float @dx.op.unary.f32(i32 25, float %1111)  ; Rsqrt(value)
  %1116 = fmul fast float %1115, 5.000000e-01
  %1117 = fmul fast float %1116, %1112
  %1118 = fmul fast float %1116, %1113
  %1119 = fmul fast float %1116, %1114
  %1120 = fmul fast float %1116, %1111
  br label %1165

; <label>:1121                                    ; preds = %1092
  %1122 = fcmp fast ogt float %732, %1103
  %1123 = fcmp fast ogt float %732, %681
  %1124 = and i1 %1123, %1122
  br i1 %1124, label %1125, label %1138, !dx.controlflow.hints !42

; <label>:1125                                    ; preds = %1121
  %1126 = fsub fast float 1.000000e+00, %681
  %1127 = fadd fast float %1126, %732
  %1128 = fsub fast float %1127, %1103
  %1129 = fsub fast float %1106, %680
  %1130 = fadd fast float %1100, %733
  %1131 = fadd fast float %734, %679
  %1132 = call float @dx.op.unary.f32(i32 25, float %1128)  ; Rsqrt(value)
  %1133 = fmul fast float %1132, 5.000000e-01
  %1134 = fmul fast float %1133, %1128
  %1135 = fmul fast float %1133, %1130
  %1136 = fmul fast float %1133, %1131
  %1137 = fmul fast float %1133, %1129
  br label %1165

; <label>:1138                                    ; preds = %1121
  %1139 = fcmp fast ogt float %1103, %681
  %1140 = fadd fast float %1106, %680
  br i1 %1139, label %1141, label %1153, !dx.controlflow.hints !43

; <label>:1141                                    ; preds = %1138
  %1142 = fsub fast float 1.000000e+00, %681
  %1143 = fsub fast float %1142, %732
  %1144 = fadd fast float %1143, %1103
  %1145 = fsub fast float %679, %734
  %1146 = fadd fast float %1100, %733
  %1147 = call float @dx.op.unary.f32(i32 25, float %1144)  ; Rsqrt(value)
  %1148 = fmul fast float %1147, 5.000000e-01
  %1149 = fmul fast float %1148, %1146
  %1150 = fmul fast float %1148, %1144
  %1151 = fmul fast float %1148, %1140
  %1152 = fmul fast float %1148, %1145
  br label %1165

; <label>:1153                                    ; preds = %1138
  %1154 = fadd fast float %681, 1.000000e+00
  %1155 = fsub fast float %1154, %732
  %1156 = fsub fast float %1155, %1103
  %1157 = fsub fast float %733, %1100
  %1158 = fadd fast float %734, %679
  %1159 = call float @dx.op.unary.f32(i32 25, float %1156)  ; Rsqrt(value)
  %1160 = fmul fast float %1159, 5.000000e-01
  %1161 = fmul fast float %1160, %1158
  %1162 = fmul fast float %1160, %1140
  %1163 = fmul fast float %1160, %1156
  %1164 = fmul fast float %1160, %1157
  br label %1165

; <label>:1165                                    ; preds = %1153, %1141, %1125, %1110
  %1166 = phi float [ %1117, %1110 ], [ %1134, %1125 ], [ %1149, %1141 ], [ %1161, %1153 ]
  %1167 = phi float [ %1118, %1110 ], [ %1135, %1125 ], [ %1150, %1141 ], [ %1162, %1153 ]
  %1168 = phi float [ %1119, %1110 ], [ %1136, %1125 ], [ %1151, %1141 ], [ %1163, %1153 ]
  %1169 = phi float [ %1120, %1110 ], [ %1137, %1125 ], [ %1152, %1141 ], [ %1164, %1153 ]
  %1170 = call float @dx.op.unary.f32(i32 6, float %1168)  ; FAbs(value)
  %1171 = call float @dx.op.unary.f32(i32 6, float %1166)  ; FAbs(value)
  %1172 = fcmp fast oge float %1170, %1171
  %1173 = call float @dx.op.unary.f32(i32 6, float %1167)  ; FAbs(value)
  %1174 = fcmp fast oge float %1170, %1173
  %1175 = and i1 %1172, %1174
  br i1 %1175, label %1176, label %1179, !dx.controlflow.hints !44

; <label>:1176                                    ; preds = %1165
  %1177 = fcmp fast olt float %1168, 0.000000e+00
  %1178 = select i1 %1177, float 5.000000e+00, float 4.000000e+00
  br label %1187

; <label>:1179                                    ; preds = %1165
  %1180 = fcmp fast ult float %1173, %1171
  br i1 %1180, label %1184, label %1181, !dx.controlflow.hints !45

; <label>:1181                                    ; preds = %1179
  %1182 = fcmp fast olt float %1167, 0.000000e+00
  %1183 = select i1 %1182, float 3.000000e+00, float 2.000000e+00
  br label %1187

; <label>:1184                                    ; preds = %1179
  %1185 = fcmp fast olt float %1166, 0.000000e+00
  %1186 = select i1 %1185, float 1.000000e+00, float 0.000000e+00
  br label %1187

; <label>:1187                                    ; preds = %1184, %1181, %1176
  %1188 = phi float [ %1178, %1176 ], [ %1183, %1181 ], [ %1186, %1184 ]
  %1189 = fmul fast float %1188, 5.000000e-01
  %1190 = fptoui float %1189 to i32
  %1191 = call float @dx.op.unary.f32(i32 6, float %1169)  ; FAbs(value)
  %1192 = call float @dx.op.binary.f32(i32 35, float %1173, float %1170)  ; FMax(a,b)
  %1193 = call float @dx.op.binary.f32(i32 35, float %1171, float %1192)  ; FMax(a,b)
  %1194 = fcmp fast ogt float %1191, %1193
  %1195 = select i1 %1194, i32 3, i32 %1190
  %1196 = icmp eq i32 %1195, 0
  %1197 = select i1 %1196, float %1167, float %1166
  %1198 = select i1 %1196, float %1168, float %1167
  %1199 = select i1 %1196, float %1169, float %1168
  %1200 = select i1 %1196, float %1166, float %1169
  %1201 = icmp eq i32 %1195, 1
  %1202 = select i1 %1201, float %1199, float %1198
  %1203 = select i1 %1201, float %1200, float %1199
  %1204 = select i1 %1201, float %1198, float %1200
  %1205 = icmp eq i32 %1195, 2
  %1206 = select i1 %1205, float %1204, float %1203
  %1207 = select i1 %1205, float %1203, float %1204
  %1208 = fcmp fast ogt float %1207, 0.000000e+00
  %1209 = select i1 %1208, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1210 = fmul fast float %1209, %1197
  %1211 = fmul fast float %1209, %1202
  %1212 = fmul fast float %1209, %1206
  %1213 = fadd fast float %1210, 1.000000e+00
  %1214 = fmul fast float %1213, 5.000000e-01
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = fmul fast float %1215, 1.023000e+03
  %1217 = fptoui float %1216 to i32
  %1218 = fadd fast float %1211, 1.000000e+00
  %1219 = fmul fast float %1218, 5.000000e-01
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fmul fast float %1220, 1.023000e+03
  %1222 = fptoui float %1221 to i32
  %1223 = fadd fast float %1212, 1.000000e+00
  %1224 = fmul fast float %1223, 5.000000e-01
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1225, 5.110000e+02
  %1227 = fptoui float %1226 to i32
  %1228 = shl i32 %1222, 10
  %1229 = shl i32 %1227, 20
  %1230 = shl i32 %1195, 30
  %1231 = or i32 %1230, %1217
  %1232 = or i32 %1231, %1228
  %1233 = or i32 %1232, %1229
  %1234 = fmul fast float %896, %795
  %1235 = fmul fast float %897, %795
  %1236 = fmul fast float %898, %795
  %1237 = fmul fast float %795, %888
  %1238 = fmul fast float %795, %994
  %1239 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1000)  ; LegacyF32ToF16(value)
  %1240 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1001)  ; LegacyF32ToF16(value)
  %1241 = shl i32 %1240, 16
  %1242 = or i32 %1241, %1239
  %1243 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1002)  ; LegacyF32ToF16(value)
  %1244 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1238)  ; LegacyF32ToF16(value)
  %1245 = shl i32 %1244, 16
  %1246 = or i32 %1245, %1243
  %1247 = bitcast i32 %1242 to float
  %1248 = bitcast i32 %1246 to float
  %1249 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1234)  ; LegacyF32ToF16(value)
  %1250 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1235)  ; LegacyF32ToF16(value)
  %1251 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1236)  ; LegacyF32ToF16(value)
  %1252 = lshr i32 %1249, 4
  %1253 = and i32 %1252, 2047
  %1254 = shl i32 %1250, 7
  %1255 = and i32 %1254, 4192256
  %1256 = or i32 %1255, %1253
  %1257 = lshr i32 %1251, 5
  %1258 = shl i32 %1257, 22
  %1259 = or i32 %1256, %1258
  %1260 = bitcast i32 %1259 to float
  %1261 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1237)  ; LegacyF32ToF16(value)
  %1262 = call i32 @dx.op.legacyF32ToF16(i32 130, float %919)  ; LegacyF32ToF16(value)
  %1263 = shl i32 %1262, 16
  %1264 = or i32 %1263, %1261
  %1265 = bitcast i32 %1264 to float
  %1266 = mul i32 %149, 56
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %5, i32 %1266, i32 undef, float %783, float %785, float %787, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1267 = add i32 %1266, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1267, i32 undef, i32 %71, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1268 = add i32 %1266, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %5, i32 %1268, i32 undef, float %626, float %627, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1269 = add i32 %1266, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1269, i32 undef, i32 %1097, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1270 = add i32 %1266, 28
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1270, i32 undef, i32 %1040, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1271 = add i32 %1266, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %5, i32 %1271, i32 undef, float %1247, float %1248, float %1260, float %1265, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1272 = add i32 %1266, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1272, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1273 = add i32 %1266, 52
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1273, i32 undef, i32 %1233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1274

; <label>:1274                                    ; preds = %1187, %47
  %1275 = phi float [ %783, %1187 ], [ 0.000000e+00, %47 ]
  %1276 = phi float [ %785, %1187 ], [ 0.000000e+00, %47 ]
  %1277 = phi float [ %787, %1187 ], [ 0.000000e+00, %47 ]
  %1278 = phi float [ %682, %1187 ], [ 0.000000e+00, %47 ]
  %1279 = phi float [ %683, %1187 ], [ 0.000000e+00, %47 ]
  %1280 = phi float [ %684, %1187 ], [ 0.000000e+00, %47 ]
  %1281 = phi float [ %685, %1187 ], [ 0.000000e+00, %47 ]
  %1282 = phi float [ %686, %1187 ], [ 0.000000e+00, %47 ]
  %1283 = phi float [ %687, %1187 ], [ 0.000000e+00, %47 ]
  %1284 = phi float [ %626, %1187 ], [ 0.000000e+00, %47 ]
  %1285 = phi float [ %627, %1187 ], [ 0.000000e+00, %47 ]
  %1286 = phi float [ %723, %1187 ], [ 0.000000e+00, %47 ]
  %1287 = phi i32 [ %149, %1187 ], [ 0, %47 ]
  %1288 = lshr i32 %73, 16
  %1289 = and i32 %1288, 4095
  %1290 = icmp ugt i32 %1289, 1
  %1291 = xor i1 %76, true
  %1292 = or i1 %1290, %1291
  br i1 %1292, label %1390, label %1293, !dx.controlflow.hints !46

; <label>:1293                                    ; preds = %1274
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = fsub fast float %1275, %1295
  %1299 = fsub fast float %1276, %1296
  %1300 = fsub fast float %1277, %1297
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = call float @dx.op.dot3.f32(i32 55, float %1298, float %1299, float %1300, float %1302, float %1304, float %1306)  ; Dot3(ax,ay,az,bx,by,bz)
  %1308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1309 = extractvalue %dx.types.CBufRet.f32 %1308, 1
  %1310 = fmul fast float %1309, %1307
  %1311 = call float @dx.op.binary.f32(i32 35, float %1284, float %1285)  ; FMax(a,b)
  %1312 = fdiv fast float 1.000000e+00, %1310
  %1313 = fmul fast float %1312, %1311
  %1314 = extractvalue %dx.types.CBufRet.f32 %1308, 2
  %1315 = fmul fast float %1313, %1314
  %1316 = fptosi float %1315 to i32
  %1317 = icmp sgt i32 %1316, 0
  br i1 %1317, label %1318, label %1326, !dx.controlflow.hints !47

; <label>:1318                                    ; preds = %1293
  %1319 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1316)  ; FirstbitHi(value)
  %1320 = sub i32 31, %1319
  %1321 = icmp eq i32 %1319, -1
  %1322 = select i1 %1321, i32 -1, i32 %1320
  %1323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.i32 %1323, 0
  %1325 = call i32 @dx.op.binary.i32(i32 40, i32 %1322, i32 %1324)  ; UMin(a,b)
  br label %1326

; <label>:1326                                    ; preds = %1318, %1293
  %1327 = phi i32 [ %1325, %1318 ], [ 0, %1293 ]
  %1328 = mul nuw nsw i32 %1289, 6
  %1329 = add i32 %1327, %1328
  %1330 = add i32 %1329, 17
  %1331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 %1330)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.i32 %1331, 0
  %1333 = extractvalue %dx.types.CBufRet.i32 %1331, 2
  %1334 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1329, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1335 = add i32 %1332, -1
  %1336 = call i32 @dx.op.binary.i32(i32 40, i32 %1334, i32 %1335)  ; UMin(a,b)
  %1337 = and i32 %73, -268435456
  %1338 = or i32 %1287, %1337
  %1339 = bitcast float %1275 to i32
  %1340 = bitcast float %1276 to i32
  %1341 = bitcast float %1277 to i32
  %1342 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1284)  ; LegacyF32ToF16(value)
  %1343 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1285)  ; LegacyF32ToF16(value)
  %1344 = shl i32 %1343, 16
  %1345 = or i32 %1344, %1342
  %1346 = fadd fast float %1278, 1.000000e+00
  %1347 = fadd fast float %1279, 1.000000e+00
  %1348 = fadd fast float %1280, 1.000000e+00
  %1349 = fmul fast float %1346, 5.000000e-01
  %1350 = fmul fast float %1347, 5.000000e-01
  %1351 = fmul fast float %1348, 5.000000e-01
  %1352 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1353 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1354 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1355 = fmul fast float %1352, 1.023000e+03
  %1356 = fmul fast float %1353, 1.023000e+03
  %1357 = fmul fast float %1354, 1.023000e+03
  %1358 = fptoui float %1355 to i32
  %1359 = fptoui float %1356 to i32
  %1360 = fptoui float %1357 to i32
  %1361 = shl i32 %1359, 10
  %1362 = or i32 %1361, %1358
  %1363 = shl i32 %1360, 20
  %1364 = or i32 %1362, %1363
  %1365 = fadd fast float %1281, 1.000000e+00
  %1366 = fadd fast float %1282, 1.000000e+00
  %1367 = fadd fast float %1283, 1.000000e+00
  %1368 = fmul fast float %1365, 5.000000e-01
  %1369 = fmul fast float %1366, 5.000000e-01
  %1370 = fmul fast float %1367, 5.000000e-01
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1374 = fmul fast float %1371, 1.023000e+03
  %1375 = fmul fast float %1372, 1.023000e+03
  %1376 = fmul fast float %1373, 1.023000e+03
  %1377 = fptoui float %1374 to i32
  %1378 = fptoui float %1375 to i32
  %1379 = fptoui float %1376 to i32
  %1380 = shl i32 %1378, 10
  %1381 = or i32 %1380, %1377
  %1382 = shl i32 %1379, 20
  %1383 = or i32 %1381, %1382
  %1384 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1286)  ; LegacyF32ToF16(value)
  %1385 = shl i32 %73, 16
  %1386 = or i32 %1384, %1385
  %1387 = add i32 %1336, %1333
  %1388 = shl i32 %1387, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1388, i32 undef, i32 %1339, i32 %1340, i32 %1341, i32 %1338, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1389 = or i32 %1388, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1389, i32 undef, i32 %1345, i32 %1364, i32 %1383, i32 %1386, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1387, i32 0, i32 %56, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1390

; <label>:1390                                    ; preds = %1326, %1274
  %1391 = phi i1 [ true, %1274 ], [ %1292, %1326 ]
  br i1 %1391, label %1415, label %1392, !dx.controlflow.hints !48

; <label>:1392                                    ; preds = %1390
  %1393 = call float @dx.op.binary.f32(i32 35, float %1284, float %1285)  ; FMax(a,b)
  %1394 = fadd fast float %1275, 1.310720e+05
  %1395 = fsub fast float %1394, %1393
  %1396 = fadd fast float %1276, 1.310720e+05
  %1397 = fsub fast float %1396, %1393
  %1398 = fadd fast float %1277, 1.310720e+05
  %1399 = fsub fast float %1398, %1393
  %1400 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1395)  ; FMax(a,b)
  %1401 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1397)  ; FMax(a,b)
  %1402 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1399)  ; FMax(a,b)
  %1403 = bitcast float %1400 to i32
  %1404 = bitcast float %1401 to i32
  %1405 = bitcast float %1402 to i32
  %1406 = fadd fast float %1394, %1393
  %1407 = fadd fast float %1396, %1393
  %1408 = fadd fast float %1398, %1393
  %1409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1406)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1407)  ; FMax(a,b)
  %1411 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1408)  ; FMax(a,b)
  %1412 = bitcast float %1409 to i32
  %1413 = bitcast float %1410 to i32
  %1414 = bitcast float %1411 to i32
  br label %1415

; <label>:1415                                    ; preds = %1392, %1390
  %1416 = phi i32 [ %1403, %1392 ], [ -1, %1390 ]
  %1417 = phi i32 [ %1404, %1392 ], [ -1, %1390 ]
  %1418 = phi i32 [ %1405, %1392 ], [ -1, %1390 ]
  %1419 = phi i32 [ %1412, %1392 ], [ 0, %1390 ]
  %1420 = phi i32 [ %1413, %1392 ], [ 0, %1390 ]
  %1421 = phi i32 [ %1414, %1392 ], [ 0, %1390 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1422 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %19
  store i32 %1416, i32 addrspace(3)* %1422, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1423 = and i32 %19, 63
  %1424 = icmp ult i32 %1423, 32
  br i1 %1424, label %1425, label %1431, !dx.controlflow.hints !53

; <label>:1425                                    ; preds = %1415
  %1426 = add i32 %19, 32
  %1427 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1426
  %1428 = load i32, i32 addrspace(3)* %1427, align 4, !tbaa !49
  %1429 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1430 = call i32 @dx.op.binary.i32(i32 40, i32 %1429, i32 %1428)  ; UMin(a,b)
  store i32 %1430, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1431

; <label>:1431                                    ; preds = %1425, %1415
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1432 = icmp ult i32 %1423, 16
  br i1 %1432, label %1433, label %1439, !dx.controlflow.hints !54

; <label>:1433                                    ; preds = %1431
  %1434 = add i32 %19, 16
  %1435 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1434
  %1436 = load i32, i32 addrspace(3)* %1435, align 4, !tbaa !49
  %1437 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1438 = call i32 @dx.op.binary.i32(i32 40, i32 %1437, i32 %1436)  ; UMin(a,b)
  store i32 %1438, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1439

; <label>:1439                                    ; preds = %1433, %1431
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1440 = icmp ult i32 %1423, 8
  br i1 %1440, label %1441, label %1447, !dx.controlflow.hints !55

; <label>:1441                                    ; preds = %1439
  %1442 = add i32 %19, 8
  %1443 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1442
  %1444 = load i32, i32 addrspace(3)* %1443, align 4, !tbaa !49
  %1445 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1446 = call i32 @dx.op.binary.i32(i32 40, i32 %1445, i32 %1444)  ; UMin(a,b)
  store i32 %1446, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1447

; <label>:1447                                    ; preds = %1441, %1439
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1448 = icmp ult i32 %1423, 4
  br i1 %1448, label %1449, label %1455, !dx.controlflow.hints !56

; <label>:1449                                    ; preds = %1447
  %1450 = add i32 %19, 4
  %1451 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1450
  %1452 = load i32, i32 addrspace(3)* %1451, align 4, !tbaa !49
  %1453 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1454 = call i32 @dx.op.binary.i32(i32 40, i32 %1453, i32 %1452)  ; UMin(a,b)
  store i32 %1454, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1455

; <label>:1455                                    ; preds = %1449, %1447
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1456 = icmp ult i32 %1423, 2
  br i1 %1456, label %1457, label %1463, !dx.controlflow.hints !57

; <label>:1457                                    ; preds = %1455
  %1458 = add i32 %19, 2
  %1459 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1458
  %1460 = load i32, i32 addrspace(3)* %1459, align 4, !tbaa !49
  %1461 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1462 = call i32 @dx.op.binary.i32(i32 40, i32 %1461, i32 %1460)  ; UMin(a,b)
  store i32 %1462, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1463

; <label>:1463                                    ; preds = %1457, %1455
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1464 = icmp eq i32 %1423, 0
  br i1 %1464, label %1465, label %1471, !dx.controlflow.hints !58

; <label>:1465                                    ; preds = %1463
  %1466 = add i32 %19, 1
  %1467 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1466
  %1468 = load i32, i32 addrspace(3)* %1467, align 4, !tbaa !49
  %1469 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1470 = call i32 @dx.op.binary.i32(i32 40, i32 %1469, i32 %1468)  ; UMin(a,b)
  store i32 %1470, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1471

; <label>:1471                                    ; preds = %1465, %1463
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1472 = and i32 %19, -64
  %1473 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1472
  %1474 = load i32, i32 addrspace(3)* %1473, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1417, i32 addrspace(3)* %1422, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1424, label %1475, label %1481, !dx.controlflow.hints !53

; <label>:1475                                    ; preds = %1471
  %1476 = add i32 %19, 32
  %1477 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1476
  %1478 = load i32, i32 addrspace(3)* %1477, align 4, !tbaa !49
  %1479 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1480 = call i32 @dx.op.binary.i32(i32 40, i32 %1479, i32 %1478)  ; UMin(a,b)
  store i32 %1480, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1481

; <label>:1481                                    ; preds = %1475, %1471
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1482, label %1488, !dx.controlflow.hints !54

; <label>:1482                                    ; preds = %1481
  %1483 = add i32 %19, 16
  %1484 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1483
  %1485 = load i32, i32 addrspace(3)* %1484, align 4, !tbaa !49
  %1486 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1487 = call i32 @dx.op.binary.i32(i32 40, i32 %1486, i32 %1485)  ; UMin(a,b)
  store i32 %1487, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1488

; <label>:1488                                    ; preds = %1482, %1481
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1440, label %1489, label %1495, !dx.controlflow.hints !55

; <label>:1489                                    ; preds = %1488
  %1490 = add i32 %19, 8
  %1491 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1490
  %1492 = load i32, i32 addrspace(3)* %1491, align 4, !tbaa !49
  %1493 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1494 = call i32 @dx.op.binary.i32(i32 40, i32 %1493, i32 %1492)  ; UMin(a,b)
  store i32 %1494, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1495

; <label>:1495                                    ; preds = %1489, %1488
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1448, label %1496, label %1502, !dx.controlflow.hints !56

; <label>:1496                                    ; preds = %1495
  %1497 = add i32 %19, 4
  %1498 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1497
  %1499 = load i32, i32 addrspace(3)* %1498, align 4, !tbaa !49
  %1500 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1501 = call i32 @dx.op.binary.i32(i32 40, i32 %1500, i32 %1499)  ; UMin(a,b)
  store i32 %1501, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1502

; <label>:1502                                    ; preds = %1496, %1495
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1456, label %1503, label %1509, !dx.controlflow.hints !57

; <label>:1503                                    ; preds = %1502
  %1504 = add i32 %19, 2
  %1505 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1504
  %1506 = load i32, i32 addrspace(3)* %1505, align 4, !tbaa !49
  %1507 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1508 = call i32 @dx.op.binary.i32(i32 40, i32 %1507, i32 %1506)  ; UMin(a,b)
  store i32 %1508, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1509

; <label>:1509                                    ; preds = %1503, %1502
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1464, label %1510, label %1516, !dx.controlflow.hints !58

; <label>:1510                                    ; preds = %1509
  %1511 = add i32 %19, 1
  %1512 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1511
  %1513 = load i32, i32 addrspace(3)* %1512, align 4, !tbaa !49
  %1514 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1515 = call i32 @dx.op.binary.i32(i32 40, i32 %1514, i32 %1513)  ; UMin(a,b)
  store i32 %1515, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1516

; <label>:1516                                    ; preds = %1510, %1509
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1517 = load i32, i32 addrspace(3)* %1473, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1418, i32 addrspace(3)* %1422, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1424, label %1518, label %1524, !dx.controlflow.hints !53

; <label>:1518                                    ; preds = %1516
  %1519 = add i32 %19, 32
  %1520 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1519
  %1521 = load i32, i32 addrspace(3)* %1520, align 4, !tbaa !49
  %1522 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1523 = call i32 @dx.op.binary.i32(i32 40, i32 %1522, i32 %1521)  ; UMin(a,b)
  store i32 %1523, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1524

; <label>:1524                                    ; preds = %1518, %1516
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1525, label %1531, !dx.controlflow.hints !54

; <label>:1525                                    ; preds = %1524
  %1526 = add i32 %19, 16
  %1527 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1526
  %1528 = load i32, i32 addrspace(3)* %1527, align 4, !tbaa !49
  %1529 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1530 = call i32 @dx.op.binary.i32(i32 40, i32 %1529, i32 %1528)  ; UMin(a,b)
  store i32 %1530, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1531

; <label>:1531                                    ; preds = %1525, %1524
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1440, label %1532, label %1538, !dx.controlflow.hints !55

; <label>:1532                                    ; preds = %1531
  %1533 = add i32 %19, 8
  %1534 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1533
  %1535 = load i32, i32 addrspace(3)* %1534, align 4, !tbaa !49
  %1536 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1537 = call i32 @dx.op.binary.i32(i32 40, i32 %1536, i32 %1535)  ; UMin(a,b)
  store i32 %1537, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1538

; <label>:1538                                    ; preds = %1532, %1531
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1448, label %1539, label %1545, !dx.controlflow.hints !56

; <label>:1539                                    ; preds = %1538
  %1540 = add i32 %19, 4
  %1541 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1540
  %1542 = load i32, i32 addrspace(3)* %1541, align 4, !tbaa !49
  %1543 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1544 = call i32 @dx.op.binary.i32(i32 40, i32 %1543, i32 %1542)  ; UMin(a,b)
  store i32 %1544, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1545

; <label>:1545                                    ; preds = %1539, %1538
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1456, label %1546, label %1552, !dx.controlflow.hints !57

; <label>:1546                                    ; preds = %1545
  %1547 = add i32 %19, 2
  %1548 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1547
  %1549 = load i32, i32 addrspace(3)* %1548, align 4, !tbaa !49
  %1550 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1551 = call i32 @dx.op.binary.i32(i32 40, i32 %1550, i32 %1549)  ; UMin(a,b)
  store i32 %1551, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1552

; <label>:1552                                    ; preds = %1546, %1545
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1464, label %1553, label %1559, !dx.controlflow.hints !58

; <label>:1553                                    ; preds = %1552
  %1554 = add i32 %19, 1
  %1555 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1554
  %1556 = load i32, i32 addrspace(3)* %1555, align 4, !tbaa !49
  %1557 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1558 = call i32 @dx.op.binary.i32(i32 40, i32 %1557, i32 %1556)  ; UMin(a,b)
  store i32 %1558, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1559

; <label>:1559                                    ; preds = %1553, %1552
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1560 = icmp eq i32 %19, 0
  br i1 %1560, label %1561, label %1566, !dx.controlflow.hints !59

; <label>:1561                                    ; preds = %1559
  %1562 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !49
  %1563 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %56, i32 0, i32 undef, i32 %1474)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1564 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %56, i32 4, i32 undef, i32 %1517)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1565 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %56, i32 8, i32 undef, i32 %1562)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1566

; <label>:1566                                    ; preds = %1561, %1559
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1419, i32 addrspace(3)* %1422, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1424, label %1567, label %1573, !dx.controlflow.hints !60

; <label>:1567                                    ; preds = %1566
  %1568 = add i32 %19, 32
  %1569 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1568
  %1570 = load i32, i32 addrspace(3)* %1569, align 4, !tbaa !49
  %1571 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1572 = call i32 @dx.op.binary.i32(i32 39, i32 %1571, i32 %1570)  ; UMax(a,b)
  store i32 %1572, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1573

; <label>:1573                                    ; preds = %1567, %1566
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1574, label %1580, !dx.controlflow.hints !61

; <label>:1574                                    ; preds = %1573
  %1575 = add i32 %19, 16
  %1576 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1575
  %1577 = load i32, i32 addrspace(3)* %1576, align 4, !tbaa !49
  %1578 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1579 = call i32 @dx.op.binary.i32(i32 39, i32 %1578, i32 %1577)  ; UMax(a,b)
  store i32 %1579, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1580

; <label>:1580                                    ; preds = %1574, %1573
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1440, label %1581, label %1587, !dx.controlflow.hints !62

; <label>:1581                                    ; preds = %1580
  %1582 = add i32 %19, 8
  %1583 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1582
  %1584 = load i32, i32 addrspace(3)* %1583, align 4, !tbaa !49
  %1585 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1586 = call i32 @dx.op.binary.i32(i32 39, i32 %1585, i32 %1584)  ; UMax(a,b)
  store i32 %1586, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1587

; <label>:1587                                    ; preds = %1581, %1580
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1448, label %1588, label %1594, !dx.controlflow.hints !63

; <label>:1588                                    ; preds = %1587
  %1589 = add i32 %19, 4
  %1590 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1589
  %1591 = load i32, i32 addrspace(3)* %1590, align 4, !tbaa !49
  %1592 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1593 = call i32 @dx.op.binary.i32(i32 39, i32 %1592, i32 %1591)  ; UMax(a,b)
  store i32 %1593, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1594

; <label>:1594                                    ; preds = %1588, %1587
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1456, label %1595, label %1601, !dx.controlflow.hints !64

; <label>:1595                                    ; preds = %1594
  %1596 = add i32 %19, 2
  %1597 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1596
  %1598 = load i32, i32 addrspace(3)* %1597, align 4, !tbaa !49
  %1599 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1600 = call i32 @dx.op.binary.i32(i32 39, i32 %1599, i32 %1598)  ; UMax(a,b)
  store i32 %1600, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1601

; <label>:1601                                    ; preds = %1595, %1594
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1464, label %1602, label %1608, !dx.controlflow.hints !65

; <label>:1602                                    ; preds = %1601
  %1603 = add i32 %19, 1
  %1604 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1603
  %1605 = load i32, i32 addrspace(3)* %1604, align 4, !tbaa !49
  %1606 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1607 = call i32 @dx.op.binary.i32(i32 39, i32 %1606, i32 %1605)  ; UMax(a,b)
  store i32 %1607, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1608

; <label>:1608                                    ; preds = %1602, %1601
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1609 = load i32, i32 addrspace(3)* %1473, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1420, i32 addrspace(3)* %1422, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1424, label %1610, label %1616, !dx.controlflow.hints !60

; <label>:1610                                    ; preds = %1608
  %1611 = add i32 %19, 32
  %1612 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1611
  %1613 = load i32, i32 addrspace(3)* %1612, align 4, !tbaa !49
  %1614 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1615 = call i32 @dx.op.binary.i32(i32 39, i32 %1614, i32 %1613)  ; UMax(a,b)
  store i32 %1615, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1616

; <label>:1616                                    ; preds = %1610, %1608
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1617, label %1623, !dx.controlflow.hints !61

; <label>:1617                                    ; preds = %1616
  %1618 = add i32 %19, 16
  %1619 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1618
  %1620 = load i32, i32 addrspace(3)* %1619, align 4, !tbaa !49
  %1621 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1622 = call i32 @dx.op.binary.i32(i32 39, i32 %1621, i32 %1620)  ; UMax(a,b)
  store i32 %1622, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1623

; <label>:1623                                    ; preds = %1617, %1616
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1440, label %1624, label %1630, !dx.controlflow.hints !62

; <label>:1624                                    ; preds = %1623
  %1625 = add i32 %19, 8
  %1626 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1625
  %1627 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !49
  %1628 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1629 = call i32 @dx.op.binary.i32(i32 39, i32 %1628, i32 %1627)  ; UMax(a,b)
  store i32 %1629, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1630

; <label>:1630                                    ; preds = %1624, %1623
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1448, label %1631, label %1637, !dx.controlflow.hints !63

; <label>:1631                                    ; preds = %1630
  %1632 = add i32 %19, 4
  %1633 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1632
  %1634 = load i32, i32 addrspace(3)* %1633, align 4, !tbaa !49
  %1635 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1636 = call i32 @dx.op.binary.i32(i32 39, i32 %1635, i32 %1634)  ; UMax(a,b)
  store i32 %1636, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1637

; <label>:1637                                    ; preds = %1631, %1630
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1456, label %1638, label %1644, !dx.controlflow.hints !64

; <label>:1638                                    ; preds = %1637
  %1639 = add i32 %19, 2
  %1640 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1639
  %1641 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !49
  %1642 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1643 = call i32 @dx.op.binary.i32(i32 39, i32 %1642, i32 %1641)  ; UMax(a,b)
  store i32 %1643, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1644

; <label>:1644                                    ; preds = %1638, %1637
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1464, label %1645, label %1651, !dx.controlflow.hints !65

; <label>:1645                                    ; preds = %1644
  %1646 = add i32 %19, 1
  %1647 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1646
  %1648 = load i32, i32 addrspace(3)* %1647, align 4, !tbaa !49
  %1649 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1650 = call i32 @dx.op.binary.i32(i32 39, i32 %1649, i32 %1648)  ; UMax(a,b)
  store i32 %1650, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1651

; <label>:1651                                    ; preds = %1645, %1644
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1652 = load i32, i32 addrspace(3)* %1473, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1421, i32 addrspace(3)* %1422, align 4, !tbaa !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1424, label %1653, label %1659, !dx.controlflow.hints !60

; <label>:1653                                    ; preds = %1651
  %1654 = add i32 %19, 32
  %1655 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1654
  %1656 = load i32, i32 addrspace(3)* %1655, align 4, !tbaa !49
  %1657 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1658 = call i32 @dx.op.binary.i32(i32 39, i32 %1657, i32 %1656)  ; UMax(a,b)
  store i32 %1658, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1659

; <label>:1659                                    ; preds = %1653, %1651
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1432, label %1660, label %1666, !dx.controlflow.hints !61

; <label>:1660                                    ; preds = %1659
  %1661 = add i32 %19, 16
  %1662 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1661
  %1663 = load i32, i32 addrspace(3)* %1662, align 4, !tbaa !49
  %1664 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1665 = call i32 @dx.op.binary.i32(i32 39, i32 %1664, i32 %1663)  ; UMax(a,b)
  store i32 %1665, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1666

; <label>:1666                                    ; preds = %1660, %1659
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1440, label %1667, label %1673, !dx.controlflow.hints !62

; <label>:1667                                    ; preds = %1666
  %1668 = add i32 %19, 8
  %1669 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1668
  %1670 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !49
  %1671 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1672 = call i32 @dx.op.binary.i32(i32 39, i32 %1671, i32 %1670)  ; UMax(a,b)
  store i32 %1672, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1673

; <label>:1673                                    ; preds = %1667, %1666
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1448, label %1674, label %1680, !dx.controlflow.hints !63

; <label>:1674                                    ; preds = %1673
  %1675 = add i32 %19, 4
  %1676 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1675
  %1677 = load i32, i32 addrspace(3)* %1676, align 4, !tbaa !49
  %1678 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1679 = call i32 @dx.op.binary.i32(i32 39, i32 %1678, i32 %1677)  ; UMax(a,b)
  store i32 %1679, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1680

; <label>:1680                                    ; preds = %1674, %1673
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1456, label %1681, label %1687, !dx.controlflow.hints !64

; <label>:1681                                    ; preds = %1680
  %1682 = add i32 %19, 2
  %1683 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1682
  %1684 = load i32, i32 addrspace(3)* %1683, align 4, !tbaa !49
  %1685 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1686 = call i32 @dx.op.binary.i32(i32 39, i32 %1685, i32 %1684)  ; UMax(a,b)
  store i32 %1686, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1687

; <label>:1687                                    ; preds = %1681, %1680
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1464, label %1688, label %1694, !dx.controlflow.hints !65

; <label>:1688                                    ; preds = %1687
  %1689 = add i32 %19, 1
  %1690 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1689
  %1691 = load i32, i32 addrspace(3)* %1690, align 4, !tbaa !49
  %1692 = load i32, i32 addrspace(3)* %1422, align 4, !tbaa !49
  %1693 = call i32 @dx.op.binary.i32(i32 39, i32 %1692, i32 %1691)  ; UMax(a,b)
  store i32 %1693, i32 addrspace(3)* %1422, align 4, !tbaa !49
  br label %1694

; <label>:1694                                    ; preds = %1688, %1687
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1560, label %1695, label %1700, !dx.controlflow.hints !66

; <label>:1695                                    ; preds = %1694
  %1696 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !49
  %1697 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %56, i32 12, i32 undef, i32 %1609)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1698 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %56, i32 16, i32 undef, i32 %1652)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1699 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %56, i32 20, i32 undef, i32 %1696)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1700

; <label>:1700                                    ; preds = %1695, %1694
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

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

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!30}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !27, null}
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
!19 = !{!20, !21, !22, !24, !25, !26}
!20 = !{i32 0, %"class.RWStructuredBuffer<FxSortItem>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 2, %"class.RWStructuredBuffer<FxAABB>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!23 = !{i32 1, i32 24}
!24 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!25 = !{i32 4, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!26 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!29 = !{i32 1, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!30 = !{void ()* @cs_fx_prerender_sorted_particles, !"cs_fx_prerender_sorted_particles", null, !4, !31}
!31 = !{i32 0, i64 272, i32 4, !32}
!32 = !{i32 64, i32 1, i32 1}
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
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
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

