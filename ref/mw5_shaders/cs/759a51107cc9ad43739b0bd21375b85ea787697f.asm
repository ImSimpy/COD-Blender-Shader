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
; shader hash: 1de691b03f3ac12053ca48830b18cbc2
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
;                                       UAV  struct         r/w      U0             u3     1
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
%"class.RWStructuredBuffer<GfxIndexedIndirectArgs>" = type { %struct.GfxIndexedIndirectArgs }
%struct.GfxIndexedIndirectArgs = type { i32, i32, i32, i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<FxAABB>" = type { %struct.FxAABB }
%struct.FxAABB = type { i32, i32, i32, i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.FxFrameConsts_decl = type { %hostlayout.struct.FxFrameConsts }
%hostlayout.struct.FxFrameConsts = type { [4 x <4 x float>], [4 x <4 x float>], <4 x i32>, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, i32, i32, i32, i32, i32, i32, float, float, <3 x float>, i32, i32, float, float, float, <4 x i32>, [12 x <4 x i32>] }
%FxEmitConsts_decl = type { %struct.FxEmitConsts }
%struct.FxEmitConsts = type { i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_fx_prerender_unsorted_particles() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %35 = add i32 %25, 255
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
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %58, i32 8)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = icmp ult i32 %54, %75
  %77 = zext i1 %76 to i32
  br i1 %76, label %78, label %1422, !dx.controlflow.hints !33

; <label>:78                                      ; preds = %47
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = extractvalue %dx.types.ResRet.f32 %81, 1
  %84 = extractvalue %dx.types.ResRet.f32 %81, 2
  %85 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = extractvalue %dx.types.ResRet.f32 %85, 3
  %90 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = extractvalue %dx.types.ResRet.f32 %90, 3
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = extractvalue %dx.types.ResRet.f32 %99, 1
  %102 = extractvalue %dx.types.ResRet.f32 %99, 2
  %103 = extractvalue %dx.types.ResRet.f32 %99, 3
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 1
  %107 = extractvalue %dx.types.ResRet.f32 %104, 2
  %108 = extractvalue %dx.types.ResRet.f32 %104, 3
  %109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = extractvalue %dx.types.ResRet.f32 %126, 1
  %129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.i32 %140, 3
  %142 = shl i32 %141, 8
  %143 = or i32 %142, 2
  %144 = add i32 %143, %58
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %144, i32 0)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = add i32 %146, %54
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %147, i32 0)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %147, i32 8)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = extractvalue %dx.types.ResRet.i32 %151, 1
  %154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %147, i32 16)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = and i32 %149, -2048
  %157 = bitcast i32 %156 to float
  %158 = shl i32 %149, 21
  %159 = lshr i32 %150, 11
  %160 = and i32 %159, 2095104
  %161 = or i32 %160, %158
  %162 = bitcast i32 %161 to float
  %163 = shl i32 %150, 10
  %164 = and i32 %163, -2048
  %165 = bitcast i32 %164 to float
  %166 = and i32 %80, 4194304
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %176, !dx.controlflow.hints !34

; <label>:168                                     ; preds = %78
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = extractvalue %dx.types.CBufRet.f32 %169, 1
  %172 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %173 = fadd fast float %170, %157
  %174 = fadd fast float %171, %162
  %175 = fadd fast float %172, %165
  br label %176

; <label>:176                                     ; preds = %168, %78
  %177 = phi float [ %157, %78 ], [ %173, %168 ]
  %178 = phi float [ %162, %78 ], [ %174, %168 ]
  %179 = phi float [ %165, %78 ], [ %175, %168 ]
  %180 = lshr i32 %152, 16
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = and i32 %153, 65535
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %153, 16
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = and i32 %152, 65535
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3EF0001000000000
  %189 = lshr i32 %155, 16
  %190 = shl nuw nsw i32 %189, 7
  %191 = and i32 %190, 65408
  %192 = xor i32 %191, %189
  %193 = lshr i32 %192, 9
  %194 = xor i32 %193, %192
  %195 = shl nuw nsw i32 %194, 8
  %196 = and i32 %195, 65280
  %197 = xor i32 %196, %194
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %112, 0x3EF0001000000000
  %200 = fmul fast float %199, %198
  %201 = fadd fast float %200, %110
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 65535
  %205 = lshr i32 %203, 16
  %206 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %207 = uitofp i32 %204 to float
  %208 = fmul fast float %207, %206
  %209 = add nsw i32 %204, -1
  %210 = call float @dx.op.unary.f32(i32 27, float %208)  ; Round_ni(value)
  %211 = fptosi float %210 to i32
  %212 = call i32 @dx.op.binary.i32(i32 38, i32 %211, i32 %209)  ; IMin(a,b)
  %213 = uitofp i32 %212 to float
  %214 = fsub fast float %208, %213
  %215 = shl i32 %212, 1
  %216 = mul i32 %212, 96
  %217 = add i32 %216, %205
  %218 = add i32 %217, 20
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %217, 24
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add i32 %217, 28
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = add i32 %217, 32
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = extractvalue %dx.types.ResRet.i32 %228, 1
  %231 = add i32 %217, 40
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = extractvalue %dx.types.ResRet.i32 %232, 1
  %235 = and i32 %229, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %229, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = and i32 %230, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %230, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = and i32 %233, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %233, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = and i32 %234, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %234, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = and i32 %220, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %220, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = and i32 %223, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %223, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = and i32 %226, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = or i32 %215, 1
  %262 = mul i32 %261, 48
  %263 = add i32 %262, %205
  %264 = add i32 %263, 20
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %263, 24
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = add i32 %263, 28
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %263, 32
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = extractvalue %dx.types.ResRet.i32 %274, 1
  %277 = add i32 %263, 40
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = extractvalue %dx.types.ResRet.i32 %278, 1
  %281 = and i32 %275, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %275, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = and i32 %276, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %276, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = and i32 %279, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %279, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = and i32 %280, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %280, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = and i32 %266, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %266, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = and i32 %269, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %269, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = and i32 %272, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add nuw nsw i32 %205, 96
  %308 = add i32 %307, %216
  %309 = add i32 %308, 20
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = add i32 %308, 24
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = add i32 %308, 28
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = add i32 %308, 32
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = extractvalue %dx.types.ResRet.i32 %319, 1
  %322 = add i32 %308, 40
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = extractvalue %dx.types.ResRet.i32 %323, 1
  %326 = and i32 %320, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %320, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = and i32 %321, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %321, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = and i32 %324, 65535
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %324, 16
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = and i32 %325, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %325, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = and i32 %311, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %311, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = and i32 %314, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %314, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = and i32 %317, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add nuw nsw i32 %205, 144
  %353 = add i32 %352, %216
  %354 = add i32 %353, 20
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = add i32 %353, 24
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = add i32 %353, 28
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = add i32 %353, 32
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = extractvalue %dx.types.ResRet.i32 %364, 1
  %367 = add i32 %353, 40
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = extractvalue %dx.types.ResRet.i32 %368, 1
  %371 = and i32 %365, 65535
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = lshr i32 %365, 16
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = and i32 %366, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %366, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = and i32 %369, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %369, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = and i32 %370, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %370, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = and i32 %356, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %356, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = and i32 %359, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %359, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = and i32 %362, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = shl i32 %155, 7
  %398 = and i32 %397, 65408
  %399 = and i32 %155, 65535
  %400 = xor i32 %398, %399
  %401 = lshr i32 %400, 9
  %402 = xor i32 %401, %400
  %403 = shl nuw nsw i32 %402, 8
  %404 = and i32 %403, 65280
  %405 = xor i32 %404, %402
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3EF0001000000000
  %408 = shl nuw nsw i32 %405, 7
  %409 = and i32 %408, 65408
  %410 = xor i32 %409, %405
  %411 = lshr i32 %410, 9
  %412 = and i32 %411, 65535
  %413 = xor i32 %412, %410
  %414 = shl nuw nsw i32 %413, 8
  %415 = xor i32 %414, %413
  %416 = and i32 %415, 65535
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3EF0001000000000
  %419 = shl nuw nsw i32 %416, 7
  %420 = xor i32 %419, %415
  %421 = lshr i32 %420, 9
  %422 = and i32 %421, 127
  %423 = and i32 %420, 65535
  %424 = xor i32 %422, %423
  %425 = shl nuw nsw i32 %424, 8
  %426 = and i32 %425, 65280
  %427 = xor i32 %426, %424
  %428 = uitofp i32 %427 to float
  %429 = fmul fast float %428, 0x3EF0001000000000
  %430 = shl nuw nsw i32 %427, 7
  %431 = and i32 %430, 65408
  %432 = xor i32 %431, %427
  %433 = lshr i32 %432, 9
  %434 = xor i32 %433, %432
  %435 = shl nuw nsw i32 %434, 8
  %436 = and i32 %435, 65280
  %437 = xor i32 %436, %434
  %438 = fmul fast float %181, %181
  %439 = fmul fast float %183, %183
  %440 = fadd fast float %439, %438
  %441 = fmul fast float %185, %185
  %442 = fadd fast float %440, %441
  %443 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %444 = and i32 %80, 256
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %418, float %407
  %447 = fmul fast float %298, %407
  %448 = fmul fast float %300, %446
  %449 = fadd fast float %447, %252
  %450 = fadd fast float %448, %254
  %451 = fmul fast float %388, %407
  %452 = fmul fast float %390, %446
  %453 = fsub fast float %343, %449
  %454 = fadd fast float %453, %451
  %455 = fsub fast float %345, %450
  %456 = fadd fast float %455, %452
  %457 = fmul fast float %454, %214
  %458 = fmul fast float %456, %214
  %459 = fadd fast float %457, %449
  %460 = fadd fast float %458, %450
  %461 = and i32 %80, 262144
  %462 = icmp ne i32 %461, 0
  %463 = fmul fast float %460, %443
  %464 = select i1 %462, float %463, float %460
  %465 = fcmp fast ogt float %138, 0.000000e+00
  %466 = fcmp fast ogt float %139, 0.000000e+00
  %467 = or i1 %465, %466
  %468 = call float @dx.op.binary.f32(i32 35, float %464, float %138)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 36, float %468, float %139)  ; FMin(a,b)
  %470 = select i1 %467, float %469, float %464
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 0
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = fsub fast float -0.000000e+00, %472
  %478 = fsub fast float -0.000000e+00, %474
  %479 = fsub fast float -0.000000e+00, %476
  %480 = extractvalue %dx.types.CBufRet.f32 %471, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %473, 1
  %482 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %483 = fsub fast float -0.000000e+00, %480
  %484 = fsub fast float -0.000000e+00, %481
  %485 = fsub fast float -0.000000e+00, %482
  %486 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %473, 2
  %488 = extractvalue %dx.types.CBufRet.f32 %475, 2
  br i1 %167, label %553, label %489, !dx.controlflow.hints !35

; <label>:489                                     ; preds = %176
  %490 = fmul fast float %179, %61
  %491 = fmul fast float %178, %62
  %492 = fsub fast float %490, %491
  %493 = fmul fast float %177, %62
  %494 = fmul fast float %179, %60
  %495 = fsub fast float %493, %494
  %496 = fmul fast float %178, %60
  %497 = fmul fast float %177, %61
  %498 = fsub fast float %496, %497
  %499 = fmul fast float %492, 2.000000e+00
  %500 = fmul fast float %495, 2.000000e+00
  %501 = fmul fast float %498, 2.000000e+00
  %502 = fmul fast float %499, %63
  %503 = fmul fast float %500, %63
  %504 = fmul fast float %501, %63
  %505 = fmul fast float %501, %61
  %506 = fmul fast float %500, %62
  %507 = fmul fast float %499, %62
  %508 = fmul fast float %501, %60
  %509 = fmul fast float %500, %60
  %510 = fmul fast float %499, %61
  %511 = fadd fast float %177, %65
  %512 = fadd fast float %511, %505
  %513 = fadd fast float %512, %502
  %514 = fsub fast float %513, %506
  %515 = fadd fast float %178, %66
  %516 = fsub fast float %515, %508
  %517 = fadd fast float %516, %503
  %518 = fadd fast float %517, %507
  %519 = fadd fast float %179, %67
  %520 = fadd fast float %519, %504
  %521 = fsub fast float %520, %510
  %522 = fadd fast float %521, %509
  %523 = fmul fast float %185, %61
  %524 = fmul fast float %183, %62
  %525 = fsub fast float %523, %524
  %526 = fmul fast float %181, %62
  %527 = fmul fast float %185, %60
  %528 = fsub fast float %526, %527
  %529 = fmul fast float %183, %60
  %530 = fmul fast float %181, %61
  %531 = fsub fast float %529, %530
  %532 = fmul fast float %525, 2.000000e+00
  %533 = fmul fast float %528, 2.000000e+00
  %534 = fmul fast float %531, 2.000000e+00
  %535 = fmul fast float %532, %63
  %536 = fmul fast float %533, %63
  %537 = fmul fast float %534, %63
  %538 = fmul fast float %534, %61
  %539 = fmul fast float %533, %62
  %540 = fmul fast float %532, %62
  %541 = fmul fast float %534, %60
  %542 = fmul fast float %533, %60
  %543 = fmul fast float %532, %61
  %544 = fadd fast float %538, %181
  %545 = fadd fast float %544, %535
  %546 = fsub fast float %545, %539
  %547 = fsub fast float %183, %541
  %548 = fadd fast float %547, %536
  %549 = fadd fast float %548, %540
  %550 = fadd fast float %537, %185
  %551 = fsub fast float %550, %543
  %552 = fadd fast float %551, %542
  br label %553

; <label>:553                                     ; preds = %489, %176
  %554 = phi float [ %514, %489 ], [ %177, %176 ]
  %555 = phi float [ %518, %489 ], [ %178, %176 ]
  %556 = phi float [ %522, %489 ], [ %179, %176 ]
  %557 = phi float [ %546, %489 ], [ %181, %176 ]
  %558 = phi float [ %549, %489 ], [ %183, %176 ]
  %559 = phi float [ %552, %489 ], [ %185, %176 ]
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 0
  %562 = extractvalue %dx.types.CBufRet.f32 %560, 1
  %563 = extractvalue %dx.types.CBufRet.f32 %560, 2
  %564 = fsub fast float %554, %561
  %565 = fsub fast float %555, %562
  %566 = fsub fast float %556, %563
  %567 = fmul fast float %564, %564
  %568 = fmul fast float %565, %565
  %569 = fadd fast float %567, %568
  %570 = fmul fast float %566, %566
  %571 = fadd fast float %569, %570
  %572 = call float @dx.op.unary.f32(i32 24, float %571)  ; Sqrt(value)
  %573 = and i32 %80, 2097152
  %574 = icmp ne i32 %573, 0
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 3
  %577 = select i1 %574, float 1.000000e+00, float %576
  %578 = fmul fast float %577, %572
  %579 = call float @dx.op.binary.f32(i32 35, float %578, float %86)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 36, float %579, float %87)  ; FMin(a,b)
  %581 = fsub fast float %580, %86
  %582 = fmul fast float %92, %82
  %583 = fmul fast float %582, %581
  %584 = fadd fast float %583, %91
  %585 = call float @dx.op.binary.f32(i32 35, float %578, float %87)  ; FMax(a,b)
  %586 = call float @dx.op.binary.f32(i32 36, float %585, float %88)  ; FMin(a,b)
  %587 = fsub fast float %586, %87
  %588 = fmul fast float %587, %83
  %589 = fsub fast float %93, %584
  %590 = fmul fast float %588, %589
  %591 = fadd fast float %590, %584
  %592 = call float @dx.op.binary.f32(i32 35, float %578, float %88)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 36, float %592, float %89)  ; FMin(a,b)
  %594 = fsub fast float %593, %88
  %595 = fmul fast float %594, %84
  %596 = fsub fast float %94, %591
  %597 = fmul fast float %595, %596
  %598 = fadd fast float %597, %591
  %599 = call float @dx.op.binary.f32(i32 35, float %578, float %100)  ; FMax(a,b)
  %600 = call float @dx.op.binary.f32(i32 36, float %599, float %101)  ; FMin(a,b)
  %601 = fsub fast float %600, %100
  %602 = fmul fast float %106, %96
  %603 = fmul fast float %602, %601
  %604 = fadd fast float %603, %105
  %605 = call float @dx.op.binary.f32(i32 35, float %578, float %101)  ; FMax(a,b)
  %606 = call float @dx.op.binary.f32(i32 36, float %605, float %102)  ; FMin(a,b)
  %607 = fsub fast float %606, %101
  %608 = fmul fast float %607, %97
  %609 = fsub fast float %107, %604
  %610 = fmul fast float %608, %609
  %611 = fadd fast float %610, %604
  %612 = call float @dx.op.binary.f32(i32 35, float %578, float %102)  ; FMax(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float %612, float %103)  ; FMin(a,b)
  %614 = fsub fast float %613, %102
  %615 = fmul fast float %614, %98
  %616 = fsub fast float %108, %611
  %617 = fmul fast float %615, %616
  %618 = fsub fast float %611, %598
  %619 = fadd fast float %618, %617
  %620 = fmul fast float %429, %619
  %621 = fadd fast float %620, %598
  %622 = fmul fast float %621, %459
  %623 = fmul fast float %621, %470
  %624 = and i32 %80, 131072
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %671, label %626, !dx.controlflow.hints !36

; <label>:626                                     ; preds = %553
  %627 = call float @dx.op.dot3.f32(i32 55, float %557, float %558, float %559, float %557, float %558, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = call float @dx.op.unary.f32(i32 25, float %627)  ; Rsqrt(value)
  %629 = fmul fast float %628, %557
  %630 = fmul fast float %628, %558
  %631 = fmul fast float %628, %559
  %632 = and i32 %80, 524288
  %633 = icmp ne i32 %632, 0
  %634 = fsub fast float -0.000000e+00, %623
  %635 = select i1 %633, float %634, float %623
  %636 = fmul fast float %629, %635
  %637 = fmul fast float %630, %635
  %638 = fmul fast float %631, %635
  %639 = fadd fast float %636, %554
  %640 = fadd fast float %637, %555
  %641 = fadd fast float %638, %556
  %642 = fsub fast float %639, %561
  %643 = fsub fast float %640, %562
  %644 = fsub fast float %641, %563
  %645 = fsub fast float -0.000000e+00, %642
  %646 = fsub fast float -0.000000e+00, %643
  %647 = fsub fast float -0.000000e+00, %644
  %648 = fmul fast float %630, %647
  %649 = fmul fast float %631, %646
  %650 = fsub fast float %648, %649
  %651 = fmul fast float %631, %645
  %652 = fmul fast float %629, %647
  %653 = fsub fast float %651, %652
  %654 = fmul fast float %629, %646
  %655 = fmul fast float %630, %645
  %656 = fsub fast float %654, %655
  %657 = call float @dx.op.dot3.f32(i32 55, float %650, float %653, float %656, float %650, float %653, float %656)  ; Dot3(ax,ay,az,bx,by,bz)
  %658 = call float @dx.op.unary.f32(i32 25, float %657)  ; Rsqrt(value)
  %659 = fmul fast float %650, %658
  %660 = fmul fast float %653, %658
  %661 = fmul fast float %656, %658
  %662 = fmul fast float %660, %631
  %663 = fmul fast float %661, %630
  %664 = fsub fast float %662, %663
  %665 = fmul fast float %661, %629
  %666 = fmul fast float %659, %631
  %667 = fsub fast float %665, %666
  %668 = fmul fast float %659, %630
  %669 = fmul fast float %660, %629
  %670 = fsub fast float %668, %669
  br label %671

; <label>:671                                     ; preds = %626, %553
  %672 = phi float [ %639, %626 ], [ %554, %553 ]
  %673 = phi float [ %640, %626 ], [ %555, %553 ]
  %674 = phi float [ %641, %626 ], [ %556, %553 ]
  %675 = phi float [ %664, %626 ], [ %477, %553 ]
  %676 = phi float [ %667, %626 ], [ %478, %553 ]
  %677 = phi float [ %670, %626 ], [ %479, %553 ]
  %678 = phi float [ %659, %626 ], [ %483, %553 ]
  %679 = phi float [ %660, %626 ], [ %484, %553 ]
  %680 = phi float [ %661, %626 ], [ %485, %553 ]
  %681 = phi float [ %629, %626 ], [ %486, %553 ]
  %682 = phi float [ %630, %626 ], [ %487, %553 ]
  %683 = phi float [ %631, %626 ], [ %488, %553 ]
  %684 = shl nuw nsw i32 %437, 7
  %685 = xor i32 %684, %437
  %686 = lshr i32 %685, 9
  %687 = and i32 %686, 127
  %688 = and i32 %685, 65535
  %689 = xor i32 %687, %688
  %690 = shl nuw nsw i32 %689, 8
  %691 = and i32 %690, 65280
  %692 = xor i32 %691, %689
  %693 = uitofp i32 %692 to float
  %694 = shl nuw nsw i32 %692, 7
  %695 = and i32 %694, 65408
  %696 = xor i32 %695, %692
  %697 = lshr i32 %696, 9
  %698 = xor i32 %697, %696
  %699 = shl nuw nsw i32 %698, 8
  %700 = and i32 %699, 65280
  %701 = xor i32 %700, %698
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %136, 0x3EF0001000000000
  %704 = fmul fast float %703, %693
  %705 = fadd fast float %704, %134
  %706 = fmul fast float %132, 0x3EF0001000000000
  %707 = fmul fast float %706, %702
  %708 = fmul fast float %201, %188
  %709 = fmul fast float %708, %705
  %710 = fadd fast float %709, %130
  %711 = fadd fast float %710, %707
  %712 = fmul fast float %711, 0x3FC45F3060000000
  %713 = fsub fast float -0.000000e+00, %712
  %714 = fcmp fast oge float %712, %713
  %715 = call float @dx.op.unary.f32(i32 6, float %712)  ; FAbs(value)
  %716 = call float @dx.op.unary.f32(i32 22, float %715)  ; Frc(value)
  %717 = fsub fast float -0.000000e+00, %716
  %718 = select i1 %714, float %716, float %717
  %719 = fmul fast float %718, 0x401921FB60000000
  %720 = call float @dx.op.unary.f32(i32 13, float %719)  ; Sin(value)
  %721 = call float @dx.op.unary.f32(i32 12, float %719)  ; Cos(value)
  %722 = fmul fast float %721, %678
  %723 = fmul fast float %721, %679
  %724 = fmul fast float %721, %680
  %725 = fmul fast float %720, %681
  %726 = fmul fast float %720, %682
  %727 = fmul fast float %720, %683
  %728 = fadd fast float %722, %725
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fmul fast float %720, %678
  %732 = fmul fast float %720, %679
  %733 = fmul fast float %720, %680
  %734 = fmul fast float %721, %681
  %735 = fmul fast float %721, %682
  %736 = fmul fast float %721, %683
  %737 = fsub fast float %731, %734
  %738 = fsub fast float %732, %735
  %739 = fsub fast float %733, %736
  %740 = fmul fast float %728, %622
  %741 = fmul fast float %729, %622
  %742 = fmul fast float %730, %622
  %743 = fmul fast float %737, %623
  %744 = fmul fast float %738, %623
  %745 = fmul fast float %739, %623
  %746 = shl nuw nsw i32 %701, 7
  %747 = xor i32 %746, %701
  %748 = lshr i32 %747, 9
  %749 = and i32 %748, 127
  %750 = and i32 %747, 65535
  %751 = xor i32 %749, %750
  %752 = shl nuw nsw i32 %751, 8
  %753 = and i32 %752, 65280
  %754 = xor i32 %753, %751
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3EF0001000000000
  %757 = shl nuw nsw i32 %754, 7
  %758 = and i32 %757, 65408
  %759 = xor i32 %758, %754
  %760 = lshr i32 %759, 9
  %761 = xor i32 %760, %759
  %762 = shl nuw nsw i32 %761, 8
  %763 = and i32 %762, 65280
  %764 = xor i32 %763, %761
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3EF0001000000000
  %767 = and i32 %80, 1048576
  %768 = icmp ne i32 %767, 0
  %769 = select i1 %768, float %766, float %756
  %770 = fmul fast float %756, %127
  %771 = fmul fast float %769, %128
  %772 = fadd fast float %124, %770
  %773 = fadd fast float %125, %771
  %774 = fsub fast float -0.000000e+00, %772
  %775 = fmul fast float %740, %774
  %776 = fmul fast float %741, %774
  %777 = fmul fast float %742, %774
  %778 = fsub fast float -0.000000e+00, %773
  %779 = fmul fast float %743, %778
  %780 = fmul fast float %744, %778
  %781 = fmul fast float %745, %778
  %782 = fadd fast float %779, %672
  %783 = fadd fast float %782, %775
  %784 = fadd fast float %780, %673
  %785 = fadd fast float %784, %776
  %786 = fadd fast float %781, %674
  %787 = fadd fast float %786, %777
  %788 = call float @dx.op.dot3.f32(i32 55, float %564, float %565, float %566, float %472, float %474, float %476)  ; Dot3(ax,ay,az,bx,by,bz)
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 3
  %791 = fcmp fast ole float %788, %790
  %792 = fsub fast float %578, %120
  %793 = fmul fast float %792, %122
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = fsub fast float 1.000000e+00, %794
  %796 = fsub fast float %578, %116
  %797 = fmul fast float %796, %118
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = fmul fast float %795, %798
  %800 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %801 = fcmp fast ole float %799, %800
  %802 = or i1 %791, %801
  br i1 %802, label %931, label %803, !dx.controlflow.hints !37

; <label>:803                                     ; preds = %671
  %804 = fsub fast float %783, %561
  %805 = fsub fast float %785, %562
  %806 = fsub fast float %787, %563
  %807 = fsub fast float %804, %740
  %808 = fsub fast float %805, %741
  %809 = fsub fast float %806, %742
  %810 = fadd fast float %807, %743
  %811 = fadd fast float %808, %744
  %812 = fadd fast float %809, %745
  %813 = fsub fast float %807, %743
  %814 = fsub fast float %808, %744
  %815 = fsub fast float %809, %745
  %816 = fsub fast float %740, %743
  %817 = fadd fast float %816, %804
  %818 = fsub fast float %741, %744
  %819 = fadd fast float %818, %805
  %820 = fsub fast float %742, %745
  %821 = fadd fast float %820, %806
  %822 = fadd fast float %743, %740
  %823 = fadd fast float %822, %804
  %824 = fadd fast float %744, %741
  %825 = fadd fast float %824, %805
  %826 = fadd fast float %745, %742
  %827 = fadd fast float %826, %806
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %835 = extractvalue %dx.types.CBufRet.f32 %832, 3
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = extractvalue %dx.types.CBufRet.f32 %840, 1
  %843 = extractvalue %dx.types.CBufRet.f32 %840, 3
  %844 = fmul fast float %810, %829
  %845 = call float @dx.op.tertiary.f32(i32 46, float %833, float %811, float %844)  ; FMad(a,b,c)
  %846 = call float @dx.op.tertiary.f32(i32 46, float %837, float %812, float %845)  ; FMad(a,b,c)
  %847 = fadd fast float %846, %841
  %848 = fmul fast float %810, %830
  %849 = call float @dx.op.tertiary.f32(i32 46, float %834, float %811, float %848)  ; FMad(a,b,c)
  %850 = call float @dx.op.tertiary.f32(i32 46, float %838, float %812, float %849)  ; FMad(a,b,c)
  %851 = fadd fast float %850, %842
  %852 = fmul fast float %810, %831
  %853 = call float @dx.op.tertiary.f32(i32 46, float %835, float %811, float %852)  ; FMad(a,b,c)
  %854 = call float @dx.op.tertiary.f32(i32 46, float %839, float %812, float %853)  ; FMad(a,b,c)
  %855 = fadd fast float %854, %843
  %856 = fdiv fast float %847, %855
  %857 = fdiv fast float %851, %855
  %858 = fmul fast float %829, %813
  %859 = call float @dx.op.tertiary.f32(i32 46, float %833, float %814, float %858)  ; FMad(a,b,c)
  %860 = call float @dx.op.tertiary.f32(i32 46, float %837, float %815, float %859)  ; FMad(a,b,c)
  %861 = fadd fast float %860, %841
  %862 = fmul fast float %830, %813
  %863 = call float @dx.op.tertiary.f32(i32 46, float %834, float %814, float %862)  ; FMad(a,b,c)
  %864 = call float @dx.op.tertiary.f32(i32 46, float %838, float %815, float %863)  ; FMad(a,b,c)
  %865 = fadd fast float %864, %842
  %866 = fmul fast float %831, %813
  %867 = call float @dx.op.tertiary.f32(i32 46, float %835, float %814, float %866)  ; FMad(a,b,c)
  %868 = call float @dx.op.tertiary.f32(i32 46, float %839, float %815, float %867)  ; FMad(a,b,c)
  %869 = fadd fast float %868, %843
  %870 = fdiv fast float %861, %869
  %871 = fdiv fast float %865, %869
  %872 = fmul fast float %829, %817
  %873 = call float @dx.op.tertiary.f32(i32 46, float %833, float %819, float %872)  ; FMad(a,b,c)
  %874 = call float @dx.op.tertiary.f32(i32 46, float %837, float %821, float %873)  ; FMad(a,b,c)
  %875 = fadd fast float %874, %841
  %876 = fmul fast float %830, %817
  %877 = call float @dx.op.tertiary.f32(i32 46, float %834, float %819, float %876)  ; FMad(a,b,c)
  %878 = call float @dx.op.tertiary.f32(i32 46, float %838, float %821, float %877)  ; FMad(a,b,c)
  %879 = fadd fast float %878, %842
  %880 = fmul fast float %831, %817
  %881 = call float @dx.op.tertiary.f32(i32 46, float %835, float %819, float %880)  ; FMad(a,b,c)
  %882 = call float @dx.op.tertiary.f32(i32 46, float %839, float %821, float %881)  ; FMad(a,b,c)
  %883 = fadd fast float %882, %843
  %884 = fdiv fast float %875, %883
  %885 = fdiv fast float %879, %883
  %886 = fmul fast float %829, %823
  %887 = call float @dx.op.tertiary.f32(i32 46, float %833, float %825, float %886)  ; FMad(a,b,c)
  %888 = call float @dx.op.tertiary.f32(i32 46, float %837, float %827, float %887)  ; FMad(a,b,c)
  %889 = fadd fast float %888, %841
  %890 = fmul fast float %830, %823
  %891 = call float @dx.op.tertiary.f32(i32 46, float %834, float %825, float %890)  ; FMad(a,b,c)
  %892 = call float @dx.op.tertiary.f32(i32 46, float %838, float %827, float %891)  ; FMad(a,b,c)
  %893 = fadd fast float %892, %842
  %894 = fmul fast float %831, %823
  %895 = call float @dx.op.tertiary.f32(i32 46, float %835, float %825, float %894)  ; FMad(a,b,c)
  %896 = call float @dx.op.tertiary.f32(i32 46, float %839, float %827, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %843
  %898 = fdiv fast float %889, %897
  %899 = fdiv fast float %893, %897
  %900 = fcmp fast olt float %856, -1.000000e+00
  %901 = fcmp fast olt float %870, -1.000000e+00
  %902 = and i1 %900, %901
  %903 = fcmp fast olt float %884, -1.000000e+00
  %904 = and i1 %902, %903
  %905 = fcmp fast olt float %898, -1.000000e+00
  %906 = and i1 %904, %905
  br i1 %906, label %931, label %907, !dx.controlflow.hints !38

; <label>:907                                     ; preds = %803
  %908 = fcmp fast ogt float %856, 1.000000e+00
  %909 = fcmp fast ogt float %870, 1.000000e+00
  %910 = and i1 %908, %909
  %911 = fcmp fast ogt float %884, 1.000000e+00
  %912 = and i1 %910, %911
  %913 = fcmp fast ogt float %898, 1.000000e+00
  %914 = and i1 %912, %913
  br i1 %914, label %931, label %915, !dx.controlflow.hints !39

; <label>:915                                     ; preds = %907
  %916 = fcmp fast olt float %857, -1.000000e+00
  %917 = fcmp fast olt float %871, -1.000000e+00
  %918 = and i1 %916, %917
  %919 = fcmp fast olt float %885, -1.000000e+00
  %920 = and i1 %918, %919
  %921 = fcmp fast olt float %899, -1.000000e+00
  %922 = and i1 %920, %921
  br i1 %922, label %931, label %923, !dx.controlflow.hints !40

; <label>:923                                     ; preds = %915
  %924 = fcmp fast ogt float %857, 1.000000e+00
  %925 = fcmp fast ogt float %871, 1.000000e+00
  %926 = and i1 %924, %925
  %927 = fcmp fast ogt float %885, 1.000000e+00
  %928 = and i1 %926, %927
  %929 = fcmp fast ogt float %899, 1.000000e+00
  %930 = and i1 %928, %929
  br label %931

; <label>:931                                     ; preds = %923, %915, %907, %803, %671
  %932 = phi i1 [ true, %671 ], [ true, %803 ], [ true, %907 ], [ true, %915 ], [ %930, %923 ]
  %933 = zext i1 %932 to i32
  %934 = xor i32 %933, 1
  br i1 %932, label %1422, label %935, !dx.controlflow.hints !41

; <label>:935                                     ; preds = %931
  %936 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %6, i32 0, i32 %58, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %937 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.i32 %937, 3
  %939 = extractvalue %dx.types.CBufRet.i32 %937, 2
  %940 = mul nsw i32 %939, %938
  %941 = sub nsw i32 %146, %940
  %942 = udiv i32 %936, 6
  %943 = add i32 %941, %942
  %944 = shl nuw nsw i32 %764, 7
  %945 = xor i32 %944, %764
  %946 = lshr i32 %945, 9
  %947 = and i32 %946, 127
  %948 = and i32 %945, 65535
  %949 = xor i32 %947, %948
  %950 = shl nuw nsw i32 %949, 8
  %951 = and i32 %950, 65280
  %952 = xor i32 %951, %949
  %953 = uitofp i32 %952 to float
  %954 = fmul fast float %953, 0x3EF0001000000000
  %955 = fmul fast float %306, %954
  %956 = fadd fast float %955, %260
  %957 = fmul fast float %396, %954
  %958 = fsub fast float %351, %956
  %959 = fadd fast float %958, %957
  %960 = fmul fast float %959, %214
  %961 = fadd fast float %960, %956
  %962 = shl nuw nsw i32 %952, 7
  %963 = and i32 %962, 65408
  %964 = xor i32 %963, %952
  %965 = lshr i32 %964, 9
  %966 = xor i32 %965, %964
  %967 = shl nuw nsw i32 %966, 8
  %968 = and i32 %967, 65280
  %969 = xor i32 %968, %966
  %970 = uitofp i32 %969 to float
  %971 = fmul fast float %970, 0x3EF0001000000000
  %972 = shl nuw nsw i32 %969, 7
  %973 = xor i32 %972, %969
  %974 = lshr i32 %973, 9
  %975 = and i32 %974, 127
  %976 = and i32 %973, 65535
  %977 = xor i32 %975, %976
  %978 = shl nuw nsw i32 %977, 8
  %979 = and i32 %978, 65280
  %980 = xor i32 %979, %977
  %981 = uitofp i32 %980 to float
  %982 = fmul fast float %981, 0x3EF0001000000000
  %983 = shl nuw nsw i32 %980, 7
  %984 = and i32 %983, 65408
  %985 = xor i32 %984, %980
  %986 = lshr i32 %985, 9
  %987 = xor i32 %986, %985
  %988 = shl nuw nsw i32 %987, 8
  %989 = and i32 %988, 65280
  %990 = xor i32 %989, %987
  %991 = uitofp i32 %990 to float
  %992 = fmul fast float %991, 0x3EF0001000000000
  %993 = shl nuw nsw i32 %990, 7
  %994 = xor i32 %993, %990
  %995 = lshr i32 %994, 9
  %996 = and i32 %995, 127
  %997 = and i32 %994, 65535
  %998 = xor i32 %996, %997
  %999 = shl nuw nsw i32 %998, 8
  %1000 = and i32 %999, 65280
  %1001 = xor i32 %1000, %998
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3EF0001000000000
  %1004 = and i32 %80, 128
  %1005 = icmp ne i32 %1004, 0
  %1006 = select i1 %1005, float %982, float %971
  %1007 = select i1 %1005, float %992, float %971
  %1008 = select i1 %1005, float %1003, float %971
  %1009 = fmul fast float %290, %971
  %1010 = fmul fast float %292, %1006
  %1011 = fmul fast float %294, %1007
  %1012 = fmul fast float %296, %1008
  %1013 = fadd fast float %1009, %244
  %1014 = fadd fast float %1010, %246
  %1015 = fadd fast float %1011, %248
  %1016 = fadd fast float %1012, %250
  %1017 = fmul fast float %380, %971
  %1018 = fmul fast float %382, %1006
  %1019 = fmul fast float %384, %1007
  %1020 = fmul fast float %386, %1008
  %1021 = fsub fast float %335, %1013
  %1022 = fadd fast float %1021, %1017
  %1023 = fsub fast float %337, %1014
  %1024 = fadd fast float %1023, %1018
  %1025 = fsub fast float %339, %1015
  %1026 = fadd fast float %1025, %1019
  %1027 = fsub fast float %341, %1016
  %1028 = fadd fast float %1027, %1020
  %1029 = fmul fast float %1022, %214
  %1030 = fmul fast float %1024, %214
  %1031 = fmul fast float %1026, %214
  %1032 = fmul fast float %1028, %214
  %1033 = fadd fast float %1029, %1013
  %1034 = fadd fast float %1030, %1014
  %1035 = fadd fast float %1031, %1015
  %1036 = fadd fast float %1032, %1016
  %1037 = and i32 %80, 8388608
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1043, !dx.controlflow.hints !42

; <label>:1039                                    ; preds = %935
  %1040 = fmul fast float %1033, %1033
  %1041 = fmul fast float %1034, %1034
  %1042 = fmul fast float %1035, %1035
  br label %1043

; <label>:1043                                    ; preds = %1039, %935
  %1044 = phi float [ %1033, %935 ], [ %1040, %1039 ]
  %1045 = phi float [ %1034, %935 ], [ %1041, %1039 ]
  %1046 = phi float [ %1035, %935 ], [ %1042, %1039 ]
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1049 = shl nuw nsw i32 %1001, 7
  %1050 = and i32 %1049, 65408
  %1051 = xor i32 %1050, %1001
  %1052 = lshr i32 %1051, 9
  %1053 = xor i32 %1052, %1051
  %1054 = shl nuw nsw i32 %1053, 8
  %1055 = and i32 %1054, 65280
  %1056 = xor i32 %1055, %1053
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1057, 0x3EF0001000000000
  %1059 = fmul fast float %302, %1058
  %1060 = fadd fast float %1059, %256
  %1061 = fmul fast float %392, %1058
  %1062 = fsub fast float %347, %1060
  %1063 = fadd fast float %1062, %1061
  %1064 = fmul fast float %1063, %214
  %1065 = fadd fast float %1064, %1060
  %1066 = fadd fast float %1065, %1048
  %1067 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1066)  ; FMax(a,b)
  %1068 = shl nuw nsw i32 %1056, 7
  %1069 = xor i32 %1068, %1056
  %1070 = lshr i32 %1069, 9
  %1071 = and i32 %1070, 127
  %1072 = and i32 %1069, 65535
  %1073 = xor i32 %1071, %1072
  %1074 = shl nuw nsw i32 %1073, 8
  %1075 = and i32 %1074, 65280
  %1076 = xor i32 %1075, %1073
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1077, 0x3EF0001000000000
  %1079 = shl nuw nsw i32 %1076, 7
  %1080 = and i32 %1079, 65408
  %1081 = xor i32 %1080, %1076
  %1082 = lshr i32 %1081, 9
  %1083 = xor i32 %1082, %1081
  %1084 = shl nuw nsw i32 %1083, 8
  %1085 = and i32 %1084, 65280
  %1086 = xor i32 %1085, %1083
  %1087 = uitofp i32 %1086 to float
  %1088 = fmul fast float %1087, 0x3EF0001000000000
  %1089 = shl nuw nsw i32 %1086, 7
  %1090 = xor i32 %1089, %1086
  %1091 = lshr i32 %1090, 9
  %1092 = and i32 %1091, 127
  %1093 = and i32 %1090, 65535
  %1094 = xor i32 %1092, %1093
  %1095 = shl nuw nsw i32 %1094, 8
  %1096 = and i32 %1095, 65280
  %1097 = xor i32 %1096, %1094
  %1098 = uitofp i32 %1097 to float
  %1099 = fmul fast float %1098, 0x3EF0001000000000
  %1100 = shl nuw nsw i32 %1097, 7
  %1101 = and i32 %1100, 65408
  %1102 = xor i32 %1101, %1097
  %1103 = lshr i32 %1102, 9
  %1104 = xor i32 %1103, %1102
  %1105 = shl nuw nsw i32 %1104, 8
  %1106 = and i32 %1105, 65280
  %1107 = xor i32 %1106, %1104
  %1108 = uitofp i32 %1107 to float
  %1109 = fmul fast float %1108, 0x3EF0001000000000
  %1110 = and i32 %80, 64
  %1111 = icmp ne i32 %1110, 0
  %1112 = select i1 %1111, float %1088, float %1078
  %1113 = select i1 %1111, float %1099, float %1078
  %1114 = select i1 %1111, float %1109, float %1078
  %1115 = fmul fast float %282, %1078
  %1116 = fmul fast float %284, %1112
  %1117 = fmul fast float %286, %1113
  %1118 = fmul fast float %288, %1114
  %1119 = fadd fast float %1115, %236
  %1120 = fadd fast float %1116, %238
  %1121 = fadd fast float %1117, %240
  %1122 = fadd fast float %1118, %242
  %1123 = fmul fast float %372, %1078
  %1124 = fmul fast float %374, %1112
  %1125 = fmul fast float %376, %1113
  %1126 = fmul fast float %378, %1114
  %1127 = fsub fast float %327, %1119
  %1128 = fadd fast float %1127, %1123
  %1129 = fsub fast float %329, %1120
  %1130 = fadd fast float %1129, %1124
  %1131 = fsub fast float %331, %1121
  %1132 = fadd fast float %1131, %1125
  %1133 = fsub fast float %333, %1122
  %1134 = fadd fast float %1133, %1126
  %1135 = fmul fast float %1128, %214
  %1136 = fmul fast float %1130, %214
  %1137 = fmul fast float %1132, %214
  %1138 = fmul fast float %1134, %214
  %1139 = fadd fast float %1135, %1119
  %1140 = fadd fast float %1136, %1120
  %1141 = fadd fast float %1137, %1121
  %1142 = fadd fast float %1138, %1122
  br i1 %1038, label %1143, label %1147, !dx.controlflow.hints !43

; <label>:1143                                    ; preds = %1043
  %1144 = fmul fast float %1139, %1139
  %1145 = fmul fast float %1140, %1140
  %1146 = fmul fast float %1141, %1141
  br label %1147

; <label>:1147                                    ; preds = %1143, %1043
  %1148 = phi float [ %1139, %1043 ], [ %1144, %1143 ]
  %1149 = phi float [ %1140, %1043 ], [ %1145, %1143 ]
  %1150 = phi float [ %1141, %1043 ], [ %1146, %1143 ]
  %1151 = shl nuw nsw i32 %1107, 7
  %1152 = xor i32 %1151, %1107
  %1153 = lshr i32 %1152, 9
  %1154 = and i32 %1153, 127
  %1155 = and i32 %1152, 65535
  %1156 = xor i32 %1154, %1155
  %1157 = shl nuw nsw i32 %1156, 8
  %1158 = and i32 %1157, 65280
  %1159 = xor i32 %1158, %1156
  %1160 = uitofp i32 %1159 to float
  %1161 = fmul fast float %1160, 0x3EF0001000000000
  %1162 = fadd fast float %1161, -5.000000e-01
  %1163 = and i32 %80, 32768
  %1164 = icmp ne i32 %1163, 0
  %1165 = call float @dx.op.unary.f32(i32 6, float %1162)  ; FAbs(value)
  %1166 = fcmp fast ogt float %1165, 2.500000e-01
  %1167 = zext i1 %1166 to i32
  %1168 = and i32 %80, 8192
  %1169 = select i1 %1164, i32 %1167, i32 %1168
  %1170 = icmp ne i32 %1169, 0
  %1171 = and i32 %80, 65536
  %1172 = icmp ne i32 %1171, 0
  %1173 = fcmp fast ogt float %1162, 0.000000e+00
  %1174 = zext i1 %1173 to i32
  %1175 = and i32 %80, 16384
  %1176 = select i1 %1172, i32 %1174, i32 %1175
  %1177 = icmp ne i32 %1176, 0
  %1178 = zext i1 %1170 to i32
  %1179 = or i32 %1178, 2
  %1180 = select i1 %1177, i32 %1179, i32 %1178
  %1181 = and i32 %69, 65535
  %1182 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %1183 = fmul fast float %1182, 2.550000e+02
  %1184 = fptoui float %1183 to i32
  %1185 = shl nuw nsw i32 %1180, 24
  %1186 = shl i32 %1184, 16
  %1187 = or i32 %1186, %1181
  %1188 = or i32 %1187, %1185
  %1189 = shl nuw nsw i32 %1159, 7
  %1190 = and i32 %1189, 65408
  %1191 = xor i32 %1190, %1159
  %1192 = lshr i32 %1191, 9
  %1193 = xor i32 %1192, %1191
  %1194 = shl nuw nsw i32 %1193, 8
  %1195 = and i32 %1194, 65280
  %1196 = xor i32 %1195, %1193
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3EF0001000000000
  %1199 = shl nuw nsw i32 %1196, 7
  %1200 = xor i32 %1199, %1196
  %1201 = lshr i32 %1200, 9
  %1202 = and i32 %1201, 127
  %1203 = and i32 %1200, 65535
  %1204 = xor i32 %1202, %1203
  %1205 = fmul fast float %304, %1198
  %1206 = fadd fast float %1205, %258
  %1207 = fmul fast float %394, %1198
  %1208 = fsub fast float %349, %1206
  %1209 = fadd fast float %1208, %1207
  %1210 = fmul fast float %1209, %214
  %1211 = fadd fast float %1210, %1206
  %1212 = lshr i32 %114, 16
  %1213 = and i32 %114, 32767
  %1214 = icmp eq i32 %1213, 32767
  br i1 %1214, label %1232, label %1215, !dx.controlflow.hints !44

; <label>:1215                                    ; preds = %1147
  %1216 = shl nuw nsw i32 %1204, 8
  %1217 = and i32 %1216, 65280
  %1218 = xor i32 %1217, %1204
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1219, 0x3EF0001000000000
  %1221 = fadd fast float %112, %110
  %1222 = fdiv fast float 1.000000e+00, %1221
  %1223 = fmul fast float %1211, %201
  %1224 = fmul fast float %1223, %1222
  %1225 = and i32 %114, 32768
  %1226 = icmp ne i32 %1225, 0
  %1227 = select i1 %1226, float 1.000000e+00, float %1220
  %1228 = uitofp i32 %1213 to float
  %1229 = fmul fast float %1227, %1228
  %1230 = call float @dx.op.unary.f32(i32 27, float %1229)  ; Round_ni(value)
  %1231 = fadd fast float %1224, %1230
  br label %1232

; <label>:1232                                    ; preds = %1215, %1147
  %1233 = phi float [ %1231, %1215 ], [ %1211, %1147 ]
  %1234 = icmp eq i32 %1212, 65535
  br i1 %1234, label %1240, label %1235, !dx.controlflow.hints !45

; <label>:1235                                    ; preds = %1232
  %1236 = uitofp i32 %1212 to float
  %1237 = fsub fast float -0.000000e+00, %1236
  %1238 = call float @dx.op.binary.f32(i32 35, float %1233, float %1237)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 36, float %1238, float %1236)  ; FMin(a,b)
  br label %1240

; <label>:1240                                    ; preds = %1235, %1232
  %1241 = phi float [ %1239, %1235 ], [ %1233, %1232 ]
  %1242 = and i32 %69, -65536
  %1243 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1241)  ; LegacyF32ToF16(value)
  %1244 = and i32 %1243, 65535
  %1245 = or i32 %1244, %1242
  %1246 = fmul fast float %730, %676
  %1247 = fmul fast float %729, %677
  %1248 = fsub fast float %1246, %1247
  %1249 = fmul fast float %728, %677
  %1250 = fmul fast float %730, %675
  %1251 = fsub fast float %1249, %1250
  %1252 = fmul fast float %729, %675
  %1253 = fmul fast float %728, %676
  %1254 = fsub fast float %1252, %1253
  %1255 = fadd fast float %728, %677
  %1256 = fadd fast float %1255, %1251
  %1257 = fcmp fast ogt float %1256, 0.000000e+00
  br i1 %1257, label %1258, label %1269, !dx.controlflow.hints !46

; <label>:1258                                    ; preds = %1240
  %1259 = fadd fast float %1256, 1.000000e+00
  %1260 = fsub fast float %1254, %676
  %1261 = fsub fast float %675, %730
  %1262 = fsub fast float %729, %1248
  %1263 = call float @dx.op.unary.f32(i32 25, float %1259)  ; Rsqrt(value)
  %1264 = fmul fast float %1263, 5.000000e-01
  %1265 = fmul fast float %1264, %1260
  %1266 = fmul fast float %1264, %1261
  %1267 = fmul fast float %1264, %1262
  %1268 = fmul fast float %1264, %1259
  br label %1313

; <label>:1269                                    ; preds = %1240
  %1270 = fcmp fast ogt float %728, %1251
  %1271 = fcmp fast ogt float %728, %677
  %1272 = and i1 %1271, %1270
  br i1 %1272, label %1273, label %1286, !dx.controlflow.hints !47

; <label>:1273                                    ; preds = %1269
  %1274 = fsub fast float 1.000000e+00, %677
  %1275 = fadd fast float %1274, %728
  %1276 = fsub fast float %1275, %1251
  %1277 = fsub fast float %1254, %676
  %1278 = fadd fast float %1248, %729
  %1279 = fadd fast float %730, %675
  %1280 = call float @dx.op.unary.f32(i32 25, float %1276)  ; Rsqrt(value)
  %1281 = fmul fast float %1280, 5.000000e-01
  %1282 = fmul fast float %1281, %1276
  %1283 = fmul fast float %1281, %1278
  %1284 = fmul fast float %1281, %1279
  %1285 = fmul fast float %1281, %1277
  br label %1313

; <label>:1286                                    ; preds = %1269
  %1287 = fcmp fast ogt float %1251, %677
  %1288 = fadd fast float %1254, %676
  br i1 %1287, label %1289, label %1301, !dx.controlflow.hints !48

; <label>:1289                                    ; preds = %1286
  %1290 = fsub fast float 1.000000e+00, %677
  %1291 = fsub fast float %1290, %728
  %1292 = fadd fast float %1291, %1251
  %1293 = fsub fast float %675, %730
  %1294 = fadd fast float %1248, %729
  %1295 = call float @dx.op.unary.f32(i32 25, float %1292)  ; Rsqrt(value)
  %1296 = fmul fast float %1295, 5.000000e-01
  %1297 = fmul fast float %1296, %1294
  %1298 = fmul fast float %1296, %1292
  %1299 = fmul fast float %1296, %1288
  %1300 = fmul fast float %1296, %1293
  br label %1313

; <label>:1301                                    ; preds = %1286
  %1302 = fadd fast float %677, 1.000000e+00
  %1303 = fsub fast float %1302, %728
  %1304 = fsub fast float %1303, %1251
  %1305 = fsub fast float %729, %1248
  %1306 = fadd fast float %730, %675
  %1307 = call float @dx.op.unary.f32(i32 25, float %1304)  ; Rsqrt(value)
  %1308 = fmul fast float %1307, 5.000000e-01
  %1309 = fmul fast float %1308, %1306
  %1310 = fmul fast float %1308, %1288
  %1311 = fmul fast float %1308, %1304
  %1312 = fmul fast float %1308, %1305
  br label %1313

; <label>:1313                                    ; preds = %1301, %1289, %1273, %1258
  %1314 = phi float [ %1265, %1258 ], [ %1282, %1273 ], [ %1297, %1289 ], [ %1309, %1301 ]
  %1315 = phi float [ %1266, %1258 ], [ %1283, %1273 ], [ %1298, %1289 ], [ %1310, %1301 ]
  %1316 = phi float [ %1267, %1258 ], [ %1284, %1273 ], [ %1299, %1289 ], [ %1311, %1301 ]
  %1317 = phi float [ %1268, %1258 ], [ %1285, %1273 ], [ %1300, %1289 ], [ %1312, %1301 ]
  %1318 = call float @dx.op.unary.f32(i32 6, float %1316)  ; FAbs(value)
  %1319 = call float @dx.op.unary.f32(i32 6, float %1314)  ; FAbs(value)
  %1320 = fcmp fast oge float %1318, %1319
  %1321 = call float @dx.op.unary.f32(i32 6, float %1315)  ; FAbs(value)
  %1322 = fcmp fast oge float %1318, %1321
  %1323 = and i1 %1320, %1322
  br i1 %1323, label %1324, label %1327, !dx.controlflow.hints !49

; <label>:1324                                    ; preds = %1313
  %1325 = fcmp fast olt float %1316, 0.000000e+00
  %1326 = select i1 %1325, float 5.000000e+00, float 4.000000e+00
  br label %1335

; <label>:1327                                    ; preds = %1313
  %1328 = fcmp fast ult float %1321, %1319
  br i1 %1328, label %1332, label %1329, !dx.controlflow.hints !50

; <label>:1329                                    ; preds = %1327
  %1330 = fcmp fast olt float %1315, 0.000000e+00
  %1331 = select i1 %1330, float 3.000000e+00, float 2.000000e+00
  br label %1335

; <label>:1332                                    ; preds = %1327
  %1333 = fcmp fast olt float %1314, 0.000000e+00
  %1334 = select i1 %1333, float 1.000000e+00, float 0.000000e+00
  br label %1335

; <label>:1335                                    ; preds = %1332, %1329, %1324
  %1336 = phi float [ %1326, %1324 ], [ %1331, %1329 ], [ %1334, %1332 ]
  %1337 = fmul fast float %1336, 5.000000e-01
  %1338 = fptoui float %1337 to i32
  %1339 = call float @dx.op.unary.f32(i32 6, float %1317)  ; FAbs(value)
  %1340 = call float @dx.op.binary.f32(i32 35, float %1321, float %1318)  ; FMax(a,b)
  %1341 = call float @dx.op.binary.f32(i32 35, float %1319, float %1340)  ; FMax(a,b)
  %1342 = fcmp fast ogt float %1339, %1341
  %1343 = select i1 %1342, i32 3, i32 %1338
  %1344 = icmp eq i32 %1343, 0
  %1345 = select i1 %1344, float %1315, float %1314
  %1346 = select i1 %1344, float %1316, float %1315
  %1347 = select i1 %1344, float %1317, float %1316
  %1348 = select i1 %1344, float %1314, float %1317
  %1349 = icmp eq i32 %1343, 1
  %1350 = select i1 %1349, float %1347, float %1346
  %1351 = select i1 %1349, float %1348, float %1347
  %1352 = select i1 %1349, float %1346, float %1348
  %1353 = icmp eq i32 %1343, 2
  %1354 = select i1 %1353, float %1352, float %1351
  %1355 = select i1 %1353, float %1351, float %1352
  %1356 = fcmp fast ogt float %1355, 0.000000e+00
  %1357 = select i1 %1356, float 0x3FF6A09E60000000, float 0xBFF6A09E60000000
  %1358 = fmul fast float %1357, %1345
  %1359 = fmul fast float %1357, %1350
  %1360 = fmul fast float %1357, %1354
  %1361 = fadd fast float %1358, 1.000000e+00
  %1362 = fmul fast float %1361, 5.000000e-01
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = fmul fast float %1363, 1.023000e+03
  %1365 = fptoui float %1364 to i32
  %1366 = fadd fast float %1359, 1.000000e+00
  %1367 = fmul fast float %1366, 5.000000e-01
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = fmul fast float %1368, 1.023000e+03
  %1370 = fptoui float %1369 to i32
  %1371 = fadd fast float %1360, 1.000000e+00
  %1372 = fmul fast float %1371, 5.000000e-01
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = fmul fast float %1373, 5.110000e+02
  %1375 = fptoui float %1374 to i32
  %1376 = shl i32 %1370, 10
  %1377 = shl i32 %1375, 20
  %1378 = shl i32 %1343, 30
  %1379 = or i32 %1378, %1365
  %1380 = or i32 %1379, %1376
  %1381 = or i32 %1380, %1377
  %1382 = fmul fast float %1044, %799
  %1383 = fmul fast float %1045, %799
  %1384 = fmul fast float %1046, %799
  %1385 = fmul fast float %799, %1036
  %1386 = fmul fast float %799, %1142
  %1387 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1148)  ; LegacyF32ToF16(value)
  %1388 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1149)  ; LegacyF32ToF16(value)
  %1389 = shl i32 %1388, 16
  %1390 = or i32 %1389, %1387
  %1391 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1150)  ; LegacyF32ToF16(value)
  %1392 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1386)  ; LegacyF32ToF16(value)
  %1393 = shl i32 %1392, 16
  %1394 = or i32 %1393, %1391
  %1395 = bitcast i32 %1390 to float
  %1396 = bitcast i32 %1394 to float
  %1397 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1382)  ; LegacyF32ToF16(value)
  %1398 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1383)  ; LegacyF32ToF16(value)
  %1399 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1384)  ; LegacyF32ToF16(value)
  %1400 = lshr i32 %1397, 4
  %1401 = and i32 %1400, 2047
  %1402 = shl i32 %1398, 7
  %1403 = and i32 %1402, 4192256
  %1404 = or i32 %1403, %1401
  %1405 = lshr i32 %1399, 5
  %1406 = shl i32 %1405, 22
  %1407 = or i32 %1404, %1406
  %1408 = bitcast i32 %1407 to float
  %1409 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1385)  ; LegacyF32ToF16(value)
  %1410 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1067)  ; LegacyF32ToF16(value)
  %1411 = shl i32 %1410, 16
  %1412 = or i32 %1411, %1409
  %1413 = bitcast i32 %1412 to float
  %1414 = mul i32 %943, 56
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %5, i32 %1414, i32 undef, float %783, float %785, float %787, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1415 = add i32 %1414, 12
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1415, i32 undef, i32 %71, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1416 = add i32 %1414, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %5, i32 %1416, i32 undef, float %622, float %623, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1417 = add i32 %1414, 24
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1417, i32 undef, i32 %1245, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1418 = add i32 %1414, 28
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1418, i32 undef, i32 %1188, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1419 = add i32 %1414, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %5, i32 %1419, i32 undef, float %1395, float %1396, float %1408, float %1413, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1420 = add i32 %1414, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1420, i32 undef, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1421 = add i32 %1414, 52
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %5, i32 %1421, i32 undef, i32 %1381, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1422

; <label>:1422                                    ; preds = %1335, %931, %47
  %1423 = phi float [ %783, %1335 ], [ %783, %931 ], [ 0.000000e+00, %47 ]
  %1424 = phi float [ %785, %1335 ], [ %785, %931 ], [ 0.000000e+00, %47 ]
  %1425 = phi float [ %787, %1335 ], [ %787, %931 ], [ 0.000000e+00, %47 ]
  %1426 = phi float [ %678, %1335 ], [ %678, %931 ], [ 0.000000e+00, %47 ]
  %1427 = phi float [ %679, %1335 ], [ %679, %931 ], [ 0.000000e+00, %47 ]
  %1428 = phi float [ %680, %1335 ], [ %680, %931 ], [ 0.000000e+00, %47 ]
  %1429 = phi float [ %681, %1335 ], [ %681, %931 ], [ 0.000000e+00, %47 ]
  %1430 = phi float [ %682, %1335 ], [ %682, %931 ], [ 0.000000e+00, %47 ]
  %1431 = phi float [ %683, %1335 ], [ %683, %931 ], [ 0.000000e+00, %47 ]
  %1432 = phi float [ %622, %1335 ], [ %622, %931 ], [ 0.000000e+00, %47 ]
  %1433 = phi float [ %623, %1335 ], [ %623, %931 ], [ 0.000000e+00, %47 ]
  %1434 = phi float [ %719, %1335 ], [ %719, %931 ], [ 0.000000e+00, %47 ]
  %1435 = phi i32 [ %934, %1335 ], [ %934, %931 ], [ %77, %47 ]
  %1436 = phi i32 [ %943, %1335 ], [ 0, %931 ], [ 0, %47 ]
  %1437 = lshr i32 %73, 16
  %1438 = and i32 %1437, 4095
  %1439 = icmp ugt i32 %1438, 1
  %1440 = icmp eq i32 %1435, 0
  %1441 = or i1 %1439, %1440
  br i1 %1441, label %1539, label %1442, !dx.controlflow.hints !51

; <label>:1442                                    ; preds = %1422
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1447 = fsub fast float %1423, %1444
  %1448 = fsub fast float %1424, %1445
  %1449 = fsub fast float %1425, %1446
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 0
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 0
  %1454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1455 = extractvalue %dx.types.CBufRet.f32 %1454, 0
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %1451, float %1453, float %1455)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1459 = fmul fast float %1458, %1456
  %1460 = call float @dx.op.binary.f32(i32 35, float %1432, float %1433)  ; FMax(a,b)
  %1461 = fdiv fast float 1.000000e+00, %1459
  %1462 = fmul fast float %1461, %1460
  %1463 = extractvalue %dx.types.CBufRet.f32 %1457, 2
  %1464 = fmul fast float %1462, %1463
  %1465 = fptosi float %1464 to i32
  %1466 = icmp sgt i32 %1465, 0
  br i1 %1466, label %1467, label %1475, !dx.controlflow.hints !52

; <label>:1467                                    ; preds = %1442
  %1468 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1465)  ; FirstbitHi(value)
  %1469 = sub i32 31, %1468
  %1470 = icmp eq i32 %1468, -1
  %1471 = select i1 %1470, i32 -1, i32 %1469
  %1472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.i32 %1472, 0
  %1474 = call i32 @dx.op.binary.i32(i32 40, i32 %1471, i32 %1473)  ; UMin(a,b)
  br label %1475

; <label>:1475                                    ; preds = %1467, %1442
  %1476 = phi i32 [ %1474, %1467 ], [ 0, %1442 ]
  %1477 = mul nuw nsw i32 %1438, 6
  %1478 = add i32 %1476, %1477
  %1479 = add i32 %1478, 17
  %1480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 %1479)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.i32 %1480, 0
  %1482 = extractvalue %dx.types.CBufRet.i32 %1480, 2
  %1483 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1478, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1484 = add i32 %1481, -1
  %1485 = call i32 @dx.op.binary.i32(i32 40, i32 %1483, i32 %1484)  ; UMin(a,b)
  %1486 = and i32 %73, -268435456
  %1487 = or i32 %1436, %1486
  %1488 = bitcast float %1423 to i32
  %1489 = bitcast float %1424 to i32
  %1490 = bitcast float %1425 to i32
  %1491 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1432)  ; LegacyF32ToF16(value)
  %1492 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1433)  ; LegacyF32ToF16(value)
  %1493 = shl i32 %1492, 16
  %1494 = or i32 %1493, %1491
  %1495 = fadd fast float %1426, 1.000000e+00
  %1496 = fadd fast float %1427, 1.000000e+00
  %1497 = fadd fast float %1428, 1.000000e+00
  %1498 = fmul fast float %1495, 5.000000e-01
  %1499 = fmul fast float %1496, 5.000000e-01
  %1500 = fmul fast float %1497, 5.000000e-01
  %1501 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1502 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1503 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  %1504 = fmul fast float %1501, 1.023000e+03
  %1505 = fmul fast float %1502, 1.023000e+03
  %1506 = fmul fast float %1503, 1.023000e+03
  %1507 = fptoui float %1504 to i32
  %1508 = fptoui float %1505 to i32
  %1509 = fptoui float %1506 to i32
  %1510 = shl i32 %1508, 10
  %1511 = or i32 %1510, %1507
  %1512 = shl i32 %1509, 20
  %1513 = or i32 %1511, %1512
  %1514 = fadd fast float %1429, 1.000000e+00
  %1515 = fadd fast float %1430, 1.000000e+00
  %1516 = fadd fast float %1431, 1.000000e+00
  %1517 = fmul fast float %1514, 5.000000e-01
  %1518 = fmul fast float %1515, 5.000000e-01
  %1519 = fmul fast float %1516, 5.000000e-01
  %1520 = call float @dx.op.unary.f32(i32 7, float %1517)  ; Saturate(value)
  %1521 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = fmul fast float %1520, 1.023000e+03
  %1524 = fmul fast float %1521, 1.023000e+03
  %1525 = fmul fast float %1522, 1.023000e+03
  %1526 = fptoui float %1523 to i32
  %1527 = fptoui float %1524 to i32
  %1528 = fptoui float %1525 to i32
  %1529 = shl i32 %1527, 10
  %1530 = or i32 %1529, %1526
  %1531 = shl i32 %1528, 20
  %1532 = or i32 %1530, %1531
  %1533 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1434)  ; LegacyF32ToF16(value)
  %1534 = shl i32 %73, 16
  %1535 = or i32 %1533, %1534
  %1536 = add i32 %1485, %1482
  %1537 = shl i32 %1536, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1537, i32 undef, i32 %1488, i32 %1489, i32 %1490, i32 %1487, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1538 = or i32 %1537, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1538, i32 undef, i32 %1494, i32 %1513, i32 %1532, i32 %1535, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1536, i32 0, i32 %56, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1539

; <label>:1539                                    ; preds = %1475, %1422
  %1540 = phi i1 [ true, %1422 ], [ %1441, %1475 ]
  br i1 %1540, label %1564, label %1541, !dx.controlflow.hints !53

; <label>:1541                                    ; preds = %1539
  %1542 = call float @dx.op.binary.f32(i32 35, float %1432, float %1433)  ; FMax(a,b)
  %1543 = fadd fast float %1423, 1.310720e+05
  %1544 = fsub fast float %1543, %1542
  %1545 = fadd fast float %1424, 1.310720e+05
  %1546 = fsub fast float %1545, %1542
  %1547 = fadd fast float %1425, 1.310720e+05
  %1548 = fsub fast float %1547, %1542
  %1549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1544)  ; FMax(a,b)
  %1550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1546)  ; FMax(a,b)
  %1551 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1548)  ; FMax(a,b)
  %1552 = bitcast float %1549 to i32
  %1553 = bitcast float %1550 to i32
  %1554 = bitcast float %1551 to i32
  %1555 = fadd fast float %1543, %1542
  %1556 = fadd fast float %1545, %1542
  %1557 = fadd fast float %1547, %1542
  %1558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1555)  ; FMax(a,b)
  %1559 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1556)  ; FMax(a,b)
  %1560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1557)  ; FMax(a,b)
  %1561 = bitcast float %1558 to i32
  %1562 = bitcast float %1559 to i32
  %1563 = bitcast float %1560 to i32
  br label %1564

; <label>:1564                                    ; preds = %1541, %1539
  %1565 = phi i32 [ %1552, %1541 ], [ -1, %1539 ]
  %1566 = phi i32 [ %1553, %1541 ], [ -1, %1539 ]
  %1567 = phi i32 [ %1554, %1541 ], [ -1, %1539 ]
  %1568 = phi i32 [ %1561, %1541 ], [ 0, %1539 ]
  %1569 = phi i32 [ %1562, %1541 ], [ 0, %1539 ]
  %1570 = phi i32 [ %1563, %1541 ], [ 0, %1539 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1571 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %19
  store i32 %1565, i32 addrspace(3)* %1571, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1572 = and i32 %19, 63
  %1573 = icmp ult i32 %1572, 32
  br i1 %1573, label %1574, label %1580, !dx.controlflow.hints !58

; <label>:1574                                    ; preds = %1564
  %1575 = add i32 %19, 32
  %1576 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1575
  %1577 = load i32, i32 addrspace(3)* %1576, align 4, !tbaa !54
  %1578 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1579 = call i32 @dx.op.binary.i32(i32 40, i32 %1578, i32 %1577)  ; UMin(a,b)
  store i32 %1579, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1580

; <label>:1580                                    ; preds = %1574, %1564
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1581 = icmp ult i32 %1572, 16
  br i1 %1581, label %1582, label %1588, !dx.controlflow.hints !59

; <label>:1582                                    ; preds = %1580
  %1583 = add i32 %19, 16
  %1584 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1583
  %1585 = load i32, i32 addrspace(3)* %1584, align 4, !tbaa !54
  %1586 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1587 = call i32 @dx.op.binary.i32(i32 40, i32 %1586, i32 %1585)  ; UMin(a,b)
  store i32 %1587, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1588

; <label>:1588                                    ; preds = %1582, %1580
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1589 = icmp ult i32 %1572, 8
  br i1 %1589, label %1590, label %1596, !dx.controlflow.hints !60

; <label>:1590                                    ; preds = %1588
  %1591 = add i32 %19, 8
  %1592 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1591
  %1593 = load i32, i32 addrspace(3)* %1592, align 4, !tbaa !54
  %1594 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1595 = call i32 @dx.op.binary.i32(i32 40, i32 %1594, i32 %1593)  ; UMin(a,b)
  store i32 %1595, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1596

; <label>:1596                                    ; preds = %1590, %1588
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1597 = icmp ult i32 %1572, 4
  br i1 %1597, label %1598, label %1604, !dx.controlflow.hints !61

; <label>:1598                                    ; preds = %1596
  %1599 = add i32 %19, 4
  %1600 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1599
  %1601 = load i32, i32 addrspace(3)* %1600, align 4, !tbaa !54
  %1602 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1603 = call i32 @dx.op.binary.i32(i32 40, i32 %1602, i32 %1601)  ; UMin(a,b)
  store i32 %1603, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1604

; <label>:1604                                    ; preds = %1598, %1596
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1605 = icmp ult i32 %1572, 2
  br i1 %1605, label %1606, label %1612, !dx.controlflow.hints !62

; <label>:1606                                    ; preds = %1604
  %1607 = add i32 %19, 2
  %1608 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1607
  %1609 = load i32, i32 addrspace(3)* %1608, align 4, !tbaa !54
  %1610 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1611 = call i32 @dx.op.binary.i32(i32 40, i32 %1610, i32 %1609)  ; UMin(a,b)
  store i32 %1611, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1612

; <label>:1612                                    ; preds = %1606, %1604
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %1613 = icmp eq i32 %1572, 0
  br i1 %1613, label %1614, label %1620, !dx.controlflow.hints !63

; <label>:1614                                    ; preds = %1612
  %1615 = add i32 %19, 1
  %1616 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1615
  %1617 = load i32, i32 addrspace(3)* %1616, align 4, !tbaa !54
  %1618 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1619 = call i32 @dx.op.binary.i32(i32 40, i32 %1618, i32 %1617)  ; UMin(a,b)
  store i32 %1619, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1620

; <label>:1620                                    ; preds = %1614, %1612
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1621 = and i32 %19, -64
  %1622 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1621
  %1623 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1566, i32 addrspace(3)* %1571, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1573, label %1624, label %1630, !dx.controlflow.hints !58

; <label>:1624                                    ; preds = %1620
  %1625 = add i32 %19, 32
  %1626 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1625
  %1627 = load i32, i32 addrspace(3)* %1626, align 4, !tbaa !54
  %1628 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1629 = call i32 @dx.op.binary.i32(i32 40, i32 %1628, i32 %1627)  ; UMin(a,b)
  store i32 %1629, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1630

; <label>:1630                                    ; preds = %1624, %1620
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1581, label %1631, label %1637, !dx.controlflow.hints !59

; <label>:1631                                    ; preds = %1630
  %1632 = add i32 %19, 16
  %1633 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1632
  %1634 = load i32, i32 addrspace(3)* %1633, align 4, !tbaa !54
  %1635 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1636 = call i32 @dx.op.binary.i32(i32 40, i32 %1635, i32 %1634)  ; UMin(a,b)
  store i32 %1636, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1637

; <label>:1637                                    ; preds = %1631, %1630
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1589, label %1638, label %1644, !dx.controlflow.hints !60

; <label>:1638                                    ; preds = %1637
  %1639 = add i32 %19, 8
  %1640 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1639
  %1641 = load i32, i32 addrspace(3)* %1640, align 4, !tbaa !54
  %1642 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1643 = call i32 @dx.op.binary.i32(i32 40, i32 %1642, i32 %1641)  ; UMin(a,b)
  store i32 %1643, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1644

; <label>:1644                                    ; preds = %1638, %1637
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1597, label %1645, label %1651, !dx.controlflow.hints !61

; <label>:1645                                    ; preds = %1644
  %1646 = add i32 %19, 4
  %1647 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1646
  %1648 = load i32, i32 addrspace(3)* %1647, align 4, !tbaa !54
  %1649 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1650 = call i32 @dx.op.binary.i32(i32 40, i32 %1649, i32 %1648)  ; UMin(a,b)
  store i32 %1650, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1651

; <label>:1651                                    ; preds = %1645, %1644
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1605, label %1652, label %1658, !dx.controlflow.hints !62

; <label>:1652                                    ; preds = %1651
  %1653 = add i32 %19, 2
  %1654 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1653
  %1655 = load i32, i32 addrspace(3)* %1654, align 4, !tbaa !54
  %1656 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1657 = call i32 @dx.op.binary.i32(i32 40, i32 %1656, i32 %1655)  ; UMin(a,b)
  store i32 %1657, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1658

; <label>:1658                                    ; preds = %1652, %1651
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1613, label %1659, label %1665, !dx.controlflow.hints !63

; <label>:1659                                    ; preds = %1658
  %1660 = add i32 %19, 1
  %1661 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1660
  %1662 = load i32, i32 addrspace(3)* %1661, align 4, !tbaa !54
  %1663 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1664 = call i32 @dx.op.binary.i32(i32 40, i32 %1663, i32 %1662)  ; UMin(a,b)
  store i32 %1664, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1665

; <label>:1665                                    ; preds = %1659, %1658
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1666 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1567, i32 addrspace(3)* %1571, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1573, label %1667, label %1673, !dx.controlflow.hints !58

; <label>:1667                                    ; preds = %1665
  %1668 = add i32 %19, 32
  %1669 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1668
  %1670 = load i32, i32 addrspace(3)* %1669, align 4, !tbaa !54
  %1671 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1672 = call i32 @dx.op.binary.i32(i32 40, i32 %1671, i32 %1670)  ; UMin(a,b)
  store i32 %1672, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1673

; <label>:1673                                    ; preds = %1667, %1665
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1581, label %1674, label %1680, !dx.controlflow.hints !59

; <label>:1674                                    ; preds = %1673
  %1675 = add i32 %19, 16
  %1676 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1675
  %1677 = load i32, i32 addrspace(3)* %1676, align 4, !tbaa !54
  %1678 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1679 = call i32 @dx.op.binary.i32(i32 40, i32 %1678, i32 %1677)  ; UMin(a,b)
  store i32 %1679, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1680

; <label>:1680                                    ; preds = %1674, %1673
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1589, label %1681, label %1687, !dx.controlflow.hints !60

; <label>:1681                                    ; preds = %1680
  %1682 = add i32 %19, 8
  %1683 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1682
  %1684 = load i32, i32 addrspace(3)* %1683, align 4, !tbaa !54
  %1685 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1686 = call i32 @dx.op.binary.i32(i32 40, i32 %1685, i32 %1684)  ; UMin(a,b)
  store i32 %1686, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1687

; <label>:1687                                    ; preds = %1681, %1680
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1597, label %1688, label %1694, !dx.controlflow.hints !61

; <label>:1688                                    ; preds = %1687
  %1689 = add i32 %19, 4
  %1690 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1689
  %1691 = load i32, i32 addrspace(3)* %1690, align 4, !tbaa !54
  %1692 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1693 = call i32 @dx.op.binary.i32(i32 40, i32 %1692, i32 %1691)  ; UMin(a,b)
  store i32 %1693, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1694

; <label>:1694                                    ; preds = %1688, %1687
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1605, label %1695, label %1701, !dx.controlflow.hints !62

; <label>:1695                                    ; preds = %1694
  %1696 = add i32 %19, 2
  %1697 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1696
  %1698 = load i32, i32 addrspace(3)* %1697, align 4, !tbaa !54
  %1699 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1700 = call i32 @dx.op.binary.i32(i32 40, i32 %1699, i32 %1698)  ; UMin(a,b)
  store i32 %1700, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1701

; <label>:1701                                    ; preds = %1695, %1694
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1613, label %1702, label %1708, !dx.controlflow.hints !63

; <label>:1702                                    ; preds = %1701
  %1703 = add i32 %19, 1
  %1704 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1703
  %1705 = load i32, i32 addrspace(3)* %1704, align 4, !tbaa !54
  %1706 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1707 = call i32 @dx.op.binary.i32(i32 40, i32 %1706, i32 %1705)  ; UMin(a,b)
  store i32 %1707, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1708

; <label>:1708                                    ; preds = %1702, %1701
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1709 = icmp eq i32 %19, 0
  br i1 %1709, label %1710, label %1715, !dx.controlflow.hints !64

; <label>:1710                                    ; preds = %1708
  %1711 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !54
  %1712 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %56, i32 0, i32 undef, i32 %1623)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1713 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %56, i32 4, i32 undef, i32 %1666)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1714 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 6, i32 %56, i32 8, i32 undef, i32 %1711)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1715

; <label>:1715                                    ; preds = %1710, %1708
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1568, i32 addrspace(3)* %1571, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1573, label %1716, label %1722, !dx.controlflow.hints !65

; <label>:1716                                    ; preds = %1715
  %1717 = add i32 %19, 32
  %1718 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1717
  %1719 = load i32, i32 addrspace(3)* %1718, align 4, !tbaa !54
  %1720 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1721 = call i32 @dx.op.binary.i32(i32 39, i32 %1720, i32 %1719)  ; UMax(a,b)
  store i32 %1721, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1722

; <label>:1722                                    ; preds = %1716, %1715
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1581, label %1723, label %1729, !dx.controlflow.hints !66

; <label>:1723                                    ; preds = %1722
  %1724 = add i32 %19, 16
  %1725 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1724
  %1726 = load i32, i32 addrspace(3)* %1725, align 4, !tbaa !54
  %1727 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1728 = call i32 @dx.op.binary.i32(i32 39, i32 %1727, i32 %1726)  ; UMax(a,b)
  store i32 %1728, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1729

; <label>:1729                                    ; preds = %1723, %1722
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1589, label %1730, label %1736, !dx.controlflow.hints !67

; <label>:1730                                    ; preds = %1729
  %1731 = add i32 %19, 8
  %1732 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1731
  %1733 = load i32, i32 addrspace(3)* %1732, align 4, !tbaa !54
  %1734 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1735 = call i32 @dx.op.binary.i32(i32 39, i32 %1734, i32 %1733)  ; UMax(a,b)
  store i32 %1735, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1736

; <label>:1736                                    ; preds = %1730, %1729
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1597, label %1737, label %1743, !dx.controlflow.hints !68

; <label>:1737                                    ; preds = %1736
  %1738 = add i32 %19, 4
  %1739 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1738
  %1740 = load i32, i32 addrspace(3)* %1739, align 4, !tbaa !54
  %1741 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1742 = call i32 @dx.op.binary.i32(i32 39, i32 %1741, i32 %1740)  ; UMax(a,b)
  store i32 %1742, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1743

; <label>:1743                                    ; preds = %1737, %1736
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1605, label %1744, label %1750, !dx.controlflow.hints !69

; <label>:1744                                    ; preds = %1743
  %1745 = add i32 %19, 2
  %1746 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1745
  %1747 = load i32, i32 addrspace(3)* %1746, align 4, !tbaa !54
  %1748 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1749 = call i32 @dx.op.binary.i32(i32 39, i32 %1748, i32 %1747)  ; UMax(a,b)
  store i32 %1749, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1750

; <label>:1750                                    ; preds = %1744, %1743
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1613, label %1751, label %1757, !dx.controlflow.hints !70

; <label>:1751                                    ; preds = %1750
  %1752 = add i32 %19, 1
  %1753 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1752
  %1754 = load i32, i32 addrspace(3)* %1753, align 4, !tbaa !54
  %1755 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1756 = call i32 @dx.op.binary.i32(i32 39, i32 %1755, i32 %1754)  ; UMax(a,b)
  store i32 %1756, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1757

; <label>:1757                                    ; preds = %1751, %1750
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1758 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1569, i32 addrspace(3)* %1571, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1573, label %1759, label %1765, !dx.controlflow.hints !65

; <label>:1759                                    ; preds = %1757
  %1760 = add i32 %19, 32
  %1761 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1760
  %1762 = load i32, i32 addrspace(3)* %1761, align 4, !tbaa !54
  %1763 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1764 = call i32 @dx.op.binary.i32(i32 39, i32 %1763, i32 %1762)  ; UMax(a,b)
  store i32 %1764, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1765

; <label>:1765                                    ; preds = %1759, %1757
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1581, label %1766, label %1772, !dx.controlflow.hints !66

; <label>:1766                                    ; preds = %1765
  %1767 = add i32 %19, 16
  %1768 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1767
  %1769 = load i32, i32 addrspace(3)* %1768, align 4, !tbaa !54
  %1770 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1771 = call i32 @dx.op.binary.i32(i32 39, i32 %1770, i32 %1769)  ; UMax(a,b)
  store i32 %1771, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1772

; <label>:1772                                    ; preds = %1766, %1765
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1589, label %1773, label %1779, !dx.controlflow.hints !67

; <label>:1773                                    ; preds = %1772
  %1774 = add i32 %19, 8
  %1775 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1774
  %1776 = load i32, i32 addrspace(3)* %1775, align 4, !tbaa !54
  %1777 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1778 = call i32 @dx.op.binary.i32(i32 39, i32 %1777, i32 %1776)  ; UMax(a,b)
  store i32 %1778, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1779

; <label>:1779                                    ; preds = %1773, %1772
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1597, label %1780, label %1786, !dx.controlflow.hints !68

; <label>:1780                                    ; preds = %1779
  %1781 = add i32 %19, 4
  %1782 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1781
  %1783 = load i32, i32 addrspace(3)* %1782, align 4, !tbaa !54
  %1784 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1785 = call i32 @dx.op.binary.i32(i32 39, i32 %1784, i32 %1783)  ; UMax(a,b)
  store i32 %1785, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1786

; <label>:1786                                    ; preds = %1780, %1779
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1605, label %1787, label %1793, !dx.controlflow.hints !69

; <label>:1787                                    ; preds = %1786
  %1788 = add i32 %19, 2
  %1789 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1788
  %1790 = load i32, i32 addrspace(3)* %1789, align 4, !tbaa !54
  %1791 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1792 = call i32 @dx.op.binary.i32(i32 39, i32 %1791, i32 %1790)  ; UMax(a,b)
  store i32 %1792, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1793

; <label>:1793                                    ; preds = %1787, %1786
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1613, label %1794, label %1800, !dx.controlflow.hints !70

; <label>:1794                                    ; preds = %1793
  %1795 = add i32 %19, 1
  %1796 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1795
  %1797 = load i32, i32 addrspace(3)* %1796, align 4, !tbaa !54
  %1798 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1799 = call i32 @dx.op.binary.i32(i32 39, i32 %1798, i32 %1797)  ; UMax(a,b)
  store i32 %1799, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1800

; <label>:1800                                    ; preds = %1794, %1793
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1801 = load i32, i32 addrspace(3)* %1622, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %1570, i32 addrspace(3)* %1571, align 4, !tbaa !54
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1573, label %1802, label %1808, !dx.controlflow.hints !65

; <label>:1802                                    ; preds = %1800
  %1803 = add i32 %19, 32
  %1804 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1803
  %1805 = load i32, i32 addrspace(3)* %1804, align 4, !tbaa !54
  %1806 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1807 = call i32 @dx.op.binary.i32(i32 39, i32 %1806, i32 %1805)  ; UMax(a,b)
  store i32 %1807, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1808

; <label>:1808                                    ; preds = %1802, %1800
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1581, label %1809, label %1815, !dx.controlflow.hints !66

; <label>:1809                                    ; preds = %1808
  %1810 = add i32 %19, 16
  %1811 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1810
  %1812 = load i32, i32 addrspace(3)* %1811, align 4, !tbaa !54
  %1813 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1814 = call i32 @dx.op.binary.i32(i32 39, i32 %1813, i32 %1812)  ; UMax(a,b)
  store i32 %1814, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1815

; <label>:1815                                    ; preds = %1809, %1808
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1589, label %1816, label %1822, !dx.controlflow.hints !67

; <label>:1816                                    ; preds = %1815
  %1817 = add i32 %19, 8
  %1818 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1817
  %1819 = load i32, i32 addrspace(3)* %1818, align 4, !tbaa !54
  %1820 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1821 = call i32 @dx.op.binary.i32(i32 39, i32 %1820, i32 %1819)  ; UMax(a,b)
  store i32 %1821, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1822

; <label>:1822                                    ; preds = %1816, %1815
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1597, label %1823, label %1829, !dx.controlflow.hints !68

; <label>:1823                                    ; preds = %1822
  %1824 = add i32 %19, 4
  %1825 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1824
  %1826 = load i32, i32 addrspace(3)* %1825, align 4, !tbaa !54
  %1827 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1828 = call i32 @dx.op.binary.i32(i32 39, i32 %1827, i32 %1826)  ; UMax(a,b)
  store i32 %1828, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1829

; <label>:1829                                    ; preds = %1823, %1822
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1605, label %1830, label %1836, !dx.controlflow.hints !69

; <label>:1830                                    ; preds = %1829
  %1831 = add i32 %19, 2
  %1832 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1831
  %1833 = load i32, i32 addrspace(3)* %1832, align 4, !tbaa !54
  %1834 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1835 = call i32 @dx.op.binary.i32(i32 39, i32 %1834, i32 %1833)  ; UMax(a,b)
  store i32 %1835, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1836

; <label>:1836                                    ; preds = %1830, %1829
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %1613, label %1837, label %1843, !dx.controlflow.hints !70

; <label>:1837                                    ; preds = %1836
  %1838 = add i32 %19, 1
  %1839 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %1838
  %1840 = load i32, i32 addrspace(3)* %1839, align 4, !tbaa !54
  %1841 = load i32, i32 addrspace(3)* %1571, align 4, !tbaa !54
  %1842 = call i32 @dx.op.binary.i32(i32 39, i32 %1841, i32 %1840)  ; UMax(a,b)
  store i32 %1842, i32 addrspace(3)* %1571, align 4, !tbaa !54
  br label %1843

; <label>:1843                                    ; preds = %1837, %1836
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1709, label %1844, label %1849, !dx.controlflow.hints !71

; <label>:1844                                    ; preds = %1843
  %1845 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !54
  %1846 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %56, i32 12, i32 undef, i32 %1758)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1847 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %56, i32 16, i32 undef, i32 %1801)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1848 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %4, i32 7, i32 %56, i32 20, i32 undef, i32 %1845)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1849

; <label>:1849                                    ; preds = %1844, %1843
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!20 = !{i32 0, %"class.RWStructuredBuffer<GfxIndexedIndirectArgs>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !14}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 2, %"class.RWStructuredBuffer<FxAABB>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !23}
!23 = !{i32 1, i32 24}
!24 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!25 = !{i32 4, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!26 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.FxFrameConsts_decl* undef, !"", i32 0, i32 0, i32 1, i32 464, null}
!29 = !{i32 1, %FxEmitConsts_decl* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!30 = !{void ()* @cs_fx_prerender_unsorted_particles, !"cs_fx_prerender_unsorted_particles", null, !4, !31}
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
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
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

