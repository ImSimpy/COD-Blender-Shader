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
; shader hash: c0cce7dd26f9d05e94752b2d2f810bff
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture     f32         buf      T0             t3     1
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t4     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture  struct         r/o      T4             t1     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;                                       UAV     f32     2darray      U1             u1     1
;                                       UAVunorm_f32     2darray      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2DArray<vector<float, 2> >" = type { <2 x float> }
%GfxDynmLightLMOptShared = type { i32, i32, i32, i32 }
%GfxDynLightLMOpt = type { i32, i32, i32, i32 }

define void @cs_optlm_blend1_to_lm() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %170, !dx.controlflow.hints !24

; <label>:15                                      ; preds = %0
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = shl i32 %17, 3
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = extractvalue %dx.types.ResRet.i32 %19, 1
  %22 = add i32 %20, %11
  %23 = shl i32 %22, 3
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %23, i32 undef)  ; BufferLoad(srv,index,wot)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = shl i32 %25, 4
  %28 = and i32 %27, 32752
  %29 = call float @dx.op.legacyF16ToF32(i32 131, i32 %28)  ; LegacyF16ToF32(value)
  %30 = lshr i32 %25, 7
  %31 = and i32 %30, 32752
  %32 = call float @dx.op.legacyF16ToF32(i32 131, i32 %31)  ; LegacyF16ToF32(value)
  %33 = lshr i32 %25, 22
  %34 = shl nuw nsw i32 %33, 5
  %35 = call float @dx.op.legacyF16ToF32(i32 131, i32 %34)  ; LegacyF16ToF32(value)
  %36 = and i32 %26, 255
  %37 = uitofp i32 %36 to float
  %38 = fmul fast float %37, 0x3F80101020000000
  %39 = fadd fast float %38, -1.000000e+00
  %40 = lshr i32 %26, 8
  %41 = and i32 %40, 255
  %42 = uitofp i32 %41 to float
  %43 = fmul fast float %42, 0x3F80101020000000
  %44 = fadd fast float %43, -1.000000e+00
  %45 = fadd fast float %44, %39
  %46 = fmul fast float %45, 5.000000e-01
  %47 = fsub fast float %39, %44
  %48 = fmul fast float %47, 5.000000e-01
  %49 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %50 = fsub fast float 1.000000e+00, %49
  %51 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %52 = fsub fast float %50, %51
  %53 = call float @dx.op.dot3.f32(i32 55, float %46, float %48, float %52, float %46, float %48, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %54 = call float @dx.op.unary.f32(i32 25, float %53)  ; Rsqrt(value)
  %55 = fmul fast float %46, %54
  %56 = fmul fast float %48, %54
  %57 = fmul fast float %54, %52
  %58 = lshr i32 %26, 16
  %59 = and i32 %58, 255
  %60 = uitofp i32 %59 to float
  %61 = call float @dx.op.dot3.f32(i32 55, float %29, float %32, float %35, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = fmul fast float %55, %61
  %63 = fmul fast float %56, %61
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %61, %60
  %66 = extractvalue %dx.types.CBufRet.i32 %16, 3
  %67 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %68 = add i32 %67, %11
  %69 = and i32 %66, 7
  %70 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %71 = mul i32 %70, %69
  %72 = add i32 %68, %71
  %73 = shl i32 %72, 3
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = extractvalue %dx.types.ResRet.i32 %74, 1
  %77 = shl i32 %75, 4
  %78 = and i32 %77, 32752
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = lshr i32 %75, 7
  %81 = and i32 %80, 32752
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81)  ; LegacyF16ToF32(value)
  %83 = lshr i32 %75, 22
  %84 = shl nuw nsw i32 %83, 5
  %85 = call float @dx.op.legacyF16ToF32(i32 131, i32 %84)  ; LegacyF16ToF32(value)
  %86 = and i32 %76, 255
  %87 = uitofp i32 %86 to float
  %88 = fmul fast float %87, 0x3F80101020000000
  %89 = fadd fast float %88, -1.000000e+00
  %90 = lshr i32 %76, 8
  %91 = and i32 %90, 255
  %92 = uitofp i32 %91 to float
  %93 = fmul fast float %92, 0x3F80101020000000
  %94 = fadd fast float %93, -1.000000e+00
  %95 = fadd fast float %94, %89
  %96 = fmul fast float %95, 5.000000e-01
  %97 = fsub fast float %89, %94
  %98 = fmul fast float %97, 5.000000e-01
  %99 = call float @dx.op.unary.f32(i32 6, float %96)  ; FAbs(value)
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call float @dx.op.unary.f32(i32 6, float %98)  ; FAbs(value)
  %102 = fsub fast float %100, %101
  %103 = call float @dx.op.dot3.f32(i32 55, float %96, float %98, float %102, float %96, float %98, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %104 = call float @dx.op.unary.f32(i32 25, float %103)  ; Rsqrt(value)
  %105 = fmul fast float %96, %104
  %106 = fmul fast float %98, %104
  %107 = fmul fast float %104, %102
  %108 = lshr i32 %76, 16
  %109 = and i32 %108, 255
  %110 = uitofp i32 %109 to float
  %111 = lshr i32 %76, 24
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = extractvalue %dx.types.ResRet.f32 %112, 1
  %115 = extractvalue %dx.types.ResRet.f32 %112, 2
  %116 = fmul fast float %113, %79
  %117 = fmul fast float %114, %82
  %118 = fmul fast float %115, %85
  %119 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = fmul fast float %105, %119
  %121 = fmul fast float %106, %119
  %122 = fmul fast float %107, %119
  %123 = fmul fast float %119, %110
  %124 = fadd fast float %116, %29
  %125 = fadd fast float %117, %32
  %126 = fadd fast float %118, %35
  %127 = fadd fast float %123, %65
  %128 = fmul fast float %127, 0x3F70101020000000
  %129 = fadd fast float %120, %62
  %130 = fadd fast float %121, %63
  %131 = fadd fast float %122, %64
  %132 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %133 = fcmp fast ogt float %132, 0.000000e+00
  %134 = fdiv fast float 1.000000e+00, %132
  %135 = select i1 %133, float %134, float 0.000000e+00
  %136 = fmul fast float %128, %135
  %137 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %138 = fcmp fast ogt float %137, 0.000000e+00
  br i1 %138, label %139, label %142, !dx.controlflow.hints !25

; <label>:139                                     ; preds = %15
  %140 = call float @dx.op.unary.f32(i32 24, float %137)  ; Sqrt(value)
  %141 = fdiv fast float 1.000000e+00, %140
  br label %142

; <label>:142                                     ; preds = %139, %15
  %143 = phi float [ %141, %139 ], [ %137, %15 ]
  %144 = fmul fast float %143, %129
  %145 = fmul fast float %143, %130
  %146 = fmul fast float %143, %131
  %147 = add i32 %21, %11
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %147, i32 0)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 0
  %152 = add i32 %151, %149
  %153 = and i32 %152, 65535
  %154 = lshr i32 %152, 16
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %153, i32 %154, i32 0, float %124, float %125, float %126, float %124, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %155 = call float @dx.op.unary.f32(i32 6, float %144)  ; FAbs(value)
  %156 = call float @dx.op.unary.f32(i32 6, float %145)  ; FAbs(value)
  %157 = fadd fast float %155, %146
  %158 = fadd fast float %157, %156
  %159 = fdiv fast float 1.000000e+00, %158
  %160 = fadd fast float %129, %130
  %161 = fsub fast float %129, %130
  %162 = fmul fast float %160, 5.000000e-01
  %163 = fmul fast float %162, %143
  %164 = fmul fast float %163, %159
  %165 = fadd fast float %164, 5.000000e-01
  %166 = fmul fast float %161, 5.000000e-01
  %167 = fmul fast float %166, %143
  %168 = fmul fast float %167, %159
  %169 = fadd fast float %168, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %153, i32 %154, i32 0, float %165, float %169, float %165, float %165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %153, i32 %154, i32 0, float %136, float %136, float %136, float %136, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %170

; <label>:170                                     ; preds = %142, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !18, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{!14, !16, !17}
!14 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 14}
!16 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2DArray<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!18 = !{!19, !20}
!19 = !{i32 0, %GfxDynmLightLMOptShared* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!20 = !{i32 1, %GfxDynLightLMOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!21 = !{void ()* @cs_optlm_blend1_to_lm, !"cs_optlm_blend1_to_lm", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

