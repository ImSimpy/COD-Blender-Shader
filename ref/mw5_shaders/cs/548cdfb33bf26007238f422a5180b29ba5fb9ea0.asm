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
; shader hash: 6c93a4cddd3ba935605c3a8766270ce9
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
;   [64 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<CSMNodeIntervals>" = type { %struct.CSMNodeIntervals }
%struct.CSMNodeIntervals = type { <2 x float>, i32, i32, i32, i32, i32, i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @process_nodes() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = alloca [4 x float], align 4
  %8 = alloca [4 x float], align 4
  %9 = alloca [4 x float], align 4
  %10 = alloca [4 x float], align 4
  %11 = alloca [4 x float], align 4
  %12 = alloca [4 x float], align 4
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %15 = icmp ult i32 %6, %14
  br i1 %15, label %16, label %1160, !dx.controlflow.hints !19

; <label>:16                                      ; preds = %0
  %17 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %18 = icmp eq i32 %17, 0
  %19 = shl i32 %6, 2
  br i1 %18, label %20, label %940, !dx.controlflow.hints !20

; <label>:20                                      ; preds = %16
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = icmp eq i32 %22, 1
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = icmp eq i32 %19, 0
  br i1 %23, label %27, label %343, !dx.controlflow.hints !21

; <label>:27                                      ; preds = %20
  %28 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %29 = bitcast i32 %28 to float
  br i1 %26, label %52, label %30

; <label>:30                                      ; preds = %27
  br label %31

; <label>:31                                      ; preds = %46, %30
  %32 = phi i32 [ %48, %46 ], [ %19, %30 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %30 ]
  %34 = phi i32 [ %49, %46 ], [ 0, %30 ]
  %35 = and i32 %32, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37, !dx.controlflow.hints !22

; <label>:37                                      ; preds = %31
  %38 = lshr i32 %34, 1
  %39 = and i32 %34, 1
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %40, i32 %25, i32 0
  %42 = add i32 %41, %38
  %43 = and i32 %42, 31
  %44 = shl i32 1, %43
  %45 = or i32 %44, %33
  br label %46

; <label>:46                                      ; preds = %37, %31
  %47 = phi i32 [ %45, %37 ], [ %33, %31 ]
  %48 = lshr i32 %32, 1
  %49 = add i32 %34, 1
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %31

; <label>:51                                      ; preds = %46
  br label %52

; <label>:52                                      ; preds = %51, %27
  %53 = phi i32 [ 0, %27 ], [ %47, %51 ]
  %54 = and i32 %25, 31
  %55 = shl i32 1, %54
  %56 = add i32 %55, -1
  %57 = and i32 %53, %56
  %58 = lshr i32 %53, %54
  %59 = uitofp i32 %57 to float
  %60 = fadd fast float %59, 5.000000e-01
  %61 = uitofp i32 %58 to float
  %62 = fadd fast float %61, 5.000000e-01
  %63 = fmul fast float %60, %29
  %64 = fmul fast float %62, %29
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = fmul fast float %63, %66
  %69 = fmul fast float %64, %67
  %70 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %71 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %72 = fadd fast float %68, %70
  %73 = fadd fast float %69, %71
  %74 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = fadd fast float %63, %29
  %77 = fmul fast float %66, %76
  %78 = fadd fast float %77, %70
  %79 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %78, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = fadd fast float %64, %29
  %82 = fmul fast float %67, %81
  %83 = fadd fast float %82, %71
  %84 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %72, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %78, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %78, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %72, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %78, float %83, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %98 = fcmp fast une float %89, 0.000000e+00
  br i1 %98, label %99, label %114, !dx.controlflow.hints !23

; <label>:99                                      ; preds = %52
  %100 = fcmp fast ugt float %75, %89
  br i1 %100, label %104, label %101, !dx.controlflow.hints !24

; <label>:101                                     ; preds = %99
  %102 = fadd fast float %89, 0xBE7AD7F2A0000000
  %103 = call float @dx.op.binary.f32(i32 36, float %75, float %102)  ; FMin(a,b)
  br label %117

; <label>:104                                     ; preds = %99
  %105 = fadd fast float %89, 0x3E7AD7F2A0000000
  %106 = fcmp fast ult float %105, %75
  br i1 %106, label %109, label %107, !dx.controlflow.hints !25

; <label>:107                                     ; preds = %104
  %108 = fadd fast float %89, 0xBE7AD7F2A0000000
  br label %117

; <label>:109                                     ; preds = %104
  %110 = fsub fast float %75, %89
  %111 = fmul fast float %110, 0x3F847AE140000000
  %112 = fadd fast float %111, %75
  %113 = call float @dx.op.binary.f32(i32 36, float %112, float 1.000000e+00)  ; FMin(a,b)
  br label %117

; <label>:114                                     ; preds = %52
  %115 = fcmp fast une float %75, 0.000000e+00
  %116 = select i1 %115, float 1.000000e+00, float 0.000000e+00
  br label %117

; <label>:117                                     ; preds = %114, %109, %107, %101
  %118 = phi float [ %103, %101 ], [ %108, %107 ], [ %96, %109 ], [ %96, %114 ]
  %119 = phi float [ %97, %101 ], [ %97, %107 ], [ %113, %109 ], [ %116, %114 ]
  %120 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %91, float 0.000000e+00)  ; FMax(a,b)
  %122 = fcmp fast une float %91, 0.000000e+00
  br i1 %122, label %123, label %138, !dx.controlflow.hints !23

; <label>:123                                     ; preds = %117
  %124 = fcmp fast ugt float %80, %91
  br i1 %124, label %128, label %125, !dx.controlflow.hints !24

; <label>:125                                     ; preds = %123
  %126 = fadd fast float %91, 0xBE7AD7F2A0000000
  %127 = call float @dx.op.binary.f32(i32 36, float %80, float %126)  ; FMin(a,b)
  br label %141

; <label>:128                                     ; preds = %123
  %129 = fadd fast float %91, 0x3E7AD7F2A0000000
  %130 = fcmp fast ult float %129, %80
  br i1 %130, label %133, label %131, !dx.controlflow.hints !25

; <label>:131                                     ; preds = %128
  %132 = fadd fast float %91, 0xBE7AD7F2A0000000
  br label %141

; <label>:133                                     ; preds = %128
  %134 = fsub fast float %80, %91
  %135 = fmul fast float %134, 0x3F847AE140000000
  %136 = fadd fast float %135, %80
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float 1.000000e+00)  ; FMin(a,b)
  br label %141

; <label>:138                                     ; preds = %117
  %139 = fcmp fast une float %80, 0.000000e+00
  %140 = select i1 %139, float 1.000000e+00, float 0.000000e+00
  br label %141

; <label>:141                                     ; preds = %138, %133, %131, %125
  %142 = phi float [ %127, %125 ], [ %132, %131 ], [ %120, %133 ], [ %120, %138 ]
  %143 = phi float [ %121, %125 ], [ %121, %131 ], [ %137, %133 ], [ %140, %138 ]
  %144 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %146 = fcmp fast une float %93, 0.000000e+00
  br i1 %146, label %147, label %162, !dx.controlflow.hints !23

; <label>:147                                     ; preds = %141
  %148 = fcmp fast ugt float %85, %93
  br i1 %148, label %152, label %149, !dx.controlflow.hints !24

; <label>:149                                     ; preds = %147
  %150 = fadd fast float %93, 0xBE7AD7F2A0000000
  %151 = call float @dx.op.binary.f32(i32 36, float %85, float %150)  ; FMin(a,b)
  br label %165

; <label>:152                                     ; preds = %147
  %153 = fadd fast float %93, 0x3E7AD7F2A0000000
  %154 = fcmp fast ult float %153, %85
  br i1 %154, label %157, label %155, !dx.controlflow.hints !25

; <label>:155                                     ; preds = %152
  %156 = fadd fast float %93, 0xBE7AD7F2A0000000
  br label %165

; <label>:157                                     ; preds = %152
  %158 = fsub fast float %85, %93
  %159 = fmul fast float %158, 0x3F847AE140000000
  %160 = fadd fast float %159, %85
  %161 = call float @dx.op.binary.f32(i32 36, float %160, float 1.000000e+00)  ; FMin(a,b)
  br label %165

; <label>:162                                     ; preds = %141
  %163 = fcmp fast une float %85, 0.000000e+00
  %164 = select i1 %163, float 1.000000e+00, float 0.000000e+00
  br label %165

; <label>:165                                     ; preds = %162, %157, %155, %149
  %166 = phi float [ %151, %149 ], [ %156, %155 ], [ %144, %157 ], [ %144, %162 ]
  %167 = phi float [ %145, %149 ], [ %145, %155 ], [ %161, %157 ], [ %164, %162 ]
  %168 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %169 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %170 = fcmp fast une float %95, 0.000000e+00
  br i1 %170, label %171, label %186, !dx.controlflow.hints !23

; <label>:171                                     ; preds = %165
  %172 = fcmp fast ugt float %87, %95
  br i1 %172, label %176, label %173, !dx.controlflow.hints !24

; <label>:173                                     ; preds = %171
  %174 = fadd fast float %95, 0xBE7AD7F2A0000000
  %175 = call float @dx.op.binary.f32(i32 36, float %87, float %174)  ; FMin(a,b)
  br label %189

; <label>:176                                     ; preds = %171
  %177 = fadd fast float %95, 0x3E7AD7F2A0000000
  %178 = fcmp fast ult float %177, %87
  br i1 %178, label %181, label %179, !dx.controlflow.hints !25

; <label>:179                                     ; preds = %176
  %180 = fadd fast float %95, 0xBE7AD7F2A0000000
  br label %189

; <label>:181                                     ; preds = %176
  %182 = fsub fast float %87, %95
  %183 = fmul fast float %182, 0x3F847AE140000000
  %184 = fadd fast float %183, %87
  %185 = call float @dx.op.binary.f32(i32 36, float %184, float 1.000000e+00)  ; FMin(a,b)
  br label %189

; <label>:186                                     ; preds = %165
  %187 = fcmp fast une float %87, 0.000000e+00
  %188 = select i1 %187, float 1.000000e+00, float 0.000000e+00
  br label %189

; <label>:189                                     ; preds = %186, %181, %179, %173
  %190 = phi float [ %175, %173 ], [ %180, %179 ], [ %168, %181 ], [ %168, %186 ]
  %191 = phi float [ %169, %173 ], [ %169, %179 ], [ %185, %181 ], [ %188, %186 ]
  %192 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float %118, float* %192, align 4
  %193 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %142, float* %193, align 4
  %194 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %166, float* %194, align 4
  %195 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %190, float* %195, align 4
  %196 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float %119, float* %196, align 4
  %197 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float %143, float* %197, align 4
  %198 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float %167, float* %198, align 4
  %199 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float %191, float* %199, align 4
  %200 = fcmp fast olt float %142, %118
  br i1 %200, label %201, label %205, !dx.controlflow.hints !26

; <label>:201                                     ; preds = %189
  %202 = fcmp fast olt float %166, %142
  br i1 %202, label %203, label %204, !dx.controlflow.hints !27

; <label>:203                                     ; preds = %201
  store float %166, float* %192, align 4, !alias.scope !28, !noalias !31
  store float %118, float* %194, align 4, !alias.scope !28, !noalias !31
  br label %208

; <label>:204                                     ; preds = %201
  store float %142, float* %192, align 4, !alias.scope !28, !noalias !31
  store float %118, float* %193, align 4, !alias.scope !28, !noalias !31
  br label %208

; <label>:205                                     ; preds = %189
  %206 = fcmp fast olt float %166, %118
  br i1 %206, label %207, label %208, !dx.controlflow.hints !35

; <label>:207                                     ; preds = %205
  store float %166, float* %192, align 4, !alias.scope !28, !noalias !31
  store float %118, float* %194, align 4, !alias.scope !28, !noalias !31
  br label %208

; <label>:208                                     ; preds = %207, %205, %204, %203
  %209 = phi float [ %142, %207 ], [ %142, %205 ], [ %118, %204 ], [ %142, %203 ]
  %210 = phi float [ %118, %207 ], [ %166, %205 ], [ %166, %204 ], [ %118, %203 ]
  %211 = phi float [ %166, %207 ], [ %118, %205 ], [ %142, %204 ], [ %166, %203 ]
  %212 = fcmp fast olt float %190, %211
  br i1 %212, label %213, label %214, !dx.controlflow.hints !36

; <label>:213                                     ; preds = %208
  store float %190, float* %192, align 4, !alias.scope !28, !noalias !31
  store float %211, float* %195, align 4, !alias.scope !28, !noalias !31
  br label %214

; <label>:214                                     ; preds = %213, %208
  %215 = phi float [ %190, %213 ], [ %211, %208 ]
  %216 = phi float [ %211, %213 ], [ %190, %208 ]
  %217 = fcmp fast olt float %210, %209
  br i1 %217, label %218, label %222, !dx.controlflow.hints !37

; <label>:218                                     ; preds = %214
  %219 = fcmp fast olt float %216, %210
  br i1 %219, label %220, label %221, !dx.controlflow.hints !38

; <label>:220                                     ; preds = %218
  store float %216, float* %193, align 4, !alias.scope !28, !noalias !31
  store float %209, float* %195, align 4, !alias.scope !28, !noalias !31
  br label %225

; <label>:221                                     ; preds = %218
  store float %210, float* %193, align 4, !alias.scope !28, !noalias !31
  store float %209, float* %194, align 4, !alias.scope !28, !noalias !31
  br label %225

; <label>:222                                     ; preds = %214
  %223 = fcmp fast olt float %216, %209
  br i1 %223, label %224, label %225, !dx.controlflow.hints !39

; <label>:224                                     ; preds = %222
  store float %216, float* %193, align 4, !alias.scope !28, !noalias !31
  store float %209, float* %195, align 4, !alias.scope !28, !noalias !31
  br label %225

; <label>:225                                     ; preds = %224, %222, %221, %220
  %226 = phi float [ %216, %224 ], [ %209, %222 ], [ %210, %221 ], [ %216, %220 ]
  %227 = phi float [ %210, %224 ], [ %210, %222 ], [ %209, %221 ], [ %210, %220 ]
  %228 = phi float [ %209, %224 ], [ %216, %222 ], [ %216, %221 ], [ %209, %220 ]
  %229 = fcmp fast olt float %228, %227
  br i1 %229, label %230, label %231, !dx.controlflow.hints !40

; <label>:230                                     ; preds = %225
  store float %228, float* %194, align 4, !alias.scope !28, !noalias !31
  store float %227, float* %195, align 4, !alias.scope !28, !noalias !31
  br label %231

; <label>:231                                     ; preds = %230, %225
  %232 = fcmp fast olt float %143, %119
  br i1 %232, label %233, label %237, !dx.controlflow.hints !26

; <label>:233                                     ; preds = %231
  %234 = fcmp fast olt float %167, %143
  br i1 %234, label %235, label %236, !dx.controlflow.hints !27

; <label>:235                                     ; preds = %233
  store float %167, float* %196, align 4, !alias.scope !41, !noalias !31
  store float %119, float* %198, align 4, !alias.scope !41, !noalias !31
  br label %240

; <label>:236                                     ; preds = %233
  store float %143, float* %196, align 4, !alias.scope !41, !noalias !31
  store float %119, float* %197, align 4, !alias.scope !41, !noalias !31
  br label %240

; <label>:237                                     ; preds = %231
  %238 = fcmp fast olt float %167, %119
  br i1 %238, label %239, label %240, !dx.controlflow.hints !35

; <label>:239                                     ; preds = %237
  store float %167, float* %196, align 4, !alias.scope !41, !noalias !31
  store float %119, float* %198, align 4, !alias.scope !41, !noalias !31
  br label %240

; <label>:240                                     ; preds = %239, %237, %236, %235
  %241 = phi float [ %143, %239 ], [ %143, %237 ], [ %119, %236 ], [ %143, %235 ]
  %242 = phi float [ %119, %239 ], [ %167, %237 ], [ %167, %236 ], [ %119, %235 ]
  %243 = phi float [ %167, %239 ], [ %119, %237 ], [ %143, %236 ], [ %167, %235 ]
  %244 = fcmp fast olt float %191, %243
  br i1 %244, label %245, label %246, !dx.controlflow.hints !36

; <label>:245                                     ; preds = %240
  store float %191, float* %196, align 4, !alias.scope !41, !noalias !31
  store float %243, float* %199, align 4, !alias.scope !41, !noalias !31
  br label %246

; <label>:246                                     ; preds = %245, %240
  %247 = phi float [ %191, %245 ], [ %243, %240 ]
  %248 = phi float [ %243, %245 ], [ %191, %240 ]
  %249 = fcmp fast olt float %242, %241
  br i1 %249, label %250, label %254, !dx.controlflow.hints !37

; <label>:250                                     ; preds = %246
  %251 = fcmp fast olt float %248, %242
  br i1 %251, label %252, label %253, !dx.controlflow.hints !38

; <label>:252                                     ; preds = %250
  store float %248, float* %197, align 4, !alias.scope !41, !noalias !31
  store float %241, float* %199, align 4, !alias.scope !41, !noalias !31
  br label %257

; <label>:253                                     ; preds = %250
  store float %242, float* %197, align 4, !alias.scope !41, !noalias !31
  store float %241, float* %198, align 4, !alias.scope !41, !noalias !31
  br label %257

; <label>:254                                     ; preds = %246
  %255 = fcmp fast olt float %248, %241
  br i1 %255, label %256, label %257, !dx.controlflow.hints !39

; <label>:256                                     ; preds = %254
  store float %248, float* %197, align 4, !alias.scope !41, !noalias !31
  store float %241, float* %199, align 4, !alias.scope !41, !noalias !31
  br label %257

; <label>:257                                     ; preds = %256, %254, %253, %252
  %258 = phi float [ %242, %256 ], [ %242, %254 ], [ %241, %253 ], [ %242, %252 ]
  %259 = phi float [ %241, %256 ], [ %248, %254 ], [ %248, %253 ], [ %241, %252 ]
  %260 = fcmp fast olt float %259, %258
  br i1 %260, label %261, label %262, !dx.controlflow.hints !40

; <label>:261                                     ; preds = %257
  store float %259, float* %198, align 4, !alias.scope !41, !noalias !31
  store float %258, float* %199, align 4, !alias.scope !41, !noalias !31
  br label %262

; <label>:262                                     ; preds = %261, %257
  %263 = phi float [ %258, %261 ], [ %259, %257 ]
  br label %264

; <label>:264                                     ; preds = %287, %262
  %265 = phi float [ %247, %262 ], [ %292, %287 ]
  %266 = phi float [ %226, %262 ], [ %290, %287 ]
  %267 = phi i32 [ 1, %262 ], [ %280, %287 ]
  %268 = phi i32 [ 0, %262 ], [ %281, %287 ]
  %269 = phi i32 [ 1, %262 ], [ %282, %287 ]
  %270 = phi i32 [ 1, %262 ], [ %288, %287 ]
  %271 = phi float [ %215, %262 ], [ %285, %287 ]
  %272 = fcmp fast ugt float %266, %265
  br i1 %272, label %276, label %273, !dx.controlflow.hints !44

; <label>:273                                     ; preds = %264
  %274 = add i32 %267, 1
  %275 = add i32 %269, 1
  br label %279

; <label>:276                                     ; preds = %264
  %277 = add i32 %268, 1
  %278 = add i32 %269, -1
  br label %279

; <label>:279                                     ; preds = %276, %273
  %280 = phi i32 [ %274, %273 ], [ %267, %276 ]
  %281 = phi i32 [ %268, %273 ], [ %277, %276 ]
  %282 = phi i32 [ %275, %273 ], [ %278, %276 ]
  %283 = phi float [ %266, %273 ], [ %265, %276 ]
  %284 = icmp ugt i32 %282, %270
  %285 = select i1 %284, float %283, float %271
  %286 = icmp ult i32 %280, 4
  br i1 %286, label %287, label %293

; <label>:287                                     ; preds = %279
  %288 = select i1 %284, i32 %282, i32 %270
  %289 = getelementptr [4 x float], [4 x float]* %11, i32 0, i32 %280
  %290 = load float, float* %289, align 4, !tbaa !45, !noalias !31
  %291 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %281
  %292 = load float, float* %291, align 4, !tbaa !45, !noalias !31
  br label %264

; <label>:293                                     ; preds = %279
  %294 = fcmp fast ole float %118, %285
  %295 = fcmp fast oge float %119, %285
  %296 = and i1 %294, %295
  br i1 %296, label %297, label %300, !dx.controlflow.hints !49

; <label>:297                                     ; preds = %293
  %298 = call float @dx.op.binary.f32(i32 35, float %118, float %215)  ; FMax(a,b)
  %299 = call float @dx.op.binary.f32(i32 36, float %119, float %263)  ; FMin(a,b)
  br label %300

; <label>:300                                     ; preds = %297, %293
  %301 = phi i32 [ 1, %297 ], [ 0, %293 ]
  %302 = phi float [ %298, %297 ], [ %215, %293 ]
  %303 = phi float [ %299, %297 ], [ %263, %293 ]
  %304 = fcmp fast ole float %142, %285
  %305 = fcmp fast oge float %143, %285
  %306 = and i1 %304, %305
  br i1 %306, label %307, label %311, !dx.controlflow.hints !49

; <label>:307                                     ; preds = %300
  %308 = call float @dx.op.binary.f32(i32 35, float %142, float %302)  ; FMax(a,b)
  %309 = call float @dx.op.binary.f32(i32 36, float %143, float %303)  ; FMin(a,b)
  %310 = or i32 %301, 2
  br label %311

; <label>:311                                     ; preds = %307, %300
  %312 = phi i32 [ %310, %307 ], [ %301, %300 ]
  %313 = phi float [ %308, %307 ], [ %302, %300 ]
  %314 = phi float [ %309, %307 ], [ %303, %300 ]
  %315 = fcmp fast ole float %166, %285
  %316 = fcmp fast oge float %167, %285
  %317 = and i1 %315, %316
  br i1 %317, label %318, label %322, !dx.controlflow.hints !49

; <label>:318                                     ; preds = %311
  %319 = call float @dx.op.binary.f32(i32 35, float %166, float %313)  ; FMax(a,b)
  %320 = call float @dx.op.binary.f32(i32 36, float %167, float %314)  ; FMin(a,b)
  %321 = or i32 %312, 4
  br label %322

; <label>:322                                     ; preds = %318, %311
  %323 = phi i32 [ %321, %318 ], [ %312, %311 ]
  %324 = phi float [ %319, %318 ], [ %313, %311 ]
  %325 = phi float [ %320, %318 ], [ %314, %311 ]
  %326 = fcmp fast ole float %190, %285
  %327 = fcmp fast oge float %191, %285
  %328 = and i1 %326, %327
  br i1 %328, label %329, label %333, !dx.controlflow.hints !49

; <label>:329                                     ; preds = %322
  %330 = call float @dx.op.binary.f32(i32 35, float %190, float %324)  ; FMax(a,b)
  %331 = call float @dx.op.binary.f32(i32 36, float %191, float %325)  ; FMin(a,b)
  %332 = or i32 %323, 8
  br label %333

; <label>:333                                     ; preds = %329, %322
  %334 = phi i32 [ %332, %329 ], [ %323, %322 ]
  %335 = phi float [ %330, %329 ], [ %324, %322 ]
  %336 = phi float [ %331, %329 ], [ %325, %322 ]
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %6, i32 0, float %335, float %336, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %337 = icmp eq i32 %334, 15
  %338 = select i1 %337, i32 2, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 8, i32 %338, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %339 = shl i32 %334, 8
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6, i32 8)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = or i32 %341, %339
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 8, i32 %342, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1160

; <label>:343                                     ; preds = %20
  %344 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %345 = bitcast i32 %344 to float
  br i1 %26, label %368, label %346

; <label>:346                                     ; preds = %343
  br label %347

; <label>:347                                     ; preds = %362, %346
  %348 = phi i32 [ %364, %362 ], [ %19, %346 ]
  %349 = phi i32 [ %363, %362 ], [ 0, %346 ]
  %350 = phi i32 [ %365, %362 ], [ 0, %346 ]
  %351 = and i32 %348, 1
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %362, label %353, !dx.controlflow.hints !22

; <label>:353                                     ; preds = %347
  %354 = lshr i32 %350, 1
  %355 = and i32 %350, 1
  %356 = icmp ne i32 %355, 0
  %357 = select i1 %356, i32 %25, i32 0
  %358 = add i32 %357, %354
  %359 = and i32 %358, 31
  %360 = shl i32 1, %359
  %361 = or i32 %360, %349
  br label %362

; <label>:362                                     ; preds = %353, %347
  %363 = phi i32 [ %361, %353 ], [ %349, %347 ]
  %364 = lshr i32 %348, 1
  %365 = add i32 %350, 1
  %366 = icmp eq i32 %364, 0
  br i1 %366, label %367, label %347

; <label>:367                                     ; preds = %362
  br label %368

; <label>:368                                     ; preds = %367, %343
  %369 = phi i32 [ 0, %343 ], [ %363, %367 ]
  %370 = and i32 %25, 31
  %371 = shl i32 1, %370
  %372 = add i32 %371, -1
  %373 = and i32 %369, %372
  %374 = lshr i32 %369, %370
  %375 = mul i32 %373, %22
  %376 = uitofp i32 %375 to float
  %377 = fadd fast float %376, 5.000000e-01
  %378 = fmul fast float %377, %345
  %379 = icmp eq i32 %22, 0
  br i1 %379, label %417, label %380

; <label>:380                                     ; preds = %368
  %381 = mul i32 %374, %22
  %382 = uitofp i32 %381 to float
  %383 = fadd fast float %382, 5.000000e-01
  %384 = fmul fast float %383, %345
  br label %385

; <label>:385                                     ; preds = %412, %380
  %386 = phi float [ %413, %412 ], [ %384, %380 ]
  %387 = phi float [ %408, %412 ], [ 2.000000e+00, %380 ]
  %388 = phi i32 [ %414, %412 ], [ 0, %380 ]
  br label %389

; <label>:389                                     ; preds = %407, %385
  %390 = phi float [ %409, %407 ], [ %378, %385 ]
  %391 = phi float [ %408, %407 ], [ %387, %385 ]
  %392 = phi i32 [ %410, %407 ], [ 0, %385 ]
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = fmul fast float %394, %390
  %397 = fmul fast float %395, %386
  %398 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %399 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %400 = fadd fast float %396, %398
  %401 = fadd fast float %397, %399
  %402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %400, float %401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %403 = extractvalue %dx.types.ResRet.f32 %402, 0
  %404 = fcmp fast ogt float %403, 0.000000e+00
  br i1 %404, label %405, label %407, !dx.controlflow.hints !50

; <label>:405                                     ; preds = %389
  %406 = call float @dx.op.binary.f32(i32 36, float %403, float %391)  ; FMin(a,b)
  br label %407

; <label>:407                                     ; preds = %405, %389
  %408 = phi float [ %406, %405 ], [ %391, %389 ]
  %409 = fadd fast float %390, %345
  %410 = add nuw i32 %392, 1
  %411 = icmp eq i32 %410, %22
  br i1 %411, label %412, label %389

; <label>:412                                     ; preds = %407
  %413 = fadd fast float %386, %345
  %414 = add nuw i32 %388, 1
  %415 = icmp eq i32 %414, %22
  br i1 %415, label %416, label %385

; <label>:416                                     ; preds = %412
  br label %417

; <label>:417                                     ; preds = %416, %368
  %418 = phi float [ 2.000000e+00, %368 ], [ %408, %416 ]
  %419 = fcmp fast ole float %418, 1.000000e+00
  %420 = select i1 %419, float %418, float 0.000000e+00
  %421 = add i32 %373, 1
  %422 = mul i32 %421, %22
  %423 = uitofp i32 %422 to float
  %424 = fadd fast float %423, 5.000000e-01
  %425 = fmul fast float %424, %345
  br i1 %379, label %463, label %426

; <label>:426                                     ; preds = %417
  %427 = mul i32 %374, %22
  %428 = uitofp i32 %427 to float
  %429 = fadd fast float %428, 5.000000e-01
  %430 = fmul fast float %429, %345
  br label %431

; <label>:431                                     ; preds = %458, %426
  %432 = phi float [ %459, %458 ], [ %430, %426 ]
  %433 = phi float [ %454, %458 ], [ 2.000000e+00, %426 ]
  %434 = phi i32 [ %460, %458 ], [ 0, %426 ]
  br label %435

; <label>:435                                     ; preds = %453, %431
  %436 = phi float [ %455, %453 ], [ %425, %431 ]
  %437 = phi float [ %454, %453 ], [ %433, %431 ]
  %438 = phi i32 [ %456, %453 ], [ 0, %431 ]
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = fmul fast float %440, %436
  %443 = fmul fast float %441, %432
  %444 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %445 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %446 = fadd fast float %442, %444
  %447 = fadd fast float %443, %445
  %448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %446, float %447, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = fcmp fast ogt float %449, 0.000000e+00
  br i1 %450, label %451, label %453, !dx.controlflow.hints !50

; <label>:451                                     ; preds = %435
  %452 = call float @dx.op.binary.f32(i32 36, float %449, float %437)  ; FMin(a,b)
  br label %453

; <label>:453                                     ; preds = %451, %435
  %454 = phi float [ %452, %451 ], [ %437, %435 ]
  %455 = fadd fast float %436, %345
  %456 = add nuw i32 %438, 1
  %457 = icmp eq i32 %456, %22
  br i1 %457, label %458, label %435

; <label>:458                                     ; preds = %453
  %459 = fadd fast float %432, %345
  %460 = add nuw i32 %434, 1
  %461 = icmp eq i32 %460, %22
  br i1 %461, label %462, label %431

; <label>:462                                     ; preds = %458
  br label %463

; <label>:463                                     ; preds = %462, %417
  %464 = phi float [ 2.000000e+00, %417 ], [ %454, %462 ]
  %465 = fcmp fast ole float %464, 1.000000e+00
  %466 = select i1 %465, float %464, float 0.000000e+00
  br i1 %379, label %505, label %467

; <label>:467                                     ; preds = %463
  %468 = add i32 %374, 1
  %469 = mul i32 %468, %22
  %470 = uitofp i32 %469 to float
  %471 = fadd fast float %470, 5.000000e-01
  %472 = fmul fast float %471, %345
  br label %473

; <label>:473                                     ; preds = %500, %467
  %474 = phi float [ %501, %500 ], [ %472, %467 ]
  %475 = phi float [ %496, %500 ], [ 2.000000e+00, %467 ]
  %476 = phi i32 [ %502, %500 ], [ 0, %467 ]
  br label %477

; <label>:477                                     ; preds = %495, %473
  %478 = phi float [ %497, %495 ], [ %378, %473 ]
  %479 = phi float [ %496, %495 ], [ %475, %473 ]
  %480 = phi i32 [ %498, %495 ], [ 0, %473 ]
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = fmul fast float %482, %478
  %485 = fmul fast float %483, %474
  %486 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %487 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %488 = fadd fast float %484, %486
  %489 = fadd fast float %485, %487
  %490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %488, float %489, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = fcmp fast ogt float %491, 0.000000e+00
  br i1 %492, label %493, label %495, !dx.controlflow.hints !50

; <label>:493                                     ; preds = %477
  %494 = call float @dx.op.binary.f32(i32 36, float %491, float %479)  ; FMin(a,b)
  br label %495

; <label>:495                                     ; preds = %493, %477
  %496 = phi float [ %494, %493 ], [ %479, %477 ]
  %497 = fadd fast float %478, %345
  %498 = add nuw i32 %480, 1
  %499 = icmp eq i32 %498, %22
  br i1 %499, label %500, label %477

; <label>:500                                     ; preds = %495
  %501 = fadd fast float %474, %345
  %502 = add nuw i32 %476, 1
  %503 = icmp eq i32 %502, %22
  br i1 %503, label %504, label %473

; <label>:504                                     ; preds = %500
  br label %505

; <label>:505                                     ; preds = %504, %463
  %506 = phi float [ 2.000000e+00, %463 ], [ %496, %504 ]
  %507 = fcmp fast ole float %506, 1.000000e+00
  %508 = select i1 %507, float %506, float 0.000000e+00
  br i1 %379, label %547, label %509

; <label>:509                                     ; preds = %505
  %510 = add i32 %374, 1
  %511 = mul i32 %510, %22
  %512 = uitofp i32 %511 to float
  %513 = fadd fast float %512, 5.000000e-01
  %514 = fmul fast float %513, %345
  br label %515

; <label>:515                                     ; preds = %542, %509
  %516 = phi float [ %543, %542 ], [ %514, %509 ]
  %517 = phi float [ %538, %542 ], [ 2.000000e+00, %509 ]
  %518 = phi i32 [ %544, %542 ], [ 0, %509 ]
  br label %519

; <label>:519                                     ; preds = %537, %515
  %520 = phi float [ %539, %537 ], [ %425, %515 ]
  %521 = phi float [ %538, %537 ], [ %517, %515 ]
  %522 = phi i32 [ %540, %537 ], [ 0, %515 ]
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 0
  %525 = extractvalue %dx.types.CBufRet.f32 %523, 1
  %526 = fmul fast float %524, %520
  %527 = fmul fast float %525, %516
  %528 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %529 = extractvalue %dx.types.CBufRet.f32 %523, 3
  %530 = fadd fast float %526, %528
  %531 = fadd fast float %527, %529
  %532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %530, float %531, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = fcmp fast ogt float %533, 0.000000e+00
  br i1 %534, label %535, label %537, !dx.controlflow.hints !50

; <label>:535                                     ; preds = %519
  %536 = call float @dx.op.binary.f32(i32 36, float %533, float %521)  ; FMin(a,b)
  br label %537

; <label>:537                                     ; preds = %535, %519
  %538 = phi float [ %536, %535 ], [ %521, %519 ]
  %539 = fadd fast float %520, %345
  %540 = add nuw i32 %522, 1
  %541 = icmp eq i32 %540, %22
  br i1 %541, label %542, label %519

; <label>:542                                     ; preds = %537
  %543 = fadd fast float %516, %345
  %544 = add nuw i32 %518, 1
  %545 = icmp eq i32 %544, %22
  br i1 %545, label %546, label %515

; <label>:546                                     ; preds = %542
  br label %547

; <label>:547                                     ; preds = %546, %505
  %548 = phi float [ 2.000000e+00, %505 ], [ %538, %546 ]
  %549 = fcmp fast ole float %548, 1.000000e+00
  %550 = select i1 %549, float %548, float 0.000000e+00
  br i1 %379, label %584, label %551

; <label>:551                                     ; preds = %547
  %552 = mul i32 %374, %22
  %553 = uitofp i32 %552 to float
  %554 = fadd fast float %553, 5.000000e-01
  %555 = fmul fast float %554, %345
  br label %556

; <label>:556                                     ; preds = %579, %551
  %557 = phi float [ %580, %579 ], [ %555, %551 ]
  %558 = phi float [ %575, %579 ], [ 0.000000e+00, %551 ]
  %559 = phi i32 [ %581, %579 ], [ 0, %551 ]
  br label %560

; <label>:560                                     ; preds = %560, %556
  %561 = phi float [ %576, %560 ], [ %378, %556 ]
  %562 = phi float [ %575, %560 ], [ %558, %556 ]
  %563 = phi i32 [ %577, %560 ], [ 0, %556 ]
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = fmul fast float %565, %561
  %568 = fmul fast float %566, %557
  %569 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %570 = extractvalue %dx.types.CBufRet.f32 %564, 3
  %571 = fadd fast float %567, %569
  %572 = fadd fast float %568, %570
  %573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %571, float %572, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = call float @dx.op.binary.f32(i32 35, float %574, float %562)  ; FMax(a,b)
  %576 = fadd fast float %561, %345
  %577 = add nuw i32 %563, 1
  %578 = icmp eq i32 %577, %22
  br i1 %578, label %579, label %560

; <label>:579                                     ; preds = %560
  %580 = fadd fast float %557, %345
  %581 = add nuw i32 %559, 1
  %582 = icmp eq i32 %581, %22
  br i1 %582, label %583, label %556

; <label>:583                                     ; preds = %579
  br label %584

; <label>:584                                     ; preds = %583, %547
  %585 = phi float [ 0.000000e+00, %547 ], [ %575, %583 ]
  br i1 %379, label %619, label %586

; <label>:586                                     ; preds = %584
  %587 = mul i32 %374, %22
  %588 = uitofp i32 %587 to float
  %589 = fadd fast float %588, 5.000000e-01
  %590 = fmul fast float %589, %345
  br label %591

; <label>:591                                     ; preds = %614, %586
  %592 = phi float [ %615, %614 ], [ %590, %586 ]
  %593 = phi float [ %610, %614 ], [ 0.000000e+00, %586 ]
  %594 = phi i32 [ %616, %614 ], [ 0, %586 ]
  br label %595

; <label>:595                                     ; preds = %595, %591
  %596 = phi float [ %611, %595 ], [ %425, %591 ]
  %597 = phi float [ %610, %595 ], [ %593, %591 ]
  %598 = phi i32 [ %612, %595 ], [ 0, %591 ]
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = fmul fast float %600, %596
  %603 = fmul fast float %601, %592
  %604 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %605 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %606 = fadd fast float %602, %604
  %607 = fadd fast float %603, %605
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %606, float %607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = call float @dx.op.binary.f32(i32 35, float %609, float %597)  ; FMax(a,b)
  %611 = fadd fast float %596, %345
  %612 = add nuw i32 %598, 1
  %613 = icmp eq i32 %612, %22
  br i1 %613, label %614, label %595

; <label>:614                                     ; preds = %595
  %615 = fadd fast float %592, %345
  %616 = add nuw i32 %594, 1
  %617 = icmp eq i32 %616, %22
  br i1 %617, label %618, label %591

; <label>:618                                     ; preds = %614
  br label %619

; <label>:619                                     ; preds = %618, %584
  %620 = phi float [ 0.000000e+00, %584 ], [ %610, %618 ]
  br i1 %379, label %655, label %621

; <label>:621                                     ; preds = %619
  %622 = add i32 %374, 1
  %623 = mul i32 %622, %22
  %624 = uitofp i32 %623 to float
  %625 = fadd fast float %624, 5.000000e-01
  %626 = fmul fast float %625, %345
  br label %627

; <label>:627                                     ; preds = %650, %621
  %628 = phi float [ %651, %650 ], [ %626, %621 ]
  %629 = phi float [ %646, %650 ], [ 0.000000e+00, %621 ]
  %630 = phi i32 [ %652, %650 ], [ 0, %621 ]
  br label %631

; <label>:631                                     ; preds = %631, %627
  %632 = phi float [ %647, %631 ], [ %378, %627 ]
  %633 = phi float [ %646, %631 ], [ %629, %627 ]
  %634 = phi i32 [ %648, %631 ], [ 0, %627 ]
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = fmul fast float %636, %632
  %639 = fmul fast float %637, %628
  %640 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %641 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %642 = fadd fast float %638, %640
  %643 = fadd fast float %639, %641
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = call float @dx.op.binary.f32(i32 35, float %645, float %633)  ; FMax(a,b)
  %647 = fadd fast float %632, %345
  %648 = add nuw i32 %634, 1
  %649 = icmp eq i32 %648, %22
  br i1 %649, label %650, label %631

; <label>:650                                     ; preds = %631
  %651 = fadd fast float %628, %345
  %652 = add nuw i32 %630, 1
  %653 = icmp eq i32 %652, %22
  br i1 %653, label %654, label %627

; <label>:654                                     ; preds = %650
  br label %655

; <label>:655                                     ; preds = %654, %619
  %656 = phi float [ 0.000000e+00, %619 ], [ %646, %654 ]
  br i1 %379, label %691, label %657

; <label>:657                                     ; preds = %655
  %658 = add i32 %374, 1
  %659 = mul i32 %658, %22
  %660 = uitofp i32 %659 to float
  %661 = fadd fast float %660, 5.000000e-01
  %662 = fmul fast float %661, %345
  br label %663

; <label>:663                                     ; preds = %686, %657
  %664 = phi float [ %687, %686 ], [ %662, %657 ]
  %665 = phi float [ %682, %686 ], [ 0.000000e+00, %657 ]
  %666 = phi i32 [ %688, %686 ], [ 0, %657 ]
  br label %667

; <label>:667                                     ; preds = %667, %663
  %668 = phi float [ %683, %667 ], [ %425, %663 ]
  %669 = phi float [ %682, %667 ], [ %665, %663 ]
  %670 = phi i32 [ %684, %667 ], [ 0, %663 ]
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %674 = fmul fast float %672, %668
  %675 = fmul fast float %673, %664
  %676 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %677 = extractvalue %dx.types.CBufRet.f32 %671, 3
  %678 = fadd fast float %674, %676
  %679 = fadd fast float %675, %677
  %680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %678, float %679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = call float @dx.op.binary.f32(i32 35, float %681, float %669)  ; FMax(a,b)
  %683 = fadd fast float %668, %345
  %684 = add nuw i32 %670, 1
  %685 = icmp eq i32 %684, %22
  br i1 %685, label %686, label %667

; <label>:686                                     ; preds = %667
  %687 = fadd fast float %664, %345
  %688 = add nuw i32 %666, 1
  %689 = icmp eq i32 %688, %22
  br i1 %689, label %690, label %663

; <label>:690                                     ; preds = %686
  br label %691

; <label>:691                                     ; preds = %690, %655
  %692 = phi float [ 0.000000e+00, %655 ], [ %682, %690 ]
  %693 = call float @dx.op.binary.f32(i32 35, float %420, float 0.000000e+00)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 35, float %585, float 0.000000e+00)  ; FMax(a,b)
  %695 = fcmp fast une float %585, 0.000000e+00
  br i1 %695, label %696, label %711, !dx.controlflow.hints !23

; <label>:696                                     ; preds = %691
  %697 = fcmp fast ugt float %420, %585
  br i1 %697, label %701, label %698, !dx.controlflow.hints !24

; <label>:698                                     ; preds = %696
  %699 = fadd fast float %585, 0xBE7AD7F2A0000000
  %700 = call float @dx.op.binary.f32(i32 36, float %420, float %699)  ; FMin(a,b)
  br label %714

; <label>:701                                     ; preds = %696
  %702 = fadd fast float %585, 0x3E7AD7F2A0000000
  %703 = fcmp fast ult float %702, %420
  br i1 %703, label %706, label %704, !dx.controlflow.hints !25

; <label>:704                                     ; preds = %701
  %705 = fadd fast float %585, 0xBE7AD7F2A0000000
  br label %714

; <label>:706                                     ; preds = %701
  %707 = fsub fast float %420, %585
  %708 = fmul fast float %707, 0x3F847AE140000000
  %709 = fadd fast float %708, %420
  %710 = call float @dx.op.binary.f32(i32 36, float %709, float 1.000000e+00)  ; FMin(a,b)
  br label %714

; <label>:711                                     ; preds = %691
  %712 = fcmp fast une float %420, 0.000000e+00
  %713 = select i1 %712, float 1.000000e+00, float 0.000000e+00
  br label %714

; <label>:714                                     ; preds = %711, %706, %704, %698
  %715 = phi float [ %700, %698 ], [ %705, %704 ], [ %693, %706 ], [ %693, %711 ]
  %716 = phi float [ %694, %698 ], [ %694, %704 ], [ %710, %706 ], [ %713, %711 ]
  %717 = call float @dx.op.binary.f32(i32 35, float %466, float 0.000000e+00)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %620, float 0.000000e+00)  ; FMax(a,b)
  %719 = fcmp fast une float %620, 0.000000e+00
  br i1 %719, label %720, label %735, !dx.controlflow.hints !23

; <label>:720                                     ; preds = %714
  %721 = fcmp fast ugt float %466, %620
  br i1 %721, label %725, label %722, !dx.controlflow.hints !24

; <label>:722                                     ; preds = %720
  %723 = fadd fast float %620, 0xBE7AD7F2A0000000
  %724 = call float @dx.op.binary.f32(i32 36, float %466, float %723)  ; FMin(a,b)
  br label %738

; <label>:725                                     ; preds = %720
  %726 = fadd fast float %620, 0x3E7AD7F2A0000000
  %727 = fcmp fast ult float %726, %466
  br i1 %727, label %730, label %728, !dx.controlflow.hints !25

; <label>:728                                     ; preds = %725
  %729 = fadd fast float %620, 0xBE7AD7F2A0000000
  br label %738

; <label>:730                                     ; preds = %725
  %731 = fsub fast float %466, %620
  %732 = fmul fast float %731, 0x3F847AE140000000
  %733 = fadd fast float %732, %466
  %734 = call float @dx.op.binary.f32(i32 36, float %733, float 1.000000e+00)  ; FMin(a,b)
  br label %738

; <label>:735                                     ; preds = %714
  %736 = fcmp fast une float %466, 0.000000e+00
  %737 = select i1 %736, float 1.000000e+00, float 0.000000e+00
  br label %738

; <label>:738                                     ; preds = %735, %730, %728, %722
  %739 = phi float [ %724, %722 ], [ %729, %728 ], [ %717, %730 ], [ %717, %735 ]
  %740 = phi float [ %718, %722 ], [ %718, %728 ], [ %734, %730 ], [ %737, %735 ]
  %741 = call float @dx.op.binary.f32(i32 35, float %508, float 0.000000e+00)  ; FMax(a,b)
  %742 = call float @dx.op.binary.f32(i32 35, float %656, float 0.000000e+00)  ; FMax(a,b)
  %743 = fcmp fast une float %656, 0.000000e+00
  br i1 %743, label %744, label %759, !dx.controlflow.hints !23

; <label>:744                                     ; preds = %738
  %745 = fcmp fast ugt float %508, %656
  br i1 %745, label %749, label %746, !dx.controlflow.hints !24

; <label>:746                                     ; preds = %744
  %747 = fadd fast float %656, 0xBE7AD7F2A0000000
  %748 = call float @dx.op.binary.f32(i32 36, float %508, float %747)  ; FMin(a,b)
  br label %762

; <label>:749                                     ; preds = %744
  %750 = fadd fast float %656, 0x3E7AD7F2A0000000
  %751 = fcmp fast ult float %750, %508
  br i1 %751, label %754, label %752, !dx.controlflow.hints !25

; <label>:752                                     ; preds = %749
  %753 = fadd fast float %656, 0xBE7AD7F2A0000000
  br label %762

; <label>:754                                     ; preds = %749
  %755 = fsub fast float %508, %656
  %756 = fmul fast float %755, 0x3F847AE140000000
  %757 = fadd fast float %756, %508
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float 1.000000e+00)  ; FMin(a,b)
  br label %762

; <label>:759                                     ; preds = %738
  %760 = fcmp fast une float %508, 0.000000e+00
  %761 = select i1 %760, float 1.000000e+00, float 0.000000e+00
  br label %762

; <label>:762                                     ; preds = %759, %754, %752, %746
  %763 = phi float [ %748, %746 ], [ %753, %752 ], [ %741, %754 ], [ %741, %759 ]
  %764 = phi float [ %742, %746 ], [ %742, %752 ], [ %758, %754 ], [ %761, %759 ]
  %765 = call float @dx.op.binary.f32(i32 35, float %550, float 0.000000e+00)  ; FMax(a,b)
  %766 = call float @dx.op.binary.f32(i32 35, float %692, float 0.000000e+00)  ; FMax(a,b)
  %767 = fcmp fast une float %692, 0.000000e+00
  br i1 %767, label %768, label %783, !dx.controlflow.hints !23

; <label>:768                                     ; preds = %762
  %769 = fcmp fast ugt float %550, %692
  br i1 %769, label %773, label %770, !dx.controlflow.hints !24

; <label>:770                                     ; preds = %768
  %771 = fadd fast float %692, 0xBE7AD7F2A0000000
  %772 = call float @dx.op.binary.f32(i32 36, float %550, float %771)  ; FMin(a,b)
  br label %786

; <label>:773                                     ; preds = %768
  %774 = fadd fast float %692, 0x3E7AD7F2A0000000
  %775 = fcmp fast ult float %774, %550
  br i1 %775, label %778, label %776, !dx.controlflow.hints !25

; <label>:776                                     ; preds = %773
  %777 = fadd fast float %692, 0xBE7AD7F2A0000000
  br label %786

; <label>:778                                     ; preds = %773
  %779 = fsub fast float %550, %692
  %780 = fmul fast float %779, 0x3F847AE140000000
  %781 = fadd fast float %780, %550
  %782 = call float @dx.op.binary.f32(i32 36, float %781, float 1.000000e+00)  ; FMin(a,b)
  br label %786

; <label>:783                                     ; preds = %762
  %784 = fcmp fast une float %550, 0.000000e+00
  %785 = select i1 %784, float 1.000000e+00, float 0.000000e+00
  br label %786

; <label>:786                                     ; preds = %783, %778, %776, %770
  %787 = phi float [ %772, %770 ], [ %777, %776 ], [ %765, %778 ], [ %765, %783 ]
  %788 = phi float [ %766, %770 ], [ %766, %776 ], [ %782, %778 ], [ %785, %783 ]
  %789 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 0
  store float %715, float* %789, align 4
  %790 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 1
  store float %739, float* %790, align 4
  %791 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 2
  store float %763, float* %791, align 4
  %792 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 3
  store float %787, float* %792, align 4
  %793 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 0
  store float %716, float* %793, align 4
  %794 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 1
  store float %740, float* %794, align 4
  %795 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 2
  store float %764, float* %795, align 4
  %796 = getelementptr inbounds [4 x float], [4 x float]* %10, i32 0, i32 3
  store float %788, float* %796, align 4
  %797 = fcmp fast olt float %739, %715
  br i1 %797, label %798, label %802, !dx.controlflow.hints !26

; <label>:798                                     ; preds = %786
  %799 = fcmp fast olt float %763, %739
  br i1 %799, label %800, label %801, !dx.controlflow.hints !27

; <label>:800                                     ; preds = %798
  store float %763, float* %789, align 4, !alias.scope !51, !noalias !54
  store float %715, float* %791, align 4, !alias.scope !51, !noalias !54
  br label %805

; <label>:801                                     ; preds = %798
  store float %739, float* %789, align 4, !alias.scope !51, !noalias !54
  store float %715, float* %790, align 4, !alias.scope !51, !noalias !54
  br label %805

; <label>:802                                     ; preds = %786
  %803 = fcmp fast olt float %763, %715
  br i1 %803, label %804, label %805, !dx.controlflow.hints !35

; <label>:804                                     ; preds = %802
  store float %763, float* %789, align 4, !alias.scope !51, !noalias !54
  store float %715, float* %791, align 4, !alias.scope !51, !noalias !54
  br label %805

; <label>:805                                     ; preds = %804, %802, %801, %800
  %806 = phi float [ %739, %804 ], [ %739, %802 ], [ %715, %801 ], [ %739, %800 ]
  %807 = phi float [ %715, %804 ], [ %763, %802 ], [ %763, %801 ], [ %715, %800 ]
  %808 = phi float [ %763, %804 ], [ %715, %802 ], [ %739, %801 ], [ %763, %800 ]
  %809 = fcmp fast olt float %787, %808
  br i1 %809, label %810, label %811, !dx.controlflow.hints !36

; <label>:810                                     ; preds = %805
  store float %787, float* %789, align 4, !alias.scope !51, !noalias !54
  store float %808, float* %792, align 4, !alias.scope !51, !noalias !54
  br label %811

; <label>:811                                     ; preds = %810, %805
  %812 = phi float [ %787, %810 ], [ %808, %805 ]
  %813 = phi float [ %808, %810 ], [ %787, %805 ]
  %814 = fcmp fast olt float %807, %806
  br i1 %814, label %815, label %819, !dx.controlflow.hints !37

; <label>:815                                     ; preds = %811
  %816 = fcmp fast olt float %813, %807
  br i1 %816, label %817, label %818, !dx.controlflow.hints !38

; <label>:817                                     ; preds = %815
  store float %813, float* %790, align 4, !alias.scope !51, !noalias !54
  store float %806, float* %792, align 4, !alias.scope !51, !noalias !54
  br label %822

; <label>:818                                     ; preds = %815
  store float %807, float* %790, align 4, !alias.scope !51, !noalias !54
  store float %806, float* %791, align 4, !alias.scope !51, !noalias !54
  br label %822

; <label>:819                                     ; preds = %811
  %820 = fcmp fast olt float %813, %806
  br i1 %820, label %821, label %822, !dx.controlflow.hints !39

; <label>:821                                     ; preds = %819
  store float %813, float* %790, align 4, !alias.scope !51, !noalias !54
  store float %806, float* %792, align 4, !alias.scope !51, !noalias !54
  br label %822

; <label>:822                                     ; preds = %821, %819, %818, %817
  %823 = phi float [ %813, %821 ], [ %806, %819 ], [ %807, %818 ], [ %813, %817 ]
  %824 = phi float [ %807, %821 ], [ %807, %819 ], [ %806, %818 ], [ %807, %817 ]
  %825 = phi float [ %806, %821 ], [ %813, %819 ], [ %813, %818 ], [ %806, %817 ]
  %826 = fcmp fast olt float %825, %824
  br i1 %826, label %827, label %828, !dx.controlflow.hints !40

; <label>:827                                     ; preds = %822
  store float %825, float* %791, align 4, !alias.scope !51, !noalias !54
  store float %824, float* %792, align 4, !alias.scope !51, !noalias !54
  br label %828

; <label>:828                                     ; preds = %827, %822
  %829 = fcmp fast olt float %740, %716
  br i1 %829, label %830, label %834, !dx.controlflow.hints !26

; <label>:830                                     ; preds = %828
  %831 = fcmp fast olt float %764, %740
  br i1 %831, label %832, label %833, !dx.controlflow.hints !27

; <label>:832                                     ; preds = %830
  store float %764, float* %793, align 4, !alias.scope !58, !noalias !54
  store float %716, float* %795, align 4, !alias.scope !58, !noalias !54
  br label %837

; <label>:833                                     ; preds = %830
  store float %740, float* %793, align 4, !alias.scope !58, !noalias !54
  store float %716, float* %794, align 4, !alias.scope !58, !noalias !54
  br label %837

; <label>:834                                     ; preds = %828
  %835 = fcmp fast olt float %764, %716
  br i1 %835, label %836, label %837, !dx.controlflow.hints !35

; <label>:836                                     ; preds = %834
  store float %764, float* %793, align 4, !alias.scope !58, !noalias !54
  store float %716, float* %795, align 4, !alias.scope !58, !noalias !54
  br label %837

; <label>:837                                     ; preds = %836, %834, %833, %832
  %838 = phi float [ %740, %836 ], [ %740, %834 ], [ %716, %833 ], [ %740, %832 ]
  %839 = phi float [ %716, %836 ], [ %764, %834 ], [ %764, %833 ], [ %716, %832 ]
  %840 = phi float [ %764, %836 ], [ %716, %834 ], [ %740, %833 ], [ %764, %832 ]
  %841 = fcmp fast olt float %788, %840
  br i1 %841, label %842, label %843, !dx.controlflow.hints !36

; <label>:842                                     ; preds = %837
  store float %788, float* %793, align 4, !alias.scope !58, !noalias !54
  store float %840, float* %796, align 4, !alias.scope !58, !noalias !54
  br label %843

; <label>:843                                     ; preds = %842, %837
  %844 = phi float [ %788, %842 ], [ %840, %837 ]
  %845 = phi float [ %840, %842 ], [ %788, %837 ]
  %846 = fcmp fast olt float %839, %838
  br i1 %846, label %847, label %851, !dx.controlflow.hints !37

; <label>:847                                     ; preds = %843
  %848 = fcmp fast olt float %845, %839
  br i1 %848, label %849, label %850, !dx.controlflow.hints !38

; <label>:849                                     ; preds = %847
  store float %845, float* %794, align 4, !alias.scope !58, !noalias !54
  store float %838, float* %796, align 4, !alias.scope !58, !noalias !54
  br label %854

; <label>:850                                     ; preds = %847
  store float %839, float* %794, align 4, !alias.scope !58, !noalias !54
  store float %838, float* %795, align 4, !alias.scope !58, !noalias !54
  br label %854

; <label>:851                                     ; preds = %843
  %852 = fcmp fast olt float %845, %838
  br i1 %852, label %853, label %854, !dx.controlflow.hints !39

; <label>:853                                     ; preds = %851
  store float %845, float* %794, align 4, !alias.scope !58, !noalias !54
  store float %838, float* %796, align 4, !alias.scope !58, !noalias !54
  br label %854

; <label>:854                                     ; preds = %853, %851, %850, %849
  %855 = phi float [ %839, %853 ], [ %839, %851 ], [ %838, %850 ], [ %839, %849 ]
  %856 = phi float [ %838, %853 ], [ %845, %851 ], [ %845, %850 ], [ %838, %849 ]
  %857 = fcmp fast olt float %856, %855
  br i1 %857, label %858, label %859, !dx.controlflow.hints !40

; <label>:858                                     ; preds = %854
  store float %856, float* %795, align 4, !alias.scope !58, !noalias !54
  store float %855, float* %796, align 4, !alias.scope !58, !noalias !54
  br label %859

; <label>:859                                     ; preds = %858, %854
  %860 = phi float [ %855, %858 ], [ %856, %854 ]
  br label %861

; <label>:861                                     ; preds = %884, %859
  %862 = phi float [ %844, %859 ], [ %889, %884 ]
  %863 = phi float [ %823, %859 ], [ %887, %884 ]
  %864 = phi i32 [ 1, %859 ], [ %877, %884 ]
  %865 = phi i32 [ 0, %859 ], [ %878, %884 ]
  %866 = phi i32 [ 1, %859 ], [ %879, %884 ]
  %867 = phi i32 [ 1, %859 ], [ %885, %884 ]
  %868 = phi float [ %812, %859 ], [ %882, %884 ]
  %869 = fcmp fast ugt float %863, %862
  br i1 %869, label %873, label %870, !dx.controlflow.hints !44

; <label>:870                                     ; preds = %861
  %871 = add i32 %864, 1
  %872 = add i32 %866, 1
  br label %876

; <label>:873                                     ; preds = %861
  %874 = add i32 %865, 1
  %875 = add i32 %866, -1
  br label %876

; <label>:876                                     ; preds = %873, %870
  %877 = phi i32 [ %871, %870 ], [ %864, %873 ]
  %878 = phi i32 [ %865, %870 ], [ %874, %873 ]
  %879 = phi i32 [ %872, %870 ], [ %875, %873 ]
  %880 = phi float [ %863, %870 ], [ %862, %873 ]
  %881 = icmp ugt i32 %879, %867
  %882 = select i1 %881, float %880, float %868
  %883 = icmp ult i32 %877, 4
  br i1 %883, label %884, label %890

; <label>:884                                     ; preds = %876
  %885 = select i1 %881, i32 %879, i32 %867
  %886 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 %877
  %887 = load float, float* %886, align 4, !tbaa !45, !noalias !54
  %888 = getelementptr [4 x float], [4 x float]* %10, i32 0, i32 %878
  %889 = load float, float* %888, align 4, !tbaa !45, !noalias !54
  br label %861

; <label>:890                                     ; preds = %876
  %891 = fcmp fast ole float %715, %882
  %892 = fcmp fast oge float %716, %882
  %893 = and i1 %891, %892
  br i1 %893, label %894, label %897, !dx.controlflow.hints !49

; <label>:894                                     ; preds = %890
  %895 = call float @dx.op.binary.f32(i32 35, float %715, float %812)  ; FMax(a,b)
  %896 = call float @dx.op.binary.f32(i32 36, float %716, float %860)  ; FMin(a,b)
  br label %897

; <label>:897                                     ; preds = %894, %890
  %898 = phi i32 [ 1, %894 ], [ 0, %890 ]
  %899 = phi float [ %895, %894 ], [ %812, %890 ]
  %900 = phi float [ %896, %894 ], [ %860, %890 ]
  %901 = fcmp fast ole float %739, %882
  %902 = fcmp fast oge float %740, %882
  %903 = and i1 %901, %902
  br i1 %903, label %904, label %908, !dx.controlflow.hints !49

; <label>:904                                     ; preds = %897
  %905 = call float @dx.op.binary.f32(i32 35, float %739, float %899)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 36, float %740, float %900)  ; FMin(a,b)
  %907 = or i32 %898, 2
  br label %908

; <label>:908                                     ; preds = %904, %897
  %909 = phi i32 [ %907, %904 ], [ %898, %897 ]
  %910 = phi float [ %905, %904 ], [ %899, %897 ]
  %911 = phi float [ %906, %904 ], [ %900, %897 ]
  %912 = fcmp fast ole float %763, %882
  %913 = fcmp fast oge float %764, %882
  %914 = and i1 %912, %913
  br i1 %914, label %915, label %919, !dx.controlflow.hints !49

; <label>:915                                     ; preds = %908
  %916 = call float @dx.op.binary.f32(i32 35, float %763, float %910)  ; FMax(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %764, float %911)  ; FMin(a,b)
  %918 = or i32 %909, 4
  br label %919

; <label>:919                                     ; preds = %915, %908
  %920 = phi i32 [ %918, %915 ], [ %909, %908 ]
  %921 = phi float [ %916, %915 ], [ %910, %908 ]
  %922 = phi float [ %917, %915 ], [ %911, %908 ]
  %923 = fcmp fast ole float %787, %882
  %924 = fcmp fast oge float %788, %882
  %925 = and i1 %923, %924
  br i1 %925, label %926, label %930, !dx.controlflow.hints !49

; <label>:926                                     ; preds = %919
  %927 = call float @dx.op.binary.f32(i32 35, float %787, float %921)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %788, float %922)  ; FMin(a,b)
  %929 = or i32 %920, 8
  br label %930

; <label>:930                                     ; preds = %926, %919
  %931 = phi i32 [ %929, %926 ], [ %920, %919 ]
  %932 = phi float [ %927, %926 ], [ %921, %919 ]
  %933 = phi float [ %928, %926 ], [ %922, %919 ]
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %6, i32 0, float %932, float %933, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %934 = icmp eq i32 %931, 15
  %935 = select i1 %934, i32 2, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 8, i32 %935, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %936 = shl i32 %931, 8
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6, i32 8)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = or i32 %938, %936
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 8, i32 %939, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1160

; <label>:940                                     ; preds = %16
  %941 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %942 = shl i32 %14, 2
  %943 = sub i32 %941, %942
  %944 = add i32 %943, %19
  %945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %944, i32 0)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.f32 %945, 0
  %947 = extractvalue %dx.types.ResRet.f32 %945, 1
  %948 = add i32 %944, 1
  %949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %948, i32 0)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = add i32 %944, 2
  %953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %952, i32 0)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = add i32 %944, 3
  %957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %956, i32 0)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %946, float* %960, align 4
  %961 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %950, float* %961, align 4
  %962 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %954, float* %962, align 4
  %963 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float %958, float* %963, align 4
  %964 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 0
  store float %947, float* %964, align 4
  %965 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 1
  store float %951, float* %965, align 4
  %966 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 2
  store float %955, float* %966, align 4
  %967 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 3
  store float %959, float* %967, align 4
  %968 = fcmp fast olt float %950, %946
  br i1 %968, label %969, label %973, !dx.controlflow.hints !26

; <label>:969                                     ; preds = %940
  %970 = fcmp fast olt float %954, %950
  br i1 %970, label %971, label %972, !dx.controlflow.hints !27

; <label>:971                                     ; preds = %969
  store float %954, float* %960, align 4, !alias.scope !61, !noalias !64
  store float %946, float* %962, align 4, !alias.scope !61, !noalias !64
  br label %976

; <label>:972                                     ; preds = %969
  store float %950, float* %960, align 4, !alias.scope !61, !noalias !64
  store float %946, float* %961, align 4, !alias.scope !61, !noalias !64
  br label %976

; <label>:973                                     ; preds = %940
  %974 = fcmp fast olt float %954, %946
  br i1 %974, label %975, label %976, !dx.controlflow.hints !35

; <label>:975                                     ; preds = %973
  store float %954, float* %960, align 4, !alias.scope !61, !noalias !64
  store float %946, float* %962, align 4, !alias.scope !61, !noalias !64
  br label %976

; <label>:976                                     ; preds = %975, %973, %972, %971
  %977 = phi float [ %950, %975 ], [ %950, %973 ], [ %946, %972 ], [ %950, %971 ]
  %978 = phi float [ %946, %975 ], [ %954, %973 ], [ %954, %972 ], [ %946, %971 ]
  %979 = phi float [ %954, %975 ], [ %946, %973 ], [ %950, %972 ], [ %954, %971 ]
  %980 = fcmp fast olt float %958, %979
  br i1 %980, label %981, label %982, !dx.controlflow.hints !36

; <label>:981                                     ; preds = %976
  store float %958, float* %960, align 4, !alias.scope !61, !noalias !64
  store float %979, float* %963, align 4, !alias.scope !61, !noalias !64
  br label %982

; <label>:982                                     ; preds = %981, %976
  %983 = phi float [ %958, %981 ], [ %979, %976 ]
  %984 = phi float [ %979, %981 ], [ %958, %976 ]
  %985 = fcmp fast olt float %978, %977
  br i1 %985, label %986, label %990, !dx.controlflow.hints !37

; <label>:986                                     ; preds = %982
  %987 = fcmp fast olt float %984, %978
  br i1 %987, label %988, label %989, !dx.controlflow.hints !38

; <label>:988                                     ; preds = %986
  store float %984, float* %961, align 4, !alias.scope !61, !noalias !64
  store float %977, float* %963, align 4, !alias.scope !61, !noalias !64
  br label %993

; <label>:989                                     ; preds = %986
  store float %978, float* %961, align 4, !alias.scope !61, !noalias !64
  store float %977, float* %962, align 4, !alias.scope !61, !noalias !64
  br label %993

; <label>:990                                     ; preds = %982
  %991 = fcmp fast olt float %984, %977
  br i1 %991, label %992, label %993, !dx.controlflow.hints !39

; <label>:992                                     ; preds = %990
  store float %984, float* %961, align 4, !alias.scope !61, !noalias !64
  store float %977, float* %963, align 4, !alias.scope !61, !noalias !64
  br label %993

; <label>:993                                     ; preds = %992, %990, %989, %988
  %994 = phi float [ %984, %992 ], [ %977, %990 ], [ %978, %989 ], [ %984, %988 ]
  %995 = phi float [ %978, %992 ], [ %978, %990 ], [ %977, %989 ], [ %978, %988 ]
  %996 = phi float [ %977, %992 ], [ %984, %990 ], [ %984, %989 ], [ %977, %988 ]
  %997 = fcmp fast olt float %996, %995
  br i1 %997, label %998, label %999, !dx.controlflow.hints !40

; <label>:998                                     ; preds = %993
  store float %996, float* %962, align 4, !alias.scope !61, !noalias !64
  store float %995, float* %963, align 4, !alias.scope !61, !noalias !64
  br label %999

; <label>:999                                     ; preds = %998, %993
  %1000 = fcmp fast olt float %951, %947
  br i1 %1000, label %1001, label %1005, !dx.controlflow.hints !26

; <label>:1001                                    ; preds = %999
  %1002 = fcmp fast olt float %955, %951
  br i1 %1002, label %1003, label %1004, !dx.controlflow.hints !27

; <label>:1003                                    ; preds = %1001
  store float %955, float* %964, align 4, !alias.scope !68, !noalias !64
  store float %947, float* %966, align 4, !alias.scope !68, !noalias !64
  br label %1008

; <label>:1004                                    ; preds = %1001
  store float %951, float* %964, align 4, !alias.scope !68, !noalias !64
  store float %947, float* %965, align 4, !alias.scope !68, !noalias !64
  br label %1008

; <label>:1005                                    ; preds = %999
  %1006 = fcmp fast olt float %955, %947
  br i1 %1006, label %1007, label %1008, !dx.controlflow.hints !35

; <label>:1007                                    ; preds = %1005
  store float %955, float* %964, align 4, !alias.scope !68, !noalias !64
  store float %947, float* %966, align 4, !alias.scope !68, !noalias !64
  br label %1008

; <label>:1008                                    ; preds = %1007, %1005, %1004, %1003
  %1009 = phi float [ %951, %1007 ], [ %951, %1005 ], [ %947, %1004 ], [ %951, %1003 ]
  %1010 = phi float [ %947, %1007 ], [ %955, %1005 ], [ %955, %1004 ], [ %947, %1003 ]
  %1011 = phi float [ %955, %1007 ], [ %947, %1005 ], [ %951, %1004 ], [ %955, %1003 ]
  %1012 = fcmp fast olt float %959, %1011
  br i1 %1012, label %1013, label %1014, !dx.controlflow.hints !36

; <label>:1013                                    ; preds = %1008
  store float %959, float* %964, align 4, !alias.scope !68, !noalias !64
  store float %1011, float* %967, align 4, !alias.scope !68, !noalias !64
  br label %1014

; <label>:1014                                    ; preds = %1013, %1008
  %1015 = phi float [ %959, %1013 ], [ %1011, %1008 ]
  %1016 = phi float [ %1011, %1013 ], [ %959, %1008 ]
  %1017 = fcmp fast olt float %1010, %1009
  br i1 %1017, label %1018, label %1022, !dx.controlflow.hints !37

; <label>:1018                                    ; preds = %1014
  %1019 = fcmp fast olt float %1016, %1010
  br i1 %1019, label %1020, label %1021, !dx.controlflow.hints !38

; <label>:1020                                    ; preds = %1018
  store float %1016, float* %965, align 4, !alias.scope !68, !noalias !64
  store float %1009, float* %967, align 4, !alias.scope !68, !noalias !64
  br label %1025

; <label>:1021                                    ; preds = %1018
  store float %1010, float* %965, align 4, !alias.scope !68, !noalias !64
  store float %1009, float* %966, align 4, !alias.scope !68, !noalias !64
  br label %1025

; <label>:1022                                    ; preds = %1014
  %1023 = fcmp fast olt float %1016, %1009
  br i1 %1023, label %1024, label %1025, !dx.controlflow.hints !39

; <label>:1024                                    ; preds = %1022
  store float %1016, float* %965, align 4, !alias.scope !68, !noalias !64
  store float %1009, float* %967, align 4, !alias.scope !68, !noalias !64
  br label %1025

; <label>:1025                                    ; preds = %1024, %1022, %1021, %1020
  %1026 = phi float [ %1010, %1024 ], [ %1010, %1022 ], [ %1009, %1021 ], [ %1010, %1020 ]
  %1027 = phi float [ %1009, %1024 ], [ %1016, %1022 ], [ %1016, %1021 ], [ %1009, %1020 ]
  %1028 = fcmp fast olt float %1027, %1026
  br i1 %1028, label %1029, label %1030, !dx.controlflow.hints !40

; <label>:1029                                    ; preds = %1025
  store float %1027, float* %966, align 4, !alias.scope !68, !noalias !64
  store float %1026, float* %967, align 4, !alias.scope !68, !noalias !64
  br label %1030

; <label>:1030                                    ; preds = %1029, %1025
  %1031 = phi float [ %1026, %1029 ], [ %1027, %1025 ]
  br label %1032

; <label>:1032                                    ; preds = %1055, %1030
  %1033 = phi float [ %1015, %1030 ], [ %1060, %1055 ]
  %1034 = phi float [ %994, %1030 ], [ %1058, %1055 ]
  %1035 = phi float [ %983, %1030 ], [ %1053, %1055 ]
  %1036 = phi i32 [ 1, %1030 ], [ %1056, %1055 ]
  %1037 = phi i32 [ 1, %1030 ], [ %1049, %1055 ]
  %1038 = phi i32 [ 0, %1030 ], [ %1050, %1055 ]
  %1039 = phi i32 [ 1, %1030 ], [ %1051, %1055 ]
  %1040 = fcmp fast ugt float %1034, %1033
  br i1 %1040, label %1044, label %1041, !dx.controlflow.hints !44

; <label>:1041                                    ; preds = %1032
  %1042 = add i32 %1039, 1
  %1043 = add i32 %1037, 1
  br label %1047

; <label>:1044                                    ; preds = %1032
  %1045 = add i32 %1038, 1
  %1046 = add i32 %1037, -1
  br label %1047

; <label>:1047                                    ; preds = %1044, %1041
  %1048 = phi float [ %1034, %1041 ], [ %1033, %1044 ]
  %1049 = phi i32 [ %1043, %1041 ], [ %1046, %1044 ]
  %1050 = phi i32 [ %1038, %1041 ], [ %1045, %1044 ]
  %1051 = phi i32 [ %1042, %1041 ], [ %1039, %1044 ]
  %1052 = icmp ugt i32 %1049, %1036
  %1053 = select i1 %1052, float %1048, float %1035
  %1054 = icmp ult i32 %1051, 4
  br i1 %1054, label %1055, label %1061

; <label>:1055                                    ; preds = %1047
  %1056 = select i1 %1052, i32 %1049, i32 %1036
  %1057 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %1051
  %1058 = load float, float* %1057, align 4, !tbaa !45, !noalias !64
  %1059 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 %1050
  %1060 = load float, float* %1059, align 4, !tbaa !45, !noalias !64
  br label %1032

; <label>:1061                                    ; preds = %1047
  %1062 = fcmp fast ole float %946, %1053
  %1063 = fcmp fast oge float %947, %1053
  %1064 = and i1 %1062, %1063
  br i1 %1064, label %1065, label %1068, !dx.controlflow.hints !49

; <label>:1065                                    ; preds = %1061
  %1066 = call float @dx.op.binary.f32(i32 35, float %946, float %983)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 36, float %947, float %1031)  ; FMin(a,b)
  br label %1068

; <label>:1068                                    ; preds = %1065, %1061
  %1069 = phi float [ %1066, %1065 ], [ %983, %1061 ]
  %1070 = phi float [ %1067, %1065 ], [ %1031, %1061 ]
  %1071 = phi i32 [ 1, %1065 ], [ 0, %1061 ]
  %1072 = fcmp fast ole float %950, %1053
  %1073 = fcmp fast oge float %951, %1053
  %1074 = and i1 %1072, %1073
  br i1 %1074, label %1075, label %1079, !dx.controlflow.hints !49

; <label>:1075                                    ; preds = %1068
  %1076 = call float @dx.op.binary.f32(i32 35, float %950, float %1069)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 36, float %951, float %1070)  ; FMin(a,b)
  %1078 = or i32 %1071, 2
  br label %1079

; <label>:1079                                    ; preds = %1075, %1068
  %1080 = phi float [ %1076, %1075 ], [ %1069, %1068 ]
  %1081 = phi float [ %1077, %1075 ], [ %1070, %1068 ]
  %1082 = phi i32 [ %1078, %1075 ], [ %1071, %1068 ]
  %1083 = fcmp fast ole float %954, %1053
  %1084 = fcmp fast oge float %955, %1053
  %1085 = and i1 %1083, %1084
  br i1 %1085, label %1086, label %1090, !dx.controlflow.hints !49

; <label>:1086                                    ; preds = %1079
  %1087 = call float @dx.op.binary.f32(i32 35, float %954, float %1080)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 36, float %955, float %1081)  ; FMin(a,b)
  %1089 = or i32 %1082, 4
  br label %1090

; <label>:1090                                    ; preds = %1086, %1079
  %1091 = phi float [ %1087, %1086 ], [ %1080, %1079 ]
  %1092 = phi float [ %1088, %1086 ], [ %1081, %1079 ]
  %1093 = phi i32 [ %1089, %1086 ], [ %1082, %1079 ]
  %1094 = fcmp fast ole float %958, %1053
  %1095 = fcmp fast oge float %959, %1053
  %1096 = and i1 %1094, %1095
  br i1 %1096, label %1097, label %1101, !dx.controlflow.hints !49

; <label>:1097                                    ; preds = %1090
  %1098 = call float @dx.op.binary.f32(i32 35, float %958, float %1091)  ; FMax(a,b)
  %1099 = call float @dx.op.binary.f32(i32 36, float %959, float %1092)  ; FMin(a,b)
  %1100 = or i32 %1093, 8
  br label %1101

; <label>:1101                                    ; preds = %1097, %1090
  %1102 = phi float [ %1098, %1097 ], [ %1091, %1090 ]
  %1103 = phi float [ %1099, %1097 ], [ %1092, %1090 ]
  %1104 = phi i32 [ %1100, %1097 ], [ %1093, %1090 ]
  %1105 = and i32 %1104, 1
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1115, label %1107, !dx.controlflow.hints !71

; <label>:1107                                    ; preds = %1101
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %944, i32 8)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = or i32 %1109, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %944, i32 8, i32 %1110, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %944, i32 8)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = lshr i32 %1112, 1
  %1114 = and i32 %1113, 1
  br label %1115

; <label>:1115                                    ; preds = %1107, %1101
  %1116 = phi i32 [ 0, %1101 ], [ %1114, %1107 ]
  %1117 = and i32 %1104, 2
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1127, label %1119, !dx.controlflow.hints !71

; <label>:1119                                    ; preds = %1115
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %948, i32 8)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = or i32 %1121, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %948, i32 8, i32 %1122, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %948, i32 8)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 2
  %1126 = or i32 %1125, %1116
  br label %1127

; <label>:1127                                    ; preds = %1119, %1115
  %1128 = phi i32 [ %1116, %1115 ], [ %1126, %1119 ]
  %1129 = and i32 %1104, 4
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1140, label %1131, !dx.controlflow.hints !71

; <label>:1131                                    ; preds = %1127
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %952, i32 8)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = or i32 %1133, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %952, i32 8, i32 %1134, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %952, i32 8)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = shl i32 %1136, 1
  %1138 = and i32 %1137, 4
  %1139 = or i32 %1138, %1128
  br label %1140

; <label>:1140                                    ; preds = %1131, %1127
  %1141 = phi i32 [ %1128, %1127 ], [ %1139, %1131 ]
  %1142 = and i32 %1104, 8
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1153, label %1144, !dx.controlflow.hints !71

; <label>:1144                                    ; preds = %1140
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %956, i32 8)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = or i32 %1146, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %956, i32 8, i32 %1147, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %956, i32 8)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = shl i32 %1149, 2
  %1151 = and i32 %1150, 8
  %1152 = or i32 %1151, %1141
  br label %1153

; <label>:1153                                    ; preds = %1144, %1140
  %1154 = phi i32 [ %1141, %1140 ], [ %1152, %1144 ]
  %1155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.i32 %1155, 2
  %1157 = add i32 %1156, %6
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %1157, i32 0, float %1102, float %1103, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1158 = icmp eq i32 %1154, 15
  %1159 = select i1 %1158, i32 2, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1157, i32 8, i32 %1159, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1160

; <label>:1160                                    ; preds = %1153, %930, %333, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

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
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, !14}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWStructuredBuffer<CSMNodeIntervals>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 32}
!12 = !{!13}
!13 = !{i32 0, %CSMConstants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!16 = !{void ()* @process_nodes, !"process_nodes", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 64, i32 1, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = !{!29}
!29 = distinct !{!29, !30, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!30 = distinct !{!30, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outIntersection"}
!33 = distinct !{!33, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z"}
!34 = distinct !{!34, !33, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outEnclosedFlags"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = !{!42}
!42 = distinct !{!42, !43, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!43 = distinct !{!43, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{!52}
!52 = distinct !{!52, !53, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!53 = distinct !{!53, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outIntersection"}
!56 = distinct !{!56, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z"}
!57 = distinct !{!57, !56, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outEnclosedFlags"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!60 = distinct !{!60, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!63 = distinct !{!63, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outIntersection"}
!66 = distinct !{!66, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z"}
!67 = distinct !{!67, !66, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outEnclosedFlags"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!70 = distinct !{!70, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}

