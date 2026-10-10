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
; shader hash: 2b8bd04f165eebc61b3e8910463f7c4c
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

define void @cs_reflection_probe_filtering_box_flip_faces_offline() {
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
  br i1 %19, label %206, label %20, !dx.controlflow.hints !16

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
  br i1 %35, label %181, label %36

; <label>:36                                      ; preds = %20
  br label %37

; <label>:37                                      ; preds = %177, %36
  %38 = phi float [ %174, %177 ], [ 0.000000e+00, %36 ]
  %39 = phi float [ %171, %177 ], [ 0.000000e+00, %36 ]
  %40 = phi float [ %172, %177 ], [ 0.000000e+00, %36 ]
  %41 = phi float [ %173, %177 ], [ 0.000000e+00, %36 ]
  %42 = phi i32 [ %178, %177 ], [ 0, %36 ]
  br label %43

; <label>:43                                      ; preds = %61, %37
  %44 = phi float [ %174, %61 ], [ %38, %37 ]
  %45 = phi float [ %171, %61 ], [ %39, %37 ]
  %46 = phi float [ %172, %61 ], [ %40, %37 ]
  %47 = phi float [ %173, %61 ], [ %41, %37 ]
  %48 = phi i32 [ %175, %61 ], [ 0, %37 ]
  %49 = add i32 %48, %31
  %50 = add i32 %42, %32
  switch i32 %12, label %61 [
    i32 3, label %58
    i32 1, label %51
    i32 2, label %55
  ], !dx.controlflow.hints !17

; <label>:51                                      ; preds = %43
  %52 = add nsw i32 %21, -1
  %53 = sub i32 %52, %50
  %54 = sub i32 %52, %49
  br label %61

; <label>:55                                      ; preds = %43
  %56 = add nsw i32 %21, -1
  %57 = sub i32 %56, %50
  br label %61

; <label>:58                                      ; preds = %43
  %59 = add nsw i32 %21, -1
  %60 = sub i32 %59, %49
  br label %61

; <label>:61                                      ; preds = %58, %55, %51, %43
  %62 = phi i32 [ %60, %58 ], [ %49, %55 ], [ %53, %51 ], [ %50, %43 ]
  %63 = phi i32 [ %50, %58 ], [ %57, %55 ], [ %54, %51 ], [ %49, %43 ]
  %64 = sitofp i32 %62 to float
  %65 = sitofp i32 %63 to float
  %66 = fadd fast float %64, 5.000000e-01
  %67 = fadd fast float %65, 5.000000e-01
  %68 = fmul fast float %23, 2.000000e+00
  %69 = fmul fast float %68, %66
  %70 = fadd fast float %69, -1.000000e+00
  %71 = fmul fast float %68, %67
  %72 = fadd fast float %71, -1.000000e+00
  %73 = fsub fast float %70, %23
  %74 = fsub fast float %72, %23
  %75 = fadd fast float %70, %23
  %76 = fadd fast float %72, %23
  %77 = fmul fast float %73, %73
  %78 = fmul fast float %74, %74
  %79 = fadd fast float %77, 1.000000e+00
  %80 = fadd fast float %79, %78
  %81 = call float @dx.op.unary.f32(i32 24, float %80)  ; Sqrt(value)
  %82 = fmul fast float %74, %73
  %83 = fdiv fast float %82, %81
  %84 = call float @dx.op.unary.f32(i32 17, float %83)  ; Atan(value)
  %85 = fadd fast float %84, 0x400921FB60000000
  %86 = fadd fast float %84, 0xC00921FB60000000
  %87 = fcmp fast olt float %81, 0.000000e+00
  %88 = fcmp fast oeq float %81, 0.000000e+00
  %89 = fcmp fast oge float %82, 0.000000e+00
  %90 = fcmp fast olt float %82, 0.000000e+00
  %91 = and i1 %87, %89
  %92 = select i1 %91, float %85, float %84
  %93 = and i1 %87, %90
  %94 = select i1 %93, float %86, float %92
  %95 = and i1 %88, %90
  %96 = select i1 %95, float 0xBFF921FB60000000, float %94
  %97 = and i1 %88, %89
  %98 = select i1 %97, float 0x3FF921FB60000000, float %96
  %99 = fmul fast float %75, %75
  %100 = fadd fast float %99, 1.000000e+00
  %101 = fadd fast float %100, %78
  %102 = call float @dx.op.unary.f32(i32 24, float %101)  ; Sqrt(value)
  %103 = fmul fast float %74, %75
  %104 = fdiv fast float %103, %102
  %105 = call float @dx.op.unary.f32(i32 17, float %104)  ; Atan(value)
  %106 = fadd fast float %105, 0x400921FB60000000
  %107 = fadd fast float %105, 0xC00921FB60000000
  %108 = fcmp fast olt float %102, 0.000000e+00
  %109 = fcmp fast oeq float %102, 0.000000e+00
  %110 = fcmp fast oge float %103, 0.000000e+00
  %111 = fcmp fast olt float %103, 0.000000e+00
  %112 = and i1 %108, %110
  %113 = select i1 %112, float %106, float %105
  %114 = and i1 %108, %111
  %115 = select i1 %114, float %107, float %113
  %116 = and i1 %109, %111
  %117 = and i1 %109, %110
  %118 = fmul fast float %76, %76
  %119 = fadd fast float %79, %118
  %120 = call float @dx.op.unary.f32(i32 24, float %119)  ; Sqrt(value)
  %121 = fmul fast float %76, %73
  %122 = fdiv fast float %121, %120
  %123 = call float @dx.op.unary.f32(i32 17, float %122)  ; Atan(value)
  %124 = fadd fast float %123, 0x400921FB60000000
  %125 = fadd fast float %123, 0xC00921FB60000000
  %126 = fcmp fast olt float %120, 0.000000e+00
  %127 = fcmp fast oeq float %120, 0.000000e+00
  %128 = fcmp fast oge float %121, 0.000000e+00
  %129 = fcmp fast olt float %121, 0.000000e+00
  %130 = and i1 %126, %128
  %131 = select i1 %130, float %124, float %123
  %132 = and i1 %126, %129
  %133 = select i1 %132, float %125, float %131
  %134 = and i1 %127, %129
  %135 = and i1 %127, %128
  %136 = fadd fast float %100, %118
  %137 = call float @dx.op.unary.f32(i32 24, float %136)  ; Sqrt(value)
  %138 = fmul fast float %76, %75
  %139 = fdiv fast float %138, %137
  %140 = call float @dx.op.unary.f32(i32 17, float %139)  ; Atan(value)
  %141 = fadd fast float %140, 0x400921FB60000000
  %142 = fadd fast float %140, 0xC00921FB60000000
  %143 = fcmp fast olt float %137, 0.000000e+00
  %144 = fcmp fast oeq float %137, 0.000000e+00
  %145 = fcmp fast oge float %138, 0.000000e+00
  %146 = fcmp fast olt float %138, 0.000000e+00
  %147 = and i1 %145, %143
  %148 = select i1 %147, float %141, float %140
  %149 = and i1 %146, %143
  %150 = select i1 %149, float %142, float %148
  %151 = and i1 %146, %144
  %152 = select i1 %151, float 0xBFF921FB60000000, float %150
  %153 = and i1 %145, %144
  %154 = select i1 %153, float 0x3FF921FB60000000, float %152
  %155 = fsub fast float -0.000000e+00, %115
  %156 = select i1 %116, float 0x3FF921FB60000000, float %155
  %157 = select i1 %117, float 0xBFF921FB60000000, float %156
  %158 = fadd fast float %98, %157
  %159 = fsub fast float -0.000000e+00, %133
  %160 = select i1 %134, float 0x3FF921FB60000000, float %159
  %161 = select i1 %135, float 0xBFF921FB60000000, float %160
  %162 = fadd fast float %158, %161
  %163 = fadd fast float %162, %154
  %164 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %62, i32 %63, i32 %12, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.f32 %164, 0
  %166 = extractvalue %dx.types.ResRet.f32 %164, 1
  %167 = extractvalue %dx.types.ResRet.f32 %164, 2
  %168 = fmul fast float %163, %165
  %169 = fmul fast float %163, %166
  %170 = fmul fast float %163, %167
  %171 = fadd fast float %168, %45
  %172 = fadd fast float %169, %46
  %173 = fadd fast float %170, %47
  %174 = fadd fast float %163, %44
  %175 = add nuw i32 %48, 1
  %176 = icmp eq i32 %175, %34
  br i1 %176, label %177, label %43

; <label>:177                                     ; preds = %61
  %178 = add nuw i32 %42, 1
  %179 = icmp eq i32 %178, %34
  br i1 %179, label %180, label %37

; <label>:180                                     ; preds = %177
  br label %181

; <label>:181                                     ; preds = %180, %20
  %182 = phi float [ 0.000000e+00, %20 ], [ %174, %180 ]
  %183 = phi float [ 0.000000e+00, %20 ], [ %171, %180 ]
  %184 = phi float [ 0.000000e+00, %20 ], [ %172, %180 ]
  %185 = phi float [ 0.000000e+00, %20 ], [ %173, %180 ]
  %186 = fcmp fast ogt float %182, 0.000000e+00
  %187 = fdiv fast float 1.000000e+00, %182
  %188 = select i1 %186, float %187, float 1.000000e+00
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 0
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %201, label %192, !dx.controlflow.hints !18

; <label>:192                                     ; preds = %181
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fmul fast float %194, 0x3FD20DD760000000
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %198 = call float @dx.op.binary.f32(i32 35, float %195, float %197)  ; FMax(a,b)
  %199 = fdiv fast float 1.000000e+00, %198
  %200 = fmul fast float %199, %188
  br label %201

; <label>:201                                     ; preds = %192, %181
  %202 = phi float [ %200, %192 ], [ %188, %181 ]
  %203 = fmul fast float %202, %183
  %204 = fmul fast float %202, %184
  %205 = fmul fast float %202, %185
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %12, float %203, float %204, float %205, float %203, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %206

; <label>:206                                     ; preds = %201, %0
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
!13 = !{void ()* @cs_reflection_probe_filtering_box_flip_faces_offline, !"cs_reflection_probe_filtering_box_flip_faces_offline", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}

