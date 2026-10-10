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
; shader hash: 1f2f1fdb5acde36d51ed5386d5e27171
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
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeSHConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_radiance_sh_to_irradiance_cubemap_offline() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %7 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.i32 %7, 0
  %9 = uitofp i32 %4 to float
  %10 = uitofp i32 %5 to float
  %11 = fadd fast float %9, 5.000000e-01
  %12 = fadd fast float %10, 5.000000e-01
  %13 = uitofp i32 %8 to float
  %14 = fdiv fast float 1.000000e+00, %13
  %15 = fmul fast float %11, 2.000000e+00
  %16 = fmul fast float %15, %14
  %17 = fmul fast float %12, 2.000000e+00
  %18 = fmul fast float %17, %14
  %19 = fadd fast float %16, -1.000000e+00
  %20 = fadd fast float %18, -1.000000e+00
  switch i32 %6, label %21 [
    i32 5, label %30
    i32 1, label %24
    i32 2, label %33
    i32 3, label %26
    i32 4, label %28
  ], !dx.controlflow.hints !15

; <label>:21                                      ; preds = %0
  %22 = fsub fast float -0.000000e+00, %20
  %23 = fsub fast float -0.000000e+00, %19
  br label %33

; <label>:24                                      ; preds = %0
  %25 = fsub fast float -0.000000e+00, %20
  br label %33

; <label>:26                                      ; preds = %0
  %27 = fsub fast float -0.000000e+00, %20
  br label %33

; <label>:28                                      ; preds = %0
  %29 = fsub fast float -0.000000e+00, %20
  br label %33

; <label>:30                                      ; preds = %0
  %31 = fsub fast float -0.000000e+00, %19
  %32 = fsub fast float -0.000000e+00, %20
  br label %33

; <label>:33                                      ; preds = %30, %28, %26, %24, %21, %0
  %34 = phi float [ 1.000000e+00, %21 ], [ %19, %28 ], [ %19, %26 ], [ -1.000000e+00, %24 ], [ %31, %30 ], [ %19, %0 ]
  %35 = phi float [ %22, %21 ], [ %29, %28 ], [ -1.000000e+00, %26 ], [ %25, %24 ], [ %32, %30 ], [ 1.000000e+00, %0 ]
  %36 = phi float [ %23, %21 ], [ 1.000000e+00, %28 ], [ %27, %26 ], [ %19, %24 ], [ -1.000000e+00, %30 ], [ %20, %0 ]
  %37 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %38 = call float @dx.op.unary.f32(i32 25, float %37)  ; Rsqrt(value)
  %39 = fmul fast float %38, %34
  %40 = fmul fast float %38, %35
  %41 = fmul fast float %38, %36
  %42 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  %44 = fmul fast float %43, 0x3FD20DD760000000
  %45 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = fmul fast float %41, 0x3FD0C59A20000000
  %48 = fmul fast float %47, %46
  %49 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = fmul fast float %41, %41
  %52 = fmul fast float %51, 0x3FEE471020000000
  %53 = fadd fast float %52, 0xBFD42F6020000000
  %54 = fmul fast float %50, %53
  %55 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = fmul fast float %39, 0x3FD0C59A20000000
  %58 = fmul fast float %57, %56
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = fmul fast float %40, 0x3FD0C59A20000000
  %62 = fmul fast float %61, %60
  %63 = fmul fast float %41, 0xBFF17B1420000000
  %64 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = fmul fast float %65, %39
  %67 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = fmul fast float %68, %40
  %70 = fmul fast float %39, %39
  %71 = fmul fast float %40, %40
  %72 = fsub fast float %70, %71
  %73 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = fmul fast float %72, 0x3FB1FE2080000000
  %76 = fmul fast float %75, %74
  %77 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.f32 %77, 0
  %79 = fmul fast float %35, 0x3FC1FE2080000000
  %80 = fmul fast float %79, %38
  %81 = fmul fast float %80, %39
  %82 = fmul fast float %81, %78
  %83 = fadd fast float %69, %66
  %84 = fmul fast float %63, %83
  %85 = fadd fast float %84, %54
  %86 = fmul fast float %85, 0x3FC077F280000000
  %87 = fadd fast float %48, %44
  %88 = fsub fast float %87, %58
  %89 = fsub fast float %88, %62
  %90 = fadd fast float %89, %76
  %91 = fadd fast float %90, %82
  %92 = fadd fast float %91, %86
  %93 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = fmul fast float %94, 0x3FD20DD760000000
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fmul fast float %47, %97
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = fmul fast float %100, %53
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = fmul fast float %57, %103
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = fmul fast float %61, %106
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fmul fast float %109, %39
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = fmul fast float %112, %40
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %75, %115
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %81, %118
  %120 = fadd fast float %113, %110
  %121 = fmul fast float %63, %120
  %122 = fadd fast float %121, %101
  %123 = fmul fast float %122, 0x3FC077F280000000
  %124 = fadd fast float %98, %95
  %125 = fsub fast float %124, %104
  %126 = fsub fast float %125, %107
  %127 = fadd fast float %126, %116
  %128 = fadd fast float %127, %119
  %129 = fadd fast float %128, %123
  %130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fmul fast float %131, 0x3FD20DD760000000
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fmul fast float %47, %134
  %136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %137, %53
  %139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = fmul fast float %57, %140
  %142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fmul fast float %61, %143
  %145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fmul fast float %146, %39
  %148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, %40
  %151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %75, %152
  %154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fmul fast float %81, %155
  %157 = fadd fast float %150, %147
  %158 = fmul fast float %63, %157
  %159 = fadd fast float %158, %138
  %160 = fmul fast float %159, 0x3FC077F280000000
  %161 = fadd fast float %135, %132
  %162 = fsub fast float %161, %141
  %163 = fsub fast float %162, %144
  %164 = fadd fast float %163, %153
  %165 = fadd fast float %164, %156
  %166 = fadd fast float %165, %160
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 %6, float %92, float %129, float %166, float %92, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !10, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 9}
!10 = !{!11}
!11 = !{i32 0, %ReflectionProbeSHConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!12 = !{void ()* @cs_radiance_sh_to_irradiance_cubemap_offline, !"cs_radiance_sh_to_irradiance_cubemap_offline", null, !4, !13}
!13 = !{i32 0, i64 272, i32 4, !14}
!14 = !{i32 16, i32 16, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}

