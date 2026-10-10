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
; shader hash: 7bf9d858a9301b022b47efd7b2d2f8d8
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
%"class.RWStructuredBuffer<CSMNodePlanes>" = type { %struct.CSMNodePlanes }
%struct.CSMNodePlanes = type { <4 x float>, float, i32, i32, i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }
%struct.SamplerState = type { i32 }

@points.i.0.hca = internal unnamed_addr constant [4 x float] [float 2.500000e-01, float 7.500000e-01, float 2.500000e-01, float 7.500000e-01]
@points.i.1.hca = internal unnamed_addr constant [4 x float] [float 2.500000e-01, float 2.500000e-01, float 7.500000e-01, float 7.500000e-01]
@localEnclosedFlags.i.i.i.hca = internal unnamed_addr constant [6 x i32] [i32 3, i32 5, i32 6, i32 9, i32 10, i32 12]

define void @process_nodes() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = alloca [4 x float], align 4
  %8 = alloca [16 x float], align 4
  %9 = alloca [16 x float], align 4
  %10 = alloca [16 x float], align 4
  %11 = alloca [4 x float], align 4
  %12 = alloca [4 x float], align 4
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %15 = icmp ult i32 %6, %14
  br i1 %15, label %16, label %2795, !dx.controlflow.hints !19

; <label>:16                                      ; preds = %0
  %17 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %18 = icmp eq i32 %17, 0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 1
  br i1 %18, label %21, label %1383, !dx.controlflow.hints !20

; <label>:21                                      ; preds = %16
  %22 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %23 = uitofp i32 %22 to float
  %24 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %25 = bitcast i32 %24 to float
  %26 = shl i32 %6, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %50, label %28

; <label>:28                                      ; preds = %21
  br label %29

; <label>:29                                      ; preds = %44, %28
  %30 = phi i32 [ %46, %44 ], [ %26, %28 ]
  %31 = phi i32 [ %45, %44 ], [ 0, %28 ]
  %32 = phi i32 [ %47, %44 ], [ 0, %28 ]
  %33 = and i32 %30, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35, !dx.controlflow.hints !21

; <label>:35                                      ; preds = %29
  %36 = lshr i32 %32, 1
  %37 = and i32 %32, 1
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %38, i32 %20, i32 0
  %40 = add i32 %39, %36
  %41 = and i32 %40, 31
  %42 = shl i32 1, %41
  %43 = or i32 %42, %31
  br label %44

; <label>:44                                      ; preds = %35, %29
  %45 = phi i32 [ %43, %35 ], [ %31, %29 ]
  %46 = lshr i32 %30, 1
  %47 = add i32 %32, 1
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %29

; <label>:49                                      ; preds = %44
  br label %50

; <label>:50                                      ; preds = %49, %21
  %51 = phi i32 [ 0, %21 ], [ %45, %49 ]
  %52 = and i32 %20, 31
  %53 = shl i32 1, %52
  %54 = add i32 %53, -1
  %55 = and i32 %51, %54
  %56 = lshr i32 %51, %52
  %57 = uitofp i32 %55 to float
  %58 = uitofp i32 %56 to float
  %59 = fmul fast float %25, 2.000000e+00
  %60 = fadd fast float %57, 5.000000e-01
  %61 = fadd fast float %58, 5.000000e-01
  %62 = fmul fast float %60, %25
  %63 = fmul fast float %61, %25
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = fmul fast float %62, %65
  %68 = fmul fast float %63, %66
  %69 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %64, 3
  %71 = fadd fast float %67, %69
  %72 = fadd fast float %68, %70
  %73 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %74, float 0.000000e+00)  ; FMax(a,b)
  %79 = fcmp fast une float %74, 0.000000e+00
  br i1 %79, label %83, label %80, !dx.controlflow.hints !22

; <label>:80                                      ; preds = %50
  %81 = fcmp fast une float %76, 0.000000e+00
  %82 = select i1 %81, float 1.000000e+00, float 0x3F847AE140000000
  br label %98

; <label>:83                                      ; preds = %50
  %84 = fcmp fast ugt float %76, %74
  br i1 %84, label %85, label %95, !dx.controlflow.hints !23

; <label>:85                                      ; preds = %83
  %86 = fadd fast float %74, 0x3E7AD7F2A0000000
  %87 = fcmp fast ult float %86, %76
  br i1 %87, label %88, label %93, !dx.controlflow.hints !24

; <label>:88                                      ; preds = %85
  %89 = fsub fast float %76, %74
  %90 = fmul fast float %89, 0x3F847AE140000000
  %91 = fadd fast float %90, %76
  %92 = call float @dx.op.binary.f32(i32 36, float %91, float 1.000000e+00)  ; FMin(a,b)
  br label %98

; <label>:93                                      ; preds = %85
  %94 = fadd fast float %74, 0xBE7AD7F2A0000000
  br label %98

; <label>:95                                      ; preds = %83
  %96 = fadd fast float %74, 0xBE7AD7F2A0000000
  %97 = call float @dx.op.binary.f32(i32 36, float %76, float %96)  ; FMin(a,b)
  br label %98

; <label>:98                                      ; preds = %95, %93, %88, %80
  %99 = phi float [ %97, %95 ], [ %94, %93 ], [ %77, %88 ], [ %77, %80 ]
  %100 = phi float [ %78, %95 ], [ %78, %93 ], [ %92, %88 ], [ %82, %80 ]
  %101 = fadd fast float %100, %99
  %102 = fmul fast float %23, 2.500000e-01
  %103 = fmul fast float %102, %101
  %104 = fsub fast float %100, %99
  %105 = fmul fast float %102, %104
  %106 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %103, float* %106, align 4
  %107 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 0
  store float %105, float* %107, align 4, !tbaa !25
  %108 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %103)  ; FMin(a,b)
  %109 = fadd fast float %57, 1.500000e+00
  %110 = fmul fast float %109, %25
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = fmul fast float %112, %110
  %115 = fmul fast float %113, %63
  %116 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %118 = fadd fast float %114, %116
  %119 = fadd fast float %115, %117
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = call float @dx.op.binary.f32(i32 35, float %123, float 0.000000e+00)  ; FMax(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float %121, float 0.000000e+00)  ; FMax(a,b)
  %126 = fcmp fast une float %121, 0.000000e+00
  br i1 %126, label %130, label %127, !dx.controlflow.hints !22

; <label>:127                                     ; preds = %98
  %128 = fcmp fast une float %123, 0.000000e+00
  %129 = select i1 %128, float 1.000000e+00, float 0x3F847AE140000000
  br label %145

; <label>:130                                     ; preds = %98
  %131 = fcmp fast ugt float %123, %121
  br i1 %131, label %132, label %142, !dx.controlflow.hints !23

; <label>:132                                     ; preds = %130
  %133 = fadd fast float %121, 0x3E7AD7F2A0000000
  %134 = fcmp fast ult float %133, %123
  br i1 %134, label %135, label %140, !dx.controlflow.hints !24

; <label>:135                                     ; preds = %132
  %136 = fsub fast float %123, %121
  %137 = fmul fast float %136, 0x3F847AE140000000
  %138 = fadd fast float %137, %123
  %139 = call float @dx.op.binary.f32(i32 36, float %138, float 1.000000e+00)  ; FMin(a,b)
  br label %145

; <label>:140                                     ; preds = %132
  %141 = fadd fast float %121, 0xBE7AD7F2A0000000
  br label %145

; <label>:142                                     ; preds = %130
  %143 = fadd fast float %121, 0xBE7AD7F2A0000000
  %144 = call float @dx.op.binary.f32(i32 36, float %123, float %143)  ; FMin(a,b)
  br label %145

; <label>:145                                     ; preds = %142, %140, %135, %127
  %146 = phi float [ %144, %142 ], [ %141, %140 ], [ %124, %135 ], [ %124, %127 ]
  %147 = phi float [ %125, %142 ], [ %125, %140 ], [ %139, %135 ], [ %129, %127 ]
  %148 = fadd fast float %147, %146
  %149 = fmul fast float %102, %148
  %150 = fsub fast float %147, %146
  %151 = fmul fast float %102, %150
  %152 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %149, float* %152, align 4
  %153 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 1
  store float %151, float* %153, align 4, !tbaa !25
  %154 = call float @dx.op.binary.f32(i32 36, float %108, float %149)  ; FMin(a,b)
  %155 = fadd fast float %58, 1.500000e+00
  %156 = fmul fast float %155, %25
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = fmul fast float %158, %62
  %161 = fmul fast float %159, %156
  %162 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %163 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %164 = fadd fast float %160, %162
  %165 = fadd fast float %161, %163
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = call float @dx.op.binary.f32(i32 35, float %169, float 0.000000e+00)  ; FMax(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %167, float 0.000000e+00)  ; FMax(a,b)
  %172 = fcmp fast une float %167, 0.000000e+00
  br i1 %172, label %176, label %173, !dx.controlflow.hints !22

; <label>:173                                     ; preds = %145
  %174 = fcmp fast une float %169, 0.000000e+00
  %175 = select i1 %174, float 1.000000e+00, float 0x3F847AE140000000
  br label %191

; <label>:176                                     ; preds = %145
  %177 = fcmp fast ugt float %169, %167
  br i1 %177, label %178, label %188, !dx.controlflow.hints !23

; <label>:178                                     ; preds = %176
  %179 = fadd fast float %167, 0x3E7AD7F2A0000000
  %180 = fcmp fast ult float %179, %169
  br i1 %180, label %181, label %186, !dx.controlflow.hints !24

; <label>:181                                     ; preds = %178
  %182 = fsub fast float %169, %167
  %183 = fmul fast float %182, 0x3F847AE140000000
  %184 = fadd fast float %183, %169
  %185 = call float @dx.op.binary.f32(i32 36, float %184, float 1.000000e+00)  ; FMin(a,b)
  br label %191

; <label>:186                                     ; preds = %178
  %187 = fadd fast float %167, 0xBE7AD7F2A0000000
  br label %191

; <label>:188                                     ; preds = %176
  %189 = fadd fast float %167, 0xBE7AD7F2A0000000
  %190 = call float @dx.op.binary.f32(i32 36, float %169, float %189)  ; FMin(a,b)
  br label %191

; <label>:191                                     ; preds = %188, %186, %181, %173
  %192 = phi float [ %190, %188 ], [ %187, %186 ], [ %170, %181 ], [ %170, %173 ]
  %193 = phi float [ %171, %188 ], [ %171, %186 ], [ %185, %181 ], [ %175, %173 ]
  %194 = fadd fast float %193, %192
  %195 = fmul fast float %102, %194
  %196 = fsub fast float %193, %192
  %197 = fmul fast float %102, %196
  %198 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %195, float* %198, align 4
  %199 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 2
  store float %197, float* %199, align 4, !tbaa !25
  %200 = call float @dx.op.binary.f32(i32 36, float %154, float %195)  ; FMin(a,b)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = extractvalue %dx.types.CBufRet.f32 %201, 1
  %204 = fmul fast float %202, %110
  %205 = fmul fast float %203, %156
  %206 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %207 = extractvalue %dx.types.CBufRet.f32 %201, 3
  %208 = fadd fast float %204, %206
  %209 = fadd fast float %205, %207
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %208, float %209, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = call float @dx.op.binary.f32(i32 35, float %213, float 0.000000e+00)  ; FMax(a,b)
  %215 = call float @dx.op.binary.f32(i32 35, float %211, float 0.000000e+00)  ; FMax(a,b)
  %216 = fcmp fast une float %211, 0.000000e+00
  br i1 %216, label %220, label %217, !dx.controlflow.hints !22

; <label>:217                                     ; preds = %191
  %218 = fcmp fast une float %213, 0.000000e+00
  %219 = select i1 %218, float 1.000000e+00, float 0x3F847AE140000000
  br label %235

; <label>:220                                     ; preds = %191
  %221 = fcmp fast ugt float %213, %211
  br i1 %221, label %222, label %232, !dx.controlflow.hints !23

; <label>:222                                     ; preds = %220
  %223 = fadd fast float %211, 0x3E7AD7F2A0000000
  %224 = fcmp fast ult float %223, %213
  br i1 %224, label %225, label %230, !dx.controlflow.hints !24

; <label>:225                                     ; preds = %222
  %226 = fsub fast float %213, %211
  %227 = fmul fast float %226, 0x3F847AE140000000
  %228 = fadd fast float %227, %213
  %229 = call float @dx.op.binary.f32(i32 36, float %228, float 1.000000e+00)  ; FMin(a,b)
  br label %235

; <label>:230                                     ; preds = %222
  %231 = fadd fast float %211, 0xBE7AD7F2A0000000
  br label %235

; <label>:232                                     ; preds = %220
  %233 = fadd fast float %211, 0xBE7AD7F2A0000000
  %234 = call float @dx.op.binary.f32(i32 36, float %213, float %233)  ; FMin(a,b)
  br label %235

; <label>:235                                     ; preds = %232, %230, %225, %217
  %236 = phi float [ %234, %232 ], [ %231, %230 ], [ %214, %225 ], [ %214, %217 ]
  %237 = phi float [ %215, %232 ], [ %215, %230 ], [ %229, %225 ], [ %219, %217 ]
  %238 = fadd fast float %237, %236
  %239 = fmul fast float %102, %238
  %240 = fsub fast float %237, %236
  %241 = fmul fast float %102, %240
  %242 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 3
  %243 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 3
  store float %241, float* %243, align 4, !tbaa !25
  %244 = call float @dx.op.binary.f32(i32 36, float %200, float %239)  ; FMin(a,b)
  %245 = call float @dx.op.unary.f32(i32 27, float %244)  ; Round_ni(value)
  %246 = fsub fast float %103, %245
  store float %246, float* %106, align 4
  %247 = fsub fast float %149, %245
  store float %247, float* %152, align 4
  %248 = fsub fast float %195, %245
  store float %248, float* %198, align 4
  %249 = fsub fast float %239, %245
  store float %249, float* %242, align 4
  %250 = fsub fast float %148, %101
  %251 = fmul fast float %102, %250
  %252 = fcmp fast oeq float %248, %246
  %253 = fsub fast float %194, %101
  %254 = fmul fast float %102, %253
  %255 = fmul fast float %251, 5.000000e-01
  %256 = fsub fast float -0.000000e+00, %255
  %257 = fmul fast float %254, 5.000000e-01
  %258 = fsub fast float -0.000000e+00, %257
  %259 = select i1 %252, float -0.000000e+00, float %258
  %260 = call float @dx.op.dot3.f32(i32 55, float %256, float %259, float 2.500000e-01, float %256, float %259, float 2.500000e-01)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = call float @dx.op.unary.f32(i32 25, float %260)  ; Rsqrt(value)
  %262 = fmul fast float %261, %256
  %263 = fmul fast float %259, %261
  %264 = fmul fast float %261, 2.500000e-01
  %265 = fcmp fast ogt float %264, 0.000000e+00
  %266 = fcmp fast olt float %264, 0.000000e+00
  %267 = zext i1 %265 to i32
  %268 = zext i1 %266 to i32
  %269 = sub nsw i32 %267, %268
  %270 = sitofp i32 %269 to float
  %271 = fmul fast float %262, %270
  %272 = fmul fast float %263, %270
  %273 = fmul fast float %270, %264
  %274 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float 2.500000e-01, float 2.500000e-01, float %246)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %275

; <label>:275                                     ; preds = %349, %235
  %276 = phi float [ %271, %235 ], [ %337, %349 ]
  %277 = phi float [ %272, %235 ], [ %338, %349 ]
  %278 = phi float [ %273, %235 ], [ %339, %349 ]
  %279 = phi float [ %274, %235 ], [ %340, %349 ]
  %280 = phi i32 [ 0, %235 ], [ %350, %349 ]
  %281 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 2.500000e-01, float %246, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %282 = fsub fast float %281, %279
  %283 = fmul fast float %282, %246
  %284 = fcmp fast olt float %278, 0.000000e+00
  %285 = fmul fast float %278, -1.250000e-01
  %286 = select i1 %284, float %285, float 0.000000e+00
  %287 = fadd fast float %283, %286
  %288 = fmul fast float %282, 2.500000e-01
  %289 = fsub fast float -0.000000e+00, %282
  %290 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 2.500000e-01, float %247, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %291 = fsub fast float %290, %279
  %292 = fmul fast float %291, %247
  %293 = fadd fast float %292, %286
  %294 = fmul fast float %291, 7.500000e-01
  %295 = fadd fast float %294, %288
  %296 = fadd fast float %291, %282
  %297 = fmul fast float %296, 2.500000e-01
  %298 = fadd fast float %293, %287
  %299 = fsub fast float %289, %291
  %300 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 7.500000e-01, float %248, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = fsub fast float %300, %279
  %302 = fmul fast float %301, %248
  %303 = fadd fast float %302, %286
  %304 = fmul fast float %301, 2.500000e-01
  %305 = fmul fast float %301, 7.500000e-01
  %306 = fadd fast float %304, %295
  %307 = fadd fast float %305, %297
  %308 = fadd fast float %303, %298
  %309 = fsub fast float %299, %301
  %310 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 7.500000e-01, float %249, float %276, float %277, float %278)  ; Dot3(ax,ay,az,bx,by,bz)
  %311 = fsub fast float %310, %279
  %312 = fmul fast float %311, %249
  %313 = fadd fast float %312, %286
  %314 = fmul fast float %311, 7.500000e-01
  %315 = fadd fast float %314, %306
  %316 = fadd fast float %314, %307
  %317 = fadd fast float %313, %308
  %318 = fsub fast float %309, %311
  %319 = uitofp i32 %280 to float
  %320 = fmul fast float %319, 0x3F49930BE0000000
  %321 = fsub fast float 0x3FA99999A0000000, %320
  %322 = fmul fast float %315, %321
  %323 = fmul fast float %316, %321
  %324 = fmul fast float %317, %321
  %325 = fmul fast float %318, %321
  %326 = fsub fast float %276, %322
  %327 = fsub fast float %277, %323
  %328 = fsub fast float %278, %324
  %329 = fsub fast float %279, %325
  %330 = fmul fast float %326, %326
  %331 = fmul fast float %327, %327
  %332 = fadd fast float %330, %331
  %333 = fmul fast float %328, %328
  %334 = fadd fast float %332, %333
  %335 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %336 = fdiv fast float 1.000000e+00, %335
  %337 = fmul fast float %336, %326
  %338 = fmul fast float %336, %327
  %339 = fmul fast float %336, %328
  %340 = fmul fast float %336, %329
  %341 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %342 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %343 = call float @dx.op.binary.f32(i32 35, float %342, float %341)  ; FMax(a,b)
  %344 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %345 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %346 = call float @dx.op.binary.f32(i32 35, float %345, float %344)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %346, float %343)  ; FMax(a,b)
  %348 = fcmp fast ugt float %347, 0x3E7AD7F2A0000000
  br i1 %348, label %349, label %352, !dx.controlflow.hints !29

; <label>:349                                     ; preds = %275
  %350 = add nuw nsw i32 %280, 1
  %351 = icmp ult i32 %350, 64
  br i1 %351, label %275, label %352

; <label>:352                                     ; preds = %349, %275
  %353 = fcmp fast ogt float %339, 0.000000e+00
  %354 = fcmp fast olt float %339, 0.000000e+00
  %355 = zext i1 %353 to i32
  %356 = zext i1 %354 to i32
  %357 = sub nsw i32 %355, %356
  %358 = sitofp i32 %357 to float
  %359 = fmul fast float %358, %337
  %360 = fmul fast float %358, %338
  %361 = fmul fast float %358, %339
  %362 = fmul fast float %358, %340
  %363 = fcmp fast ogt float %361, 0.000000e+00
  br i1 %363, label %364, label %407, !dx.controlflow.hints !30

; <label>:364                                     ; preds = %352
  %365 = call float @dx.op.dot2.f32(i32 54, float %359, float %360, float 2.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %366 = fsub fast float %362, %365
  %367 = fdiv fast float %366, %361
  %368 = fsub fast float %246, %367
  %369 = fadd fast float %105, %368
  %370 = fsub fast float %105, %368
  %371 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %369)  ; FMin(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %370)  ; FMin(a,b)
  %373 = call float @dx.op.dot2.f32(i32 54, float %359, float %360, float 7.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %374 = fsub fast float %362, %373
  %375 = fdiv fast float %374, %361
  %376 = fsub fast float %247, %375
  %377 = fadd fast float %151, %376
  %378 = fsub fast float %151, %376
  %379 = call float @dx.op.binary.f32(i32 36, float %371, float %377)  ; FMin(a,b)
  %380 = call float @dx.op.binary.f32(i32 36, float %372, float %378)  ; FMin(a,b)
  %381 = call float @dx.op.dot2.f32(i32 54, float %359, float %360, float 2.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %382 = fsub fast float %362, %381
  %383 = fdiv fast float %382, %361
  %384 = fsub fast float %248, %383
  %385 = fadd fast float %197, %384
  %386 = fsub fast float %197, %384
  %387 = call float @dx.op.binary.f32(i32 36, float %379, float %385)  ; FMin(a,b)
  %388 = call float @dx.op.binary.f32(i32 36, float %380, float %386)  ; FMin(a,b)
  %389 = call float @dx.op.dot2.f32(i32 54, float %359, float %360, float 7.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %390 = fsub fast float %362, %389
  %391 = fdiv fast float %390, %361
  %392 = fsub fast float %249, %391
  %393 = fadd fast float %241, %392
  %394 = fsub fast float %241, %392
  %395 = call float @dx.op.binary.f32(i32 36, float %387, float %393)  ; FMin(a,b)
  %396 = call float @dx.op.binary.f32(i32 36, float %388, float %394)  ; FMin(a,b)
  %397 = fadd fast float %396, %395
  %398 = fmul fast float %397, 5.000000e-01
  %399 = fcmp fast ogt float %398, 9.765625e-04
  %400 = fcmp fast ogt float %398, 0.000000e+00
  %401 = and i1 %399, %400
  br i1 %401, label %402, label %407, !dx.controlflow.hints !31

; <label>:402                                     ; preds = %364
  %403 = fsub fast float %395, %396
  %404 = fmul fast float %361, 5.000000e-01
  %405 = fmul fast float %404, %403
  %406 = fadd fast float %405, %362
  br label %407

; <label>:407                                     ; preds = %402, %364, %352
  %408 = phi float [ 0.000000e+00, %364 ], [ 0.000000e+00, %352 ], [ %398, %402 ]
  %409 = phi i32 [ 0, %364 ], [ 0, %352 ], [ 15, %402 ]
  %410 = phi float [ 0.000000e+00, %364 ], [ 0.000000e+00, %352 ], [ %359, %402 ]
  %411 = phi float [ 0.000000e+00, %364 ], [ 0.000000e+00, %352 ], [ %360, %402 ]
  %412 = phi float [ 0.000000e+00, %364 ], [ 0.000000e+00, %352 ], [ %361, %402 ]
  %413 = phi float [ 0.000000e+00, %364 ], [ 0.000000e+00, %352 ], [ %406, %402 ]
  %414 = fsub fast float %101, %148
  %415 = fmul fast float %102, %414
  %416 = fcmp fast oeq float %249, %247
  %417 = fsub fast float %238, %148
  %418 = fmul fast float %102, %417
  %419 = fmul fast float %415, 5.000000e-01
  %420 = fsub fast float -0.000000e+00, %419
  %421 = fmul fast float %418, -5.000000e-01
  %422 = fsub fast float -0.000000e+00, %421
  %423 = select i1 %416, float 0.000000e+00, float %422
  %424 = call float @dx.op.dot3.f32(i32 55, float %420, float %423, float -2.500000e-01, float %420, float %423, float -2.500000e-01)  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = call float @dx.op.unary.f32(i32 25, float %424)  ; Rsqrt(value)
  %426 = fmul fast float %425, %420
  %427 = fmul fast float %423, %425
  %428 = fmul fast float %425, -2.500000e-01
  %429 = fcmp fast ogt float %428, 0.000000e+00
  %430 = fcmp fast olt float %428, 0.000000e+00
  %431 = zext i1 %429 to i32
  %432 = zext i1 %430 to i32
  %433 = sub nsw i32 %431, %432
  %434 = sitofp i32 %433 to float
  %435 = fmul fast float %426, %434
  %436 = fmul fast float %427, %434
  %437 = fmul fast float %434, %428
  %438 = call float @dx.op.dot3.f32(i32 55, float %435, float %436, float %437, float 7.500000e-01, float 2.500000e-01, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %439

; <label>:439                                     ; preds = %513, %407
  %440 = phi float [ %435, %407 ], [ %501, %513 ]
  %441 = phi float [ %436, %407 ], [ %502, %513 ]
  %442 = phi float [ %437, %407 ], [ %503, %513 ]
  %443 = phi float [ %438, %407 ], [ %504, %513 ]
  %444 = phi i32 [ 0, %407 ], [ %514, %513 ]
  %445 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 2.500000e-01, float %246, float %440, float %441, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %446 = fsub fast float %445, %443
  %447 = fmul fast float %446, %246
  %448 = fcmp fast olt float %442, 0.000000e+00
  %449 = fmul fast float %442, -1.250000e-01
  %450 = select i1 %448, float %449, float 0.000000e+00
  %451 = fadd fast float %447, %450
  %452 = fmul fast float %446, 2.500000e-01
  %453 = fsub fast float -0.000000e+00, %446
  %454 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 2.500000e-01, float %247, float %440, float %441, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = fsub fast float %454, %443
  %456 = fmul fast float %455, %247
  %457 = fadd fast float %456, %450
  %458 = fmul fast float %455, 7.500000e-01
  %459 = fadd fast float %458, %452
  %460 = fadd fast float %455, %446
  %461 = fmul fast float %460, 2.500000e-01
  %462 = fadd fast float %457, %451
  %463 = fsub fast float %453, %455
  %464 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 7.500000e-01, float %248, float %440, float %441, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = fsub fast float %464, %443
  %466 = fmul fast float %465, %248
  %467 = fadd fast float %466, %450
  %468 = fmul fast float %465, 2.500000e-01
  %469 = fmul fast float %465, 7.500000e-01
  %470 = fadd fast float %468, %459
  %471 = fadd fast float %469, %461
  %472 = fadd fast float %467, %462
  %473 = fsub fast float %463, %465
  %474 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 7.500000e-01, float %249, float %440, float %441, float %442)  ; Dot3(ax,ay,az,bx,by,bz)
  %475 = fsub fast float %474, %443
  %476 = fmul fast float %475, %249
  %477 = fadd fast float %476, %450
  %478 = fmul fast float %475, 7.500000e-01
  %479 = fadd fast float %478, %470
  %480 = fadd fast float %478, %471
  %481 = fadd fast float %477, %472
  %482 = fsub fast float %473, %475
  %483 = uitofp i32 %444 to float
  %484 = fmul fast float %483, 0x3F49930BE0000000
  %485 = fsub fast float 0x3FA99999A0000000, %484
  %486 = fmul fast float %479, %485
  %487 = fmul fast float %480, %485
  %488 = fmul fast float %481, %485
  %489 = fmul fast float %482, %485
  %490 = fsub fast float %440, %486
  %491 = fsub fast float %441, %487
  %492 = fsub fast float %442, %488
  %493 = fsub fast float %443, %489
  %494 = fmul fast float %490, %490
  %495 = fmul fast float %491, %491
  %496 = fadd fast float %494, %495
  %497 = fmul fast float %492, %492
  %498 = fadd fast float %496, %497
  %499 = call float @dx.op.unary.f32(i32 24, float %498)  ; Sqrt(value)
  %500 = fdiv fast float 1.000000e+00, %499
  %501 = fmul fast float %500, %490
  %502 = fmul fast float %500, %491
  %503 = fmul fast float %500, %492
  %504 = fmul fast float %500, %493
  %505 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  %506 = call float @dx.op.unary.f32(i32 6, float %481)  ; FAbs(value)
  %507 = call float @dx.op.binary.f32(i32 35, float %506, float %505)  ; FMax(a,b)
  %508 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  %509 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  %510 = call float @dx.op.binary.f32(i32 35, float %509, float %508)  ; FMax(a,b)
  %511 = call float @dx.op.binary.f32(i32 35, float %510, float %507)  ; FMax(a,b)
  %512 = fcmp fast ugt float %511, 0x3E7AD7F2A0000000
  br i1 %512, label %513, label %516, !dx.controlflow.hints !29

; <label>:513                                     ; preds = %439
  %514 = add nuw nsw i32 %444, 1
  %515 = icmp ult i32 %514, 64
  br i1 %515, label %439, label %516

; <label>:516                                     ; preds = %513, %439
  %517 = fcmp fast ogt float %503, 0.000000e+00
  %518 = fcmp fast olt float %503, 0.000000e+00
  %519 = zext i1 %517 to i32
  %520 = zext i1 %518 to i32
  %521 = sub nsw i32 %519, %520
  %522 = sitofp i32 %521 to float
  %523 = fmul fast float %522, %501
  %524 = fmul fast float %522, %502
  %525 = fmul fast float %522, %503
  %526 = fmul fast float %522, %504
  %527 = fcmp fast ogt float %525, 0.000000e+00
  br i1 %527, label %528, label %571, !dx.controlflow.hints !30

; <label>:528                                     ; preds = %516
  %529 = call float @dx.op.dot2.f32(i32 54, float %523, float %524, float 2.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %530 = fsub fast float %526, %529
  %531 = fdiv fast float %530, %525
  %532 = fsub fast float %246, %531
  %533 = fadd fast float %105, %532
  %534 = fsub fast float %105, %532
  %535 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %533)  ; FMin(a,b)
  %536 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %534)  ; FMin(a,b)
  %537 = call float @dx.op.dot2.f32(i32 54, float %523, float %524, float 7.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %538 = fsub fast float %526, %537
  %539 = fdiv fast float %538, %525
  %540 = fsub fast float %247, %539
  %541 = fadd fast float %151, %540
  %542 = fsub fast float %151, %540
  %543 = call float @dx.op.binary.f32(i32 36, float %535, float %541)  ; FMin(a,b)
  %544 = call float @dx.op.binary.f32(i32 36, float %536, float %542)  ; FMin(a,b)
  %545 = call float @dx.op.dot2.f32(i32 54, float %523, float %524, float 2.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %546 = fsub fast float %526, %545
  %547 = fdiv fast float %546, %525
  %548 = fsub fast float %248, %547
  %549 = fadd fast float %197, %548
  %550 = fsub fast float %197, %548
  %551 = call float @dx.op.binary.f32(i32 36, float %543, float %549)  ; FMin(a,b)
  %552 = call float @dx.op.binary.f32(i32 36, float %544, float %550)  ; FMin(a,b)
  %553 = call float @dx.op.dot2.f32(i32 54, float %523, float %524, float 7.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %554 = fsub fast float %526, %553
  %555 = fdiv fast float %554, %525
  %556 = fsub fast float %249, %555
  %557 = fadd fast float %241, %556
  %558 = fsub fast float %241, %556
  %559 = call float @dx.op.binary.f32(i32 36, float %551, float %557)  ; FMin(a,b)
  %560 = call float @dx.op.binary.f32(i32 36, float %552, float %558)  ; FMin(a,b)
  %561 = fadd fast float %560, %559
  %562 = fmul fast float %561, 5.000000e-01
  %563 = fcmp fast ogt float %562, 9.765625e-04
  %564 = fcmp fast ogt float %562, %408
  %565 = and i1 %563, %564
  br i1 %565, label %566, label %571, !dx.controlflow.hints !31

; <label>:566                                     ; preds = %528
  %567 = fsub fast float %559, %560
  %568 = fmul fast float %525, 5.000000e-01
  %569 = fmul fast float %568, %567
  %570 = fadd fast float %569, %526
  br label %571

; <label>:571                                     ; preds = %566, %528, %516
  %572 = phi float [ %408, %528 ], [ %408, %516 ], [ %562, %566 ]
  %573 = phi i32 [ %409, %528 ], [ %409, %516 ], [ 15, %566 ]
  %574 = phi float [ %410, %528 ], [ %410, %516 ], [ %523, %566 ]
  %575 = phi float [ %411, %528 ], [ %411, %516 ], [ %524, %566 ]
  %576 = phi float [ %412, %528 ], [ %412, %516 ], [ %525, %566 ]
  %577 = phi float [ %413, %528 ], [ %413, %516 ], [ %570, %566 ]
  %578 = fsub fast float %238, %194
  %579 = fmul fast float %102, %578
  %580 = fsub fast float %101, %194
  %581 = fmul fast float %102, %580
  %582 = fmul fast float %579, -5.000000e-01
  %583 = fsub fast float -0.000000e+00, %582
  %584 = fmul fast float %581, 5.000000e-01
  %585 = fsub fast float -0.000000e+00, %584
  %586 = select i1 %252, float -0.000000e+00, float %585
  %587 = call float @dx.op.dot3.f32(i32 55, float %583, float %586, float -2.500000e-01, float %583, float %586, float -2.500000e-01)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = call float @dx.op.unary.f32(i32 25, float %587)  ; Rsqrt(value)
  %589 = fmul fast float %588, %583
  %590 = fmul fast float %586, %588
  %591 = fmul fast float %588, -2.500000e-01
  %592 = fcmp fast ogt float %591, 0.000000e+00
  %593 = fcmp fast olt float %591, 0.000000e+00
  %594 = zext i1 %592 to i32
  %595 = zext i1 %593 to i32
  %596 = sub nsw i32 %594, %595
  %597 = sitofp i32 %596 to float
  %598 = fmul fast float %589, %597
  %599 = fmul fast float %590, %597
  %600 = fmul fast float %597, %591
  %601 = call float @dx.op.dot3.f32(i32 55, float %598, float %599, float %600, float 2.500000e-01, float 7.500000e-01, float %248)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %602

; <label>:602                                     ; preds = %676, %571
  %603 = phi float [ %598, %571 ], [ %664, %676 ]
  %604 = phi float [ %599, %571 ], [ %665, %676 ]
  %605 = phi float [ %600, %571 ], [ %666, %676 ]
  %606 = phi float [ %601, %571 ], [ %667, %676 ]
  %607 = phi i32 [ 0, %571 ], [ %677, %676 ]
  %608 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 2.500000e-01, float %246, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %609 = fsub fast float %608, %606
  %610 = fmul fast float %609, %246
  %611 = fcmp fast olt float %605, 0.000000e+00
  %612 = fmul fast float %605, -1.250000e-01
  %613 = select i1 %611, float %612, float 0.000000e+00
  %614 = fadd fast float %610, %613
  %615 = fmul fast float %609, 2.500000e-01
  %616 = fsub fast float -0.000000e+00, %609
  %617 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 2.500000e-01, float %247, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = fsub fast float %617, %606
  %619 = fmul fast float %618, %247
  %620 = fadd fast float %619, %613
  %621 = fmul fast float %618, 7.500000e-01
  %622 = fadd fast float %621, %615
  %623 = fadd fast float %618, %609
  %624 = fmul fast float %623, 2.500000e-01
  %625 = fadd fast float %620, %614
  %626 = fsub fast float %616, %618
  %627 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 7.500000e-01, float %248, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = fsub fast float %627, %606
  %629 = fmul fast float %628, %248
  %630 = fadd fast float %629, %613
  %631 = fmul fast float %628, 2.500000e-01
  %632 = fmul fast float %628, 7.500000e-01
  %633 = fadd fast float %631, %622
  %634 = fadd fast float %632, %624
  %635 = fadd fast float %630, %625
  %636 = fsub fast float %626, %628
  %637 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 7.500000e-01, float %249, float %603, float %604, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %638 = fsub fast float %637, %606
  %639 = fmul fast float %638, %249
  %640 = fadd fast float %639, %613
  %641 = fmul fast float %638, 7.500000e-01
  %642 = fadd fast float %641, %633
  %643 = fadd fast float %641, %634
  %644 = fadd fast float %640, %635
  %645 = fsub fast float %636, %638
  %646 = uitofp i32 %607 to float
  %647 = fmul fast float %646, 0x3F49930BE0000000
  %648 = fsub fast float 0x3FA99999A0000000, %647
  %649 = fmul fast float %642, %648
  %650 = fmul fast float %643, %648
  %651 = fmul fast float %644, %648
  %652 = fmul fast float %645, %648
  %653 = fsub fast float %603, %649
  %654 = fsub fast float %604, %650
  %655 = fsub fast float %605, %651
  %656 = fsub fast float %606, %652
  %657 = fmul fast float %653, %653
  %658 = fmul fast float %654, %654
  %659 = fadd fast float %657, %658
  %660 = fmul fast float %655, %655
  %661 = fadd fast float %659, %660
  %662 = call float @dx.op.unary.f32(i32 24, float %661)  ; Sqrt(value)
  %663 = fdiv fast float 1.000000e+00, %662
  %664 = fmul fast float %663, %653
  %665 = fmul fast float %663, %654
  %666 = fmul fast float %663, %655
  %667 = fmul fast float %663, %656
  %668 = call float @dx.op.unary.f32(i32 6, float %645)  ; FAbs(value)
  %669 = call float @dx.op.unary.f32(i32 6, float %644)  ; FAbs(value)
  %670 = call float @dx.op.binary.f32(i32 35, float %669, float %668)  ; FMax(a,b)
  %671 = call float @dx.op.unary.f32(i32 6, float %643)  ; FAbs(value)
  %672 = call float @dx.op.unary.f32(i32 6, float %642)  ; FAbs(value)
  %673 = call float @dx.op.binary.f32(i32 35, float %672, float %671)  ; FMax(a,b)
  %674 = call float @dx.op.binary.f32(i32 35, float %673, float %670)  ; FMax(a,b)
  %675 = fcmp fast ugt float %674, 0x3E7AD7F2A0000000
  br i1 %675, label %676, label %679, !dx.controlflow.hints !29

; <label>:676                                     ; preds = %602
  %677 = add nuw nsw i32 %607, 1
  %678 = icmp ult i32 %677, 64
  br i1 %678, label %602, label %679

; <label>:679                                     ; preds = %676, %602
  %680 = fcmp fast ogt float %666, 0.000000e+00
  %681 = fcmp fast olt float %666, 0.000000e+00
  %682 = zext i1 %680 to i32
  %683 = zext i1 %681 to i32
  %684 = sub nsw i32 %682, %683
  %685 = sitofp i32 %684 to float
  %686 = fmul fast float %685, %664
  %687 = fmul fast float %685, %665
  %688 = fmul fast float %685, %666
  %689 = fmul fast float %685, %667
  %690 = fcmp fast ogt float %688, 0.000000e+00
  br i1 %690, label %691, label %734, !dx.controlflow.hints !30

; <label>:691                                     ; preds = %679
  %692 = call float @dx.op.dot2.f32(i32 54, float %686, float %687, float 2.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %693 = fsub fast float %689, %692
  %694 = fdiv fast float %693, %688
  %695 = fsub fast float %246, %694
  %696 = fadd fast float %105, %695
  %697 = fsub fast float %105, %695
  %698 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %696)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %697)  ; FMin(a,b)
  %700 = call float @dx.op.dot2.f32(i32 54, float %686, float %687, float 7.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %701 = fsub fast float %689, %700
  %702 = fdiv fast float %701, %688
  %703 = fsub fast float %247, %702
  %704 = fadd fast float %151, %703
  %705 = fsub fast float %151, %703
  %706 = call float @dx.op.binary.f32(i32 36, float %698, float %704)  ; FMin(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %699, float %705)  ; FMin(a,b)
  %708 = call float @dx.op.dot2.f32(i32 54, float %686, float %687, float 2.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %709 = fsub fast float %689, %708
  %710 = fdiv fast float %709, %688
  %711 = fsub fast float %248, %710
  %712 = fadd fast float %197, %711
  %713 = fsub fast float %197, %711
  %714 = call float @dx.op.binary.f32(i32 36, float %706, float %712)  ; FMin(a,b)
  %715 = call float @dx.op.binary.f32(i32 36, float %707, float %713)  ; FMin(a,b)
  %716 = call float @dx.op.dot2.f32(i32 54, float %686, float %687, float 7.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %717 = fsub fast float %689, %716
  %718 = fdiv fast float %717, %688
  %719 = fsub fast float %249, %718
  %720 = fadd fast float %241, %719
  %721 = fsub fast float %241, %719
  %722 = call float @dx.op.binary.f32(i32 36, float %714, float %720)  ; FMin(a,b)
  %723 = call float @dx.op.binary.f32(i32 36, float %715, float %721)  ; FMin(a,b)
  %724 = fadd fast float %723, %722
  %725 = fmul fast float %724, 5.000000e-01
  %726 = fcmp fast ogt float %725, 9.765625e-04
  %727 = fcmp fast ogt float %725, %572
  %728 = and i1 %726, %727
  br i1 %728, label %729, label %734, !dx.controlflow.hints !31

; <label>:729                                     ; preds = %691
  %730 = fsub fast float %722, %723
  %731 = fmul fast float %688, 5.000000e-01
  %732 = fmul fast float %731, %730
  %733 = fadd fast float %732, %689
  br label %734

; <label>:734                                     ; preds = %729, %691, %679
  %735 = phi float [ %572, %691 ], [ %572, %679 ], [ %725, %729 ]
  %736 = phi i32 [ %573, %691 ], [ %573, %679 ], [ 15, %729 ]
  %737 = phi float [ %574, %691 ], [ %574, %679 ], [ %686, %729 ]
  %738 = phi float [ %575, %691 ], [ %575, %679 ], [ %687, %729 ]
  %739 = phi float [ %576, %691 ], [ %576, %679 ], [ %688, %729 ]
  %740 = phi float [ %577, %691 ], [ %577, %679 ], [ %733, %729 ]
  %741 = fsub fast float %194, %238
  %742 = fmul fast float %102, %741
  %743 = fsub fast float %148, %238
  %744 = fmul fast float %102, %743
  %745 = fmul fast float %742, -5.000000e-01
  %746 = fsub fast float -0.000000e+00, %745
  %747 = fmul fast float %744, -5.000000e-01
  %748 = fsub fast float -0.000000e+00, %747
  %749 = select i1 %416, float 0.000000e+00, float %748
  %750 = call float @dx.op.dot3.f32(i32 55, float %746, float %749, float 2.500000e-01, float %746, float %749, float 2.500000e-01)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = call float @dx.op.unary.f32(i32 25, float %750)  ; Rsqrt(value)
  %752 = fmul fast float %751, %746
  %753 = fmul fast float %749, %751
  %754 = fmul fast float %751, 2.500000e-01
  %755 = fcmp fast ogt float %754, 0.000000e+00
  %756 = fcmp fast olt float %754, 0.000000e+00
  %757 = zext i1 %755 to i32
  %758 = zext i1 %756 to i32
  %759 = sub nsw i32 %757, %758
  %760 = sitofp i32 %759 to float
  %761 = fmul fast float %752, %760
  %762 = fmul fast float %753, %760
  %763 = fmul fast float %760, %754
  %764 = call float @dx.op.dot3.f32(i32 55, float %761, float %762, float %763, float 7.500000e-01, float 7.500000e-01, float %249)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %765

; <label>:765                                     ; preds = %839, %734
  %766 = phi float [ %761, %734 ], [ %827, %839 ]
  %767 = phi float [ %762, %734 ], [ %828, %839 ]
  %768 = phi float [ %763, %734 ], [ %829, %839 ]
  %769 = phi float [ %764, %734 ], [ %830, %839 ]
  %770 = phi i32 [ 0, %734 ], [ %840, %839 ]
  %771 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 2.500000e-01, float %246, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = fsub fast float %771, %769
  %773 = fmul fast float %772, %246
  %774 = fcmp fast olt float %768, 0.000000e+00
  %775 = fmul fast float %768, -1.250000e-01
  %776 = select i1 %774, float %775, float 0.000000e+00
  %777 = fadd fast float %773, %776
  %778 = fmul fast float %772, 2.500000e-01
  %779 = fsub fast float -0.000000e+00, %772
  %780 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 2.500000e-01, float %247, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = fsub fast float %780, %769
  %782 = fmul fast float %781, %247
  %783 = fadd fast float %782, %776
  %784 = fmul fast float %781, 7.500000e-01
  %785 = fadd fast float %784, %778
  %786 = fadd fast float %781, %772
  %787 = fmul fast float %786, 2.500000e-01
  %788 = fadd fast float %783, %777
  %789 = fsub fast float %779, %781
  %790 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 7.500000e-01, float %248, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = fsub fast float %790, %769
  %792 = fmul fast float %791, %248
  %793 = fadd fast float %792, %776
  %794 = fmul fast float %791, 2.500000e-01
  %795 = fmul fast float %791, 7.500000e-01
  %796 = fadd fast float %794, %785
  %797 = fadd fast float %795, %787
  %798 = fadd fast float %793, %788
  %799 = fsub fast float %789, %791
  %800 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 7.500000e-01, float %249, float %766, float %767, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = fsub fast float %800, %769
  %802 = fmul fast float %801, %249
  %803 = fadd fast float %802, %776
  %804 = fmul fast float %801, 7.500000e-01
  %805 = fadd fast float %804, %796
  %806 = fadd fast float %804, %797
  %807 = fadd fast float %803, %798
  %808 = fsub fast float %799, %801
  %809 = uitofp i32 %770 to float
  %810 = fmul fast float %809, 0x3F49930BE0000000
  %811 = fsub fast float 0x3FA99999A0000000, %810
  %812 = fmul fast float %805, %811
  %813 = fmul fast float %806, %811
  %814 = fmul fast float %807, %811
  %815 = fmul fast float %808, %811
  %816 = fsub fast float %766, %812
  %817 = fsub fast float %767, %813
  %818 = fsub fast float %768, %814
  %819 = fsub fast float %769, %815
  %820 = fmul fast float %816, %816
  %821 = fmul fast float %817, %817
  %822 = fadd fast float %820, %821
  %823 = fmul fast float %818, %818
  %824 = fadd fast float %822, %823
  %825 = call float @dx.op.unary.f32(i32 24, float %824)  ; Sqrt(value)
  %826 = fdiv fast float 1.000000e+00, %825
  %827 = fmul fast float %826, %816
  %828 = fmul fast float %826, %817
  %829 = fmul fast float %826, %818
  %830 = fmul fast float %826, %819
  %831 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %832 = call float @dx.op.unary.f32(i32 6, float %807)  ; FAbs(value)
  %833 = call float @dx.op.binary.f32(i32 35, float %832, float %831)  ; FMax(a,b)
  %834 = call float @dx.op.unary.f32(i32 6, float %806)  ; FAbs(value)
  %835 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %836 = call float @dx.op.binary.f32(i32 35, float %835, float %834)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float %833)  ; FMax(a,b)
  %838 = fcmp fast ugt float %837, 0x3E7AD7F2A0000000
  br i1 %838, label %839, label %842, !dx.controlflow.hints !29

; <label>:839                                     ; preds = %765
  %840 = add nuw nsw i32 %770, 1
  %841 = icmp ult i32 %840, 64
  br i1 %841, label %765, label %842

; <label>:842                                     ; preds = %839, %765
  %843 = fcmp fast ogt float %829, 0.000000e+00
  %844 = fcmp fast olt float %829, 0.000000e+00
  %845 = zext i1 %843 to i32
  %846 = zext i1 %844 to i32
  %847 = sub nsw i32 %845, %846
  %848 = sitofp i32 %847 to float
  %849 = fmul fast float %848, %827
  %850 = fmul fast float %848, %828
  %851 = fmul fast float %848, %829
  %852 = fmul fast float %848, %830
  %853 = fcmp fast ogt float %851, 0.000000e+00
  br i1 %853, label %854, label %897, !dx.controlflow.hints !30

; <label>:854                                     ; preds = %842
  %855 = call float @dx.op.dot2.f32(i32 54, float %849, float %850, float 2.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %856 = fsub fast float %852, %855
  %857 = fdiv fast float %856, %851
  %858 = fsub fast float %246, %857
  %859 = fadd fast float %105, %858
  %860 = fsub fast float %105, %858
  %861 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %859)  ; FMin(a,b)
  %862 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %860)  ; FMin(a,b)
  %863 = call float @dx.op.dot2.f32(i32 54, float %849, float %850, float 7.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %864 = fsub fast float %852, %863
  %865 = fdiv fast float %864, %851
  %866 = fsub fast float %247, %865
  %867 = fadd fast float %151, %866
  %868 = fsub fast float %151, %866
  %869 = call float @dx.op.binary.f32(i32 36, float %861, float %867)  ; FMin(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %862, float %868)  ; FMin(a,b)
  %871 = call float @dx.op.dot2.f32(i32 54, float %849, float %850, float 2.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %872 = fsub fast float %852, %871
  %873 = fdiv fast float %872, %851
  %874 = fsub fast float %248, %873
  %875 = fadd fast float %197, %874
  %876 = fsub fast float %197, %874
  %877 = call float @dx.op.binary.f32(i32 36, float %869, float %875)  ; FMin(a,b)
  %878 = call float @dx.op.binary.f32(i32 36, float %870, float %876)  ; FMin(a,b)
  %879 = call float @dx.op.dot2.f32(i32 54, float %849, float %850, float 7.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %880 = fsub fast float %852, %879
  %881 = fdiv fast float %880, %851
  %882 = fsub fast float %249, %881
  %883 = fadd fast float %241, %882
  %884 = fsub fast float %241, %882
  %885 = call float @dx.op.binary.f32(i32 36, float %877, float %883)  ; FMin(a,b)
  %886 = call float @dx.op.binary.f32(i32 36, float %878, float %884)  ; FMin(a,b)
  %887 = fadd fast float %886, %885
  %888 = fmul fast float %887, 5.000000e-01
  %889 = fcmp fast ogt float %888, 9.765625e-04
  %890 = fcmp fast ogt float %888, %735
  %891 = and i1 %889, %890
  br i1 %891, label %892, label %897, !dx.controlflow.hints !31

; <label>:892                                     ; preds = %854
  %893 = fsub fast float %885, %886
  %894 = fmul fast float %851, 5.000000e-01
  %895 = fmul fast float %894, %893
  %896 = fadd fast float %895, %852
  br label %897

; <label>:897                                     ; preds = %892, %854, %842
  %898 = phi float [ %735, %854 ], [ %735, %842 ], [ %888, %892 ]
  %899 = phi i32 [ %736, %854 ], [ %736, %842 ], [ 15, %892 ]
  %900 = phi float [ %737, %854 ], [ %737, %842 ], [ %849, %892 ]
  %901 = phi float [ %738, %854 ], [ %738, %842 ], [ %850, %892 ]
  %902 = phi float [ %739, %854 ], [ %739, %842 ], [ %851, %892 ]
  %903 = phi float [ %740, %854 ], [ %740, %842 ], [ %896, %892 ]
  %904 = fcmp fast oeq float %898, 0.000000e+00
  br i1 %904, label %905, label %1125, !dx.controlflow.hints !32

; <label>:905                                     ; preds = %897
  br label %906

; <label>:906                                     ; preds = %1114, %905
  %907 = phi i32 [ %1122, %1114 ], [ 0, %905 ]
  %908 = phi float [ %1115, %1114 ], [ %898, %905 ]
  %909 = phi i32 [ %1116, %1114 ], [ %899, %905 ]
  %910 = phi float [ %1117, %1114 ], [ %898, %905 ]
  %911 = phi float [ %1118, %1114 ], [ %900, %905 ]
  %912 = phi float [ %1119, %1114 ], [ %901, %905 ]
  %913 = phi float [ %1120, %1114 ], [ %902, %905 ]
  %914 = phi float [ %1121, %1114 ], [ %903, %905 ]
  %915 = xor i32 %907, 3
  %916 = xor i32 %907, 1
  %917 = xor i32 %907, 2
  %918 = shl i32 1, %907
  %919 = xor i32 %918, 15
  %920 = getelementptr [4 x float], [4 x float]* @points.i.0.hca, i32 0, i32 %917
  %921 = getelementptr [4 x float], [4 x float]* @points.i.1.hca, i32 0, i32 %917
  %922 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %917
  %923 = load float, float* %920, align 4
  %924 = load float, float* %921, align 4
  %925 = load float, float* %922, align 4
  %926 = getelementptr [4 x float], [4 x float]* @points.i.0.hca, i32 0, i32 %916
  %927 = getelementptr [4 x float], [4 x float]* @points.i.1.hca, i32 0, i32 %916
  %928 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %916
  %929 = load float, float* %926, align 4
  %930 = load float, float* %927, align 4
  %931 = load float, float* %928, align 4
  %932 = getelementptr [4 x float], [4 x float]* @points.i.0.hca, i32 0, i32 %915
  %933 = getelementptr [4 x float], [4 x float]* @points.i.1.hca, i32 0, i32 %915
  %934 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %915
  %935 = load float, float* %932, align 4
  %936 = load float, float* %933, align 4
  %937 = load float, float* %934, align 4
  %938 = fsub fast float %929, %935
  %939 = fsub fast float %930, %936
  %940 = fsub fast float %931, %937
  %941 = fcmp fast oeq float %923, %935
  %942 = fcmp fast oeq float %924, %936
  %943 = fcmp fast oeq float %925, %937
  %944 = fsub fast float -0.000000e+00, %939
  %945 = fsub fast float %923, %935
  %946 = fsub fast float %924, %936
  %947 = fsub fast float %925, %937
  %948 = select i1 %941, float %944, float %945
  %949 = select i1 %942, float %938, float %946
  %950 = select i1 %943, float 0.000000e+00, float %947
  %951 = fmul fast float %950, %939
  %952 = fmul fast float %940, %949
  %953 = fsub fast float %951, %952
  %954 = fmul fast float %940, %948
  %955 = fmul fast float %950, %938
  %956 = fsub fast float %954, %955
  %957 = fmul fast float %949, %938
  %958 = fmul fast float %948, %939
  %959 = fsub fast float %957, %958
  %960 = call float @dx.op.dot3.f32(i32 55, float %953, float %956, float %959, float %953, float %956, float %959)  ; Dot3(ax,ay,az,bx,by,bz)
  %961 = call float @dx.op.unary.f32(i32 25, float %960)  ; Rsqrt(value)
  %962 = fmul fast float %953, %961
  %963 = fmul fast float %956, %961
  %964 = fmul fast float %959, %961
  %965 = fcmp fast ogt float %964, 0.000000e+00
  %966 = fcmp fast olt float %964, 0.000000e+00
  %967 = zext i1 %965 to i32
  %968 = zext i1 %966 to i32
  %969 = sub nsw i32 %967, %968
  %970 = sitofp i32 %969 to float
  %971 = fmul fast float %962, %970
  %972 = fmul fast float %963, %970
  %973 = fmul fast float %970, %964
  %974 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float %935, float %936, float %937)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = and i32 %919, 1
  %976 = uitofp i32 %975 to float
  br label %977

; <label>:977                                     ; preds = %1078, %906
  %978 = phi float [ %971, %906 ], [ %1066, %1078 ]
  %979 = phi float [ %972, %906 ], [ %1067, %1078 ]
  %980 = phi float [ %973, %906 ], [ %1068, %1078 ]
  %981 = phi float [ %974, %906 ], [ %1069, %1078 ]
  %982 = phi i32 [ 0, %906 ], [ %1079, %1078 ]
  %983 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 2.500000e-01, float %246, float %978, float %979, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %984 = fsub fast float %983, %981
  %985 = fmul fast float %984, %246
  %986 = fcmp fast olt float %980, 0.000000e+00
  %987 = fmul fast float %980, -1.250000e-01
  %988 = select i1 %986, float %987, float 0.000000e+00
  %989 = fadd fast float %985, %988
  %990 = fmul fast float %976, 2.500000e-01
  %991 = fmul fast float %990, %984
  %992 = fmul fast float %976, 2.500000e-01
  %993 = fmul fast float %992, %984
  %994 = fmul fast float %989, %976
  %995 = fmul fast float %984, %976
  %996 = fsub fast float -0.000000e+00, %995
  %997 = lshr i32 %919, 1
  %998 = and i32 %997, 1
  %999 = uitofp i32 %998 to float
  %1000 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 2.500000e-01, float %247, float %978, float %979, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %1001 = fsub fast float %1000, %981
  %1002 = fmul fast float %1001, %247
  %1003 = fadd fast float %1002, %988
  %1004 = fmul fast float %999, 7.500000e-01
  %1005 = fmul fast float %1004, %1001
  %1006 = fmul fast float %999, 2.500000e-01
  %1007 = fmul fast float %1006, %1001
  %1008 = fmul fast float %1003, %999
  %1009 = fmul fast float %1001, %999
  %1010 = fadd fast float %1005, %991
  %1011 = fadd fast float %1007, %993
  %1012 = fadd fast float %1008, %994
  %1013 = fsub fast float %996, %1009
  %1014 = lshr i32 %919, 2
  %1015 = and i32 %1014, 1
  %1016 = uitofp i32 %1015 to float
  %1017 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 7.500000e-01, float %248, float %978, float %979, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %1018 = fsub fast float %1017, %981
  %1019 = fmul fast float %1018, %248
  %1020 = fadd fast float %1019, %988
  %1021 = fmul fast float %1016, 2.500000e-01
  %1022 = fmul fast float %1021, %1018
  %1023 = fmul fast float %1016, 7.500000e-01
  %1024 = fmul fast float %1023, %1018
  %1025 = fmul fast float %1020, %1016
  %1026 = fmul fast float %1018, %1016
  %1027 = fadd fast float %1022, %1010
  %1028 = fadd fast float %1024, %1011
  %1029 = fadd fast float %1025, %1012
  %1030 = fsub fast float %1013, %1026
  %1031 = lshr i32 %919, 3
  %1032 = and i32 %1031, 1
  %1033 = uitofp i32 %1032 to float
  %1034 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 7.500000e-01, float %249, float %978, float %979, float %980)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = fsub fast float %1034, %981
  %1036 = fmul fast float %1035, %249
  %1037 = fadd fast float %1036, %988
  %1038 = fmul fast float %1033, 7.500000e-01
  %1039 = fmul fast float %1038, %1035
  %1040 = fmul fast float %1033, 7.500000e-01
  %1041 = fmul fast float %1040, %1035
  %1042 = fmul fast float %1037, %1033
  %1043 = fmul fast float %1035, %1033
  %1044 = fadd fast float %1039, %1027
  %1045 = fadd fast float %1041, %1028
  %1046 = fadd fast float %1042, %1029
  %1047 = fsub fast float %1030, %1043
  %1048 = uitofp i32 %982 to float
  %1049 = fmul fast float %1048, 0x3F49930BE0000000
  %1050 = fsub fast float 0x3FA99999A0000000, %1049
  %1051 = fmul fast float %1044, %1050
  %1052 = fmul fast float %1045, %1050
  %1053 = fmul fast float %1046, %1050
  %1054 = fmul fast float %1047, %1050
  %1055 = fsub fast float %978, %1051
  %1056 = fsub fast float %979, %1052
  %1057 = fsub fast float %980, %1053
  %1058 = fsub fast float %981, %1054
  %1059 = fmul fast float %1055, %1055
  %1060 = fmul fast float %1056, %1056
  %1061 = fadd fast float %1059, %1060
  %1062 = fmul fast float %1057, %1057
  %1063 = fadd fast float %1061, %1062
  %1064 = call float @dx.op.unary.f32(i32 24, float %1063)  ; Sqrt(value)
  %1065 = fdiv fast float 1.000000e+00, %1064
  %1066 = fmul fast float %1065, %1055
  %1067 = fmul fast float %1065, %1056
  %1068 = fmul fast float %1065, %1057
  %1069 = fmul fast float %1065, %1058
  %1070 = call float @dx.op.unary.f32(i32 6, float %1047)  ; FAbs(value)
  %1071 = call float @dx.op.unary.f32(i32 6, float %1046)  ; FAbs(value)
  %1072 = call float @dx.op.binary.f32(i32 35, float %1071, float %1070)  ; FMax(a,b)
  %1073 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1074 = call float @dx.op.unary.f32(i32 6, float %1044)  ; FAbs(value)
  %1075 = call float @dx.op.binary.f32(i32 35, float %1074, float %1073)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1075, float %1072)  ; FMax(a,b)
  %1077 = fcmp fast ugt float %1076, 0x3E7AD7F2A0000000
  br i1 %1077, label %1078, label %1081, !dx.controlflow.hints !29

; <label>:1078                                    ; preds = %977
  %1079 = add nuw nsw i32 %982, 1
  %1080 = icmp ult i32 %1079, 64
  br i1 %1080, label %977, label %1081

; <label>:1081                                    ; preds = %1078, %977
  %1082 = fcmp fast ogt float %1068, 0.000000e+00
  %1083 = fcmp fast olt float %1068, 0.000000e+00
  %1084 = zext i1 %1082 to i32
  %1085 = zext i1 %1083 to i32
  %1086 = sub nsw i32 %1084, %1085
  %1087 = sitofp i32 %1086 to float
  %1088 = fmul fast float %1087, %1066
  %1089 = fmul fast float %1087, %1067
  %1090 = fmul fast float %1087, %1068
  %1091 = fmul fast float %1087, %1069
  %1092 = fcmp fast ogt float %1090, 0.000000e+00
  br i1 %1092, label %1093, label %1114, !dx.controlflow.hints !30

; <label>:1093                                    ; preds = %1081
  %1094 = icmp eq i32 %975, 0
  br i1 %1094, label %1104, label %1095, !dx.controlflow.hints !33

; <label>:1095                                    ; preds = %1093
  %1096 = call float @dx.op.dot2.f32(i32 54, float %1088, float %1089, float 2.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %1097 = fsub fast float %1091, %1096
  %1098 = fdiv fast float %1097, %1090
  %1099 = fsub fast float %246, %1098
  %1100 = fadd fast float %105, %1099
  %1101 = fsub fast float %105, %1099
  %1102 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %1100)  ; FMin(a,b)
  %1103 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %1101)  ; FMin(a,b)
  br label %1104

; <label>:1104                                    ; preds = %1095, %1093
  %1105 = phi float [ %1102, %1095 ], [ 1.048576e+06, %1093 ]
  %1106 = phi float [ %1103, %1095 ], [ 1.048576e+06, %1093 ]
  %1107 = and i32 %919, 2
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %2850, label %2841, !dx.controlflow.hints !33

; <label>:1109                                    ; preds = %2878
  %1110 = fsub fast float %2879, %2880
  %1111 = fmul fast float %1090, 5.000000e-01
  %1112 = fmul fast float %1111, %1110
  %1113 = fadd fast float %1112, %1091
  br label %1114

; <label>:1114                                    ; preds = %2878, %1109, %1081
  %1115 = phi float [ %908, %2878 ], [ %908, %1081 ], [ %2882, %1109 ]
  %1116 = phi i32 [ %909, %2878 ], [ %909, %1081 ], [ %919, %1109 ]
  %1117 = phi float [ %910, %2878 ], [ %910, %1081 ], [ %2882, %1109 ]
  %1118 = phi float [ %911, %2878 ], [ %911, %1081 ], [ %1088, %1109 ]
  %1119 = phi float [ %912, %2878 ], [ %912, %1081 ], [ %1089, %1109 ]
  %1120 = phi float [ %913, %2878 ], [ %913, %1081 ], [ %1090, %1109 ]
  %1121 = phi float [ %914, %2878 ], [ %914, %1081 ], [ %1113, %1109 ]
  %1122 = add nuw nsw i32 %907, 1
  %1123 = icmp eq i32 %1122, 4
  br i1 %1123, label %1124, label %906

; <label>:1124                                    ; preds = %1114
  br label %1125

; <label>:1125                                    ; preds = %1124, %897
  %1126 = phi float [ %898, %897 ], [ %1115, %1124 ]
  %1127 = phi i32 [ %899, %897 ], [ %1116, %1124 ]
  %1128 = phi float [ %898, %897 ], [ %1117, %1124 ]
  %1129 = phi float [ %900, %897 ], [ %1118, %1124 ]
  %1130 = phi float [ %901, %897 ], [ %1119, %1124 ]
  %1131 = phi float [ %902, %897 ], [ %1120, %1124 ]
  %1132 = phi float [ %903, %897 ], [ %1121, %1124 ]
  %1133 = fcmp fast oeq float %1126, 0.000000e+00
  br i1 %1133, label %1134, label %1340, !dx.controlflow.hints !34

; <label>:1134                                    ; preds = %1125
  br label %1135

; <label>:1135                                    ; preds = %1336, %1134
  %1136 = phi i32 [ %1338, %1336 ], [ 3, %1134 ]
  %1137 = phi i32 [ %1334, %1336 ], [ 0, %1134 ]
  %1138 = phi float [ %1327, %1336 ], [ %1126, %1134 ]
  %1139 = phi i32 [ %1328, %1336 ], [ %1127, %1134 ]
  %1140 = phi float [ %1329, %1336 ], [ %1128, %1134 ]
  %1141 = phi float [ %1330, %1336 ], [ %1129, %1134 ]
  %1142 = phi float [ %1331, %1336 ], [ %1130, %1134 ]
  %1143 = phi float [ %1332, %1336 ], [ %1131, %1134 ]
  %1144 = phi float [ %1333, %1336 ], [ %1132, %1134 ]
  %1145 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1136)  ; FirstbitLo(value)
  %1146 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1136)  ; FirstbitHi(value)
  %1147 = sub i32 31, %1146
  %1148 = icmp eq i32 %1146, -1
  %1149 = select i1 %1148, i32 -1, i32 %1147
  %1150 = getelementptr [4 x float], [4 x float]* @points.i.0.hca, i32 0, i32 %1145
  %1151 = getelementptr [4 x float], [4 x float]* @points.i.1.hca, i32 0, i32 %1145
  %1152 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %1145
  %1153 = load float, float* %1150, align 4
  %1154 = load float, float* %1151, align 4
  %1155 = load float, float* %1152, align 4
  %1156 = getelementptr [4 x float], [4 x float]* @points.i.0.hca, i32 0, i32 %1149
  %1157 = getelementptr [4 x float], [4 x float]* @points.i.1.hca, i32 0, i32 %1149
  %1158 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %1149
  %1159 = load float, float* %1156, align 4
  %1160 = load float, float* %1157, align 4
  %1161 = load float, float* %1158, align 4
  %1162 = fsub fast float %1159, %1153
  %1163 = fsub fast float %1160, %1154
  %1164 = fsub fast float %1161, %1155
  %1165 = fsub fast float -0.000000e+00, %1163
  %1166 = fmul fast float %1164, %1162
  %1167 = fsub fast float -0.000000e+00, %1166
  %1168 = fmul fast float %1164, %1165
  %1169 = fmul fast float %1162, %1162
  %1170 = fmul fast float %1163, %1165
  %1171 = fsub fast float %1169, %1170
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1167, float %1168, float %1171, float %1167, float %1168, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = call float @dx.op.unary.f32(i32 25, float %1172)  ; Rsqrt(value)
  %1174 = fmul fast float %1173, %1167
  %1175 = fmul fast float %1168, %1173
  %1176 = fmul fast float %1171, %1173
  %1177 = fcmp fast ogt float %1176, 0.000000e+00
  %1178 = fcmp fast olt float %1176, 0.000000e+00
  %1179 = zext i1 %1177 to i32
  %1180 = zext i1 %1178 to i32
  %1181 = sub nsw i32 %1179, %1180
  %1182 = sitofp i32 %1181 to float
  %1183 = fmul fast float %1174, %1182
  %1184 = fmul fast float %1175, %1182
  %1185 = fmul fast float %1182, %1176
  %1186 = call float @dx.op.dot3.f32(i32 55, float %1183, float %1184, float %1185, float %1153, float %1154, float %1155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = and i32 %1136, 1
  %1188 = uitofp i32 %1187 to float
  br label %1189

; <label>:1189                                    ; preds = %1290, %1135
  %1190 = phi float [ %1183, %1135 ], [ %1278, %1290 ]
  %1191 = phi float [ %1184, %1135 ], [ %1279, %1290 ]
  %1192 = phi float [ %1185, %1135 ], [ %1280, %1290 ]
  %1193 = phi float [ %1186, %1135 ], [ %1281, %1290 ]
  %1194 = phi i32 [ 0, %1135 ], [ %1291, %1290 ]
  %1195 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 2.500000e-01, float %246, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1196 = fsub fast float %1195, %1193
  %1197 = fmul fast float %1196, %246
  %1198 = fcmp fast olt float %1192, 0.000000e+00
  %1199 = fmul fast float %1192, -1.250000e-01
  %1200 = select i1 %1198, float %1199, float 0.000000e+00
  %1201 = fadd fast float %1197, %1200
  %1202 = fmul fast float %1188, 2.500000e-01
  %1203 = fmul fast float %1202, %1196
  %1204 = fmul fast float %1188, 2.500000e-01
  %1205 = fmul fast float %1204, %1196
  %1206 = fmul fast float %1201, %1188
  %1207 = fmul fast float %1196, %1188
  %1208 = fsub fast float -0.000000e+00, %1207
  %1209 = lshr i32 %1136, 1
  %1210 = and i32 %1209, 1
  %1211 = uitofp i32 %1210 to float
  %1212 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 2.500000e-01, float %247, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = fsub fast float %1212, %1193
  %1214 = fmul fast float %1213, %247
  %1215 = fadd fast float %1214, %1200
  %1216 = fmul fast float %1211, 7.500000e-01
  %1217 = fmul fast float %1216, %1213
  %1218 = fmul fast float %1211, 2.500000e-01
  %1219 = fmul fast float %1218, %1213
  %1220 = fmul fast float %1215, %1211
  %1221 = fmul fast float %1213, %1211
  %1222 = fadd fast float %1217, %1203
  %1223 = fadd fast float %1219, %1205
  %1224 = fadd fast float %1220, %1206
  %1225 = fsub fast float %1208, %1221
  %1226 = lshr i32 %1136, 2
  %1227 = and i32 %1226, 1
  %1228 = uitofp i32 %1227 to float
  %1229 = call float @dx.op.dot3.f32(i32 55, float 2.500000e-01, float 7.500000e-01, float %248, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1230 = fsub fast float %1229, %1193
  %1231 = fmul fast float %1230, %248
  %1232 = fadd fast float %1231, %1200
  %1233 = fmul fast float %1228, 2.500000e-01
  %1234 = fmul fast float %1233, %1230
  %1235 = fmul fast float %1228, 7.500000e-01
  %1236 = fmul fast float %1235, %1230
  %1237 = fmul fast float %1232, %1228
  %1238 = fmul fast float %1230, %1228
  %1239 = fadd fast float %1234, %1222
  %1240 = fadd fast float %1236, %1223
  %1241 = fadd fast float %1237, %1224
  %1242 = fsub fast float %1225, %1238
  %1243 = lshr i32 %1136, 3
  %1244 = and i32 %1243, 1
  %1245 = uitofp i32 %1244 to float
  %1246 = call float @dx.op.dot3.f32(i32 55, float 7.500000e-01, float 7.500000e-01, float %249, float %1190, float %1191, float %1192)  ; Dot3(ax,ay,az,bx,by,bz)
  %1247 = fsub fast float %1246, %1193
  %1248 = fmul fast float %1247, %249
  %1249 = fadd fast float %1248, %1200
  %1250 = fmul fast float %1245, 7.500000e-01
  %1251 = fmul fast float %1250, %1247
  %1252 = fmul fast float %1245, 7.500000e-01
  %1253 = fmul fast float %1252, %1247
  %1254 = fmul fast float %1249, %1245
  %1255 = fmul fast float %1247, %1245
  %1256 = fadd fast float %1251, %1239
  %1257 = fadd fast float %1253, %1240
  %1258 = fadd fast float %1254, %1241
  %1259 = fsub fast float %1242, %1255
  %1260 = uitofp i32 %1194 to float
  %1261 = fmul fast float %1260, 0x3F49930BE0000000
  %1262 = fsub fast float 0x3FA99999A0000000, %1261
  %1263 = fmul fast float %1256, %1262
  %1264 = fmul fast float %1257, %1262
  %1265 = fmul fast float %1258, %1262
  %1266 = fmul fast float %1259, %1262
  %1267 = fsub fast float %1190, %1263
  %1268 = fsub fast float %1191, %1264
  %1269 = fsub fast float %1192, %1265
  %1270 = fsub fast float %1193, %1266
  %1271 = fmul fast float %1267, %1267
  %1272 = fmul fast float %1268, %1268
  %1273 = fadd fast float %1271, %1272
  %1274 = fmul fast float %1269, %1269
  %1275 = fadd fast float %1273, %1274
  %1276 = call float @dx.op.unary.f32(i32 24, float %1275)  ; Sqrt(value)
  %1277 = fdiv fast float 1.000000e+00, %1276
  %1278 = fmul fast float %1277, %1267
  %1279 = fmul fast float %1277, %1268
  %1280 = fmul fast float %1277, %1269
  %1281 = fmul fast float %1277, %1270
  %1282 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1283 = call float @dx.op.unary.f32(i32 6, float %1258)  ; FAbs(value)
  %1284 = call float @dx.op.binary.f32(i32 35, float %1283, float %1282)  ; FMax(a,b)
  %1285 = call float @dx.op.unary.f32(i32 6, float %1257)  ; FAbs(value)
  %1286 = call float @dx.op.unary.f32(i32 6, float %1256)  ; FAbs(value)
  %1287 = call float @dx.op.binary.f32(i32 35, float %1286, float %1285)  ; FMax(a,b)
  %1288 = call float @dx.op.binary.f32(i32 35, float %1287, float %1284)  ; FMax(a,b)
  %1289 = fcmp fast ugt float %1288, 0x3E7AD7F2A0000000
  br i1 %1289, label %1290, label %1293, !dx.controlflow.hints !29

; <label>:1290                                    ; preds = %1189
  %1291 = add nuw nsw i32 %1194, 1
  %1292 = icmp ult i32 %1291, 64
  br i1 %1292, label %1189, label %1293

; <label>:1293                                    ; preds = %1290, %1189
  %1294 = fcmp fast ogt float %1280, 0.000000e+00
  %1295 = fcmp fast olt float %1280, 0.000000e+00
  %1296 = zext i1 %1294 to i32
  %1297 = zext i1 %1295 to i32
  %1298 = sub nsw i32 %1296, %1297
  %1299 = sitofp i32 %1298 to float
  %1300 = fmul fast float %1299, %1278
  %1301 = fmul fast float %1299, %1279
  %1302 = fmul fast float %1299, %1280
  %1303 = fmul fast float %1299, %1281
  %1304 = fcmp fast ogt float %1302, 0.000000e+00
  br i1 %1304, label %1305, label %1326, !dx.controlflow.hints !30

; <label>:1305                                    ; preds = %1293
  %1306 = icmp eq i32 %1187, 0
  br i1 %1306, label %1316, label %1307, !dx.controlflow.hints !33

; <label>:1307                                    ; preds = %1305
  %1308 = call float @dx.op.dot2.f32(i32 54, float %1300, float %1301, float 2.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %1309 = fsub fast float %1303, %1308
  %1310 = fdiv fast float %1309, %1302
  %1311 = fsub fast float %246, %1310
  %1312 = fadd fast float %105, %1311
  %1313 = fsub fast float %105, %1311
  %1314 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %1312)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %1313)  ; FMin(a,b)
  br label %1316

; <label>:1316                                    ; preds = %1307, %1305
  %1317 = phi float [ %1314, %1307 ], [ 1.048576e+06, %1305 ]
  %1318 = phi float [ %1315, %1307 ], [ 1.048576e+06, %1305 ]
  %1319 = and i32 %1136, 2
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %2805, label %2796, !dx.controlflow.hints !33

; <label>:1321                                    ; preds = %2833
  %1322 = fsub fast float %2834, %2835
  %1323 = fmul fast float %1302, 5.000000e-01
  %1324 = fmul fast float %1323, %1322
  %1325 = fadd fast float %1324, %1303
  br label %1326

; <label>:1326                                    ; preds = %2833, %1321, %1293
  %1327 = phi float [ %1138, %2833 ], [ %1138, %1293 ], [ %2837, %1321 ]
  %1328 = phi i32 [ %1139, %2833 ], [ %1139, %1293 ], [ %1136, %1321 ]
  %1329 = phi float [ %1140, %2833 ], [ %1140, %1293 ], [ %2837, %1321 ]
  %1330 = phi float [ %1141, %2833 ], [ %1141, %1293 ], [ %1300, %1321 ]
  %1331 = phi float [ %1142, %2833 ], [ %1142, %1293 ], [ %1301, %1321 ]
  %1332 = phi float [ %1143, %2833 ], [ %1143, %1293 ], [ %1302, %1321 ]
  %1333 = phi float [ %1144, %2833 ], [ %1144, %1293 ], [ %1325, %1321 ]
  %1334 = add nuw nsw i32 %1137, 1
  %1335 = icmp eq i32 %1334, 6
  br i1 %1335, label %1339, label %1336

; <label>:1336                                    ; preds = %1326
  %1337 = getelementptr inbounds [6 x i32], [6 x i32]* @localEnclosedFlags.i.i.i.hca, i32 0, i32 %1334
  %1338 = load i32, i32* %1337, align 4, !tbaa !35, !noalias !37
  br label %1135

; <label>:1339                                    ; preds = %1326
  br label %1340

; <label>:1340                                    ; preds = %1339, %1125
  %1341 = phi float [ %1126, %1125 ], [ %1327, %1339 ]
  %1342 = phi i32 [ %1127, %1125 ], [ %1328, %1339 ]
  %1343 = phi float [ %1128, %1125 ], [ %1329, %1339 ]
  %1344 = phi float [ %1129, %1125 ], [ %1330, %1339 ]
  %1345 = phi float [ %1130, %1125 ], [ %1331, %1339 ]
  %1346 = phi float [ %1131, %1125 ], [ %1332, %1339 ]
  %1347 = phi float [ %1132, %1125 ], [ %1333, %1339 ]
  %1348 = fcmp fast ogt float %1341, 0.000000e+00
  br i1 %1348, label %1363, label %1349, !dx.controlflow.hints !44

; <label>:1349                                    ; preds = %1340
  %1350 = fcmp fast ogt float %151, %105
  %1351 = select i1 %1350, float %151, float %105
  %1352 = zext i1 %1350 to i32
  %1353 = fcmp fast ogt float %197, %1351
  %1354 = select i1 %1353, float %197, float %1351
  %1355 = select i1 %1353, i32 2, i32 %1352
  %1356 = fcmp fast ogt float %241, %1354
  %1357 = select i1 %1356, i32 3, i32 %1355
  %1358 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %1357
  %1359 = load float, float* %1358, align 4
  %1360 = getelementptr inbounds [4 x float], [4 x float]* %12, i32 0, i32 %1357
  %1361 = load float, float* %1360, align 4, !tbaa !25, !noalias !45
  %1362 = shl i32 1, %1357
  br label %1363

; <label>:1363                                    ; preds = %1349, %1340
  %1364 = phi float [ %1361, %1349 ], [ %1343, %1340 ]
  %1365 = phi float [ 0.000000e+00, %1349 ], [ %1344, %1340 ]
  %1366 = phi float [ 0.000000e+00, %1349 ], [ %1345, %1340 ]
  %1367 = phi float [ 1.000000e+00, %1349 ], [ %1346, %1340 ]
  %1368 = phi float [ %1359, %1349 ], [ %1347, %1340 ]
  %1369 = phi i32 [ %1362, %1349 ], [ %1342, %1340 ]
  %1370 = call float @dx.op.dot2.f32(i32 54, float %1365, float %1366, float %57, float %58)  ; Dot2(ax,ay,bx,by)
  %1371 = fmul fast float %1370, %25
  %1372 = fmul fast float %1367, %245
  %1373 = fadd fast float %1372, %1368
  %1374 = fmul fast float %1373, %59
  %1375 = fadd fast float %1374, %1371
  %1376 = fmul fast float %1364, %59
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %6, i32 0, float %1365, float %1366, float %1367, float %1375, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %6, i32 16, float %1376, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1377 = icmp eq i32 %1369, 15
  %1378 = select i1 %1377, i32 2, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 20, i32 %1378, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1379 = shl i32 %1369, 8
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6, i32 20)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = or i32 %1381, %1379
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %6, i32 20, i32 %1382, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2795

; <label>:1383                                    ; preds = %16
  %1384 = sub i32 %20, %17
  %1385 = add i32 %1384, -1
  %1386 = icmp eq i32 %6, 0
  br i1 %1386, label %1409, label %1387

; <label>:1387                                    ; preds = %1383
  br label %1388

; <label>:1388                                    ; preds = %1403, %1387
  %1389 = phi i32 [ %1405, %1403 ], [ %6, %1387 ]
  %1390 = phi i32 [ %1404, %1403 ], [ 0, %1387 ]
  %1391 = phi i32 [ %1406, %1403 ], [ 0, %1387 ]
  %1392 = and i32 %1389, 1
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1403, label %1394, !dx.controlflow.hints !21

; <label>:1394                                    ; preds = %1388
  %1395 = lshr i32 %1391, 1
  %1396 = and i32 %1391, 1
  %1397 = icmp ne i32 %1396, 0
  %1398 = select i1 %1397, i32 %1385, i32 0
  %1399 = add i32 %1398, %1395
  %1400 = and i32 %1399, 31
  %1401 = shl i32 1, %1400
  %1402 = or i32 %1401, %1390
  br label %1403

; <label>:1403                                    ; preds = %1394, %1388
  %1404 = phi i32 [ %1402, %1394 ], [ %1390, %1388 ]
  %1405 = lshr i32 %1389, 1
  %1406 = add i32 %1391, 1
  %1407 = icmp eq i32 %1405, 0
  br i1 %1407, label %1408, label %1388

; <label>:1408                                    ; preds = %1403
  br label %1409

; <label>:1409                                    ; preds = %1408, %1383
  %1410 = phi i32 [ 0, %1383 ], [ %1404, %1408 ]
  %1411 = and i32 %1385, 31
  %1412 = shl i32 1, %1411
  %1413 = add i32 %1412, -1
  %1414 = and i32 %1410, %1413
  %1415 = lshr i32 %1410, %1411
  %1416 = add i32 %17, 1
  %1417 = and i32 %1416, 31
  %1418 = shl i32 1, %1417
  %1419 = uitofp i32 %1418 to float
  %1420 = uitofp i32 %1414 to float
  %1421 = uitofp i32 %1415 to float
  %1422 = fmul fast float %1419, %1420
  %1423 = fmul fast float %1419, %1421
  %1424 = extractvalue %dx.types.CBufRet.i32 %13, 2
  %1425 = shl i32 %14, 2
  %1426 = sub i32 %1424, %1425
  %1427 = shl i32 %6, 2
  %1428 = add i32 %1426, %1427
  %1429 = fmul fast float %1419, 2.500000e-01
  %1430 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %1431 = uitofp i32 %1430 to float
  %1432 = extractvalue %dx.types.CBufRet.i32 %13, 3
  %1433 = bitcast i32 %1432 to float
  %1434 = fdiv fast float 1.000000e+00, %1419
  %1435 = fmul fast float %1433, %1419
  %1436 = fmul fast float %1434, %1431
  %1437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1428, i32 0)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  %1442 = fmul fast float %1441, %1436
  %1443 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %1438, float %1439)  ; Dot2(ax,ay,bx,by)
  %1444 = fmul fast float %1443, %1434
  %1445 = fsub fast float %1442, %1444
  %1446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1428, i32 16)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = fmul fast float %1447, %1436
  %1449 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 0
  store float %1448, float* %1449, align 4, !tbaa !25
  %1450 = fadd fast float %1429, -5.000000e-01
  %1451 = fmul fast float %1434, 5.000000e-01
  %1452 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %1451, float %1451)  ; Dot2(ax,ay,bx,by)
  %1453 = fsub fast float %1445, %1452
  %1454 = fdiv fast float %1453, %1440
  %1455 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 0
  %1456 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 0
  %1457 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 0
  store float %1451, float* %1455, align 4
  store float %1451, float* %1456, align 4
  store float %1454, float* %1457, align 4
  %1458 = call float @dx.op.binary.f32(i32 36, float 1.048576e+06, float %1454)  ; FMin(a,b)
  %1459 = fadd fast float %1450, %1429
  %1460 = fmul fast float %1459, %1434
  %1461 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %1460, float %1451)  ; Dot2(ax,ay,bx,by)
  %1462 = fsub fast float %1445, %1461
  %1463 = fdiv fast float %1462, %1440
  %1464 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 1
  %1465 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 1
  %1466 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 1
  store float %1460, float* %1464, align 4
  store float %1451, float* %1465, align 4
  store float %1463, float* %1466, align 4
  %1467 = call float @dx.op.binary.f32(i32 36, float %1458, float %1463)  ; FMin(a,b)
  %1468 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %1451, float %1460)  ; Dot2(ax,ay,bx,by)
  %1469 = fsub fast float %1445, %1468
  %1470 = fdiv fast float %1469, %1440
  %1471 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 2
  %1472 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 2
  %1473 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 2
  store float %1451, float* %1471, align 4
  store float %1460, float* %1472, align 4
  store float %1470, float* %1473, align 4
  %1474 = call float @dx.op.binary.f32(i32 36, float %1467, float %1470)  ; FMin(a,b)
  %1475 = call float @dx.op.dot2.f32(i32 54, float %1438, float %1439, float %1460, float %1460)  ; Dot2(ax,ay,bx,by)
  %1476 = fsub fast float %1445, %1475
  %1477 = fdiv fast float %1476, %1440
  %1478 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 3
  %1479 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 3
  %1480 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 3
  store float %1460, float* %1478, align 4
  store float %1460, float* %1479, align 4
  store float %1477, float* %1480, align 4
  %1481 = call float @dx.op.binary.f32(i32 36, float %1474, float %1477)  ; FMin(a,b)
  %1482 = add i32 %1428, 1
  %1483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1482, i32 0)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = extractvalue %dx.types.ResRet.f32 %1483, 1
  %1486 = extractvalue %dx.types.ResRet.f32 %1483, 2
  %1487 = extractvalue %dx.types.ResRet.f32 %1483, 3
  %1488 = fmul fast float %1487, %1436
  %1489 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %1484, float %1485)  ; Dot2(ax,ay,bx,by)
  %1490 = fmul fast float %1489, %1434
  %1491 = fsub fast float %1488, %1490
  %1492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1482, i32 16)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = fmul fast float %1493, %1436
  %1495 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 1
  store float %1494, float* %1495, align 4, !tbaa !25
  %1496 = fmul fast float %1419, 7.500000e-01
  %1497 = fsub fast float %1496, %1450
  %1498 = fmul fast float %1497, %1434
  %1499 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1498, float %1451)  ; Dot2(ax,ay,bx,by)
  %1500 = fsub fast float %1491, %1499
  %1501 = fdiv fast float %1500, %1486
  %1502 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 4
  %1503 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 4
  %1504 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 4
  store float %1498, float* %1502, align 4
  store float %1451, float* %1503, align 4
  store float %1501, float* %1504, align 4
  %1505 = call float @dx.op.binary.f32(i32 36, float %1481, float %1501)  ; FMin(a,b)
  %1506 = fadd fast float %1450, %1496
  %1507 = fmul fast float %1506, %1434
  %1508 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1507, float %1451)  ; Dot2(ax,ay,bx,by)
  %1509 = fsub fast float %1491, %1508
  %1510 = fdiv fast float %1509, %1486
  %1511 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 5
  %1512 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 5
  %1513 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 5
  store float %1507, float* %1511, align 4
  store float %1451, float* %1512, align 4
  store float %1510, float* %1513, align 4
  %1514 = call float @dx.op.binary.f32(i32 36, float %1505, float %1510)  ; FMin(a,b)
  %1515 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1498, float %1460)  ; Dot2(ax,ay,bx,by)
  %1516 = fsub fast float %1491, %1515
  %1517 = fdiv fast float %1516, %1486
  %1518 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 6
  %1519 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 6
  %1520 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 6
  store float %1498, float* %1518, align 4
  store float %1460, float* %1519, align 4
  store float %1517, float* %1520, align 4
  %1521 = call float @dx.op.binary.f32(i32 36, float %1514, float %1517)  ; FMin(a,b)
  %1522 = call float @dx.op.dot2.f32(i32 54, float %1484, float %1485, float %1507, float %1460)  ; Dot2(ax,ay,bx,by)
  %1523 = fsub fast float %1491, %1522
  %1524 = fdiv fast float %1523, %1486
  %1525 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 7
  %1526 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 7
  %1527 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 7
  store float %1507, float* %1525, align 4
  store float %1460, float* %1526, align 4
  store float %1524, float* %1527, align 4
  %1528 = call float @dx.op.binary.f32(i32 36, float %1521, float %1524)  ; FMin(a,b)
  %1529 = add i32 %1428, 2
  %1530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1529, i32 0)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = fmul fast float %1534, %1436
  %1536 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %1531, float %1532)  ; Dot2(ax,ay,bx,by)
  %1537 = fmul fast float %1536, %1434
  %1538 = fsub fast float %1535, %1537
  %1539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1529, i32 16)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = fmul fast float %1540, %1436
  %1542 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 2
  store float %1541, float* %1542, align 4, !tbaa !25
  %1543 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %1451, float %1498)  ; Dot2(ax,ay,bx,by)
  %1544 = fsub fast float %1538, %1543
  %1545 = fdiv fast float %1544, %1533
  %1546 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 8
  %1547 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 8
  %1548 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 8
  store float %1451, float* %1546, align 4
  store float %1498, float* %1547, align 4
  store float %1545, float* %1548, align 4
  %1549 = call float @dx.op.binary.f32(i32 36, float %1528, float %1545)  ; FMin(a,b)
  %1550 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %1460, float %1498)  ; Dot2(ax,ay,bx,by)
  %1551 = fsub fast float %1538, %1550
  %1552 = fdiv fast float %1551, %1533
  %1553 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 9
  %1554 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 9
  %1555 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 9
  store float %1460, float* %1553, align 4
  store float %1498, float* %1554, align 4
  store float %1552, float* %1555, align 4
  %1556 = call float @dx.op.binary.f32(i32 36, float %1549, float %1552)  ; FMin(a,b)
  %1557 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %1451, float %1507)  ; Dot2(ax,ay,bx,by)
  %1558 = fsub fast float %1538, %1557
  %1559 = fdiv fast float %1558, %1533
  %1560 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 10
  %1561 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 10
  %1562 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 10
  store float %1451, float* %1560, align 4
  store float %1507, float* %1561, align 4
  store float %1559, float* %1562, align 4
  %1563 = call float @dx.op.binary.f32(i32 36, float %1556, float %1559)  ; FMin(a,b)
  %1564 = call float @dx.op.dot2.f32(i32 54, float %1531, float %1532, float %1460, float %1507)  ; Dot2(ax,ay,bx,by)
  %1565 = fsub fast float %1538, %1564
  %1566 = fdiv fast float %1565, %1533
  %1567 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 11
  %1568 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 11
  %1569 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 11
  store float %1460, float* %1567, align 4
  store float %1507, float* %1568, align 4
  store float %1566, float* %1569, align 4
  %1570 = call float @dx.op.binary.f32(i32 36, float %1563, float %1566)  ; FMin(a,b)
  %1571 = add i32 %1428, 3
  %1572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1571, i32 0)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = extractvalue %dx.types.ResRet.f32 %1572, 3
  %1577 = fmul fast float %1576, %1436
  %1578 = call float @dx.op.dot2.f32(i32 54, float %1422, float %1423, float %1573, float %1574)  ; Dot2(ax,ay,bx,by)
  %1579 = fmul fast float %1578, %1434
  %1580 = fsub fast float %1577, %1579
  %1581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %1571, i32 16)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = fmul fast float %1582, %1436
  %1584 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 3
  store float %1583, float* %1584, align 4, !tbaa !25
  %1585 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1498, float %1498)  ; Dot2(ax,ay,bx,by)
  %1586 = fsub fast float %1580, %1585
  %1587 = fdiv fast float %1586, %1575
  %1588 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 12
  %1589 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 12
  %1590 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 12
  store float %1498, float* %1588, align 4
  store float %1498, float* %1589, align 4
  %1591 = call float @dx.op.binary.f32(i32 36, float %1570, float %1587)  ; FMin(a,b)
  %1592 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1507, float %1498)  ; Dot2(ax,ay,bx,by)
  %1593 = fsub fast float %1580, %1592
  %1594 = fdiv fast float %1593, %1575
  %1595 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 13
  %1596 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 13
  %1597 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 13
  store float %1507, float* %1595, align 4
  store float %1498, float* %1596, align 4
  %1598 = call float @dx.op.binary.f32(i32 36, float %1591, float %1594)  ; FMin(a,b)
  %1599 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1498, float %1507)  ; Dot2(ax,ay,bx,by)
  %1600 = fsub fast float %1580, %1599
  %1601 = fdiv fast float %1600, %1575
  %1602 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 14
  %1603 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 14
  %1604 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 14
  store float %1498, float* %1602, align 4
  store float %1507, float* %1603, align 4
  %1605 = call float @dx.op.binary.f32(i32 36, float %1598, float %1601)  ; FMin(a,b)
  %1606 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1507, float %1507)  ; Dot2(ax,ay,bx,by)
  %1607 = fsub fast float %1580, %1606
  %1608 = fdiv fast float %1607, %1575
  %1609 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 15
  %1610 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 15
  %1611 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 15
  store float %1507, float* %1609, align 4
  store float %1507, float* %1610, align 4
  %1612 = call float @dx.op.binary.f32(i32 36, float %1605, float %1608)  ; FMin(a,b)
  %1613 = call float @dx.op.unary.f32(i32 27, float %1612)  ; Round_ni(value)
  %1614 = fsub fast float %1454, %1613
  store float %1614, float* %1457, align 4
  %1615 = fsub fast float %1463, %1613
  store float %1615, float* %1466, align 4
  %1616 = fsub fast float %1470, %1613
  store float %1616, float* %1473, align 4
  %1617 = fsub fast float %1477, %1613
  store float %1617, float* %1480, align 4
  %1618 = fsub fast float %1501, %1613
  store float %1618, float* %1504, align 4
  %1619 = fsub fast float %1510, %1613
  store float %1619, float* %1513, align 4
  %1620 = fsub fast float %1517, %1613
  store float %1620, float* %1520, align 4
  %1621 = fsub fast float %1524, %1613
  store float %1621, float* %1527, align 4
  %1622 = fsub fast float %1545, %1613
  store float %1622, float* %1548, align 4
  %1623 = fsub fast float %1552, %1613
  store float %1623, float* %1555, align 4
  %1624 = fsub fast float %1559, %1613
  store float %1624, float* %1562, align 4
  %1625 = fsub fast float %1566, %1613
  store float %1625, float* %1569, align 4
  %1626 = fsub fast float %1587, %1613
  store float %1626, float* %1590, align 4
  %1627 = fsub fast float %1594, %1613
  store float %1627, float* %1597, align 4
  %1628 = fsub fast float %1601, %1613
  store float %1628, float* %1604, align 4
  %1629 = fsub fast float %1608, %1613
  store float %1629, float* %1611, align 4
  %1630 = fadd fast float %1497, -5.000000e-01
  %1631 = fmul fast float %1434, %1630
  %1632 = fsub fast float %1501, %1454
  %1633 = fcmp fast oeq float %1498, %1451
  %1634 = fcmp fast oeq float %1622, %1614
  %1635 = fsub fast float %1545, %1454
  %1636 = select i1 %1634, float 0.000000e+00, float %1635
  %1637 = fmul fast float %1632, %1631
  %1638 = fsub fast float -0.000000e+00, %1637
  %1639 = fmul fast float %1636, %1631
  %1640 = fsub fast float -0.000000e+00, %1639
  %1641 = fmul fast float %1631, %1631
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1638, float %1640, float %1641, float %1638, float %1640, float %1641)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = call float @dx.op.unary.f32(i32 25, float %1642)  ; Rsqrt(value)
  %1644 = fmul fast float %1643, %1638
  %1645 = fmul fast float %1643, %1640
  %1646 = fmul fast float %1641, %1643
  %1647 = fcmp fast ogt float %1646, 0.000000e+00
  %1648 = fcmp fast olt float %1646, 0.000000e+00
  %1649 = zext i1 %1647 to i32
  %1650 = zext i1 %1648 to i32
  %1651 = sub nsw i32 %1649, %1650
  %1652 = sitofp i32 %1651 to float
  %1653 = fmul fast float %1644, %1652
  %1654 = fmul fast float %1645, %1652
  %1655 = fmul fast float %1652, %1646
  %1656 = call float @dx.op.dot3.f32(i32 55, float %1653, float %1654, float %1655, float %1451, float %1451, float %1614)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1657

; <label>:1657                                    ; preds = %1730, %1409
  %1658 = phi float [ %1653, %1409 ], [ %1718, %1730 ]
  %1659 = phi float [ %1654, %1409 ], [ %1719, %1730 ]
  %1660 = phi float [ %1655, %1409 ], [ %1720, %1730 ]
  %1661 = phi float [ %1656, %1409 ], [ %1721, %1730 ]
  %1662 = phi i32 [ 0, %1409 ], [ %1731, %1730 ]
  br label %1663

; <label>:1663                                    ; preds = %1663, %1657
  %1664 = phi float [ 0.000000e+00, %1657 ], [ %1693, %1663 ]
  %1665 = phi float [ 0.000000e+00, %1657 ], [ %1694, %1663 ]
  %1666 = phi float [ 0.000000e+00, %1657 ], [ %1695, %1663 ]
  %1667 = phi float [ 0.000000e+00, %1657 ], [ %1696, %1663 ]
  %1668 = phi i32 [ 0, %1657 ], [ %1697, %1663 ]
  %1669 = lshr i32 %1668, 2
  %1670 = and i32 %1669, 31
  %1671 = lshr i32 15, %1670
  %1672 = and i32 %1671, 1
  %1673 = uitofp i32 %1672 to float
  %1674 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %1668
  %1675 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %1668
  %1676 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %1668
  %1677 = load float, float* %1674, align 4
  %1678 = load float, float* %1675, align 4
  %1679 = load float, float* %1676, align 4
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1677, float %1678, float %1679, float %1658, float %1659, float %1660)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = fsub fast float %1680, %1661
  %1682 = fmul fast float %1681, %1677
  %1683 = fmul fast float %1681, %1678
  %1684 = fmul fast float %1681, %1679
  %1685 = fcmp fast olt float %1660, 0.000000e+00
  %1686 = fmul fast float %1660, -1.250000e-01
  %1687 = select i1 %1685, float %1686, float 0.000000e+00
  %1688 = fadd fast float %1684, %1687
  %1689 = fmul fast float %1682, %1673
  %1690 = fmul fast float %1683, %1673
  %1691 = fmul fast float %1688, %1673
  %1692 = fmul fast float %1681, %1673
  %1693 = fadd fast float %1689, %1664
  %1694 = fadd fast float %1690, %1665
  %1695 = fadd fast float %1691, %1666
  %1696 = fsub fast float %1667, %1692
  %1697 = add nuw nsw i32 %1668, 1
  %1698 = icmp eq i32 %1697, 16
  br i1 %1698, label %1699, label %1663

; <label>:1699                                    ; preds = %1663
  %1700 = uitofp i32 %1662 to float
  %1701 = fmul fast float %1700, 0x3F49930BE0000000
  %1702 = fsub fast float 0x3FA99999A0000000, %1701
  %1703 = fmul fast float %1693, %1702
  %1704 = fmul fast float %1694, %1702
  %1705 = fmul fast float %1695, %1702
  %1706 = fmul fast float %1696, %1702
  %1707 = fsub fast float %1658, %1703
  %1708 = fsub fast float %1659, %1704
  %1709 = fsub fast float %1660, %1705
  %1710 = fsub fast float %1661, %1706
  %1711 = fmul fast float %1707, %1707
  %1712 = fmul fast float %1708, %1708
  %1713 = fadd fast float %1711, %1712
  %1714 = fmul fast float %1709, %1709
  %1715 = fadd fast float %1713, %1714
  %1716 = call float @dx.op.unary.f32(i32 24, float %1715)  ; Sqrt(value)
  %1717 = fdiv fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1717, %1707
  %1719 = fmul fast float %1717, %1708
  %1720 = fmul fast float %1717, %1709
  %1721 = fmul fast float %1717, %1710
  %1722 = call float @dx.op.unary.f32(i32 6, float %1696)  ; FAbs(value)
  %1723 = call float @dx.op.unary.f32(i32 6, float %1695)  ; FAbs(value)
  %1724 = call float @dx.op.binary.f32(i32 35, float %1723, float %1722)  ; FMax(a,b)
  %1725 = call float @dx.op.unary.f32(i32 6, float %1694)  ; FAbs(value)
  %1726 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1727 = call float @dx.op.binary.f32(i32 35, float %1726, float %1725)  ; FMax(a,b)
  %1728 = call float @dx.op.binary.f32(i32 35, float %1727, float %1724)  ; FMax(a,b)
  %1729 = fcmp fast ugt float %1728, 0x3E7AD7F2A0000000
  br i1 %1729, label %1730, label %1733, !dx.controlflow.hints !46

; <label>:1730                                    ; preds = %1699
  %1731 = add nuw nsw i32 %1662, 1
  %1732 = icmp ult i32 %1731, 64
  br i1 %1732, label %1657, label %1733

; <label>:1733                                    ; preds = %1730, %1699
  %1734 = fcmp fast ogt float %1720, 0.000000e+00
  %1735 = fcmp fast olt float %1720, 0.000000e+00
  %1736 = zext i1 %1734 to i32
  %1737 = zext i1 %1735 to i32
  %1738 = sub nsw i32 %1736, %1737
  %1739 = sitofp i32 %1738 to float
  %1740 = fmul fast float %1739, %1718
  %1741 = fmul fast float %1739, %1719
  %1742 = fmul fast float %1739, %1720
  %1743 = fmul fast float %1739, %1721
  %1744 = fcmp fast ogt float %1742, 0.000000e+00
  br i1 %1744, label %1745, label %1786, !dx.controlflow.hints !47

; <label>:1745                                    ; preds = %1733
  br label %1746

; <label>:1746                                    ; preds = %1770, %1745
  %1747 = phi float [ %1771, %1770 ], [ 1.048576e+06, %1745 ]
  %1748 = phi float [ %1772, %1770 ], [ 1.048576e+06, %1745 ]
  %1749 = phi i32 [ %1773, %1770 ], [ 0, %1745 ]
  %1750 = lshr i32 %1749, 2
  %1751 = and i32 %1750, 28
  %1752 = icmp ult i32 %1751, 4
  br i1 %1752, label %1753, label %1770, !dx.controlflow.hints !48

; <label>:1753                                    ; preds = %1746
  %1754 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %1749
  %1755 = load float, float* %1754, align 4
  %1756 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %1749
  %1757 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %1749
  %1758 = load float, float* %1756, align 4
  %1759 = load float, float* %1757, align 4
  %1760 = call float @dx.op.dot2.f32(i32 54, float %1740, float %1741, float %1758, float %1759)  ; Dot2(ax,ay,bx,by)
  %1761 = fsub fast float %1743, %1760
  %1762 = fdiv fast float %1761, %1742
  %1763 = fsub fast float %1755, %1762
  %1764 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %1750
  %1765 = load float, float* %1764, align 4, !tbaa !25, !noalias !49
  %1766 = fadd fast float %1765, %1763
  %1767 = fsub fast float %1765, %1763
  %1768 = call float @dx.op.binary.f32(i32 36, float %1747, float %1766)  ; FMin(a,b)
  %1769 = call float @dx.op.binary.f32(i32 36, float %1748, float %1767)  ; FMin(a,b)
  br label %1770

; <label>:1770                                    ; preds = %1753, %1746
  %1771 = phi float [ %1768, %1753 ], [ %1747, %1746 ]
  %1772 = phi float [ %1769, %1753 ], [ %1748, %1746 ]
  %1773 = add nuw nsw i32 %1749, 1
  %1774 = icmp eq i32 %1773, 16
  br i1 %1774, label %1775, label %1746

; <label>:1775                                    ; preds = %1770
  %1776 = fadd fast float %1772, %1771
  %1777 = fmul fast float %1776, 5.000000e-01
  %1778 = fcmp fast ogt float %1777, 9.765625e-04
  %1779 = fcmp fast ogt float %1777, 0.000000e+00
  %1780 = and i1 %1778, %1779
  br i1 %1780, label %1781, label %1786, !dx.controlflow.hints !54

; <label>:1781                                    ; preds = %1775
  %1782 = fsub fast float %1771, %1772
  %1783 = fmul fast float %1742, 5.000000e-01
  %1784 = fmul fast float %1783, %1782
  %1785 = fadd fast float %1784, %1743
  br label %1786

; <label>:1786                                    ; preds = %1781, %1775, %1733
  %1787 = phi float [ 0.000000e+00, %1775 ], [ 0.000000e+00, %1733 ], [ %1777, %1781 ]
  %1788 = phi i32 [ 0, %1775 ], [ 0, %1733 ], [ 15, %1781 ]
  %1789 = phi float [ 0.000000e+00, %1775 ], [ 0.000000e+00, %1733 ], [ %1740, %1781 ]
  %1790 = phi float [ 0.000000e+00, %1775 ], [ 0.000000e+00, %1733 ], [ %1741, %1781 ]
  %1791 = phi float [ 0.000000e+00, %1775 ], [ 0.000000e+00, %1733 ], [ %1742, %1781 ]
  %1792 = phi float [ 0.000000e+00, %1775 ], [ 0.000000e+00, %1733 ], [ %1785, %1781 ]
  %1793 = fsub fast float 5.000000e-01, %1497
  %1794 = fmul fast float %1434, %1793
  %1795 = fsub fast float %1454, %1501
  %1796 = fcmp fast oeq float %1626, %1618
  %1797 = fsub fast float %1587, %1501
  %1798 = select i1 %1633, float %1794, float %1631
  %1799 = select i1 %1796, float 0.000000e+00, float %1797
  %1800 = fmul fast float %1795, %1798
  %1801 = fsub fast float -0.000000e+00, %1800
  %1802 = fmul fast float %1799, %1794
  %1803 = fsub fast float -0.000000e+00, %1802
  %1804 = fmul fast float %1798, %1794
  %1805 = call float @dx.op.dot3.f32(i32 55, float %1801, float %1803, float %1804, float %1801, float %1803, float %1804)  ; Dot3(ax,ay,az,bx,by,bz)
  %1806 = call float @dx.op.unary.f32(i32 25, float %1805)  ; Rsqrt(value)
  %1807 = fmul fast float %1806, %1801
  %1808 = fmul fast float %1806, %1803
  %1809 = fmul fast float %1804, %1806
  %1810 = fcmp fast ogt float %1809, 0.000000e+00
  %1811 = fcmp fast olt float %1809, 0.000000e+00
  %1812 = zext i1 %1810 to i32
  %1813 = zext i1 %1811 to i32
  %1814 = sub nsw i32 %1812, %1813
  %1815 = sitofp i32 %1814 to float
  %1816 = fmul fast float %1807, %1815
  %1817 = fmul fast float %1808, %1815
  %1818 = fmul fast float %1815, %1809
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1817, float %1818, float %1498, float %1451, float %1618)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1820

; <label>:1820                                    ; preds = %1893, %1786
  %1821 = phi float [ %1816, %1786 ], [ %1881, %1893 ]
  %1822 = phi float [ %1817, %1786 ], [ %1882, %1893 ]
  %1823 = phi float [ %1818, %1786 ], [ %1883, %1893 ]
  %1824 = phi float [ %1819, %1786 ], [ %1884, %1893 ]
  %1825 = phi i32 [ 0, %1786 ], [ %1894, %1893 ]
  br label %1826

; <label>:1826                                    ; preds = %1826, %1820
  %1827 = phi float [ 0.000000e+00, %1820 ], [ %1856, %1826 ]
  %1828 = phi float [ 0.000000e+00, %1820 ], [ %1857, %1826 ]
  %1829 = phi float [ 0.000000e+00, %1820 ], [ %1858, %1826 ]
  %1830 = phi float [ 0.000000e+00, %1820 ], [ %1859, %1826 ]
  %1831 = phi i32 [ 0, %1820 ], [ %1860, %1826 ]
  %1832 = lshr i32 %1831, 2
  %1833 = and i32 %1832, 31
  %1834 = lshr i32 15, %1833
  %1835 = and i32 %1834, 1
  %1836 = uitofp i32 %1835 to float
  %1837 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %1831
  %1838 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %1831
  %1839 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %1831
  %1840 = load float, float* %1837, align 4
  %1841 = load float, float* %1838, align 4
  %1842 = load float, float* %1839, align 4
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1840, float %1841, float %1842, float %1821, float %1822, float %1823)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = fsub fast float %1843, %1824
  %1845 = fmul fast float %1844, %1840
  %1846 = fmul fast float %1844, %1841
  %1847 = fmul fast float %1844, %1842
  %1848 = fcmp fast olt float %1823, 0.000000e+00
  %1849 = fmul fast float %1823, -1.250000e-01
  %1850 = select i1 %1848, float %1849, float 0.000000e+00
  %1851 = fadd fast float %1847, %1850
  %1852 = fmul fast float %1845, %1836
  %1853 = fmul fast float %1846, %1836
  %1854 = fmul fast float %1851, %1836
  %1855 = fmul fast float %1844, %1836
  %1856 = fadd fast float %1852, %1827
  %1857 = fadd fast float %1853, %1828
  %1858 = fadd fast float %1854, %1829
  %1859 = fsub fast float %1830, %1855
  %1860 = add nuw nsw i32 %1831, 1
  %1861 = icmp eq i32 %1860, 16
  br i1 %1861, label %1862, label %1826

; <label>:1862                                    ; preds = %1826
  %1863 = uitofp i32 %1825 to float
  %1864 = fmul fast float %1863, 0x3F49930BE0000000
  %1865 = fsub fast float 0x3FA99999A0000000, %1864
  %1866 = fmul fast float %1856, %1865
  %1867 = fmul fast float %1857, %1865
  %1868 = fmul fast float %1858, %1865
  %1869 = fmul fast float %1859, %1865
  %1870 = fsub fast float %1821, %1866
  %1871 = fsub fast float %1822, %1867
  %1872 = fsub fast float %1823, %1868
  %1873 = fsub fast float %1824, %1869
  %1874 = fmul fast float %1870, %1870
  %1875 = fmul fast float %1871, %1871
  %1876 = fadd fast float %1874, %1875
  %1877 = fmul fast float %1872, %1872
  %1878 = fadd fast float %1876, %1877
  %1879 = call float @dx.op.unary.f32(i32 24, float %1878)  ; Sqrt(value)
  %1880 = fdiv fast float 1.000000e+00, %1879
  %1881 = fmul fast float %1880, %1870
  %1882 = fmul fast float %1880, %1871
  %1883 = fmul fast float %1880, %1872
  %1884 = fmul fast float %1880, %1873
  %1885 = call float @dx.op.unary.f32(i32 6, float %1859)  ; FAbs(value)
  %1886 = call float @dx.op.unary.f32(i32 6, float %1858)  ; FAbs(value)
  %1887 = call float @dx.op.binary.f32(i32 35, float %1886, float %1885)  ; FMax(a,b)
  %1888 = call float @dx.op.unary.f32(i32 6, float %1857)  ; FAbs(value)
  %1889 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1889, float %1888)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float %1890, float %1887)  ; FMax(a,b)
  %1892 = fcmp fast ugt float %1891, 0x3E7AD7F2A0000000
  br i1 %1892, label %1893, label %1896, !dx.controlflow.hints !46

; <label>:1893                                    ; preds = %1862
  %1894 = add nuw nsw i32 %1825, 1
  %1895 = icmp ult i32 %1894, 64
  br i1 %1895, label %1820, label %1896

; <label>:1896                                    ; preds = %1893, %1862
  %1897 = fcmp fast ogt float %1883, 0.000000e+00
  %1898 = fcmp fast olt float %1883, 0.000000e+00
  %1899 = zext i1 %1897 to i32
  %1900 = zext i1 %1898 to i32
  %1901 = sub nsw i32 %1899, %1900
  %1902 = sitofp i32 %1901 to float
  %1903 = fmul fast float %1902, %1881
  %1904 = fmul fast float %1902, %1882
  %1905 = fmul fast float %1902, %1883
  %1906 = fmul fast float %1902, %1884
  %1907 = fcmp fast ogt float %1905, 0.000000e+00
  br i1 %1907, label %1908, label %1949, !dx.controlflow.hints !47

; <label>:1908                                    ; preds = %1896
  br label %1909

; <label>:1909                                    ; preds = %1933, %1908
  %1910 = phi float [ %1934, %1933 ], [ 1.048576e+06, %1908 ]
  %1911 = phi float [ %1935, %1933 ], [ 1.048576e+06, %1908 ]
  %1912 = phi i32 [ %1936, %1933 ], [ 0, %1908 ]
  %1913 = lshr i32 %1912, 2
  %1914 = and i32 %1913, 28
  %1915 = icmp ult i32 %1914, 4
  br i1 %1915, label %1916, label %1933, !dx.controlflow.hints !48

; <label>:1916                                    ; preds = %1909
  %1917 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %1912
  %1918 = load float, float* %1917, align 4
  %1919 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %1912
  %1920 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %1912
  %1921 = load float, float* %1919, align 4
  %1922 = load float, float* %1920, align 4
  %1923 = call float @dx.op.dot2.f32(i32 54, float %1903, float %1904, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  %1924 = fsub fast float %1906, %1923
  %1925 = fdiv fast float %1924, %1905
  %1926 = fsub fast float %1918, %1925
  %1927 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %1913
  %1928 = load float, float* %1927, align 4, !tbaa !25, !noalias !49
  %1929 = fadd fast float %1928, %1926
  %1930 = fsub fast float %1928, %1926
  %1931 = call float @dx.op.binary.f32(i32 36, float %1910, float %1929)  ; FMin(a,b)
  %1932 = call float @dx.op.binary.f32(i32 36, float %1911, float %1930)  ; FMin(a,b)
  br label %1933

; <label>:1933                                    ; preds = %1916, %1909
  %1934 = phi float [ %1931, %1916 ], [ %1910, %1909 ]
  %1935 = phi float [ %1932, %1916 ], [ %1911, %1909 ]
  %1936 = add nuw nsw i32 %1912, 1
  %1937 = icmp eq i32 %1936, 16
  br i1 %1937, label %1938, label %1909

; <label>:1938                                    ; preds = %1933
  %1939 = fadd fast float %1935, %1934
  %1940 = fmul fast float %1939, 5.000000e-01
  %1941 = fcmp fast ogt float %1940, 9.765625e-04
  %1942 = fcmp fast ogt float %1940, %1787
  %1943 = and i1 %1941, %1942
  br i1 %1943, label %1944, label %1949, !dx.controlflow.hints !54

; <label>:1944                                    ; preds = %1938
  %1945 = fsub fast float %1934, %1935
  %1946 = fmul fast float %1905, 5.000000e-01
  %1947 = fmul fast float %1946, %1945
  %1948 = fadd fast float %1947, %1906
  br label %1949

; <label>:1949                                    ; preds = %1944, %1938, %1896
  %1950 = phi float [ %1787, %1938 ], [ %1787, %1896 ], [ %1940, %1944 ]
  %1951 = phi i32 [ %1788, %1938 ], [ %1788, %1896 ], [ 15, %1944 ]
  %1952 = phi float [ %1789, %1938 ], [ %1789, %1896 ], [ %1903, %1944 ]
  %1953 = phi float [ %1790, %1938 ], [ %1790, %1896 ], [ %1904, %1944 ]
  %1954 = phi float [ %1791, %1938 ], [ %1791, %1896 ], [ %1905, %1944 ]
  %1955 = phi float [ %1792, %1938 ], [ %1792, %1896 ], [ %1948, %1944 ]
  %1956 = fsub fast float %1587, %1545
  %1957 = fsub fast float %1454, %1545
  %1958 = select i1 %1633, float %1631, float %1794
  %1959 = select i1 %1634, float 0.000000e+00, float %1957
  %1960 = fmul fast float %1956, %1958
  %1961 = fsub fast float -0.000000e+00, %1960
  %1962 = fmul fast float %1959, %1631
  %1963 = fsub fast float -0.000000e+00, %1962
  %1964 = fmul fast float %1958, %1631
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1961, float %1963, float %1964, float %1961, float %1963, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = call float @dx.op.unary.f32(i32 25, float %1965)  ; Rsqrt(value)
  %1967 = fmul fast float %1966, %1961
  %1968 = fmul fast float %1966, %1963
  %1969 = fmul fast float %1964, %1966
  %1970 = fcmp fast ogt float %1969, 0.000000e+00
  %1971 = fcmp fast olt float %1969, 0.000000e+00
  %1972 = zext i1 %1970 to i32
  %1973 = zext i1 %1971 to i32
  %1974 = sub nsw i32 %1972, %1973
  %1975 = sitofp i32 %1974 to float
  %1976 = fmul fast float %1967, %1975
  %1977 = fmul fast float %1968, %1975
  %1978 = fmul fast float %1975, %1969
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1976, float %1977, float %1978, float %1451, float %1498, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %1980

; <label>:1980                                    ; preds = %2053, %1949
  %1981 = phi float [ %1976, %1949 ], [ %2041, %2053 ]
  %1982 = phi float [ %1977, %1949 ], [ %2042, %2053 ]
  %1983 = phi float [ %1978, %1949 ], [ %2043, %2053 ]
  %1984 = phi float [ %1979, %1949 ], [ %2044, %2053 ]
  %1985 = phi i32 [ 0, %1949 ], [ %2054, %2053 ]
  br label %1986

; <label>:1986                                    ; preds = %1986, %1980
  %1987 = phi float [ 0.000000e+00, %1980 ], [ %2016, %1986 ]
  %1988 = phi float [ 0.000000e+00, %1980 ], [ %2017, %1986 ]
  %1989 = phi float [ 0.000000e+00, %1980 ], [ %2018, %1986 ]
  %1990 = phi float [ 0.000000e+00, %1980 ], [ %2019, %1986 ]
  %1991 = phi i32 [ 0, %1980 ], [ %2020, %1986 ]
  %1992 = lshr i32 %1991, 2
  %1993 = and i32 %1992, 31
  %1994 = lshr i32 15, %1993
  %1995 = and i32 %1994, 1
  %1996 = uitofp i32 %1995 to float
  %1997 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %1991
  %1998 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %1991
  %1999 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %1991
  %2000 = load float, float* %1997, align 4
  %2001 = load float, float* %1998, align 4
  %2002 = load float, float* %1999, align 4
  %2003 = call float @dx.op.dot3.f32(i32 55, float %2000, float %2001, float %2002, float %1981, float %1982, float %1983)  ; Dot3(ax,ay,az,bx,by,bz)
  %2004 = fsub fast float %2003, %1984
  %2005 = fmul fast float %2004, %2000
  %2006 = fmul fast float %2004, %2001
  %2007 = fmul fast float %2004, %2002
  %2008 = fcmp fast olt float %1983, 0.000000e+00
  %2009 = fmul fast float %1983, -1.250000e-01
  %2010 = select i1 %2008, float %2009, float 0.000000e+00
  %2011 = fadd fast float %2007, %2010
  %2012 = fmul fast float %2005, %1996
  %2013 = fmul fast float %2006, %1996
  %2014 = fmul fast float %2011, %1996
  %2015 = fmul fast float %2004, %1996
  %2016 = fadd fast float %2012, %1987
  %2017 = fadd fast float %2013, %1988
  %2018 = fadd fast float %2014, %1989
  %2019 = fsub fast float %1990, %2015
  %2020 = add nuw nsw i32 %1991, 1
  %2021 = icmp eq i32 %2020, 16
  br i1 %2021, label %2022, label %1986

; <label>:2022                                    ; preds = %1986
  %2023 = uitofp i32 %1985 to float
  %2024 = fmul fast float %2023, 0x3F49930BE0000000
  %2025 = fsub fast float 0x3FA99999A0000000, %2024
  %2026 = fmul fast float %2016, %2025
  %2027 = fmul fast float %2017, %2025
  %2028 = fmul fast float %2018, %2025
  %2029 = fmul fast float %2019, %2025
  %2030 = fsub fast float %1981, %2026
  %2031 = fsub fast float %1982, %2027
  %2032 = fsub fast float %1983, %2028
  %2033 = fsub fast float %1984, %2029
  %2034 = fmul fast float %2030, %2030
  %2035 = fmul fast float %2031, %2031
  %2036 = fadd fast float %2034, %2035
  %2037 = fmul fast float %2032, %2032
  %2038 = fadd fast float %2036, %2037
  %2039 = call float @dx.op.unary.f32(i32 24, float %2038)  ; Sqrt(value)
  %2040 = fdiv fast float 1.000000e+00, %2039
  %2041 = fmul fast float %2040, %2030
  %2042 = fmul fast float %2040, %2031
  %2043 = fmul fast float %2040, %2032
  %2044 = fmul fast float %2040, %2033
  %2045 = call float @dx.op.unary.f32(i32 6, float %2019)  ; FAbs(value)
  %2046 = call float @dx.op.unary.f32(i32 6, float %2018)  ; FAbs(value)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2046, float %2045)  ; FMax(a,b)
  %2048 = call float @dx.op.unary.f32(i32 6, float %2017)  ; FAbs(value)
  %2049 = call float @dx.op.unary.f32(i32 6, float %2016)  ; FAbs(value)
  %2050 = call float @dx.op.binary.f32(i32 35, float %2049, float %2048)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float %2050, float %2047)  ; FMax(a,b)
  %2052 = fcmp fast ugt float %2051, 0x3E7AD7F2A0000000
  br i1 %2052, label %2053, label %2056, !dx.controlflow.hints !46

; <label>:2053                                    ; preds = %2022
  %2054 = add nuw nsw i32 %1985, 1
  %2055 = icmp ult i32 %2054, 64
  br i1 %2055, label %1980, label %2056

; <label>:2056                                    ; preds = %2053, %2022
  %2057 = fcmp fast ogt float %2043, 0.000000e+00
  %2058 = fcmp fast olt float %2043, 0.000000e+00
  %2059 = zext i1 %2057 to i32
  %2060 = zext i1 %2058 to i32
  %2061 = sub nsw i32 %2059, %2060
  %2062 = sitofp i32 %2061 to float
  %2063 = fmul fast float %2062, %2041
  %2064 = fmul fast float %2062, %2042
  %2065 = fmul fast float %2062, %2043
  %2066 = fmul fast float %2062, %2044
  %2067 = fcmp fast ogt float %2065, 0.000000e+00
  br i1 %2067, label %2068, label %2109, !dx.controlflow.hints !47

; <label>:2068                                    ; preds = %2056
  br label %2069

; <label>:2069                                    ; preds = %2093, %2068
  %2070 = phi float [ %2094, %2093 ], [ 1.048576e+06, %2068 ]
  %2071 = phi float [ %2095, %2093 ], [ 1.048576e+06, %2068 ]
  %2072 = phi i32 [ %2096, %2093 ], [ 0, %2068 ]
  %2073 = lshr i32 %2072, 2
  %2074 = and i32 %2073, 28
  %2075 = icmp ult i32 %2074, 4
  br i1 %2075, label %2076, label %2093, !dx.controlflow.hints !48

; <label>:2076                                    ; preds = %2069
  %2077 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2072
  %2078 = load float, float* %2077, align 4
  %2079 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2072
  %2080 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2072
  %2081 = load float, float* %2079, align 4
  %2082 = load float, float* %2080, align 4
  %2083 = call float @dx.op.dot2.f32(i32 54, float %2063, float %2064, float %2081, float %2082)  ; Dot2(ax,ay,bx,by)
  %2084 = fsub fast float %2066, %2083
  %2085 = fdiv fast float %2084, %2065
  %2086 = fsub fast float %2078, %2085
  %2087 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %2073
  %2088 = load float, float* %2087, align 4, !tbaa !25, !noalias !49
  %2089 = fadd fast float %2088, %2086
  %2090 = fsub fast float %2088, %2086
  %2091 = call float @dx.op.binary.f32(i32 36, float %2070, float %2089)  ; FMin(a,b)
  %2092 = call float @dx.op.binary.f32(i32 36, float %2071, float %2090)  ; FMin(a,b)
  br label %2093

; <label>:2093                                    ; preds = %2076, %2069
  %2094 = phi float [ %2091, %2076 ], [ %2070, %2069 ]
  %2095 = phi float [ %2092, %2076 ], [ %2071, %2069 ]
  %2096 = add nuw nsw i32 %2072, 1
  %2097 = icmp eq i32 %2096, 16
  br i1 %2097, label %2098, label %2069

; <label>:2098                                    ; preds = %2093
  %2099 = fadd fast float %2095, %2094
  %2100 = fmul fast float %2099, 5.000000e-01
  %2101 = fcmp fast ogt float %2100, 9.765625e-04
  %2102 = fcmp fast ogt float %2100, %1950
  %2103 = and i1 %2101, %2102
  br i1 %2103, label %2104, label %2109, !dx.controlflow.hints !54

; <label>:2104                                    ; preds = %2098
  %2105 = fsub fast float %2094, %2095
  %2106 = fmul fast float %2065, 5.000000e-01
  %2107 = fmul fast float %2106, %2105
  %2108 = fadd fast float %2107, %2066
  br label %2109

; <label>:2109                                    ; preds = %2104, %2098, %2056
  %2110 = phi float [ %1950, %2098 ], [ %1950, %2056 ], [ %2100, %2104 ]
  %2111 = phi i32 [ %1951, %2098 ], [ %1951, %2056 ], [ 15, %2104 ]
  %2112 = phi float [ %1952, %2098 ], [ %1952, %2056 ], [ %2063, %2104 ]
  %2113 = phi float [ %1953, %2098 ], [ %1953, %2056 ], [ %2064, %2104 ]
  %2114 = phi float [ %1954, %2098 ], [ %1954, %2056 ], [ %2065, %2104 ]
  %2115 = phi float [ %1955, %2098 ], [ %1955, %2056 ], [ %2108, %2104 ]
  %2116 = fsub fast float %1545, %1587
  %2117 = fsub fast float %1501, %1587
  %2118 = select i1 %1796, float 0.000000e+00, float %2117
  %2119 = fmul fast float %2116, %1794
  %2120 = fsub fast float -0.000000e+00, %2119
  %2121 = fmul fast float %2118, %1794
  %2122 = fsub fast float -0.000000e+00, %2121
  %2123 = fmul fast float %1794, %1794
  %2124 = call float @dx.op.dot3.f32(i32 55, float %2120, float %2122, float %2123, float %2120, float %2122, float %2123)  ; Dot3(ax,ay,az,bx,by,bz)
  %2125 = call float @dx.op.unary.f32(i32 25, float %2124)  ; Rsqrt(value)
  %2126 = fmul fast float %2125, %2120
  %2127 = fmul fast float %2125, %2122
  %2128 = fmul fast float %2123, %2125
  %2129 = fcmp fast ogt float %2128, 0.000000e+00
  %2130 = fcmp fast olt float %2128, 0.000000e+00
  %2131 = zext i1 %2129 to i32
  %2132 = zext i1 %2130 to i32
  %2133 = sub nsw i32 %2131, %2132
  %2134 = sitofp i32 %2133 to float
  %2135 = fmul fast float %2126, %2134
  %2136 = fmul fast float %2127, %2134
  %2137 = fmul fast float %2134, %2128
  %2138 = call float @dx.op.dot3.f32(i32 55, float %2135, float %2136, float %2137, float %1498, float %1498, float %1626)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2139

; <label>:2139                                    ; preds = %2212, %2109
  %2140 = phi float [ %2135, %2109 ], [ %2200, %2212 ]
  %2141 = phi float [ %2136, %2109 ], [ %2201, %2212 ]
  %2142 = phi float [ %2137, %2109 ], [ %2202, %2212 ]
  %2143 = phi float [ %2138, %2109 ], [ %2203, %2212 ]
  %2144 = phi i32 [ 0, %2109 ], [ %2213, %2212 ]
  br label %2145

; <label>:2145                                    ; preds = %2145, %2139
  %2146 = phi float [ 0.000000e+00, %2139 ], [ %2175, %2145 ]
  %2147 = phi float [ 0.000000e+00, %2139 ], [ %2176, %2145 ]
  %2148 = phi float [ 0.000000e+00, %2139 ], [ %2177, %2145 ]
  %2149 = phi float [ 0.000000e+00, %2139 ], [ %2178, %2145 ]
  %2150 = phi i32 [ 0, %2139 ], [ %2179, %2145 ]
  %2151 = lshr i32 %2150, 2
  %2152 = and i32 %2151, 31
  %2153 = lshr i32 15, %2152
  %2154 = and i32 %2153, 1
  %2155 = uitofp i32 %2154 to float
  %2156 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2150
  %2157 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2150
  %2158 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2150
  %2159 = load float, float* %2156, align 4
  %2160 = load float, float* %2157, align 4
  %2161 = load float, float* %2158, align 4
  %2162 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float %2140, float %2141, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2163 = fsub fast float %2162, %2143
  %2164 = fmul fast float %2163, %2159
  %2165 = fmul fast float %2163, %2160
  %2166 = fmul fast float %2163, %2161
  %2167 = fcmp fast olt float %2142, 0.000000e+00
  %2168 = fmul fast float %2142, -1.250000e-01
  %2169 = select i1 %2167, float %2168, float 0.000000e+00
  %2170 = fadd fast float %2166, %2169
  %2171 = fmul fast float %2164, %2155
  %2172 = fmul fast float %2165, %2155
  %2173 = fmul fast float %2170, %2155
  %2174 = fmul fast float %2163, %2155
  %2175 = fadd fast float %2171, %2146
  %2176 = fadd fast float %2172, %2147
  %2177 = fadd fast float %2173, %2148
  %2178 = fsub fast float %2149, %2174
  %2179 = add nuw nsw i32 %2150, 1
  %2180 = icmp eq i32 %2179, 16
  br i1 %2180, label %2181, label %2145

; <label>:2181                                    ; preds = %2145
  %2182 = uitofp i32 %2144 to float
  %2183 = fmul fast float %2182, 0x3F49930BE0000000
  %2184 = fsub fast float 0x3FA99999A0000000, %2183
  %2185 = fmul fast float %2175, %2184
  %2186 = fmul fast float %2176, %2184
  %2187 = fmul fast float %2177, %2184
  %2188 = fmul fast float %2178, %2184
  %2189 = fsub fast float %2140, %2185
  %2190 = fsub fast float %2141, %2186
  %2191 = fsub fast float %2142, %2187
  %2192 = fsub fast float %2143, %2188
  %2193 = fmul fast float %2189, %2189
  %2194 = fmul fast float %2190, %2190
  %2195 = fadd fast float %2193, %2194
  %2196 = fmul fast float %2191, %2191
  %2197 = fadd fast float %2195, %2196
  %2198 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2199 = fdiv fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2199, %2189
  %2201 = fmul fast float %2199, %2190
  %2202 = fmul fast float %2199, %2191
  %2203 = fmul fast float %2199, %2192
  %2204 = call float @dx.op.unary.f32(i32 6, float %2178)  ; FAbs(value)
  %2205 = call float @dx.op.unary.f32(i32 6, float %2177)  ; FAbs(value)
  %2206 = call float @dx.op.binary.f32(i32 35, float %2205, float %2204)  ; FMax(a,b)
  %2207 = call float @dx.op.unary.f32(i32 6, float %2176)  ; FAbs(value)
  %2208 = call float @dx.op.unary.f32(i32 6, float %2175)  ; FAbs(value)
  %2209 = call float @dx.op.binary.f32(i32 35, float %2208, float %2207)  ; FMax(a,b)
  %2210 = call float @dx.op.binary.f32(i32 35, float %2209, float %2206)  ; FMax(a,b)
  %2211 = fcmp fast ugt float %2210, 0x3E7AD7F2A0000000
  br i1 %2211, label %2212, label %2215, !dx.controlflow.hints !46

; <label>:2212                                    ; preds = %2181
  %2213 = add nuw nsw i32 %2144, 1
  %2214 = icmp ult i32 %2213, 64
  br i1 %2214, label %2139, label %2215

; <label>:2215                                    ; preds = %2212, %2181
  %2216 = fcmp fast ogt float %2202, 0.000000e+00
  %2217 = fcmp fast olt float %2202, 0.000000e+00
  %2218 = zext i1 %2216 to i32
  %2219 = zext i1 %2217 to i32
  %2220 = sub nsw i32 %2218, %2219
  %2221 = sitofp i32 %2220 to float
  %2222 = fmul fast float %2221, %2200
  %2223 = fmul fast float %2221, %2201
  %2224 = fmul fast float %2221, %2202
  %2225 = fmul fast float %2221, %2203
  %2226 = fcmp fast ogt float %2224, 0.000000e+00
  br i1 %2226, label %2227, label %2268, !dx.controlflow.hints !47

; <label>:2227                                    ; preds = %2215
  br label %2228

; <label>:2228                                    ; preds = %2252, %2227
  %2229 = phi float [ %2253, %2252 ], [ 1.048576e+06, %2227 ]
  %2230 = phi float [ %2254, %2252 ], [ 1.048576e+06, %2227 ]
  %2231 = phi i32 [ %2255, %2252 ], [ 0, %2227 ]
  %2232 = lshr i32 %2231, 2
  %2233 = and i32 %2232, 28
  %2234 = icmp ult i32 %2233, 4
  br i1 %2234, label %2235, label %2252, !dx.controlflow.hints !48

; <label>:2235                                    ; preds = %2228
  %2236 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2231
  %2237 = load float, float* %2236, align 4
  %2238 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2231
  %2239 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2231
  %2240 = load float, float* %2238, align 4
  %2241 = load float, float* %2239, align 4
  %2242 = call float @dx.op.dot2.f32(i32 54, float %2222, float %2223, float %2240, float %2241)  ; Dot2(ax,ay,bx,by)
  %2243 = fsub fast float %2225, %2242
  %2244 = fdiv fast float %2243, %2224
  %2245 = fsub fast float %2237, %2244
  %2246 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %2232
  %2247 = load float, float* %2246, align 4, !tbaa !25, !noalias !49
  %2248 = fadd fast float %2247, %2245
  %2249 = fsub fast float %2247, %2245
  %2250 = call float @dx.op.binary.f32(i32 36, float %2229, float %2248)  ; FMin(a,b)
  %2251 = call float @dx.op.binary.f32(i32 36, float %2230, float %2249)  ; FMin(a,b)
  br label %2252

; <label>:2252                                    ; preds = %2235, %2228
  %2253 = phi float [ %2250, %2235 ], [ %2229, %2228 ]
  %2254 = phi float [ %2251, %2235 ], [ %2230, %2228 ]
  %2255 = add nuw nsw i32 %2231, 1
  %2256 = icmp eq i32 %2255, 16
  br i1 %2256, label %2257, label %2228

; <label>:2257                                    ; preds = %2252
  %2258 = fadd fast float %2254, %2253
  %2259 = fmul fast float %2258, 5.000000e-01
  %2260 = fcmp fast ogt float %2259, 9.765625e-04
  %2261 = fcmp fast ogt float %2259, %2110
  %2262 = and i1 %2260, %2261
  br i1 %2262, label %2263, label %2268, !dx.controlflow.hints !54

; <label>:2263                                    ; preds = %2257
  %2264 = fsub fast float %2253, %2254
  %2265 = fmul fast float %2224, 5.000000e-01
  %2266 = fmul fast float %2265, %2264
  %2267 = fadd fast float %2266, %2225
  br label %2268

; <label>:2268                                    ; preds = %2263, %2257, %2215
  %2269 = phi float [ %2110, %2257 ], [ %2110, %2215 ], [ %2259, %2263 ]
  %2270 = phi i32 [ %2111, %2257 ], [ %2111, %2215 ], [ 15, %2263 ]
  %2271 = phi float [ %2112, %2257 ], [ %2112, %2215 ], [ %2222, %2263 ]
  %2272 = phi float [ %2113, %2257 ], [ %2113, %2215 ], [ %2223, %2263 ]
  %2273 = phi float [ %2114, %2257 ], [ %2114, %2215 ], [ %2224, %2263 ]
  %2274 = phi float [ %2115, %2257 ], [ %2115, %2215 ], [ %2267, %2263 ]
  %2275 = fcmp fast oeq float %2269, 0.000000e+00
  br i1 %2275, label %2276, label %2489, !dx.controlflow.hints !55

; <label>:2276                                    ; preds = %2268
  br label %2277

; <label>:2277                                    ; preds = %2478, %2276
  %2278 = phi i32 [ %2486, %2478 ], [ 0, %2276 ]
  %2279 = phi float [ %2479, %2478 ], [ %2269, %2276 ]
  %2280 = phi i32 [ %2480, %2478 ], [ %2270, %2276 ]
  %2281 = phi float [ %2481, %2478 ], [ %2269, %2276 ]
  %2282 = phi float [ %2482, %2478 ], [ %2271, %2276 ]
  %2283 = phi float [ %2483, %2478 ], [ %2272, %2276 ]
  %2284 = phi float [ %2484, %2478 ], [ %2273, %2276 ]
  %2285 = phi float [ %2485, %2478 ], [ %2274, %2276 ]
  %2286 = shl i32 %2278, 2
  %2287 = xor i32 %2286, 12
  %2288 = xor i32 %2286, 4
  %2289 = xor i32 %2286, 8
  %2290 = shl i32 1, %2278
  %2291 = xor i32 %2290, 15
  %2292 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2289
  %2293 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2289
  %2294 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2289
  %2295 = load float, float* %2292, align 4
  %2296 = load float, float* %2293, align 4
  %2297 = load float, float* %2294, align 4
  %2298 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2288
  %2299 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2288
  %2300 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2288
  %2301 = load float, float* %2298, align 4
  %2302 = load float, float* %2299, align 4
  %2303 = load float, float* %2300, align 4
  %2304 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2287
  %2305 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2287
  %2306 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2287
  %2307 = load float, float* %2304, align 4
  %2308 = load float, float* %2305, align 4
  %2309 = load float, float* %2306, align 4
  %2310 = fsub fast float %2301, %2307
  %2311 = fsub fast float %2302, %2308
  %2312 = fsub fast float %2303, %2309
  %2313 = fcmp fast oeq float %2295, %2307
  %2314 = fcmp fast oeq float %2296, %2308
  %2315 = fcmp fast oeq float %2297, %2309
  %2316 = fsub fast float -0.000000e+00, %2311
  %2317 = fsub fast float %2295, %2307
  %2318 = fsub fast float %2296, %2308
  %2319 = fsub fast float %2297, %2309
  %2320 = select i1 %2313, float %2316, float %2317
  %2321 = select i1 %2314, float %2310, float %2318
  %2322 = select i1 %2315, float 0.000000e+00, float %2319
  %2323 = fmul fast float %2322, %2311
  %2324 = fmul fast float %2312, %2321
  %2325 = fsub fast float %2323, %2324
  %2326 = fmul fast float %2312, %2320
  %2327 = fmul fast float %2322, %2310
  %2328 = fsub fast float %2326, %2327
  %2329 = fmul fast float %2321, %2310
  %2330 = fmul fast float %2320, %2311
  %2331 = fsub fast float %2329, %2330
  %2332 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2328, float %2331, float %2325, float %2328, float %2331)  ; Dot3(ax,ay,az,bx,by,bz)
  %2333 = call float @dx.op.unary.f32(i32 25, float %2332)  ; Rsqrt(value)
  %2334 = fmul fast float %2325, %2333
  %2335 = fmul fast float %2328, %2333
  %2336 = fmul fast float %2331, %2333
  %2337 = fcmp fast ogt float %2336, 0.000000e+00
  %2338 = fcmp fast olt float %2336, 0.000000e+00
  %2339 = zext i1 %2337 to i32
  %2340 = zext i1 %2338 to i32
  %2341 = sub nsw i32 %2339, %2340
  %2342 = sitofp i32 %2341 to float
  %2343 = fmul fast float %2334, %2342
  %2344 = fmul fast float %2335, %2342
  %2345 = fmul fast float %2342, %2336
  %2346 = call float @dx.op.dot3.f32(i32 55, float %2343, float %2344, float %2345, float %2307, float %2308, float %2309)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2347

; <label>:2347                                    ; preds = %2420, %2277
  %2348 = phi i32 [ 0, %2277 ], [ %2421, %2420 ]
  %2349 = phi float [ %2343, %2277 ], [ %2408, %2420 ]
  %2350 = phi float [ %2344, %2277 ], [ %2409, %2420 ]
  %2351 = phi float [ %2345, %2277 ], [ %2410, %2420 ]
  %2352 = phi float [ %2346, %2277 ], [ %2411, %2420 ]
  br label %2353

; <label>:2353                                    ; preds = %2353, %2347
  %2354 = phi i32 [ 0, %2347 ], [ %2387, %2353 ]
  %2355 = phi float [ 0.000000e+00, %2347 ], [ %2383, %2353 ]
  %2356 = phi float [ 0.000000e+00, %2347 ], [ %2384, %2353 ]
  %2357 = phi float [ 0.000000e+00, %2347 ], [ %2385, %2353 ]
  %2358 = phi float [ 0.000000e+00, %2347 ], [ %2386, %2353 ]
  %2359 = lshr i32 %2354, 2
  %2360 = and i32 %2359, 31
  %2361 = lshr i32 %2291, %2360
  %2362 = and i32 %2361, 1
  %2363 = uitofp i32 %2362 to float
  %2364 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2354
  %2365 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2354
  %2366 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2354
  %2367 = load float, float* %2364, align 4
  %2368 = load float, float* %2365, align 4
  %2369 = load float, float* %2366, align 4
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2368, float %2369, float %2349, float %2350, float %2351)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = fsub fast float %2370, %2352
  %2372 = fmul fast float %2371, %2369
  %2373 = fcmp fast olt float %2351, 0.000000e+00
  %2374 = fmul fast float %2351, -1.250000e-01
  %2375 = select i1 %2373, float %2374, float 0.000000e+00
  %2376 = fadd fast float %2372, %2375
  %2377 = fmul fast float %2363, %2367
  %2378 = fmul fast float %2377, %2371
  %2379 = fmul fast float %2368, %2363
  %2380 = fmul fast float %2379, %2371
  %2381 = fmul fast float %2376, %2363
  %2382 = fmul fast float %2371, %2363
  %2383 = fadd fast float %2378, %2355
  %2384 = fadd fast float %2380, %2356
  %2385 = fadd fast float %2381, %2357
  %2386 = fsub fast float %2358, %2382
  %2387 = add nuw nsw i32 %2354, 1
  %2388 = icmp eq i32 %2387, 16
  br i1 %2388, label %2389, label %2353

; <label>:2389                                    ; preds = %2353
  %2390 = uitofp i32 %2348 to float
  %2391 = fmul fast float %2390, 0x3F49930BE0000000
  %2392 = fsub fast float 0x3FA99999A0000000, %2391
  %2393 = fmul fast float %2383, %2392
  %2394 = fmul fast float %2384, %2392
  %2395 = fmul fast float %2385, %2392
  %2396 = fmul fast float %2386, %2392
  %2397 = fsub fast float %2349, %2393
  %2398 = fsub fast float %2350, %2394
  %2399 = fsub fast float %2351, %2395
  %2400 = fsub fast float %2352, %2396
  %2401 = fmul fast float %2397, %2397
  %2402 = fmul fast float %2398, %2398
  %2403 = fadd fast float %2401, %2402
  %2404 = fmul fast float %2399, %2399
  %2405 = fadd fast float %2403, %2404
  %2406 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2407 = fdiv fast float 1.000000e+00, %2406
  %2408 = fmul fast float %2407, %2397
  %2409 = fmul fast float %2407, %2398
  %2410 = fmul fast float %2407, %2399
  %2411 = fmul fast float %2407, %2400
  %2412 = call float @dx.op.unary.f32(i32 6, float %2386)  ; FAbs(value)
  %2413 = call float @dx.op.unary.f32(i32 6, float %2385)  ; FAbs(value)
  %2414 = call float @dx.op.binary.f32(i32 35, float %2413, float %2412)  ; FMax(a,b)
  %2415 = call float @dx.op.unary.f32(i32 6, float %2384)  ; FAbs(value)
  %2416 = call float @dx.op.unary.f32(i32 6, float %2383)  ; FAbs(value)
  %2417 = call float @dx.op.binary.f32(i32 35, float %2416, float %2415)  ; FMax(a,b)
  %2418 = call float @dx.op.binary.f32(i32 35, float %2417, float %2414)  ; FMax(a,b)
  %2419 = fcmp fast ugt float %2418, 0x3E7AD7F2A0000000
  br i1 %2419, label %2420, label %2423, !dx.controlflow.hints !46

; <label>:2420                                    ; preds = %2389
  %2421 = add nuw nsw i32 %2348, 1
  %2422 = icmp ult i32 %2421, 64
  br i1 %2422, label %2347, label %2423

; <label>:2423                                    ; preds = %2420, %2389
  %2424 = fcmp fast ogt float %2410, 0.000000e+00
  %2425 = fcmp fast olt float %2410, 0.000000e+00
  %2426 = zext i1 %2424 to i32
  %2427 = zext i1 %2425 to i32
  %2428 = sub nsw i32 %2426, %2427
  %2429 = sitofp i32 %2428 to float
  %2430 = fmul fast float %2429, %2408
  %2431 = fmul fast float %2429, %2409
  %2432 = fmul fast float %2429, %2410
  %2433 = fmul fast float %2429, %2411
  %2434 = fcmp fast ogt float %2432, 0.000000e+00
  br i1 %2434, label %2435, label %2478, !dx.controlflow.hints !47

; <label>:2435                                    ; preds = %2423
  br label %2436

; <label>:2436                                    ; preds = %2462, %2435
  %2437 = phi i32 [ %2465, %2462 ], [ 0, %2435 ]
  %2438 = phi float [ %2463, %2462 ], [ 1.048576e+06, %2435 ]
  %2439 = phi float [ %2464, %2462 ], [ 1.048576e+06, %2435 ]
  %2440 = lshr i32 %2437, 2
  %2441 = and i32 %2440, 31
  %2442 = shl i32 1, %2441
  %2443 = and i32 %2442, %2291
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2462, label %2445, !dx.controlflow.hints !48

; <label>:2445                                    ; preds = %2436
  %2446 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2437
  %2447 = load float, float* %2446, align 4
  %2448 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2437
  %2449 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2437
  %2450 = load float, float* %2448, align 4
  %2451 = load float, float* %2449, align 4
  %2452 = call float @dx.op.dot2.f32(i32 54, float %2430, float %2431, float %2450, float %2451)  ; Dot2(ax,ay,bx,by)
  %2453 = fsub fast float %2433, %2452
  %2454 = fdiv fast float %2453, %2432
  %2455 = fsub fast float %2447, %2454
  %2456 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %2440
  %2457 = load float, float* %2456, align 4, !tbaa !25, !noalias !56
  %2458 = fadd fast float %2457, %2455
  %2459 = fsub fast float %2457, %2455
  %2460 = call float @dx.op.binary.f32(i32 36, float %2438, float %2458)  ; FMin(a,b)
  %2461 = call float @dx.op.binary.f32(i32 36, float %2439, float %2459)  ; FMin(a,b)
  br label %2462

; <label>:2462                                    ; preds = %2445, %2436
  %2463 = phi float [ %2460, %2445 ], [ %2438, %2436 ]
  %2464 = phi float [ %2461, %2445 ], [ %2439, %2436 ]
  %2465 = add nuw nsw i32 %2437, 1
  %2466 = icmp eq i32 %2465, 16
  br i1 %2466, label %2467, label %2436

; <label>:2467                                    ; preds = %2462
  %2468 = fadd fast float %2464, %2463
  %2469 = fmul fast float %2468, 5.000000e-01
  %2470 = fcmp fast ogt float %2469, 9.765625e-04
  %2471 = fcmp fast ogt float %2469, %2279
  %2472 = and i1 %2470, %2471
  br i1 %2472, label %2473, label %2478, !dx.controlflow.hints !54

; <label>:2473                                    ; preds = %2467
  %2474 = fsub fast float %2463, %2464
  %2475 = fmul fast float %2432, 5.000000e-01
  %2476 = fmul fast float %2475, %2474
  %2477 = fadd fast float %2476, %2433
  br label %2478

; <label>:2478                                    ; preds = %2473, %2467, %2423
  %2479 = phi float [ %2279, %2467 ], [ %2279, %2423 ], [ %2469, %2473 ]
  %2480 = phi i32 [ %2280, %2467 ], [ %2280, %2423 ], [ %2291, %2473 ]
  %2481 = phi float [ %2281, %2467 ], [ %2281, %2423 ], [ %2469, %2473 ]
  %2482 = phi float [ %2282, %2467 ], [ %2282, %2423 ], [ %2430, %2473 ]
  %2483 = phi float [ %2283, %2467 ], [ %2283, %2423 ], [ %2431, %2473 ]
  %2484 = phi float [ %2284, %2467 ], [ %2284, %2423 ], [ %2432, %2473 ]
  %2485 = phi float [ %2285, %2467 ], [ %2285, %2423 ], [ %2477, %2473 ]
  %2486 = add nuw nsw i32 %2278, 1
  %2487 = icmp eq i32 %2486, 4
  br i1 %2487, label %2488, label %2277

; <label>:2488                                    ; preds = %2478
  br label %2489

; <label>:2489                                    ; preds = %2488, %2268
  %2490 = phi float [ %2269, %2268 ], [ %2479, %2488 ]
  %2491 = phi i32 [ %2270, %2268 ], [ %2480, %2488 ]
  %2492 = phi float [ %2269, %2268 ], [ %2481, %2488 ]
  %2493 = phi float [ %2271, %2268 ], [ %2482, %2488 ]
  %2494 = phi float [ %2272, %2268 ], [ %2483, %2488 ]
  %2495 = phi float [ %2273, %2268 ], [ %2484, %2488 ]
  %2496 = phi float [ %2274, %2268 ], [ %2485, %2488 ]
  %2497 = fcmp fast oeq float %2490, 0.000000e+00
  br i1 %2497, label %2498, label %2698, !dx.controlflow.hints !59

; <label>:2498                                    ; preds = %2489
  br label %2499

; <label>:2499                                    ; preds = %2694, %2498
  %2500 = phi i32 [ %2696, %2694 ], [ 3, %2498 ]
  %2501 = phi i32 [ %2692, %2694 ], [ 0, %2498 ]
  %2502 = phi float [ %2685, %2694 ], [ %2490, %2498 ]
  %2503 = phi i32 [ %2686, %2694 ], [ %2491, %2498 ]
  %2504 = phi float [ %2687, %2694 ], [ %2492, %2498 ]
  %2505 = phi float [ %2688, %2694 ], [ %2493, %2498 ]
  %2506 = phi float [ %2689, %2694 ], [ %2494, %2498 ]
  %2507 = phi float [ %2690, %2694 ], [ %2495, %2498 ]
  %2508 = phi float [ %2691, %2694 ], [ %2496, %2498 ]
  %2509 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2500)  ; FirstbitLo(value)
  %2510 = shl i32 %2509, 2
  %2511 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2500)  ; FirstbitHi(value)
  %2512 = sub i32 31, %2511
  %2513 = icmp eq i32 %2511, -1
  %2514 = shl i32 %2512, 2
  %2515 = select i1 %2513, i32 -4, i32 %2514
  %2516 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2510
  %2517 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2510
  %2518 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2510
  %2519 = load float, float* %2516, align 4
  %2520 = load float, float* %2517, align 4
  %2521 = load float, float* %2518, align 4
  %2522 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2515
  %2523 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2515
  %2524 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2515
  %2525 = load float, float* %2522, align 4
  %2526 = load float, float* %2523, align 4
  %2527 = load float, float* %2524, align 4
  %2528 = fsub fast float %2525, %2519
  %2529 = fsub fast float %2526, %2520
  %2530 = fsub fast float %2527, %2521
  %2531 = fsub fast float -0.000000e+00, %2529
  %2532 = fmul fast float %2530, %2528
  %2533 = fsub fast float -0.000000e+00, %2532
  %2534 = fmul fast float %2530, %2531
  %2535 = fmul fast float %2528, %2528
  %2536 = fmul fast float %2529, %2531
  %2537 = fsub fast float %2535, %2536
  %2538 = call float @dx.op.dot3.f32(i32 55, float %2533, float %2534, float %2537, float %2533, float %2534, float %2537)  ; Dot3(ax,ay,az,bx,by,bz)
  %2539 = call float @dx.op.unary.f32(i32 25, float %2538)  ; Rsqrt(value)
  %2540 = fmul fast float %2539, %2533
  %2541 = fmul fast float %2534, %2539
  %2542 = fmul fast float %2537, %2539
  %2543 = fcmp fast ogt float %2542, 0.000000e+00
  %2544 = fcmp fast olt float %2542, 0.000000e+00
  %2545 = zext i1 %2543 to i32
  %2546 = zext i1 %2544 to i32
  %2547 = sub nsw i32 %2545, %2546
  %2548 = sitofp i32 %2547 to float
  %2549 = fmul fast float %2540, %2548
  %2550 = fmul fast float %2541, %2548
  %2551 = fmul fast float %2548, %2542
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2550, float %2551, float %2519, float %2520, float %2521)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %2553

; <label>:2553                                    ; preds = %2626, %2499
  %2554 = phi i32 [ 0, %2499 ], [ %2627, %2626 ]
  %2555 = phi float [ %2549, %2499 ], [ %2614, %2626 ]
  %2556 = phi float [ %2550, %2499 ], [ %2615, %2626 ]
  %2557 = phi float [ %2551, %2499 ], [ %2616, %2626 ]
  %2558 = phi float [ %2552, %2499 ], [ %2617, %2626 ]
  br label %2559

; <label>:2559                                    ; preds = %2559, %2553
  %2560 = phi i32 [ 0, %2553 ], [ %2593, %2559 ]
  %2561 = phi float [ 0.000000e+00, %2553 ], [ %2589, %2559 ]
  %2562 = phi float [ 0.000000e+00, %2553 ], [ %2590, %2559 ]
  %2563 = phi float [ 0.000000e+00, %2553 ], [ %2591, %2559 ]
  %2564 = phi float [ 0.000000e+00, %2553 ], [ %2592, %2559 ]
  %2565 = lshr i32 %2560, 2
  %2566 = and i32 %2565, 31
  %2567 = lshr i32 %2500, %2566
  %2568 = and i32 %2567, 1
  %2569 = uitofp i32 %2568 to float
  %2570 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2560
  %2571 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2560
  %2572 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2560
  %2573 = load float, float* %2570, align 4
  %2574 = load float, float* %2571, align 4
  %2575 = load float, float* %2572, align 4
  %2576 = call float @dx.op.dot3.f32(i32 55, float %2573, float %2574, float %2575, float %2555, float %2556, float %2557)  ; Dot3(ax,ay,az,bx,by,bz)
  %2577 = fsub fast float %2576, %2558
  %2578 = fmul fast float %2577, %2575
  %2579 = fcmp fast olt float %2557, 0.000000e+00
  %2580 = fmul fast float %2557, -1.250000e-01
  %2581 = select i1 %2579, float %2580, float 0.000000e+00
  %2582 = fadd fast float %2578, %2581
  %2583 = fmul fast float %2569, %2573
  %2584 = fmul fast float %2583, %2577
  %2585 = fmul fast float %2574, %2569
  %2586 = fmul fast float %2585, %2577
  %2587 = fmul fast float %2582, %2569
  %2588 = fmul fast float %2577, %2569
  %2589 = fadd fast float %2584, %2561
  %2590 = fadd fast float %2586, %2562
  %2591 = fadd fast float %2587, %2563
  %2592 = fsub fast float %2564, %2588
  %2593 = add nuw nsw i32 %2560, 1
  %2594 = icmp eq i32 %2593, 16
  br i1 %2594, label %2595, label %2559

; <label>:2595                                    ; preds = %2559
  %2596 = uitofp i32 %2554 to float
  %2597 = fmul fast float %2596, 0x3F49930BE0000000
  %2598 = fsub fast float 0x3FA99999A0000000, %2597
  %2599 = fmul fast float %2589, %2598
  %2600 = fmul fast float %2590, %2598
  %2601 = fmul fast float %2591, %2598
  %2602 = fmul fast float %2592, %2598
  %2603 = fsub fast float %2555, %2599
  %2604 = fsub fast float %2556, %2600
  %2605 = fsub fast float %2557, %2601
  %2606 = fsub fast float %2558, %2602
  %2607 = fmul fast float %2603, %2603
  %2608 = fmul fast float %2604, %2604
  %2609 = fadd fast float %2607, %2608
  %2610 = fmul fast float %2605, %2605
  %2611 = fadd fast float %2609, %2610
  %2612 = call float @dx.op.unary.f32(i32 24, float %2611)  ; Sqrt(value)
  %2613 = fdiv fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2603
  %2615 = fmul fast float %2613, %2604
  %2616 = fmul fast float %2613, %2605
  %2617 = fmul fast float %2613, %2606
  %2618 = call float @dx.op.unary.f32(i32 6, float %2592)  ; FAbs(value)
  %2619 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2620 = call float @dx.op.binary.f32(i32 35, float %2619, float %2618)  ; FMax(a,b)
  %2621 = call float @dx.op.unary.f32(i32 6, float %2590)  ; FAbs(value)
  %2622 = call float @dx.op.unary.f32(i32 6, float %2589)  ; FAbs(value)
  %2623 = call float @dx.op.binary.f32(i32 35, float %2622, float %2621)  ; FMax(a,b)
  %2624 = call float @dx.op.binary.f32(i32 35, float %2623, float %2620)  ; FMax(a,b)
  %2625 = fcmp fast ugt float %2624, 0x3E7AD7F2A0000000
  br i1 %2625, label %2626, label %2629, !dx.controlflow.hints !46

; <label>:2626                                    ; preds = %2595
  %2627 = add nuw nsw i32 %2554, 1
  %2628 = icmp ult i32 %2627, 64
  br i1 %2628, label %2553, label %2629

; <label>:2629                                    ; preds = %2626, %2595
  %2630 = fcmp fast ogt float %2616, 0.000000e+00
  %2631 = fcmp fast olt float %2616, 0.000000e+00
  %2632 = zext i1 %2630 to i32
  %2633 = zext i1 %2631 to i32
  %2634 = sub nsw i32 %2632, %2633
  %2635 = sitofp i32 %2634 to float
  %2636 = fmul fast float %2635, %2614
  %2637 = fmul fast float %2635, %2615
  %2638 = fmul fast float %2635, %2616
  %2639 = fmul fast float %2635, %2617
  %2640 = fcmp fast ogt float %2638, 0.000000e+00
  br i1 %2640, label %2641, label %2684, !dx.controlflow.hints !47

; <label>:2641                                    ; preds = %2629
  br label %2642

; <label>:2642                                    ; preds = %2668, %2641
  %2643 = phi i32 [ %2671, %2668 ], [ 0, %2641 ]
  %2644 = phi float [ %2669, %2668 ], [ 1.048576e+06, %2641 ]
  %2645 = phi float [ %2670, %2668 ], [ 1.048576e+06, %2641 ]
  %2646 = lshr i32 %2643, 2
  %2647 = and i32 %2646, 31
  %2648 = shl i32 1, %2647
  %2649 = and i32 %2648, %2500
  %2650 = icmp eq i32 %2649, 0
  br i1 %2650, label %2668, label %2651, !dx.controlflow.hints !48

; <label>:2651                                    ; preds = %2642
  %2652 = getelementptr [16 x float], [16 x float]* %10, i32 0, i32 %2643
  %2653 = load float, float* %2652, align 4
  %2654 = getelementptr [16 x float], [16 x float]* %8, i32 0, i32 %2643
  %2655 = getelementptr [16 x float], [16 x float]* %9, i32 0, i32 %2643
  %2656 = load float, float* %2654, align 4
  %2657 = load float, float* %2655, align 4
  %2658 = call float @dx.op.dot2.f32(i32 54, float %2636, float %2637, float %2656, float %2657)  ; Dot2(ax,ay,bx,by)
  %2659 = fsub fast float %2639, %2658
  %2660 = fdiv fast float %2659, %2638
  %2661 = fsub fast float %2653, %2660
  %2662 = getelementptr inbounds [4 x float], [4 x float]* %11, i32 0, i32 %2646
  %2663 = load float, float* %2662, align 4, !tbaa !25, !noalias !60
  %2664 = fadd fast float %2663, %2661
  %2665 = fsub fast float %2663, %2661
  %2666 = call float @dx.op.binary.f32(i32 36, float %2644, float %2664)  ; FMin(a,b)
  %2667 = call float @dx.op.binary.f32(i32 36, float %2645, float %2665)  ; FMin(a,b)
  br label %2668

; <label>:2668                                    ; preds = %2651, %2642
  %2669 = phi float [ %2666, %2651 ], [ %2644, %2642 ]
  %2670 = phi float [ %2667, %2651 ], [ %2645, %2642 ]
  %2671 = add nuw nsw i32 %2643, 1
  %2672 = icmp eq i32 %2671, 16
  br i1 %2672, label %2673, label %2642

; <label>:2673                                    ; preds = %2668
  %2674 = fadd fast float %2670, %2669
  %2675 = fmul fast float %2674, 5.000000e-01
  %2676 = fcmp fast ogt float %2675, 9.765625e-04
  %2677 = fcmp fast ogt float %2675, %2502
  %2678 = and i1 %2676, %2677
  br i1 %2678, label %2679, label %2684, !dx.controlflow.hints !54

; <label>:2679                                    ; preds = %2673
  %2680 = fsub fast float %2669, %2670
  %2681 = fmul fast float %2638, 5.000000e-01
  %2682 = fmul fast float %2681, %2680
  %2683 = fadd fast float %2682, %2639
  br label %2684

; <label>:2684                                    ; preds = %2679, %2673, %2629
  %2685 = phi float [ %2502, %2673 ], [ %2502, %2629 ], [ %2675, %2679 ]
  %2686 = phi i32 [ %2503, %2673 ], [ %2503, %2629 ], [ %2500, %2679 ]
  %2687 = phi float [ %2504, %2673 ], [ %2504, %2629 ], [ %2675, %2679 ]
  %2688 = phi float [ %2505, %2673 ], [ %2505, %2629 ], [ %2636, %2679 ]
  %2689 = phi float [ %2506, %2673 ], [ %2506, %2629 ], [ %2637, %2679 ]
  %2690 = phi float [ %2507, %2673 ], [ %2507, %2629 ], [ %2638, %2679 ]
  %2691 = phi float [ %2508, %2673 ], [ %2508, %2629 ], [ %2683, %2679 ]
  %2692 = add nuw nsw i32 %2501, 1
  %2693 = icmp eq i32 %2692, 6
  br i1 %2693, label %2697, label %2694

; <label>:2694                                    ; preds = %2684
  %2695 = getelementptr inbounds [6 x i32], [6 x i32]* @localEnclosedFlags.i.i.i.hca, i32 0, i32 %2692
  %2696 = load i32, i32* %2695, align 4, !tbaa !35, !noalias !63
  br label %2499

; <label>:2697                                    ; preds = %2684
  br label %2698

; <label>:2698                                    ; preds = %2697, %2489
  %2699 = phi float [ %2490, %2489 ], [ %2685, %2697 ]
  %2700 = phi i32 [ %2491, %2489 ], [ %2686, %2697 ]
  %2701 = phi float [ %2492, %2489 ], [ %2687, %2697 ]
  %2702 = phi float [ %2493, %2489 ], [ %2688, %2697 ]
  %2703 = phi float [ %2494, %2489 ], [ %2689, %2697 ]
  %2704 = phi float [ %2495, %2489 ], [ %2690, %2697 ]
  %2705 = phi float [ %2496, %2489 ], [ %2691, %2697 ]
  %2706 = fcmp fast ogt float %2699, 0.000000e+00
  br i1 %2706, label %2707, label %2715, !dx.controlflow.hints !64

; <label>:2707                                    ; preds = %2698
  %2708 = call float @dx.op.dot2.f32(i32 54, float %2702, float %2703, float %1422, float %1423)  ; Dot2(ax,ay,bx,by)
  %2709 = fmul fast float %2708, %1433
  %2710 = fmul fast float %2704, %1613
  %2711 = fadd fast float %2710, %2705
  %2712 = fmul fast float %2711, %1435
  %2713 = fadd fast float %2712, %2709
  %2714 = fmul fast float %2701, %1435
  br label %2733

; <label>:2715                                    ; preds = %2698
  %2716 = fcmp fast ogt float %1494, %1448
  %2717 = zext i1 %2716 to i32
  %2718 = select i1 %2716, float %1494, float %1448
  %2719 = fcmp fast ogt float %1541, %2718
  %2720 = select i1 %2719, i32 2, i32 %2717
  %2721 = select i1 %2719, float %1541, float %2718
  %2722 = fcmp fast ogt float %1583, %2721
  %2723 = select i1 %2722, i32 3, i32 %2720
  %2724 = add i32 %2723, %1428
  %2725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %2724, i32 0)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2729 = extractvalue %dx.types.ResRet.f32 %2725, 3
  %2730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %2724, i32 16)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = shl i32 1, %2723
  br label %2733

; <label>:2733                                    ; preds = %2715, %2707
  %2734 = phi float [ %2702, %2707 ], [ %2726, %2715 ]
  %2735 = phi float [ %2703, %2707 ], [ %2727, %2715 ]
  %2736 = phi float [ %2704, %2707 ], [ %2728, %2715 ]
  %2737 = phi float [ %2713, %2707 ], [ %2729, %2715 ]
  %2738 = phi float [ %2714, %2707 ], [ %2731, %2715 ]
  %2739 = phi i32 [ %2700, %2707 ], [ %2732, %2715 ]
  %2740 = and i32 %2739, 1
  %2741 = icmp eq i32 %2740, 0
  br i1 %2741, label %2750, label %2742, !dx.controlflow.hints !65

; <label>:2742                                    ; preds = %2733
  %2743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1428, i32 20)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.i32 %2743, 0
  %2745 = or i32 %2744, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1428, i32 20, i32 %2745, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1428, i32 20)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = lshr i32 %2747, 1
  %2749 = and i32 %2748, 1
  br label %2750

; <label>:2750                                    ; preds = %2742, %2733
  %2751 = phi i32 [ 0, %2733 ], [ %2749, %2742 ]
  %2752 = and i32 %2739, 2
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2762, label %2754, !dx.controlflow.hints !65

; <label>:2754                                    ; preds = %2750
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1482, i32 20)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = or i32 %2756, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1482, i32 20, i32 %2757, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1482, i32 20)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = and i32 %2759, 2
  %2761 = or i32 %2760, %2751
  br label %2762

; <label>:2762                                    ; preds = %2754, %2750
  %2763 = phi i32 [ %2751, %2750 ], [ %2761, %2754 ]
  %2764 = and i32 %2739, 4
  %2765 = icmp eq i32 %2764, 0
  br i1 %2765, label %2775, label %2766, !dx.controlflow.hints !65

; <label>:2766                                    ; preds = %2762
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1529, i32 20)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = or i32 %2768, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1529, i32 20, i32 %2769, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1529, i32 20)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = shl i32 %2771, 1
  %2773 = and i32 %2772, 4
  %2774 = or i32 %2773, %2763
  br label %2775

; <label>:2775                                    ; preds = %2766, %2762
  %2776 = phi i32 [ %2763, %2762 ], [ %2774, %2766 ]
  %2777 = and i32 %2739, 8
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2788, label %2779, !dx.controlflow.hints !65

; <label>:2779                                    ; preds = %2775
  %2780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1571, i32 20)  ; BufferLoad(srv,index,wot)
  %2781 = extractvalue %dx.types.ResRet.i32 %2780, 0
  %2782 = or i32 %2781, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1571, i32 20, i32 %2782, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1571, i32 20)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = shl i32 %2784, 2
  %2786 = and i32 %2785, 8
  %2787 = or i32 %2786, %2776
  br label %2788

; <label>:2788                                    ; preds = %2779, %2775
  %2789 = phi i32 [ %2776, %2775 ], [ %2787, %2779 ]
  %2790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.i32 %2790, 2
  %2792 = add i32 %2791, %6
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %2792, i32 0, float %2734, float %2735, float %2736, float %2737, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %2792, i32 16, float %2738, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2793 = icmp eq i32 %2789, 15
  %2794 = select i1 %2793, i32 2, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2792, i32 20, i32 %2794, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2795

; <label>:2795                                    ; preds = %2788, %1363, %0
  ret void

; <label>:2796                                    ; preds = %1316
  %2797 = call float @dx.op.dot2.f32(i32 54, float %1300, float %1301, float 7.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %2798 = fsub fast float %1303, %2797
  %2799 = fdiv fast float %2798, %1302
  %2800 = fsub fast float %247, %2799
  %2801 = fadd fast float %151, %2800
  %2802 = fsub fast float %151, %2800
  %2803 = call float @dx.op.binary.f32(i32 36, float %1317, float %2801)  ; FMin(a,b)
  %2804 = call float @dx.op.binary.f32(i32 36, float %1318, float %2802)  ; FMin(a,b)
  br label %2805

; <label>:2805                                    ; preds = %2796, %1316
  %2806 = phi float [ %2803, %2796 ], [ %1317, %1316 ]
  %2807 = phi float [ %2804, %2796 ], [ %1318, %1316 ]
  %2808 = and i32 %1136, 4
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2819, label %2810, !dx.controlflow.hints !33

; <label>:2810                                    ; preds = %2805
  %2811 = call float @dx.op.dot2.f32(i32 54, float %1300, float %1301, float 2.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %2812 = fsub fast float %1303, %2811
  %2813 = fdiv fast float %2812, %1302
  %2814 = fsub fast float %248, %2813
  %2815 = fadd fast float %197, %2814
  %2816 = fsub fast float %197, %2814
  %2817 = call float @dx.op.binary.f32(i32 36, float %2806, float %2815)  ; FMin(a,b)
  %2818 = call float @dx.op.binary.f32(i32 36, float %2807, float %2816)  ; FMin(a,b)
  br label %2819

; <label>:2819                                    ; preds = %2810, %2805
  %2820 = phi float [ %2817, %2810 ], [ %2806, %2805 ]
  %2821 = phi float [ %2818, %2810 ], [ %2807, %2805 ]
  %2822 = and i32 %1136, 8
  %2823 = icmp eq i32 %2822, 0
  br i1 %2823, label %2833, label %2824, !dx.controlflow.hints !33

; <label>:2824                                    ; preds = %2819
  %2825 = call float @dx.op.dot2.f32(i32 54, float %1300, float %1301, float 7.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %2826 = fsub fast float %1303, %2825
  %2827 = fdiv fast float %2826, %1302
  %2828 = fsub fast float %249, %2827
  %2829 = fadd fast float %241, %2828
  %2830 = fsub fast float %241, %2828
  %2831 = call float @dx.op.binary.f32(i32 36, float %2820, float %2829)  ; FMin(a,b)
  %2832 = call float @dx.op.binary.f32(i32 36, float %2821, float %2830)  ; FMin(a,b)
  br label %2833

; <label>:2833                                    ; preds = %2824, %2819
  %2834 = phi float [ %2831, %2824 ], [ %2820, %2819 ]
  %2835 = phi float [ %2832, %2824 ], [ %2821, %2819 ]
  %2836 = fadd fast float %2835, %2834
  %2837 = fmul fast float %2836, 5.000000e-01
  %2838 = fcmp fast ogt float %2837, 9.765625e-04
  %2839 = fcmp fast ogt float %2837, %1138
  %2840 = and i1 %2838, %2839
  br i1 %2840, label %1321, label %1326, !dx.controlflow.hints !31

; <label>:2841                                    ; preds = %1104
  %2842 = call float @dx.op.dot2.f32(i32 54, float %1088, float %1089, float 7.500000e-01, float 2.500000e-01)  ; Dot2(ax,ay,bx,by)
  %2843 = fsub fast float %1091, %2842
  %2844 = fdiv fast float %2843, %1090
  %2845 = fsub fast float %247, %2844
  %2846 = fadd fast float %151, %2845
  %2847 = fsub fast float %151, %2845
  %2848 = call float @dx.op.binary.f32(i32 36, float %1105, float %2846)  ; FMin(a,b)
  %2849 = call float @dx.op.binary.f32(i32 36, float %1106, float %2847)  ; FMin(a,b)
  br label %2850

; <label>:2850                                    ; preds = %2841, %1104
  %2851 = phi float [ %2848, %2841 ], [ %1105, %1104 ]
  %2852 = phi float [ %2849, %2841 ], [ %1106, %1104 ]
  %2853 = and i32 %919, 4
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2864, label %2855, !dx.controlflow.hints !33

; <label>:2855                                    ; preds = %2850
  %2856 = call float @dx.op.dot2.f32(i32 54, float %1088, float %1089, float 2.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %2857 = fsub fast float %1091, %2856
  %2858 = fdiv fast float %2857, %1090
  %2859 = fsub fast float %248, %2858
  %2860 = fadd fast float %197, %2859
  %2861 = fsub fast float %197, %2859
  %2862 = call float @dx.op.binary.f32(i32 36, float %2851, float %2860)  ; FMin(a,b)
  %2863 = call float @dx.op.binary.f32(i32 36, float %2852, float %2861)  ; FMin(a,b)
  br label %2864

; <label>:2864                                    ; preds = %2855, %2850
  %2865 = phi float [ %2862, %2855 ], [ %2851, %2850 ]
  %2866 = phi float [ %2863, %2855 ], [ %2852, %2850 ]
  %2867 = and i32 %919, 8
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2878, label %2869, !dx.controlflow.hints !33

; <label>:2869                                    ; preds = %2864
  %2870 = call float @dx.op.dot2.f32(i32 54, float %1088, float %1089, float 7.500000e-01, float 7.500000e-01)  ; Dot2(ax,ay,bx,by)
  %2871 = fsub fast float %1091, %2870
  %2872 = fdiv fast float %2871, %1090
  %2873 = fsub fast float %249, %2872
  %2874 = fadd fast float %241, %2873
  %2875 = fsub fast float %241, %2873
  %2876 = call float @dx.op.binary.f32(i32 36, float %2865, float %2874)  ; FMin(a,b)
  %2877 = call float @dx.op.binary.f32(i32 36, float %2866, float %2875)  ; FMin(a,b)
  br label %2878

; <label>:2878                                    ; preds = %2869, %2864
  %2879 = phi float [ %2876, %2869 ], [ %2865, %2864 ]
  %2880 = phi float [ %2877, %2869 ], [ %2866, %2864 ]
  %2881 = fadd fast float %2880, %2879
  %2882 = fmul fast float %2881, 5.000000e-01
  %2883 = fcmp fast ogt float %2882, 9.765625e-04
  %2884 = fcmp fast ogt float %2882, %908
  %2885 = and i1 %2883, %2884
  br i1 %2885, label %1109, label %1114, !dx.controlflow.hints !31
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

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
!10 = !{i32 0, %"class.RWStructuredBuffer<CSMNodePlanes>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
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
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !27, i64 0}
!37 = !{!38, !40, !42, !43}
!38 = distinct !{!38, !39, !"\01?FindBestPlane_BottomLayer@@YAXY03V?$vector@M$02@@Y03MUCsmPlaneData@@@Z: %bestPlane"}
!39 = distinct !{!39, !"\01?FindBestPlane_BottomLayer@@YAXY03V?$vector@M$02@@Y03MUCsmPlaneData@@@Z"}
!40 = distinct !{!40, !41, !"\01?FitPlane_BottomLayer@@YAXY03V?$vector@M$02@@Y03MAIAV?$vector@M$03@@AIAMAIAI@Z: %outPlane"}
!41 = distinct !{!41, !"\01?FitPlane_BottomLayer@@YAXY03V?$vector@M$02@@Y03MAIAV?$vector@M$03@@AIAMAIAI@Z"}
!42 = distinct !{!42, !41, !"\01?FitPlane_BottomLayer@@YAXY03V?$vector@M$02@@Y03MAIAV?$vector@M$03@@AIAMAIAI@Z: %outMargin"}
!43 = distinct !{!43, !41, !"\01?FitPlane_BottomLayer@@YAXY03V?$vector@M$02@@Y03MAIAV?$vector@M$03@@AIAMAIAI@Z: %outEnclosedFlags"}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = !{!40, !42, !43}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"\01?EvaluatePlane@@YAXY0BA@V?$vector@M$02@@Y03MIIIIUCsmPlaneData@@@Z: %bestPlane"}
!51 = distinct !{!51, !"\01?EvaluatePlane@@YAXY0BA@V?$vector@M$02@@Y03MIIIIUCsmPlaneData@@@Z"}
!52 = distinct !{!52, !53, !"\01?FindBestPlane@@YAXY0BA@V?$vector@M$02@@Y03MUCsmPlaneData@@@Z: %bestPlane"}
!53 = distinct !{!53, !"\01?FindBestPlane@@YAXY0BA@V?$vector@M$02@@Y03MUCsmPlaneData@@@Z"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = !{!57, !52}
!57 = distinct !{!57, !58, !"\01?EvaluatePlane@@YAXY0BA@V?$vector@M$02@@Y03MIIIIUCsmPlaneData@@@Z: %bestPlane"}
!58 = distinct !{!58, !"\01?EvaluatePlane@@YAXY0BA@V?$vector@M$02@@Y03MIIIIUCsmPlaneData@@@Z"}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = !{!61, !52}
!61 = distinct !{!61, !62, !"\01?EvaluatePlane@@YAXY0BA@V?$vector@M$02@@Y03MIIIIUCsmPlaneData@@@Z: %bestPlane"}
!62 = distinct !{!62, !"\01?EvaluatePlane@@YAXY0BA@V?$vector@M$02@@Y03MIIIIUCsmPlaneData@@@Z"}
!63 = !{!52}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}

