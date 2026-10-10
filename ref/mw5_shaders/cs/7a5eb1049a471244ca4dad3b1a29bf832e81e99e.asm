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
; shader hash: 0e59f9b50de059e8cef2be64e1ee1987
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
;                                   texture     f32          2d      T0             t0     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWStructuredBuffer<MDBlock>" = type { %struct.MDBlock }
%struct.MDBlock = type { i32, float, float, float, float, <3 x float> }
%cbCS = type { %struct.StatGenShader1Consts }
%struct.StatGenShader1Consts = type { i32, i32, i32, float, <2 x float>, float, float }

@"\01?grOut@@3PAUMDBlock@@A.0" = addrspace(3) global [128 x i32] undef, align 4
@"\01?grOut@@3PAUMDBlock@@A.1" = addrspace(3) global [128 x float] undef, align 4
@"\01?grOut@@3PAUMDBlock@@A.2" = addrspace(3) global [128 x float] undef, align 4
@"\01?grOut@@3PAUMDBlock@@A.3" = addrspace(3) global [128 x float] undef, align 4
@"\01?grOut@@3PAUMDBlock@@A.4" = addrspace(3) global [128 x float] undef, align 4
@"\01?grOut@@3PAUMDBlock@@A.5.v.1dim" = addrspace(3) global [384 x float] undef, align 4

define void @csmain() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %11 = uitofp i32 %4 to float
  %12 = uitofp i32 %5 to float
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = fmul fast float %14, %11
  %16 = fmul fast float %14, %12
  %17 = fptoui float %15 to i32
  %18 = fptoui float %16 to i32
  %19 = shl i32 %7, 5
  %20 = add i32 %19, %6
  %21 = extractvalue %dx.types.CBufRet.f32 %13, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %13, 1
  %23 = fptosi float %21 to i32
  %24 = fptosi float %22 to i32
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = add i32 %17, %26
  %28 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %29 = add i32 %28, %18
  %30 = icmp sge i32 %27, %23
  %31 = icmp sge i32 %29, %24
  %32 = or i1 %30, %31
  br i1 %32, label %95, label %33, !dx.controlflow.hints !16

; <label>:33                                      ; preds = %0
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %27, i32 %29, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 2
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %86, !dx.controlflow.hints !17

; <label>:41                                      ; preds = %33
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %44 = fmul fast float %43, %35
  %45 = fmul fast float %43, %36
  %46 = fmul fast float %43, %37
  %47 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %48 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %50 = call float @dx.op.unary.f32(i32 23, float %47)  ; Log(value)
  %51 = call float @dx.op.unary.f32(i32 23, float %48)  ; Log(value)
  %52 = call float @dx.op.unary.f32(i32 23, float %49)  ; Log(value)
  %53 = fmul fast float %50, 0x3FC4640000000000
  %54 = fmul fast float %51, 0x3FC4640000000000
  %55 = fmul fast float %52, 0x3FC4640000000000
  %56 = call float @dx.op.unary.f32(i32 21, float %53)  ; Exp(value)
  %57 = call float @dx.op.unary.f32(i32 21, float %54)  ; Exp(value)
  %58 = call float @dx.op.unary.f32(i32 21, float %55)  ; Exp(value)
  %59 = fmul fast float %56, 0x4032DA0000000000
  %60 = fmul fast float %57, 0x4032DA0000000000
  %61 = fmul fast float %58, 0x4032DA0000000000
  %62 = fadd fast float %59, 8.359375e-01
  %63 = fadd fast float %60, 8.359375e-01
  %64 = fadd fast float %61, 8.359375e-01
  %65 = fmul fast float %56, 1.868750e+01
  %66 = fmul fast float %57, 1.868750e+01
  %67 = fmul fast float %58, 1.868750e+01
  %68 = fadd fast float %65, 1.000000e+00
  %69 = fadd fast float %66, 1.000000e+00
  %70 = fadd fast float %67, 1.000000e+00
  %71 = fdiv fast float %62, %68
  %72 = fdiv fast float %63, %69
  %73 = fdiv fast float %64, %70
  %74 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %75 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %76 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %77 = call float @dx.op.unary.f32(i32 23, float %74)  ; Log(value)
  %78 = call float @dx.op.unary.f32(i32 23, float %75)  ; Log(value)
  %79 = call float @dx.op.unary.f32(i32 23, float %76)  ; Log(value)
  %80 = fmul fast float %77, 7.884375e+01
  %81 = fmul fast float %78, 7.884375e+01
  %82 = fmul fast float %79, 7.884375e+01
  %83 = call float @dx.op.unary.f32(i32 21, float %80)  ; Exp(value)
  %84 = call float @dx.op.unary.f32(i32 21, float %81)  ; Exp(value)
  %85 = call float @dx.op.unary.f32(i32 21, float %82)  ; Exp(value)
  br label %86

; <label>:86                                      ; preds = %41, %33
  %87 = phi float [ %83, %41 ], [ %35, %33 ]
  %88 = phi float [ %84, %41 ], [ %36, %33 ]
  %89 = phi float [ %85, %41 ], [ %37, %33 ]
  %90 = call float @dx.op.binary.f32(i32 35, float %87, float %88)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %90, float %89)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %87, float %88)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 36, float %92, float %89)  ; FMin(a,b)
  %94 = fmul fast float %91, %91
  br label %95

; <label>:95                                      ; preds = %86, %0
  %96 = phi i32 [ 1, %86 ], [ 0, %0 ]
  %97 = phi float [ %93, %86 ], [ 1.000000e+00, %0 ]
  %98 = phi float [ %91, %86 ], [ 0.000000e+00, %0 ]
  %99 = phi float [ %94, %86 ], [ 0.000000e+00, %0 ]
  %100 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %20
  %101 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %20
  %102 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %20
  %103 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %20
  %104 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %20
  store i32 %96, i32 addrspace(3)* %100, align 4
  store float %97, float addrspace(3)* %101, align 4
  store float %98, float addrspace(3)* %102, align 4
  store float %98, float addrspace(3)* %103, align 4
  store float %99, float addrspace(3)* %104, align 4
  %105 = mul i32 %20, 3
  %106 = add i32 0, %105
  %107 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 %106
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  %108 = mul i32 %20, 3
  %109 = add i32 1, %108
  %110 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 %109
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  %111 = mul i32 %20, 3
  %112 = add i32 2, %111
  %113 = getelementptr [384 x float], [384 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 %112
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %114 = icmp slt i32 %20, 64
  br i1 %114, label %115, label %137, !dx.controlflow.hints !18

; <label>:115                                     ; preds = %95
  %116 = load i32, i32 addrspace(3)* %100, align 4
  %117 = load float, float addrspace(3)* %101, align 4
  %118 = load float, float addrspace(3)* %102, align 4
  %119 = load float, float addrspace(3)* %103, align 4
  %120 = load float, float addrspace(3)* %104, align 4
  %121 = add nsw i32 %20, 64
  %122 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %121
  %123 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %121
  %124 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %121
  %125 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %121
  %126 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %121
  %127 = load i32, i32 addrspace(3)* %122, align 4
  %128 = load float, float addrspace(3)* %123, align 4
  %129 = load float, float addrspace(3)* %124, align 4
  %130 = load float, float addrspace(3)* %125, align 4
  %131 = load float, float addrspace(3)* %126, align 4
  %132 = call float @dx.op.binary.f32(i32 36, float %117, float %128)  ; FMin(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float %118, float %129)  ; FMax(a,b)
  %134 = add i32 %127, %116
  %135 = fadd fast float %130, %119
  %136 = fadd fast float %131, %120
  store i32 %134, i32 addrspace(3)* %100, align 4
  store float %132, float addrspace(3)* %101, align 4
  store float %133, float addrspace(3)* %102, align 4
  store float %135, float addrspace(3)* %103, align 4
  store float %136, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %137

; <label>:137                                     ; preds = %115, %95
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %138 = icmp slt i32 %20, 32
  br i1 %138, label %139, label %161, !dx.controlflow.hints !18

; <label>:139                                     ; preds = %137
  %140 = load i32, i32 addrspace(3)* %100, align 4
  %141 = load float, float addrspace(3)* %101, align 4
  %142 = load float, float addrspace(3)* %102, align 4
  %143 = load float, float addrspace(3)* %103, align 4
  %144 = load float, float addrspace(3)* %104, align 4
  %145 = add nsw i32 %20, 32
  %146 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %145
  %147 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %145
  %148 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %145
  %149 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %145
  %150 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %145
  %151 = load i32, i32 addrspace(3)* %146, align 4
  %152 = load float, float addrspace(3)* %147, align 4
  %153 = load float, float addrspace(3)* %148, align 4
  %154 = load float, float addrspace(3)* %149, align 4
  %155 = load float, float addrspace(3)* %150, align 4
  %156 = call float @dx.op.binary.f32(i32 36, float %141, float %152)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %142, float %153)  ; FMax(a,b)
  %158 = add i32 %151, %140
  %159 = fadd fast float %154, %143
  %160 = fadd fast float %155, %144
  store i32 %158, i32 addrspace(3)* %100, align 4
  store float %156, float addrspace(3)* %101, align 4
  store float %157, float addrspace(3)* %102, align 4
  store float %159, float addrspace(3)* %103, align 4
  store float %160, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %161

; <label>:161                                     ; preds = %139, %137
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %162 = icmp slt i32 %20, 16
  br i1 %162, label %163, label %185, !dx.controlflow.hints !18

; <label>:163                                     ; preds = %161
  %164 = load i32, i32 addrspace(3)* %100, align 4
  %165 = load float, float addrspace(3)* %101, align 4
  %166 = load float, float addrspace(3)* %102, align 4
  %167 = load float, float addrspace(3)* %103, align 4
  %168 = load float, float addrspace(3)* %104, align 4
  %169 = add nsw i32 %20, 16
  %170 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %169
  %171 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %169
  %172 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %169
  %173 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %169
  %174 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %169
  %175 = load i32, i32 addrspace(3)* %170, align 4
  %176 = load float, float addrspace(3)* %171, align 4
  %177 = load float, float addrspace(3)* %172, align 4
  %178 = load float, float addrspace(3)* %173, align 4
  %179 = load float, float addrspace(3)* %174, align 4
  %180 = call float @dx.op.binary.f32(i32 36, float %165, float %176)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 35, float %166, float %177)  ; FMax(a,b)
  %182 = add i32 %175, %164
  %183 = fadd fast float %178, %167
  %184 = fadd fast float %179, %168
  store i32 %182, i32 addrspace(3)* %100, align 4
  store float %180, float addrspace(3)* %101, align 4
  store float %181, float addrspace(3)* %102, align 4
  store float %183, float addrspace(3)* %103, align 4
  store float %184, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %185

; <label>:185                                     ; preds = %163, %161
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = icmp slt i32 %20, 8
  br i1 %186, label %187, label %209, !dx.controlflow.hints !18

; <label>:187                                     ; preds = %185
  %188 = load i32, i32 addrspace(3)* %100, align 4
  %189 = load float, float addrspace(3)* %101, align 4
  %190 = load float, float addrspace(3)* %102, align 4
  %191 = load float, float addrspace(3)* %103, align 4
  %192 = load float, float addrspace(3)* %104, align 4
  %193 = add nsw i32 %20, 8
  %194 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %193
  %195 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %193
  %196 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %193
  %197 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %193
  %198 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %193
  %199 = load i32, i32 addrspace(3)* %194, align 4
  %200 = load float, float addrspace(3)* %195, align 4
  %201 = load float, float addrspace(3)* %196, align 4
  %202 = load float, float addrspace(3)* %197, align 4
  %203 = load float, float addrspace(3)* %198, align 4
  %204 = call float @dx.op.binary.f32(i32 36, float %189, float %200)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %190, float %201)  ; FMax(a,b)
  %206 = add i32 %199, %188
  %207 = fadd fast float %202, %191
  %208 = fadd fast float %203, %192
  store i32 %206, i32 addrspace(3)* %100, align 4
  store float %204, float addrspace(3)* %101, align 4
  store float %205, float addrspace(3)* %102, align 4
  store float %207, float addrspace(3)* %103, align 4
  store float %208, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %209

; <label>:209                                     ; preds = %187, %185
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %210 = icmp slt i32 %20, 4
  br i1 %210, label %211, label %233, !dx.controlflow.hints !18

; <label>:211                                     ; preds = %209
  %212 = load i32, i32 addrspace(3)* %100, align 4
  %213 = load float, float addrspace(3)* %101, align 4
  %214 = load float, float addrspace(3)* %102, align 4
  %215 = load float, float addrspace(3)* %103, align 4
  %216 = load float, float addrspace(3)* %104, align 4
  %217 = add nsw i32 %20, 4
  %218 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %217
  %219 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %217
  %220 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %217
  %221 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %217
  %222 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %217
  %223 = load i32, i32 addrspace(3)* %218, align 4
  %224 = load float, float addrspace(3)* %219, align 4
  %225 = load float, float addrspace(3)* %220, align 4
  %226 = load float, float addrspace(3)* %221, align 4
  %227 = load float, float addrspace(3)* %222, align 4
  %228 = call float @dx.op.binary.f32(i32 36, float %213, float %224)  ; FMin(a,b)
  %229 = call float @dx.op.binary.f32(i32 35, float %214, float %225)  ; FMax(a,b)
  %230 = add i32 %223, %212
  %231 = fadd fast float %226, %215
  %232 = fadd fast float %227, %216
  store i32 %230, i32 addrspace(3)* %100, align 4
  store float %228, float addrspace(3)* %101, align 4
  store float %229, float addrspace(3)* %102, align 4
  store float %231, float addrspace(3)* %103, align 4
  store float %232, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %233

; <label>:233                                     ; preds = %211, %209
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %234 = icmp slt i32 %20, 2
  br i1 %234, label %235, label %257, !dx.controlflow.hints !18

; <label>:235                                     ; preds = %233
  %236 = load i32, i32 addrspace(3)* %100, align 4
  %237 = load float, float addrspace(3)* %101, align 4
  %238 = load float, float addrspace(3)* %102, align 4
  %239 = load float, float addrspace(3)* %103, align 4
  %240 = load float, float addrspace(3)* %104, align 4
  %241 = add nsw i32 %20, 2
  %242 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %241
  %243 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %241
  %244 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %241
  %245 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %241
  %246 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %241
  %247 = load i32, i32 addrspace(3)* %242, align 4
  %248 = load float, float addrspace(3)* %243, align 4
  %249 = load float, float addrspace(3)* %244, align 4
  %250 = load float, float addrspace(3)* %245, align 4
  %251 = load float, float addrspace(3)* %246, align 4
  %252 = call float @dx.op.binary.f32(i32 36, float %237, float %248)  ; FMin(a,b)
  %253 = call float @dx.op.binary.f32(i32 35, float %238, float %249)  ; FMax(a,b)
  %254 = add i32 %247, %236
  %255 = fadd fast float %250, %239
  %256 = fadd fast float %251, %240
  store i32 %254, i32 addrspace(3)* %100, align 4
  store float %252, float addrspace(3)* %101, align 4
  store float %253, float addrspace(3)* %102, align 4
  store float %255, float addrspace(3)* %103, align 4
  store float %256, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %257

; <label>:257                                     ; preds = %235, %233
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %258 = icmp slt i32 %20, 1
  br i1 %258, label %259, label %281, !dx.controlflow.hints !18

; <label>:259                                     ; preds = %257
  %260 = load i32, i32 addrspace(3)* %100, align 4
  %261 = load float, float addrspace(3)* %101, align 4
  %262 = load float, float addrspace(3)* %102, align 4
  %263 = load float, float addrspace(3)* %103, align 4
  %264 = load float, float addrspace(3)* %104, align 4
  %265 = add nsw i32 %20, 1
  %266 = getelementptr [128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 %265
  %267 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 %265
  %268 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 %265
  %269 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 %265
  %270 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 %265
  %271 = load i32, i32 addrspace(3)* %266, align 4
  %272 = load float, float addrspace(3)* %267, align 4
  %273 = load float, float addrspace(3)* %268, align 4
  %274 = load float, float addrspace(3)* %269, align 4
  %275 = load float, float addrspace(3)* %270, align 4
  %276 = call float @dx.op.binary.f32(i32 36, float %261, float %272)  ; FMin(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %262, float %273)  ; FMax(a,b)
  %278 = add i32 %271, %260
  %279 = fadd fast float %274, %263
  %280 = fadd fast float %275, %264
  store i32 %278, i32 addrspace(3)* %100, align 4
  store float %276, float addrspace(3)* %101, align 4
  store float %277, float addrspace(3)* %102, align 4
  store float %279, float addrspace(3)* %103, align 4
  store float %280, float addrspace(3)* %104, align 4
  store float 0.000000e+00, float addrspace(3)* %107, align 4
  store float 0.000000e+00, float addrspace(3)* %110, align 4
  store float 0.000000e+00, float addrspace(3)* %113, align 4
  br label %281

; <label>:281                                     ; preds = %259, %257
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %284 = fptosi float %283 to i32
  %285 = add i32 %23, -1
  %286 = add i32 %285, %284
  %287 = sdiv i32 %286, %284
  %288 = add nsw i32 %287, 31
  %289 = sdiv i32 %288, 32
  %290 = mul i32 %289, %10
  %291 = add i32 %290, %9
  %292 = icmp eq i32 %8, 0
  br i1 %292, label %293, label %302, !dx.controlflow.hints !19

; <label>:293                                     ; preds = %281
  %294 = load i32, i32 addrspace(3)* getelementptr inbounds ([128 x i32], [128 x i32] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.0", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %291, i32 0, i32 %294, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %295 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.1", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %291, i32 4, float %295, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %296 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.2", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %291, i32 8, float %296, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %297 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.3", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %291, i32 12, float %297, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %298 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.4", i32 0, i32 0), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %291, i32 16, float %298, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %299 = load float, float addrspace(3)* getelementptr inbounds ([384 x float], [384 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 0), align 4
  %300 = load float, float addrspace(3)* getelementptr inbounds ([384 x float], [384 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 1), align 4
  %301 = load float, float addrspace(3)* getelementptr inbounds ([384 x float], [384 x float] addrspace(3)* @"\01?grOut@@3PAUMDBlock@@A.5.v.1dim", i32 0, i32 2), align 4
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %291, i32 20, float %299, float %300, float %301, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %302

; <label>:302                                     ; preds = %293, %281
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

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
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWStructuredBuffer<MDBlock>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!10 = !{i32 1, i32 32}
!11 = !{!12}
!12 = !{i32 0, %cbCS* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @csmain, !"csmain", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 32, i32 4, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

