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
; shader hash: 6cc42d789a93f22819ad9961219490d5
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
;   [1296 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [656 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t8     1
;                                   texture  struct         r/o      T2            t16     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAVunorm_f32          3d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.StructuredBuffer<CsPbgColorParams>" = type { %struct.CsPbgColorParams }
%struct.CsPbgColorParams = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<vector<float, 4> >" = type { <4 x float> }
%CsPbgUniversalClutConstants = type { i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, [1 x %struct.CsPbgCurveData], [1 x %struct.CsPbgColorData], [1 x %struct.CsPbgSdrTrimData] }
%struct.CsPbgCurveData = type { i32, i32, i32, i32, [16 x <4 x i32>] }
%struct.CsPbgColorData = type { i32, i32, i32, i32, [8 x <4 x i32>], [32 x <4 x float>] }
%struct.CsPbgSdrTrimData = type { i32, i32, i32, i32, [16 x <4 x i32>] }

define void @cs_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %9 = shl i32 %8, 5
  %10 = add i32 %9, %6
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %15 = add i32 %12, %7
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %10, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = extractvalue %dx.types.ResRet.f32 %17, 1
  %20 = extractvalue %dx.types.ResRet.f32 %17, 2
  %21 = call float @dx.op.unary.f32(i32 23, float %18)  ; Log(value)
  %22 = call float @dx.op.unary.f32(i32 23, float %19)  ; Log(value)
  %23 = call float @dx.op.unary.f32(i32 23, float %20)  ; Log(value)
  %24 = fmul fast float %21, 0x3F89F9B580000000
  %25 = fmul fast float %22, 0x3F89F9B580000000
  %26 = fmul fast float %23, 0x3F89F9B580000000
  %27 = call float @dx.op.unary.f32(i32 21, float %24)  ; Exp(value)
  %28 = call float @dx.op.unary.f32(i32 21, float %25)  ; Exp(value)
  %29 = call float @dx.op.unary.f32(i32 21, float %26)  ; Exp(value)
  %30 = fadd fast float %27, -8.359375e-01
  %31 = fadd fast float %28, -8.359375e-01
  %32 = fadd fast float %29, -8.359375e-01
  %33 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %30)  ; FMax(a,b)
  %34 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %31)  ; FMax(a,b)
  %35 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %32)  ; FMax(a,b)
  %36 = fmul fast float %27, 1.868750e+01
  %37 = fmul fast float %28, 1.868750e+01
  %38 = fmul fast float %29, 1.868750e+01
  %39 = fsub fast float 0x4032DA0000000000, %36
  %40 = fsub fast float 0x4032DA0000000000, %37
  %41 = fsub fast float 0x4032DA0000000000, %38
  %42 = fdiv fast float %33, %39
  %43 = fdiv fast float %34, %40
  %44 = fdiv fast float %35, %41
  %45 = call float @dx.op.unary.f32(i32 23, float %42)  ; Log(value)
  %46 = call float @dx.op.unary.f32(i32 23, float %43)  ; Log(value)
  %47 = call float @dx.op.unary.f32(i32 23, float %44)  ; Log(value)
  %48 = fmul fast float %45, 0x40191C0D60000000
  %49 = fmul fast float %46, 0x40191C0D60000000
  %50 = fmul fast float %47, 0x40191C0D60000000
  %51 = call float @dx.op.unary.f32(i32 21, float %48)  ; Exp(value)
  %52 = call float @dx.op.unary.f32(i32 21, float %49)  ; Exp(value)
  %53 = call float @dx.op.unary.f32(i32 21, float %50)  ; Exp(value)
  %54 = fmul fast float %51, %14
  %55 = fmul fast float %52, %14
  %56 = fmul fast float %53, %14
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %135, label %60

; <label>:60                                      ; preds = %0
  br label %61

; <label>:61                                      ; preds = %61, %60
  %62 = phi float [ %127, %61 ], [ %54, %60 ]
  %63 = phi float [ %128, %61 ], [ %55, %60 ]
  %64 = phi float [ %129, %61 ], [ %56, %60 ]
  %65 = phi i32 [ %130, %61 ], [ 0, %60 ]
  %66 = lshr i32 %65, 2
  %67 = and i32 %65, 3
  %68 = add nuw nsw i32 %66, 7
  %69 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %68)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.i32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.i32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.i32 %69, 2
  %73 = extractvalue %dx.types.CBufRet.i32 %69, 3
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 3
  store i32 %73, i32* %77, align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i32 0, i32 %67
  %79 = load i32, i32* %78, align 4, !tbaa !20
  %80 = and i32 %79, 65535
  %81 = uitofp i32 %80 to float
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %84 = fmul fast float %81, %83
  %85 = lshr i32 %79, 16
  %86 = add i32 %85, %7
  %87 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %10, i32 %86, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %88 = extractvalue %dx.types.ResRet.f32 %87, 0
  %89 = extractvalue %dx.types.ResRet.f32 %87, 1
  %90 = extractvalue %dx.types.ResRet.f32 %87, 2
  %91 = call float @dx.op.unary.f32(i32 23, float %88)  ; Log(value)
  %92 = call float @dx.op.unary.f32(i32 23, float %89)  ; Log(value)
  %93 = call float @dx.op.unary.f32(i32 23, float %90)  ; Log(value)
  %94 = fmul fast float %91, 0x3F89F9B580000000
  %95 = fmul fast float %92, 0x3F89F9B580000000
  %96 = fmul fast float %93, 0x3F89F9B580000000
  %97 = call float @dx.op.unary.f32(i32 21, float %94)  ; Exp(value)
  %98 = call float @dx.op.unary.f32(i32 21, float %95)  ; Exp(value)
  %99 = call float @dx.op.unary.f32(i32 21, float %96)  ; Exp(value)
  %100 = fadd fast float %97, -8.359375e-01
  %101 = fadd fast float %98, -8.359375e-01
  %102 = fadd fast float %99, -8.359375e-01
  %103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %100)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %101)  ; FMax(a,b)
  %105 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %102)  ; FMax(a,b)
  %106 = fmul fast float %97, 1.868750e+01
  %107 = fmul fast float %98, 1.868750e+01
  %108 = fmul fast float %99, 1.868750e+01
  %109 = fsub fast float 0x4032DA0000000000, %106
  %110 = fsub fast float 0x4032DA0000000000, %107
  %111 = fsub fast float 0x4032DA0000000000, %108
  %112 = fdiv fast float %103, %109
  %113 = fdiv fast float %104, %110
  %114 = fdiv fast float %105, %111
  %115 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %116 = call float @dx.op.unary.f32(i32 23, float %113)  ; Log(value)
  %117 = call float @dx.op.unary.f32(i32 23, float %114)  ; Log(value)
  %118 = fmul fast float %115, 0x40191C0D60000000
  %119 = fmul fast float %116, 0x40191C0D60000000
  %120 = fmul fast float %117, 0x40191C0D60000000
  %121 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %122 = call float @dx.op.unary.f32(i32 21, float %119)  ; Exp(value)
  %123 = call float @dx.op.unary.f32(i32 21, float %120)  ; Exp(value)
  %124 = fmul fast float %121, %84
  %125 = fmul fast float %122, %84
  %126 = fmul fast float %123, %84
  %127 = fadd fast float %124, %62
  %128 = fadd fast float %125, %63
  %129 = fadd fast float %126, %64
  %130 = add i32 %65, 1
  %131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.i32 %131, 0
  %133 = icmp ult i32 %130, %132
  br i1 %133, label %61, label %134

; <label>:134                                     ; preds = %61
  br label %135

; <label>:135                                     ; preds = %134, %0
  %136 = phi float [ %54, %0 ], [ %127, %134 ]
  %137 = phi float [ %55, %0 ], [ %128, %134 ]
  %138 = phi float [ %56, %0 ], [ %129, %134 ]
  %139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.i32 %139, 0
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %751, label %142

; <label>:142                                     ; preds = %135
  br label %143

; <label>:143                                     ; preds = %143, %142
  %144 = phi float [ %741, %143 ], [ 0.000000e+00, %142 ]
  %145 = phi float [ %743, %143 ], [ 0.000000e+00, %142 ]
  %146 = phi float [ %745, %143 ], [ 0.000000e+00, %142 ]
  %147 = phi i32 [ %746, %143 ], [ 0, %142 ]
  %148 = lshr i32 %147, 2
  %149 = and i32 %147, 3
  %150 = add nuw nsw i32 %148, 24
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 %150)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.i32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.i32 %151, 2
  %155 = extractvalue %dx.types.CBufRet.i32 %151, 3
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 0
  store i32 %152, i32* %156, align 4
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 2
  store i32 %154, i32* %158, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 3
  store i32 %155, i32* %159, align 4
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i32 0, i32 %149
  %161 = load i32, i32* %160, align 4, !tbaa !20
  %162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 0)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = extractvalue %dx.types.ResRet.f32 %163, 1
  %166 = extractvalue %dx.types.ResRet.f32 %163, 2
  %167 = extractvalue %dx.types.ResRet.f32 %163, 3
  %168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 16)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = extractvalue %dx.types.ResRet.f32 %168, 1
  %171 = extractvalue %dx.types.ResRet.f32 %168, 2
  %172 = extractvalue %dx.types.ResRet.f32 %168, 3
  %173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 32)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = extractvalue %dx.types.ResRet.f32 %173, 3
  %178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 48)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = extractvalue %dx.types.ResRet.f32 %178, 2
  %182 = extractvalue %dx.types.ResRet.f32 %178, 3
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 64)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = extractvalue %dx.types.ResRet.f32 %183, 3
  %188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 80)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = extractvalue %dx.types.ResRet.f32 %188, 3
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 96)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = extractvalue %dx.types.ResRet.f32 %193, 3
  %198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 112)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = extractvalue %dx.types.ResRet.f32 %198, 1
  %201 = extractvalue %dx.types.ResRet.f32 %198, 2
  %202 = extractvalue %dx.types.ResRet.f32 %198, 3
  %203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 128)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = extractvalue %dx.types.ResRet.f32 %203, 1
  %206 = extractvalue %dx.types.ResRet.f32 %203, 2
  %207 = extractvalue %dx.types.ResRet.f32 %203, 3
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 144)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 1
  %211 = extractvalue %dx.types.ResRet.f32 %208, 2
  %212 = extractvalue %dx.types.ResRet.f32 %208, 3
  %213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 160)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 1
  %216 = extractvalue %dx.types.ResRet.f32 %213, 2
  %217 = extractvalue %dx.types.ResRet.f32 %213, 3
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 176)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = extractvalue %dx.types.ResRet.f32 %218, 2
  %222 = extractvalue %dx.types.ResRet.f32 %218, 3
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 192)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = extractvalue %dx.types.ResRet.f32 %223, 2
  %227 = extractvalue %dx.types.ResRet.f32 %223, 3
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 208)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = extractvalue %dx.types.ResRet.f32 %228, 1
  %231 = extractvalue %dx.types.ResRet.f32 %228, 2
  %232 = extractvalue %dx.types.ResRet.f32 %228, 3
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 224)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = extractvalue %dx.types.ResRet.f32 %233, 1
  %236 = extractvalue %dx.types.ResRet.f32 %233, 2
  %237 = extractvalue %dx.types.ResRet.f32 %233, 3
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 240)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = extractvalue %dx.types.ResRet.f32 %238, 3
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 256)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = extractvalue %dx.types.ResRet.f32 %243, 3
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 272)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = extractvalue %dx.types.ResRet.f32 %248, 3
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 288)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 304)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = extractvalue %dx.types.ResRet.f32 %258, 3
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 320)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 336)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 352)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 368)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = extractvalue %dx.types.ResRet.f32 %278, 3
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 384)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 400)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 416)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = extractvalue %dx.types.ResRet.f32 %293, 3
  %298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 432)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = extractvalue %dx.types.ResRet.f32 %298, 3
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 448)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = extractvalue %dx.types.ResRet.f32 %303, 3
  %308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 464)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = extractvalue %dx.types.ResRet.f32 %308, 3
  %313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 480)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 484)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 488)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 492)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 496)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 500)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 504)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 508)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 512)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 516)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 520)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 524)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 528)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 532)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 536)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 540)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 544)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 548)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.f32 %347, 0
  %349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 552)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 556)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 560)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 564)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 568)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 572)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 576)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 580)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 584)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 588)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 592)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 596)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 600)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 604)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 608)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.f32 %377, 0
  %379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 612)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.f32 %379, 0
  %381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 616)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 620)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 624)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 628)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 632)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 636)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 640)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.f32 %393, 0
  %395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 644)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 648)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.f32 %397, 0
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %162, i32 %161, i32 652)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = add i32 %147, 32
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 %401)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %407 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = call float @dx.op.unary.f32(i32 23, float %408)  ; Log(value)
  %410 = fmul fast float %409, 0x3FC4640000000000
  %411 = call float @dx.op.unary.f32(i32 21, float %410)  ; Exp(value)
  %412 = fmul fast float %411, 0x4032DA0000000000
  %413 = fadd fast float %412, 8.359375e-01
  %414 = fmul fast float %411, 1.868750e+01
  %415 = fadd fast float %414, 1.000000e+00
  %416 = fdiv fast float %413, %415
  %417 = call float @dx.op.unary.f32(i32 23, float %416)  ; Log(value)
  %418 = fmul fast float %417, 7.884375e+01
  %419 = call float @dx.op.unary.f32(i32 21, float %418)  ; Exp(value)
  %420 = fmul fast float %419, %164
  %421 = fadd fast float %420, %165
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %419, %169
  %424 = fadd fast float %423, %170
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %419, %171
  %427 = fadd fast float %426, %172
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, %425
  %430 = fmul fast float %419, %174
  %431 = fadd fast float %430, %175
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %419, %176
  %434 = fadd fast float %433, %177
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, %432
  %437 = fmul fast float %419, %166
  %438 = fadd fast float %437, %167
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fmul fast float %422, %422
  %441 = fmul fast float %429, %429
  %442 = fmul fast float %436, %436
  %443 = fmul fast float %439, %439
  %444 = fmul fast float %422, 2.000000e+00
  %445 = fmul fast float %429, 2.000000e+00
  %446 = fmul fast float %436, 2.000000e+00
  %447 = fmul fast float %439, 2.000000e+00
  %448 = fsub fast float 3.000000e+00, %444
  %449 = fsub fast float 3.000000e+00, %445
  %450 = fsub fast float 3.000000e+00, %446
  %451 = fsub fast float 3.000000e+00, %447
  %452 = fmul fast float %440, %448
  %453 = fmul fast float %441, %449
  %454 = fmul fast float %442, %450
  %455 = fmul fast float %443, %451
  %456 = fadd fast float %453, %452
  %457 = fadd fast float %456, %454
  %458 = fadd fast float %457, %455
  %459 = fdiv fast float %452, %458
  %460 = fdiv fast float %453, %458
  %461 = fdiv fast float %454, %458
  %462 = fdiv fast float %455, %458
  %463 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %464 = fadd fast float %463, %182
  %465 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %466 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %184, float %185, float %186)  ; Dot3(ax,ay,az,bx,by,bz)
  %467 = fadd fast float %466, %187
  %468 = call float @dx.op.unary.f32(i32 7, float %467)  ; Saturate(value)
  %469 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %189, float %190, float %191)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fadd fast float %469, %192
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %194, float %195, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = fadd fast float %472, %197
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  %475 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %199, float %200, float %201)  ; Dot3(ax,ay,az,bx,by,bz)
  %476 = fadd fast float %475, %202
  %477 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  %478 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %479 = fadd fast float %478, %207
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %482 = fadd fast float %481, %212
  %483 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %484 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %214, float %215, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %485 = fadd fast float %484, %217
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %219, float %220, float %221)  ; Dot3(ax,ay,az,bx,by,bz)
  %488 = fadd fast float %487, %222
  %489 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %490 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %224, float %225, float %226)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = fadd fast float %490, %227
  %492 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %493 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %229, float %230, float %231)  ; Dot3(ax,ay,az,bx,by,bz)
  %494 = fadd fast float %493, %232
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %234, float %235, float %236)  ; Dot3(ax,ay,az,bx,by,bz)
  %497 = fadd fast float %496, %237
  %498 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %499 = fmul fast float %465, %459
  %500 = fmul fast float %474, %460
  %501 = fadd fast float %500, %499
  %502 = fmul fast float %483, %461
  %503 = fadd fast float %501, %502
  %504 = fmul fast float %492, %462
  %505 = fadd fast float %503, %504
  %506 = fmul fast float %468, %459
  %507 = fmul fast float %477, %460
  %508 = fadd fast float %507, %506
  %509 = fmul fast float %486, %461
  %510 = fadd fast float %508, %509
  %511 = fmul fast float %495, %462
  %512 = fadd fast float %510, %511
  %513 = fmul fast float %471, %459
  %514 = fmul fast float %480, %460
  %515 = fadd fast float %514, %513
  %516 = fmul fast float %489, %461
  %517 = fadd fast float %515, %516
  %518 = fmul fast float %498, %462
  %519 = fadd fast float %517, %518
  %520 = fsub fast float 1.000000e+00, %505
  %521 = fsub fast float 1.000000e+00, %512
  %522 = fsub fast float 1.000000e+00, %519
  %523 = fmul fast float %520, %314
  %524 = fmul fast float %521, %316
  %525 = fmul fast float %522, %318
  %526 = fadd fast float %523, %505
  %527 = fadd fast float %524, %512
  %528 = fadd fast float %525, %519
  %529 = fmul fast float %526, %320
  %530 = fmul fast float %527, %322
  %531 = fmul fast float %528, %324
  %532 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %529)  ; FMax(a,b)
  %533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %530)  ; FMax(a,b)
  %534 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %531)  ; FMax(a,b)
  %535 = call float @dx.op.unary.f32(i32 23, float %532)  ; Log(value)
  %536 = call float @dx.op.unary.f32(i32 23, float %533)  ; Log(value)
  %537 = call float @dx.op.unary.f32(i32 23, float %534)  ; Log(value)
  %538 = fmul fast float %535, %326
  %539 = fmul fast float %536, %328
  %540 = fmul fast float %537, %330
  %541 = call float @dx.op.unary.f32(i32 21, float %538)  ; Exp(value)
  %542 = call float @dx.op.unary.f32(i32 21, float %539)  ; Exp(value)
  %543 = call float @dx.op.unary.f32(i32 21, float %540)  ; Exp(value)
  %544 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %545 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %546 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  %547 = call float @dx.op.dot3.f32(i32 55, float %544, float %545, float %546, float %332, float %334, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %547)  ; FMax(a,b)
  %549 = call float @dx.op.dot3.f32(i32 55, float %544, float %545, float %546, float %338, float %340, float %342)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %549)  ; FMax(a,b)
  %551 = call float @dx.op.dot3.f32(i32 55, float %544, float %545, float %546, float %344, float %346, float %348)  ; Dot3(ax,ay,az,bx,by,bz)
  %552 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %551)  ; FMax(a,b)
  %553 = call float @dx.op.unary.f32(i32 23, float %548)  ; Log(value)
  %554 = call float @dx.op.unary.f32(i32 23, float %550)  ; Log(value)
  %555 = call float @dx.op.unary.f32(i32 23, float %552)  ; Log(value)
  %556 = fmul fast float %553, %350
  %557 = fmul fast float %554, %350
  %558 = fmul fast float %555, %350
  %559 = call float @dx.op.unary.f32(i32 21, float %556)  ; Exp(value)
  %560 = call float @dx.op.unary.f32(i32 21, float %557)  ; Exp(value)
  %561 = call float @dx.op.unary.f32(i32 21, float %558)  ; Exp(value)
  %562 = fmul fast float %559, %352
  %563 = fmul fast float %560, %354
  %564 = fmul fast float %561, %356
  %565 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %566 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %567 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %568 = fsub fast float %565, %136
  %569 = fsub fast float %566, %137
  %570 = fsub fast float %567, %138
  %571 = fmul fast float %568, %403
  %572 = fmul fast float %569, %403
  %573 = fmul fast float %570, %403
  %574 = fadd fast float %571, %136
  %575 = fadd fast float %572, %137
  %576 = fadd fast float %573, %138
  %577 = fmul fast float %574, %404
  %578 = fmul fast float %575, %404
  %579 = fmul fast float %576, %404
  %580 = fmul fast float %419, %239
  %581 = fadd fast float %580, %240
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = fmul fast float %419, %244
  %584 = fadd fast float %583, %245
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fmul fast float %419, %246
  %587 = fadd fast float %586, %247
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %589 = fmul fast float %588, %585
  %590 = fmul fast float %419, %249
  %591 = fadd fast float %590, %250
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fmul fast float %419, %251
  %594 = fadd fast float %593, %252
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, %592
  %597 = fmul fast float %419, %241
  %598 = fadd fast float %597, %242
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %582, %582
  %601 = fmul fast float %589, %589
  %602 = fmul fast float %596, %596
  %603 = fmul fast float %599, %599
  %604 = fmul fast float %582, 2.000000e+00
  %605 = fmul fast float %589, 2.000000e+00
  %606 = fmul fast float %596, 2.000000e+00
  %607 = fmul fast float %599, 2.000000e+00
  %608 = fsub fast float 3.000000e+00, %604
  %609 = fsub fast float 3.000000e+00, %605
  %610 = fsub fast float 3.000000e+00, %606
  %611 = fsub fast float 3.000000e+00, %607
  %612 = fmul fast float %600, %608
  %613 = fmul fast float %601, %609
  %614 = fmul fast float %602, %610
  %615 = fmul fast float %603, %611
  %616 = fadd fast float %613, %612
  %617 = fadd fast float %616, %614
  %618 = fadd fast float %617, %615
  %619 = fdiv fast float %612, %618
  %620 = fdiv fast float %613, %618
  %621 = fdiv fast float %614, %618
  %622 = fdiv fast float %615, %618
  %623 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %254, float %255, float %256)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = fadd fast float %623, %257
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %259, float %260, float %261)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = fadd fast float %626, %262
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %264, float %265, float %266)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = fadd fast float %629, %267
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %632 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %269, float %270, float %271)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = fadd fast float %632, %272
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %274, float %275, float %276)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = fadd fast float %635, %277
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %279, float %280, float %281)  ; Dot3(ax,ay,az,bx,by,bz)
  %639 = fadd fast float %638, %282
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %284, float %285, float %286)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = fadd fast float %641, %287
  %643 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %644 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %289, float %290, float %291)  ; Dot3(ax,ay,az,bx,by,bz)
  %645 = fadd fast float %644, %292
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %294, float %295, float %296)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = fadd fast float %647, %297
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %299, float %300, float %301)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = fadd fast float %650, %302
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %304, float %305, float %306)  ; Dot3(ax,ay,az,bx,by,bz)
  %654 = fadd fast float %653, %307
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %309, float %310, float %311)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = fadd fast float %656, %312
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = fmul fast float %625, %619
  %660 = fmul fast float %634, %620
  %661 = fadd fast float %660, %659
  %662 = fmul fast float %643, %621
  %663 = fadd fast float %661, %662
  %664 = fmul fast float %652, %622
  %665 = fadd fast float %663, %664
  %666 = fmul fast float %628, %619
  %667 = fmul fast float %637, %620
  %668 = fadd fast float %667, %666
  %669 = fmul fast float %646, %621
  %670 = fadd fast float %668, %669
  %671 = fmul fast float %655, %622
  %672 = fadd fast float %670, %671
  %673 = fmul fast float %631, %619
  %674 = fmul fast float %640, %620
  %675 = fadd fast float %674, %673
  %676 = fmul fast float %649, %621
  %677 = fadd fast float %675, %676
  %678 = fmul fast float %658, %622
  %679 = fadd fast float %677, %678
  %680 = fsub fast float 1.000000e+00, %665
  %681 = fsub fast float 1.000000e+00, %672
  %682 = fsub fast float 1.000000e+00, %679
  %683 = fmul fast float %680, %358
  %684 = fmul fast float %681, %360
  %685 = fmul fast float %682, %362
  %686 = fadd fast float %683, %665
  %687 = fadd fast float %684, %672
  %688 = fadd fast float %685, %679
  %689 = fmul fast float %686, %364
  %690 = fmul fast float %687, %366
  %691 = fmul fast float %688, %368
  %692 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %689)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %690)  ; FMax(a,b)
  %694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %691)  ; FMax(a,b)
  %695 = call float @dx.op.unary.f32(i32 23, float %692)  ; Log(value)
  %696 = call float @dx.op.unary.f32(i32 23, float %693)  ; Log(value)
  %697 = call float @dx.op.unary.f32(i32 23, float %694)  ; Log(value)
  %698 = fmul fast float %695, %370
  %699 = fmul fast float %696, %372
  %700 = fmul fast float %697, %374
  %701 = call float @dx.op.unary.f32(i32 21, float %698)  ; Exp(value)
  %702 = call float @dx.op.unary.f32(i32 21, float %699)  ; Exp(value)
  %703 = call float @dx.op.unary.f32(i32 21, float %700)  ; Exp(value)
  %704 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %705 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %706 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %707 = call float @dx.op.dot3.f32(i32 55, float %704, float %705, float %706, float %376, float %378, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %707)  ; FMax(a,b)
  %709 = call float @dx.op.dot3.f32(i32 55, float %704, float %705, float %706, float %382, float %384, float %386)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %709)  ; FMax(a,b)
  %711 = call float @dx.op.dot3.f32(i32 55, float %704, float %705, float %706, float %388, float %390, float %392)  ; Dot3(ax,ay,az,bx,by,bz)
  %712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %711)  ; FMax(a,b)
  %713 = call float @dx.op.unary.f32(i32 23, float %708)  ; Log(value)
  %714 = call float @dx.op.unary.f32(i32 23, float %710)  ; Log(value)
  %715 = call float @dx.op.unary.f32(i32 23, float %712)  ; Log(value)
  %716 = fmul fast float %713, %394
  %717 = fmul fast float %714, %394
  %718 = fmul fast float %715, %394
  %719 = call float @dx.op.unary.f32(i32 21, float %716)  ; Exp(value)
  %720 = call float @dx.op.unary.f32(i32 21, float %717)  ; Exp(value)
  %721 = call float @dx.op.unary.f32(i32 21, float %718)  ; Exp(value)
  %722 = fmul fast float %719, %396
  %723 = fmul fast float %720, %398
  %724 = fmul fast float %721, %400
  %725 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %728 = fsub fast float %725, %136
  %729 = fsub fast float %726, %137
  %730 = fsub fast float %727, %138
  %731 = fmul fast float %728, %405
  %732 = fmul fast float %729, %405
  %733 = fmul fast float %730, %405
  %734 = fadd fast float %731, %136
  %735 = fadd fast float %732, %137
  %736 = fadd fast float %733, %138
  %737 = fmul fast float %734, %406
  %738 = fmul fast float %735, %406
  %739 = fmul fast float %736, %406
  %740 = fadd fast float %577, %144
  %741 = fadd fast float %740, %737
  %742 = fadd fast float %578, %145
  %743 = fadd fast float %742, %738
  %744 = fadd fast float %579, %146
  %745 = fadd fast float %744, %739
  %746 = add i32 %147, 1
  %747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.i32 %747, 0
  %749 = icmp ult i32 %746, %748
  br i1 %749, label %143, label %750

; <label>:750                                     ; preds = %143
  br label %751

; <label>:751                                     ; preds = %750, %135
  %752 = phi float [ 0.000000e+00, %135 ], [ %741, %750 ]
  %753 = phi float [ 0.000000e+00, %135 ], [ %743, %750 ]
  %754 = phi float [ 0.000000e+00, %135 ], [ %745, %750 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %6, i32 %7, i32 %8, float %752, float %753, float %754, float %752, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.i32 %755, 0
  %757 = lshr i32 %756, 16
  %758 = add i32 %757, %7
  %759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %760 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %759, i32 0, i32 %10, i32 %758, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 %8, float %761, float %762, float %763, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

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
!4 = !{!5, !11, !15, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [1 x %"class.Texture2D<vector<float, 3> >"]* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [1 x %"class.Texture2D<vector<float, 3> >"]* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, [1 x %"class.StructuredBuffer<CsPbgColorParams>"]* undef, !"", i32 0, i32 16, i32 1, i32 12, i32 0, !10}
!10 = !{i32 1, i32 656}
!11 = !{!12, !13}
!12 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWTexture3D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 14}
!15 = !{!16}
!16 = !{i32 0, %CsPbgUniversalClutConstants* undef, !"", i32 0, i32 0, i32 1, i32 1296, null}
!17 = !{void ()* @cs_main, !"cs_main", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 4, i32 4, i32 4}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}

