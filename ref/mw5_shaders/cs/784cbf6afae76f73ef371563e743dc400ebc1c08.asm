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
; shader hash: 6d5d4e23cd20ea764d2ad68dc8728daa
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
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32        cube      T0             t1     1
;                                   texture    byte         r/o      T1             t2     1
;                                       UAV     f32     2darray      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.TextureCube<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeFilteringComputeConstants = type { i32, i32, i32, i32, i32, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_reflection_probe_filtering_importance_sample_offline() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %9 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %10 = extractvalue %dx.types.Dimensions %9, 0
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = add i32 %12, %8
  %14 = icmp uge i32 %6, %10
  %15 = icmp uge i32 %7, %10
  %16 = or i1 %14, %15
  %17 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %18 = add i32 %17, %12
  %19 = icmp uge i32 %13, %18
  %20 = or i1 %16, %19
  br i1 %20, label %231, label %21, !dx.controlflow.hints !18

; <label>:21                                      ; preds = %0
  %22 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %23 = uitofp i32 %6 to float
  %24 = uitofp i32 %7 to float
  %25 = fadd fast float %23, 5.000000e-01
  %26 = fadd fast float %24, 5.000000e-01
  %27 = uitofp i32 %10 to float
  %28 = fdiv fast float %25, %27
  %29 = fdiv fast float %26, %27
  %30 = fmul fast float %28, 2.000000e+00
  %31 = fmul fast float %29, 2.000000e+00
  %32 = fadd fast float %30, -1.000000e+00
  %33 = fadd fast float %31, -1.000000e+00
  switch i32 %13, label %34 [
    i32 5, label %43
    i32 1, label %37
    i32 2, label %46
    i32 3, label %39
    i32 4, label %41
  ], !dx.controlflow.hints !19

; <label>:34                                      ; preds = %21
  %35 = fsub fast float -0.000000e+00, %33
  %36 = fsub fast float -0.000000e+00, %32
  br label %46

; <label>:37                                      ; preds = %21
  %38 = fsub fast float -0.000000e+00, %33
  br label %46

; <label>:39                                      ; preds = %21
  %40 = fsub fast float -0.000000e+00, %33
  br label %46

; <label>:41                                      ; preds = %21
  %42 = fsub fast float -0.000000e+00, %33
  br label %46

; <label>:43                                      ; preds = %21
  %44 = fsub fast float -0.000000e+00, %32
  %45 = fsub fast float -0.000000e+00, %33
  br label %46

; <label>:46                                      ; preds = %43, %41, %39, %37, %34, %21
  %47 = phi float [ 1.000000e+00, %34 ], [ %32, %41 ], [ %32, %39 ], [ -1.000000e+00, %37 ], [ %44, %43 ], [ %32, %21 ]
  %48 = phi float [ %35, %34 ], [ %42, %41 ], [ -1.000000e+00, %39 ], [ %38, %37 ], [ %45, %43 ], [ 1.000000e+00, %21 ]
  %49 = phi float [ %36, %34 ], [ 1.000000e+00, %41 ], [ %40, %39 ], [ %32, %37 ], [ -1.000000e+00, %43 ], [ %33, %21 ]
  %50 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %51 = call float @dx.op.unary.f32(i32 25, float %50)  ; Rsqrt(value)
  %52 = fmul fast float %51, %47
  %53 = fmul fast float %51, %48
  %54 = fmul fast float %51, %49
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %57 = fsub fast float 1.000000e+00, %56
  %58 = call float @dx.op.binary.f32(i32 35, float %57, float 0x3F847AE140000000)  ; FMax(a,b)
  %59 = fmul fast float %58, %58
  %60 = fmul fast float %59, %59
  %61 = extractvalue %dx.types.CBufRet.i32 %11, 3
  %62 = uitofp i32 %22 to float
  %63 = fmul fast float %62, %62
  %64 = uitofp i32 %61 to float
  %65 = icmp eq i32 %61, 0
  br i1 %65, label %207, label %66

; <label>:66                                      ; preds = %46
  br label %67

; <label>:67                                      ; preds = %150, %66
  %68 = phi float [ %200, %150 ], [ 0.000000e+00, %66 ]
  %69 = phi float [ %201, %150 ], [ 0.000000e+00, %66 ]
  %70 = phi float [ %202, %150 ], [ 0.000000e+00, %66 ]
  %71 = phi float [ %203, %150 ], [ 0.000000e+00, %66 ]
  %72 = phi i32 [ %204, %150 ], [ 0, %66 ]
  %73 = uitofp i32 %72 to float
  %74 = shl i32 %72, 16
  %75 = lshr i32 %72, 16
  %76 = or i32 %74, %75
  %77 = shl i32 %76, 1
  %78 = and i32 %77, -1431655766
  %79 = lshr i32 %76, 1
  %80 = and i32 %79, 1431655765
  %81 = or i32 %78, %80
  %82 = shl i32 %81, 2
  %83 = and i32 %82, -858993460
  %84 = lshr i32 %81, 2
  %85 = and i32 %84, 858993459
  %86 = or i32 %83, %85
  %87 = shl i32 %86, 4
  %88 = and i32 %87, -252645136
  %89 = lshr i32 %86, 4
  %90 = and i32 %89, 252645135
  %91 = or i32 %88, %90
  %92 = shl i32 %91, 8
  %93 = and i32 %92, -16711936
  %94 = lshr i32 %91, 8
  %95 = and i32 %94, 16711935
  %96 = or i32 %93, %95
  %97 = uitofp i32 %96 to float
  %98 = fmul fast float %97, 0x3DF0000000000000
  %99 = fsub fast float 1.000000e+00, %98
  %100 = fadd fast float %60, -1.000000e+00
  %101 = fmul fast float %98, %100
  %102 = fadd fast float %101, 1.000000e+00
  %103 = fdiv fast float %99, %102
  %104 = call float @dx.op.unary.f32(i32 24, float %103)  ; Sqrt(value)
  %105 = call float @dx.op.unary.f32(i32 15, float %104)  ; Acos(value)
  %106 = fdiv fast float 0x401921FB60000000, %64
  %107 = fmul fast float %106, %73
  %108 = call float @dx.op.unary.f32(i32 13, float %105)  ; Sin(value)
  %109 = call float @dx.op.unary.f32(i32 12, float %107)  ; Cos(value)
  %110 = fmul fast float %109, %108
  %111 = call float @dx.op.unary.f32(i32 13, float %107)  ; Sin(value)
  %112 = fmul fast float %111, %108
  %113 = call float @dx.op.unary.f32(i32 12, float %105)  ; Cos(value)
  %114 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %115 = fcmp fast olt float %114, 0x3FEFF7CEE0000000
  %116 = fsub fast float -0.000000e+00, %53
  %117 = fsub fast float -0.000000e+00, %54
  br i1 %115, label %118, label %134, !dx.controlflow.hints !20

; <label>:118                                     ; preds = %67
  %119 = call float @dx.op.dot3.f32(i32 55, float %117, float 0.000000e+00, float %52, float %117, float 0.000000e+00, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = call float @dx.op.unary.f32(i32 25, float %119)  ; Rsqrt(value)
  %121 = fmul fast float %120, %117
  %122 = fmul fast float %120, %52
  %123 = fmul fast float %53, %122
  %124 = fsub fast float -0.000000e+00, %123
  %125 = fmul fast float %122, %52
  %126 = fmul fast float %121, %54
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %121, %53
  %129 = call float @dx.op.dot3.f32(i32 55, float %124, float %127, float %128, float %124, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %130 = call float @dx.op.unary.f32(i32 25, float %129)  ; Rsqrt(value)
  %131 = fmul fast float %130, %124
  %132 = fmul fast float %127, %130
  %133 = fmul fast float %128, %130
  br label %150

; <label>:134                                     ; preds = %67
  %135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %54, float %116, float 0.000000e+00, float %54, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = call float @dx.op.unary.f32(i32 25, float %135)  ; Rsqrt(value)
  %137 = fmul fast float %136, %54
  %138 = fmul fast float %136, %116
  %139 = fmul fast float %137, %54
  %140 = fmul fast float %138, %53
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %138, %52
  %143 = fmul fast float %52, %137
  %144 = fsub fast float -0.000000e+00, %143
  %145 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %144, float %141, float %142, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = call float @dx.op.unary.f32(i32 25, float %145)  ; Rsqrt(value)
  %147 = fmul fast float %141, %146
  %148 = fmul fast float %142, %146
  %149 = fmul fast float %146, %144
  br label %150

; <label>:150                                     ; preds = %134, %118
  %151 = phi float [ %121, %118 ], [ 0.000000e+00, %134 ]
  %152 = phi float [ %131, %118 ], [ %147, %134 ]
  %153 = phi float [ 0.000000e+00, %118 ], [ %137, %134 ]
  %154 = phi float [ %132, %118 ], [ %148, %134 ]
  %155 = phi float [ %122, %118 ], [ %138, %134 ]
  %156 = phi float [ %133, %118 ], [ %149, %134 ]
  %157 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = call float @dx.op.unary.f32(i32 25, float %157)  ; Rsqrt(value)
  %159 = fmul fast float %158, %52
  %160 = fmul fast float %158, %53
  %161 = fmul fast float %158, %54
  %162 = fmul fast float %151, %110
  %163 = call float @dx.op.tertiary.f32(i32 46, float %112, float %152, float %162)  ; FMad(a,b,c)
  %164 = call float @dx.op.tertiary.f32(i32 46, float %113, float %159, float %163)  ; FMad(a,b,c)
  %165 = fmul fast float %153, %110
  %166 = call float @dx.op.tertiary.f32(i32 46, float %112, float %154, float %165)  ; FMad(a,b,c)
  %167 = call float @dx.op.tertiary.f32(i32 46, float %113, float %160, float %166)  ; FMad(a,b,c)
  %168 = fmul fast float %155, %110
  %169 = call float @dx.op.tertiary.f32(i32 46, float %112, float %156, float %168)  ; FMad(a,b,c)
  %170 = call float @dx.op.tertiary.f32(i32 46, float %113, float %161, float %169)  ; FMad(a,b,c)
  %171 = fsub fast float -0.000000e+00, %52
  %172 = call float @dx.op.dot3.f32(i32 55, float %171, float %116, float %117, float %164, float %167, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = fmul fast float %172, 2.000000e+00
  %174 = fmul fast float %173, %164
  %175 = fmul fast float %173, %167
  %176 = fmul fast float %173, %170
  %177 = fsub fast float %171, %174
  %178 = fsub fast float %116, %175
  %179 = fsub fast float %117, %176
  %180 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %164, float %167, float %170)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = fmul fast float %181, %181
  %183 = fmul fast float %182, %100
  %184 = fadd fast float %183, 1.000000e+00
  %185 = fmul fast float %184, %184
  %186 = fdiv fast float %60, %185
  %187 = fmul fast float %64, 0x3FB45F3060000000
  %188 = fmul fast float %187, %186
  %189 = fdiv fast float 1.000000e+00, %188
  %190 = fmul fast float %63, %189
  %191 = call float @dx.op.unary.f32(i32 23, float %190)  ; Log(value)
  %192 = fmul fast float %191, 5.000000e-01
  %193 = fadd fast float %192, -5.000000e-01
  %194 = call float @dx.op.binary.f32(i32 35, float %193, float 0.000000e+00)  ; FMax(a,b)
  %195 = call float @dx.op.binary.f32(i32 36, float %194, float 5.000000e+00)  ; FMin(a,b)
  %196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %177, float %178, float %179, float undef, i32 undef, i32 undef, i32 undef, float %195)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = extractvalue %dx.types.ResRet.f32 %196, 1
  %199 = extractvalue %dx.types.ResRet.f32 %196, 2
  %200 = fadd fast float %197, %68
  %201 = fadd fast float %198, %69
  %202 = fadd fast float %199, %70
  %203 = fadd fast float %71, 1.000000e+00
  %204 = add nuw i32 %72, 1
  %205 = icmp eq i32 %204, %61
  br i1 %205, label %206, label %67

; <label>:206                                     ; preds = %150
  br label %207

; <label>:207                                     ; preds = %206, %46
  %208 = phi float [ 0.000000e+00, %46 ], [ %200, %206 ]
  %209 = phi float [ 0.000000e+00, %46 ], [ %201, %206 ]
  %210 = phi float [ 0.000000e+00, %46 ], [ %202, %206 ]
  %211 = phi float [ 0.000000e+00, %46 ], [ %203, %206 ]
  %212 = fcmp fast ogt float %211, 0.000000e+00
  %213 = fdiv fast float 1.000000e+00, %211
  %214 = select i1 %212, float %213, float 1.000000e+00
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %226, label %218, !dx.controlflow.hints !21

; <label>:218                                     ; preds = %207
  %219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = fmul fast float %220, 0x3FD20DD760000000
  %222 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %223 = call float @dx.op.binary.f32(i32 35, float %221, float %222)  ; FMax(a,b)
  %224 = fdiv fast float 1.000000e+00, %223
  %225 = fmul fast float %224, %214
  br label %226

; <label>:226                                     ; preds = %218, %207
  %227 = phi float [ %225, %218 ], [ %214, %207 ]
  %228 = fmul fast float %227, %208
  %229 = fmul fast float %227, %209
  %230 = fmul fast float %227, %210
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 %13, float %228, float %229, float %230, float %228, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %231

; <label>:231                                     ; preds = %226, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, !13}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.TextureCube<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 5, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %ReflectionProbeFilteringComputeConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!15 = !{void ()* @cs_reflection_probe_filtering_importance_sample_offline, !"cs_reflection_probe_filtering_importance_sample_offline", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

