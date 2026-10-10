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
; shader hash: 41fe3242670d3c873afdb83702c6c4fb
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
;   [4 x i8] (type annotation not present)
;
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
;   [168 x i8] (type annotation not present)
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
;                                   texture  struct         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t9     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture  struct         r/o      T3            t11     1
;                                   texture  struct         r/o      T4             t3     1
;                                   texture  struct         r/o      T5             t6     1
;                                   texture  struct         r/o      T6             t7     1
;                                   texture  struct         r/o      T7             t8     1
;                                   texture  struct         r/o      T8             t0     1
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;                                       UAV    byte         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<DecalVolumeMaterialGPU>" = type { %struct.DecalVolumeMaterialGPU }
%struct.DecalVolumeMaterialGPU = type { i32, i32, i32, i32, i32, i32, i32, <3 x float>, float, i32, i32, i32, float, float, i32, i32, i32 }
%"class.StructuredBuffer<DecalVolumeMaskGPU>" = type { %struct.DecalVolumeMaskGPU }
%struct.DecalVolumeMaskGPU = type { i32, i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>" = type { %struct.GfxImpactMarkDecalVolumeGPU }
%struct.GfxImpactMarkDecalVolumeGPU = type { %struct.DecalVolume, i32, i32, i32 }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%"class.StructuredBuffer<StaticDecalVolumeMapIndex>" = type { %struct.StaticDecalVolumeMapIndex }
%struct.StaticDecalVolumeMapIndex = type { i32 }
%"class.RWStructuredBuffer<MaterialDebugInfo>" = type { %struct.MaterialDebugInfo }
%struct.MaterialDebugInfo = type { i32, i32, <2 x float>, <3 x float>, <2 x float>, float, float, float, %struct.DecalVolume, %struct.DecalVolumeStreamingData, %struct.StaticDecalVolumeMapIndex, i32, i32, i32 }
%struct.DecalVolumeStreamingData = type { float, float, float, %struct.DecalVolumeStreamingMaterialData, %struct.DecalVolumeStreamingMaterialData }
%struct.DecalVolumeStreamingMaterialData = type { float, float, float, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

define void @cs_decal_volume_gather_materials() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [8 x float], align 4
  %19 = alloca [8 x float], align 4
  %20 = alloca [8 x float], align 4
  %21 = alloca [8 x float], align 4
  %22 = alloca [8 x float], align 4
  %23 = alloca [8 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = add i32 %28, %26
  %30 = icmp ult i32 %14, %29
  br i1 %30, label %31, label %968, !dx.controlflow.hints !30

; <label>:31                                      ; preds = %0
  %32 = icmp ult i32 %14, %26
  br i1 %32, label %33, label %226, !dx.controlflow.hints !31

; <label>:33                                      ; preds = %31
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = and i32 %35, 8191
  %37 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 12)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 16)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.i32 %43, 0
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 20)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 24)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 28)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 36)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %36, i32 40)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = lshr i32 %42, 30
  %56 = and i32 %42, 1023
  %57 = uitofp i32 %56 to float
  %58 = lshr i32 %42, 10
  %59 = and i32 %58, 1023
  %60 = uitofp i32 %59 to float
  %61 = lshr i32 %42, 20
  %62 = and i32 %61, 511
  %63 = uitofp i32 %62 to float
  %64 = fmul fast float %57, 0x3F56A64800000000
  %65 = fadd fast float %64, 0xBFE6A09E60000000
  %66 = fmul fast float %60, 0x3F56A64800000000
  %67 = fadd fast float %66, 0xBFE6A09E60000000
  %68 = fmul fast float %63, 0x3F66ABF460000000
  %69 = fadd fast float %68, 0xBFE6A09E60000000
  %70 = call float @dx.op.dot3.f32(i32 55, float %65, float %67, float %69, float %65, float %67, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %71 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %72 = fsub fast float 1.000000e+00, %71
  %73 = call float @dx.op.unary.f32(i32 24, float %72)  ; Sqrt(value)
  %74 = icmp eq i32 %55, 0
  br i1 %74, label %81, label %75, !dx.controlflow.hints !32

; <label>:75                                      ; preds = %33
  %76 = icmp eq i32 %55, 1
  br i1 %76, label %81, label %77, !dx.controlflow.hints !33

; <label>:77                                      ; preds = %75
  %78 = icmp eq i32 %55, 2
  %79 = select i1 %78, float %73, float %69
  %80 = select i1 %78, float %69, float %73
  br label %81

; <label>:81                                      ; preds = %77, %75, %33
  %82 = phi float [ %73, %33 ], [ %65, %75 ], [ %65, %77 ]
  %83 = phi float [ %65, %33 ], [ %73, %75 ], [ %67, %77 ]
  %84 = phi float [ %67, %33 ], [ %67, %75 ], [ %79, %77 ]
  %85 = phi float [ %69, %33 ], [ %69, %75 ], [ %80, %77 ]
  %86 = fmul fast float %83, %83
  %87 = fmul fast float %86, 2.000000e+00
  %88 = fsub fast float 1.000000e+00, %87
  %89 = fmul fast float %84, %84
  %90 = fmul fast float %89, 2.000000e+00
  %91 = fsub fast float %88, %90
  %92 = fmul fast float %82, 2.000000e+00
  %93 = fmul fast float %92, %83
  %94 = fmul fast float %84, 2.000000e+00
  %95 = fmul fast float %94, %85
  %96 = fsub fast float %93, %95
  %97 = fmul fast float %84, %82
  %98 = fmul fast float %85, %83
  %99 = fadd fast float %98, %97
  %100 = fmul fast float %99, 2.000000e+00
  %101 = fmul fast float %83, %82
  %102 = fmul fast float %85, %84
  %103 = fadd fast float %102, %101
  %104 = fmul fast float %82, %82
  %105 = fmul fast float %104, 2.000000e+00
  %106 = fsub fast float 1.000000e+00, %105
  %107 = fsub fast float %106, %90
  %108 = fmul fast float %83, 2.000000e+00
  %109 = fmul fast float %108, %84
  %110 = fmul fast float %92, %85
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %92, %84
  %113 = fmul fast float %108, %85
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %84, %83
  %116 = fmul fast float %85, %82
  %117 = fadd fast float %116, %115
  %118 = fmul fast float %117, 2.000000e+00
  %119 = fsub fast float %106, %87
  %120 = and i32 %54, 512
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %121, float 1.000000e+00, float -1.000000e+00
  %123 = and i32 %54, 1024
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %124, float -1.000000e+00, float 1.000000e+00
  %126 = fmul fast float %122, %125
  %127 = fmul fast float %91, %126
  %128 = fmul fast float %126, 2.000000e+00
  %129 = fmul fast float %128, %103
  %130 = fmul fast float %114, %126
  %131 = shl i32 %44, 4
  %132 = and i32 %131, 32752
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = lshr i32 %44, 7
  %135 = and i32 %134, 32752
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135)  ; LegacyF16ToF32(value)
  %137 = lshr i32 %44, 22
  %138 = shl nuw nsw i32 %137, 5
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = and i32 %46, 255
  %141 = lshr i32 %46, 8
  %142 = and i32 %141, 255
  %143 = lshr i32 %46, 16
  %144 = and i32 %143, 255
  %145 = lshr i32 %46, 24
  %146 = uitofp i32 %144 to float
  %147 = fmul fast float %146, 0x3F70101020000000
  %148 = uitofp i32 %142 to float
  %149 = fmul fast float %148, 0x3F70101020000000
  %150 = uitofp i32 %140 to float
  %151 = fmul fast float %150, 0x3F70101020000000
  %152 = fcmp fast oge float %151, %149
  %153 = fcmp fast ole float %147, 0.000000e+00
  %154 = or i1 %152, %153
  %155 = select i1 %154, float 1.000000e+00, float %147
  %156 = select i1 %154, float 1.000000e+00, float %149
  %157 = select i1 %154, float 0.000000e+00, float %151
  %158 = fsub fast float %156, %157
  %159 = fdiv fast float 1.000000e+00, %158
  %160 = fmul fast float %159, %155
  %161 = fmul fast float %157, %155
  %162 = fmul fast float %161, %159
  %163 = fsub fast float -0.000000e+00, %162
  %164 = uitofp i32 %145 to float
  %165 = fmul fast float %164, 0x3F70101020000000
  %166 = fcmp fast ogt float %165, 0.000000e+00
  %167 = fdiv fast float 0x406FDFFFE0000000, %164
  %168 = fsub fast float -0.000000e+00, %167
  %169 = select i1 %166, float %168, float -1.000000e+05
  %170 = lshr i32 %54, 16
  %171 = and i32 %170, 255
  %172 = lshr i32 %54, 24
  %173 = uitofp i32 %171 to float
  %174 = fmul fast float %173, 0x3F70101020000000
  %175 = fcmp fast ogt float %174, 0.000000e+00
  %176 = fdiv fast float 0x406FDFFFE0000000, %173
  %177 = fsub fast float -0.000000e+00, %176
  %178 = select i1 %175, float %177, float -1.000000e+05
  %179 = uitofp i32 %172 to float
  %180 = fmul fast float %179, 0x3F70101020000000
  %181 = fcmp fast ogt float %180, 0.000000e+00
  %182 = fdiv fast float 0x406FDFFFE0000000, %179
  %183 = fsub fast float -0.000000e+00, %182
  %184 = select i1 %181, float %183, float -1.000000e+05
  %185 = and i32 %48, 65535
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = lshr i32 %48, 16
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = and i32 %50, 65535
  %190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189)  ; LegacyF16ToF32(value)
  %191 = lshr i32 %50, 16
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 0
  %194 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 0
  %195 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 0
  store float %127, float* %193, align 4
  store float %129, float* %194, align 4
  store float %130, float* %195, align 4
  %196 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 1
  %197 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 1
  %198 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 1
  store float %96, float* %196, align 4
  store float %107, float* %197, align 4
  store float %118, float* %198, align 4
  %199 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 2
  %200 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 2
  %201 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 2
  store float %100, float* %199, align 4
  store float %111, float* %200, align 4
  store float %119, float* %201, align 4
  %202 = fmul fast float %186, %186
  %203 = fmul fast float %188, %188
  %204 = fadd fast float %203, %202
  %205 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %206 = fmul fast float %190, %190
  %207 = fmul fast float %192, %192
  %208 = fadd fast float %207, %206
  %209 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %210 = and i32 %52, 2047
  %211 = lshr i32 %52, 11
  %212 = and i32 %211, 2047
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %210, i32 0)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = icmp eq i32 %212, 2047
  br i1 %215, label %222, label %216, !dx.controlflow.hints !34

; <label>:216                                     ; preds = %81
  %217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.i32 %217, 1
  %219 = add i32 %218, %212
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %219, i32 0)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  br label %222

; <label>:222                                     ; preds = %216, %81
  %223 = phi i32 [ %221, %216 ], [ 2047, %81 ]
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  br label %268

; <label>:226                                     ; preds = %31
  %227 = sub i32 %14, %26
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %227, i32 0)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 8191
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %230, i32 60)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %230, i32 68)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %230, i32 0)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 0
  %240 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 0
  %241 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 0
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %230, i32 12)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  store float %243, float* %239, align 4
  store float %244, float* %240, align 4
  store float %245, float* %241, align 4
  %246 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 1
  %247 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 1
  %248 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 1
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %230, i32 24)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  store float %250, float* %246, align 4
  store float %251, float* %247, align 4
  store float %252, float* %248, align 4
  %253 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 2
  %254 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 2
  %255 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 2
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %230, i32 36)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  store float %257, float* %253, align 4
  store float %258, float* %254, align 4
  store float %259, float* %255, align 4
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %230, i32 48)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = and i32 %234, 2047
  %267 = lshr i32 %232, 16
  br label %268

; <label>:268                                     ; preds = %226, %222
  %269 = phi float [ %119, %222 ], [ %259, %226 ]
  %270 = phi float [ %111, %222 ], [ %258, %226 ]
  %271 = phi float [ %100, %222 ], [ %257, %226 ]
  %272 = phi float [ %118, %222 ], [ %252, %226 ]
  %273 = phi float [ %107, %222 ], [ %251, %226 ]
  %274 = phi float [ %96, %222 ], [ %250, %226 ]
  %275 = phi float [ %130, %222 ], [ %245, %226 ]
  %276 = phi float [ %129, %222 ], [ %244, %226 ]
  %277 = phi float [ %127, %222 ], [ %243, %226 ]
  %278 = phi float [ %133, %222 ], [ %261, %226 ]
  %279 = phi float [ %136, %222 ], [ %262, %226 ]
  %280 = phi float [ %139, %222 ], [ %263, %226 ]
  %281 = phi float [ %38, %222 ], [ %236, %226 ]
  %282 = phi float [ %39, %222 ], [ %237, %226 ]
  %283 = phi float [ %40, %222 ], [ %238, %226 ]
  %284 = phi i32 [ %214, %222 ], [ %266, %226 ]
  %285 = phi i32 [ %223, %222 ], [ 2047, %226 ]
  %286 = phi float [ %205, %222 ], [ 1.000000e+00, %226 ]
  %287 = phi float [ %209, %222 ], [ 1.000000e+00, %226 ]
  %288 = phi float [ %178, %222 ], [ -1.000000e+05, %226 ]
  %289 = phi float [ %184, %222 ], [ -1.000000e+05, %226 ]
  %290 = phi float [ %169, %222 ], [ %265, %226 ]
  %291 = phi float [ %160, %222 ], [ 1.000000e+00, %226 ]
  %292 = phi float [ %163, %222 ], [ 0.000000e+00, %226 ]
  %293 = phi i32 [ 0, %222 ], [ 1, %226 ]
  %294 = phi i32 [ %52, %222 ], [ %234, %226 ]
  %295 = phi i32 [ -1, %222 ], [ %267, %226 ]
  %296 = phi i32 [ %225, %222 ], [ %227, %226 ]
  %297 = lshr i32 %294, 24
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %301 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %302 = fmul fast float %299, %278
  %303 = fmul fast float %300, %279
  %304 = fmul fast float %301, %280
  %305 = fmul fast float %302, %277
  %306 = fsub fast float -0.000000e+00, %305
  %307 = fmul fast float %276, %302
  %308 = fsub fast float -0.000000e+00, %307
  %309 = fmul fast float %275, %302
  %310 = fsub fast float -0.000000e+00, %309
  %311 = fmul fast float %274, %303
  %312 = fmul fast float %273, %303
  %313 = fmul fast float %272, %303
  %314 = fmul fast float %271, %304
  %315 = fmul fast float %270, %304
  %316 = fmul fast float %269, %304
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fsub fast float %281, %318
  %322 = fsub fast float %282, %319
  %323 = fsub fast float %283, %320
  %324 = mul i32 %14, 56
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %324, i32 undef, float %321, float %322, float %323, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %325 = add i32 %324, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %325, i32 undef, float %305, float %307, float %309, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %326 = add i32 %324, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %326, i32 undef, float %311, float %312, float %313, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %327 = add i32 %324, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %327, i32 undef, float %314, float %315, float %316, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %328 = add i32 %324, 48
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %328, i32 undef, i32 %296, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %329 = add i32 %324, 52
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %329, i32 undef, i32 %293, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 0
  store float %278, float* %338, align 4
  %339 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 1
  store float %279, float* %339, align 4
  %340 = getelementptr inbounds [3 x float], [3 x float]* %24, i32 0, i32 2
  store float %280, float* %340, align 4
  %341 = fsub fast float %281, %335
  %342 = fsub fast float %282, %336
  %343 = fsub fast float %283, %337
  br label %344

; <label>:344                                     ; preds = %384, %268
  %345 = phi float [ %278, %268 ], [ %392, %384 ]
  %346 = phi float [ %275, %268 ], [ %390, %384 ]
  %347 = phi float [ %276, %268 ], [ %388, %384 ]
  %348 = phi float [ %277, %268 ], [ %386, %384 ]
  %349 = phi float [ 1.000000e+09, %268 ], [ %380, %384 ]
  %350 = phi float [ -1.000000e+09, %268 ], [ %381, %384 ]
  %351 = phi i32 [ 0, %268 ], [ %382, %384 ]
  %352 = call float @dx.op.dot3.f32(i32 55, float %348, float %347, float %346, float %341, float %342, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = call float @dx.op.dot3.f32(i32 55, float %348, float %347, float %346, float %331, float %332, float %333)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %355 = fcmp fast ogt float %354, 0x3F1A36E2E0000000
  br i1 %355, label %356, label %372, !dx.controlflow.hints !35

; <label>:356                                     ; preds = %344
  %357 = fdiv fast float 1.000000e+00, %353
  %358 = fadd fast float %352, %345
  %359 = fmul fast float %357, %358
  %360 = fsub fast float %352, %345
  %361 = fmul fast float %357, %360
  %362 = fcmp fast ogt float %359, %361
  %363 = select i1 %362, float %361, float %359
  %364 = select i1 %362, float %359, float %361
  %365 = fcmp fast ogt float %363, %350
  %366 = select i1 %365, float %363, float %350
  %367 = fcmp fast olt float %364, %349
  %368 = select i1 %367, float %364, float %349
  %369 = fcmp fast ogt float %366, %368
  %370 = fcmp fast olt float %368, 0.000000e+00
  %371 = or i1 %369, %370
  br i1 %371, label %396, label %379, !dx.controlflow.hints !36

; <label>:372                                     ; preds = %344
  %373 = fsub fast float -0.000000e+00, %345
  %374 = fsub fast float %373, %352
  %375 = fcmp fast ogt float %374, 0.000000e+00
  %376 = fsub fast float %345, %352
  %377 = fcmp fast olt float %376, 0.000000e+00
  %378 = or i1 %375, %377
  br i1 %378, label %396, label %379, !dx.controlflow.hints !37

; <label>:379                                     ; preds = %372, %356
  %380 = phi float [ %349, %372 ], [ %368, %356 ]
  %381 = phi float [ %350, %372 ], [ %366, %356 ]
  %382 = add nuw nsw i32 %351, 1
  %383 = icmp slt i32 %382, 3
  br i1 %383, label %384, label %393

; <label>:384                                     ; preds = %379
  %385 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %382
  %386 = load float, float* %385, align 4
  %387 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %382
  %388 = load float, float* %387, align 4
  %389 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %382
  %390 = load float, float* %389, align 4
  %391 = getelementptr [3 x float], [3 x float]* %24, i32 0, i32 %382
  %392 = load float, float* %391, align 4, !tbaa !38
  br label %344

; <label>:393                                     ; preds = %379
  %394 = fcmp fast ogt float %381, 0.000000e+00
  br i1 %394, label %397, label %395, !dx.controlflow.hints !42

; <label>:395                                     ; preds = %393
  br label %397

; <label>:396                                     ; preds = %372, %356
  br label %397

; <label>:397                                     ; preds = %396, %395, %393
  %398 = phi float [ %380, %395 ], [ %381, %393 ], [ -1.000000e+00, %396 ]
  %399 = fcmp fast ogt float %398, 0.000000e+00
  br i1 %399, label %400, label %968, !dx.controlflow.hints !43

; <label>:400                                     ; preds = %397
  %401 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %402 = icmp ugt i32 %401, 7
  br i1 %402, label %968, label %403, !dx.controlflow.hints !44

; <label>:403                                     ; preds = %400
  %404 = fsub fast float %306, %311
  %405 = fadd fast float %404, %314
  %406 = fadd fast float %405, %321
  %407 = fsub fast float %308, %312
  %408 = fadd fast float %407, %315
  %409 = fadd fast float %408, %322
  %410 = fsub fast float %310, %313
  %411 = fadd fast float %410, %316
  %412 = fadd fast float %411, %323
  %413 = fsub fast float %404, %314
  %414 = fadd fast float %413, %321
  %415 = fsub fast float %407, %315
  %416 = fadd fast float %415, %322
  %417 = fsub fast float %410, %316
  %418 = fadd fast float %417, %323
  %419 = fsub fast float %305, %311
  %420 = fsub fast float %419, %314
  %421 = fadd fast float %420, %321
  %422 = fsub fast float %307, %312
  %423 = fsub fast float %422, %315
  %424 = fadd fast float %423, %322
  %425 = fsub fast float %309, %313
  %426 = fsub fast float %425, %316
  %427 = fadd fast float %426, %323
  %428 = fsub fast float %311, %305
  %429 = fsub fast float %428, %314
  %430 = fadd fast float %429, %321
  %431 = fsub fast float %312, %307
  %432 = fsub fast float %431, %315
  %433 = fadd fast float %432, %322
  %434 = fsub fast float %313, %309
  %435 = fsub fast float %434, %316
  %436 = fadd fast float %435, %323
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = extractvalue %dx.types.CBufRet.f32 %449, 1
  %452 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %453 = fmul fast float %438, %406
  %454 = call float @dx.op.tertiary.f32(i32 46, float %442, float %409, float %453)  ; FMad(a,b,c)
  %455 = call float @dx.op.tertiary.f32(i32 46, float %446, float %412, float %454)  ; FMad(a,b,c)
  %456 = fadd fast float %455, %450
  %457 = fmul fast float %439, %406
  %458 = call float @dx.op.tertiary.f32(i32 46, float %443, float %409, float %457)  ; FMad(a,b,c)
  %459 = call float @dx.op.tertiary.f32(i32 46, float %447, float %412, float %458)  ; FMad(a,b,c)
  %460 = fadd fast float %459, %451
  %461 = fmul fast float %440, %406
  %462 = call float @dx.op.tertiary.f32(i32 46, float %444, float %409, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %448, float %412, float %462)  ; FMad(a,b,c)
  %464 = fadd fast float %463, %452
  %465 = fmul fast float %438, %414
  %466 = call float @dx.op.tertiary.f32(i32 46, float %442, float %416, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.tertiary.f32(i32 46, float %446, float %418, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %467, %450
  %469 = fmul fast float %439, %414
  %470 = call float @dx.op.tertiary.f32(i32 46, float %443, float %416, float %469)  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float %447, float %418, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %471, %451
  %473 = fmul fast float %440, %414
  %474 = call float @dx.op.tertiary.f32(i32 46, float %444, float %416, float %473)  ; FMad(a,b,c)
  %475 = call float @dx.op.tertiary.f32(i32 46, float %448, float %418, float %474)  ; FMad(a,b,c)
  %476 = fadd fast float %475, %452
  %477 = fmul fast float %438, %421
  %478 = call float @dx.op.tertiary.f32(i32 46, float %442, float %424, float %477)  ; FMad(a,b,c)
  %479 = call float @dx.op.tertiary.f32(i32 46, float %446, float %427, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %479, %450
  %481 = fmul fast float %439, %421
  %482 = call float @dx.op.tertiary.f32(i32 46, float %443, float %424, float %481)  ; FMad(a,b,c)
  %483 = call float @dx.op.tertiary.f32(i32 46, float %447, float %427, float %482)  ; FMad(a,b,c)
  %484 = fadd fast float %483, %451
  %485 = fmul fast float %440, %421
  %486 = call float @dx.op.tertiary.f32(i32 46, float %444, float %424, float %485)  ; FMad(a,b,c)
  %487 = call float @dx.op.tertiary.f32(i32 46, float %448, float %427, float %486)  ; FMad(a,b,c)
  %488 = fadd fast float %487, %452
  %489 = fmul fast float %438, %430
  %490 = call float @dx.op.tertiary.f32(i32 46, float %442, float %433, float %489)  ; FMad(a,b,c)
  %491 = call float @dx.op.tertiary.f32(i32 46, float %446, float %436, float %490)  ; FMad(a,b,c)
  %492 = fadd fast float %491, %450
  %493 = fmul fast float %439, %430
  %494 = call float @dx.op.tertiary.f32(i32 46, float %443, float %433, float %493)  ; FMad(a,b,c)
  %495 = call float @dx.op.tertiary.f32(i32 46, float %447, float %436, float %494)  ; FMad(a,b,c)
  %496 = fadd fast float %495, %451
  %497 = fmul fast float %440, %430
  %498 = call float @dx.op.tertiary.f32(i32 46, float %444, float %433, float %497)  ; FMad(a,b,c)
  %499 = call float @dx.op.tertiary.f32(i32 46, float %448, float %436, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %499, %452
  %501 = fsub fast float %479, %467
  %502 = fsub fast float %483, %471
  %503 = fsub fast float %487, %475
  %504 = fsub fast float %491, %467
  %505 = fsub fast float %495, %471
  %506 = fsub fast float %499, %475
  %507 = fadd fast float %501, %456
  %508 = fadd fast float %502, %460
  %509 = fadd fast float %503, %464
  %510 = fadd fast float %504, %507
  %511 = fadd fast float %505, %508
  %512 = fadd fast float %506, %509
  %513 = fadd fast float %504, %456
  %514 = fadd fast float %505, %460
  %515 = fadd fast float %506, %464
  %516 = fadd fast float %504, %480
  %517 = fadd fast float %505, %484
  %518 = fadd fast float %506, %488
  %519 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 0
  %520 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 0
  %521 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 0
  store float %456, float* %519, align 4
  store float %460, float* %520, align 4
  store float %464, float* %521, align 4
  %522 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 1
  %523 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 1
  %524 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 1
  store float %507, float* %522, align 4
  store float %508, float* %523, align 4
  store float %509, float* %524, align 4
  %525 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 2
  %526 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 2
  %527 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 2
  store float %510, float* %525, align 4
  store float %511, float* %526, align 4
  store float %512, float* %527, align 4
  %528 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 3
  %529 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 3
  %530 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 3
  store float %513, float* %528, align 4
  store float %514, float* %529, align 4
  store float %515, float* %530, align 4
  %531 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 4
  %532 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 4
  %533 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 4
  store float %468, float* %531, align 4
  store float %472, float* %532, align 4
  store float %476, float* %533, align 4
  %534 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 5
  %535 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 5
  %536 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 5
  store float %480, float* %534, align 4
  store float %484, float* %535, align 4
  store float %488, float* %536, align 4
  %537 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 6
  %538 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 6
  %539 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 6
  store float %516, float* %537, align 4
  store float %517, float* %538, align 4
  store float %518, float* %539, align 4
  %540 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 7
  %541 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 7
  %542 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 7
  store float %492, float* %540, align 4
  store float %496, float* %541, align 4
  store float %500, float* %542, align 4
  %543 = fdiv fast float 1.000000e+00, %464
  %544 = fmul fast float %543, %456
  %545 = fmul fast float %543, %460
  br label %546

; <label>:546                                     ; preds = %564, %403
  %547 = phi float [ %509, %403 ], [ %570, %564 ]
  %548 = phi float [ %508, %403 ], [ %568, %564 ]
  %549 = phi float [ %507, %403 ], [ %566, %564 ]
  %550 = phi float [ %544, %403 ], [ %558, %564 ]
  %551 = phi float [ %545, %403 ], [ %559, %564 ]
  %552 = phi float [ %544, %403 ], [ %560, %564 ]
  %553 = phi float [ %545, %403 ], [ %561, %564 ]
  %554 = phi i32 [ 1, %403 ], [ %562, %564 ]
  %555 = fdiv fast float 1.000000e+00, %547
  %556 = fmul fast float %555, %549
  %557 = fmul fast float %555, %548
  %558 = call float @dx.op.binary.f32(i32 36, float %556, float %550)  ; FMin(a,b)
  %559 = call float @dx.op.binary.f32(i32 36, float %557, float %551)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float %556, float %552)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float %557, float %553)  ; FMax(a,b)
  %562 = add nuw nsw i32 %554, 1
  %563 = icmp eq i32 %562, 8
  br i1 %563, label %571, label %564

; <label>:564                                     ; preds = %546
  %565 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 %562
  %566 = load float, float* %565, align 4
  %567 = getelementptr [8 x float], [8 x float]* %22, i32 0, i32 %562
  %568 = load float, float* %567, align 4
  %569 = getelementptr [8 x float], [8 x float]* %23, i32 0, i32 %562
  %570 = load float, float* %569, align 4
  br label %546

; <label>:571                                     ; preds = %546
  %572 = fsub fast float %560, %558
  %573 = fsub fast float %561, %559
  %574 = fmul fast float %572, 5.000000e-01
  %575 = fmul fast float %573, 5.000000e-01
  %576 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %577 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = fmul fast float %577, %576
  %582 = fmul fast float %581, %579
  %583 = fmul fast float %582, %580
  %584 = call float @dx.op.binary.f32(i32 35, float %303, float %304)  ; FMax(a,b)
  %585 = call float @dx.op.binary.f32(i32 35, float %302, float %584)  ; FMax(a,b)
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = fmul fast float %587, %585
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 0
  %591 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %592 = extractvalue %dx.types.CBufRet.f32 %589, 2
  %593 = call float @dx.op.dot3.f32(i32 55, float %590, float %591, float %592, float %321, float %322, float %323)  ; Dot3(ax,ay,az,bx,by,bz)
  %594 = call float @dx.op.binary.f32(i32 35, float %593, float 0x3F50624DE0000000)  ; FMax(a,b)
  %595 = fdiv fast float %588, %594
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = fmul fast float %596, %596
  %598 = fmul fast float %597, 0x400921FB60000000
  %599 = fmul fast float %598, %579
  %600 = fmul fast float %599, %580
  %601 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %602 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.i32 %603, 0
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %673, label %606

; <label>:606                                     ; preds = %571
  br label %607

; <label>:607                                     ; preds = %665, %606
  %608 = phi float [ %667, %665 ], [ 1.000000e+07, %606 ]
  %609 = phi i32 [ %668, %665 ], [ 0, %606 ]
  %610 = add i32 %609, 39
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %610)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %614 = add i32 %609, 31
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %614)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = add i32 %609, 23
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %616)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %621 = fsub fast float %321, %618
  %622 = fsub fast float %322, %619
  %623 = fsub fast float %323, %620
  %624 = fmul fast float %621, %621
  %625 = fmul fast float %622, %622
  %626 = fadd fast float %624, %625
  %627 = fmul fast float %623, %623
  %628 = fadd fast float %626, %627
  %629 = call float @dx.op.unary.f32(i32 24, float %628)  ; Sqrt(value)
  %630 = fsub fast float %629, %585
  %631 = call float @dx.op.binary.f32(i32 35, float %630, float 0.000000e+00)  ; FMax(a,b)
  %632 = fdiv fast float %631, %629
  %633 = fmul fast float %631, %631
  %634 = fcmp fast ogt float %613, 1.000000e+00
  %635 = fcmp fast ogt float %633, 0.000000e+00
  %636 = and i1 %634, %635
  br i1 %636, label %637, label %665, !dx.controlflow.hints !45

; <label>:637                                     ; preds = %607
  %638 = fmul fast float %632, %623
  %639 = fmul fast float %632, %622
  %640 = fmul fast float %632, %621
  %641 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %642 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %643 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %644 = call float @dx.op.dot3.f32(i32 55, float %640, float %639, float %638, float %643, float %642, float %641)  ; Dot3(ax,ay,az,bx,by,bz)
  %645 = fcmp fast ogt float %644, 0.000000e+00
  br i1 %645, label %646, label %665, !dx.controlflow.hints !46

; <label>:646                                     ; preds = %637
  %647 = fmul fast float %640, %640
  %648 = fmul fast float %639, %639
  %649 = fadd fast float %647, %648
  %650 = fmul fast float %638, %638
  %651 = fadd fast float %649, %650
  %652 = call float @dx.op.unary.f32(i32 24, float %651)  ; Sqrt(value)
  %653 = fmul fast float %652, %612
  %654 = fcmp fast ogt float %644, %653
  br i1 %654, label %655, label %665, !dx.controlflow.hints !47

; <label>:655                                     ; preds = %646
  %656 = fsub fast float %644, %653
  %657 = fsub fast float %652, %653
  %658 = fdiv fast float %656, %657
  %659 = fadd fast float %613, -1.000000e+00
  %660 = fmul fast float %658, %658
  %661 = fmul fast float %660, %659
  %662 = fadd fast float %661, 1.000000e+00
  %663 = fmul fast float %662, %662
  %664 = fdiv fast float %633, %663
  br label %665

; <label>:665                                     ; preds = %655, %646, %637, %607
  %666 = phi float [ %633, %607 ], [ %664, %655 ], [ %633, %646 ], [ %633, %637 ]
  %667 = call float @dx.op.binary.f32(i32 36, float %608, float %666)  ; FMin(a,b)
  %668 = add i32 %609, 1
  %669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.i32 %669, 0
  %671 = icmp ult i32 %668, %670
  br i1 %671, label %607, label %672

; <label>:672                                     ; preds = %665
  br label %673

; <label>:673                                     ; preds = %672, %571
  %674 = phi float [ 1.000000e+07, %571 ], [ %667, %672 ]
  %675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.i32 %675, 0
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %849, label %678

; <label>:678                                     ; preds = %673
  br label %679

; <label>:679                                     ; preds = %841, %678
  %680 = phi float [ %843, %841 ], [ 1.000000e+07, %678 ]
  %681 = phi i32 [ %844, %841 ], [ 0, %678 ]
  %682 = fadd fast float %419, %314
  %683 = fadd fast float %682, %321
  %684 = fadd fast float %422, %315
  %685 = fadd fast float %684, %322
  %686 = fadd fast float %425, %316
  %687 = fadd fast float %686, %323
  %688 = fadd fast float %311, %305
  %689 = fadd fast float %688, %314
  %690 = fadd fast float %689, %321
  %691 = fadd fast float %312, %307
  %692 = fadd fast float %691, %315
  %693 = fadd fast float %692, %322
  %694 = fadd fast float %313, %309
  %695 = fadd fast float %694, %316
  %696 = fadd fast float %695, %323
  %697 = fadd fast float %428, %314
  %698 = fadd fast float %697, %321
  %699 = fadd fast float %431, %315
  %700 = fadd fast float %699, %322
  %701 = fadd fast float %434, %316
  %702 = fadd fast float %701, %323
  %703 = fsub fast float %688, %314
  %704 = fadd fast float %703, %321
  %705 = fsub fast float %691, %315
  %706 = fadd fast float %705, %322
  %707 = fsub fast float %694, %316
  %708 = fadd fast float %707, %323
  %709 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 0
  %710 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 0
  %711 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 0
  store float %406, float* %709, align 4
  store float %409, float* %710, align 4
  store float %412, float* %711, align 4
  %712 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 4
  %713 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 4
  %714 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 4
  store float %414, float* %712, align 4
  store float %416, float* %713, align 4
  store float %418, float* %714, align 4
  %715 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 5
  %716 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 5
  %717 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 5
  store float %421, float* %715, align 4
  store float %424, float* %716, align 4
  store float %427, float* %717, align 4
  %718 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 7
  %719 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 7
  %720 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 7
  store float %430, float* %718, align 4
  store float %433, float* %719, align 4
  store float %436, float* %720, align 4
  %721 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 1
  %722 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 1
  %723 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 1
  store float %683, float* %721, align 4
  store float %685, float* %722, align 4
  store float %687, float* %723, align 4
  %724 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 2
  %725 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 2
  %726 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 2
  store float %690, float* %724, align 4
  store float %693, float* %725, align 4
  store float %696, float* %726, align 4
  %727 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 3
  %728 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 3
  %729 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 3
  store float %698, float* %727, align 4
  store float %700, float* %728, align 4
  store float %702, float* %729, align 4
  %730 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 6
  %731 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 6
  %732 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 6
  store float %704, float* %730, align 4
  store float %706, float* %731, align 4
  store float %708, float* %732, align 4
  br label %733

; <label>:733                                     ; preds = %752, %679
  %734 = phi float [ %687, %679 ], [ %758, %752 ]
  %735 = phi float [ %685, %679 ], [ %756, %752 ]
  %736 = phi float [ %683, %679 ], [ %754, %752 ]
  %737 = phi float [ %406, %679 ], [ %747, %752 ]
  %738 = phi float [ %409, %679 ], [ %748, %752 ]
  %739 = phi float [ %412, %679 ], [ %749, %752 ]
  %740 = phi float [ %406, %679 ], [ %744, %752 ]
  %741 = phi float [ %409, %679 ], [ %745, %752 ]
  %742 = phi float [ %412, %679 ], [ %746, %752 ]
  %743 = phi i32 [ 1, %679 ], [ %750, %752 ]
  %744 = call float @dx.op.binary.f32(i32 36, float %736, float %740)  ; FMin(a,b)
  %745 = call float @dx.op.binary.f32(i32 36, float %735, float %741)  ; FMin(a,b)
  %746 = call float @dx.op.binary.f32(i32 36, float %734, float %742)  ; FMin(a,b)
  %747 = call float @dx.op.binary.f32(i32 35, float %736, float %737)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %735, float %738)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float %734, float %739)  ; FMax(a,b)
  %750 = add nuw nsw i32 %743, 1
  %751 = icmp eq i32 %750, 8
  br i1 %751, label %759, label %752

; <label>:752                                     ; preds = %733
  %753 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 %750
  %754 = load float, float* %753, align 4
  %755 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 %750
  %756 = load float, float* %755, align 4
  %757 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 %750
  %758 = load float, float* %757, align 4
  br label %733

; <label>:759                                     ; preds = %733
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 2
  %762 = add i32 %681, 39
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %762)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %766 = add i32 %681, 31
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %766)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 0
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %770 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %771 = add i32 %681, 23
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %771)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = extractvalue %dx.types.CBufRet.f32 %772, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %776 = call float @dx.op.binary.f32(i32 36, float %747, float %773)  ; FMin(a,b)
  %777 = call float @dx.op.binary.f32(i32 36, float %748, float %774)  ; FMin(a,b)
  %778 = call float @dx.op.binary.f32(i32 36, float %749, float %775)  ; FMin(a,b)
  %779 = call float @dx.op.binary.f32(i32 35, float %776, float %744)  ; FMax(a,b)
  %780 = call float @dx.op.binary.f32(i32 35, float %777, float %745)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 35, float %778, float %746)  ; FMax(a,b)
  %782 = fsub fast float %779, %773
  %783 = fsub fast float %780, %774
  %784 = fsub fast float %781, %775
  %785 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float %782, float %783, float %784)  ; Dot3(ax,ay,az,bx,by,bz)
  %786 = fcmp fast ogt float %765, %761
  %787 = fcmp fast ogt float %785, 0.000000e+00
  %788 = and i1 %786, %787
  br i1 %788, label %789, label %841, !dx.controlflow.hints !48

; <label>:789                                     ; preds = %759
  %790 = fadd fast float %747, %744
  %791 = fadd fast float %748, %745
  %792 = fadd fast float %749, %746
  %793 = fmul fast float %790, 5.000000e-01
  %794 = fmul fast float %791, 5.000000e-01
  %795 = fmul fast float %792, 5.000000e-01
  %796 = fsub fast float %793, %773
  %797 = fsub fast float %794, %774
  %798 = fsub fast float %795, %775
  %799 = call float @dx.op.dot3.f32(i32 55, float %796, float %797, float %798, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = fmul fast float %799, %768
  %801 = fmul fast float %799, %769
  %802 = fmul fast float %799, %770
  %803 = fadd fast float %800, %773
  %804 = fadd fast float %801, %774
  %805 = fadd fast float %802, %775
  %806 = call float @dx.op.binary.f32(i32 36, float %747, float %803)  ; FMin(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float %748, float %804)  ; FMin(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %749, float %805)  ; FMin(a,b)
  %809 = call float @dx.op.binary.f32(i32 35, float %806, float %744)  ; FMax(a,b)
  %810 = call float @dx.op.binary.f32(i32 35, float %807, float %745)  ; FMax(a,b)
  %811 = call float @dx.op.binary.f32(i32 35, float %808, float %746)  ; FMax(a,b)
  %812 = fsub fast float %809, %773
  %813 = fsub fast float %810, %774
  %814 = fsub fast float %811, %775
  %815 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float %768, float %769, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = fcmp fast ogt float %815, 0.000000e+00
  br i1 %816, label %817, label %841, !dx.controlflow.hints !46

; <label>:817                                     ; preds = %789
  %818 = fsub fast float 1.000000e+00, %764
  %819 = fmul fast float %818, %818
  %820 = fmul fast float %819, %785
  %821 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %820)  ; FMin(a,b)
  %822 = fmul fast float %821, %764
  %823 = fmul fast float %812, %812
  %824 = fmul fast float %813, %813
  %825 = fadd fast float %824, %823
  %826 = fmul fast float %814, %814
  %827 = fadd fast float %825, %826
  %828 = call float @dx.op.unary.f32(i32 24, float %827)  ; Sqrt(value)
  %829 = fmul fast float %822, %828
  %830 = fcmp fast ogt float %815, %829
  br i1 %830, label %831, label %841, !dx.controlflow.hints !47

; <label>:831                                     ; preds = %817
  %832 = fsub fast float %815, %829
  %833 = fsub fast float %828, %829
  %834 = fdiv fast float %832, %833
  %835 = fadd fast float %765, -1.000000e+00
  %836 = fmul fast float %834, %834
  %837 = fmul fast float %836, %835
  %838 = fadd fast float %837, 1.000000e+00
  %839 = fmul fast float %838, %838
  %840 = fdiv fast float %785, %839
  br label %841

; <label>:841                                     ; preds = %831, %817, %789, %759
  %842 = phi float [ %785, %759 ], [ %840, %831 ], [ %785, %817 ], [ %785, %789 ]
  %843 = call float @dx.op.binary.f32(i32 36, float %680, float %842)  ; FMin(a,b)
  %844 = add i32 %681, 1
  %845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.i32 %845, 0
  %847 = icmp ult i32 %844, %846
  br i1 %847, label %679, label %848

; <label>:848                                     ; preds = %841
  br label %849

; <label>:849                                     ; preds = %848, %673
  %850 = phi float [ 1.000000e+07, %673 ], [ %843, %848 ]
  %851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.i32 %851, 0
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %921, label %854

; <label>:854                                     ; preds = %849
  br label %855

; <label>:855                                     ; preds = %913, %854
  %856 = phi float [ %915, %913 ], [ 1.000000e+07, %854 ]
  %857 = phi i32 [ %916, %913 ], [ 0, %854 ]
  %858 = add i32 %857, 39
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %858)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %862 = add i32 %857, 31
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %862)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = add i32 %857, 23
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 %864)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = fsub fast float %321, %866
  %870 = fsub fast float %322, %867
  %871 = fsub fast float %323, %868
  %872 = fmul fast float %869, %869
  %873 = fmul fast float %870, %870
  %874 = fadd fast float %872, %873
  %875 = fmul fast float %871, %871
  %876 = fadd fast float %874, %875
  %877 = call float @dx.op.unary.f32(i32 24, float %876)  ; Sqrt(value)
  %878 = fsub fast float %877, %585
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float 0.000000e+00)  ; FMax(a,b)
  %880 = fdiv fast float %879, %877
  %881 = fmul fast float %879, %879
  %882 = fcmp fast ogt float %861, 1.000000e+00
  %883 = fcmp fast ogt float %881, 0.000000e+00
  %884 = and i1 %882, %883
  br i1 %884, label %885, label %913, !dx.controlflow.hints !45

; <label>:885                                     ; preds = %855
  %886 = fmul fast float %880, %871
  %887 = fmul fast float %880, %870
  %888 = fmul fast float %880, %869
  %889 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %890 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %892 = call float @dx.op.dot3.f32(i32 55, float %888, float %887, float %886, float %891, float %890, float %889)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = fcmp fast ogt float %892, 0.000000e+00
  br i1 %893, label %894, label %913, !dx.controlflow.hints !46

; <label>:894                                     ; preds = %885
  %895 = fmul fast float %888, %888
  %896 = fmul fast float %887, %887
  %897 = fadd fast float %895, %896
  %898 = fmul fast float %886, %886
  %899 = fadd fast float %897, %898
  %900 = call float @dx.op.unary.f32(i32 24, float %899)  ; Sqrt(value)
  %901 = fmul fast float %900, %860
  %902 = fcmp fast ogt float %892, %901
  br i1 %902, label %903, label %913, !dx.controlflow.hints !47

; <label>:903                                     ; preds = %894
  %904 = fsub fast float %892, %901
  %905 = fsub fast float %900, %901
  %906 = fdiv fast float %904, %905
  %907 = fadd fast float %861, -1.000000e+00
  %908 = fmul fast float %906, %906
  %909 = fmul fast float %908, %907
  %910 = fadd fast float %909, 1.000000e+00
  %911 = fmul fast float %910, %910
  %912 = fdiv fast float %881, %911
  br label %913

; <label>:913                                     ; preds = %903, %894, %885, %855
  %914 = phi float [ %881, %855 ], [ %912, %903 ], [ %881, %894 ], [ %881, %885 ]
  %915 = call float @dx.op.binary.f32(i32 36, float %856, float %914)  ; FMin(a,b)
  %916 = add i32 %857, 1
  %917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.i32 %917, 0
  %919 = icmp ult i32 %916, %918
  br i1 %919, label %855, label %920

; <label>:920                                     ; preds = %913
  br label %921

; <label>:921                                     ; preds = %920, %849
  %922 = phi float [ 1.000000e+07, %849 ], [ %915, %920 ]
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %284, i32 24)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %284, i32 72)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 31
  %928 = shl i32 1, %927
  %929 = and i32 %924, 262144
  %930 = fmul fast float %584, 2.000000e+00
  %931 = uitofp i32 %928 to float
  %932 = fmul fast float %931, %602
  %933 = fmul fast float %931, %601
  %934 = call float @dx.op.binary.f32(i32 36, float %933, float %932)  ; FMin(a,b)
  %935 = fdiv fast float %930, %934
  %936 = fmul fast float %935, 0x409417A5C0000000
  %937 = fmul fast float %936, %936
  %938 = fdiv fast float 1.000000e+00, %937
  %939 = icmp ne i32 %929, 0
  %940 = fadd fast float %674, 1.000000e+00
  %941 = fmul fast float %938, %940
  %942 = select i1 %939, float 1.000000e+00, float %941
  %943 = fmul fast float %942, 2.560000e+02
  %944 = fptoui float %943 to i32
  %945 = call i32 @dx.op.binary.i32(i32 40, i32 %944, i32 16777215)  ; UMin(a,b)
  %946 = icmp eq i32 %285, 2047
  br i1 %946, label %963, label %947, !dx.controlflow.hints !49

; <label>:947                                     ; preds = %921
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %285, i32 4)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 31
  %951 = shl i32 1, %950
  %952 = uitofp i32 %951 to float
  %953 = call float @dx.op.binary.f32(i32 36, float %952, float %952)  ; FMin(a,b)
  %954 = fdiv fast float %930, %953
  %955 = fmul fast float %954, 0x409417A5C0000000
  %956 = fmul fast float %955, %955
  %957 = fdiv fast float 1.000000e+00, %956
  %958 = fmul fast float %957, %940
  %959 = select i1 %939, float 1.000000e+00, float %958
  %960 = fmul fast float %959, 2.560000e+02
  %961 = fptoui float %960 to i32
  %962 = call i32 @dx.op.binary.i32(i32 40, i32 %961, i32 16777215)  ; UMin(a,b)
  br label %963

; <label>:963                                     ; preds = %947, %921
  %964 = phi i32 [ %962, %947 ], [ 0, %921 ]
  %965 = phi float [ %959, %947 ], [ 0.000000e+00, %921 ]
  %966 = phi float [ %957, %947 ], [ 0.000000e+00, %921 ]
  %967 = phi float [ %954, %947 ], [ 0.000000e+00, %921 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 0, i32 %284, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 4, i32 %285, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 8, float %286, float %287, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 16, float %288, float %289, float %290, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 28, float %291, float %292, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 36, float %398, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 40, float %583, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 44, float %600, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 48, float %281, float %282, float %283, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 60, float %277, float %276, float %275, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 72, float %274, float %273, float %272, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 84, float %271, float %270, float %269, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 96, float %278, float %279, float %280, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 108, float %674, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 112, float %850, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 116, float %922, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 120, float %935, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 124, float %938, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 128, float %942, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 132, i32 %945, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 136, float %967, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 140, float %966, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %401, i32 144, float %965, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 148, i32 %964, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 152, i32 %296, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 156, i32 %293, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 160, i32 %297, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %401, i32 164, i32 %295, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %968

; <label>:968                                     ; preds = %963, %400, %397, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!4 = !{!5, !20, !25, null}
!5 = !{!6, !8, !10, !12, !13, !15, !16, !18, !19}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<DecalVolumeMaterialGPU>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 76}
!10 = !{i32 2, %"class.StructuredBuffer<DecalVolumeMaskGPU>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 12, i32 0, !7}
!13 = !{i32 4, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 48}
!15 = !{i32 5, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !7}
!16 = !{i32 6, %"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !17}
!17 = !{i32 1, i32 72}
!18 = !{i32 7, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !7}
!19 = !{i32 8, %"class.StructuredBuffer<StaticDecalVolumeMapIndex>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!20 = !{!21, !23, !24}
!21 = !{i32 0, %"class.RWStructuredBuffer<MaterialDebugInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !22}
!22 = !{i32 1, i32 168}
!23 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!24 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!25 = !{!26}
!26 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!27 = !{void ()* @cs_decal_volume_gather_materials, !"cs_decal_volume_gather_materials", null, !4, !28}
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
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

