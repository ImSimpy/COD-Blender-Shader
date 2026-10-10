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
; shader hash: 56b294654c27828bb5611a3773e51f7d
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
;   [48 x i8] (type annotation not present)
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
;                                       UAV     f32          2d      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%cb = type { <4 x i32>, <4 x i32>, <4 x i32> }

define void @cs_cas_sharpen_only() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = lshr i32 %4, 1
  %8 = and i32 %7, 7
  %9 = lshr i32 %4, 3
  %10 = and i32 %4, 1
  %11 = and i32 %9, 6
  %12 = or i32 %11, %10
  %13 = shl i32 %5, 4
  %14 = shl i32 %6, 4
  %15 = or i32 %8, %13
  %16 = or i32 %12, %14
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = add i32 %16, -1
  %20 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = add i32 %15, -1
  %25 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %24, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  %27 = extractvalue %dx.types.ResRet.f32 %25, 1
  %28 = extractvalue %dx.types.ResRet.f32 %25, 2
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = add nsw i32 %15, 1
  %34 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = add nsw i32 %16, 1
  %39 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = extractvalue %dx.types.ResRet.f32 %39, 1
  %42 = extractvalue %dx.types.ResRet.f32 %39, 2
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = add i32 %44, -3
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %81, !dx.controlflow.hints !15

; <label>:47                                      ; preds = %0
  %48 = call float @dx.op.unary.f32(i32 23, float %21)  ; Log(value)
  %49 = call float @dx.op.unary.f32(i32 23, float %22)  ; Log(value)
  %50 = call float @dx.op.unary.f32(i32 23, float %23)  ; Log(value)
  %51 = fmul fast float %48, 0x3F89F9B580000000
  %52 = fmul fast float %49, 0x3F89F9B580000000
  %53 = fmul fast float %50, 0x3F89F9B580000000
  %54 = call float @dx.op.unary.f32(i32 21, float %51)  ; Exp(value)
  %55 = call float @dx.op.unary.f32(i32 21, float %52)  ; Exp(value)
  %56 = call float @dx.op.unary.f32(i32 21, float %53)  ; Exp(value)
  %57 = fmul fast float %54, 1.868750e+01
  %58 = fmul fast float %55, 1.868750e+01
  %59 = fmul fast float %56, 1.868750e+01
  %60 = fsub fast float 0x4032DA0000000000, %57
  %61 = fsub fast float 0x4032DA0000000000, %58
  %62 = fsub fast float 0x4032DA0000000000, %59
  %63 = fadd fast float %54, -8.359375e-01
  %64 = fadd fast float %55, -8.359375e-01
  %65 = fadd fast float %56, -8.359375e-01
  %66 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 35, float %64, float 0.000000e+00)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %69 = fdiv fast float %66, %60
  %70 = fdiv fast float %67, %61
  %71 = fdiv fast float %68, %62
  %72 = call float @dx.op.unary.f32(i32 23, float %69)  ; Log(value)
  %73 = call float @dx.op.unary.f32(i32 23, float %70)  ; Log(value)
  %74 = call float @dx.op.unary.f32(i32 23, float %71)  ; Log(value)
  %75 = fmul fast float %72, 0x40191C0D60000000
  %76 = fmul fast float %73, 0x40191C0D60000000
  %77 = fmul fast float %74, 0x40191C0D60000000
  %78 = call float @dx.op.unary.f32(i32 21, float %75)  ; Exp(value)
  %79 = call float @dx.op.unary.f32(i32 21, float %76)  ; Exp(value)
  %80 = call float @dx.op.unary.f32(i32 21, float %77)  ; Exp(value)
  br label %85

; <label>:81                                      ; preds = %0
  %82 = fmul fast float %21, %21
  %83 = fmul fast float %22, %22
  %84 = fmul fast float %23, %23
  br label %85

; <label>:85                                      ; preds = %81, %47
  %86 = phi float [ %80, %47 ], [ %84, %81 ]
  %87 = phi float [ %79, %47 ], [ %83, %81 ]
  %88 = phi float [ %78, %47 ], [ %82, %81 ]
  br i1 %46, label %89, label %123, !dx.controlflow.hints !15

; <label>:89                                      ; preds = %85
  %90 = call float @dx.op.unary.f32(i32 23, float %26)  ; Log(value)
  %91 = call float @dx.op.unary.f32(i32 23, float %27)  ; Log(value)
  %92 = call float @dx.op.unary.f32(i32 23, float %28)  ; Log(value)
  %93 = fmul fast float %90, 0x3F89F9B580000000
  %94 = fmul fast float %91, 0x3F89F9B580000000
  %95 = fmul fast float %92, 0x3F89F9B580000000
  %96 = call float @dx.op.unary.f32(i32 21, float %93)  ; Exp(value)
  %97 = call float @dx.op.unary.f32(i32 21, float %94)  ; Exp(value)
  %98 = call float @dx.op.unary.f32(i32 21, float %95)  ; Exp(value)
  %99 = fmul fast float %96, 1.868750e+01
  %100 = fmul fast float %97, 1.868750e+01
  %101 = fmul fast float %98, 1.868750e+01
  %102 = fsub fast float 0x4032DA0000000000, %99
  %103 = fsub fast float 0x4032DA0000000000, %100
  %104 = fsub fast float 0x4032DA0000000000, %101
  %105 = fadd fast float %96, -8.359375e-01
  %106 = fadd fast float %97, -8.359375e-01
  %107 = fadd fast float %98, -8.359375e-01
  %108 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 35, float %106, float 0.000000e+00)  ; FMax(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %107, float 0.000000e+00)  ; FMax(a,b)
  %111 = fdiv fast float %108, %102
  %112 = fdiv fast float %109, %103
  %113 = fdiv fast float %110, %104
  %114 = call float @dx.op.unary.f32(i32 23, float %111)  ; Log(value)
  %115 = call float @dx.op.unary.f32(i32 23, float %112)  ; Log(value)
  %116 = call float @dx.op.unary.f32(i32 23, float %113)  ; Log(value)
  %117 = fmul fast float %114, 0x40191C0D60000000
  %118 = fmul fast float %115, 0x40191C0D60000000
  %119 = fmul fast float %116, 0x40191C0D60000000
  %120 = call float @dx.op.unary.f32(i32 21, float %117)  ; Exp(value)
  %121 = call float @dx.op.unary.f32(i32 21, float %118)  ; Exp(value)
  %122 = call float @dx.op.unary.f32(i32 21, float %119)  ; Exp(value)
  br label %127

; <label>:123                                     ; preds = %85
  %124 = fmul fast float %26, %26
  %125 = fmul fast float %27, %27
  %126 = fmul fast float %28, %28
  br label %127

; <label>:127                                     ; preds = %123, %89
  %128 = phi float [ %122, %89 ], [ %126, %123 ]
  %129 = phi float [ %121, %89 ], [ %125, %123 ]
  %130 = phi float [ %120, %89 ], [ %124, %123 ]
  br i1 %46, label %131, label %165, !dx.controlflow.hints !15

; <label>:131                                     ; preds = %127
  %132 = call float @dx.op.unary.f32(i32 23, float %30)  ; Log(value)
  %133 = call float @dx.op.unary.f32(i32 23, float %31)  ; Log(value)
  %134 = call float @dx.op.unary.f32(i32 23, float %32)  ; Log(value)
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
  br label %169

; <label>:165                                     ; preds = %127
  %166 = fmul fast float %30, %30
  %167 = fmul fast float %31, %31
  %168 = fmul fast float %32, %32
  br label %169

; <label>:169                                     ; preds = %165, %131
  %170 = phi float [ %164, %131 ], [ %168, %165 ]
  %171 = phi float [ %163, %131 ], [ %167, %165 ]
  %172 = phi float [ %162, %131 ], [ %166, %165 ]
  br i1 %46, label %173, label %207, !dx.controlflow.hints !15

; <label>:173                                     ; preds = %169
  %174 = call float @dx.op.unary.f32(i32 23, float %35)  ; Log(value)
  %175 = call float @dx.op.unary.f32(i32 23, float %36)  ; Log(value)
  %176 = call float @dx.op.unary.f32(i32 23, float %37)  ; Log(value)
  %177 = fmul fast float %174, 0x3F89F9B580000000
  %178 = fmul fast float %175, 0x3F89F9B580000000
  %179 = fmul fast float %176, 0x3F89F9B580000000
  %180 = call float @dx.op.unary.f32(i32 21, float %177)  ; Exp(value)
  %181 = call float @dx.op.unary.f32(i32 21, float %178)  ; Exp(value)
  %182 = call float @dx.op.unary.f32(i32 21, float %179)  ; Exp(value)
  %183 = fmul fast float %180, 1.868750e+01
  %184 = fmul fast float %181, 1.868750e+01
  %185 = fmul fast float %182, 1.868750e+01
  %186 = fsub fast float 0x4032DA0000000000, %183
  %187 = fsub fast float 0x4032DA0000000000, %184
  %188 = fsub fast float 0x4032DA0000000000, %185
  %189 = fadd fast float %180, -8.359375e-01
  %190 = fadd fast float %181, -8.359375e-01
  %191 = fadd fast float %182, -8.359375e-01
  %192 = call float @dx.op.binary.f32(i32 35, float %189, float 0.000000e+00)  ; FMax(a,b)
  %193 = call float @dx.op.binary.f32(i32 35, float %190, float 0.000000e+00)  ; FMax(a,b)
  %194 = call float @dx.op.binary.f32(i32 35, float %191, float 0.000000e+00)  ; FMax(a,b)
  %195 = fdiv fast float %192, %186
  %196 = fdiv fast float %193, %187
  %197 = fdiv fast float %194, %188
  %198 = call float @dx.op.unary.f32(i32 23, float %195)  ; Log(value)
  %199 = call float @dx.op.unary.f32(i32 23, float %196)  ; Log(value)
  %200 = call float @dx.op.unary.f32(i32 23, float %197)  ; Log(value)
  %201 = fmul fast float %198, 0x40191C0D60000000
  %202 = fmul fast float %199, 0x40191C0D60000000
  %203 = fmul fast float %200, 0x40191C0D60000000
  %204 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %205 = call float @dx.op.unary.f32(i32 21, float %202)  ; Exp(value)
  %206 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  br label %211

; <label>:207                                     ; preds = %169
  %208 = fmul fast float %35, %35
  %209 = fmul fast float %36, %36
  %210 = fmul fast float %37, %37
  br label %211

; <label>:211                                     ; preds = %207, %173
  %212 = phi float [ %206, %173 ], [ %210, %207 ]
  %213 = phi float [ %205, %173 ], [ %209, %207 ]
  %214 = phi float [ %204, %173 ], [ %208, %207 ]
  br i1 %46, label %215, label %249, !dx.controlflow.hints !15

; <label>:215                                     ; preds = %211
  %216 = call float @dx.op.unary.f32(i32 23, float %40)  ; Log(value)
  %217 = call float @dx.op.unary.f32(i32 23, float %41)  ; Log(value)
  %218 = call float @dx.op.unary.f32(i32 23, float %42)  ; Log(value)
  %219 = fmul fast float %216, 0x3F89F9B580000000
  %220 = fmul fast float %217, 0x3F89F9B580000000
  %221 = fmul fast float %218, 0x3F89F9B580000000
  %222 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %223 = call float @dx.op.unary.f32(i32 21, float %220)  ; Exp(value)
  %224 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %225 = fmul fast float %222, 1.868750e+01
  %226 = fmul fast float %223, 1.868750e+01
  %227 = fmul fast float %224, 1.868750e+01
  %228 = fsub fast float 0x4032DA0000000000, %225
  %229 = fsub fast float 0x4032DA0000000000, %226
  %230 = fsub fast float 0x4032DA0000000000, %227
  %231 = fadd fast float %222, -8.359375e-01
  %232 = fadd fast float %223, -8.359375e-01
  %233 = fadd fast float %224, -8.359375e-01
  %234 = call float @dx.op.binary.f32(i32 35, float %231, float 0.000000e+00)  ; FMax(a,b)
  %235 = call float @dx.op.binary.f32(i32 35, float %232, float 0.000000e+00)  ; FMax(a,b)
  %236 = call float @dx.op.binary.f32(i32 35, float %233, float 0.000000e+00)  ; FMax(a,b)
  %237 = fdiv fast float %234, %228
  %238 = fdiv fast float %235, %229
  %239 = fdiv fast float %236, %230
  %240 = call float @dx.op.unary.f32(i32 23, float %237)  ; Log(value)
  %241 = call float @dx.op.unary.f32(i32 23, float %238)  ; Log(value)
  %242 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %243 = fmul fast float %240, 0x40191C0D60000000
  %244 = fmul fast float %241, 0x40191C0D60000000
  %245 = fmul fast float %242, 0x40191C0D60000000
  %246 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %247 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %248 = call float @dx.op.unary.f32(i32 21, float %245)  ; Exp(value)
  br label %253

; <label>:249                                     ; preds = %211
  %250 = fmul fast float %40, %40
  %251 = fmul fast float %41, %41
  %252 = fmul fast float %42, %42
  br label %253

; <label>:253                                     ; preds = %249, %215
  %254 = phi float [ %248, %215 ], [ %252, %249 ]
  %255 = phi float [ %247, %215 ], [ %251, %249 ]
  %256 = phi float [ %246, %215 ], [ %250, %249 ]
  %257 = call float @dx.op.binary.f32(i32 36, float %171, float %213)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %129, float %257)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 36, float %87, float %255)  ; FMin(a,b)
  %260 = call float @dx.op.binary.f32(i32 36, float %258, float %259)  ; FMin(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %171, float %213)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %129, float %261)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float %87, float %255)  ; FMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %262, float %263)  ; FMax(a,b)
  %265 = bitcast float %264 to i32
  %266 = sub i32 2129690299, %265
  %267 = bitcast i32 %266 to float
  %268 = fsub fast float 1.000000e+00, %264
  %269 = call float @dx.op.binary.f32(i32 36, float %260, float %268)  ; FMin(a,b)
  %270 = fmul fast float %267, %269
  %271 = call float @dx.op.unary.f32(i32 7, float %270)  ; Saturate(value)
  %272 = bitcast float %271 to i32
  %273 = lshr i32 %272, 1
  %274 = add nuw i32 %273, 532432441
  %275 = bitcast i32 %274 to float
  %276 = bitcast i32 %18 to float
  %277 = fmul fast float %275, %276
  %278 = fmul fast float %277, 4.000000e+00
  %279 = fadd fast float %278, 1.000000e+00
  %280 = bitcast float %279 to i32
  %281 = sub i32 2129764351, %280
  %282 = bitcast i32 %281 to float
  %283 = fmul fast float %282, %279
  %284 = fsub fast float 2.000000e+00, %283
  %285 = fmul fast float %284, %282
  %286 = fadd fast float %130, %88
  %287 = fadd fast float %286, %214
  %288 = fadd fast float %287, %256
  %289 = fmul fast float %277, %288
  %290 = fadd fast float %289, %172
  %291 = fmul fast float %285, %290
  %292 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %293 = fadd fast float %129, %87
  %294 = fadd fast float %293, %213
  %295 = fadd fast float %294, %255
  %296 = fmul fast float %277, %295
  %297 = fadd fast float %296, %171
  %298 = fmul fast float %285, %297
  %299 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %300 = fadd fast float %128, %86
  %301 = fadd fast float %300, %212
  %302 = fadd fast float %301, %254
  %303 = fmul fast float %277, %302
  %304 = fadd fast float %303, %170
  %305 = fmul fast float %285, %304
  %306 = call float @dx.op.unary.f32(i32 7, float %305)  ; Saturate(value)
  br i1 %46, label %307, label %341, !dx.controlflow.hints !16

; <label>:307                                     ; preds = %253
  %308 = call float @dx.op.unary.f32(i32 23, float %292)  ; Log(value)
  %309 = call float @dx.op.unary.f32(i32 23, float %299)  ; Log(value)
  %310 = call float @dx.op.unary.f32(i32 23, float %306)  ; Log(value)
  %311 = fmul fast float %308, 0x3FC4640000000000
  %312 = fmul fast float %309, 0x3FC4640000000000
  %313 = fmul fast float %310, 0x3FC4640000000000
  %314 = call float @dx.op.unary.f32(i32 21, float %311)  ; Exp(value)
  %315 = call float @dx.op.unary.f32(i32 21, float %312)  ; Exp(value)
  %316 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  %317 = fmul fast float %314, 0x4032DA0000000000
  %318 = fmul fast float %315, 0x4032DA0000000000
  %319 = fmul fast float %316, 0x4032DA0000000000
  %320 = fadd fast float %317, 8.359375e-01
  %321 = fadd fast float %318, 8.359375e-01
  %322 = fadd fast float %319, 8.359375e-01
  %323 = fmul fast float %314, 1.868750e+01
  %324 = fmul fast float %315, 1.868750e+01
  %325 = fmul fast float %316, 1.868750e+01
  %326 = fadd fast float %323, 1.000000e+00
  %327 = fadd fast float %324, 1.000000e+00
  %328 = fadd fast float %325, 1.000000e+00
  %329 = fdiv fast float %320, %326
  %330 = fdiv fast float %321, %327
  %331 = fdiv fast float %322, %328
  %332 = call float @dx.op.unary.f32(i32 23, float %329)  ; Log(value)
  %333 = call float @dx.op.unary.f32(i32 23, float %330)  ; Log(value)
  %334 = call float @dx.op.unary.f32(i32 23, float %331)  ; Log(value)
  %335 = fmul fast float %332, 7.884375e+01
  %336 = fmul fast float %333, 7.884375e+01
  %337 = fmul fast float %334, 7.884375e+01
  %338 = call float @dx.op.unary.f32(i32 21, float %335)  ; Exp(value)
  %339 = call float @dx.op.unary.f32(i32 21, float %336)  ; Exp(value)
  %340 = call float @dx.op.unary.f32(i32 21, float %337)  ; Exp(value)
  br label %345

; <label>:341                                     ; preds = %253
  %342 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %343 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %344 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  br label %345

; <label>:345                                     ; preds = %341, %307
  %346 = phi float [ %338, %307 ], [ %342, %341 ]
  %347 = phi float [ %339, %307 ], [ %343, %341 ]
  %348 = phi float [ %340, %307 ], [ %344, %341 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %346, float %347, float %348, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %349 = or i32 %15, 8
  %350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.i32 %350, 0
  %352 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %349, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = add i32 %349, -1
  %357 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %356, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = extractvalue %dx.types.ResRet.f32 %357, 1
  %360 = extractvalue %dx.types.ResRet.f32 %357, 2
  %361 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %349, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = add i32 %349, 1
  %366 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %365, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = extractvalue %dx.types.ResRet.f32 %366, 1
  %369 = extractvalue %dx.types.ResRet.f32 %366, 2
  %370 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %349, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.i32 %374, 0
  %376 = add i32 %375, -3
  %377 = icmp ult i32 %376, 2
  br i1 %377, label %378, label %412, !dx.controlflow.hints !15

; <label>:378                                     ; preds = %345
  %379 = call float @dx.op.unary.f32(i32 23, float %353)  ; Log(value)
  %380 = call float @dx.op.unary.f32(i32 23, float %354)  ; Log(value)
  %381 = call float @dx.op.unary.f32(i32 23, float %355)  ; Log(value)
  %382 = fmul fast float %379, 0x3F89F9B580000000
  %383 = fmul fast float %380, 0x3F89F9B580000000
  %384 = fmul fast float %381, 0x3F89F9B580000000
  %385 = call float @dx.op.unary.f32(i32 21, float %382)  ; Exp(value)
  %386 = call float @dx.op.unary.f32(i32 21, float %383)  ; Exp(value)
  %387 = call float @dx.op.unary.f32(i32 21, float %384)  ; Exp(value)
  %388 = fmul fast float %385, 1.868750e+01
  %389 = fmul fast float %386, 1.868750e+01
  %390 = fmul fast float %387, 1.868750e+01
  %391 = fsub fast float 0x4032DA0000000000, %388
  %392 = fsub fast float 0x4032DA0000000000, %389
  %393 = fsub fast float 0x4032DA0000000000, %390
  %394 = fadd fast float %385, -8.359375e-01
  %395 = fadd fast float %386, -8.359375e-01
  %396 = fadd fast float %387, -8.359375e-01
  %397 = call float @dx.op.binary.f32(i32 35, float %394, float 0.000000e+00)  ; FMax(a,b)
  %398 = call float @dx.op.binary.f32(i32 35, float %395, float 0.000000e+00)  ; FMax(a,b)
  %399 = call float @dx.op.binary.f32(i32 35, float %396, float 0.000000e+00)  ; FMax(a,b)
  %400 = fdiv fast float %397, %391
  %401 = fdiv fast float %398, %392
  %402 = fdiv fast float %399, %393
  %403 = call float @dx.op.unary.f32(i32 23, float %400)  ; Log(value)
  %404 = call float @dx.op.unary.f32(i32 23, float %401)  ; Log(value)
  %405 = call float @dx.op.unary.f32(i32 23, float %402)  ; Log(value)
  %406 = fmul fast float %403, 0x40191C0D60000000
  %407 = fmul fast float %404, 0x40191C0D60000000
  %408 = fmul fast float %405, 0x40191C0D60000000
  %409 = call float @dx.op.unary.f32(i32 21, float %406)  ; Exp(value)
  %410 = call float @dx.op.unary.f32(i32 21, float %407)  ; Exp(value)
  %411 = call float @dx.op.unary.f32(i32 21, float %408)  ; Exp(value)
  br label %416

; <label>:412                                     ; preds = %345
  %413 = fmul fast float %353, %353
  %414 = fmul fast float %354, %354
  %415 = fmul fast float %355, %355
  br label %416

; <label>:416                                     ; preds = %412, %378
  %417 = phi float [ %411, %378 ], [ %415, %412 ]
  %418 = phi float [ %410, %378 ], [ %414, %412 ]
  %419 = phi float [ %409, %378 ], [ %413, %412 ]
  br i1 %377, label %420, label %454, !dx.controlflow.hints !15

; <label>:420                                     ; preds = %416
  %421 = call float @dx.op.unary.f32(i32 23, float %358)  ; Log(value)
  %422 = call float @dx.op.unary.f32(i32 23, float %359)  ; Log(value)
  %423 = call float @dx.op.unary.f32(i32 23, float %360)  ; Log(value)
  %424 = fmul fast float %421, 0x3F89F9B580000000
  %425 = fmul fast float %422, 0x3F89F9B580000000
  %426 = fmul fast float %423, 0x3F89F9B580000000
  %427 = call float @dx.op.unary.f32(i32 21, float %424)  ; Exp(value)
  %428 = call float @dx.op.unary.f32(i32 21, float %425)  ; Exp(value)
  %429 = call float @dx.op.unary.f32(i32 21, float %426)  ; Exp(value)
  %430 = fmul fast float %427, 1.868750e+01
  %431 = fmul fast float %428, 1.868750e+01
  %432 = fmul fast float %429, 1.868750e+01
  %433 = fsub fast float 0x4032DA0000000000, %430
  %434 = fsub fast float 0x4032DA0000000000, %431
  %435 = fsub fast float 0x4032DA0000000000, %432
  %436 = fadd fast float %427, -8.359375e-01
  %437 = fadd fast float %428, -8.359375e-01
  %438 = fadd fast float %429, -8.359375e-01
  %439 = call float @dx.op.binary.f32(i32 35, float %436, float 0.000000e+00)  ; FMax(a,b)
  %440 = call float @dx.op.binary.f32(i32 35, float %437, float 0.000000e+00)  ; FMax(a,b)
  %441 = call float @dx.op.binary.f32(i32 35, float %438, float 0.000000e+00)  ; FMax(a,b)
  %442 = fdiv fast float %439, %433
  %443 = fdiv fast float %440, %434
  %444 = fdiv fast float %441, %435
  %445 = call float @dx.op.unary.f32(i32 23, float %442)  ; Log(value)
  %446 = call float @dx.op.unary.f32(i32 23, float %443)  ; Log(value)
  %447 = call float @dx.op.unary.f32(i32 23, float %444)  ; Log(value)
  %448 = fmul fast float %445, 0x40191C0D60000000
  %449 = fmul fast float %446, 0x40191C0D60000000
  %450 = fmul fast float %447, 0x40191C0D60000000
  %451 = call float @dx.op.unary.f32(i32 21, float %448)  ; Exp(value)
  %452 = call float @dx.op.unary.f32(i32 21, float %449)  ; Exp(value)
  %453 = call float @dx.op.unary.f32(i32 21, float %450)  ; Exp(value)
  br label %458

; <label>:454                                     ; preds = %416
  %455 = fmul fast float %358, %358
  %456 = fmul fast float %359, %359
  %457 = fmul fast float %360, %360
  br label %458

; <label>:458                                     ; preds = %454, %420
  %459 = phi float [ %453, %420 ], [ %457, %454 ]
  %460 = phi float [ %452, %420 ], [ %456, %454 ]
  %461 = phi float [ %451, %420 ], [ %455, %454 ]
  br i1 %377, label %462, label %496, !dx.controlflow.hints !15

; <label>:462                                     ; preds = %458
  %463 = call float @dx.op.unary.f32(i32 23, float %362)  ; Log(value)
  %464 = call float @dx.op.unary.f32(i32 23, float %363)  ; Log(value)
  %465 = call float @dx.op.unary.f32(i32 23, float %364)  ; Log(value)
  %466 = fmul fast float %463, 0x3F89F9B580000000
  %467 = fmul fast float %464, 0x3F89F9B580000000
  %468 = fmul fast float %465, 0x3F89F9B580000000
  %469 = call float @dx.op.unary.f32(i32 21, float %466)  ; Exp(value)
  %470 = call float @dx.op.unary.f32(i32 21, float %467)  ; Exp(value)
  %471 = call float @dx.op.unary.f32(i32 21, float %468)  ; Exp(value)
  %472 = fmul fast float %469, 1.868750e+01
  %473 = fmul fast float %470, 1.868750e+01
  %474 = fmul fast float %471, 1.868750e+01
  %475 = fsub fast float 0x4032DA0000000000, %472
  %476 = fsub fast float 0x4032DA0000000000, %473
  %477 = fsub fast float 0x4032DA0000000000, %474
  %478 = fadd fast float %469, -8.359375e-01
  %479 = fadd fast float %470, -8.359375e-01
  %480 = fadd fast float %471, -8.359375e-01
  %481 = call float @dx.op.binary.f32(i32 35, float %478, float 0.000000e+00)  ; FMax(a,b)
  %482 = call float @dx.op.binary.f32(i32 35, float %479, float 0.000000e+00)  ; FMax(a,b)
  %483 = call float @dx.op.binary.f32(i32 35, float %480, float 0.000000e+00)  ; FMax(a,b)
  %484 = fdiv fast float %481, %475
  %485 = fdiv fast float %482, %476
  %486 = fdiv fast float %483, %477
  %487 = call float @dx.op.unary.f32(i32 23, float %484)  ; Log(value)
  %488 = call float @dx.op.unary.f32(i32 23, float %485)  ; Log(value)
  %489 = call float @dx.op.unary.f32(i32 23, float %486)  ; Log(value)
  %490 = fmul fast float %487, 0x40191C0D60000000
  %491 = fmul fast float %488, 0x40191C0D60000000
  %492 = fmul fast float %489, 0x40191C0D60000000
  %493 = call float @dx.op.unary.f32(i32 21, float %490)  ; Exp(value)
  %494 = call float @dx.op.unary.f32(i32 21, float %491)  ; Exp(value)
  %495 = call float @dx.op.unary.f32(i32 21, float %492)  ; Exp(value)
  br label %500

; <label>:496                                     ; preds = %458
  %497 = fmul fast float %362, %362
  %498 = fmul fast float %363, %363
  %499 = fmul fast float %364, %364
  br label %500

; <label>:500                                     ; preds = %496, %462
  %501 = phi float [ %495, %462 ], [ %499, %496 ]
  %502 = phi float [ %494, %462 ], [ %498, %496 ]
  %503 = phi float [ %493, %462 ], [ %497, %496 ]
  br i1 %377, label %504, label %538, !dx.controlflow.hints !15

; <label>:504                                     ; preds = %500
  %505 = call float @dx.op.unary.f32(i32 23, float %367)  ; Log(value)
  %506 = call float @dx.op.unary.f32(i32 23, float %368)  ; Log(value)
  %507 = call float @dx.op.unary.f32(i32 23, float %369)  ; Log(value)
  %508 = fmul fast float %505, 0x3F89F9B580000000
  %509 = fmul fast float %506, 0x3F89F9B580000000
  %510 = fmul fast float %507, 0x3F89F9B580000000
  %511 = call float @dx.op.unary.f32(i32 21, float %508)  ; Exp(value)
  %512 = call float @dx.op.unary.f32(i32 21, float %509)  ; Exp(value)
  %513 = call float @dx.op.unary.f32(i32 21, float %510)  ; Exp(value)
  %514 = fmul fast float %511, 1.868750e+01
  %515 = fmul fast float %512, 1.868750e+01
  %516 = fmul fast float %513, 1.868750e+01
  %517 = fsub fast float 0x4032DA0000000000, %514
  %518 = fsub fast float 0x4032DA0000000000, %515
  %519 = fsub fast float 0x4032DA0000000000, %516
  %520 = fadd fast float %511, -8.359375e-01
  %521 = fadd fast float %512, -8.359375e-01
  %522 = fadd fast float %513, -8.359375e-01
  %523 = call float @dx.op.binary.f32(i32 35, float %520, float 0.000000e+00)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %521, float 0.000000e+00)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %522, float 0.000000e+00)  ; FMax(a,b)
  %526 = fdiv fast float %523, %517
  %527 = fdiv fast float %524, %518
  %528 = fdiv fast float %525, %519
  %529 = call float @dx.op.unary.f32(i32 23, float %526)  ; Log(value)
  %530 = call float @dx.op.unary.f32(i32 23, float %527)  ; Log(value)
  %531 = call float @dx.op.unary.f32(i32 23, float %528)  ; Log(value)
  %532 = fmul fast float %529, 0x40191C0D60000000
  %533 = fmul fast float %530, 0x40191C0D60000000
  %534 = fmul fast float %531, 0x40191C0D60000000
  %535 = call float @dx.op.unary.f32(i32 21, float %532)  ; Exp(value)
  %536 = call float @dx.op.unary.f32(i32 21, float %533)  ; Exp(value)
  %537 = call float @dx.op.unary.f32(i32 21, float %534)  ; Exp(value)
  br label %542

; <label>:538                                     ; preds = %500
  %539 = fmul fast float %367, %367
  %540 = fmul fast float %368, %368
  %541 = fmul fast float %369, %369
  br label %542

; <label>:542                                     ; preds = %538, %504
  %543 = phi float [ %537, %504 ], [ %541, %538 ]
  %544 = phi float [ %536, %504 ], [ %540, %538 ]
  %545 = phi float [ %535, %504 ], [ %539, %538 ]
  br i1 %377, label %546, label %580, !dx.controlflow.hints !15

; <label>:546                                     ; preds = %542
  %547 = call float @dx.op.unary.f32(i32 23, float %371)  ; Log(value)
  %548 = call float @dx.op.unary.f32(i32 23, float %372)  ; Log(value)
  %549 = call float @dx.op.unary.f32(i32 23, float %373)  ; Log(value)
  %550 = fmul fast float %547, 0x3F89F9B580000000
  %551 = fmul fast float %548, 0x3F89F9B580000000
  %552 = fmul fast float %549, 0x3F89F9B580000000
  %553 = call float @dx.op.unary.f32(i32 21, float %550)  ; Exp(value)
  %554 = call float @dx.op.unary.f32(i32 21, float %551)  ; Exp(value)
  %555 = call float @dx.op.unary.f32(i32 21, float %552)  ; Exp(value)
  %556 = fmul fast float %553, 1.868750e+01
  %557 = fmul fast float %554, 1.868750e+01
  %558 = fmul fast float %555, 1.868750e+01
  %559 = fsub fast float 0x4032DA0000000000, %556
  %560 = fsub fast float 0x4032DA0000000000, %557
  %561 = fsub fast float 0x4032DA0000000000, %558
  %562 = fadd fast float %553, -8.359375e-01
  %563 = fadd fast float %554, -8.359375e-01
  %564 = fadd fast float %555, -8.359375e-01
  %565 = call float @dx.op.binary.f32(i32 35, float %562, float 0.000000e+00)  ; FMax(a,b)
  %566 = call float @dx.op.binary.f32(i32 35, float %563, float 0.000000e+00)  ; FMax(a,b)
  %567 = call float @dx.op.binary.f32(i32 35, float %564, float 0.000000e+00)  ; FMax(a,b)
  %568 = fdiv fast float %565, %559
  %569 = fdiv fast float %566, %560
  %570 = fdiv fast float %567, %561
  %571 = call float @dx.op.unary.f32(i32 23, float %568)  ; Log(value)
  %572 = call float @dx.op.unary.f32(i32 23, float %569)  ; Log(value)
  %573 = call float @dx.op.unary.f32(i32 23, float %570)  ; Log(value)
  %574 = fmul fast float %571, 0x40191C0D60000000
  %575 = fmul fast float %572, 0x40191C0D60000000
  %576 = fmul fast float %573, 0x40191C0D60000000
  %577 = call float @dx.op.unary.f32(i32 21, float %574)  ; Exp(value)
  %578 = call float @dx.op.unary.f32(i32 21, float %575)  ; Exp(value)
  %579 = call float @dx.op.unary.f32(i32 21, float %576)  ; Exp(value)
  br label %584

; <label>:580                                     ; preds = %542
  %581 = fmul fast float %371, %371
  %582 = fmul fast float %372, %372
  %583 = fmul fast float %373, %373
  br label %584

; <label>:584                                     ; preds = %580, %546
  %585 = phi float [ %579, %546 ], [ %583, %580 ]
  %586 = phi float [ %578, %546 ], [ %582, %580 ]
  %587 = phi float [ %577, %546 ], [ %581, %580 ]
  %588 = call float @dx.op.binary.f32(i32 36, float %502, float %544)  ; FMin(a,b)
  %589 = call float @dx.op.binary.f32(i32 36, float %460, float %588)  ; FMin(a,b)
  %590 = call float @dx.op.binary.f32(i32 36, float %418, float %586)  ; FMin(a,b)
  %591 = call float @dx.op.binary.f32(i32 36, float %589, float %590)  ; FMin(a,b)
  %592 = call float @dx.op.binary.f32(i32 35, float %502, float %544)  ; FMax(a,b)
  %593 = call float @dx.op.binary.f32(i32 35, float %460, float %592)  ; FMax(a,b)
  %594 = call float @dx.op.binary.f32(i32 35, float %418, float %586)  ; FMax(a,b)
  %595 = call float @dx.op.binary.f32(i32 35, float %593, float %594)  ; FMax(a,b)
  %596 = bitcast float %595 to i32
  %597 = sub i32 2129690299, %596
  %598 = bitcast i32 %597 to float
  %599 = fsub fast float 1.000000e+00, %595
  %600 = call float @dx.op.binary.f32(i32 36, float %591, float %599)  ; FMin(a,b)
  %601 = fmul fast float %598, %600
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = bitcast float %602 to i32
  %604 = lshr i32 %603, 1
  %605 = add nuw i32 %604, 532432441
  %606 = bitcast i32 %605 to float
  %607 = bitcast i32 %351 to float
  %608 = fmul fast float %606, %607
  %609 = fmul fast float %608, 4.000000e+00
  %610 = fadd fast float %609, 1.000000e+00
  %611 = bitcast float %610 to i32
  %612 = sub i32 2129764351, %611
  %613 = bitcast i32 %612 to float
  %614 = fmul fast float %613, %610
  %615 = fsub fast float 2.000000e+00, %614
  %616 = fmul fast float %615, %613
  %617 = fadd fast float %461, %419
  %618 = fadd fast float %617, %545
  %619 = fadd fast float %618, %587
  %620 = fmul fast float %608, %619
  %621 = fadd fast float %620, %503
  %622 = fmul fast float %616, %621
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = fadd fast float %460, %418
  %625 = fadd fast float %624, %544
  %626 = fadd fast float %625, %586
  %627 = fmul fast float %608, %626
  %628 = fadd fast float %627, %502
  %629 = fmul fast float %616, %628
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fadd fast float %459, %417
  %632 = fadd fast float %631, %543
  %633 = fadd fast float %632, %585
  %634 = fmul fast float %608, %633
  %635 = fadd fast float %634, %501
  %636 = fmul fast float %616, %635
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  br i1 %377, label %638, label %672, !dx.controlflow.hints !16

; <label>:638                                     ; preds = %584
  %639 = call float @dx.op.unary.f32(i32 23, float %623)  ; Log(value)
  %640 = call float @dx.op.unary.f32(i32 23, float %630)  ; Log(value)
  %641 = call float @dx.op.unary.f32(i32 23, float %637)  ; Log(value)
  %642 = fmul fast float %639, 0x3FC4640000000000
  %643 = fmul fast float %640, 0x3FC4640000000000
  %644 = fmul fast float %641, 0x3FC4640000000000
  %645 = call float @dx.op.unary.f32(i32 21, float %642)  ; Exp(value)
  %646 = call float @dx.op.unary.f32(i32 21, float %643)  ; Exp(value)
  %647 = call float @dx.op.unary.f32(i32 21, float %644)  ; Exp(value)
  %648 = fmul fast float %645, 0x4032DA0000000000
  %649 = fmul fast float %646, 0x4032DA0000000000
  %650 = fmul fast float %647, 0x4032DA0000000000
  %651 = fadd fast float %648, 8.359375e-01
  %652 = fadd fast float %649, 8.359375e-01
  %653 = fadd fast float %650, 8.359375e-01
  %654 = fmul fast float %645, 1.868750e+01
  %655 = fmul fast float %646, 1.868750e+01
  %656 = fmul fast float %647, 1.868750e+01
  %657 = fadd fast float %654, 1.000000e+00
  %658 = fadd fast float %655, 1.000000e+00
  %659 = fadd fast float %656, 1.000000e+00
  %660 = fdiv fast float %651, %657
  %661 = fdiv fast float %652, %658
  %662 = fdiv fast float %653, %659
  %663 = call float @dx.op.unary.f32(i32 23, float %660)  ; Log(value)
  %664 = call float @dx.op.unary.f32(i32 23, float %661)  ; Log(value)
  %665 = call float @dx.op.unary.f32(i32 23, float %662)  ; Log(value)
  %666 = fmul fast float %663, 7.884375e+01
  %667 = fmul fast float %664, 7.884375e+01
  %668 = fmul fast float %665, 7.884375e+01
  %669 = call float @dx.op.unary.f32(i32 21, float %666)  ; Exp(value)
  %670 = call float @dx.op.unary.f32(i32 21, float %667)  ; Exp(value)
  %671 = call float @dx.op.unary.f32(i32 21, float %668)  ; Exp(value)
  br label %676

; <label>:672                                     ; preds = %584
  %673 = call float @dx.op.unary.f32(i32 24, float %623)  ; Sqrt(value)
  %674 = call float @dx.op.unary.f32(i32 24, float %630)  ; Sqrt(value)
  %675 = call float @dx.op.unary.f32(i32 24, float %637)  ; Sqrt(value)
  br label %676

; <label>:676                                     ; preds = %672, %638
  %677 = phi float [ %669, %638 ], [ %673, %672 ]
  %678 = phi float [ %670, %638 ], [ %674, %672 ]
  %679 = phi float [ %671, %638 ], [ %675, %672 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %349, i32 %16, i32 undef, float %677, float %678, float %679, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %680 = or i32 %16, 8
  %681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.i32 %681, 0
  %683 = add i32 %680, -1
  %684 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %349, i32 %683, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %356, i32 %680, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  %690 = extractvalue %dx.types.ResRet.f32 %688, 1
  %691 = extractvalue %dx.types.ResRet.f32 %688, 2
  %692 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %349, i32 %680, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 2
  %696 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %365, i32 %680, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = add i32 %680, 1
  %701 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %349, i32 %700, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.i32 %705, 0
  %707 = add i32 %706, -3
  %708 = icmp ult i32 %707, 2
  br i1 %708, label %709, label %743, !dx.controlflow.hints !15

; <label>:709                                     ; preds = %676
  %710 = call float @dx.op.unary.f32(i32 23, float %685)  ; Log(value)
  %711 = call float @dx.op.unary.f32(i32 23, float %686)  ; Log(value)
  %712 = call float @dx.op.unary.f32(i32 23, float %687)  ; Log(value)
  %713 = fmul fast float %710, 0x3F89F9B580000000
  %714 = fmul fast float %711, 0x3F89F9B580000000
  %715 = fmul fast float %712, 0x3F89F9B580000000
  %716 = call float @dx.op.unary.f32(i32 21, float %713)  ; Exp(value)
  %717 = call float @dx.op.unary.f32(i32 21, float %714)  ; Exp(value)
  %718 = call float @dx.op.unary.f32(i32 21, float %715)  ; Exp(value)
  %719 = fmul fast float %716, 1.868750e+01
  %720 = fmul fast float %717, 1.868750e+01
  %721 = fmul fast float %718, 1.868750e+01
  %722 = fsub fast float 0x4032DA0000000000, %719
  %723 = fsub fast float 0x4032DA0000000000, %720
  %724 = fsub fast float 0x4032DA0000000000, %721
  %725 = fadd fast float %716, -8.359375e-01
  %726 = fadd fast float %717, -8.359375e-01
  %727 = fadd fast float %718, -8.359375e-01
  %728 = call float @dx.op.binary.f32(i32 35, float %725, float 0.000000e+00)  ; FMax(a,b)
  %729 = call float @dx.op.binary.f32(i32 35, float %726, float 0.000000e+00)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float %727, float 0.000000e+00)  ; FMax(a,b)
  %731 = fdiv fast float %728, %722
  %732 = fdiv fast float %729, %723
  %733 = fdiv fast float %730, %724
  %734 = call float @dx.op.unary.f32(i32 23, float %731)  ; Log(value)
  %735 = call float @dx.op.unary.f32(i32 23, float %732)  ; Log(value)
  %736 = call float @dx.op.unary.f32(i32 23, float %733)  ; Log(value)
  %737 = fmul fast float %734, 0x40191C0D60000000
  %738 = fmul fast float %735, 0x40191C0D60000000
  %739 = fmul fast float %736, 0x40191C0D60000000
  %740 = call float @dx.op.unary.f32(i32 21, float %737)  ; Exp(value)
  %741 = call float @dx.op.unary.f32(i32 21, float %738)  ; Exp(value)
  %742 = call float @dx.op.unary.f32(i32 21, float %739)  ; Exp(value)
  br label %747

; <label>:743                                     ; preds = %676
  %744 = fmul fast float %685, %685
  %745 = fmul fast float %686, %686
  %746 = fmul fast float %687, %687
  br label %747

; <label>:747                                     ; preds = %743, %709
  %748 = phi float [ %742, %709 ], [ %746, %743 ]
  %749 = phi float [ %741, %709 ], [ %745, %743 ]
  %750 = phi float [ %740, %709 ], [ %744, %743 ]
  br i1 %708, label %751, label %785, !dx.controlflow.hints !15

; <label>:751                                     ; preds = %747
  %752 = call float @dx.op.unary.f32(i32 23, float %689)  ; Log(value)
  %753 = call float @dx.op.unary.f32(i32 23, float %690)  ; Log(value)
  %754 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %755 = fmul fast float %752, 0x3F89F9B580000000
  %756 = fmul fast float %753, 0x3F89F9B580000000
  %757 = fmul fast float %754, 0x3F89F9B580000000
  %758 = call float @dx.op.unary.f32(i32 21, float %755)  ; Exp(value)
  %759 = call float @dx.op.unary.f32(i32 21, float %756)  ; Exp(value)
  %760 = call float @dx.op.unary.f32(i32 21, float %757)  ; Exp(value)
  %761 = fmul fast float %758, 1.868750e+01
  %762 = fmul fast float %759, 1.868750e+01
  %763 = fmul fast float %760, 1.868750e+01
  %764 = fsub fast float 0x4032DA0000000000, %761
  %765 = fsub fast float 0x4032DA0000000000, %762
  %766 = fsub fast float 0x4032DA0000000000, %763
  %767 = fadd fast float %758, -8.359375e-01
  %768 = fadd fast float %759, -8.359375e-01
  %769 = fadd fast float %760, -8.359375e-01
  %770 = call float @dx.op.binary.f32(i32 35, float %767, float 0.000000e+00)  ; FMax(a,b)
  %771 = call float @dx.op.binary.f32(i32 35, float %768, float 0.000000e+00)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 35, float %769, float 0.000000e+00)  ; FMax(a,b)
  %773 = fdiv fast float %770, %764
  %774 = fdiv fast float %771, %765
  %775 = fdiv fast float %772, %766
  %776 = call float @dx.op.unary.f32(i32 23, float %773)  ; Log(value)
  %777 = call float @dx.op.unary.f32(i32 23, float %774)  ; Log(value)
  %778 = call float @dx.op.unary.f32(i32 23, float %775)  ; Log(value)
  %779 = fmul fast float %776, 0x40191C0D60000000
  %780 = fmul fast float %777, 0x40191C0D60000000
  %781 = fmul fast float %778, 0x40191C0D60000000
  %782 = call float @dx.op.unary.f32(i32 21, float %779)  ; Exp(value)
  %783 = call float @dx.op.unary.f32(i32 21, float %780)  ; Exp(value)
  %784 = call float @dx.op.unary.f32(i32 21, float %781)  ; Exp(value)
  br label %789

; <label>:785                                     ; preds = %747
  %786 = fmul fast float %689, %689
  %787 = fmul fast float %690, %690
  %788 = fmul fast float %691, %691
  br label %789

; <label>:789                                     ; preds = %785, %751
  %790 = phi float [ %784, %751 ], [ %788, %785 ]
  %791 = phi float [ %783, %751 ], [ %787, %785 ]
  %792 = phi float [ %782, %751 ], [ %786, %785 ]
  br i1 %708, label %793, label %827, !dx.controlflow.hints !15

; <label>:793                                     ; preds = %789
  %794 = call float @dx.op.unary.f32(i32 23, float %693)  ; Log(value)
  %795 = call float @dx.op.unary.f32(i32 23, float %694)  ; Log(value)
  %796 = call float @dx.op.unary.f32(i32 23, float %695)  ; Log(value)
  %797 = fmul fast float %794, 0x3F89F9B580000000
  %798 = fmul fast float %795, 0x3F89F9B580000000
  %799 = fmul fast float %796, 0x3F89F9B580000000
  %800 = call float @dx.op.unary.f32(i32 21, float %797)  ; Exp(value)
  %801 = call float @dx.op.unary.f32(i32 21, float %798)  ; Exp(value)
  %802 = call float @dx.op.unary.f32(i32 21, float %799)  ; Exp(value)
  %803 = fmul fast float %800, 1.868750e+01
  %804 = fmul fast float %801, 1.868750e+01
  %805 = fmul fast float %802, 1.868750e+01
  %806 = fsub fast float 0x4032DA0000000000, %803
  %807 = fsub fast float 0x4032DA0000000000, %804
  %808 = fsub fast float 0x4032DA0000000000, %805
  %809 = fadd fast float %800, -8.359375e-01
  %810 = fadd fast float %801, -8.359375e-01
  %811 = fadd fast float %802, -8.359375e-01
  %812 = call float @dx.op.binary.f32(i32 35, float %809, float 0.000000e+00)  ; FMax(a,b)
  %813 = call float @dx.op.binary.f32(i32 35, float %810, float 0.000000e+00)  ; FMax(a,b)
  %814 = call float @dx.op.binary.f32(i32 35, float %811, float 0.000000e+00)  ; FMax(a,b)
  %815 = fdiv fast float %812, %806
  %816 = fdiv fast float %813, %807
  %817 = fdiv fast float %814, %808
  %818 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  %819 = call float @dx.op.unary.f32(i32 23, float %816)  ; Log(value)
  %820 = call float @dx.op.unary.f32(i32 23, float %817)  ; Log(value)
  %821 = fmul fast float %818, 0x40191C0D60000000
  %822 = fmul fast float %819, 0x40191C0D60000000
  %823 = fmul fast float %820, 0x40191C0D60000000
  %824 = call float @dx.op.unary.f32(i32 21, float %821)  ; Exp(value)
  %825 = call float @dx.op.unary.f32(i32 21, float %822)  ; Exp(value)
  %826 = call float @dx.op.unary.f32(i32 21, float %823)  ; Exp(value)
  br label %831

; <label>:827                                     ; preds = %789
  %828 = fmul fast float %693, %693
  %829 = fmul fast float %694, %694
  %830 = fmul fast float %695, %695
  br label %831

; <label>:831                                     ; preds = %827, %793
  %832 = phi float [ %826, %793 ], [ %830, %827 ]
  %833 = phi float [ %825, %793 ], [ %829, %827 ]
  %834 = phi float [ %824, %793 ], [ %828, %827 ]
  br i1 %708, label %835, label %869, !dx.controlflow.hints !15

; <label>:835                                     ; preds = %831
  %836 = call float @dx.op.unary.f32(i32 23, float %697)  ; Log(value)
  %837 = call float @dx.op.unary.f32(i32 23, float %698)  ; Log(value)
  %838 = call float @dx.op.unary.f32(i32 23, float %699)  ; Log(value)
  %839 = fmul fast float %836, 0x3F89F9B580000000
  %840 = fmul fast float %837, 0x3F89F9B580000000
  %841 = fmul fast float %838, 0x3F89F9B580000000
  %842 = call float @dx.op.unary.f32(i32 21, float %839)  ; Exp(value)
  %843 = call float @dx.op.unary.f32(i32 21, float %840)  ; Exp(value)
  %844 = call float @dx.op.unary.f32(i32 21, float %841)  ; Exp(value)
  %845 = fmul fast float %842, 1.868750e+01
  %846 = fmul fast float %843, 1.868750e+01
  %847 = fmul fast float %844, 1.868750e+01
  %848 = fsub fast float 0x4032DA0000000000, %845
  %849 = fsub fast float 0x4032DA0000000000, %846
  %850 = fsub fast float 0x4032DA0000000000, %847
  %851 = fadd fast float %842, -8.359375e-01
  %852 = fadd fast float %843, -8.359375e-01
  %853 = fadd fast float %844, -8.359375e-01
  %854 = call float @dx.op.binary.f32(i32 35, float %851, float 0.000000e+00)  ; FMax(a,b)
  %855 = call float @dx.op.binary.f32(i32 35, float %852, float 0.000000e+00)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 35, float %853, float 0.000000e+00)  ; FMax(a,b)
  %857 = fdiv fast float %854, %848
  %858 = fdiv fast float %855, %849
  %859 = fdiv fast float %856, %850
  %860 = call float @dx.op.unary.f32(i32 23, float %857)  ; Log(value)
  %861 = call float @dx.op.unary.f32(i32 23, float %858)  ; Log(value)
  %862 = call float @dx.op.unary.f32(i32 23, float %859)  ; Log(value)
  %863 = fmul fast float %860, 0x40191C0D60000000
  %864 = fmul fast float %861, 0x40191C0D60000000
  %865 = fmul fast float %862, 0x40191C0D60000000
  %866 = call float @dx.op.unary.f32(i32 21, float %863)  ; Exp(value)
  %867 = call float @dx.op.unary.f32(i32 21, float %864)  ; Exp(value)
  %868 = call float @dx.op.unary.f32(i32 21, float %865)  ; Exp(value)
  br label %873

; <label>:869                                     ; preds = %831
  %870 = fmul fast float %697, %697
  %871 = fmul fast float %698, %698
  %872 = fmul fast float %699, %699
  br label %873

; <label>:873                                     ; preds = %869, %835
  %874 = phi float [ %868, %835 ], [ %872, %869 ]
  %875 = phi float [ %867, %835 ], [ %871, %869 ]
  %876 = phi float [ %866, %835 ], [ %870, %869 ]
  br i1 %708, label %877, label %911, !dx.controlflow.hints !15

; <label>:877                                     ; preds = %873
  %878 = call float @dx.op.unary.f32(i32 23, float %702)  ; Log(value)
  %879 = call float @dx.op.unary.f32(i32 23, float %703)  ; Log(value)
  %880 = call float @dx.op.unary.f32(i32 23, float %704)  ; Log(value)
  %881 = fmul fast float %878, 0x3F89F9B580000000
  %882 = fmul fast float %879, 0x3F89F9B580000000
  %883 = fmul fast float %880, 0x3F89F9B580000000
  %884 = call float @dx.op.unary.f32(i32 21, float %881)  ; Exp(value)
  %885 = call float @dx.op.unary.f32(i32 21, float %882)  ; Exp(value)
  %886 = call float @dx.op.unary.f32(i32 21, float %883)  ; Exp(value)
  %887 = fmul fast float %884, 1.868750e+01
  %888 = fmul fast float %885, 1.868750e+01
  %889 = fmul fast float %886, 1.868750e+01
  %890 = fsub fast float 0x4032DA0000000000, %887
  %891 = fsub fast float 0x4032DA0000000000, %888
  %892 = fsub fast float 0x4032DA0000000000, %889
  %893 = fadd fast float %884, -8.359375e-01
  %894 = fadd fast float %885, -8.359375e-01
  %895 = fadd fast float %886, -8.359375e-01
  %896 = call float @dx.op.binary.f32(i32 35, float %893, float 0.000000e+00)  ; FMax(a,b)
  %897 = call float @dx.op.binary.f32(i32 35, float %894, float 0.000000e+00)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 35, float %895, float 0.000000e+00)  ; FMax(a,b)
  %899 = fdiv fast float %896, %890
  %900 = fdiv fast float %897, %891
  %901 = fdiv fast float %898, %892
  %902 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %903 = call float @dx.op.unary.f32(i32 23, float %900)  ; Log(value)
  %904 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  %905 = fmul fast float %902, 0x40191C0D60000000
  %906 = fmul fast float %903, 0x40191C0D60000000
  %907 = fmul fast float %904, 0x40191C0D60000000
  %908 = call float @dx.op.unary.f32(i32 21, float %905)  ; Exp(value)
  %909 = call float @dx.op.unary.f32(i32 21, float %906)  ; Exp(value)
  %910 = call float @dx.op.unary.f32(i32 21, float %907)  ; Exp(value)
  br label %915

; <label>:911                                     ; preds = %873
  %912 = fmul fast float %702, %702
  %913 = fmul fast float %703, %703
  %914 = fmul fast float %704, %704
  br label %915

; <label>:915                                     ; preds = %911, %877
  %916 = phi float [ %910, %877 ], [ %914, %911 ]
  %917 = phi float [ %909, %877 ], [ %913, %911 ]
  %918 = phi float [ %908, %877 ], [ %912, %911 ]
  %919 = call float @dx.op.binary.f32(i32 36, float %833, float %875)  ; FMin(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float %791, float %919)  ; FMin(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float %749, float %917)  ; FMin(a,b)
  %922 = call float @dx.op.binary.f32(i32 36, float %920, float %921)  ; FMin(a,b)
  %923 = call float @dx.op.binary.f32(i32 35, float %833, float %875)  ; FMax(a,b)
  %924 = call float @dx.op.binary.f32(i32 35, float %791, float %923)  ; FMax(a,b)
  %925 = call float @dx.op.binary.f32(i32 35, float %749, float %917)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %924, float %925)  ; FMax(a,b)
  %927 = bitcast float %926 to i32
  %928 = sub i32 2129690299, %927
  %929 = bitcast i32 %928 to float
  %930 = fsub fast float 1.000000e+00, %926
  %931 = call float @dx.op.binary.f32(i32 36, float %922, float %930)  ; FMin(a,b)
  %932 = fmul fast float %929, %931
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = bitcast float %933 to i32
  %935 = lshr i32 %934, 1
  %936 = add nuw i32 %935, 532432441
  %937 = bitcast i32 %936 to float
  %938 = bitcast i32 %682 to float
  %939 = fmul fast float %937, %938
  %940 = fmul fast float %939, 4.000000e+00
  %941 = fadd fast float %940, 1.000000e+00
  %942 = bitcast float %941 to i32
  %943 = sub i32 2129764351, %942
  %944 = bitcast i32 %943 to float
  %945 = fmul fast float %944, %941
  %946 = fsub fast float 2.000000e+00, %945
  %947 = fmul fast float %946, %944
  %948 = fadd fast float %792, %750
  %949 = fadd fast float %948, %876
  %950 = fadd fast float %949, %918
  %951 = fmul fast float %939, %950
  %952 = fadd fast float %951, %834
  %953 = fmul fast float %947, %952
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fadd fast float %791, %749
  %956 = fadd fast float %955, %875
  %957 = fadd fast float %956, %917
  %958 = fmul fast float %939, %957
  %959 = fadd fast float %958, %833
  %960 = fmul fast float %947, %959
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  %962 = fadd fast float %790, %748
  %963 = fadd fast float %962, %874
  %964 = fadd fast float %963, %916
  %965 = fmul fast float %939, %964
  %966 = fadd fast float %965, %832
  %967 = fmul fast float %947, %966
  %968 = call float @dx.op.unary.f32(i32 7, float %967)  ; Saturate(value)
  br i1 %708, label %969, label %1003, !dx.controlflow.hints !16

; <label>:969                                     ; preds = %915
  %970 = call float @dx.op.unary.f32(i32 23, float %954)  ; Log(value)
  %971 = call float @dx.op.unary.f32(i32 23, float %961)  ; Log(value)
  %972 = call float @dx.op.unary.f32(i32 23, float %968)  ; Log(value)
  %973 = fmul fast float %970, 0x3FC4640000000000
  %974 = fmul fast float %971, 0x3FC4640000000000
  %975 = fmul fast float %972, 0x3FC4640000000000
  %976 = call float @dx.op.unary.f32(i32 21, float %973)  ; Exp(value)
  %977 = call float @dx.op.unary.f32(i32 21, float %974)  ; Exp(value)
  %978 = call float @dx.op.unary.f32(i32 21, float %975)  ; Exp(value)
  %979 = fmul fast float %976, 0x4032DA0000000000
  %980 = fmul fast float %977, 0x4032DA0000000000
  %981 = fmul fast float %978, 0x4032DA0000000000
  %982 = fadd fast float %979, 8.359375e-01
  %983 = fadd fast float %980, 8.359375e-01
  %984 = fadd fast float %981, 8.359375e-01
  %985 = fmul fast float %976, 1.868750e+01
  %986 = fmul fast float %977, 1.868750e+01
  %987 = fmul fast float %978, 1.868750e+01
  %988 = fadd fast float %985, 1.000000e+00
  %989 = fadd fast float %986, 1.000000e+00
  %990 = fadd fast float %987, 1.000000e+00
  %991 = fdiv fast float %982, %988
  %992 = fdiv fast float %983, %989
  %993 = fdiv fast float %984, %990
  %994 = call float @dx.op.unary.f32(i32 23, float %991)  ; Log(value)
  %995 = call float @dx.op.unary.f32(i32 23, float %992)  ; Log(value)
  %996 = call float @dx.op.unary.f32(i32 23, float %993)  ; Log(value)
  %997 = fmul fast float %994, 7.884375e+01
  %998 = fmul fast float %995, 7.884375e+01
  %999 = fmul fast float %996, 7.884375e+01
  %1000 = call float @dx.op.unary.f32(i32 21, float %997)  ; Exp(value)
  %1001 = call float @dx.op.unary.f32(i32 21, float %998)  ; Exp(value)
  %1002 = call float @dx.op.unary.f32(i32 21, float %999)  ; Exp(value)
  br label %1007

; <label>:1003                                    ; preds = %915
  %1004 = call float @dx.op.unary.f32(i32 24, float %954)  ; Sqrt(value)
  %1005 = call float @dx.op.unary.f32(i32 24, float %961)  ; Sqrt(value)
  %1006 = call float @dx.op.unary.f32(i32 24, float %968)  ; Sqrt(value)
  br label %1007

; <label>:1007                                    ; preds = %1003, %969
  %1008 = phi float [ %1000, %969 ], [ %1004, %1003 ]
  %1009 = phi float [ %1001, %969 ], [ %1005, %1003 ]
  %1010 = phi float [ %1002, %969 ], [ %1006, %1003 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %349, i32 %680, i32 undef, float %1008, float %1009, float %1010, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.i32 %1011, 0
  %1013 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %683, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %24, i32 %680, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %680, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %680, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %700, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.i32 %1033, 0
  %1035 = add i32 %1034, -3
  %1036 = icmp ult i32 %1035, 2
  br i1 %1036, label %1037, label %1071, !dx.controlflow.hints !15

; <label>:1037                                    ; preds = %1007
  %1038 = call float @dx.op.unary.f32(i32 23, float %1014)  ; Log(value)
  %1039 = call float @dx.op.unary.f32(i32 23, float %1015)  ; Log(value)
  %1040 = call float @dx.op.unary.f32(i32 23, float %1016)  ; Log(value)
  %1041 = fmul fast float %1038, 0x3F89F9B580000000
  %1042 = fmul fast float %1039, 0x3F89F9B580000000
  %1043 = fmul fast float %1040, 0x3F89F9B580000000
  %1044 = call float @dx.op.unary.f32(i32 21, float %1041)  ; Exp(value)
  %1045 = call float @dx.op.unary.f32(i32 21, float %1042)  ; Exp(value)
  %1046 = call float @dx.op.unary.f32(i32 21, float %1043)  ; Exp(value)
  %1047 = fmul fast float %1044, 1.868750e+01
  %1048 = fmul fast float %1045, 1.868750e+01
  %1049 = fmul fast float %1046, 1.868750e+01
  %1050 = fsub fast float 0x4032DA0000000000, %1047
  %1051 = fsub fast float 0x4032DA0000000000, %1048
  %1052 = fsub fast float 0x4032DA0000000000, %1049
  %1053 = fadd fast float %1044, -8.359375e-01
  %1054 = fadd fast float %1045, -8.359375e-01
  %1055 = fadd fast float %1046, -8.359375e-01
  %1056 = call float @dx.op.binary.f32(i32 35, float %1053, float 0.000000e+00)  ; FMax(a,b)
  %1057 = call float @dx.op.binary.f32(i32 35, float %1054, float 0.000000e+00)  ; FMax(a,b)
  %1058 = call float @dx.op.binary.f32(i32 35, float %1055, float 0.000000e+00)  ; FMax(a,b)
  %1059 = fdiv fast float %1056, %1050
  %1060 = fdiv fast float %1057, %1051
  %1061 = fdiv fast float %1058, %1052
  %1062 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1063 = call float @dx.op.unary.f32(i32 23, float %1060)  ; Log(value)
  %1064 = call float @dx.op.unary.f32(i32 23, float %1061)  ; Log(value)
  %1065 = fmul fast float %1062, 0x40191C0D60000000
  %1066 = fmul fast float %1063, 0x40191C0D60000000
  %1067 = fmul fast float %1064, 0x40191C0D60000000
  %1068 = call float @dx.op.unary.f32(i32 21, float %1065)  ; Exp(value)
  %1069 = call float @dx.op.unary.f32(i32 21, float %1066)  ; Exp(value)
  %1070 = call float @dx.op.unary.f32(i32 21, float %1067)  ; Exp(value)
  br label %1075

; <label>:1071                                    ; preds = %1007
  %1072 = fmul fast float %1014, %1014
  %1073 = fmul fast float %1015, %1015
  %1074 = fmul fast float %1016, %1016
  br label %1075

; <label>:1075                                    ; preds = %1071, %1037
  %1076 = phi float [ %1070, %1037 ], [ %1074, %1071 ]
  %1077 = phi float [ %1069, %1037 ], [ %1073, %1071 ]
  %1078 = phi float [ %1068, %1037 ], [ %1072, %1071 ]
  br i1 %1036, label %1079, label %1113, !dx.controlflow.hints !15

; <label>:1079                                    ; preds = %1075
  %1080 = call float @dx.op.unary.f32(i32 23, float %1018)  ; Log(value)
  %1081 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1082 = call float @dx.op.unary.f32(i32 23, float %1020)  ; Log(value)
  %1083 = fmul fast float %1080, 0x3F89F9B580000000
  %1084 = fmul fast float %1081, 0x3F89F9B580000000
  %1085 = fmul fast float %1082, 0x3F89F9B580000000
  %1086 = call float @dx.op.unary.f32(i32 21, float %1083)  ; Exp(value)
  %1087 = call float @dx.op.unary.f32(i32 21, float %1084)  ; Exp(value)
  %1088 = call float @dx.op.unary.f32(i32 21, float %1085)  ; Exp(value)
  %1089 = fmul fast float %1086, 1.868750e+01
  %1090 = fmul fast float %1087, 1.868750e+01
  %1091 = fmul fast float %1088, 1.868750e+01
  %1092 = fsub fast float 0x4032DA0000000000, %1089
  %1093 = fsub fast float 0x4032DA0000000000, %1090
  %1094 = fsub fast float 0x4032DA0000000000, %1091
  %1095 = fadd fast float %1086, -8.359375e-01
  %1096 = fadd fast float %1087, -8.359375e-01
  %1097 = fadd fast float %1088, -8.359375e-01
  %1098 = call float @dx.op.binary.f32(i32 35, float %1095, float 0.000000e+00)  ; FMax(a,b)
  %1099 = call float @dx.op.binary.f32(i32 35, float %1096, float 0.000000e+00)  ; FMax(a,b)
  %1100 = call float @dx.op.binary.f32(i32 35, float %1097, float 0.000000e+00)  ; FMax(a,b)
  %1101 = fdiv fast float %1098, %1092
  %1102 = fdiv fast float %1099, %1093
  %1103 = fdiv fast float %1100, %1094
  %1104 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1105 = call float @dx.op.unary.f32(i32 23, float %1102)  ; Log(value)
  %1106 = call float @dx.op.unary.f32(i32 23, float %1103)  ; Log(value)
  %1107 = fmul fast float %1104, 0x40191C0D60000000
  %1108 = fmul fast float %1105, 0x40191C0D60000000
  %1109 = fmul fast float %1106, 0x40191C0D60000000
  %1110 = call float @dx.op.unary.f32(i32 21, float %1107)  ; Exp(value)
  %1111 = call float @dx.op.unary.f32(i32 21, float %1108)  ; Exp(value)
  %1112 = call float @dx.op.unary.f32(i32 21, float %1109)  ; Exp(value)
  br label %1117

; <label>:1113                                    ; preds = %1075
  %1114 = fmul fast float %1018, %1018
  %1115 = fmul fast float %1019, %1019
  %1116 = fmul fast float %1020, %1020
  br label %1117

; <label>:1117                                    ; preds = %1113, %1079
  %1118 = phi float [ %1112, %1079 ], [ %1116, %1113 ]
  %1119 = phi float [ %1111, %1079 ], [ %1115, %1113 ]
  %1120 = phi float [ %1110, %1079 ], [ %1114, %1113 ]
  br i1 %1036, label %1121, label %1155, !dx.controlflow.hints !15

; <label>:1121                                    ; preds = %1117
  %1122 = call float @dx.op.unary.f32(i32 23, float %1022)  ; Log(value)
  %1123 = call float @dx.op.unary.f32(i32 23, float %1023)  ; Log(value)
  %1124 = call float @dx.op.unary.f32(i32 23, float %1024)  ; Log(value)
  %1125 = fmul fast float %1122, 0x3F89F9B580000000
  %1126 = fmul fast float %1123, 0x3F89F9B580000000
  %1127 = fmul fast float %1124, 0x3F89F9B580000000
  %1128 = call float @dx.op.unary.f32(i32 21, float %1125)  ; Exp(value)
  %1129 = call float @dx.op.unary.f32(i32 21, float %1126)  ; Exp(value)
  %1130 = call float @dx.op.unary.f32(i32 21, float %1127)  ; Exp(value)
  %1131 = fmul fast float %1128, 1.868750e+01
  %1132 = fmul fast float %1129, 1.868750e+01
  %1133 = fmul fast float %1130, 1.868750e+01
  %1134 = fsub fast float 0x4032DA0000000000, %1131
  %1135 = fsub fast float 0x4032DA0000000000, %1132
  %1136 = fsub fast float 0x4032DA0000000000, %1133
  %1137 = fadd fast float %1128, -8.359375e-01
  %1138 = fadd fast float %1129, -8.359375e-01
  %1139 = fadd fast float %1130, -8.359375e-01
  %1140 = call float @dx.op.binary.f32(i32 35, float %1137, float 0.000000e+00)  ; FMax(a,b)
  %1141 = call float @dx.op.binary.f32(i32 35, float %1138, float 0.000000e+00)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1139, float 0.000000e+00)  ; FMax(a,b)
  %1143 = fdiv fast float %1140, %1134
  %1144 = fdiv fast float %1141, %1135
  %1145 = fdiv fast float %1142, %1136
  %1146 = call float @dx.op.unary.f32(i32 23, float %1143)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1148 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1149 = fmul fast float %1146, 0x40191C0D60000000
  %1150 = fmul fast float %1147, 0x40191C0D60000000
  %1151 = fmul fast float %1148, 0x40191C0D60000000
  %1152 = call float @dx.op.unary.f32(i32 21, float %1149)  ; Exp(value)
  %1153 = call float @dx.op.unary.f32(i32 21, float %1150)  ; Exp(value)
  %1154 = call float @dx.op.unary.f32(i32 21, float %1151)  ; Exp(value)
  br label %1159

; <label>:1155                                    ; preds = %1117
  %1156 = fmul fast float %1022, %1022
  %1157 = fmul fast float %1023, %1023
  %1158 = fmul fast float %1024, %1024
  br label %1159

; <label>:1159                                    ; preds = %1155, %1121
  %1160 = phi float [ %1154, %1121 ], [ %1158, %1155 ]
  %1161 = phi float [ %1153, %1121 ], [ %1157, %1155 ]
  %1162 = phi float [ %1152, %1121 ], [ %1156, %1155 ]
  br i1 %1036, label %1163, label %1197, !dx.controlflow.hints !15

; <label>:1163                                    ; preds = %1159
  %1164 = call float @dx.op.unary.f32(i32 23, float %1026)  ; Log(value)
  %1165 = call float @dx.op.unary.f32(i32 23, float %1027)  ; Log(value)
  %1166 = call float @dx.op.unary.f32(i32 23, float %1028)  ; Log(value)
  %1167 = fmul fast float %1164, 0x3F89F9B580000000
  %1168 = fmul fast float %1165, 0x3F89F9B580000000
  %1169 = fmul fast float %1166, 0x3F89F9B580000000
  %1170 = call float @dx.op.unary.f32(i32 21, float %1167)  ; Exp(value)
  %1171 = call float @dx.op.unary.f32(i32 21, float %1168)  ; Exp(value)
  %1172 = call float @dx.op.unary.f32(i32 21, float %1169)  ; Exp(value)
  %1173 = fmul fast float %1170, 1.868750e+01
  %1174 = fmul fast float %1171, 1.868750e+01
  %1175 = fmul fast float %1172, 1.868750e+01
  %1176 = fsub fast float 0x4032DA0000000000, %1173
  %1177 = fsub fast float 0x4032DA0000000000, %1174
  %1178 = fsub fast float 0x4032DA0000000000, %1175
  %1179 = fadd fast float %1170, -8.359375e-01
  %1180 = fadd fast float %1171, -8.359375e-01
  %1181 = fadd fast float %1172, -8.359375e-01
  %1182 = call float @dx.op.binary.f32(i32 35, float %1179, float 0.000000e+00)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 35, float %1180, float 0.000000e+00)  ; FMax(a,b)
  %1184 = call float @dx.op.binary.f32(i32 35, float %1181, float 0.000000e+00)  ; FMax(a,b)
  %1185 = fdiv fast float %1182, %1176
  %1186 = fdiv fast float %1183, %1177
  %1187 = fdiv fast float %1184, %1178
  %1188 = call float @dx.op.unary.f32(i32 23, float %1185)  ; Log(value)
  %1189 = call float @dx.op.unary.f32(i32 23, float %1186)  ; Log(value)
  %1190 = call float @dx.op.unary.f32(i32 23, float %1187)  ; Log(value)
  %1191 = fmul fast float %1188, 0x40191C0D60000000
  %1192 = fmul fast float %1189, 0x40191C0D60000000
  %1193 = fmul fast float %1190, 0x40191C0D60000000
  %1194 = call float @dx.op.unary.f32(i32 21, float %1191)  ; Exp(value)
  %1195 = call float @dx.op.unary.f32(i32 21, float %1192)  ; Exp(value)
  %1196 = call float @dx.op.unary.f32(i32 21, float %1193)  ; Exp(value)
  br label %1201

; <label>:1197                                    ; preds = %1159
  %1198 = fmul fast float %1026, %1026
  %1199 = fmul fast float %1027, %1027
  %1200 = fmul fast float %1028, %1028
  br label %1201

; <label>:1201                                    ; preds = %1197, %1163
  %1202 = phi float [ %1196, %1163 ], [ %1200, %1197 ]
  %1203 = phi float [ %1195, %1163 ], [ %1199, %1197 ]
  %1204 = phi float [ %1194, %1163 ], [ %1198, %1197 ]
  br i1 %1036, label %1205, label %1239, !dx.controlflow.hints !15

; <label>:1205                                    ; preds = %1201
  %1206 = call float @dx.op.unary.f32(i32 23, float %1030)  ; Log(value)
  %1207 = call float @dx.op.unary.f32(i32 23, float %1031)  ; Log(value)
  %1208 = call float @dx.op.unary.f32(i32 23, float %1032)  ; Log(value)
  %1209 = fmul fast float %1206, 0x3F89F9B580000000
  %1210 = fmul fast float %1207, 0x3F89F9B580000000
  %1211 = fmul fast float %1208, 0x3F89F9B580000000
  %1212 = call float @dx.op.unary.f32(i32 21, float %1209)  ; Exp(value)
  %1213 = call float @dx.op.unary.f32(i32 21, float %1210)  ; Exp(value)
  %1214 = call float @dx.op.unary.f32(i32 21, float %1211)  ; Exp(value)
  %1215 = fmul fast float %1212, 1.868750e+01
  %1216 = fmul fast float %1213, 1.868750e+01
  %1217 = fmul fast float %1214, 1.868750e+01
  %1218 = fsub fast float 0x4032DA0000000000, %1215
  %1219 = fsub fast float 0x4032DA0000000000, %1216
  %1220 = fsub fast float 0x4032DA0000000000, %1217
  %1221 = fadd fast float %1212, -8.359375e-01
  %1222 = fadd fast float %1213, -8.359375e-01
  %1223 = fadd fast float %1214, -8.359375e-01
  %1224 = call float @dx.op.binary.f32(i32 35, float %1221, float 0.000000e+00)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 35, float %1222, float 0.000000e+00)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 35, float %1223, float 0.000000e+00)  ; FMax(a,b)
  %1227 = fdiv fast float %1224, %1218
  %1228 = fdiv fast float %1225, %1219
  %1229 = fdiv fast float %1226, %1220
  %1230 = call float @dx.op.unary.f32(i32 23, float %1227)  ; Log(value)
  %1231 = call float @dx.op.unary.f32(i32 23, float %1228)  ; Log(value)
  %1232 = call float @dx.op.unary.f32(i32 23, float %1229)  ; Log(value)
  %1233 = fmul fast float %1230, 0x40191C0D60000000
  %1234 = fmul fast float %1231, 0x40191C0D60000000
  %1235 = fmul fast float %1232, 0x40191C0D60000000
  %1236 = call float @dx.op.unary.f32(i32 21, float %1233)  ; Exp(value)
  %1237 = call float @dx.op.unary.f32(i32 21, float %1234)  ; Exp(value)
  %1238 = call float @dx.op.unary.f32(i32 21, float %1235)  ; Exp(value)
  br label %1243

; <label>:1239                                    ; preds = %1201
  %1240 = fmul fast float %1030, %1030
  %1241 = fmul fast float %1031, %1031
  %1242 = fmul fast float %1032, %1032
  br label %1243

; <label>:1243                                    ; preds = %1239, %1205
  %1244 = phi float [ %1238, %1205 ], [ %1242, %1239 ]
  %1245 = phi float [ %1237, %1205 ], [ %1241, %1239 ]
  %1246 = phi float [ %1236, %1205 ], [ %1240, %1239 ]
  %1247 = call float @dx.op.binary.f32(i32 36, float %1161, float %1203)  ; FMin(a,b)
  %1248 = call float @dx.op.binary.f32(i32 36, float %1119, float %1247)  ; FMin(a,b)
  %1249 = call float @dx.op.binary.f32(i32 36, float %1077, float %1245)  ; FMin(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1248, float %1249)  ; FMin(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1161, float %1203)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1119, float %1251)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 35, float %1077, float %1245)  ; FMax(a,b)
  %1254 = call float @dx.op.binary.f32(i32 35, float %1252, float %1253)  ; FMax(a,b)
  %1255 = bitcast float %1254 to i32
  %1256 = sub i32 2129690299, %1255
  %1257 = bitcast i32 %1256 to float
  %1258 = fsub fast float 1.000000e+00, %1254
  %1259 = call float @dx.op.binary.f32(i32 36, float %1250, float %1258)  ; FMin(a,b)
  %1260 = fmul fast float %1257, %1259
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = bitcast float %1261 to i32
  %1263 = lshr i32 %1262, 1
  %1264 = add nuw i32 %1263, 532432441
  %1265 = bitcast i32 %1264 to float
  %1266 = bitcast i32 %1012 to float
  %1267 = fmul fast float %1265, %1266
  %1268 = fmul fast float %1267, 4.000000e+00
  %1269 = fadd fast float %1268, 1.000000e+00
  %1270 = bitcast float %1269 to i32
  %1271 = sub i32 2129764351, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1272, %1269
  %1274 = fsub fast float 2.000000e+00, %1273
  %1275 = fmul fast float %1274, %1272
  %1276 = fadd fast float %1120, %1078
  %1277 = fadd fast float %1276, %1204
  %1278 = fadd fast float %1277, %1246
  %1279 = fmul fast float %1267, %1278
  %1280 = fadd fast float %1279, %1162
  %1281 = fmul fast float %1275, %1280
  %1282 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1283 = fadd fast float %1119, %1077
  %1284 = fadd fast float %1283, %1203
  %1285 = fadd fast float %1284, %1245
  %1286 = fmul fast float %1267, %1285
  %1287 = fadd fast float %1286, %1161
  %1288 = fmul fast float %1275, %1287
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = fadd fast float %1118, %1076
  %1291 = fadd fast float %1290, %1202
  %1292 = fadd fast float %1291, %1244
  %1293 = fmul fast float %1267, %1292
  %1294 = fadd fast float %1293, %1160
  %1295 = fmul fast float %1275, %1294
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  br i1 %1036, label %1297, label %1331, !dx.controlflow.hints !16

; <label>:1297                                    ; preds = %1243
  %1298 = call float @dx.op.unary.f32(i32 23, float %1282)  ; Log(value)
  %1299 = call float @dx.op.unary.f32(i32 23, float %1289)  ; Log(value)
  %1300 = call float @dx.op.unary.f32(i32 23, float %1296)  ; Log(value)
  %1301 = fmul fast float %1298, 0x3FC4640000000000
  %1302 = fmul fast float %1299, 0x3FC4640000000000
  %1303 = fmul fast float %1300, 0x3FC4640000000000
  %1304 = call float @dx.op.unary.f32(i32 21, float %1301)  ; Exp(value)
  %1305 = call float @dx.op.unary.f32(i32 21, float %1302)  ; Exp(value)
  %1306 = call float @dx.op.unary.f32(i32 21, float %1303)  ; Exp(value)
  %1307 = fmul fast float %1304, 0x4032DA0000000000
  %1308 = fmul fast float %1305, 0x4032DA0000000000
  %1309 = fmul fast float %1306, 0x4032DA0000000000
  %1310 = fadd fast float %1307, 8.359375e-01
  %1311 = fadd fast float %1308, 8.359375e-01
  %1312 = fadd fast float %1309, 8.359375e-01
  %1313 = fmul fast float %1304, 1.868750e+01
  %1314 = fmul fast float %1305, 1.868750e+01
  %1315 = fmul fast float %1306, 1.868750e+01
  %1316 = fadd fast float %1313, 1.000000e+00
  %1317 = fadd fast float %1314, 1.000000e+00
  %1318 = fadd fast float %1315, 1.000000e+00
  %1319 = fdiv fast float %1310, %1316
  %1320 = fdiv fast float %1311, %1317
  %1321 = fdiv fast float %1312, %1318
  %1322 = call float @dx.op.unary.f32(i32 23, float %1319)  ; Log(value)
  %1323 = call float @dx.op.unary.f32(i32 23, float %1320)  ; Log(value)
  %1324 = call float @dx.op.unary.f32(i32 23, float %1321)  ; Log(value)
  %1325 = fmul fast float %1322, 7.884375e+01
  %1326 = fmul fast float %1323, 7.884375e+01
  %1327 = fmul fast float %1324, 7.884375e+01
  %1328 = call float @dx.op.unary.f32(i32 21, float %1325)  ; Exp(value)
  %1329 = call float @dx.op.unary.f32(i32 21, float %1326)  ; Exp(value)
  %1330 = call float @dx.op.unary.f32(i32 21, float %1327)  ; Exp(value)
  br label %1335

; <label>:1331                                    ; preds = %1243
  %1332 = call float @dx.op.unary.f32(i32 24, float %1282)  ; Sqrt(value)
  %1333 = call float @dx.op.unary.f32(i32 24, float %1289)  ; Sqrt(value)
  %1334 = call float @dx.op.unary.f32(i32 24, float %1296)  ; Sqrt(value)
  br label %1335

; <label>:1335                                    ; preds = %1331, %1297
  %1336 = phi float [ %1328, %1297 ], [ %1332, %1331 ]
  %1337 = phi float [ %1329, %1297 ], [ %1333, %1331 ]
  %1338 = phi float [ %1330, %1297 ], [ %1334, %1331 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %680, i32 undef, float %1336, float %1337, float %1338, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!12 = !{void ()* @cs_cas_sharpen_only, !"cs_cas_sharpen_only", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

