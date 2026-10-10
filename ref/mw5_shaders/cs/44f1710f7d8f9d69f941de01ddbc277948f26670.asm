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
; shader hash: 5d0436adb0c830b2d1a5e1f3e9ef06bf
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
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     u32          2d      U0             u0     1
;                                       UAVunorm_f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%GfxHdrScopesScatterCBuffer = type { i32, i32, i32, i32, float, i32, i32, i32 }

@channelSelect.0.hca = internal unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00]
@channelSelect.1.hca = internal unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00]
@channelSelect.2.hca = internal unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00]

define void @cs_hdr_scopes_scatter() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [4 x float], align 4
  %8 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %9 = extractvalue %dx.types.Dimensions %8, 0
  %10 = extractvalue %dx.types.Dimensions %8, 1
  %11 = icmp uge i32 %5, %9
  %12 = icmp uge i32 %6, %10
  %13 = or i1 %11, %12
  br i1 %13, label %264, label %14, !dx.controlflow.hints !18

; <label>:14                                      ; preds = %0
  %15 = uitofp i32 %5 to float
  %16 = uitofp i32 %9 to float
  %17 = fdiv fast float %15, %16
  %18 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %5, i32 %6, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %19 = extractvalue %dx.types.ResRet.f32 %18, 0
  %20 = extractvalue %dx.types.ResRet.f32 %18, 1
  %21 = extractvalue %dx.types.ResRet.f32 %18, 2
  %22 = extractvalue %dx.types.ResRet.f32 %18, 3
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = fdiv fast float %19, %24
  %26 = fdiv fast float %20, %24
  %27 = fdiv fast float %21, %24
  %28 = fdiv fast float %22, %24
  %29 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %25, float* %29, align 4
  %30 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %26, float* %30, align 4
  %31 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %27, float* %31, align 4
  %32 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float %28, float* %32, align 4
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %107, label %36, !dx.controlflow.hints !19

; <label>:36                                      ; preds = %14
  %37 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %38 = extractvalue %dx.types.Dimensions %37, 0
  %39 = extractvalue %dx.types.Dimensions %37, 1
  br label %40

; <label>:40                                      ; preds = %103, %36
  %41 = phi float [ %25, %36 ], [ %105, %103 ]
  %42 = phi i32 [ 0, %36 ], [ %101, %103 ]
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %59, !dx.controlflow.hints !20

; <label>:46                                      ; preds = %40
  %47 = fmul fast float %41, 0x3F3A36E2E0000000
  %48 = call float @dx.op.unary.f32(i32 23, float %47)  ; Log(value)
  %49 = fmul fast float %48, 0x3FC4640000000000
  %50 = call float @dx.op.unary.f32(i32 21, float %49)  ; Exp(value)
  %51 = fmul fast float %50, 0x4032DA0000000000
  %52 = fadd fast float %51, 8.359375e-01
  %53 = fmul fast float %50, 1.868750e+01
  %54 = fadd fast float %53, 1.000000e+00
  %55 = fdiv fast float %52, %54
  %56 = call float @dx.op.unary.f32(i32 23, float %55)  ; Log(value)
  %57 = fmul fast float %56, 7.884375e+01
  %58 = call float @dx.op.unary.f32(i32 21, float %57)  ; Exp(value)
  br label %59

; <label>:59                                      ; preds = %46, %40
  %60 = phi float [ %58, %46 ], [ %41, %40 ]
  %61 = fsub fast float 1.000000e+00, %60
  %62 = add i32 %38, -1
  %63 = uitofp i32 %62 to float
  %64 = add i32 %39, -1
  %65 = uitofp i32 %64 to float
  %66 = fmul fast float %63, %17
  %67 = fmul fast float %61, %65
  %68 = fptosi float %66 to i32
  %69 = fptosi float %67 to i32
  %70 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 undef, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = and i32 %71, 255
  %73 = uitofp i32 %72 to float
  %74 = lshr i32 %71, 8
  %75 = and i32 %74, 255
  %76 = uitofp i32 %75 to float
  %77 = lshr i32 %71, 16
  %78 = and i32 %77, 255
  %79 = uitofp i32 %78 to float
  %80 = lshr i32 %71, 24
  %81 = uitofp i32 %80 to float
  %82 = getelementptr [3 x float], [3 x float]* @channelSelect.0.hca, i32 0, i32 %42
  %83 = getelementptr [3 x float], [3 x float]* @channelSelect.1.hca, i32 0, i32 %42
  %84 = getelementptr [3 x float], [3 x float]* @channelSelect.2.hca, i32 0, i32 %42
  %85 = load float, float* %82, align 4
  %86 = load float, float* %83, align 4
  %87 = load float, float* %84, align 4
  %88 = fadd fast float %73, %85
  %89 = fadd fast float %76, %86
  %90 = fadd fast float %79, %87
  %91 = fptoui float %88 to i32
  %92 = fptoui float %89 to i32
  %93 = fptoui float %90 to i32
  %94 = fptoui float %81 to i32
  %95 = shl i32 %92, 8
  %96 = shl i32 %93, 16
  %97 = shl i32 %94, 24
  %98 = or i32 %97, %91
  %99 = or i32 %98, %95
  %100 = or i32 %99, %96
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %68, i32 %69, i32 undef, i32 %100, i32 %100, i32 %100, i32 %100, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %101 = add nuw nsw i32 %42, 1
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %106, label %103

; <label>:103                                     ; preds = %59
  %104 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %101
  %105 = load float, float* %104, align 4
  br label %40

; <label>:106                                     ; preds = %59
  br label %107

; <label>:107                                     ; preds = %106, %14
  %108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.i32 %108, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %264, label %111, !dx.controlflow.hints !21

; <label>:111                                     ; preds = %107
  %112 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %113 = extractvalue %dx.types.Dimensions %112, 0
  %114 = extractvalue %dx.types.Dimensions %112, 1
  %115 = extractvalue %dx.types.CBufRet.i32 %108, 0
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %144, !dx.controlflow.hints !22

; <label>:117                                     ; preds = %111
  %118 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %119 = fmul fast float %118, 0x3FDAAAAAA0000000
  %120 = call float @dx.op.unary.f32(i32 21, float %119)  ; Exp(value)
  %121 = fsub fast float 1.000000e+00, %120
  %122 = call float @dx.op.unary.f32(i32 23, float %121)  ; Log(value)
  %123 = fmul fast float %122, 0x4003333340000000
  %124 = call float @dx.op.unary.f32(i32 21, float %123)  ; Exp(value)
  %125 = fdiv fast float %120, %121
  %126 = fadd fast float %125, %25
  %127 = fadd fast float %125, %26
  %128 = fadd fast float %125, %27
  %129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %126)  ; FMax(a,b)
  %130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %127)  ; FMax(a,b)
  %131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %128)  ; FMax(a,b)
  %132 = call float @dx.op.unary.f32(i32 23, float %129)  ; Log(value)
  %133 = call float @dx.op.unary.f32(i32 23, float %130)  ; Log(value)
  %134 = call float @dx.op.unary.f32(i32 23, float %131)  ; Log(value)
  %135 = fmul fast float %132, 0x4003333340000000
  %136 = fmul fast float %133, 0x4003333340000000
  %137 = fmul fast float %134, 0x4003333340000000
  %138 = call float @dx.op.unary.f32(i32 21, float %135)  ; Exp(value)
  %139 = call float @dx.op.unary.f32(i32 21, float %136)  ; Exp(value)
  %140 = call float @dx.op.unary.f32(i32 21, float %137)  ; Exp(value)
  %141 = fmul fast float %138, %124
  %142 = fmul fast float %139, %124
  %143 = fmul fast float %140, %124
  br label %236

; <label>:144                                     ; preds = %111
  %145 = icmp eq i32 %115, 1
  br i1 %145, label %146, label %191, !dx.controlflow.hints !23

; <label>:146                                     ; preds = %144
  %147 = call float @dx.op.unary.f32(i32 23, float %25)  ; Log(value)
  %148 = call float @dx.op.unary.f32(i32 23, float %26)  ; Log(value)
  %149 = call float @dx.op.unary.f32(i32 23, float %27)  ; Log(value)
  %150 = fmul fast float %147, 0x3F89F9B580000000
  %151 = fmul fast float %148, 0x3F89F9B580000000
  %152 = fmul fast float %149, 0x3F89F9B580000000
  %153 = call float @dx.op.unary.f32(i32 21, float %150)  ; Exp(value)
  %154 = call float @dx.op.unary.f32(i32 21, float %151)  ; Exp(value)
  %155 = call float @dx.op.unary.f32(i32 21, float %152)  ; Exp(value)
  %156 = fmul fast float %153, 1.868750e+01
  %157 = fmul fast float %154, 1.868750e+01
  %158 = fmul fast float %155, 1.868750e+01
  %159 = fsub fast float 0x4032DA0000000000, %156
  %160 = fsub fast float 0x4032DA0000000000, %157
  %161 = fsub fast float 0x4032DA0000000000, %158
  %162 = fadd fast float %153, -8.359375e-01
  %163 = fadd fast float %154, -8.359375e-01
  %164 = fadd fast float %155, -8.359375e-01
  %165 = call float @dx.op.binary.f32(i32 35, float %162, float 0.000000e+00)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %163, float 0.000000e+00)  ; FMax(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %164, float 0.000000e+00)  ; FMax(a,b)
  %168 = fdiv fast float %165, %159
  %169 = fdiv fast float %166, %160
  %170 = fdiv fast float %167, %161
  %171 = call float @dx.op.unary.f32(i32 23, float %168)  ; Log(value)
  %172 = call float @dx.op.unary.f32(i32 23, float %169)  ; Log(value)
  %173 = call float @dx.op.unary.f32(i32 23, float %170)  ; Log(value)
  %174 = fmul fast float %171, 0x40191C0D60000000
  %175 = fmul fast float %172, 0x40191C0D60000000
  %176 = fmul fast float %173, 0x40191C0D60000000
  %177 = call float @dx.op.unary.f32(i32 21, float %174)  ; Exp(value)
  %178 = call float @dx.op.unary.f32(i32 21, float %175)  ; Exp(value)
  %179 = call float @dx.op.unary.f32(i32 21, float %176)  ; Exp(value)
  %180 = fmul fast float %178, 1.000000e+04
  %181 = fmul fast float %179, 1.000000e+04
  %182 = fmul fast float %177, 1.660500e+04
  %183 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %180, float %182)  ; FMad(a,b,c)
  %184 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %181, float %183)  ; FMad(a,b,c)
  %185 = fmul fast float %177, -1.246000e+03
  %186 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %180, float %185)  ; FMad(a,b,c)
  %187 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %181, float %186)  ; FMad(a,b,c)
  %188 = fmul fast float %177, -1.820000e+02
  %189 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %180, float %188)  ; FMad(a,b,c)
  %190 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %181, float %189)  ; FMad(a,b,c)
  br label %236

; <label>:191                                     ; preds = %144
  %192 = icmp eq i32 %115, 2
  br i1 %192, label %193, label %236, !dx.controlflow.hints !24

; <label>:193                                     ; preds = %191
  %194 = call float @dx.op.unary.f32(i32 23, float %25)  ; Log(value)
  %195 = call float @dx.op.unary.f32(i32 23, float %26)  ; Log(value)
  %196 = call float @dx.op.unary.f32(i32 23, float %27)  ; Log(value)
  %197 = fmul fast float %194, 0x3F89F9B580000000
  %198 = fmul fast float %195, 0x3F89F9B580000000
  %199 = fmul fast float %196, 0x3F89F9B580000000
  %200 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %201 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %202 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %203 = fmul fast float %200, 1.868750e+01
  %204 = fmul fast float %201, 1.868750e+01
  %205 = fmul fast float %202, 1.868750e+01
  %206 = fsub fast float 0x4032DA0000000000, %203
  %207 = fsub fast float 0x4032DA0000000000, %204
  %208 = fsub fast float 0x4032DA0000000000, %205
  %209 = fadd fast float %200, -8.359375e-01
  %210 = fadd fast float %201, -8.359375e-01
  %211 = fadd fast float %202, -8.359375e-01
  %212 = call float @dx.op.binary.f32(i32 35, float %209, float 0.000000e+00)  ; FMax(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %210, float 0.000000e+00)  ; FMax(a,b)
  %214 = call float @dx.op.binary.f32(i32 35, float %211, float 0.000000e+00)  ; FMax(a,b)
  %215 = fdiv fast float %212, %206
  %216 = fdiv fast float %213, %207
  %217 = fdiv fast float %214, %208
  %218 = call float @dx.op.unary.f32(i32 23, float %215)  ; Log(value)
  %219 = call float @dx.op.unary.f32(i32 23, float %216)  ; Log(value)
  %220 = call float @dx.op.unary.f32(i32 23, float %217)  ; Log(value)
  %221 = fmul fast float %218, 0x40191C0D60000000
  %222 = fmul fast float %219, 0x40191C0D60000000
  %223 = fmul fast float %220, 0x40191C0D60000000
  %224 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %225 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %226 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %227 = fmul fast float %225, 1.000000e+04
  %228 = fmul fast float %226, 1.000000e+04
  %229 = fmul fast float %224, 0x40C7ECB320000000
  %230 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCCCAD580000000, float %227, float %229)  ; FMad(a,b,c)
  %231 = fmul fast float %224, 0xC07A491EC0000000
  %232 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF0AC4720000000, float %227, float %231)  ; FMad(a,b,c)
  %233 = fmul fast float %224, 0xC0688C0820000000
  %234 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB4217D20000000, float %227, float %233)  ; FMad(a,b,c)
  %235 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF19283A0000000, float %228, float %234)  ; FMad(a,b,c)
  br label %236

; <label>:236                                     ; preds = %193, %191, %146, %117
  %237 = phi float [ %141, %117 ], [ %184, %146 ], [ %230, %193 ], [ %25, %191 ]
  %238 = phi float [ %142, %117 ], [ %187, %146 ], [ %232, %193 ], [ %26, %191 ]
  %239 = phi float [ %143, %117 ], [ %190, %146 ], [ %235, %193 ], [ %27, %191 ]
  %240 = fmul fast float %237, 0x3FDA65AF80000000
  %241 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %238, float %240)  ; FMad(a,b,c)
  %242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %239, float %241)  ; FMad(a,b,c)
  %243 = fmul fast float %237, 0x3FCB38DDA0000000
  %244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %238, float %243)  ; FMad(a,b,c)
  %245 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %239, float %244)  ; FMad(a,b,c)
  %246 = fmul fast float %237, 0x3F93CC4420000000
  %247 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %238, float %246)  ; FMad(a,b,c)
  %248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %239, float %247)  ; FMad(a,b,c)
  %249 = fadd fast float %245, %242
  %250 = fadd fast float %249, %248
  %251 = fdiv fast float %242, %250
  %252 = fdiv fast float %245, %250
  %253 = add i32 %113, -1
  %254 = uitofp i32 %253 to float
  %255 = add i32 %114, -1
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %251, %254
  %258 = fmul fast float %252, %256
  %259 = fptosi float %257 to i32
  %260 = fptosi float %258 to i32
  %261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fadd fast float %262, 0x3EF0001000000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %259, i32 %260, i32 undef, float %263, float %263, float %263, float %263, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %264

; <label>:264                                     ; preds = %236, %107, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11}
!9 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 14}
!13 = !{!14}
!14 = !{i32 0, %GfxHdrScopesScatterCBuffer* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{void ()* @cs_hdr_scopes_scatter, !"cs_hdr_scopes_scatter", null, !4, !16}
!16 = !{i32 0, i64 256, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

