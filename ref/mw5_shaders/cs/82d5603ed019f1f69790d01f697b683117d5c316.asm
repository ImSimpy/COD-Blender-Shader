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
; shader hash: e44824240d781cd6ec98967cca82717e
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
;   [76 x i8] (type annotation not present)
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
;   [48 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [72 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [64 x i8] (type annotation not present)
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
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t9     1
;                                   texture  struct         r/o      T1             t2     1
;                                   texture  struct         r/o      T2            t11     1
;                                   texture  struct         r/o      T3             t3     1
;                                   texture  struct         r/o      T4             t7     1
;                                   texture  struct         r/o      T5             t0     1
;                                   texture  struct         r/o      T6            t13     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV  struct         r/w      U1             u0     1
;                                       UAV  struct         r/w      U2             u2     1
;                                       UAV  struct         r/w      U3             u3     1
;                                       UAV  struct         r/w      U4             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<DecalVolumeMaterialGPU>" = type { %struct.DecalVolumeMaterialGPU }
%struct.DecalVolumeMaterialGPU = type { i32, i32, i32, i32, i32, i32, i32, <3 x float>, float, i32, i32, i32, float, float, i32, i32, i32 }
%"class.StructuredBuffer<DecalVolumeMaskGPU>" = type { %struct.DecalVolumeMaskGPU }
%struct.DecalVolumeMaskGPU = type { i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>" = type { %struct.GfxImpactMarkDecalVolumeGPU }
%struct.GfxImpactMarkDecalVolumeGPU = type { %struct.DecalVolume, i32, i32, i32 }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%"class.StructuredBuffer<StaticDecalVolumeMapIndex>" = type { %struct.StaticDecalVolumeMapIndex }
%struct.StaticDecalVolumeMapIndex = type { i32 }
%"class.StructuredBuffer<DecalVolumeLodState>" = type { %struct.DecalVolumeLodState }
%struct.DecalVolumeLodState = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, <3 x float>, float }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>" = type { %struct.DecalVolumeStreamingInfoGPU }
%struct.DecalVolumeStreamingInfoGPU = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

define void @cs_decal_volume_cull() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [8 x float], align 4
  %18 = alloca [8 x float], align 4
  %19 = alloca [8 x float], align 4
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = call i32 @dx.op.binary.i32(i32 40, i32 %21, i32 8192)  ; UMin(a,b)
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %26 = icmp ult i32 %14, %22
  br i1 %26, label %27, label %75, !dx.controlflow.hints !30

; <label>:27                                      ; preds = %0
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %14, i32 36)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = and i32 %29, 2047
  %31 = lshr i32 %29, 11
  %32 = and i32 %31, 2047
  %33 = lshr i32 %29, 29
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %30, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = icmp eq i32 %32, 2047
  br i1 %36, label %43, label %37, !dx.controlflow.hints !31

; <label>:37                                      ; preds = %27
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = add i32 %39, %32
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %40, i32 0)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  br label %43

; <label>:43                                      ; preds = %37, %27
  %44 = phi i32 [ %42, %37 ], [ 2047, %27 ]
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %35, i32 24)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = icmp eq i32 %44, 2047
  br i1 %47, label %52, label %48, !dx.controlflow.hints !32

; <label>:48                                      ; preds = %43
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %44, i32 4)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = and i32 %50, 1048576
  br label %52

; <label>:52                                      ; preds = %48, %43
  %53 = phi i32 [ %51, %48 ], [ 0, %43 ]
  %54 = and i32 %46, 196608
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57, !dx.controlflow.hints !33

; <label>:57                                      ; preds = %52
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %392, !dx.controlflow.hints !34

; <label>:61                                      ; preds = %57
  %62 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 7, i32 %35, i32 0, i32 undef, i32 16776959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br i1 %47, label %392, label %63, !dx.controlflow.hints !35

; <label>:63                                      ; preds = %61
  %64 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 %44, i32 0, i32 undef, i32 16776959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %392

; <label>:65                                      ; preds = %52
  %66 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = and i32 %14, 8191
  %70 = shl i32 %68, 13
  %71 = and i32 %70, 2088960
  %72 = shl nuw nsw i32 %33, 21
  %73 = or i32 %72, %69
  %74 = or i32 %73, %71
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %66, i32 0, i32 %74, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %392

; <label>:75                                      ; preds = %0
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 0
  %78 = add i32 %77, %22
  %79 = icmp ult i32 %14, %78
  br i1 %79, label %80, label %392, !dx.controlflow.hints !36

; <label>:80                                      ; preds = %75
  %81 = sub i32 %14, %22
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %81, i32 60)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %81, i32 68)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = lshr i32 %83, 6
  %87 = and i32 %85, 2047
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %87, i32 24)  ; BufferLoad(srv,index,wot)
  %89 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %81, i32 48)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %94, %90
  %98 = fmul fast float %95, %91
  %99 = fmul fast float %96, %92
  %100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %81, i32 0)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = extractvalue %dx.types.ResRet.f32 %100, 1
  %103 = extractvalue %dx.types.ResRet.f32 %100, 2
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %81, i32 12)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 1
  %107 = extractvalue %dx.types.ResRet.f32 %104, 2
  %108 = fmul fast float %105, %97
  %109 = fsub fast float -0.000000e+00, %108
  %110 = fmul fast float %106, %97
  %111 = fsub fast float -0.000000e+00, %110
  %112 = fmul fast float %107, %97
  %113 = fsub fast float -0.000000e+00, %112
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %81, i32 24)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = fmul fast float %115, %98
  %119 = fmul fast float %116, %98
  %120 = fmul fast float %117, %98
  %121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %81, i32 36)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = extractvalue %dx.types.ResRet.f32 %121, 1
  %124 = extractvalue %dx.types.ResRet.f32 %121, 2
  %125 = fmul fast float %122, %99
  %126 = fmul fast float %123, %99
  %127 = fmul fast float %124, %99
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fsub fast float %101, %129
  %133 = fsub fast float %102, %130
  %134 = fsub fast float %103, %131
  %135 = fsub fast float %109, %118
  %136 = fadd fast float %135, %125
  %137 = fadd fast float %136, %132
  %138 = fsub fast float %111, %119
  %139 = fadd fast float %138, %126
  %140 = fadd fast float %139, %133
  %141 = fsub fast float %113, %120
  %142 = fadd fast float %141, %127
  %143 = fadd fast float %142, %134
  %144 = fsub fast float %135, %125
  %145 = fadd fast float %144, %132
  %146 = fsub fast float %138, %126
  %147 = fadd fast float %146, %133
  %148 = fsub fast float %141, %127
  %149 = fadd fast float %148, %134
  %150 = fsub fast float %108, %118
  %151 = fsub fast float %150, %125
  %152 = fadd fast float %151, %132
  %153 = fsub fast float %110, %119
  %154 = fsub fast float %153, %126
  %155 = fadd fast float %154, %133
  %156 = fsub fast float %112, %120
  %157 = fsub fast float %156, %127
  %158 = fadd fast float %157, %134
  %159 = fsub fast float %118, %108
  %160 = fsub fast float %159, %125
  %161 = fadd fast float %160, %132
  %162 = fsub fast float %119, %110
  %163 = fsub fast float %162, %126
  %164 = fadd fast float %163, %133
  %165 = fsub fast float %120, %112
  %166 = fsub fast float %165, %127
  %167 = fadd fast float %166, %134
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %184 = fmul fast float %137, %169
  %185 = call float @dx.op.tertiary.f32(i32 46, float %173, float %140, float %184)  ; FMad(a,b,c)
  %186 = call float @dx.op.tertiary.f32(i32 46, float %177, float %143, float %185)  ; FMad(a,b,c)
  %187 = fadd fast float %186, %181
  %188 = fmul fast float %137, %170
  %189 = call float @dx.op.tertiary.f32(i32 46, float %174, float %140, float %188)  ; FMad(a,b,c)
  %190 = call float @dx.op.tertiary.f32(i32 46, float %178, float %143, float %189)  ; FMad(a,b,c)
  %191 = fadd fast float %190, %182
  %192 = fmul fast float %137, %171
  %193 = call float @dx.op.tertiary.f32(i32 46, float %175, float %140, float %192)  ; FMad(a,b,c)
  %194 = call float @dx.op.tertiary.f32(i32 46, float %179, float %143, float %193)  ; FMad(a,b,c)
  %195 = fadd fast float %194, %183
  %196 = fmul fast float %169, %145
  %197 = call float @dx.op.tertiary.f32(i32 46, float %173, float %147, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float %177, float %149, float %197)  ; FMad(a,b,c)
  %199 = fadd fast float %198, %181
  %200 = fmul fast float %170, %145
  %201 = call float @dx.op.tertiary.f32(i32 46, float %174, float %147, float %200)  ; FMad(a,b,c)
  %202 = call float @dx.op.tertiary.f32(i32 46, float %178, float %149, float %201)  ; FMad(a,b,c)
  %203 = fadd fast float %202, %182
  %204 = fmul fast float %171, %145
  %205 = call float @dx.op.tertiary.f32(i32 46, float %175, float %147, float %204)  ; FMad(a,b,c)
  %206 = call float @dx.op.tertiary.f32(i32 46, float %179, float %149, float %205)  ; FMad(a,b,c)
  %207 = fadd fast float %206, %183
  %208 = fmul fast float %169, %152
  %209 = call float @dx.op.tertiary.f32(i32 46, float %173, float %155, float %208)  ; FMad(a,b,c)
  %210 = call float @dx.op.tertiary.f32(i32 46, float %177, float %158, float %209)  ; FMad(a,b,c)
  %211 = fadd fast float %210, %181
  %212 = fmul fast float %170, %152
  %213 = call float @dx.op.tertiary.f32(i32 46, float %174, float %155, float %212)  ; FMad(a,b,c)
  %214 = call float @dx.op.tertiary.f32(i32 46, float %178, float %158, float %213)  ; FMad(a,b,c)
  %215 = fadd fast float %214, %182
  %216 = fmul fast float %171, %152
  %217 = call float @dx.op.tertiary.f32(i32 46, float %175, float %155, float %216)  ; FMad(a,b,c)
  %218 = call float @dx.op.tertiary.f32(i32 46, float %179, float %158, float %217)  ; FMad(a,b,c)
  %219 = fadd fast float %218, %183
  %220 = fmul fast float %169, %161
  %221 = call float @dx.op.tertiary.f32(i32 46, float %173, float %164, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.tertiary.f32(i32 46, float %177, float %167, float %221)  ; FMad(a,b,c)
  %223 = fadd fast float %222, %181
  %224 = fmul fast float %170, %161
  %225 = call float @dx.op.tertiary.f32(i32 46, float %174, float %164, float %224)  ; FMad(a,b,c)
  %226 = call float @dx.op.tertiary.f32(i32 46, float %178, float %167, float %225)  ; FMad(a,b,c)
  %227 = fadd fast float %226, %182
  %228 = fmul fast float %171, %161
  %229 = call float @dx.op.tertiary.f32(i32 46, float %175, float %164, float %228)  ; FMad(a,b,c)
  %230 = call float @dx.op.tertiary.f32(i32 46, float %179, float %167, float %229)  ; FMad(a,b,c)
  %231 = fadd fast float %230, %183
  %232 = fsub fast float %210, %198
  %233 = fsub fast float %214, %202
  %234 = fsub fast float %218, %206
  %235 = fsub fast float %222, %198
  %236 = fsub fast float %226, %202
  %237 = fsub fast float %230, %206
  %238 = fadd fast float %232, %187
  %239 = fadd fast float %233, %191
  %240 = fadd fast float %234, %195
  %241 = fadd fast float %235, %238
  %242 = fadd fast float %236, %239
  %243 = fadd fast float %237, %240
  %244 = fadd fast float %235, %187
  %245 = fadd fast float %236, %191
  %246 = fadd fast float %237, %195
  %247 = fadd fast float %235, %211
  %248 = fadd fast float %236, %215
  %249 = fadd fast float %237, %219
  %250 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  %251 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 0
  %252 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 0
  store float %187, float* %250, align 4
  store float %191, float* %251, align 4
  store float %195, float* %252, align 4
  %253 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  %254 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 1
  %255 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 1
  store float %238, float* %253, align 4
  store float %239, float* %254, align 4
  store float %240, float* %255, align 4
  %256 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  %257 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 2
  %258 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 2
  store float %241, float* %256, align 4
  store float %242, float* %257, align 4
  store float %243, float* %258, align 4
  %259 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  %260 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 3
  %261 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 3
  store float %244, float* %259, align 4
  store float %245, float* %260, align 4
  store float %246, float* %261, align 4
  %262 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  %263 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 4
  %264 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 4
  store float %199, float* %262, align 4
  store float %203, float* %263, align 4
  store float %207, float* %264, align 4
  %265 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  %266 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 5
  %267 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 5
  store float %211, float* %265, align 4
  store float %215, float* %266, align 4
  store float %219, float* %267, align 4
  %268 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  %269 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 6
  %270 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 6
  store float %247, float* %268, align 4
  store float %248, float* %269, align 4
  store float %249, float* %270, align 4
  %271 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  %272 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 7
  %273 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 7
  store float %223, float* %271, align 4
  store float %227, float* %272, align 4
  store float %231, float* %273, align 4
  br label %274

; <label>:274                                     ; preds = %306, %80
  %275 = phi float [ %195, %80 ], [ %318, %306 ]
  %276 = phi float [ %191, %80 ], [ %316, %306 ]
  %277 = phi float [ %187, %80 ], [ %314, %306 ]
  %278 = phi i32 [ 1, %80 ], [ %312, %306 ]
  %279 = phi i32 [ 1, %80 ], [ %311, %306 ]
  %280 = phi i32 [ 1, %80 ], [ %310, %306 ]
  %281 = phi i32 [ 1, %80 ], [ %309, %306 ]
  %282 = phi i32 [ 1, %80 ], [ %308, %306 ]
  %283 = phi i32 [ 1, %80 ], [ %307, %306 ]
  %284 = phi i32 [ 0, %80 ], [ %304, %306 ]
  %285 = icmp ne i32 %278, 0
  %286 = fsub fast float -0.000000e+00, %275
  %287 = fcmp fast olt float %277, %286
  %288 = and i1 %285, %287
  %289 = icmp ne i32 %279, 0
  %290 = fcmp fast ogt float %277, %275
  %291 = and i1 %289, %290
  %292 = icmp ne i32 %280, 0
  %293 = fcmp fast olt float %276, %286
  %294 = and i1 %292, %293
  %295 = icmp ne i32 %281, 0
  %296 = fcmp fast ogt float %276, %275
  %297 = and i1 %295, %296
  %298 = icmp ne i32 %282, 0
  %299 = fcmp fast olt float %275, %25
  %300 = and i1 %298, %299
  %301 = icmp ne i32 %283, 0
  %302 = fcmp fast ogt float %275, %24
  %303 = and i1 %301, %302
  %304 = add nuw nsw i32 %284, 1
  %305 = icmp eq i32 %304, 8
  br i1 %305, label %319, label %306

; <label>:306                                     ; preds = %274
  %307 = zext i1 %303 to i32
  %308 = zext i1 %300 to i32
  %309 = zext i1 %297 to i32
  %310 = zext i1 %294 to i32
  %311 = zext i1 %291 to i32
  %312 = zext i1 %288 to i32
  %313 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %304
  %314 = load float, float* %313, align 4
  %315 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 %304
  %316 = load float, float* %315, align 4
  %317 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 %304
  %318 = load float, float* %317, align 4
  br label %274

; <label>:319                                     ; preds = %274
  %320 = and i32 %86, 2
  %321 = extractvalue %dx.types.ResRet.i32 %88, 0
  %322 = or i1 %288, %291
  %323 = or i1 %294, %322
  %324 = or i1 %297, %323
  %325 = or i1 %300, %324
  %326 = or i1 %303, %325
  br i1 %326, label %392, label %327, !dx.controlflow.hints !37

; <label>:327                                     ; preds = %319
  %328 = call float @dx.op.binary.f32(i32 35, float %98, float %99)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 35, float %97, float %328)  ; FMax(a,b)
  %330 = fmul fast float %25, %329
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %132, float %133, float %134)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = call float @dx.op.binary.f32(i32 35, float %335, float 0x3F50624DE0000000)  ; FMax(a,b)
  %337 = fdiv fast float %330, %336
  %338 = call float @dx.op.unary.f32(i32 7, float %337)  ; Saturate(value)
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 0, i32 16)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 0
  store float %343, float* %346, align 4
  %347 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 1
  store float %344, float* %347, align 4
  %348 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 2
  store float %345, float* %348, align 4
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 0, i32 48)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float %350, float* %353, align 4
  %354 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float %351, float* %354, align 4
  %355 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float %352, float* %355, align 4
  %356 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %320
  %357 = load float, float* %356, align 4, !tbaa !38
  %358 = fmul fast float %338, %338
  %359 = fmul fast float %358, 0x400921FB60000000
  %360 = fmul fast float %359, %340
  %361 = fmul fast float %360, %341
  %362 = fmul fast float %361, %357
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = fcmp fast olt float %362, %364
  br i1 %365, label %392, label %366, !dx.controlflow.hints !42

; <label>:366                                     ; preds = %327
  %367 = fmul fast float %132, %132
  %368 = fmul fast float %133, %133
  %369 = fadd fast float %367, %368
  %370 = fmul fast float %134, %134
  %371 = fadd fast float %369, %370
  %372 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %373 = fsub fast float %372, %328
  %374 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %375 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %320
  %376 = load float, float* %375, align 4, !tbaa !38
  %377 = fmul fast float %376, %374
  %378 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %379 = fmul fast float %377, %378
  %380 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %381 = fadd fast float %379, %380
  %382 = call float @dx.op.unary.f32(i32 7, float %381)  ; Saturate(value)
  %383 = fcmp fast ugt float %382, 0.000000e+00
  br i1 %383, label %384, label %392, !dx.controlflow.hints !43

; <label>:384                                     ; preds = %366
  %385 = and i32 %321, 196608
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %389, label %387, !dx.controlflow.hints !44

; <label>:387                                     ; preds = %384
  %388 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 7, i32 %87, i32 0, i32 undef, i32 16776959)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %392

; <label>:389                                     ; preds = %384
  %390 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %5, i32 0, i32 1, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %391 = and i32 %81, 8191
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %390, i32 0, i32 %391, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %392

; <label>:392                                     ; preds = %389, %387, %366, %327, %319, %75, %65, %63, %61, %57
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!4 = !{!5, !19, !25, null}
!5 = !{!6, !8, !10, !12, !14, !16, !17}
!6 = !{i32 0, %"class.StructuredBuffer<DecalVolumeMaterialGPU>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 76}
!8 = !{i32 1, %"class.StructuredBuffer<DecalVolumeMaskGPU>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 8}
!10 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{i32 3, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !13}
!13 = !{i32 1, i32 48}
!14 = !{i32 4, %"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !15}
!15 = !{i32 1, i32 72}
!16 = !{i32 5, %"class.StructuredBuffer<StaticDecalVolumeMapIndex>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !11}
!17 = !{i32 6, %"class.StructuredBuffer<DecalVolumeLodState>"* undef, !"", i32 0, i32 13, i32 1, i32 12, i32 0, !18}
!18 = !{i32 1, i32 64}
!19 = !{!20, !21, !22, !23, !24}
!20 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!21 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!22 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!23 = !{i32 3, %"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!24 = !{i32 4, %"class.RWStructuredBuffer<DecalVolumeStreamingInfoGPU>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!25 = !{!26}
!26 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!27 = !{void ()* @cs_decal_volume_cull, !"cs_decal_volume_cull", null, !4, !28}
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
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}

