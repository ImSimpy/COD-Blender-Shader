;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;
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
; shader hash: 4c56aaf2f710268792422c96dac8937a
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
;                                       UAVunorm_f32          2d      U0             u0     1
;                                       UAVunorm_f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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
  br i1 %13, label %249, label %14, !dx.controlflow.hints !17

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
  br i1 %35, label %92, label %36, !dx.controlflow.hints !18

; <label>:36                                      ; preds = %14
  %37 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %38 = extractvalue %dx.types.Dimensions %37, 0
  %39 = extractvalue %dx.types.Dimensions %37, 1
  br label %40

; <label>:40                                      ; preds = %88, %36
  %41 = phi float [ %25, %36 ], [ %90, %88 ]
  %42 = phi i32 [ 0, %36 ], [ %86, %88 ]
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %59, !dx.controlflow.hints !19

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
  %70 = getelementptr [3 x float], [3 x float]* @channelSelect.0.hca, i32 0, i32 %42
  %71 = getelementptr [3 x float], [3 x float]* @channelSelect.1.hca, i32 0, i32 %42
  %72 = getelementptr [3 x float], [3 x float]* @channelSelect.2.hca, i32 0, i32 %42
  %73 = load float, float* %70, align 4
  %74 = load float, float* %71, align 4
  %75 = load float, float* %72, align 4
  %76 = fmul fast float %73, 0x3F70101020000000
  %77 = fmul fast float %74, 0x3F70101020000000
  %78 = fmul fast float %75, 0x3F70101020000000
  %79 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %68, i32 %69, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = fadd fast float %80, %76
  %84 = fadd fast float %81, %77
  %85 = fadd fast float %82, %78
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %68, i32 %69, i32 undef, float %83, float %84, float %85, float %83, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %86 = add nuw nsw i32 %42, 1
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %91, label %88

; <label>:88                                      ; preds = %59
  %89 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %86
  %90 = load float, float* %89, align 4
  br label %40

; <label>:91                                      ; preds = %59
  br label %92

; <label>:92                                      ; preds = %91, %14
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %249, label %96, !dx.controlflow.hints !20

; <label>:96                                      ; preds = %92
  %97 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %98 = extractvalue %dx.types.Dimensions %97, 0
  %99 = extractvalue %dx.types.Dimensions %97, 1
  %100 = extractvalue %dx.types.CBufRet.i32 %93, 0
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %129, !dx.controlflow.hints !21

; <label>:102                                     ; preds = %96
  %103 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %104 = fmul fast float %103, 0x3FDAAAAAA0000000
  %105 = call float @dx.op.unary.f32(i32 21, float %104)  ; Exp(value)
  %106 = fsub fast float 1.000000e+00, %105
  %107 = call float @dx.op.unary.f32(i32 23, float %106)  ; Log(value)
  %108 = fmul fast float %107, 0x4003333340000000
  %109 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %110 = fdiv fast float %105, %106
  %111 = fadd fast float %110, %25
  %112 = fadd fast float %110, %26
  %113 = fadd fast float %110, %27
  %114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %111)  ; FMax(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %112)  ; FMax(a,b)
  %116 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %113)  ; FMax(a,b)
  %117 = call float @dx.op.unary.f32(i32 23, float %114)  ; Log(value)
  %118 = call float @dx.op.unary.f32(i32 23, float %115)  ; Log(value)
  %119 = call float @dx.op.unary.f32(i32 23, float %116)  ; Log(value)
  %120 = fmul fast float %117, 0x4003333340000000
  %121 = fmul fast float %118, 0x4003333340000000
  %122 = fmul fast float %119, 0x4003333340000000
  %123 = call float @dx.op.unary.f32(i32 21, float %120)  ; Exp(value)
  %124 = call float @dx.op.unary.f32(i32 21, float %121)  ; Exp(value)
  %125 = call float @dx.op.unary.f32(i32 21, float %122)  ; Exp(value)
  %126 = fmul fast float %123, %109
  %127 = fmul fast float %124, %109
  %128 = fmul fast float %125, %109
  br label %221

; <label>:129                                     ; preds = %96
  %130 = icmp eq i32 %100, 1
  br i1 %130, label %131, label %176, !dx.controlflow.hints !22

; <label>:131                                     ; preds = %129
  %132 = call float @dx.op.unary.f32(i32 23, float %25)  ; Log(value)
  %133 = call float @dx.op.unary.f32(i32 23, float %26)  ; Log(value)
  %134 = call float @dx.op.unary.f32(i32 23, float %27)  ; Log(value)
  %135 = fmul fast float %132, 0x3F89F9B580000000
  %136 = fmul fast float %133, 0x3F89F9B580000000
  %137 = fmul fast float %134, 0x3F89F9B580000000
  %138 = call float @dx.op.unary.f32(i32 21, float %135)  ; Exp(value)
  %139 = call float @dx.op.unary.f32(i32 21, float %136)  ; Exp(value)
  %140 = call float @dx.op.unary.f32(i32 21, float %137)  ; Exp(value)
  %141 = fmul fast float %138, 1.868750e+01
  %142 = fmul fast float %139, 1.868750e+01
  %143 = fmul fast float %140, 1.868750e+01
  %144 = fsub fast float 0x4032DA0000000000, %141
  %145 = fsub fast float 0x4032DA0000000000, %142
  %146 = fsub fast float 0x4032DA0000000000, %143
  %147 = fadd fast float %138, -8.359375e-01
  %148 = fadd fast float %139, -8.359375e-01
  %149 = fadd fast float %140, -8.359375e-01
  %150 = call float @dx.op.binary.f32(i32 35, float %147, float 0.000000e+00)  ; FMax(a,b)
  %151 = call float @dx.op.binary.f32(i32 35, float %148, float 0.000000e+00)  ; FMax(a,b)
  %152 = call float @dx.op.binary.f32(i32 35, float %149, float 0.000000e+00)  ; FMax(a,b)
  %153 = fdiv fast float %150, %144
  %154 = fdiv fast float %151, %145
  %155 = fdiv fast float %152, %146
  %156 = call float @dx.op.unary.f32(i32 23, float %153)  ; Log(value)
  %157 = call float @dx.op.unary.f32(i32 23, float %154)  ; Log(value)
  %158 = call float @dx.op.unary.f32(i32 23, float %155)  ; Log(value)
  %159 = fmul fast float %156, 0x40191C0D60000000
  %160 = fmul fast float %157, 0x40191C0D60000000
  %161 = fmul fast float %158, 0x40191C0D60000000
  %162 = call float @dx.op.unary.f32(i32 21, float %159)  ; Exp(value)
  %163 = call float @dx.op.unary.f32(i32 21, float %160)  ; Exp(value)
  %164 = call float @dx.op.unary.f32(i32 21, float %161)  ; Exp(value)
  %165 = fmul fast float %163, 1.000000e+04
  %166 = fmul fast float %164, 1.000000e+04
  %167 = fmul fast float %162, 1.660500e+04
  %168 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %165, float %167)  ; FMad(a,b,c)
  %169 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %166, float %168)  ; FMad(a,b,c)
  %170 = fmul fast float %162, -1.246000e+03
  %171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %165, float %170)  ; FMad(a,b,c)
  %172 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %166, float %171)  ; FMad(a,b,c)
  %173 = fmul fast float %162, -1.820000e+02
  %174 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %165, float %173)  ; FMad(a,b,c)
  %175 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %166, float %174)  ; FMad(a,b,c)
  br label %221

; <label>:176                                     ; preds = %129
  %177 = icmp eq i32 %100, 2
  br i1 %177, label %178, label %221, !dx.controlflow.hints !23

; <label>:178                                     ; preds = %176
  %179 = call float @dx.op.unary.f32(i32 23, float %25)  ; Log(value)
  %180 = call float @dx.op.unary.f32(i32 23, float %26)  ; Log(value)
  %181 = call float @dx.op.unary.f32(i32 23, float %27)  ; Log(value)
  %182 = fmul fast float %179, 0x3F89F9B580000000
  %183 = fmul fast float %180, 0x3F89F9B580000000
  %184 = fmul fast float %181, 0x3F89F9B580000000
  %185 = call float @dx.op.unary.f32(i32 21, float %182)  ; Exp(value)
  %186 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %187 = call float @dx.op.unary.f32(i32 21, float %184)  ; Exp(value)
  %188 = fmul fast float %185, 1.868750e+01
  %189 = fmul fast float %186, 1.868750e+01
  %190 = fmul fast float %187, 1.868750e+01
  %191 = fsub fast float 0x4032DA0000000000, %188
  %192 = fsub fast float 0x4032DA0000000000, %189
  %193 = fsub fast float 0x4032DA0000000000, %190
  %194 = fadd fast float %185, -8.359375e-01
  %195 = fadd fast float %186, -8.359375e-01
  %196 = fadd fast float %187, -8.359375e-01
  %197 = call float @dx.op.binary.f32(i32 35, float %194, float 0.000000e+00)  ; FMax(a,b)
  %198 = call float @dx.op.binary.f32(i32 35, float %195, float 0.000000e+00)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 35, float %196, float 0.000000e+00)  ; FMax(a,b)
  %200 = fdiv fast float %197, %191
  %201 = fdiv fast float %198, %192
  %202 = fdiv fast float %199, %193
  %203 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %204 = call float @dx.op.unary.f32(i32 23, float %201)  ; Log(value)
  %205 = call float @dx.op.unary.f32(i32 23, float %202)  ; Log(value)
  %206 = fmul fast float %203, 0x40191C0D60000000
  %207 = fmul fast float %204, 0x40191C0D60000000
  %208 = fmul fast float %205, 0x40191C0D60000000
  %209 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %210 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %211 = call float @dx.op.unary.f32(i32 21, float %208)  ; Exp(value)
  %212 = fmul fast float %210, 1.000000e+04
  %213 = fmul fast float %211, 1.000000e+04
  %214 = fmul fast float %209, 0x40C7ECB320000000
  %215 = call float @dx.op.tertiary.f32(i32 46, float 0xBFCCCAD580000000, float %212, float %214)  ; FMad(a,b,c)
  %216 = fmul fast float %209, 0xC07A491EC0000000
  %217 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF0AC4720000000, float %212, float %216)  ; FMad(a,b,c)
  %218 = fmul fast float %209, 0xC0688C0820000000
  %219 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB4217D20000000, float %212, float %218)  ; FMad(a,b,c)
  %220 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF19283A0000000, float %213, float %219)  ; FMad(a,b,c)
  br label %221

; <label>:221                                     ; preds = %178, %176, %131, %102
  %222 = phi float [ %126, %102 ], [ %169, %131 ], [ %215, %178 ], [ %25, %176 ]
  %223 = phi float [ %127, %102 ], [ %172, %131 ], [ %217, %178 ], [ %26, %176 ]
  %224 = phi float [ %128, %102 ], [ %175, %131 ], [ %220, %178 ], [ %27, %176 ]
  %225 = fmul fast float %222, 0x3FDA65AF80000000
  %226 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD6E286E0000000, float %223, float %225)  ; FMad(a,b,c)
  %227 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC7189380000000, float %224, float %226)  ; FMad(a,b,c)
  %228 = fmul fast float %222, 0x3FCB38DDA0000000
  %229 = call float @dx.op.tertiary.f32(i32 46, float 0x3FE6E286E0000000, float %223, float %228)  ; FMad(a,b,c)
  %230 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB27A0FA0000000, float %224, float %229)  ; FMad(a,b,c)
  %231 = fmul fast float %222, 0x3F93CC4420000000
  %232 = call float @dx.op.tertiary.f32(i32 46, float 0x3FBE835DE0000000, float %223, float %231)  ; FMad(a,b,c)
  %233 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEE68E420000000, float %224, float %232)  ; FMad(a,b,c)
  %234 = fadd fast float %230, %227
  %235 = fadd fast float %234, %233
  %236 = fdiv fast float %227, %235
  %237 = fdiv fast float %230, %235
  %238 = add i32 %98, -1
  %239 = uitofp i32 %238 to float
  %240 = add i32 %99, -1
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %236, %239
  %243 = fmul fast float %237, %241
  %244 = fptosi float %242 to i32
  %245 = fptosi float %243 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 undef, i32 %244, i32 %245, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fadd fast float %247, 0x3EF0001000000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %244, i32 %245, i32 undef, float %248, float %248, float %248, float %248, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %249

; <label>:249                                     ; preds = %221, %92, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !12, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !11}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 14}
!11 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!12 = !{!13}
!13 = !{i32 0, %GfxHdrScopesScatterCBuffer* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{void ()* @cs_hdr_scopes_scatter, !"cs_hdr_scopes_scatter", null, !4, !15}
!15 = !{i32 0, i64 8448, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

