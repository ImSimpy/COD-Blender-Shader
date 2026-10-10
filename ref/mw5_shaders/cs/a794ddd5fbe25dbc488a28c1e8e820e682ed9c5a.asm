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
; shader hash: 42d5acaf8936d0304619533e07963ff6
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
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture  struct         r/o      T0             t3     1
;                                   texture  struct         r/o      T1             t0     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV  struct         r/w      U1             u0     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%"class.RWStructuredBuffer<StaticDecalVolumeMapIndex>" = type { %struct.StaticDecalVolumeMapIndex }
%struct.StaticDecalVolumeMapIndex = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?groupshared_globalIndexOfFirstItem@@3IA" = external addrspace(3) global i32, align 4
@.hca.3 = internal unnamed_addr constant [3 x i32] [i32 2, i32 5, i32 8]
@.hca.4 = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 7]
@.hca.5 = internal unnamed_addr constant [3 x i32] [i32 0, i32 3, i32 6]

define void @cs_decal_volume_collections_vt() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %9 = alloca [9 x float], align 4
  %10 = alloca [9 x float], align 4
  %11 = alloca [9 x float], align 4
  %12 = alloca [9 x float], align 4
  %13 = alloca [9 x float], align 4
  %14 = alloca [9 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = lshr i32 %7, 4
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %450, !dx.controlflow.hints !19

; <label>:20                                      ; preds = %0
  %21 = and i32 %7, 15
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = add i32 %23, %16
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %24, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = lshr i32 %26, 24
  %28 = icmp ult i32 %21, %27
  br i1 %28, label %29, label %450, !dx.controlflow.hints !20

; <label>:29                                      ; preds = %20
  %30 = and i32 %26, 16777215
  %31 = add nuw nsw i32 %30, %21
  %32 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %31, i32 0)  ; BufferLoad(srv,index,wot)
  %33 = extractvalue %dx.types.ResRet.f32 %32, 0
  %34 = extractvalue %dx.types.ResRet.f32 %32, 1
  %35 = extractvalue %dx.types.ResRet.f32 %32, 2
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %31, i32 12)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %31, i32 16)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %31, i32 40)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %31, i32 44)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = lshr i32 %37, 30
  %45 = and i32 %37, 1023
  %46 = uitofp i32 %45 to float
  %47 = lshr i32 %37, 10
  %48 = and i32 %47, 1023
  %49 = uitofp i32 %48 to float
  %50 = lshr i32 %37, 20
  %51 = and i32 %50, 511
  %52 = uitofp i32 %51 to float
  %53 = fmul fast float %46, 0x3F56A64800000000
  %54 = fadd fast float %53, 0xBFE6A09E60000000
  %55 = fmul fast float %49, 0x3F56A64800000000
  %56 = fadd fast float %55, 0xBFE6A09E60000000
  %57 = fmul fast float %52, 0x3F66ABF460000000
  %58 = fadd fast float %57, 0xBFE6A09E60000000
  %59 = call float @dx.op.dot3.f32(i32 55, float %54, float %56, float %58, float %54, float %56, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %60 = call float @dx.op.unary.f32(i32 7, float %59)  ; Saturate(value)
  %61 = fsub fast float 1.000000e+00, %60
  %62 = call float @dx.op.unary.f32(i32 24, float %61)  ; Sqrt(value)
  %63 = icmp eq i32 %44, 0
  br i1 %63, label %70, label %64, !dx.controlflow.hints !21

; <label>:64                                      ; preds = %29
  %65 = icmp eq i32 %44, 1
  br i1 %65, label %70, label %66, !dx.controlflow.hints !22

; <label>:66                                      ; preds = %64
  %67 = icmp eq i32 %44, 2
  %68 = select i1 %67, float %62, float %58
  %69 = select i1 %67, float %58, float %62
  br label %70

; <label>:70                                      ; preds = %66, %64, %29
  %71 = phi float [ %62, %29 ], [ %54, %64 ], [ %54, %66 ]
  %72 = phi float [ %54, %29 ], [ %62, %64 ], [ %56, %66 ]
  %73 = phi float [ %56, %29 ], [ %56, %64 ], [ %68, %66 ]
  %74 = phi float [ %58, %29 ], [ %58, %64 ], [ %69, %66 ]
  %75 = and i32 %41, 512
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %76, float 1.000000e+00, float -1.000000e+00
  %78 = and i32 %41, 1024
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %79, float -1.000000e+00, float 1.000000e+00
  %81 = fmul fast float %77, %80
  %82 = lshr i32 %43, 16
  %83 = and i32 %82, 255
  %84 = extractvalue %dx.types.CBufRet.i32 %22, 3
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %450, label %86, !dx.controlflow.hints !23

; <label>:86                                      ; preds = %70
  %87 = fmul fast float %71, 2.000000e+00
  %88 = fmul fast float %87, %73
  %89 = fmul fast float %72, 2.000000e+00
  %90 = fmul fast float %89, %74
  %91 = fsub fast float %88, %90
  %92 = fmul fast float %91, %81
  %93 = fmul fast float %72, %71
  %94 = fmul fast float %74, %73
  %95 = fadd fast float %94, %93
  %96 = fmul fast float %72, %72
  %97 = fmul fast float %96, 2.000000e+00
  %98 = fsub fast float 1.000000e+00, %97
  %99 = fmul fast float %73, %73
  %100 = fmul fast float %99, 2.000000e+00
  %101 = fsub fast float %98, %100
  %102 = fmul fast float %101, %81
  %103 = fmul fast float %71, %71
  %104 = fmul fast float %103, 2.000000e+00
  %105 = fsub fast float 1.000000e+00, %104
  %106 = fsub fast float %105, %97
  %107 = fmul fast float %73, %72
  %108 = fmul fast float %74, %71
  %109 = fadd fast float %108, %107
  %110 = fmul fast float %109, 2.000000e+00
  %111 = fmul fast float %89, %73
  %112 = fmul fast float %87, %74
  %113 = fsub fast float %111, %112
  %114 = fsub fast float %105, %100
  %115 = fmul fast float %73, %71
  %116 = fmul fast float %74, %72
  %117 = fadd fast float %116, %115
  %118 = fmul fast float %117, 2.000000e+00
  %119 = fmul fast float %87, %72
  %120 = fmul fast float %73, 2.000000e+00
  %121 = fmul fast float %120, %74
  %122 = fsub fast float %119, %121
  %123 = lshr i32 %39, 22
  %124 = shl nuw nsw i32 %123, 5
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124)  ; LegacyF16ToF32(value)
  %126 = lshr i32 %39, 7
  %127 = and i32 %126, 32752
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127)  ; LegacyF16ToF32(value)
  %129 = shl i32 %39, 4
  %130 = and i32 %129, 32752
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fmul fast float %133, %131
  %137 = fmul fast float %134, %128
  %138 = fmul fast float %135, %125
  %139 = fmul fast float %102, %136
  %140 = fmul fast float %81, 2.000000e+00
  %141 = fmul fast float %140, %95
  %142 = fmul fast float %141, %136
  %143 = fmul fast float %92, %136
  %144 = fmul fast float %137, %122
  %145 = fmul fast float %137, %114
  %146 = fmul fast float %110, %137
  %147 = fmul fast float %118, %138
  %148 = fmul fast float %138, %113
  %149 = fmul fast float %138, %106
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %450, label %153

; <label>:153                                     ; preds = %86
  br label %154

; <label>:154                                     ; preds = %443, %153
  %155 = phi i32 [ %444, %443 ], [ 0, %153 ]
  %156 = fmul fast float %139, %139
  %157 = fmul fast float %142, %142
  %158 = fadd fast float %156, %157
  %159 = fmul fast float %143, %143
  %160 = fadd fast float %158, %159
  %161 = call float @dx.op.unary.f32(i32 24, float %160)  ; Sqrt(value)
  %162 = fmul fast float %144, %144
  %163 = fmul fast float %145, %145
  %164 = fadd fast float %162, %163
  %165 = fmul fast float %146, %146
  %166 = fadd fast float %164, %165
  %167 = call float @dx.op.unary.f32(i32 24, float %166)  ; Sqrt(value)
  %168 = fmul fast float %161, 4.000000e+00
  %169 = fmul fast float %168, %167
  %170 = add i32 %155, 69
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %170)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %173 = fcmp fast olt float %169, %172
  br i1 %173, label %443, label %174, !dx.controlflow.hints !24

; <label>:174                                     ; preds = %154
  %175 = add i32 %155, 49
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %175)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %171, 0
  %181 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %182 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %183 = fmul fast float %147, %147
  %184 = fmul fast float %148, %148
  %185 = fadd fast float %183, %184
  %186 = fmul fast float %149, %149
  %187 = fadd fast float %185, %186
  %188 = call float @dx.op.unary.f32(i32 24, float %187)  ; Sqrt(value)
  %189 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 0
  store float %161, float* %189, align 4
  %190 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 1
  store float %167, float* %190, align 4
  %191 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 2
  store float %188, float* %191, align 4
  %192 = fdiv fast float %139, %161
  %193 = fdiv fast float %142, %161
  %194 = fdiv fast float %143, %161
  %195 = fdiv fast float %144, %167
  %196 = fdiv fast float %145, %167
  %197 = fdiv fast float %146, %167
  %198 = fdiv fast float %147, %188
  %199 = fdiv fast float %148, %188
  %200 = fdiv fast float %149, %188
  %201 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %202 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %203 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %204 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %205 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %206 = call float @dx.op.unary.f32(i32 6, float %199)  ; FAbs(value)
  %207 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %208 = call float @dx.op.unary.f32(i32 6, float %197)  ; FAbs(value)
  %209 = call float @dx.op.unary.f32(i32 6, float %200)  ; FAbs(value)
  %210 = fsub fast float %33, %177
  %211 = fsub fast float %34, %178
  %212 = fsub fast float %35, %179
  %213 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %214 = call float @dx.op.dot3.f32(i32 55, float %161, float %167, float %188, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = fadd fast float %214, %180
  %216 = fcmp fast ogt float %213, %215
  br i1 %216, label %441, label %217, !dx.controlflow.hints !25

; <label>:217                                     ; preds = %174
  %218 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %219 = call float @dx.op.dot3.f32(i32 55, float %161, float %167, float %188, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = fadd fast float %219, %181
  %221 = fcmp fast ogt float %218, %220
  br i1 %221, label %441, label %559, !dx.controlflow.hints !25

; <label>:222                                     ; preds = %564, %319
  %223 = phi float [ %321, %319 ], [ %161, %564 ]
  %224 = phi i32 [ %317, %319 ], [ 0, %564 ]
  %225 = getelementptr [3 x i32], [3 x i32]* @.hca.5, i32 0, i32 %224
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 0
  store float %192, float* %227, align 4
  %228 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 1
  store float %193, float* %228, align 4
  %229 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 2
  store float %194, float* %229, align 4
  %230 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 3
  store float %195, float* %230, align 4
  %231 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 4
  store float %196, float* %231, align 4
  %232 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 5
  store float %197, float* %232, align 4
  %233 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 6
  store float %198, float* %233, align 4
  %234 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 7
  store float %199, float* %234, align 4
  %235 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 8
  store float %200, float* %235, align 4
  %236 = getelementptr [9 x float], [9 x float]* %14, i32 0, i32 %226
  %237 = load float, float* %236, align 4
  %238 = fmul fast float %237, %210
  %239 = getelementptr [3 x i32], [3 x i32]* @.hca.4, i32 0, i32 %224
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 0
  store float %192, float* %241, align 4
  %242 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 1
  store float %193, float* %242, align 4
  %243 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 2
  store float %194, float* %243, align 4
  %244 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 3
  store float %195, float* %244, align 4
  %245 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 4
  store float %196, float* %245, align 4
  %246 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 5
  store float %197, float* %246, align 4
  %247 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 6
  store float %198, float* %247, align 4
  %248 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 7
  store float %199, float* %248, align 4
  %249 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 8
  store float %200, float* %249, align 4
  %250 = getelementptr [9 x float], [9 x float]* %13, i32 0, i32 %240
  %251 = load float, float* %250, align 4
  %252 = fmul fast float %251, %211
  %253 = fadd fast float %252, %238
  %254 = getelementptr [3 x i32], [3 x i32]* @.hca.3, i32 0, i32 %224
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 0
  store float %192, float* %256, align 4
  %257 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 1
  store float %193, float* %257, align 4
  %258 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 2
  store float %194, float* %258, align 4
  %259 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 3
  store float %195, float* %259, align 4
  %260 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 4
  store float %196, float* %260, align 4
  %261 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 5
  store float %197, float* %261, align 4
  %262 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 6
  store float %198, float* %262, align 4
  %263 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 7
  store float %199, float* %263, align 4
  %264 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 8
  store float %200, float* %264, align 4
  %265 = getelementptr [9 x float], [9 x float]* %12, i32 0, i32 %255
  %266 = load float, float* %265, align 4
  %267 = fmul fast float %266, %212
  %268 = fadd fast float %253, %267
  %269 = call float @dx.op.unary.f32(i32 6, float %268)  ; FAbs(value)
  %270 = getelementptr [3 x i32], [3 x i32]* @.hca.5, i32 0, i32 %224
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 0
  store float %201, float* %272, align 4
  %273 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 1
  store float %204, float* %273, align 4
  %274 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 2
  store float %207, float* %274, align 4
  %275 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 3
  store float %202, float* %275, align 4
  %276 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 4
  store float %205, float* %276, align 4
  %277 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 5
  store float %208, float* %277, align 4
  %278 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 6
  store float %203, float* %278, align 4
  %279 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 7
  store float %206, float* %279, align 4
  %280 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 8
  store float %209, float* %280, align 4
  %281 = getelementptr [9 x float], [9 x float]* %11, i32 0, i32 %271
  %282 = load float, float* %281, align 4
  %283 = fmul fast float %282, %180
  %284 = getelementptr [3 x i32], [3 x i32]* @.hca.4, i32 0, i32 %224
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 0
  store float %201, float* %286, align 4
  %287 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 1
  store float %204, float* %287, align 4
  %288 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 2
  store float %207, float* %288, align 4
  %289 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 3
  store float %202, float* %289, align 4
  %290 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 4
  store float %205, float* %290, align 4
  %291 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 5
  store float %208, float* %291, align 4
  %292 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 6
  store float %203, float* %292, align 4
  %293 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 7
  store float %206, float* %293, align 4
  %294 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 8
  store float %209, float* %294, align 4
  %295 = getelementptr [9 x float], [9 x float]* %10, i32 0, i32 %285
  %296 = load float, float* %295, align 4
  %297 = fmul fast float %296, %181
  %298 = fadd fast float %297, %283
  %299 = getelementptr [3 x i32], [3 x i32]* @.hca.3, i32 0, i32 %224
  %300 = load i32, i32* %299, align 4
  %301 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 0
  store float %201, float* %301, align 4
  %302 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 1
  store float %204, float* %302, align 4
  %303 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 2
  store float %207, float* %303, align 4
  %304 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 3
  store float %202, float* %304, align 4
  %305 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 4
  store float %205, float* %305, align 4
  %306 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 5
  store float %208, float* %306, align 4
  %307 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 6
  store float %203, float* %307, align 4
  %308 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 7
  store float %206, float* %308, align 4
  %309 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 8
  store float %209, float* %309, align 4
  %310 = getelementptr [9 x float], [9 x float]* %9, i32 0, i32 %300
  %311 = load float, float* %310, align 4
  %312 = fmul fast float %311, %182
  %313 = fadd fast float %298, %312
  %314 = fadd fast float %313, %223
  %315 = fcmp fast ogt float %269, %314
  br i1 %315, label %440, label %316, !dx.controlflow.hints !26

; <label>:316                                     ; preds = %222
  %317 = add nuw nsw i32 %224, 1
  %318 = icmp slt i32 %317, 3
  br i1 %318, label %319, label %322

; <label>:319                                     ; preds = %316
  %320 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %317
  %321 = load float, float* %320, align 4, !tbaa !27, !noalias !31
  br label %222

; <label>:322                                     ; preds = %316
  %323 = fmul fast float %193, %212
  %324 = fmul fast float %194, %211
  %325 = fsub fast float %323, %324
  %326 = call float @dx.op.unary.f32(i32 6, float %325)  ; FAbs(value)
  %327 = fmul fast float %207, %181
  %328 = fmul fast float %204, %182
  %329 = fmul fast float %167, %203
  %330 = fmul fast float %188, %202
  %331 = fadd fast float %327, %328
  %332 = fadd fast float %331, %329
  %333 = fadd fast float %332, %330
  %334 = fcmp fast ogt float %326, %333
  br i1 %334, label %441, label %335, !dx.controlflow.hints !34

; <label>:335                                     ; preds = %322
  %336 = fmul fast float %196, %212
  %337 = fmul fast float %197, %211
  %338 = fsub fast float %336, %337
  %339 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %340 = fmul fast float %208, %181
  %341 = fmul fast float %205, %182
  %342 = fmul fast float %161, %203
  %343 = fmul fast float %188, %201
  %344 = fadd fast float %340, %341
  %345 = fadd fast float %344, %342
  %346 = fadd fast float %345, %343
  %347 = fcmp fast ogt float %339, %346
  br i1 %347, label %441, label %348, !dx.controlflow.hints !35

; <label>:348                                     ; preds = %335
  %349 = fmul fast float %199, %212
  %350 = fmul fast float %200, %211
  %351 = fsub fast float %349, %350
  %352 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %353 = fmul fast float %209, %181
  %354 = fmul fast float %206, %182
  %355 = fmul fast float %161, %202
  %356 = fmul fast float %167, %201
  %357 = fadd fast float %353, %354
  %358 = fadd fast float %357, %355
  %359 = fadd fast float %358, %356
  %360 = fcmp fast ogt float %352, %359
  br i1 %360, label %441, label %361, !dx.controlflow.hints !36

; <label>:361                                     ; preds = %348
  %362 = fmul fast float %194, %210
  %363 = fmul fast float %192, %212
  %364 = fsub fast float %362, %363
  %365 = call float @dx.op.unary.f32(i32 6, float %364)  ; FAbs(value)
  %366 = fmul fast float %207, %180
  %367 = fmul fast float %201, %182
  %368 = fmul fast float %167, %206
  %369 = fmul fast float %188, %205
  %370 = fadd fast float %366, %367
  %371 = fadd fast float %370, %368
  %372 = fadd fast float %371, %369
  %373 = fcmp fast ogt float %365, %372
  br i1 %373, label %441, label %374, !dx.controlflow.hints !37

; <label>:374                                     ; preds = %361
  %375 = fmul fast float %197, %210
  %376 = fmul fast float %195, %212
  %377 = fsub fast float %375, %376
  %378 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %379 = fmul fast float %208, %180
  %380 = fmul fast float %202, %182
  %381 = fmul fast float %161, %206
  %382 = fmul fast float %188, %204
  %383 = fadd fast float %379, %380
  %384 = fadd fast float %383, %381
  %385 = fadd fast float %384, %382
  %386 = fcmp fast ogt float %378, %385
  br i1 %386, label %441, label %387, !dx.controlflow.hints !38

; <label>:387                                     ; preds = %374
  %388 = fmul fast float %200, %210
  %389 = fmul fast float %198, %212
  %390 = fsub fast float %388, %389
  %391 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %392 = fmul fast float %209, %180
  %393 = fmul fast float %203, %182
  %394 = fmul fast float %161, %205
  %395 = fmul fast float %167, %204
  %396 = fadd fast float %392, %393
  %397 = fadd fast float %396, %394
  %398 = fadd fast float %397, %395
  %399 = fcmp fast ogt float %391, %398
  br i1 %399, label %441, label %400, !dx.controlflow.hints !39

; <label>:400                                     ; preds = %387
  %401 = fmul fast float %192, %211
  %402 = fmul fast float %193, %210
  %403 = fsub fast float %401, %402
  %404 = call float @dx.op.unary.f32(i32 6, float %403)  ; FAbs(value)
  %405 = fmul fast float %204, %180
  %406 = fmul fast float %201, %181
  %407 = fmul fast float %167, %209
  %408 = fmul fast float %188, %208
  %409 = fadd fast float %405, %406
  %410 = fadd fast float %409, %407
  %411 = fadd fast float %410, %408
  %412 = fcmp fast ogt float %404, %411
  br i1 %412, label %441, label %413, !dx.controlflow.hints !40

; <label>:413                                     ; preds = %400
  %414 = fmul fast float %195, %211
  %415 = fmul fast float %196, %210
  %416 = fsub fast float %414, %415
  %417 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %418 = fmul fast float %205, %180
  %419 = fmul fast float %202, %181
  %420 = fmul fast float %161, %209
  %421 = fmul fast float %188, %207
  %422 = fadd fast float %418, %419
  %423 = fadd fast float %422, %420
  %424 = fadd fast float %423, %421
  %425 = fcmp fast ogt float %417, %424
  br i1 %425, label %441, label %426, !dx.controlflow.hints !41

; <label>:426                                     ; preds = %413
  %427 = fmul fast float %198, %211
  %428 = fmul fast float %199, %210
  %429 = fsub fast float %427, %428
  %430 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  %431 = fmul fast float %206, %180
  %432 = fmul fast float %203, %181
  %433 = fmul fast float %161, %208
  %434 = fmul fast float %167, %207
  %435 = fadd fast float %431, %432
  %436 = fadd fast float %435, %433
  %437 = fadd fast float %436, %434
  %438 = fcmp fast ogt float %430, %437
  br i1 %438, label %441, label %439, !dx.controlflow.hints !42

; <label>:439                                     ; preds = %426
  br label %441

; <label>:440                                     ; preds = %222
  br label %441

; <label>:441                                     ; preds = %559, %440, %439, %426, %413, %400, %387, %374, %361, %348, %335, %322, %217, %174
  %442 = phi i1 [ true, %439 ], [ false, %322 ], [ false, %335 ], [ false, %348 ], [ false, %361 ], [ false, %374 ], [ false, %387 ], [ false, %400 ], [ false, %413 ], [ false, %426 ], [ false, %559 ], [ false, %217 ], [ false, %174 ], [ false, %440 ]
  br i1 %442, label %448, label %443, !dx.controlflow.hints !43

; <label>:443                                     ; preds = %441, %154
  %444 = add nuw nsw i32 %155, 1
  %445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.i32 %445, 0
  %447 = icmp ult i32 %444, %446
  br i1 %447, label %154, label %448

; <label>:448                                     ; preds = %443, %441
  %449 = phi i32 [ -1, %443 ], [ %31, %441 ]
  br label %450

; <label>:450                                     ; preds = %448, %86, %70, %20, %0
  %451 = phi i32 [ -1, %0 ], [ -1, %70 ], [ -1, %20 ], [ -1, %86 ], [ %449, %448 ]
  %452 = icmp ne i32 %451, -1
  %453 = zext i1 %452 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %454 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %8
  store i32 %453, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %455 = and i32 %8, 1
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %463, label %457, !dx.controlflow.hints !50

; <label>:457                                     ; preds = %450
  %458 = and i32 %8, -2
  %459 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %458
  %460 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !44, !noalias !46
  %461 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  %462 = add i32 %461, %460
  store i32 %462, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %463

; <label>:463                                     ; preds = %457, %450
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %464 = and i32 %8, 2
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %473, label %466, !dx.controlflow.hints !51

; <label>:466                                     ; preds = %463
  %467 = and i32 %8, -4
  %468 = or i32 %467, 1
  %469 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %468
  %470 = load i32, i32 addrspace(3)* %469, align 4, !tbaa !44, !noalias !46
  %471 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  %472 = add i32 %471, %470
  store i32 %472, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %473

; <label>:473                                     ; preds = %466, %463
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %474 = and i32 %8, 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %483, label %476, !dx.controlflow.hints !52

; <label>:476                                     ; preds = %473
  %477 = and i32 %8, -8
  %478 = or i32 %477, 3
  %479 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %478
  %480 = load i32, i32 addrspace(3)* %479, align 4, !tbaa !44, !noalias !46
  %481 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  %482 = add i32 %481, %480
  store i32 %482, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %483

; <label>:483                                     ; preds = %476, %473
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %484 = and i32 %8, 8
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %493, label %486, !dx.controlflow.hints !53

; <label>:486                                     ; preds = %483
  %487 = and i32 %8, -16
  %488 = or i32 %487, 7
  %489 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %488
  %490 = load i32, i32 addrspace(3)* %489, align 4, !tbaa !44, !noalias !46
  %491 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  %492 = add i32 %491, %490
  store i32 %492, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %493

; <label>:493                                     ; preds = %486, %483
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %494 = and i32 %8, 16
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %503, label %496, !dx.controlflow.hints !54

; <label>:496                                     ; preds = %493
  %497 = and i32 %8, -32
  %498 = or i32 %497, 15
  %499 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %498
  %500 = load i32, i32 addrspace(3)* %499, align 4, !tbaa !44, !noalias !46
  %501 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  %502 = add i32 %501, %500
  store i32 %502, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %503

; <label>:503                                     ; preds = %496, %493
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %504 = and i32 %8, 32
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %508, !dx.controlflow.hints !55

; <label>:506                                     ; preds = %503
  %507 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %515

; <label>:508                                     ; preds = %503
  %509 = and i32 %8, -64
  %510 = or i32 %509, 31
  %511 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %510
  %512 = load i32, i32 addrspace(3)* %511, align 4, !tbaa !44, !noalias !46
  %513 = load i32, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  %514 = add i32 %513, %512
  store i32 %514, i32 addrspace(3)* %454, align 4, !tbaa !44, !noalias !46
  br label %515

; <label>:515                                     ; preds = %508, %506
  %516 = phi i32 [ %507, %506 ], [ %514, %508 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %517 = or i32 %8, 63
  %518 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %517
  %519 = load i32, i32 addrspace(3)* %518, align 4, !tbaa !44, !noalias !46
  %520 = sub i32 %516, %453
  %521 = icmp eq i32 %8, 0
  %522 = icmp ne i32 %519, 0
  %523 = and i1 %521, %522
  br i1 %523, label %524, label %526, !dx.controlflow.hints !56

; <label>:524                                     ; preds = %515
  %525 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 2, i32 0, i32 undef, i32 %519)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %525, i32 addrspace(3)* @"\01?groupshared_globalIndexOfFirstItem@@3IA", align 4, !tbaa !44
  br label %526

; <label>:526                                     ; preds = %524, %515
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %527 = load i32, i32 addrspace(3)* @"\01?groupshared_globalIndexOfFirstItem@@3IA", align 4, !tbaa !44
  %528 = add i32 %527, %520
  %529 = icmp ult i32 %528, 8192
  %530 = and i1 %452, %529
  br i1 %530, label %531, label %558, !dx.controlflow.hints !57

; <label>:531                                     ; preds = %526
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %451, i32 0)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 12)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 16)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 20)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 24)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 28)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 32)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 36)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 40)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %451, i32 44)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %528, i32 0, float %533, float %534, float %535, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 12, i32 %537, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 16, i32 %539, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 20, i32 %541, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 24, i32 %543, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 28, i32 %545, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 32, i32 %547, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 36, i32 %549, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 40, i32 %551, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %528, i32 44, i32 %553, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.i32 %554, 2
  %556 = shl i32 %555, 16
  %557 = or i32 %556, %451
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %528, i32 0, i32 %557, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %558

; <label>:558                                     ; preds = %531, %526
  ret void

; <label>:559                                     ; preds = %217
  %560 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  %561 = call float @dx.op.dot3.f32(i32 55, float %161, float %167, float %188, float %207, float %208, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = fadd fast float %561, %182
  %563 = fcmp fast ogt float %560, %562
  br i1 %563, label %441, label %564, !dx.controlflow.hints !25

; <label>:564                                     ; preds = %559
  br label %222
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

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
!4 = !{!5, !10, !14, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 48}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{!11, !12, !13}
!11 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!12 = !{i32 1, %"class.RWStructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWStructuredBuffer<StaticDecalVolumeMapIndex>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!14 = !{!15}
!15 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!16 = !{void ()* @cs_decal_volume_collections_vt, !"cs_decal_volume_collections_vt", null, !4, !17}
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
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"\01?CullCollectionsInternal@@YAXV?$vector@I$02@@I_NAIAI@Z: %outDecalIndex"}
!33 = distinct !{!33, !"\01?CullCollectionsInternal@@YAXV?$vector@I$02@@I_NAIAI@Z"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !29, i64 0}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!48 = distinct !{!48, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!49 = distinct !{!49, !48, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}

