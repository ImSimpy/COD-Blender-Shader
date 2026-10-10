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
; shader hash: 9cfdd9d439a4c0eda98b7986a2b8ac28
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     f32     2darray      T0             t0     1
;                                   texture    byte         r/o      T1             t2     1
;                                       UAV     f32     2darray      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeFilteringComputeConstants = type { i32, i32, i32, i32, i32, float, float, float }

define void @cs_reflection_probe_filtering_box_offline() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %8 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %9 = extractvalue %dx.types.Dimensions %8, 0
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 0
  %12 = add i32 %11, %7
  %13 = icmp uge i32 %5, %9
  %14 = icmp uge i32 %6, %9
  %15 = or i1 %13, %14
  %16 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %17 = add i32 %16, %11
  %18 = icmp uge i32 %12, %17
  %19 = or i1 %15, %18
  br i1 %19, label %193, label %20, !dx.controlflow.hints !16

; <label>:20                                      ; preds = %0
  %21 = extractvalue %dx.types.CBufRet.i32 %10, 2
  %22 = uitofp i32 %21 to float
  %23 = fdiv fast float 1.000000e+00, %22
  %24 = mul i32 %21, %5
  %25 = mul i32 %21, %6
  %26 = uitofp i32 %24 to float
  %27 = uitofp i32 %25 to float
  %28 = uitofp i32 %9 to float
  %29 = fdiv fast float %26, %28
  %30 = fdiv fast float %27, %28
  %31 = fptoui float %29 to i32
  %32 = fptoui float %30 to i32
  %33 = fdiv fast float %22, %28
  %34 = fptoui float %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %168, label %36

; <label>:36                                      ; preds = %20
  br label %37

; <label>:37                                      ; preds = %164, %36
  %38 = phi float [ %161, %164 ], [ 0.000000e+00, %36 ]
  %39 = phi float [ %158, %164 ], [ 0.000000e+00, %36 ]
  %40 = phi float [ %159, %164 ], [ 0.000000e+00, %36 ]
  %41 = phi float [ %160, %164 ], [ 0.000000e+00, %36 ]
  %42 = phi i32 [ %165, %164 ], [ 0, %36 ]
  br label %43

; <label>:43                                      ; preds = %43, %37
  %44 = phi float [ %161, %43 ], [ %38, %37 ]
  %45 = phi float [ %158, %43 ], [ %39, %37 ]
  %46 = phi float [ %159, %43 ], [ %40, %37 ]
  %47 = phi float [ %160, %43 ], [ %41, %37 ]
  %48 = phi i32 [ %162, %43 ], [ 0, %37 ]
  %49 = add i32 %48, %31
  %50 = add i32 %42, %32
  %51 = sitofp i32 %49 to float
  %52 = sitofp i32 %50 to float
  %53 = fadd fast float %51, 5.000000e-01
  %54 = fadd fast float %52, 5.000000e-01
  %55 = fmul fast float %23, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fadd fast float %56, -1.000000e+00
  %58 = fmul fast float %55, %54
  %59 = fadd fast float %58, -1.000000e+00
  %60 = fsub fast float %57, %23
  %61 = fsub fast float %59, %23
  %62 = fadd fast float %57, %23
  %63 = fadd fast float %59, %23
  %64 = fmul fast float %60, %60
  %65 = fmul fast float %61, %61
  %66 = fadd fast float %65, 1.000000e+00
  %67 = fadd fast float %66, %64
  %68 = call float @dx.op.unary.f32(i32 24, float %67)  ; Sqrt(value)
  %69 = fmul fast float %60, %61
  %70 = fdiv fast float %69, %68
  %71 = call float @dx.op.unary.f32(i32 17, float %70)  ; Atan(value)
  %72 = fadd fast float %71, 0x400921FB60000000
  %73 = fadd fast float %71, 0xC00921FB60000000
  %74 = fcmp fast olt float %68, 0.000000e+00
  %75 = fcmp fast oeq float %68, 0.000000e+00
  %76 = fcmp fast oge float %69, 0.000000e+00
  %77 = fcmp fast olt float %69, 0.000000e+00
  %78 = and i1 %74, %76
  %79 = select i1 %78, float %72, float %71
  %80 = and i1 %74, %77
  %81 = select i1 %80, float %73, float %79
  %82 = and i1 %75, %77
  %83 = select i1 %82, float 0xBFF921FB60000000, float %81
  %84 = and i1 %75, %76
  %85 = select i1 %84, float 0x3FF921FB60000000, float %83
  %86 = fmul fast float %62, %62
  %87 = fadd fast float %66, %86
  %88 = call float @dx.op.unary.f32(i32 24, float %87)  ; Sqrt(value)
  %89 = fmul fast float %62, %61
  %90 = fdiv fast float %89, %88
  %91 = call float @dx.op.unary.f32(i32 17, float %90)  ; Atan(value)
  %92 = fadd fast float %91, 0x400921FB60000000
  %93 = fadd fast float %91, 0xC00921FB60000000
  %94 = fcmp fast olt float %88, 0.000000e+00
  %95 = fcmp fast oeq float %88, 0.000000e+00
  %96 = fcmp fast oge float %89, 0.000000e+00
  %97 = fcmp fast olt float %89, 0.000000e+00
  %98 = and i1 %94, %96
  %99 = select i1 %98, float %92, float %91
  %100 = and i1 %94, %97
  %101 = select i1 %100, float %93, float %99
  %102 = and i1 %95, %97
  %103 = and i1 %95, %96
  %104 = fmul fast float %63, %63
  %105 = fadd fast float %104, 1.000000e+00
  %106 = fadd fast float %105, %64
  %107 = call float @dx.op.unary.f32(i32 24, float %106)  ; Sqrt(value)
  %108 = fmul fast float %60, %63
  %109 = fdiv fast float %108, %107
  %110 = call float @dx.op.unary.f32(i32 17, float %109)  ; Atan(value)
  %111 = fadd fast float %110, 0x400921FB60000000
  %112 = fadd fast float %110, 0xC00921FB60000000
  %113 = fcmp fast olt float %107, 0.000000e+00
  %114 = fcmp fast oeq float %107, 0.000000e+00
  %115 = fcmp fast oge float %108, 0.000000e+00
  %116 = fcmp fast olt float %108, 0.000000e+00
  %117 = and i1 %113, %115
  %118 = select i1 %117, float %111, float %110
  %119 = and i1 %113, %116
  %120 = select i1 %119, float %112, float %118
  %121 = and i1 %114, %116
  %122 = and i1 %114, %115
  %123 = fadd fast float %105, %86
  %124 = call float @dx.op.unary.f32(i32 24, float %123)  ; Sqrt(value)
  %125 = fmul fast float %62, %63
  %126 = fdiv fast float %125, %124
  %127 = call float @dx.op.unary.f32(i32 17, float %126)  ; Atan(value)
  %128 = fadd fast float %127, 0x400921FB60000000
  %129 = fadd fast float %127, 0xC00921FB60000000
  %130 = fcmp fast olt float %124, 0.000000e+00
  %131 = fcmp fast oeq float %124, 0.000000e+00
  %132 = fcmp fast oge float %125, 0.000000e+00
  %133 = fcmp fast olt float %125, 0.000000e+00
  %134 = and i1 %132, %130
  %135 = select i1 %134, float %128, float %127
  %136 = and i1 %133, %130
  %137 = select i1 %136, float %129, float %135
  %138 = and i1 %133, %131
  %139 = select i1 %138, float 0xBFF921FB60000000, float %137
  %140 = and i1 %132, %131
  %141 = select i1 %140, float 0x3FF921FB60000000, float %139
  %142 = fsub fast float -0.000000e+00, %101
  %143 = select i1 %102, float 0x3FF921FB60000000, float %142
  %144 = select i1 %103, float 0xBFF921FB60000000, float %143
  %145 = fadd fast float %85, %144
  %146 = fsub fast float -0.000000e+00, %120
  %147 = select i1 %121, float 0x3FF921FB60000000, float %146
  %148 = select i1 %122, float 0xBFF921FB60000000, float %147
  %149 = fadd fast float %145, %148
  %150 = fadd fast float %149, %141
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %49, i32 %50, i32 %12, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = extractvalue %dx.types.ResRet.f32 %151, 2
  %155 = fmul fast float %150, %152
  %156 = fmul fast float %150, %153
  %157 = fmul fast float %150, %154
  %158 = fadd fast float %155, %45
  %159 = fadd fast float %156, %46
  %160 = fadd fast float %157, %47
  %161 = fadd fast float %150, %44
  %162 = add nuw i32 %48, 1
  %163 = icmp eq i32 %162, %34
  br i1 %163, label %164, label %43

; <label>:164                                     ; preds = %43
  %165 = add nuw i32 %42, 1
  %166 = icmp eq i32 %165, %34
  br i1 %166, label %167, label %37

; <label>:167                                     ; preds = %164
  br label %168

; <label>:168                                     ; preds = %167, %20
  %169 = phi float [ 0.000000e+00, %20 ], [ %161, %167 ]
  %170 = phi float [ 0.000000e+00, %20 ], [ %158, %167 ]
  %171 = phi float [ 0.000000e+00, %20 ], [ %159, %167 ]
  %172 = phi float [ 0.000000e+00, %20 ], [ %160, %167 ]
  %173 = fcmp fast ogt float %169, 0.000000e+00
  %174 = fdiv fast float 1.000000e+00, %169
  %175 = select i1 %173, float %174, float 1.000000e+00
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 0
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %188, label %179, !dx.controlflow.hints !17

; <label>:179                                     ; preds = %168
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fmul fast float %181, 0x3FD20DD760000000
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = call float @dx.op.binary.f32(i32 35, float %182, float %184)  ; FMax(a,b)
  %186 = fdiv fast float 1.000000e+00, %185
  %187 = fmul fast float %186, %175
  br label %188

; <label>:188                                     ; preds = %179, %168
  %189 = phi float [ %187, %179 ], [ %175, %168 ]
  %190 = fmul fast float %189, %170
  %191 = fmul fast float %189, %171
  %192 = fmul fast float %189, %172
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %12, float %190, float %191, float %192, float %190, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %193

; <label>:193                                     ; preds = %188, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %ReflectionProbeFilteringComputeConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @cs_reflection_probe_filtering_box_offline, !"cs_reflection_probe_filtering_box_offline", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

