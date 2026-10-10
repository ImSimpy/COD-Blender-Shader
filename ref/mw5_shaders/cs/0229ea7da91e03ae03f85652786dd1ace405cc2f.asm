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
; shader hash: e232b6cdadb48e42aaf28f2ec8202ba7
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; Resource bind info for 
; {
;
;   [816 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV     f32          3d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"hostlayout.class.RWStructuredBuffer<DispMap3DLutGenParams>" = type { %hostlayout.struct.DispMap3DLutGenParams }
%hostlayout.struct.DispMap3DLutGenParams = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, i32, i32, i32, float, float, float, [4 x <4 x float>], [4 x <4 x float>], float, float, float, i32, float, float, <2 x float>, <4 x float>, <4 x float>, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <3 x float>, float, [4 x <4 x float>], float, float, float, float, <3 x float>, float, [4 x <4 x float>], i32, i32, float, float }
%"class.RWTexture3D<vector<half, 4> >" = type { <4 x float> }

define void @csmain() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %6 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 720)  ; BufferLoad(srv,index,wot)
  %7 = extractvalue %dx.types.ResRet.f32 %6, 0
  %8 = fptoui float %7 to i32
  %9 = icmp uge i32 %3, %8
  %10 = extractvalue %dx.types.ResRet.f32 %6, 1
  %11 = fptoui float %10 to i32
  %12 = icmp uge i32 %4, %11
  %13 = or i1 %9, %12
  %14 = extractvalue %dx.types.ResRet.f32 %6, 2
  %15 = fptoui float %14 to i32
  %16 = icmp uge i32 %5, %15
  %17 = or i1 %13, %16
  br i1 %17, label %708, label %18, !dx.controlflow.hints !13

; <label>:18                                      ; preds = %0
  %19 = uitofp i32 %3 to float
  %20 = uitofp i32 %4 to float
  %21 = uitofp i32 %5 to float
  %22 = fadd fast float %7, -1.000000e+00
  %23 = fadd fast float %10, -1.000000e+00
  %24 = fadd fast float %14, -1.000000e+00
  %25 = fdiv fast float %19, %22
  %26 = fdiv fast float %20, %23
  %27 = fdiv fast float %21, %24
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 800)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = icmp eq i32 %29, 553311
  %31 = call float @dx.op.unary.f32(i32 23, float %25)  ; Log(value)
  %32 = call float @dx.op.unary.f32(i32 23, float %26)  ; Log(value)
  %33 = call float @dx.op.unary.f32(i32 23, float %27)  ; Log(value)
  br i1 %30, label %34, label %70, !dx.controlflow.hints !14

; <label>:34                                      ; preds = %18
  %35 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 732)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = fmul fast float %31, %36
  %38 = fmul fast float %32, %36
  %39 = fmul fast float %33, %36
  %40 = call float @dx.op.unary.f32(i32 21, float %37)  ; Exp(value)
  %41 = call float @dx.op.unary.f32(i32 21, float %38)  ; Exp(value)
  %42 = call float @dx.op.unary.f32(i32 21, float %39)  ; Exp(value)
  %43 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 736)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = extractvalue %dx.types.ResRet.f32 %43, 1
  %46 = extractvalue %dx.types.ResRet.f32 %43, 2
  %47 = extractvalue %dx.types.ResRet.f32 %43, 3
  %48 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 752)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = extractvalue %dx.types.ResRet.f32 %48, 3
  %53 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 768)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  %55 = extractvalue %dx.types.ResRet.f32 %53, 1
  %56 = extractvalue %dx.types.ResRet.f32 %53, 2
  %57 = extractvalue %dx.types.ResRet.f32 %53, 3
  %58 = fmul fast float %44, %40
  %59 = call float @dx.op.tertiary.f32(i32 46, float %49, float %41, float %58)  ; FMad(a,b,c)
  %60 = call float @dx.op.tertiary.f32(i32 46, float %54, float %42, float %59)  ; FMad(a,b,c)
  %61 = fmul fast float %45, %40
  %62 = call float @dx.op.tertiary.f32(i32 46, float %50, float %41, float %61)  ; FMad(a,b,c)
  %63 = call float @dx.op.tertiary.f32(i32 46, float %55, float %42, float %62)  ; FMad(a,b,c)
  %64 = fmul fast float %46, %40
  %65 = call float @dx.op.tertiary.f32(i32 46, float %51, float %41, float %64)  ; FMad(a,b,c)
  %66 = call float @dx.op.tertiary.f32(i32 46, float %56, float %42, float %65)  ; FMad(a,b,c)
  %67 = fmul fast float %47, %40
  %68 = call float @dx.op.tertiary.f32(i32 46, float %52, float %41, float %67)  ; FMad(a,b,c)
  %69 = call float @dx.op.tertiary.f32(i32 46, float %57, float %42, float %68)  ; FMad(a,b,c)
  br label %703

; <label>:70                                      ; preds = %18
  %71 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 732)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = fmul fast float %31, %72
  %74 = fmul fast float %32, %72
  %75 = fmul fast float %33, %72
  %76 = call float @dx.op.unary.f32(i32 21, float %73)  ; Exp(value)
  %77 = call float @dx.op.unary.f32(i32 21, float %74)  ; Exp(value)
  %78 = call float @dx.op.unary.f32(i32 21, float %75)  ; Exp(value)
  %79 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 192)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = fsub fast float %76, %80
  %82 = fsub fast float %77, %80
  %83 = fsub fast float %78, %80
  %84 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 196)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  %86 = fmul fast float %85, %81
  %87 = fmul fast float %85, %82
  %88 = fmul fast float %85, %83
  %89 = fmul fast float %80, %85
  %90 = fsub fast float -0.000000e+00, %89
  %91 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %86)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %87)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %88)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %90)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %91)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %92)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %93)  ; FMin(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %94)  ; FMin(a,b)
  %99 = call float @dx.op.unary.f32(i32 23, float %95)  ; Log(value)
  %100 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %101 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %102 = call float @dx.op.unary.f32(i32 23, float %98)  ; Log(value)
  %103 = fmul fast float %99, 0x3F89F9B580000000
  %104 = fmul fast float %100, 0x3F89F9B580000000
  %105 = fmul fast float %101, 0x3F89F9B580000000
  %106 = fmul fast float %102, 0x3F89F9B580000000
  %107 = call float @dx.op.unary.f32(i32 21, float %103)  ; Exp(value)
  %108 = call float @dx.op.unary.f32(i32 21, float %104)  ; Exp(value)
  %109 = call float @dx.op.unary.f32(i32 21, float %105)  ; Exp(value)
  %110 = call float @dx.op.unary.f32(i32 21, float %106)  ; Exp(value)
  %111 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %107)  ; FMin(a,b)
  %112 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %108)  ; FMin(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %109)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %110)  ; FMin(a,b)
  %115 = fadd fast float %111, -8.359375e-01
  %116 = fadd fast float %112, -8.359375e-01
  %117 = fadd fast float %113, -8.359375e-01
  %118 = fadd fast float %114, -8.359375e-01
  %119 = fmul fast float %111, 1.868750e+01
  %120 = fmul fast float %112, 1.868750e+01
  %121 = fmul fast float %113, 1.868750e+01
  %122 = fmul fast float %114, 1.868750e+01
  %123 = fsub fast float 0x4032DA0000000000, %119
  %124 = fsub fast float 0x4032DA0000000000, %120
  %125 = fsub fast float 0x4032DA0000000000, %121
  %126 = fsub fast float 0x4032DA0000000000, %122
  %127 = fdiv fast float %115, %123
  %128 = fdiv fast float %116, %124
  %129 = fdiv fast float %117, %125
  %130 = fdiv fast float %118, %126
  %131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %127)  ; FMax(a,b)
  %132 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %128)  ; FMax(a,b)
  %133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %129)  ; FMax(a,b)
  %134 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %130)  ; FMax(a,b)
  %135 = call float @dx.op.unary.f32(i32 23, float %131)  ; Log(value)
  %136 = call float @dx.op.unary.f32(i32 23, float %132)  ; Log(value)
  %137 = call float @dx.op.unary.f32(i32 23, float %133)  ; Log(value)
  %138 = call float @dx.op.unary.f32(i32 23, float %134)  ; Log(value)
  %139 = fmul fast float %135, 0x40191C0D60000000
  %140 = fmul fast float %136, 0x40191C0D60000000
  %141 = fmul fast float %137, 0x40191C0D60000000
  %142 = fmul fast float %138, 0x40191C0D60000000
  %143 = call float @dx.op.unary.f32(i32 21, float %139)  ; Exp(value)
  %144 = call float @dx.op.unary.f32(i32 21, float %140)  ; Exp(value)
  %145 = call float @dx.op.unary.f32(i32 21, float %141)  ; Exp(value)
  %146 = call float @dx.op.unary.f32(i32 21, float %142)  ; Exp(value)
  %147 = fmul fast float %143, 1.000000e+04
  %148 = fmul fast float %144, 1.000000e+04
  %149 = fmul fast float %145, 1.000000e+04
  %150 = fmul fast float %146, 1.000000e+04
  %151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 64)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = extractvalue %dx.types.ResRet.f32 %151, 1
  %154 = extractvalue %dx.types.ResRet.f32 %151, 2
  %155 = extractvalue %dx.types.ResRet.f32 %151, 3
  %156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 80)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.f32 %156, 0
  %158 = extractvalue %dx.types.ResRet.f32 %156, 1
  %159 = extractvalue %dx.types.ResRet.f32 %156, 2
  %160 = extractvalue %dx.types.ResRet.f32 %156, 3
  %161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 96)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = extractvalue %dx.types.ResRet.f32 %161, 1
  %164 = extractvalue %dx.types.ResRet.f32 %161, 2
  %165 = extractvalue %dx.types.ResRet.f32 %161, 3
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 112)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = extractvalue %dx.types.ResRet.f32 %166, 1
  %169 = extractvalue %dx.types.ResRet.f32 %166, 2
  %170 = extractvalue %dx.types.ResRet.f32 %166, 3
  %171 = fmul fast float %152, %147
  %172 = call float @dx.op.tertiary.f32(i32 46, float %157, float %148, float %171)  ; FMad(a,b,c)
  %173 = call float @dx.op.tertiary.f32(i32 46, float %162, float %149, float %172)  ; FMad(a,b,c)
  %174 = call float @dx.op.tertiary.f32(i32 46, float %167, float %150, float %173)  ; FMad(a,b,c)
  %175 = fmul fast float %153, %147
  %176 = call float @dx.op.tertiary.f32(i32 46, float %158, float %148, float %175)  ; FMad(a,b,c)
  %177 = call float @dx.op.tertiary.f32(i32 46, float %163, float %149, float %176)  ; FMad(a,b,c)
  %178 = call float @dx.op.tertiary.f32(i32 46, float %168, float %150, float %177)  ; FMad(a,b,c)
  %179 = fmul fast float %154, %147
  %180 = call float @dx.op.tertiary.f32(i32 46, float %159, float %148, float %179)  ; FMad(a,b,c)
  %181 = call float @dx.op.tertiary.f32(i32 46, float %164, float %149, float %180)  ; FMad(a,b,c)
  %182 = call float @dx.op.tertiary.f32(i32 46, float %169, float %150, float %181)  ; FMad(a,b,c)
  %183 = fmul fast float %155, %147
  %184 = call float @dx.op.tertiary.f32(i32 46, float %160, float %148, float %183)  ; FMad(a,b,c)
  %185 = call float @dx.op.tertiary.f32(i32 46, float %165, float %149, float %184)  ; FMad(a,b,c)
  %186 = call float @dx.op.tertiary.f32(i32 46, float %170, float %150, float %185)  ; FMad(a,b,c)
  %187 = fmul fast float %174, 0x3F1A36E2E0000000
  %188 = fmul fast float %178, 0x3F1A36E2E0000000
  %189 = fmul fast float %182, 0x3F1A36E2E0000000
  %190 = fmul fast float %186, 0x3F1A36E2E0000000
  %191 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %187)  ; FMax(a,b)
  %192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %188)  ; FMax(a,b)
  %193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %189)  ; FMax(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %190)  ; FMax(a,b)
  %195 = call float @dx.op.unary.f32(i32 23, float %191)  ; Log(value)
  %196 = call float @dx.op.unary.f32(i32 23, float %192)  ; Log(value)
  %197 = call float @dx.op.unary.f32(i32 23, float %193)  ; Log(value)
  %198 = call float @dx.op.unary.f32(i32 23, float %194)  ; Log(value)
  %199 = fmul fast float %195, 0x3FC4640000000000
  %200 = fmul fast float %196, 0x3FC4640000000000
  %201 = fmul fast float %197, 0x3FC4640000000000
  %202 = fmul fast float %198, 0x3FC4640000000000
  %203 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %204 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %205 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %206 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %207 = fmul fast float %203, 0x4032DA0000000000
  %208 = fmul fast float %204, 0x4032DA0000000000
  %209 = fmul fast float %205, 0x4032DA0000000000
  %210 = fmul fast float %206, 0x4032DA0000000000
  %211 = fadd fast float %207, 8.359375e-01
  %212 = fadd fast float %208, 8.359375e-01
  %213 = fadd fast float %209, 8.359375e-01
  %214 = fadd fast float %210, 8.359375e-01
  %215 = fmul fast float %203, 1.868750e+01
  %216 = fmul fast float %204, 1.868750e+01
  %217 = fmul fast float %205, 1.868750e+01
  %218 = fmul fast float %206, 1.868750e+01
  %219 = fadd fast float %215, 1.000000e+00
  %220 = fadd fast float %216, 1.000000e+00
  %221 = fadd fast float %217, 1.000000e+00
  %222 = fadd fast float %218, 1.000000e+00
  %223 = fdiv fast float %211, %219
  %224 = fdiv fast float %212, %220
  %225 = fdiv fast float %213, %221
  %226 = fdiv fast float %214, %222
  %227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %223)  ; FMax(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %224)  ; FMax(a,b)
  %229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %225)  ; FMax(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %226)  ; FMax(a,b)
  %231 = call float @dx.op.unary.f32(i32 23, float %227)  ; Log(value)
  %232 = call float @dx.op.unary.f32(i32 23, float %228)  ; Log(value)
  %233 = call float @dx.op.unary.f32(i32 23, float %229)  ; Log(value)
  %234 = call float @dx.op.unary.f32(i32 23, float %230)  ; Log(value)
  %235 = fmul fast float %231, 7.884375e+01
  %236 = fmul fast float %232, 7.884375e+01
  %237 = fmul fast float %233, 7.884375e+01
  %238 = fmul fast float %234, 7.884375e+01
  %239 = call float @dx.op.unary.f32(i32 21, float %235)  ; Exp(value)
  %240 = call float @dx.op.unary.f32(i32 21, float %236)  ; Exp(value)
  %241 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %242 = call float @dx.op.unary.f32(i32 21, float %238)  ; Exp(value)
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 128)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 144)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 160)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 176)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = fmul fast float %244, %239
  %260 = call float @dx.op.tertiary.f32(i32 46, float %248, float %240, float %259)  ; FMad(a,b,c)
  %261 = call float @dx.op.tertiary.f32(i32 46, float %252, float %241, float %260)  ; FMad(a,b,c)
  %262 = call float @dx.op.tertiary.f32(i32 46, float %256, float %242, float %261)  ; FMad(a,b,c)
  %263 = fmul fast float %245, %239
  %264 = call float @dx.op.tertiary.f32(i32 46, float %249, float %240, float %263)  ; FMad(a,b,c)
  %265 = call float @dx.op.tertiary.f32(i32 46, float %253, float %241, float %264)  ; FMad(a,b,c)
  %266 = call float @dx.op.tertiary.f32(i32 46, float %257, float %242, float %265)  ; FMad(a,b,c)
  %267 = fmul fast float %246, %239
  %268 = call float @dx.op.tertiary.f32(i32 46, float %250, float %240, float %267)  ; FMad(a,b,c)
  %269 = call float @dx.op.tertiary.f32(i32 46, float %254, float %241, float %268)  ; FMad(a,b,c)
  %270 = call float @dx.op.tertiary.f32(i32 46, float %258, float %242, float %269)  ; FMad(a,b,c)
  %271 = call float @dx.op.binary.f32(i32 35, float %262, float 0.000000e+00)  ; FMax(a,b)
  %272 = call float @dx.op.binary.f32(i32 36, float %271, float 1.000000e+00)  ; FMin(a,b)
  %273 = fmul fast float %266, %266
  %274 = fmul fast float %270, %270
  %275 = fadd fast float %274, %273
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 480)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fcmp fast ole float %272, %277
  %279 = xor i1 %278, true
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 484)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = fcmp fast ole float %272, %281
  %283 = and i1 %282, %279
  br i1 %278, label %284, label %292, !dx.controlflow.hints !15

; <label>:284                                     ; preds = %70
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 492)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fsub fast float %272, %277
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 504)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = fmul fast float %289, %287
  %291 = fadd fast float %290, %286
  br label %335

; <label>:292                                     ; preds = %70
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 488)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = fcmp fast ult float %272, %294
  br i1 %295, label %304, label %296, !dx.controlflow.hints !16

; <label>:296                                     ; preds = %292
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 500)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = fsub fast float %272, %294
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 508)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fmul fast float %301, %299
  %303 = fadd fast float %302, %298
  br label %335

; <label>:304                                     ; preds = %292
  br i1 %283, label %305, label %320, !dx.controlflow.hints !17

; <label>:305                                     ; preds = %304
  %306 = fsub fast float %272, %277
  %307 = fmul fast float %306, %306
  %308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 528)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 2
  %310 = fmul fast float %309, %307
  %311 = extractvalue %dx.types.ResRet.f32 %308, 1
  %312 = fmul fast float %311, %307
  %313 = extractvalue %dx.types.ResRet.f32 %308, 0
  %314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 492)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = fadd fast float %313, %310
  %317 = fmul fast float %316, %306
  %318 = fadd fast float %315, %312
  %319 = fadd fast float %318, %317
  br label %335

; <label>:320                                     ; preds = %304
  %321 = fsub fast float %272, %281
  %322 = fmul fast float %321, %321
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 544)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 2
  %325 = fmul fast float %324, %322
  %326 = extractvalue %dx.types.ResRet.f32 %323, 1
  %327 = fmul fast float %326, %322
  %328 = extractvalue %dx.types.ResRet.f32 %323, 0
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 496)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = fadd fast float %328, %325
  %332 = fmul fast float %331, %321
  %333 = fadd fast float %330, %327
  %334 = fadd fast float %333, %332
  br label %335

; <label>:335                                     ; preds = %320, %305, %296, %284
  %336 = phi float [ %291, %284 ], [ %303, %296 ], [ %319, %305 ], [ %334, %320 ]
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 460)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = fsub fast float %336, %338
  %340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 468)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.f32 %340, 0
  %342 = fmul fast float %341, %339
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 444)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = fmul fast float %342, %344
  %346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 448)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.f32 %346, 0
  %348 = fadd fast float %347, %345
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 452)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  %352 = call float @dx.op.unary.f32(i32 23, float %351)  ; Log(value)
  %353 = fmul fast float %352, %350
  %354 = call float @dx.op.unary.f32(i32 21, float %353)  ; Exp(value)
  %355 = fcmp fast oge float %348, 0.000000e+00
  %356 = select i1 %355, float 1.000000e+00, float -1.000000e+00
  %357 = fmul fast float %354, %356
  %358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 464)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fmul fast float %357, %359
  %361 = fadd fast float %338, %360
  %362 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %361)  ; FMax(a,b)
  %363 = fadd fast float %272, 0xBF79019020000000
  %364 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %363)  ; FMax(a,b)
  %365 = fmul fast float %364, 0x4012B851E0000000
  %366 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %365)  ; FMin(a,b)
  %367 = fadd fast float %366, -1.000000e+00
  %368 = fcmp fast oge float %367, 0.000000e+00
  %369 = select i1 %368, float 1.000000e+00, float -1.000000e+00
  %370 = fmul fast float %367, %367
  %371 = fmul fast float %370, %369
  %372 = fadd fast float %371, 1.000000e+00
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 432)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fsub fast float %362, %374
  %376 = call float @dx.op.binary.f32(i32 35, float 0x3F30010020000000, float %375)  ; FMax(a,b)
  %377 = fsub fast float %374, %277
  %378 = call float @dx.op.binary.f32(i32 35, float 0x3F30010020000000, float %377)  ; FMax(a,b)
  %379 = fdiv fast float %376, %378
  %380 = call float @dx.op.binary.f32(i32 36, float %379, float 1.000000e+00)  ; FMin(a,b)
  %381 = fadd fast float %380, -1.000000e+00
  %382 = fmul fast float %381, %381
  %383 = fcmp fast olt float %381, 0.000000e+00
  %384 = select i1 %383, float -1.000000e+00, float 1.000000e+00
  %385 = fmul fast float %382, %384
  %386 = fadd fast float %385, 1.000000e+00
  %387 = call float @dx.op.binary.f32(i32 35, float 0x3F30010020000000, float %362)  ; FMax(a,b)
  %388 = fadd fast float %387, -1.000000e+00
  %389 = fmul fast float %388, %388
  %390 = fmul fast float %389, %388
  %391 = fadd fast float %390, 1.000000e+00
  %392 = call float @dx.op.binary.f32(i32 35, float 0x3F30010020000000, float %272)  ; FMax(a,b)
  %393 = fadd fast float %392, -1.000000e+00
  %394 = fmul fast float %393, %393
  %395 = fmul fast float %394, %393
  %396 = fadd fast float %395, 1.000000e+00
  %397 = fdiv fast float %396, %391
  %398 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %397)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 35, float %372, float %398)  ; FMax(a,b)
  %400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 576)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.f32 %400, 0
  %402 = fmul fast float %391, %386
  %403 = fmul fast float %402, %399
  %404 = fmul fast float %403, %401
  %405 = fdiv fast float %404, %396
  %406 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %407 = fmul fast float %406, %406
  %408 = fmul fast float %407, %406
  %409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 564)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = fmul fast float %408, %410
  %412 = fadd fast float %411, 1.000000e+00
  %413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 568)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = call float @dx.op.binary.f32(i32 35, float %414, float %412)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %415)  ; FMin(a,b)
  %417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 560)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = fmul fast float %418, %406
  %420 = fadd fast float %419, 1.000000e+00
  %421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 584)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.f32 %421, 0
  %423 = fmul fast float %408, %422
  %424 = fadd fast float %423, 1.000000e+00
  %425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 588)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.f32 %425, 0
  %427 = call float @dx.op.binary.f32(i32 35, float %426, float %424)  ; FMax(a,b)
  %428 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %427)  ; FMin(a,b)
  %429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 580)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.f32 %429, 0
  %431 = fmul fast float %430, %406
  %432 = fadd fast float %431, 1.000000e+00
  %433 = fmul fast float %432, %428
  %434 = fmul fast float %416, %361
  %435 = fmul fast float %434, %420
  %436 = fmul fast float %405, %266
  %437 = fmul fast float %436, %433
  %438 = fmul fast float %405, %270
  %439 = fmul fast float %438, %433
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 240)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = extractvalue %dx.types.ResRet.f32 %440, 1
  %443 = extractvalue %dx.types.ResRet.f32 %440, 2
  %444 = extractvalue %dx.types.ResRet.f32 %440, 3
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 256)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 272)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = fmul fast float %441, %435
  %456 = call float @dx.op.tertiary.f32(i32 46, float %446, float %437, float %455)  ; FMad(a,b,c)
  %457 = call float @dx.op.tertiary.f32(i32 46, float %451, float %439, float %456)  ; FMad(a,b,c)
  %458 = fmul fast float %442, %435
  %459 = call float @dx.op.tertiary.f32(i32 46, float %447, float %437, float %458)  ; FMad(a,b,c)
  %460 = call float @dx.op.tertiary.f32(i32 46, float %452, float %439, float %459)  ; FMad(a,b,c)
  %461 = fmul fast float %443, %435
  %462 = call float @dx.op.tertiary.f32(i32 46, float %448, float %437, float %461)  ; FMad(a,b,c)
  %463 = call float @dx.op.tertiary.f32(i32 46, float %453, float %439, float %462)  ; FMad(a,b,c)
  %464 = fmul fast float %444, %435
  %465 = call float @dx.op.tertiary.f32(i32 46, float %449, float %437, float %464)  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float %454, float %439, float %465)  ; FMad(a,b,c)
  %467 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %457)  ; FMax(a,b)
  %468 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %460)  ; FMax(a,b)
  %469 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %463)  ; FMax(a,b)
  %470 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %466)  ; FMax(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %467)  ; FMin(a,b)
  %472 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %468)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %469)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 36, float 0x3FFFAE1480000000, float %470)  ; FMin(a,b)
  %475 = call float @dx.op.unary.f32(i32 23, float %471)  ; Log(value)
  %476 = call float @dx.op.unary.f32(i32 23, float %472)  ; Log(value)
  %477 = call float @dx.op.unary.f32(i32 23, float %473)  ; Log(value)
  %478 = call float @dx.op.unary.f32(i32 23, float %474)  ; Log(value)
  %479 = fmul fast float %475, 0x3F89F9B580000000
  %480 = fmul fast float %476, 0x3F89F9B580000000
  %481 = fmul fast float %477, 0x3F89F9B580000000
  %482 = fmul fast float %478, 0x3F89F9B580000000
  %483 = call float @dx.op.unary.f32(i32 21, float %479)  ; Exp(value)
  %484 = call float @dx.op.unary.f32(i32 21, float %480)  ; Exp(value)
  %485 = call float @dx.op.unary.f32(i32 21, float %481)  ; Exp(value)
  %486 = call float @dx.op.unary.f32(i32 21, float %482)  ; Exp(value)
  %487 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %483)  ; FMin(a,b)
  %488 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %484)  ; FMin(a,b)
  %489 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %485)  ; FMin(a,b)
  %490 = call float @dx.op.binary.f32(i32 36, float 0x3FF023F5C0000000, float %486)  ; FMin(a,b)
  %491 = fadd fast float %487, -8.359375e-01
  %492 = fadd fast float %488, -8.359375e-01
  %493 = fadd fast float %489, -8.359375e-01
  %494 = fadd fast float %490, -8.359375e-01
  %495 = fmul fast float %487, 1.868750e+01
  %496 = fmul fast float %488, 1.868750e+01
  %497 = fmul fast float %489, 1.868750e+01
  %498 = fmul fast float %490, 1.868750e+01
  %499 = fsub fast float 0x4032DA0000000000, %495
  %500 = fsub fast float 0x4032DA0000000000, %496
  %501 = fsub fast float 0x4032DA0000000000, %497
  %502 = fsub fast float 0x4032DA0000000000, %498
  %503 = fdiv fast float %491, %499
  %504 = fdiv fast float %492, %500
  %505 = fdiv fast float %493, %501
  %506 = fdiv fast float %494, %502
  %507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %503)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %504)  ; FMax(a,b)
  %509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %505)  ; FMax(a,b)
  %510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %506)  ; FMax(a,b)
  %511 = call float @dx.op.unary.f32(i32 23, float %507)  ; Log(value)
  %512 = call float @dx.op.unary.f32(i32 23, float %508)  ; Log(value)
  %513 = call float @dx.op.unary.f32(i32 23, float %509)  ; Log(value)
  %514 = call float @dx.op.unary.f32(i32 23, float %510)  ; Log(value)
  %515 = fmul fast float %511, 0x40191C0D60000000
  %516 = fmul fast float %512, 0x40191C0D60000000
  %517 = fmul fast float %513, 0x40191C0D60000000
  %518 = fmul fast float %514, 0x40191C0D60000000
  %519 = call float @dx.op.unary.f32(i32 21, float %515)  ; Exp(value)
  %520 = call float @dx.op.unary.f32(i32 21, float %516)  ; Exp(value)
  %521 = call float @dx.op.unary.f32(i32 21, float %517)  ; Exp(value)
  %522 = call float @dx.op.unary.f32(i32 21, float %518)  ; Exp(value)
  %523 = fmul fast float %519, 1.000000e+04
  %524 = fmul fast float %520, 1.000000e+04
  %525 = fmul fast float %521, 1.000000e+04
  %526 = fmul fast float %522, 1.000000e+04
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 304)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = extractvalue %dx.types.ResRet.f32 %527, 3
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 320)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = extractvalue %dx.types.ResRet.f32 %532, 3
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 336)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = extractvalue %dx.types.ResRet.f32 %537, 3
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 352)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 2
  %546 = extractvalue %dx.types.ResRet.f32 %542, 3
  %547 = fmul fast float %528, %523
  %548 = call float @dx.op.tertiary.f32(i32 46, float %533, float %524, float %547)  ; FMad(a,b,c)
  %549 = call float @dx.op.tertiary.f32(i32 46, float %538, float %525, float %548)  ; FMad(a,b,c)
  %550 = call float @dx.op.tertiary.f32(i32 46, float %543, float %526, float %549)  ; FMad(a,b,c)
  %551 = fmul fast float %529, %523
  %552 = call float @dx.op.tertiary.f32(i32 46, float %534, float %524, float %551)  ; FMad(a,b,c)
  %553 = call float @dx.op.tertiary.f32(i32 46, float %539, float %525, float %552)  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float %544, float %526, float %553)  ; FMad(a,b,c)
  %555 = fmul fast float %530, %523
  %556 = call float @dx.op.tertiary.f32(i32 46, float %535, float %524, float %555)  ; FMad(a,b,c)
  %557 = call float @dx.op.tertiary.f32(i32 46, float %540, float %525, float %556)  ; FMad(a,b,c)
  %558 = call float @dx.op.tertiary.f32(i32 46, float %545, float %526, float %557)  ; FMad(a,b,c)
  %559 = fmul fast float %531, %523
  %560 = call float @dx.op.tertiary.f32(i32 46, float %536, float %524, float %559)  ; FMad(a,b,c)
  %561 = call float @dx.op.tertiary.f32(i32 46, float %541, float %525, float %560)  ; FMad(a,b,c)
  %562 = call float @dx.op.tertiary.f32(i32 46, float %546, float %526, float %561)  ; FMad(a,b,c)
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 0, i32 380)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %635, !dx.controlflow.hints !18

; <label>:566                                     ; preds = %335
  %567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 384)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = fmul fast float %568, %550
  %570 = fmul fast float %568, %554
  %571 = fmul fast float %568, %558
  %572 = fmul fast float %568, %562
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 388)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = fadd fast float %574, %569
  %576 = fadd fast float %574, %570
  %577 = fadd fast float %574, %571
  %578 = fadd fast float %574, %572
  %579 = fmul fast float %575, 0x3F1A36E2E0000000
  %580 = fmul fast float %576, 0x3F1A36E2E0000000
  %581 = fmul fast float %577, 0x3F1A36E2E0000000
  %582 = fmul fast float %578, 0x3F1A36E2E0000000
  %583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %579)  ; FMax(a,b)
  %584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %580)  ; FMax(a,b)
  %585 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %581)  ; FMax(a,b)
  %586 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %582)  ; FMax(a,b)
  %587 = call float @dx.op.unary.f32(i32 23, float %583)  ; Log(value)
  %588 = call float @dx.op.unary.f32(i32 23, float %584)  ; Log(value)
  %589 = call float @dx.op.unary.f32(i32 23, float %585)  ; Log(value)
  %590 = call float @dx.op.unary.f32(i32 23, float %586)  ; Log(value)
  %591 = fmul fast float %587, 0x3FC4640000000000
  %592 = fmul fast float %588, 0x3FC4640000000000
  %593 = fmul fast float %589, 0x3FC4640000000000
  %594 = fmul fast float %590, 0x3FC4640000000000
  %595 = call float @dx.op.unary.f32(i32 21, float %591)  ; Exp(value)
  %596 = call float @dx.op.unary.f32(i32 21, float %592)  ; Exp(value)
  %597 = call float @dx.op.unary.f32(i32 21, float %593)  ; Exp(value)
  %598 = call float @dx.op.unary.f32(i32 21, float %594)  ; Exp(value)
  %599 = fmul fast float %595, 0x4032DA0000000000
  %600 = fmul fast float %596, 0x4032DA0000000000
  %601 = fmul fast float %597, 0x4032DA0000000000
  %602 = fmul fast float %598, 0x4032DA0000000000
  %603 = fadd fast float %599, 8.359375e-01
  %604 = fadd fast float %600, 8.359375e-01
  %605 = fadd fast float %601, 8.359375e-01
  %606 = fadd fast float %602, 8.359375e-01
  %607 = fmul fast float %595, 1.868750e+01
  %608 = fmul fast float %596, 1.868750e+01
  %609 = fmul fast float %597, 1.868750e+01
  %610 = fmul fast float %598, 1.868750e+01
  %611 = fadd fast float %607, 1.000000e+00
  %612 = fadd fast float %608, 1.000000e+00
  %613 = fadd fast float %609, 1.000000e+00
  %614 = fadd fast float %610, 1.000000e+00
  %615 = fdiv fast float %603, %611
  %616 = fdiv fast float %604, %612
  %617 = fdiv fast float %605, %613
  %618 = fdiv fast float %606, %614
  %619 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %615)  ; FMax(a,b)
  %620 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %616)  ; FMax(a,b)
  %621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %617)  ; FMax(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %618)  ; FMax(a,b)
  %623 = call float @dx.op.unary.f32(i32 23, float %619)  ; Log(value)
  %624 = call float @dx.op.unary.f32(i32 23, float %620)  ; Log(value)
  %625 = call float @dx.op.unary.f32(i32 23, float %621)  ; Log(value)
  %626 = call float @dx.op.unary.f32(i32 23, float %622)  ; Log(value)
  %627 = fmul fast float %623, 7.884375e+01
  %628 = fmul fast float %624, 7.884375e+01
  %629 = fmul fast float %625, 7.884375e+01
  %630 = fmul fast float %626, 7.884375e+01
  %631 = call float @dx.op.unary.f32(i32 21, float %627)  ; Exp(value)
  %632 = call float @dx.op.unary.f32(i32 21, float %628)  ; Exp(value)
  %633 = call float @dx.op.unary.f32(i32 21, float %629)  ; Exp(value)
  %634 = call float @dx.op.unary.f32(i32 21, float %630)  ; Exp(value)
  br label %703

; <label>:635                                     ; preds = %335
  %636 = icmp eq i32 %564, 1
  br i1 %636, label %637, label %668, !dx.controlflow.hints !19

; <label>:637                                     ; preds = %635
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 368)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 376)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = fsub fast float %550, %641
  %643 = fsub fast float %554, %641
  %644 = fsub fast float %558, %641
  %645 = fsub fast float %562, %641
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 372)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = fmul fast float %647, %642
  %649 = fmul fast float %647, %643
  %650 = fmul fast float %647, %644
  %651 = fmul fast float %647, %645
  %652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %648)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %649)  ; FMax(a,b)
  %654 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %650)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %651)  ; FMax(a,b)
  %656 = call float @dx.op.unary.f32(i32 23, float %652)  ; Log(value)
  %657 = call float @dx.op.unary.f32(i32 23, float %653)  ; Log(value)
  %658 = call float @dx.op.unary.f32(i32 23, float %654)  ; Log(value)
  %659 = call float @dx.op.unary.f32(i32 23, float %655)  ; Log(value)
  %660 = fmul fast float %656, %639
  %661 = fmul fast float %657, %639
  %662 = fmul fast float %658, %639
  %663 = fmul fast float %659, %639
  %664 = call float @dx.op.unary.f32(i32 21, float %660)  ; Exp(value)
  %665 = call float @dx.op.unary.f32(i32 21, float %661)  ; Exp(value)
  %666 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %667 = call float @dx.op.unary.f32(i32 21, float %663)  ; Exp(value)
  br label %703

; <label>:668                                     ; preds = %635
  %669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 368)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 372)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = fmul fast float %672, %550
  %674 = fmul fast float %672, %554
  %675 = fmul fast float %672, %558
  %676 = fmul fast float %672, %562
  %677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %673)  ; FMax(a,b)
  %678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %674)  ; FMax(a,b)
  %679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %675)  ; FMax(a,b)
  %680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %676)  ; FMax(a,b)
  %681 = call float @dx.op.unary.f32(i32 23, float %677)  ; Log(value)
  %682 = call float @dx.op.unary.f32(i32 23, float %678)  ; Log(value)
  %683 = call float @dx.op.unary.f32(i32 23, float %679)  ; Log(value)
  %684 = call float @dx.op.unary.f32(i32 23, float %680)  ; Log(value)
  %685 = fmul fast float %681, %670
  %686 = fmul fast float %682, %670
  %687 = fmul fast float %683, %670
  %688 = fmul fast float %684, %670
  %689 = call float @dx.op.unary.f32(i32 21, float %685)  ; Exp(value)
  %690 = call float @dx.op.unary.f32(i32 21, float %686)  ; Exp(value)
  %691 = call float @dx.op.unary.f32(i32 21, float %687)  ; Exp(value)
  %692 = call float @dx.op.unary.f32(i32 21, float %688)  ; Exp(value)
  %693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 376)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = fsub fast float %689, %694
  %696 = fsub fast float %690, %694
  %697 = fsub fast float %691, %694
  %698 = fsub fast float %692, %694
  %699 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %695)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %696)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %697)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %698)  ; FMax(a,b)
  br label %703

; <label>:703                                     ; preds = %668, %637, %566, %34
  %704 = phi float [ %60, %34 ], [ %631, %566 ], [ %664, %637 ], [ %699, %668 ]
  %705 = phi float [ %63, %34 ], [ %632, %566 ], [ %665, %637 ], [ %700, %668 ]
  %706 = phi float [ %66, %34 ], [ %633, %566 ], [ %666, %637 ], [ %701, %668 ]
  %707 = phi float [ %69, %34 ], [ %634, %566 ], [ %667, %637 ], [ %702, %668 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %3, i32 %4, i32 %5, float %704, float %705, float %706, float %707, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %708

; <label>:708                                     ; preds = %703, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!10}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, null, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"hostlayout.class.RWStructuredBuffer<DispMap3DLutGenParams>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !7}
!7 = !{i32 1, i32 816}
!8 = !{i32 1, %"class.RWTexture3D<vector<half, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 9}
!10 = !{void ()* @csmain, !"csmain", null, !4, !11}
!11 = !{i32 0, i64 272, i32 4, !12}
!12 = !{i32 4, i32 4, i32 4}
!13 = distinct !{!13, !"dx.controlflow.hints", i32 2}
!14 = distinct !{!14, !"dx.controlflow.hints", i32 2}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

