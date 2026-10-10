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
; shader hash: 76e4c0f02c0daa141c394d121ef35e3e
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
;   [64 x i8] (type annotation not present)
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
;                                   texture  struct         r/o      T8            t13     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%"class.StructuredBuffer<DecalVolumeLodState>" = type { %struct.DecalVolumeLodState }
%struct.DecalVolumeLodState = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, <3 x float>, float }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<DecalVolumeWGV>" = type { %struct.DecalVolumeWGV }
%struct.DecalVolumeWGV = type { %struct.DecalVolume, float }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

define void @cs_decal_volume_generate_draw_data() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %447, !dx.controlflow.hints !30

; <label>:20                                      ; preds = %0
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %14, i32 0)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = and i32 %22, 8191
  %24 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.f32 %24, 0
  %26 = extractvalue %dx.types.ResRet.f32 %24, 1
  %27 = extractvalue %dx.types.ResRet.f32 %24, 2
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 12)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 16)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 20)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.i32 %32, 0
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 24)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 28)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 32)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 36)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 40)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %23, i32 44)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = lshr i32 %29, 30
  %47 = and i32 %29, 1023
  %48 = uitofp i32 %47 to float
  %49 = lshr i32 %29, 10
  %50 = and i32 %49, 1023
  %51 = uitofp i32 %50 to float
  %52 = lshr i32 %29, 20
  %53 = and i32 %52, 511
  %54 = uitofp i32 %53 to float
  %55 = fmul fast float %48, 0x3F56A64800000000
  %56 = fadd fast float %55, 0xBFE6A09E60000000
  %57 = fmul fast float %51, 0x3F56A64800000000
  %58 = fadd fast float %57, 0xBFE6A09E60000000
  %59 = fmul fast float %54, 0x3F66ABF460000000
  %60 = fadd fast float %59, 0xBFE6A09E60000000
  %61 = call float @dx.op.dot3.f32(i32 55, float %56, float %58, float %60, float %56, float %58, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = call float @dx.op.unary.f32(i32 7, float %61)  ; Saturate(value)
  %63 = fsub fast float 1.000000e+00, %62
  %64 = call float @dx.op.unary.f32(i32 24, float %63)  ; Sqrt(value)
  %65 = icmp eq i32 %46, 0
  br i1 %65, label %72, label %66, !dx.controlflow.hints !31

; <label>:66                                      ; preds = %20
  %67 = icmp eq i32 %46, 1
  br i1 %67, label %72, label %68, !dx.controlflow.hints !32

; <label>:68                                      ; preds = %66
  %69 = icmp eq i32 %46, 2
  %70 = select i1 %69, float %64, float %60
  %71 = select i1 %69, float %60, float %64
  br label %72

; <label>:72                                      ; preds = %68, %66, %20
  %73 = phi float [ %64, %20 ], [ %56, %66 ], [ %56, %68 ]
  %74 = phi float [ %56, %20 ], [ %64, %66 ], [ %58, %68 ]
  %75 = phi float [ %58, %20 ], [ %58, %66 ], [ %70, %68 ]
  %76 = phi float [ %60, %20 ], [ %60, %66 ], [ %71, %68 ]
  %77 = fmul fast float %74, %74
  %78 = fmul fast float %77, 2.000000e+00
  %79 = fsub fast float 1.000000e+00, %78
  %80 = fmul fast float %75, %75
  %81 = fmul fast float %80, 2.000000e+00
  %82 = fsub fast float %79, %81
  %83 = fmul fast float %73, 2.000000e+00
  %84 = fmul fast float %83, %74
  %85 = fmul fast float %75, 2.000000e+00
  %86 = fmul fast float %85, %76
  %87 = fsub fast float %84, %86
  %88 = fmul fast float %75, %73
  %89 = fmul fast float %76, %74
  %90 = fadd fast float %89, %88
  %91 = fmul fast float %90, 2.000000e+00
  %92 = fmul fast float %74, %73
  %93 = fmul fast float %76, %75
  %94 = fadd fast float %93, %92
  %95 = fmul fast float %73, %73
  %96 = fmul fast float %95, 2.000000e+00
  %97 = fsub fast float 1.000000e+00, %96
  %98 = fsub fast float %97, %81
  %99 = fmul fast float %74, 2.000000e+00
  %100 = fmul fast float %99, %75
  %101 = fmul fast float %83, %76
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %83, %75
  %104 = fmul fast float %99, %76
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %75, %74
  %107 = fmul fast float %76, %73
  %108 = fadd fast float %107, %106
  %109 = fmul fast float %108, 2.000000e+00
  %110 = fsub fast float %97, %78
  %111 = and i32 %43, 512
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %112, float 1.000000e+00, float -1.000000e+00
  %114 = and i32 %43, 1024
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float -1.000000e+00, float 1.000000e+00
  %117 = fmul fast float %113, %116
  %118 = fmul fast float %82, %117
  %119 = fmul fast float %117, 2.000000e+00
  %120 = fmul fast float %119, %94
  %121 = fmul fast float %105, %117
  %122 = shl i32 %31, 4
  %123 = and i32 %122, 32752
  %124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %123)  ; LegacyF16ToF32(value)
  %125 = lshr i32 %31, 7
  %126 = and i32 %125, 32752
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = lshr i32 %31, 22
  %129 = shl nuw nsw i32 %128, 5
  %130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %129)  ; LegacyF16ToF32(value)
  %131 = and i32 %33, 255
  %132 = lshr i32 %33, 8
  %133 = and i32 %132, 255
  %134 = lshr i32 %33, 16
  %135 = and i32 %134, 255
  %136 = lshr i32 %33, 24
  %137 = uitofp i32 %135 to float
  %138 = fmul fast float %137, 0x3F70101020000000
  %139 = uitofp i32 %133 to float
  %140 = fmul fast float %139, 0x3F70101020000000
  %141 = uitofp i32 %131 to float
  %142 = fmul fast float %141, 0x3F70101020000000
  %143 = fcmp fast oge float %142, %140
  %144 = fcmp fast ole float %138, 0.000000e+00
  %145 = or i1 %143, %144
  %146 = select i1 %145, float 1.000000e+00, float %138
  %147 = select i1 %145, float 1.000000e+00, float %140
  %148 = select i1 %145, float 0.000000e+00, float %142
  %149 = fsub fast float %147, %148
  %150 = fdiv fast float 1.000000e+00, %149
  %151 = fmul fast float %150, %146
  %152 = uitofp i32 %136 to float
  %153 = fmul fast float %152, 0x3F70101020000000
  %154 = fcmp fast ogt float %153, 0.000000e+00
  %155 = fdiv fast float 0x406FDFFFE0000000, %152
  %156 = fsub fast float -0.000000e+00, %155
  %157 = select i1 %154, float %156, float -1.000000e+05
  %158 = and i32 %43, 255
  %159 = uitofp i32 %158 to float
  %160 = fmul fast float %159, 0x3F70101020000000
  %161 = and i32 %43, 256
  %162 = icmp ne i32 %161, 0
  %163 = lshr i32 %43, 16
  %164 = and i32 %163, 255
  %165 = lshr i32 %43, 24
  %166 = uitofp i32 %164 to float
  %167 = fmul fast float %166, 0x3F70101020000000
  %168 = fcmp fast ogt float %167, 0.000000e+00
  %169 = fdiv fast float 0x406FDFFFE0000000, %166
  %170 = fsub fast float -0.000000e+00, %169
  %171 = select i1 %168, float %170, float -1.000000e+05
  %172 = uitofp i32 %165 to float
  %173 = fmul fast float %172, 0x3F70101020000000
  %174 = fcmp fast ogt float %173, 0.000000e+00
  %175 = fdiv fast float 0x406FDFFFE0000000, %172
  %176 = fsub fast float -0.000000e+00, %175
  %177 = select i1 %174, float %176, float -1.000000e+05
  %178 = and i32 %35, 65535
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %35, 16
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = and i32 %37, 65535
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %37, 16
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = and i32 %39, 65535
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = lshr i32 %39, 16
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = and i32 %45, 65535
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = lshr i32 %45, 16
  %193 = and i32 %192, 255
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = fmul fast float %195, %124
  %199 = fmul fast float %196, %127
  %200 = fmul fast float %197, %130
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %204 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %205 = fsub fast float %25, %202
  %206 = fsub fast float %26, %203
  %207 = fsub fast float %27, %204
  %208 = call float @dx.op.binary.f32(i32 35, float %199, float %200)  ; FMax(a,b)
  %209 = call float @dx.op.binary.f32(i32 35, float %198, float %208)  ; FMax(a,b)
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fmul fast float %211, %209
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 0
  %215 = extractvalue %dx.types.CBufRet.f32 %213, 1
  %216 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %217 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %205, float %206, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.binary.f32(i32 35, float %217, float 0x3F50624DE0000000)  ; FMax(a,b)
  %219 = fdiv fast float %212, %218
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = fmul fast float %220, %220
  %225 = fmul fast float %224, 0x400921FB60000000
  %226 = fmul fast float %225, %222
  %227 = fmul fast float %226, %223
  %228 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %229 = call float @dx.op.binary.f32(i32 35, float %228, float 1.000000e+00)  ; FMax(a,b)
  %230 = fptoui float %229 to i32
  %231 = add i32 %230, -1
  %232 = lshr i32 %231, 1
  %233 = or i32 %232, %231
  %234 = lshr i32 %233, 2
  %235 = or i32 %234, %233
  %236 = lshr i32 %235, 4
  %237 = or i32 %236, %235
  %238 = lshr i32 %237, 8
  %239 = or i32 %238, %237
  %240 = lshr i32 %239, 16
  %241 = or i32 %240, %239
  %242 = add i32 %241, 1
  %243 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %242)  ; FirstbitLo(value)
  %244 = fmul fast float %205, %205
  %245 = fmul fast float %206, %206
  %246 = fadd fast float %244, %245
  %247 = fmul fast float %207, %207
  %248 = fadd fast float %246, %247
  %249 = call float @dx.op.unary.f32(i32 24, float %248)  ; Sqrt(value)
  %250 = fsub fast float %249, %208
  %251 = call float @dx.op.binary.f32(i32 35, float %250, float 0.000000e+00)  ; FMax(a,b)
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = fcmp fast olt float %251, %253
  %255 = and i1 %162, %254
  br i1 %255, label %256, label %262, !dx.controlflow.hints !33

; <label>:256                                     ; preds = %72
  %257 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 0
  %260 = icmp ult i32 %257, %259
  br i1 %260, label %261, label %743, !dx.controlflow.hints !34

; <label>:261                                     ; preds = %256
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %257, i32 0, float %25, float %26, float %27, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %257, i32 12, float %118, float %120, float %121, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %257, i32 24, float %87, float %98, float %109, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %257, i32 36, float %91, float %102, float %110, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %257, i32 48, float %124, float %127, float %130, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %257, i32 60, float %160, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %262

; <label>:262                                     ; preds = %261, %72
  %263 = and i32 %41, 2047
  %264 = lshr i32 %41, 11
  %265 = and i32 %264, 2047
  %266 = lshr i32 %41, 22
  %267 = and i32 %266, 3
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %263, i32 0)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = icmp eq i32 %265, 2047
  br i1 %270, label %277, label %271, !dx.controlflow.hints !35

; <label>:271                                     ; preds = %262
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 1
  %274 = add i32 %273, %265
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %274, i32 0)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  br label %277

; <label>:277                                     ; preds = %271, %262
  %278 = phi i32 [ %276, %271 ], [ 2047, %262 ]
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 0)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 4)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 8)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 12)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 16)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 20)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 24)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %269, i32 28)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %269, i32 40)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 44)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 48)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 52)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %269, i32 56)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %269, i32 60)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 64)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 68)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %269, i32 72)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = icmp eq i32 %278, 2047
  br i1 %315, label %319, label %316, !dx.controlflow.hints !36

; <label>:316                                     ; preds = %277
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %278, i32 0)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  br label %319

; <label>:319                                     ; preds = %316, %277
  %320 = phi i32 [ %318, %316 ], [ 0, %277 ]
  %321 = and i32 %314, 255
  %322 = call i32 @dx.op.binary.i32(i32 37, i32 %243, i32 0)  ; IMax(a,b)
  %323 = call i32 @dx.op.binary.i32(i32 38, i32 %322, i32 %321)  ; IMin(a,b)
  %324 = sub nsw i32 %321, %323
  %325 = sitofp i32 %324 to float
  %326 = icmp ne i32 %278, 2047
  %327 = select i1 %326, i32 %320, i32 %288
  %328 = fdiv fast float 1.000000e+00, %198
  %329 = fdiv fast float 1.000000e+00, %199
  %330 = fmul fast float %329, -5.000000e-01
  %331 = fdiv fast float 5.000000e-01, %200
  %332 = fsub fast float -0.000000e+00, %87
  %333 = fsub fast float -0.000000e+00, %98
  %334 = fsub fast float -0.000000e+00, %109
  %335 = fmul fast float %205, %332
  %336 = fmul fast float %206, %333
  %337 = fadd fast float %335, %336
  %338 = fmul fast float %207, %334
  %339 = fadd fast float %337, %338
  %340 = fmul fast float %205, %91
  %341 = fmul fast float %206, %102
  %342 = fadd fast float %340, %341
  %343 = fmul fast float %207, %110
  %344 = fadd fast float %342, %343
  %345 = fmul fast float %205, %118
  %346 = fmul fast float %206, %120
  %347 = fadd fast float %345, %346
  %348 = fmul fast float %207, %121
  %349 = fadd fast float %347, %348
  %350 = fmul fast float %330, %332
  %351 = fmul fast float %330, %333
  %352 = fmul fast float %330, %334
  %353 = fmul fast float %330, %339
  %354 = fsub fast float 5.000000e-01, %353
  %355 = fmul fast float %331, %91
  %356 = fmul fast float %331, %102
  %357 = fmul fast float %331, %110
  %358 = fmul fast float %331, %344
  %359 = fsub fast float 5.000000e-01, %358
  %360 = fmul fast float %328, %118
  %361 = fmul fast float %328, %120
  %362 = fmul fast float %328, %121
  %363 = fmul fast float %349, %328
  %364 = fsub fast float -0.000000e+00, %363
  %365 = and i32 %292, -34
  %366 = and i32 %292, 1
  %367 = icmp eq i32 %267, 0
  %368 = select i1 %367, i32 0, i32 %366
  %369 = icmp eq i32 %267, 1
  %370 = select i1 %369, i32 1, i32 %368
  %371 = or i32 %370, %365
  %372 = bitcast i32 %371 to float
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 0, i32 32)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = extractvalue %dx.types.ResRet.f32 %373, 1
  %376 = extractvalue %dx.types.ResRet.f32 %373, 2
  %377 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 0
  store float %374, float* %377, align 4
  %378 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 1
  store float %375, float* %378, align 4
  %379 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 2
  store float %376, float* %379, align 4
  %380 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %193
  %381 = load float, float* %380, align 4, !tbaa !37, !noalias !41
  %382 = fmul fast float %381, %251
  %383 = fmul fast float %382, %191
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %386 = fmul fast float %383, %385
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = fadd fast float %386, %387
  %389 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %390 = fmul fast float %151, %389
  %391 = fmul fast float %148, %146
  %392 = fmul fast float %391, %150
  %393 = fmul fast float %392, %389
  %394 = fsub fast float -0.000000e+00, %393
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %397 = select i1 %162, float 1.000000e+00, float %396
  %398 = fmul fast float %397, %160
  %399 = and i32 %292, 8192
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %398, float 0.000000e+00
  %402 = bitcast i32 %312 to float
  %403 = bitcast i32 %310 to float
  %404 = uitofp i32 %304 to float
  %405 = bitcast i32 %300 to float
  %406 = and i32 %292, 256
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %423, label %408, !dx.controlflow.hints !44

; <label>:408                                     ; preds = %319
  %409 = fsub fast float %382, %306
  %410 = fmul fast float %409, %308
  %411 = call float @dx.op.binary.f32(i32 35, float %410, float 0.000000e+00)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 36, float %411, float 1.000000e+00)  ; FMin(a,b)
  %413 = fsub fast float 1.000000e+00, %412
  %414 = and i32 %302, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %302, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %417, %413
  %419 = fmul fast float %415, %413
  %420 = fmul fast float %329, 5.000000e-01
  %421 = fmul fast float %420, %415
  %422 = fmul fast float %331, %415
  br label %423

; <label>:423                                     ; preds = %408, %319
  %424 = phi float [ %418, %408 ], [ 0.000000e+00, %319 ]
  %425 = phi float [ %419, %408 ], [ 1.000000e+00, %319 ]
  %426 = phi float [ %421, %408 ], [ 1.000000e+00, %319 ]
  %427 = phi float [ %422, %408 ], [ 1.000000e+00, %319 ]
  %428 = call float @dx.op.binary.f32(i32 35, float %127, float %130)  ; FMax(a,b)
  %429 = fptoui float %428 to i32
  %430 = shl i32 %14, 8
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %430, i32 undef, float %350, float %351, float %352, float %354, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %431 = or i32 %430, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %431, i32 undef, float %355, float %356, float %357, float %359, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %432 = or i32 %430, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %432, i32 undef, float %360, float %361, float %362, float %364, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %433 = or i32 %430, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %433, i32 undef, float %118, float %120, float %121, float %372, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %434 = or i32 %430, 64
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %434, i32 undef, i32 %280, i32 %282, i32 %284, i32 %327, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %435 = or i32 %430, 80
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %435, i32 undef, float %390, float %394, float %157, float 1.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %436 = or i32 %430, 96
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %436, i32 undef, float %179, float %181, float %183, float %185, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %437 = or i32 %430, 112
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %437, i32 undef, float %187, float %189, float %298, float %401, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %438 = or i32 %430, 128
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %438, i32 undef, float %87, float %98, float %109, float %402, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %439 = or i32 %430, 144
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %439, i32 undef, float %91, float %102, float %110, float %403, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %440 = or i32 %430, 160
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %440, i32 undef, float %294, float %295, float %296, float %404, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %441 = or i32 %430, 176
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %441, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %442 = or i32 %430, 192
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %442, i32 undef, i32 %286, i32 %290, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %443 = or i32 %430, 208
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %443, i32 undef, float %405, float %325, float %325, float %325, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %444 = or i32 %430, 224
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %444, i32 undef, float %424, float %425, float %426, float %427, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %445 = or i32 %430, 240
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %445, i32 undef, i32 0, i32 %429, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %446 = or i32 %430, 248
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %446, i32 undef, float %171, float %177, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %743

; <label>:447                                     ; preds = %0
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = add i32 %449, %18
  %451 = icmp ult i32 %14, %450
  br i1 %451, label %452, label %743, !dx.controlflow.hints !45

; <label>:452                                     ; preds = %447
  %453 = sub i32 %14, %18
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %453, i32 0)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 8191
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %456, i32 60)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %456, i32 64)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %456, i32 68)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %456, i32 48)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %471 = fmul fast float %468, %464
  %472 = fmul fast float %469, %465
  %473 = fmul fast float %470, %466
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %456, i32 0)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %482 = fsub fast float %475, %479
  %483 = fsub fast float %476, %480
  %484 = fsub fast float %477, %481
  %485 = call float @dx.op.binary.f32(i32 35, float %472, float %473)  ; FMax(a,b)
  %486 = call float @dx.op.binary.f32(i32 35, float %471, float %485)  ; FMax(a,b)
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 0
  %489 = fmul fast float %488, %486
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %494 = call float @dx.op.dot3.f32(i32 55, float %491, float %492, float %493, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %495 = call float @dx.op.binary.f32(i32 35, float %494, float 0x3F50624DE0000000)  ; FMax(a,b)
  %496 = fdiv fast float %489, %495
  %497 = call float @dx.op.unary.f32(i32 7, float %496)  ; Saturate(value)
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 0
  %500 = extractvalue %dx.types.CBufRet.f32 %498, 1
  %501 = fmul fast float %497, %497
  %502 = fmul fast float %501, 0x400921FB60000000
  %503 = fmul fast float %502, %499
  %504 = fmul fast float %503, %500
  %505 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %506 = call float @dx.op.binary.f32(i32 35, float %505, float 1.000000e+00)  ; FMax(a,b)
  %507 = fptoui float %506 to i32
  %508 = add i32 %507, -1
  %509 = lshr i32 %508, 1
  %510 = or i32 %509, %508
  %511 = lshr i32 %510, 2
  %512 = or i32 %511, %510
  %513 = lshr i32 %512, 4
  %514 = or i32 %513, %512
  %515 = lshr i32 %514, 8
  %516 = or i32 %515, %514
  %517 = lshr i32 %516, 16
  %518 = or i32 %517, %516
  %519 = add i32 %518, 1
  %520 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %519)  ; FirstbitLo(value)
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %456, i32 12)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %456, i32 24)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %456, i32 36)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = and i32 %460, 255
  %534 = uitofp i32 %533 to float
  %535 = lshr i32 %460, 8
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = lshr i32 %460, 16
  %539 = and i32 %538, 255
  %540 = uitofp i32 %539 to float
  %541 = lshr i32 %460, 24
  %542 = uitofp i32 %541 to float
  %543 = fmul fast float %534, 0x3F70101020000000
  %544 = fmul fast float %537, 0x3F70101020000000
  %545 = fmul fast float %540, 0x3F70101020000000
  %546 = fmul fast float %542, 0x3F70101020000000
  %547 = and i32 %458, 8
  %548 = icmp ne i32 %547, 0
  %549 = select i1 %548, float -1.000000e+00, float 1.000000e+00
  %550 = and i32 %458, 16
  %551 = icmp ne i32 %550, 0
  %552 = select i1 %551, float -1.000000e+00, float 1.000000e+00
  %553 = lshr i32 %458, 8
  %554 = and i32 %553, 255
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %557 = lshr i32 %458, 6
  %558 = and i32 %557, 2
  %559 = and i32 %462, 2047
  %560 = shl i32 %458, 10
  %561 = and i32 %560, 2048
  %562 = and i32 %458, 1
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %582, label %564, !dx.controlflow.hints !46

; <label>:564                                     ; preds = %452
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 72)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = lshr i32 %566, 16
  %568 = and i32 %567, 255
  %569 = lshr i32 %566, 24
  %570 = uitofp i32 %568 to float
  %571 = fdiv fast float 1.000000e+00, %570
  %572 = uitofp i32 %569 to float
  %573 = fdiv fast float 1.000000e+00, %572
  %574 = udiv i32 %554, %568
  %575 = urem i32 %554, %568
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, %571
  %578 = uitofp i32 %574 to float
  %579 = fmul fast float %578, %573
  %580 = fmul fast float %571, %549
  %581 = fmul fast float %573, %552
  br label %582

; <label>:582                                     ; preds = %564, %452
  %583 = phi float [ %577, %564 ], [ 0.000000e+00, %452 ]
  %584 = phi float [ %579, %564 ], [ 0.000000e+00, %452 ]
  %585 = phi float [ %580, %564 ], [ %549, %452 ]
  %586 = phi float [ %581, %564 ], [ %552, %452 ]
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 0)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 4)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 8)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 12)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 16)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 20)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 24)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %559, i32 28)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %559, i32 40)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 44)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 48)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 52)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %559, i32 56)  ; BufferLoad(srv,index,wot)
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %559, i32 60)  ; BufferLoad(srv,index,wot)
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 64)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 68)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %559, i32 72)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 255
  %622 = call i32 @dx.op.binary.i32(i32 37, i32 %520, i32 0)  ; IMax(a,b)
  %623 = call i32 @dx.op.binary.i32(i32 38, i32 %622, i32 %621)  ; IMin(a,b)
  %624 = sub nsw i32 %621, %623
  %625 = sitofp i32 %624 to float
  %626 = fdiv fast float 1.000000e+00, %471
  %627 = fdiv fast float 1.000000e+00, %472
  %628 = fmul fast float %627, -5.000000e-01
  %629 = fdiv fast float 5.000000e-01, %473
  %630 = fsub fast float -0.000000e+00, %526
  %631 = fsub fast float -0.000000e+00, %527
  %632 = fsub fast float -0.000000e+00, %528
  %633 = fmul fast float %482, %630
  %634 = fmul fast float %483, %631
  %635 = fadd fast float %633, %634
  %636 = fmul fast float %484, %632
  %637 = fadd fast float %635, %636
  %638 = fmul fast float %530, %482
  %639 = fmul fast float %531, %483
  %640 = fadd fast float %638, %639
  %641 = fmul fast float %532, %484
  %642 = fadd fast float %640, %641
  %643 = fmul fast float %522, %482
  %644 = fmul fast float %523, %483
  %645 = fadd fast float %643, %644
  %646 = fmul fast float %524, %484
  %647 = fadd fast float %645, %646
  %648 = fmul fast float %628, %630
  %649 = fmul fast float %628, %631
  %650 = fmul fast float %628, %632
  %651 = fmul fast float %628, %637
  %652 = fsub fast float 5.000000e-01, %651
  %653 = fmul fast float %629, %530
  %654 = fmul fast float %629, %531
  %655 = fmul fast float %629, %532
  %656 = fmul fast float %629, %642
  %657 = fsub fast float 5.000000e-01, %656
  %658 = fmul fast float %626, %522
  %659 = fmul fast float %626, %523
  %660 = fmul fast float %626, %524
  %661 = fmul fast float %647, %626
  %662 = fsub fast float -0.000000e+00, %661
  %663 = and i32 %600, -33
  %664 = or i32 %663, %561
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %482, %482
  %667 = fmul fast float %483, %483
  %668 = fadd fast float %666, %667
  %669 = fmul fast float %484, %484
  %670 = fadd fast float %668, %669
  %671 = call float @dx.op.unary.f32(i32 24, float %670)  ; Sqrt(value)
  %672 = fsub fast float %671, %485
  %673 = call float @dx.op.binary.f32(i32 35, float %672, float 0.000000e+00)  ; FMax(a,b)
  %674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 0, i32 48)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  %676 = extractvalue %dx.types.ResRet.f32 %674, 1
  %677 = extractvalue %dx.types.ResRet.f32 %674, 2
  %678 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 0
  store float %675, float* %678, align 4
  %679 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 1
  store float %676, float* %679, align 4
  %680 = getelementptr inbounds [3 x float], [3 x float]* %16, i32 0, i32 2
  store float %677, float* %680, align 4
  %681 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %558
  %682 = load float, float* %681, align 4, !tbaa !37, !noalias !47
  %683 = fmul fast float %682, %673
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %686 = fmul fast float %685, %683
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = fadd fast float %686, %687
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %692 = and i32 %600, 8192
  %693 = icmp ne i32 %692, 0
  %694 = select i1 %693, float %691, float 0.000000e+00
  %695 = bitcast i32 %618 to float
  %696 = bitcast i32 %616 to float
  %697 = fmul fast float %543, %602
  %698 = fmul fast float %544, %603
  %699 = fmul fast float %545, %604
  %700 = uitofp i32 %612 to float
  %701 = bitcast i32 %608 to float
  %702 = and i32 %600, 256
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %721, label %704, !dx.controlflow.hints !44

; <label>:704                                     ; preds = %582
  %705 = extractvalue %dx.types.ResRet.f32 %614, 0
  %706 = extractvalue %dx.types.ResRet.f32 %613, 0
  %707 = fsub fast float %683, %706
  %708 = fmul fast float %707, %705
  %709 = call float @dx.op.binary.f32(i32 35, float %708, float 0.000000e+00)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %709, float 1.000000e+00)  ; FMin(a,b)
  %711 = fsub fast float 1.000000e+00, %710
  %712 = and i32 %610, 65535
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %610, 16
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = fmul fast float %715, %711
  %717 = fmul fast float %713, %711
  %718 = fmul fast float %627, 5.000000e-01
  %719 = fmul fast float %718, %713
  %720 = fmul fast float %629, %713
  br label %721

; <label>:721                                     ; preds = %704, %582
  %722 = phi float [ %716, %704 ], [ 0.000000e+00, %582 ]
  %723 = phi float [ %717, %704 ], [ 1.000000e+00, %582 ]
  %724 = phi float [ %719, %704 ], [ 1.000000e+00, %582 ]
  %725 = phi float [ %720, %704 ], [ 1.000000e+00, %582 ]
  %726 = shl i32 %14, 8
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %726, i32 undef, float %648, float %649, float %650, float %652, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %727 = or i32 %726, 16
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %727, i32 undef, float %653, float %654, float %655, float %657, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %728 = or i32 %726, 32
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %728, i32 undef, float %658, float %659, float %660, float %662, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %729 = or i32 %726, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %729, i32 undef, float %522, float %523, float %524, float %665, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %730 = or i32 %726, 64
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %730, i32 undef, i32 %588, i32 %590, i32 %592, i32 %596, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %731 = or i32 %726, 80
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %731, i32 undef, float %689, float 0.000000e+00, float %556, float %546, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %732 = or i32 %726, 96
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %732, i32 undef, float %585, float 0.000000e+00, float 0.000000e+00, float %586, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %733 = or i32 %726, 112
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %733, i32 undef, float %583, float %584, float %606, float %694, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %734 = or i32 %726, 128
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %734, i32 undef, float %526, float %527, float %528, float %695, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %735 = or i32 %726, 144
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %735, i32 undef, float %530, float %531, float %532, float %696, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %736 = or i32 %726, 160
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %736, i32 undef, float %697, float %698, float %699, float %700, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %737 = or i32 %726, 176
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %737, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %738 = or i32 %726, 192
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %738, i32 undef, i32 %594, i32 %598, i32 0, i32 0, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %739 = or i32 %726, 208
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %739, i32 undef, float %701, float %625, float %625, float %625, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %740 = or i32 %726, 224
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %740, i32 undef, float %722, float %723, float %724, float %725, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %741 = or i32 %726, 240
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %741, i32 undef, i32 1, i32 0, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %742 = or i32 %726, 248
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %3, i32 %742, i32 undef, float -1.000000e+05, float -1.000000e+05, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %743

; <label>:743                                     ; preds = %721, %447, %423, %256
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !25, null}
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
!19 = !{i32 8, %"class.StructuredBuffer<DecalVolumeLodState>"* undef, !"", i32 0, i32 13, i32 1, i32 12, i32 0, !20}
!20 = !{i32 1, i32 64}
!21 = !{!22, !23, !24}
!22 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!23 = !{i32 1, %"class.RWStructuredBuffer<DecalVolumeWGV>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !20}
!24 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!25 = !{!26}
!26 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!27 = !{void ()* @cs_decal_volume_generate_draw_data, !"cs_decal_volume_generate_draw_data", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 64, i32 1, i32 1}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"\01?DecalVolume_ProcessIntDecalVolume@@YAXUDecalVolumeIntermediate@@V?$vector@M$02@@UDecalVolumeScaledWithSize@@II_N3UDecalVolumeDrawData@@@Z: %dstData"}
!43 = distinct !{!43, !"\01?DecalVolume_ProcessIntDecalVolume@@YAXUDecalVolumeIntermediate@@V?$vector@M$02@@UDecalVolumeScaledWithSize@@II_N3UDecalVolumeDrawData@@@Z"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48}
!48 = distinct !{!48, !49, !"\01?DecalVolume_ProcessIntDecalVolume@@YAXUDecalVolumeIntermediate@@V?$vector@M$02@@UDecalVolumeScaledWithSize@@II_N3UDecalVolumeDrawData@@@Z: %dstData"}
!49 = distinct !{!49, !"\01?DecalVolume_ProcessIntDecalVolume@@YAXUDecalVolumeIntermediate@@V?$vector@M$02@@UDecalVolumeScaledWithSize@@II_N3UDecalVolumeDrawData@@@Z"}

