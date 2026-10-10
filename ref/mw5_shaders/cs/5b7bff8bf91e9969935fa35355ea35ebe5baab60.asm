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
; shader hash: ccf3c45b625f4855219d0063b6070508
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
;   [32 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [28 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                   texture     f32         buf      T2             t2     1
;                                       UAV     f32          3d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxPersistentDamageLayerDrawDamageData>" = type { %struct.GfxPersistentDamageLayerDrawDamageData }
%struct.GfxPersistentDamageLayerDrawDamageData = type { <3 x float>, float, float, float, float }
%"class.StructuredBuffer<GfxPersistentDamageLayerDamagedVoxel>" = type { %struct.GfxPersistentDamageLayerDamagedVoxel }
%struct.GfxPersistentDamageLayerDamagedVoxel = type { <3 x float>, i32 }
%"class.Buffer<float>" = type { float }
%"class.RWTexture3D<float>" = type { float }
%GfxPersistentDamageLayerMappingConstants = type { i32, i32, i32, i32, float, i32, i32, i32 }

@"\01?sharedDamageMask@@3PAIA" = external addrspace(3) global [8 x i32], align 4

define void @cs_pdl_draw_damage() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 2)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = add i32 %12, %10
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %13, i32 12)  ; BufferLoad(srv,index,wot)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = icmp ult i32 %9, 8
  br i1 %16, label %17, label %19, !dx.controlflow.hints !19

; <label>:17                                      ; preds = %0
  %18 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedDamageMask@@3PAIA", i32 0, i32 %9
  store i32 0, i32 addrspace(3)* %18, align 4, !tbaa !20
  br label %19

; <label>:19                                      ; preds = %17, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %20 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.i32 %20, 1
  %22 = add i32 %21, 63
  %23 = lshr i32 %22, 6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %79, label %25

; <label>:25                                      ; preds = %19
  br label %26

; <label>:26                                      ; preds = %75, %25
  %27 = phi i32 [ %76, %75 ], [ 0, %25 ]
  %28 = shl i32 %27, 6
  %29 = add i32 %28, %9
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 1
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %33, label %75, !dx.controlflow.hints !24

; <label>:33                                      ; preds = %26
  %34 = extractvalue %dx.types.CBufRet.i32 %30, 0
  %35 = add i32 %34, %29
  %36 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %35, i32 0)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = extractvalue %dx.types.ResRet.f32 %36, 2
  %40 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %35, i32 12)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %35, i32 16)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = fadd fast float %43, %41
  %45 = fmul fast float %44, %44
  %46 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = fsub fast float %47, %37
  %53 = fsub fast float %48, %38
  %54 = fsub fast float %49, %39
  %55 = fsub fast float %37, %47
  %56 = fsub fast float %55, %51
  %57 = fsub fast float %38, %48
  %58 = fsub fast float %57, %51
  %59 = fsub fast float %39, %49
  %60 = fsub fast float %59, %51
  %61 = call float @dx.op.binary.f32(i32 35, float %56, float %52)  ; FMax(a,b)
  %62 = call float @dx.op.binary.f32(i32 35, float %58, float %53)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 35, float %60, float %54)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %65 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %66 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %67 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %68 = fcmp fast olt float %67, %45
  br i1 %68, label %69, label %75, !dx.controlflow.hints !25

; <label>:69                                      ; preds = %33
  %70 = lshr i32 %29, 5
  %71 = and i32 %29, 31
  %72 = shl i32 1, %71
  %73 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedDamageMask@@3PAIA", i32 0, i32 %70
  %74 = atomicrmw or i32 addrspace(3)* %73, i32 %72 seq_cst
  br label %75

; <label>:75                                      ; preds = %69, %33, %26
  %76 = add nuw nsw i32 %27, 64
  %77 = icmp ult i32 %76, %23
  br i1 %77, label %26, label %78

; <label>:78                                      ; preds = %75
  br label %79

; <label>:79                                      ; preds = %78, %19
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %175, label %83

; <label>:83                                      ; preds = %79
  br label %84

; <label>:84                                      ; preds = %168, %83
  %85 = phi float [ %169, %168 ], [ 0.000000e+00, %83 ]
  %86 = phi i32 [ %170, %168 ], [ 0, %83 ]
  %87 = lshr i32 %86, 5
  %88 = and i32 %86, 31
  %89 = shl i32 1, %88
  %90 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedDamageMask@@3PAIA", i32 0, i32 %87
  %91 = load i32, i32 addrspace(3)* %90, align 4, !tbaa !20
  %92 = and i32 %89, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %168, label %94, !dx.controlflow.hints !26

; <label>:94                                      ; preds = %84
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 0
  %97 = add i32 %96, %86
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %97, i32 0)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %97, i32 12)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %97, i32 16)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %97, i32 20)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %97, i32 24)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = fmul fast float %111, 0x3FD5555560000000
  %113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %13, i32 0)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = extractvalue %dx.types.ResRet.f32 %113, 1
  %116 = extractvalue %dx.types.ResRet.f32 %113, 2
  %117 = uitofp i32 %6 to float
  %118 = uitofp i32 %7 to float
  %119 = uitofp i32 %8 to float
  %120 = fmul fast float %112, %117
  %121 = fmul fast float %112, %118
  %122 = fmul fast float %112, %119
  %123 = fsub fast float %120, %99
  %124 = fadd fast float %123, %114
  %125 = fsub fast float %121, %100
  %126 = fadd fast float %125, %115
  %127 = fsub fast float %122, %101
  %128 = fadd fast float %127, %116
  %129 = call float @dx.op.dot3.f32(i32 55, float %124, float %126, float %128, float %124, float %126, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %130 = fsub fast float %103, %105
  %131 = fadd fast float %105, %103
  %132 = fmul fast float %130, %130
  %133 = fcmp fast olt float %129, %132
  br i1 %133, label %154, label %134, !dx.controlflow.hints !27

; <label>:134                                     ; preds = %94
  %135 = fmul fast float %131, %131
  %136 = fcmp fast ogt float %129, %135
  br i1 %136, label %154, label %137, !dx.controlflow.hints !28

; <label>:137                                     ; preds = %134
  %138 = call float @dx.op.unary.f32(i32 24, float %129)  ; Sqrt(value)
  %139 = fsub fast float %131, %138
  %140 = fmul fast float %139, %139
  %141 = fmul fast float %132, 3.000000e+00
  %142 = fsub fast float %129, %141
  %143 = fmul fast float %131, 2.000000e+00
  %144 = fmul fast float %143, %138
  %145 = fadd fast float %142, %144
  %146 = fmul fast float %105, %105
  %147 = fmul fast float %146, 1.600000e+01
  %148 = fmul fast float %147, %105
  %149 = fmul fast float %148, %138
  %150 = fdiv fast float 1.000000e+00, %149
  %151 = fmul fast float %140, %150
  %152 = fmul fast float %151, %145
  %153 = call float @dx.op.unary.f32(i32 7, float %152)  ; Saturate(value)
  br label %154

; <label>:154                                     ; preds = %137, %134, %94
  %155 = phi float [ %153, %137 ], [ %107, %94 ], [ 0.000000e+00, %134 ]
  %156 = fmul fast float %105, 4.000000e+00
  %157 = fcmp fast ogt float %103, %156
  br i1 %157, label %158, label %163, !dx.controlflow.hints !29

; <label>:158                                     ; preds = %154
  %159 = fmul fast float %103, %103
  %160 = fdiv fast float %129, %159
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  %162 = fsub fast float 1.000000e+00, %161
  br label %163

; <label>:163                                     ; preds = %158, %154
  %164 = phi float [ %162, %158 ], [ 1.000000e+00, %154 ]
  %165 = fmul fast float %155, %109
  %166 = fmul fast float %165, %164
  %167 = fadd fast float %166, %85
  br label %168

; <label>:168                                     ; preds = %163, %84
  %169 = phi float [ %167, %163 ], [ %85, %84 ]
  %170 = add i32 %86, 1
  %171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.i32 %171, 1
  %173 = icmp ult i32 %170, %172
  br i1 %173, label %84, label %174

; <label>:174                                     ; preds = %168
  br label %175

; <label>:175                                     ; preds = %174, %79
  %176 = phi float [ 0.000000e+00, %79 ], [ %169, %174 ]
  %177 = shl i32 %15, 2
  %178 = and i32 %177, 4092
  %179 = lshr i32 %15, 8
  %180 = and i32 %179, 4092
  %181 = lshr i32 %15, 18
  %182 = and i32 %181, 4092
  %183 = add i32 %178, %6
  %184 = add i32 %180, %7
  %185 = add i32 %182, %8
  %186 = shl i32 %13, 6
  %187 = add i32 %186, %9
  %188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fadd fast float %189, %176
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %183, i32 %184, i32 %185, float %191, float %191, float %191, float %191, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !14, null}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.StructuredBuffer<GfxPersistentDamageLayerDrawDamageData>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 28}
!8 = !{i32 1, %"class.StructuredBuffer<GfxPersistentDamageLayerDamagedVoxel>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 16}
!10 = !{i32 2, %"class.Buffer<float>"* undef, !"", i32 0, i32 2, i32 1, i32 10, i32 0, !11}
!11 = !{i32 0, i32 9}
!12 = !{!13}
!13 = !{i32 0, %"class.RWTexture3D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !11}
!14 = !{!15}
!15 = !{i32 0, %GfxPersistentDamageLayerMappingConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{void ()* @cs_pdl_draw_damage, !"cs_pdl_draw_damage", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 4, i32 4, i32 4}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

