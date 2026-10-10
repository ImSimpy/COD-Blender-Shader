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
; shader hash: 2d6df570492409ceab3b8253f51d0227
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t2     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     f32          2d      T2             t3     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%ConstantBufferFromTex2d = type { i32, i32, i32, i32, i32, i32, float, float }
%struct.SamplerState = type { i32 }

@"\01?reductionData@@3PAUReductionData@@A.0" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.1" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.2" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.3" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.4" = addrspace(3) global [64 x float] undef, align 4

define void @logaccumfromtex2dnvg() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %13 = shl i32 %11, 3
  %14 = add i32 %13, %9
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %17 = shl i32 %12, 3
  %18 = add i32 %17, %10
  %19 = add i32 %18, %16
  %20 = uitofp i32 %14 to float
  %21 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %22 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %23 = sub i32 %21, %22
  %24 = uitofp i32 %23 to float
  %25 = fdiv fast float %20, %24
  %26 = uitofp i32 %19 to float
  %27 = extractvalue %dx.types.CBufRet.i32 %15, 3
  %28 = sub i32 %27, %16
  %29 = uitofp i32 %28 to float
  %30 = fdiv fast float %26, %29
  %31 = fmul fast float %25, 2.000000e+00
  %32 = fmul fast float %30, 2.000000e+00
  %33 = fadd fast float %31, -1.000000e+00
  %34 = fadd fast float %32, -1.000000e+00
  %35 = fmul fast float %33, %33
  %36 = fmul fast float %34, %34
  %37 = fadd fast float %36, %35
  %38 = call float @dx.op.unary.f32(i32 24, float %37)  ; Sqrt(value)
  %39 = call float @dx.op.unary.f32(i32 7, float %38)  ; Saturate(value)
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %25, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %44 = fcmp fast ogt float %43, 0.000000e+00
  %45 = fsub fast float 1.000000e+00, %39
  %46 = call float @dx.op.unary.f32(i32 23, float %45)  ; Log(value)
  %47 = fmul fast float %46, %43
  %48 = call float @dx.op.unary.f32(i32 21, float %47)  ; Exp(value)
  %49 = select i1 %44, float %48, float 1.000000e+00
  %50 = add i32 %22, %14
  %51 = add i32 %16, %19
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %50, i32 %51, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %6, float %25, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %59 = call float @dx.op.binary.f32(i32 35, float %49, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %59, float 6.550400e+04)  ; FMin(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %53, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %62 = call float @dx.op.binary.f32(i32 36, float %61, float 6.550400e+04)  ; FMin(a,b)
  %63 = call float @dx.op.binary.f32(i32 35, float %58, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %63, float 6.550400e+04)  ; FMin(a,b)
  %65 = icmp ule i32 %50, %21
  %66 = icmp ule i32 %51, %27
  %67 = and i1 %65, %66
  %68 = call float @dx.op.unary.f32(i32 23, float %62)  ; Log(value)
  %69 = fmul fast float %60, 0x3FE62E4300000000
  %70 = fmul fast float %69, %68
  %71 = select i1 %67, float %70, float 0.000000e+00
  %72 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %8
  store float %71, float addrspace(3)* %72, align 4, !tbaa !20
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 2
  %75 = icmp ule i32 %50, %74
  %76 = extractvalue %dx.types.CBufRet.i32 %73, 3
  %77 = icmp ule i32 %51, %76
  %78 = and i1 %75, %77
  %79 = select i1 %78, float %60, float 0.000000e+00
  %80 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %8
  store float %79, float addrspace(3)* %80, align 4, !tbaa !20
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 2
  %83 = icmp ule i32 %50, %82
  %84 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %85 = icmp ule i32 %51, %84
  %86 = and i1 %83, %85
  %87 = select i1 %86, float %41, float 0.000000e+00
  %88 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %8
  store float %87, float addrspace(3)* %88, align 4, !tbaa !20
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 2
  %91 = icmp ule i32 %50, %90
  %92 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %93 = icmp ule i32 %51, %92
  %94 = and i1 %91, %93
  %95 = fmul fast float %41, 0x3FE62E4300000000
  %96 = fmul fast float %95, %68
  %97 = select i1 %94, float %96, float 0.000000e+00
  %98 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %8
  store float %97, float addrspace(3)* %98, align 4, !tbaa !20
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 2
  %101 = icmp ule i32 %50, %100
  %102 = extractvalue %dx.types.CBufRet.i32 %99, 3
  %103 = icmp ule i32 %51, %102
  %104 = and i1 %101, %103
  %105 = call float @dx.op.unary.f32(i32 23, float %64)  ; Log(value)
  %106 = fmul fast float %69, %105
  %107 = select i1 %104, float %106, float 0.000000e+00
  %108 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %8
  store float %107, float addrspace(3)* %108, align 4, !tbaa !20
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %111 = fmul fast float %110, %62
  %112 = call float @dx.op.unary.f32(i32 23, float %111)  ; Log(value)
  %113 = fmul fast float %112, 0x3FE62E4300000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %50, i32 %51, i32 undef, float %113, float %113, float %113, float %113, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %114

; <label>:114                                     ; preds = %141, %0
  %115 = phi i32 [ 1, %0 ], [ %116, %141 ]
  %116 = shl i32 %115, 1
  %117 = urem i32 %8, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %141, !dx.controlflow.hints !24

; <label>:119                                     ; preds = %114
  %120 = add i32 %115, %8
  %121 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %120
  %122 = load float, float addrspace(3)* %121, align 4, !tbaa !20
  %123 = load float, float addrspace(3)* %72, align 4, !tbaa !20
  %124 = fadd fast float %123, %122
  store float %124, float addrspace(3)* %72, align 4, !tbaa !20
  %125 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %120
  %126 = load float, float addrspace(3)* %125, align 4, !tbaa !20
  %127 = load float, float addrspace(3)* %80, align 4, !tbaa !20
  %128 = fadd fast float %127, %126
  store float %128, float addrspace(3)* %80, align 4, !tbaa !20
  %129 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %120
  %130 = load float, float addrspace(3)* %129, align 4, !tbaa !20
  %131 = load float, float addrspace(3)* %98, align 4, !tbaa !20
  %132 = fadd fast float %131, %130
  store float %132, float addrspace(3)* %98, align 4, !tbaa !20
  %133 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %120
  %134 = load float, float addrspace(3)* %133, align 4, !tbaa !20
  %135 = load float, float addrspace(3)* %108, align 4, !tbaa !20
  %136 = fadd fast float %135, %134
  store float %136, float addrspace(3)* %108, align 4, !tbaa !20
  %137 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %120
  %138 = load float, float addrspace(3)* %137, align 4, !tbaa !20
  %139 = load float, float addrspace(3)* %88, align 4, !tbaa !20
  %140 = fadd fast float %139, %138
  store float %140, float addrspace(3)* %88, align 4, !tbaa !20
  br label %141

; <label>:141                                     ; preds = %119, %114
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %142 = icmp ult i32 %116, 64
  br i1 %142, label %114, label %143

; <label>:143                                     ; preds = %141
  %144 = icmp eq i32 %8, 0
  br i1 %144, label %145, label %162, !dx.controlflow.hints !25

; <label>:145                                     ; preds = %143
  %146 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 0), align 4
  %147 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 0), align 4
  %148 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 0), align 4
  %149 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 0), align 4
  %150 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 0), align 4
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 0
  %153 = mul i32 %152, %12
  %154 = add i32 %153, %11
  %155 = bitcast float %146 to i32
  %156 = bitcast float %147 to i32
  %157 = bitcast float %148 to i32
  %158 = bitcast float %149 to i32
  %159 = mul i32 %154, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %159, i32 undef, i32 %155, i32 %156, i32 %157, i32 %158, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %160 = bitcast float %150 to i32
  %161 = add i32 %159, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %161, i32 undef, i32 %160, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %162

; <label>:162                                     ; preds = %145, %143
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, !15}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14}
!14 = !{i32 0, %ConstantBufferFromTex2d* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{void ()* @logaccumfromtex2dnvg, !"logaccumfromtex2dnvg", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

