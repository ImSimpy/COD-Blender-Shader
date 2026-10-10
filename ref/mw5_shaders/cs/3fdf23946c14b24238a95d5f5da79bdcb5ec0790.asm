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
; shader hash: 694c29bb48ce921ad95627d5c03299e6
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t1     1
;                                   texture  struct         r/o      T1             t3     1
;                                   texture  struct         r/o      T2             t6     1
;                                   texture  struct         r/o      T3             t7     1
;                                   texture  struct         r/o      T4             t8     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>" = type { %struct.GfxImpactMarkDecalVolumeGPU }
%struct.GfxImpactMarkDecalVolumeGPU = type { %struct.DecalVolume, i32, i32, i32 }
%struct.DecalVolume = type { <3 x float>, [3 x <3 x float>], <3 x float> }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

define void @cs_decal_volume_generate_cluster_data() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = add i32 %12, %10
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %184, !dx.controlflow.hints !21

; <label>:15                                      ; preds = %0
  %16 = icmp ult i32 %8, %10
  br i1 %16, label %17, label %116, !dx.controlflow.hints !22

; <label>:17                                      ; preds = %15
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %8, i32 0)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = and i32 %19, 8191
  %21 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %20, i32 0)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.f32 %21, 0
  %23 = extractvalue %dx.types.ResRet.f32 %21, 1
  %24 = extractvalue %dx.types.ResRet.f32 %21, 2
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %20, i32 12)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %20, i32 16)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %20, i32 40)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = lshr i32 %26, 30
  %32 = and i32 %26, 1023
  %33 = uitofp i32 %32 to float
  %34 = lshr i32 %26, 10
  %35 = and i32 %34, 1023
  %36 = uitofp i32 %35 to float
  %37 = lshr i32 %26, 20
  %38 = and i32 %37, 511
  %39 = uitofp i32 %38 to float
  %40 = fmul fast float %33, 0x3F56A64800000000
  %41 = fadd fast float %40, 0xBFE6A09E60000000
  %42 = fmul fast float %36, 0x3F56A64800000000
  %43 = fadd fast float %42, 0xBFE6A09E60000000
  %44 = fmul fast float %39, 0x3F66ABF460000000
  %45 = fadd fast float %44, 0xBFE6A09E60000000
  %46 = call float @dx.op.dot3.f32(i32 55, float %41, float %43, float %45, float %41, float %43, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %47 = call float @dx.op.unary.f32(i32 7, float %46)  ; Saturate(value)
  %48 = fsub fast float 1.000000e+00, %47
  %49 = call float @dx.op.unary.f32(i32 24, float %48)  ; Sqrt(value)
  %50 = icmp eq i32 %31, 0
  br i1 %50, label %57, label %51, !dx.controlflow.hints !23

; <label>:51                                      ; preds = %17
  %52 = icmp eq i32 %31, 1
  br i1 %52, label %57, label %53, !dx.controlflow.hints !24

; <label>:53                                      ; preds = %51
  %54 = icmp eq i32 %31, 2
  %55 = select i1 %54, float %49, float %45
  %56 = select i1 %54, float %45, float %49
  br label %57

; <label>:57                                      ; preds = %53, %51, %17
  %58 = phi float [ %49, %17 ], [ %41, %51 ], [ %41, %53 ]
  %59 = phi float [ %41, %17 ], [ %49, %51 ], [ %43, %53 ]
  %60 = phi float [ %43, %17 ], [ %43, %51 ], [ %55, %53 ]
  %61 = phi float [ %45, %17 ], [ %45, %51 ], [ %56, %53 ]
  %62 = fmul fast float %59, %59
  %63 = fmul fast float %62, 2.000000e+00
  %64 = fsub fast float 1.000000e+00, %63
  %65 = fmul fast float %60, %60
  %66 = fmul fast float %65, 2.000000e+00
  %67 = fsub fast float %64, %66
  %68 = fmul fast float %58, 2.000000e+00
  %69 = fmul fast float %68, %59
  %70 = fmul fast float %60, 2.000000e+00
  %71 = fmul fast float %70, %61
  %72 = fsub fast float %69, %71
  %73 = fmul fast float %60, %58
  %74 = fmul fast float %61, %59
  %75 = fadd fast float %74, %73
  %76 = fmul fast float %75, 2.000000e+00
  %77 = fmul fast float %59, %58
  %78 = fmul fast float %61, %60
  %79 = fadd fast float %78, %77
  %80 = fmul fast float %58, %58
  %81 = fmul fast float %80, 2.000000e+00
  %82 = fsub fast float 1.000000e+00, %81
  %83 = fsub fast float %82, %66
  %84 = fmul fast float %59, 2.000000e+00
  %85 = fmul fast float %84, %60
  %86 = fmul fast float %68, %61
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %68, %60
  %89 = fmul fast float %84, %61
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %60, %59
  %92 = fmul fast float %61, %58
  %93 = fadd fast float %92, %91
  %94 = fmul fast float %93, 2.000000e+00
  %95 = fsub fast float %82, %63
  %96 = and i32 %30, 512
  %97 = icmp ne i32 %96, 0
  %98 = select i1 %97, float 1.000000e+00, float -1.000000e+00
  %99 = and i32 %30, 1024
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %100, float -1.000000e+00, float 1.000000e+00
  %102 = fmul fast float %98, %101
  %103 = fmul fast float %67, %102
  %104 = fmul fast float %102, 2.000000e+00
  %105 = fmul fast float %104, %79
  %106 = fmul fast float %90, %102
  %107 = shl i32 %28, 4
  %108 = and i32 %107, 32752
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108)  ; LegacyF16ToF32(value)
  %110 = lshr i32 %28, 7
  %111 = and i32 %110, 32752
  %112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %111)  ; LegacyF16ToF32(value)
  %113 = lshr i32 %28, 22
  %114 = shl nuw nsw i32 %113, 5
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114)  ; LegacyF16ToF32(value)
  br label %141

; <label>:116                                     ; preds = %15
  %117 = sub i32 %8, %10
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %117, i32 0)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 0
  %120 = and i32 %119, 8191
  %121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %120, i32 0)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = extractvalue %dx.types.ResRet.f32 %121, 1
  %124 = extractvalue %dx.types.ResRet.f32 %121, 2
  %125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %120, i32 12)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = extractvalue %dx.types.ResRet.f32 %125, 1
  %128 = extractvalue %dx.types.ResRet.f32 %125, 2
  %129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %120, i32 24)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %120, i32 36)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = extractvalue %dx.types.ResRet.f32 %133, 1
  %136 = extractvalue %dx.types.ResRet.f32 %133, 2
  %137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %120, i32 48)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = extractvalue %dx.types.ResRet.f32 %137, 2
  br label %141

; <label>:141                                     ; preds = %116, %57
  %142 = phi float [ %76, %57 ], [ %134, %116 ]
  %143 = phi float [ %72, %57 ], [ %130, %116 ]
  %144 = phi float [ %103, %57 ], [ %126, %116 ]
  %145 = phi float [ %87, %57 ], [ %135, %116 ]
  %146 = phi float [ %83, %57 ], [ %131, %116 ]
  %147 = phi float [ %105, %57 ], [ %127, %116 ]
  %148 = phi float [ %95, %57 ], [ %136, %116 ]
  %149 = phi float [ %94, %57 ], [ %132, %116 ]
  %150 = phi float [ %106, %57 ], [ %128, %116 ]
  %151 = phi float [ %22, %57 ], [ %122, %116 ]
  %152 = phi float [ %23, %57 ], [ %123, %116 ]
  %153 = phi float [ %24, %57 ], [ %124, %116 ]
  %154 = phi float [ %109, %57 ], [ %138, %116 ]
  %155 = phi float [ %112, %57 ], [ %139, %116 ]
  %156 = phi float [ %115, %57 ], [ %140, %116 ]
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = fmul fast float %158, %154
  %162 = fmul fast float %159, %155
  %163 = fmul fast float %160, %156
  %164 = fmul fast float %161, %144
  %165 = fmul fast float %161, %147
  %166 = fmul fast float %161, %150
  %167 = fmul fast float %162, %143
  %168 = fmul fast float %162, %146
  %169 = fmul fast float %162, %149
  %170 = fmul fast float %163, %142
  %171 = fmul fast float %163, %145
  %172 = fmul fast float %163, %148
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = fsub fast float %151, %174
  %178 = fsub fast float %152, %175
  %179 = fsub fast float %153, %176
  %180 = mul i32 %8, 48
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %180, i32 undef, float %177, float %178, float %179, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %181 = or i32 %180, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %181, i32 undef, float %164, float %165, float %166, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %182 = add i32 %180, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %182, i32 undef, float %167, float %168, float %169, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %183 = add i32 %180, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %183, i32 undef, float %170, float %171, float %172, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %184

; <label>:184                                     ; preds = %141, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !16, null}
!5 = !{!6, !8, !10, !11, !13}
!6 = !{i32 0, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{i32 1, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 48}
!10 = !{i32 2, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i32 0, !7}
!11 = !{i32 3, %"class.StructuredBuffer<GfxImpactMarkDecalVolumeGPU>"* undef, !"", i32 0, i32 7, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 72}
!13 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 12, i32 0, !7}
!14 = !{!15}
!15 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17}
!17 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!18 = !{void ()* @cs_decal_volume_generate_cluster_data, !"cs_decal_volume_generate_cluster_data", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

