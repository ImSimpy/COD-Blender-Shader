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
; shader hash: bc55618a1b782538b8e61dfcda4305c1
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
;                                   texture  struct         r/o      T2            t13     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV  struct         r/w      U1             u0     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%struct.GfxStaticDecalVolumePackedGPU = type { <3 x float>, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<DecalVolumeLodState>" = type { %struct.DecalVolumeLodState }
%struct.DecalVolumeLodState = type { <3 x float>, float, <3 x float>, i32, <3 x float>, i32, <3 x float>, float }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<GfxStaticDecalVolumePackedGPU>" = type { %struct.GfxStaticDecalVolumePackedGPU }
%"class.RWStructuredBuffer<StaticDecalVolumeMapIndex>" = type { %struct.StaticDecalVolumeMapIndex }
%struct.StaticDecalVolumeMapIndex = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?groupshared_globalIndexOfFirstItem@@3IA" = external addrspace(3) global i32, align 4

define void @cs_decal_volume_collections() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [8 x float], align 4
  %13 = alloca [8 x float], align 4
  %14 = alloca [8 x float], align 4
  %15 = lshr i32 %8, 4
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %404, !dx.controlflow.hints !21

; <label>:19                                      ; preds = %0
  %20 = and i32 %8, 15
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = add i32 %22, %15
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %23, i32 0)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = lshr i32 %25, 24
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %30 = icmp ult i32 %20, %26
  br i1 %30, label %31, label %404, !dx.controlflow.hints !22

; <label>:31                                      ; preds = %19
  %32 = and i32 %25, 16777215
  %33 = add nuw nsw i32 %32, %20
  %34 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %33, i32 12)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %33, i32 16)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %33, i32 40)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %33, i32 44)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = lshr i32 %39, 30
  %47 = and i32 %39, 1023
  %48 = uitofp i32 %47 to float
  %49 = lshr i32 %39, 10
  %50 = and i32 %49, 1023
  %51 = uitofp i32 %50 to float
  %52 = lshr i32 %39, 20
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
  br i1 %65, label %72, label %66, !dx.controlflow.hints !23

; <label>:66                                      ; preds = %31
  %67 = icmp eq i32 %46, 1
  br i1 %67, label %72, label %68, !dx.controlflow.hints !24

; <label>:68                                      ; preds = %66
  %69 = icmp eq i32 %46, 2
  %70 = select i1 %69, float %64, float %60
  %71 = select i1 %69, float %60, float %64
  br label %72

; <label>:72                                      ; preds = %68, %66, %31
  %73 = phi float [ %64, %31 ], [ %56, %66 ], [ %56, %68 ]
  %74 = phi float [ %56, %31 ], [ %64, %66 ], [ %58, %68 ]
  %75 = phi float [ %58, %31 ], [ %58, %66 ], [ %70, %68 ]
  %76 = phi float [ %60, %31 ], [ %60, %66 ], [ %71, %68 ]
  %77 = and i32 %43, 512
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %78, float 1.000000e+00, float -1.000000e+00
  %80 = and i32 %43, 1024
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %81, float -1.000000e+00, float 1.000000e+00
  %83 = fmul fast float %79, %82
  %84 = and i32 %45, 65535
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = lshr i32 %45, 16
  %87 = and i32 %86, 255
  %88 = extractvalue %dx.types.CBufRet.i32 %21, 3
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %404, label %90, !dx.controlflow.hints !25

; <label>:90                                      ; preds = %72
  %91 = fmul fast float %73, 2.000000e+00
  %92 = fmul fast float %91, %75
  %93 = fmul fast float %74, 2.000000e+00
  %94 = fmul fast float %93, %76
  %95 = fsub fast float %92, %94
  %96 = fmul fast float %95, %83
  %97 = fmul fast float %74, %73
  %98 = fmul fast float %76, %75
  %99 = fadd fast float %98, %97
  %100 = fmul fast float %74, %74
  %101 = fmul fast float %100, 2.000000e+00
  %102 = fsub fast float 1.000000e+00, %101
  %103 = fmul fast float %75, %75
  %104 = fmul fast float %103, 2.000000e+00
  %105 = fsub fast float %102, %104
  %106 = fmul fast float %105, %83
  %107 = fmul fast float %73, %73
  %108 = fmul fast float %107, 2.000000e+00
  %109 = fsub fast float 1.000000e+00, %108
  %110 = fsub fast float %109, %101
  %111 = fmul fast float %75, %74
  %112 = fmul fast float %76, %73
  %113 = fadd fast float %112, %111
  %114 = fmul fast float %113, 2.000000e+00
  %115 = fmul fast float %93, %75
  %116 = fmul fast float %91, %76
  %117 = fsub fast float %115, %116
  %118 = fsub fast float %109, %104
  %119 = fmul fast float %75, %73
  %120 = fmul fast float %76, %74
  %121 = fadd fast float %120, %119
  %122 = fmul fast float %121, 2.000000e+00
  %123 = fmul fast float %91, %74
  %124 = fmul fast float %75, 2.000000e+00
  %125 = fmul fast float %124, %76
  %126 = fsub fast float %123, %125
  %127 = lshr i32 %41, 22
  %128 = shl nuw nsw i32 %127, 5
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = lshr i32 %41, 7
  %131 = and i32 %130, 32752
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131)  ; LegacyF16ToF32(value)
  %133 = shl i32 %41, 4
  %134 = and i32 %133, 32752
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134)  ; LegacyF16ToF32(value)
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %137, %135
  %141 = fmul fast float %138, %132
  %142 = fmul fast float %139, %129
  %143 = fmul fast float %106, %140
  %144 = fmul fast float %83, 2.000000e+00
  %145 = fmul fast float %144, %99
  %146 = fmul fast float %145, %140
  %147 = fmul fast float %96, %140
  %148 = fmul fast float %141, %126
  %149 = fmul fast float %141, %118
  %150 = fmul fast float %114, %141
  %151 = fmul fast float %122, %142
  %152 = fmul fast float %142, %117
  %153 = fmul fast float %142, %110
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = fsub fast float %35, %155
  %159 = fsub fast float %36, %156
  %160 = fsub fast float %37, %157
  %161 = fsub fast float %158, %143
  %162 = fsub fast float %159, %146
  %163 = fsub fast float %160, %147
  %164 = fsub fast float %161, %148
  %165 = fsub fast float %162, %149
  %166 = fsub fast float %163, %150
  %167 = fadd fast float %164, %151
  %168 = fadd fast float %165, %152
  %169 = fadd fast float %166, %153
  %170 = fsub fast float %164, %151
  %171 = fsub fast float %165, %152
  %172 = fsub fast float %166, %153
  %173 = fadd fast float %158, %143
  %174 = fadd fast float %159, %146
  %175 = fadd fast float %160, %147
  %176 = fsub fast float %173, %148
  %177 = fsub fast float %174, %149
  %178 = fsub fast float %175, %150
  %179 = fsub fast float %176, %151
  %180 = fsub fast float %177, %152
  %181 = fsub fast float %178, %153
  %182 = fadd fast float %161, %148
  %183 = fadd fast float %162, %149
  %184 = fadd fast float %163, %150
  %185 = fsub fast float %182, %151
  %186 = fsub fast float %183, %152
  %187 = fsub fast float %184, %153
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 3
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %204 = fmul fast float %167, %189
  %205 = call float @dx.op.tertiary.f32(i32 46, float %193, float %168, float %204)  ; FMad(a,b,c)
  %206 = call float @dx.op.tertiary.f32(i32 46, float %197, float %169, float %205)  ; FMad(a,b,c)
  %207 = fadd fast float %206, %201
  %208 = fmul fast float %167, %190
  %209 = call float @dx.op.tertiary.f32(i32 46, float %194, float %168, float %208)  ; FMad(a,b,c)
  %210 = call float @dx.op.tertiary.f32(i32 46, float %198, float %169, float %209)  ; FMad(a,b,c)
  %211 = fadd fast float %210, %202
  %212 = fmul fast float %167, %191
  %213 = call float @dx.op.tertiary.f32(i32 46, float %195, float %168, float %212)  ; FMad(a,b,c)
  %214 = call float @dx.op.tertiary.f32(i32 46, float %199, float %169, float %213)  ; FMad(a,b,c)
  %215 = fadd fast float %214, %203
  %216 = fmul fast float %189, %170
  %217 = call float @dx.op.tertiary.f32(i32 46, float %193, float %171, float %216)  ; FMad(a,b,c)
  %218 = call float @dx.op.tertiary.f32(i32 46, float %197, float %172, float %217)  ; FMad(a,b,c)
  %219 = fadd fast float %218, %201
  %220 = fmul fast float %190, %170
  %221 = call float @dx.op.tertiary.f32(i32 46, float %194, float %171, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.tertiary.f32(i32 46, float %198, float %172, float %221)  ; FMad(a,b,c)
  %223 = fadd fast float %222, %202
  %224 = fmul fast float %191, %170
  %225 = call float @dx.op.tertiary.f32(i32 46, float %195, float %171, float %224)  ; FMad(a,b,c)
  %226 = call float @dx.op.tertiary.f32(i32 46, float %199, float %172, float %225)  ; FMad(a,b,c)
  %227 = fadd fast float %226, %203
  %228 = fmul fast float %189, %179
  %229 = call float @dx.op.tertiary.f32(i32 46, float %193, float %180, float %228)  ; FMad(a,b,c)
  %230 = call float @dx.op.tertiary.f32(i32 46, float %197, float %181, float %229)  ; FMad(a,b,c)
  %231 = fadd fast float %230, %201
  %232 = fmul fast float %190, %179
  %233 = call float @dx.op.tertiary.f32(i32 46, float %194, float %180, float %232)  ; FMad(a,b,c)
  %234 = call float @dx.op.tertiary.f32(i32 46, float %198, float %181, float %233)  ; FMad(a,b,c)
  %235 = fadd fast float %234, %202
  %236 = fmul fast float %191, %179
  %237 = call float @dx.op.tertiary.f32(i32 46, float %195, float %180, float %236)  ; FMad(a,b,c)
  %238 = call float @dx.op.tertiary.f32(i32 46, float %199, float %181, float %237)  ; FMad(a,b,c)
  %239 = fadd fast float %238, %203
  %240 = fmul fast float %189, %185
  %241 = call float @dx.op.tertiary.f32(i32 46, float %193, float %186, float %240)  ; FMad(a,b,c)
  %242 = call float @dx.op.tertiary.f32(i32 46, float %197, float %187, float %241)  ; FMad(a,b,c)
  %243 = fadd fast float %242, %201
  %244 = fmul fast float %190, %185
  %245 = call float @dx.op.tertiary.f32(i32 46, float %194, float %186, float %244)  ; FMad(a,b,c)
  %246 = call float @dx.op.tertiary.f32(i32 46, float %198, float %187, float %245)  ; FMad(a,b,c)
  %247 = fadd fast float %246, %202
  %248 = fmul fast float %191, %185
  %249 = call float @dx.op.tertiary.f32(i32 46, float %195, float %186, float %248)  ; FMad(a,b,c)
  %250 = call float @dx.op.tertiary.f32(i32 46, float %199, float %187, float %249)  ; FMad(a,b,c)
  %251 = fadd fast float %250, %203
  %252 = fsub fast float %230, %218
  %253 = fsub fast float %234, %222
  %254 = fsub fast float %238, %226
  %255 = fsub fast float %242, %218
  %256 = fsub fast float %246, %222
  %257 = fsub fast float %250, %226
  %258 = fadd fast float %252, %207
  %259 = fadd fast float %253, %211
  %260 = fadd fast float %254, %215
  %261 = fadd fast float %255, %258
  %262 = fadd fast float %256, %259
  %263 = fadd fast float %257, %260
  %264 = fadd fast float %255, %207
  %265 = fadd fast float %256, %211
  %266 = fadd fast float %257, %215
  %267 = fadd fast float %255, %231
  %268 = fadd fast float %256, %235
  %269 = fadd fast float %257, %239
  %270 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 0
  %271 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 0
  %272 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 0
  store float %207, float* %270, align 4
  store float %211, float* %271, align 4
  store float %215, float* %272, align 4
  %273 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 1
  %274 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 1
  %275 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 1
  store float %258, float* %273, align 4
  store float %259, float* %274, align 4
  store float %260, float* %275, align 4
  %276 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 2
  %277 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 2
  %278 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 2
  store float %261, float* %276, align 4
  store float %262, float* %277, align 4
  store float %263, float* %278, align 4
  %279 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 3
  %280 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 3
  %281 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 3
  store float %264, float* %279, align 4
  store float %265, float* %280, align 4
  store float %266, float* %281, align 4
  %282 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 4
  %283 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 4
  %284 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 4
  store float %219, float* %282, align 4
  store float %223, float* %283, align 4
  store float %227, float* %284, align 4
  %285 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 5
  %286 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 5
  %287 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 5
  store float %231, float* %285, align 4
  store float %235, float* %286, align 4
  store float %239, float* %287, align 4
  %288 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 6
  %289 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 6
  %290 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 6
  store float %267, float* %288, align 4
  store float %268, float* %289, align 4
  store float %269, float* %290, align 4
  %291 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 7
  %292 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 7
  %293 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 7
  store float %243, float* %291, align 4
  store float %247, float* %292, align 4
  store float %251, float* %293, align 4
  br label %294

; <label>:294                                     ; preds = %326, %90
  %295 = phi float [ %215, %90 ], [ %338, %326 ]
  %296 = phi float [ %211, %90 ], [ %336, %326 ]
  %297 = phi float [ %207, %90 ], [ %334, %326 ]
  %298 = phi i32 [ 1, %90 ], [ %332, %326 ]
  %299 = phi i32 [ 1, %90 ], [ %331, %326 ]
  %300 = phi i32 [ 1, %90 ], [ %330, %326 ]
  %301 = phi i32 [ 1, %90 ], [ %329, %326 ]
  %302 = phi i32 [ 1, %90 ], [ %328, %326 ]
  %303 = phi i32 [ 1, %90 ], [ %327, %326 ]
  %304 = phi i32 [ 0, %90 ], [ %324, %326 ]
  %305 = icmp ne i32 %298, 0
  %306 = fsub fast float -0.000000e+00, %295
  %307 = fcmp fast olt float %297, %306
  %308 = and i1 %305, %307
  %309 = icmp ne i32 %299, 0
  %310 = fcmp fast ogt float %297, %295
  %311 = and i1 %309, %310
  %312 = icmp ne i32 %300, 0
  %313 = fcmp fast olt float %296, %306
  %314 = and i1 %312, %313
  %315 = icmp ne i32 %301, 0
  %316 = fcmp fast ogt float %296, %295
  %317 = and i1 %315, %316
  %318 = icmp ne i32 %302, 0
  %319 = fcmp fast olt float %295, %29
  %320 = and i1 %318, %319
  %321 = icmp ne i32 %303, 0
  %322 = fcmp fast ogt float %295, %28
  %323 = and i1 %321, %322
  %324 = add nuw nsw i32 %304, 1
  %325 = icmp eq i32 %324, 8
  br i1 %325, label %339, label %326

; <label>:326                                     ; preds = %294
  %327 = zext i1 %323 to i32
  %328 = zext i1 %320 to i32
  %329 = zext i1 %317 to i32
  %330 = zext i1 %314 to i32
  %331 = zext i1 %311 to i32
  %332 = zext i1 %308 to i32
  %333 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 %324
  %334 = load float, float* %333, align 4
  %335 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 %324
  %336 = load float, float* %335, align 4
  %337 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 %324
  %338 = load float, float* %337, align 4
  br label %294

; <label>:339                                     ; preds = %294
  %340 = or i1 %308, %311
  %341 = or i1 %314, %340
  %342 = or i1 %317, %341
  %343 = or i1 %320, %342
  %344 = or i1 %323, %343
  br i1 %344, label %404, label %345, !dx.controlflow.hints !26

; <label>:345                                     ; preds = %339
  %346 = call float @dx.op.binary.f32(i32 35, float %141, float %142)  ; FMax(a,b)
  %347 = call float @dx.op.binary.f32(i32 35, float %140, float %346)  ; FMax(a,b)
  %348 = fmul fast float %29, %347
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = call float @dx.op.dot3.f32(i32 55, float %350, float %351, float %352, float %158, float %159, float %160)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = call float @dx.op.binary.f32(i32 35, float %353, float 0x3F50624DE0000000)  ; FMax(a,b)
  %355 = fdiv fast float %348, %354
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 0
  store float %361, float* %364, align 4
  %365 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 1
  store float %362, float* %365, align 4
  %366 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 2
  store float %363, float* %366, align 4
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 0, i32 32)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 0
  store float %368, float* %371, align 4
  %372 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 1
  store float %369, float* %372, align 4
  %373 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 2
  store float %370, float* %373, align 4
  %374 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %87
  %375 = load float, float* %374, align 4, !tbaa !27, !noalias !31
  %376 = fmul fast float %356, %356
  %377 = fmul fast float %376, 0x400921FB60000000
  %378 = fmul fast float %377, %358
  %379 = fmul fast float %378, %359
  %380 = fmul fast float %379, %375
  %381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.f32 %381, 0
  %383 = fmul fast float %382, %85
  %384 = fcmp fast olt float %380, %383
  br i1 %384, label %404, label %385, !dx.controlflow.hints !34

; <label>:385                                     ; preds = %345
  %386 = fmul fast float %158, %158
  %387 = fmul fast float %159, %159
  %388 = fadd fast float %386, %387
  %389 = fmul fast float %160, %160
  %390 = fadd fast float %388, %389
  %391 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %392 = fsub fast float %391, %346
  %393 = call float @dx.op.binary.f32(i32 35, float %392, float 0.000000e+00)  ; FMax(a,b)
  %394 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %87
  %395 = load float, float* %394, align 4, !tbaa !27, !noalias !31
  %396 = fmul fast float %395, %393
  %397 = extractvalue %dx.types.CBufRet.f32 %381, 1
  %398 = fmul fast float %396, %397
  %399 = extractvalue %dx.types.CBufRet.f32 %381, 2
  %400 = fadd fast float %398, %399
  %401 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %402 = fcmp fast ugt float %401, 0.000000e+00
  br i1 %402, label %403, label %404, !dx.controlflow.hints !35

; <label>:403                                     ; preds = %385
  br label %404

; <label>:404                                     ; preds = %403, %385, %345, %339, %72, %19, %0
  %405 = phi i32 [ -1, %0 ], [ -1, %72 ], [ %33, %403 ], [ -1, %345 ], [ -1, %385 ], [ -1, %339 ], [ -1, %19 ]
  %406 = icmp ne i32 %405, -1
  %407 = zext i1 %406 to i32
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %408 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %407, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %409 = and i32 %9, 1
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %417, label %411, !dx.controlflow.hints !42

; <label>:411                                     ; preds = %404
  %412 = and i32 %9, -2
  %413 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %412
  %414 = load i32, i32 addrspace(3)* %413, align 4, !tbaa !36, !noalias !38
  %415 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  %416 = add i32 %415, %414
  store i32 %416, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %417

; <label>:417                                     ; preds = %411, %404
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %418 = and i32 %9, 2
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %427, label %420, !dx.controlflow.hints !43

; <label>:420                                     ; preds = %417
  %421 = and i32 %9, -4
  %422 = or i32 %421, 1
  %423 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %422
  %424 = load i32, i32 addrspace(3)* %423, align 4, !tbaa !36, !noalias !38
  %425 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  %426 = add i32 %425, %424
  store i32 %426, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %427

; <label>:427                                     ; preds = %420, %417
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %428 = and i32 %9, 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %437, label %430, !dx.controlflow.hints !44

; <label>:430                                     ; preds = %427
  %431 = and i32 %9, -8
  %432 = or i32 %431, 3
  %433 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %432
  %434 = load i32, i32 addrspace(3)* %433, align 4, !tbaa !36, !noalias !38
  %435 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  %436 = add i32 %435, %434
  store i32 %436, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %437

; <label>:437                                     ; preds = %430, %427
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %438 = and i32 %9, 8
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %447, label %440, !dx.controlflow.hints !45

; <label>:440                                     ; preds = %437
  %441 = and i32 %9, -16
  %442 = or i32 %441, 7
  %443 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %442
  %444 = load i32, i32 addrspace(3)* %443, align 4, !tbaa !36, !noalias !38
  %445 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  %446 = add i32 %445, %444
  store i32 %446, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %447

; <label>:447                                     ; preds = %440, %437
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %448 = and i32 %9, 16
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %457, label %450, !dx.controlflow.hints !46

; <label>:450                                     ; preds = %447
  %451 = and i32 %9, -32
  %452 = or i32 %451, 15
  %453 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %452
  %454 = load i32, i32 addrspace(3)* %453, align 4, !tbaa !36, !noalias !38
  %455 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  %456 = add i32 %455, %454
  store i32 %456, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %457

; <label>:457                                     ; preds = %450, %447
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %458 = and i32 %9, 32
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %462, !dx.controlflow.hints !47

; <label>:460                                     ; preds = %457
  %461 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %469

; <label>:462                                     ; preds = %457
  %463 = and i32 %9, -64
  %464 = or i32 %463, 31
  %465 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %464
  %466 = load i32, i32 addrspace(3)* %465, align 4, !tbaa !36, !noalias !38
  %467 = load i32, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  %468 = add i32 %467, %466
  store i32 %468, i32 addrspace(3)* %408, align 4, !tbaa !36, !noalias !38
  br label %469

; <label>:469                                     ; preds = %462, %460
  %470 = phi i32 [ %461, %460 ], [ %468, %462 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %471 = or i32 %9, 63
  %472 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %471
  %473 = load i32, i32 addrspace(3)* %472, align 4, !tbaa !36, !noalias !38
  %474 = sub i32 %470, %407
  %475 = icmp eq i32 %9, 0
  %476 = icmp ne i32 %473, 0
  %477 = and i1 %475, %476
  br i1 %477, label %478, label %480, !dx.controlflow.hints !48

; <label>:478                                     ; preds = %469
  %479 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 2, i32 0, i32 undef, i32 %473)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %479, i32 addrspace(3)* @"\01?groupshared_globalIndexOfFirstItem@@3IA", align 4, !tbaa !36
  br label %480

; <label>:480                                     ; preds = %478, %469
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %481 = load i32, i32 addrspace(3)* @"\01?groupshared_globalIndexOfFirstItem@@3IA", align 4, !tbaa !36
  %482 = add i32 %481, %474
  %483 = icmp ult i32 %482, 8192
  %484 = and i1 %406, %483
  br i1 %484, label %485, label %512, !dx.controlflow.hints !49

; <label>:485                                     ; preds = %480
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %405, i32 0)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 12)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 16)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 20)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 24)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 28)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 32)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 36)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 40)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %405, i32 44)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %482, i32 0, float %487, float %488, float %489, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 12, i32 %491, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 16, i32 %493, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 20, i32 %495, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 24, i32 %497, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 28, i32 %499, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 32, i32 %501, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 36, i32 %503, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 40, i32 %505, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %482, i32 44, i32 %507, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.i32 %508, 2
  %510 = shl i32 %509, 16
  %511 = or i32 %510, %405
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %482, i32 0, i32 %511, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %512

; <label>:512                                     ; preds = %485, %480
  ret void
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

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !16, null}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.StructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 48}
!8 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !9}
!9 = !{i32 1, i32 4}
!10 = !{i32 2, %"class.StructuredBuffer<DecalVolumeLodState>"* undef, !"", i32 0, i32 13, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 64}
!12 = !{!13, !14, !15}
!13 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!14 = !{i32 1, %"class.RWStructuredBuffer<GfxStaticDecalVolumePackedGPU>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!15 = !{i32 2, %"class.RWStructuredBuffer<StaticDecalVolumeMapIndex>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !9}
!16 = !{!17}
!17 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!18 = !{void ()* @cs_decal_volume_collections, !"cs_decal_volume_collections", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
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
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !29, i64 0}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!40 = distinct !{!40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!41 = distinct !{!41, !40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}

