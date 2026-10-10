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
; shader hash: 4d17c2151a791d14ed4b2bbeede20819
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

define void @cs_cas_upscaling() {
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
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %22 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %23 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %24 = uitofp i32 %15 to float
  %25 = uitofp i32 %16 to float
  %26 = bitcast i32 %20 to float
  %27 = bitcast i32 %21 to float
  %28 = fmul fast float %26, %24
  %29 = fmul fast float %27, %25
  %30 = bitcast i32 %22 to float
  %31 = bitcast i32 %23 to float
  %32 = fadd fast float %28, %30
  %33 = fadd fast float %29, %31
  %34 = call float @dx.op.unary.f32(i32 27, float %32)  ; Round_ni(value)
  %35 = call float @dx.op.unary.f32(i32 27, float %33)  ; Round_ni(value)
  %36 = fsub fast float %32, %34
  %37 = fsub fast float %33, %35
  %38 = fptosi float %34 to i32
  %39 = fptosi float %35 to i32
  %40 = add i32 %39, -1
  %41 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = add i32 %38, -1
  %46 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %45, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = extractvalue %dx.types.ResRet.f32 %46, 1
  %49 = extractvalue %dx.types.ResRet.f32 %46, 2
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = add i32 %38, 1
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %54, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %54, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = add i32 %38, 2
  %64 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %63, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = add i32 %39, 1
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %45, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  %75 = extractvalue %dx.types.ResRet.f32 %73, 1
  %76 = extractvalue %dx.types.ResRet.f32 %73, 2
  %77 = add i32 %39, 2
  %78 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = extractvalue %dx.types.ResRet.f32 %78, 1
  %81 = extractvalue %dx.types.ResRet.f32 %78, 2
  %82 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %54, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %63, i32 %68, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %54, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = extractvalue %dx.types.ResRet.f32 %90, 1
  %93 = extractvalue %dx.types.ResRet.f32 %90, 2
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 0
  %96 = add i32 %95, -3
  %97 = icmp ult i32 %96, 2
  br i1 %97, label %98, label %132, !dx.controlflow.hints !15

; <label>:98                                      ; preds = %0
  %99 = call float @dx.op.unary.f32(i32 23, float %42)  ; Log(value)
  %100 = call float @dx.op.unary.f32(i32 23, float %43)  ; Log(value)
  %101 = call float @dx.op.unary.f32(i32 23, float %44)  ; Log(value)
  %102 = fmul fast float %99, 0x3F89F9B580000000
  %103 = fmul fast float %100, 0x3F89F9B580000000
  %104 = fmul fast float %101, 0x3F89F9B580000000
  %105 = call float @dx.op.unary.f32(i32 21, float %102)  ; Exp(value)
  %106 = call float @dx.op.unary.f32(i32 21, float %103)  ; Exp(value)
  %107 = call float @dx.op.unary.f32(i32 21, float %104)  ; Exp(value)
  %108 = fmul fast float %105, 1.868750e+01
  %109 = fmul fast float %106, 1.868750e+01
  %110 = fmul fast float %107, 1.868750e+01
  %111 = fsub fast float 0x4032DA0000000000, %108
  %112 = fsub fast float 0x4032DA0000000000, %109
  %113 = fsub fast float 0x4032DA0000000000, %110
  %114 = fadd fast float %105, -8.359375e-01
  %115 = fadd fast float %106, -8.359375e-01
  %116 = fadd fast float %107, -8.359375e-01
  %117 = call float @dx.op.binary.f32(i32 35, float %114, float 0.000000e+00)  ; FMax(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %115, float 0.000000e+00)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 35, float %116, float 0.000000e+00)  ; FMax(a,b)
  %120 = fdiv fast float %117, %111
  %121 = fdiv fast float %118, %112
  %122 = fdiv fast float %119, %113
  %123 = call float @dx.op.unary.f32(i32 23, float %120)  ; Log(value)
  %124 = call float @dx.op.unary.f32(i32 23, float %121)  ; Log(value)
  %125 = call float @dx.op.unary.f32(i32 23, float %122)  ; Log(value)
  %126 = fmul fast float %123, 0x40191C0D60000000
  %127 = fmul fast float %124, 0x40191C0D60000000
  %128 = fmul fast float %125, 0x40191C0D60000000
  %129 = call float @dx.op.unary.f32(i32 21, float %126)  ; Exp(value)
  %130 = call float @dx.op.unary.f32(i32 21, float %127)  ; Exp(value)
  %131 = call float @dx.op.unary.f32(i32 21, float %128)  ; Exp(value)
  br label %136

; <label>:132                                     ; preds = %0
  %133 = fmul fast float %42, %42
  %134 = fmul fast float %43, %43
  %135 = fmul fast float %44, %44
  br label %136

; <label>:136                                     ; preds = %132, %98
  %137 = phi float [ %131, %98 ], [ %135, %132 ]
  %138 = phi float [ %130, %98 ], [ %134, %132 ]
  %139 = phi float [ %129, %98 ], [ %133, %132 ]
  br i1 %97, label %140, label %174, !dx.controlflow.hints !15

; <label>:140                                     ; preds = %136
  %141 = call float @dx.op.unary.f32(i32 23, float %56)  ; Log(value)
  %142 = call float @dx.op.unary.f32(i32 23, float %57)  ; Log(value)
  %143 = call float @dx.op.unary.f32(i32 23, float %58)  ; Log(value)
  %144 = fmul fast float %141, 0x3F89F9B580000000
  %145 = fmul fast float %142, 0x3F89F9B580000000
  %146 = fmul fast float %143, 0x3F89F9B580000000
  %147 = call float @dx.op.unary.f32(i32 21, float %144)  ; Exp(value)
  %148 = call float @dx.op.unary.f32(i32 21, float %145)  ; Exp(value)
  %149 = call float @dx.op.unary.f32(i32 21, float %146)  ; Exp(value)
  %150 = fmul fast float %147, 1.868750e+01
  %151 = fmul fast float %148, 1.868750e+01
  %152 = fmul fast float %149, 1.868750e+01
  %153 = fsub fast float 0x4032DA0000000000, %150
  %154 = fsub fast float 0x4032DA0000000000, %151
  %155 = fsub fast float 0x4032DA0000000000, %152
  %156 = fadd fast float %147, -8.359375e-01
  %157 = fadd fast float %148, -8.359375e-01
  %158 = fadd fast float %149, -8.359375e-01
  %159 = call float @dx.op.binary.f32(i32 35, float %156, float 0.000000e+00)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %157, float 0.000000e+00)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %158, float 0.000000e+00)  ; FMax(a,b)
  %162 = fdiv fast float %159, %153
  %163 = fdiv fast float %160, %154
  %164 = fdiv fast float %161, %155
  %165 = call float @dx.op.unary.f32(i32 23, float %162)  ; Log(value)
  %166 = call float @dx.op.unary.f32(i32 23, float %163)  ; Log(value)
  %167 = call float @dx.op.unary.f32(i32 23, float %164)  ; Log(value)
  %168 = fmul fast float %165, 0x40191C0D60000000
  %169 = fmul fast float %166, 0x40191C0D60000000
  %170 = fmul fast float %167, 0x40191C0D60000000
  %171 = call float @dx.op.unary.f32(i32 21, float %168)  ; Exp(value)
  %172 = call float @dx.op.unary.f32(i32 21, float %169)  ; Exp(value)
  %173 = call float @dx.op.unary.f32(i32 21, float %170)  ; Exp(value)
  br label %178

; <label>:174                                     ; preds = %136
  %175 = fmul fast float %56, %56
  %176 = fmul fast float %57, %57
  %177 = fmul fast float %58, %58
  br label %178

; <label>:178                                     ; preds = %174, %140
  %179 = phi float [ %173, %140 ], [ %177, %174 ]
  %180 = phi float [ %172, %140 ], [ %176, %174 ]
  %181 = phi float [ %171, %140 ], [ %175, %174 ]
  br i1 %97, label %182, label %216, !dx.controlflow.hints !15

; <label>:182                                     ; preds = %178
  %183 = call float @dx.op.unary.f32(i32 23, float %47)  ; Log(value)
  %184 = call float @dx.op.unary.f32(i32 23, float %48)  ; Log(value)
  %185 = call float @dx.op.unary.f32(i32 23, float %49)  ; Log(value)
  %186 = fmul fast float %183, 0x3F89F9B580000000
  %187 = fmul fast float %184, 0x3F89F9B580000000
  %188 = fmul fast float %185, 0x3F89F9B580000000
  %189 = call float @dx.op.unary.f32(i32 21, float %186)  ; Exp(value)
  %190 = call float @dx.op.unary.f32(i32 21, float %187)  ; Exp(value)
  %191 = call float @dx.op.unary.f32(i32 21, float %188)  ; Exp(value)
  %192 = fmul fast float %189, 1.868750e+01
  %193 = fmul fast float %190, 1.868750e+01
  %194 = fmul fast float %191, 1.868750e+01
  %195 = fsub fast float 0x4032DA0000000000, %192
  %196 = fsub fast float 0x4032DA0000000000, %193
  %197 = fsub fast float 0x4032DA0000000000, %194
  %198 = fadd fast float %189, -8.359375e-01
  %199 = fadd fast float %190, -8.359375e-01
  %200 = fadd fast float %191, -8.359375e-01
  %201 = call float @dx.op.binary.f32(i32 35, float %198, float 0.000000e+00)  ; FMax(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %199, float 0.000000e+00)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %200, float 0.000000e+00)  ; FMax(a,b)
  %204 = fdiv fast float %201, %195
  %205 = fdiv fast float %202, %196
  %206 = fdiv fast float %203, %197
  %207 = call float @dx.op.unary.f32(i32 23, float %204)  ; Log(value)
  %208 = call float @dx.op.unary.f32(i32 23, float %205)  ; Log(value)
  %209 = call float @dx.op.unary.f32(i32 23, float %206)  ; Log(value)
  %210 = fmul fast float %207, 0x40191C0D60000000
  %211 = fmul fast float %208, 0x40191C0D60000000
  %212 = fmul fast float %209, 0x40191C0D60000000
  %213 = call float @dx.op.unary.f32(i32 21, float %210)  ; Exp(value)
  %214 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %215 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  br label %220

; <label>:216                                     ; preds = %178
  %217 = fmul fast float %47, %47
  %218 = fmul fast float %48, %48
  %219 = fmul fast float %49, %49
  br label %220

; <label>:220                                     ; preds = %216, %182
  %221 = phi float [ %215, %182 ], [ %219, %216 ]
  %222 = phi float [ %214, %182 ], [ %218, %216 ]
  %223 = phi float [ %213, %182 ], [ %217, %216 ]
  br i1 %97, label %224, label %258, !dx.controlflow.hints !15

; <label>:224                                     ; preds = %220
  %225 = call float @dx.op.unary.f32(i32 23, float %51)  ; Log(value)
  %226 = call float @dx.op.unary.f32(i32 23, float %52)  ; Log(value)
  %227 = call float @dx.op.unary.f32(i32 23, float %53)  ; Log(value)
  %228 = fmul fast float %225, 0x3F89F9B580000000
  %229 = fmul fast float %226, 0x3F89F9B580000000
  %230 = fmul fast float %227, 0x3F89F9B580000000
  %231 = call float @dx.op.unary.f32(i32 21, float %228)  ; Exp(value)
  %232 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %233 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %234 = fmul fast float %231, 1.868750e+01
  %235 = fmul fast float %232, 1.868750e+01
  %236 = fmul fast float %233, 1.868750e+01
  %237 = fsub fast float 0x4032DA0000000000, %234
  %238 = fsub fast float 0x4032DA0000000000, %235
  %239 = fsub fast float 0x4032DA0000000000, %236
  %240 = fadd fast float %231, -8.359375e-01
  %241 = fadd fast float %232, -8.359375e-01
  %242 = fadd fast float %233, -8.359375e-01
  %243 = call float @dx.op.binary.f32(i32 35, float %240, float 0.000000e+00)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %241, float 0.000000e+00)  ; FMax(a,b)
  %245 = call float @dx.op.binary.f32(i32 35, float %242, float 0.000000e+00)  ; FMax(a,b)
  %246 = fdiv fast float %243, %237
  %247 = fdiv fast float %244, %238
  %248 = fdiv fast float %245, %239
  %249 = call float @dx.op.unary.f32(i32 23, float %246)  ; Log(value)
  %250 = call float @dx.op.unary.f32(i32 23, float %247)  ; Log(value)
  %251 = call float @dx.op.unary.f32(i32 23, float %248)  ; Log(value)
  %252 = fmul fast float %249, 0x40191C0D60000000
  %253 = fmul fast float %250, 0x40191C0D60000000
  %254 = fmul fast float %251, 0x40191C0D60000000
  %255 = call float @dx.op.unary.f32(i32 21, float %252)  ; Exp(value)
  %256 = call float @dx.op.unary.f32(i32 21, float %253)  ; Exp(value)
  %257 = call float @dx.op.unary.f32(i32 21, float %254)  ; Exp(value)
  br label %262

; <label>:258                                     ; preds = %220
  %259 = fmul fast float %51, %51
  %260 = fmul fast float %52, %52
  %261 = fmul fast float %53, %53
  br label %262

; <label>:262                                     ; preds = %258, %224
  %263 = phi float [ %257, %224 ], [ %261, %258 ]
  %264 = phi float [ %256, %224 ], [ %260, %258 ]
  %265 = phi float [ %255, %224 ], [ %259, %258 ]
  br i1 %97, label %266, label %300, !dx.controlflow.hints !15

; <label>:266                                     ; preds = %262
  %267 = call float @dx.op.unary.f32(i32 23, float %60)  ; Log(value)
  %268 = call float @dx.op.unary.f32(i32 23, float %61)  ; Log(value)
  %269 = call float @dx.op.unary.f32(i32 23, float %62)  ; Log(value)
  %270 = fmul fast float %267, 0x3F89F9B580000000
  %271 = fmul fast float %268, 0x3F89F9B580000000
  %272 = fmul fast float %269, 0x3F89F9B580000000
  %273 = call float @dx.op.unary.f32(i32 21, float %270)  ; Exp(value)
  %274 = call float @dx.op.unary.f32(i32 21, float %271)  ; Exp(value)
  %275 = call float @dx.op.unary.f32(i32 21, float %272)  ; Exp(value)
  %276 = fmul fast float %273, 1.868750e+01
  %277 = fmul fast float %274, 1.868750e+01
  %278 = fmul fast float %275, 1.868750e+01
  %279 = fsub fast float 0x4032DA0000000000, %276
  %280 = fsub fast float 0x4032DA0000000000, %277
  %281 = fsub fast float 0x4032DA0000000000, %278
  %282 = fadd fast float %273, -8.359375e-01
  %283 = fadd fast float %274, -8.359375e-01
  %284 = fadd fast float %275, -8.359375e-01
  %285 = call float @dx.op.binary.f32(i32 35, float %282, float 0.000000e+00)  ; FMax(a,b)
  %286 = call float @dx.op.binary.f32(i32 35, float %283, float 0.000000e+00)  ; FMax(a,b)
  %287 = call float @dx.op.binary.f32(i32 35, float %284, float 0.000000e+00)  ; FMax(a,b)
  %288 = fdiv fast float %285, %279
  %289 = fdiv fast float %286, %280
  %290 = fdiv fast float %287, %281
  %291 = call float @dx.op.unary.f32(i32 23, float %288)  ; Log(value)
  %292 = call float @dx.op.unary.f32(i32 23, float %289)  ; Log(value)
  %293 = call float @dx.op.unary.f32(i32 23, float %290)  ; Log(value)
  %294 = fmul fast float %291, 0x40191C0D60000000
  %295 = fmul fast float %292, 0x40191C0D60000000
  %296 = fmul fast float %293, 0x40191C0D60000000
  %297 = call float @dx.op.unary.f32(i32 21, float %294)  ; Exp(value)
  %298 = call float @dx.op.unary.f32(i32 21, float %295)  ; Exp(value)
  %299 = call float @dx.op.unary.f32(i32 21, float %296)  ; Exp(value)
  br label %304

; <label>:300                                     ; preds = %262
  %301 = fmul fast float %60, %60
  %302 = fmul fast float %61, %61
  %303 = fmul fast float %62, %62
  br label %304

; <label>:304                                     ; preds = %300, %266
  %305 = phi float [ %299, %266 ], [ %303, %300 ]
  %306 = phi float [ %298, %266 ], [ %302, %300 ]
  %307 = phi float [ %297, %266 ], [ %301, %300 ]
  br i1 %97, label %308, label %342, !dx.controlflow.hints !15

; <label>:308                                     ; preds = %304
  %309 = call float @dx.op.unary.f32(i32 23, float %65)  ; Log(value)
  %310 = call float @dx.op.unary.f32(i32 23, float %66)  ; Log(value)
  %311 = call float @dx.op.unary.f32(i32 23, float %67)  ; Log(value)
  %312 = fmul fast float %309, 0x3F89F9B580000000
  %313 = fmul fast float %310, 0x3F89F9B580000000
  %314 = fmul fast float %311, 0x3F89F9B580000000
  %315 = call float @dx.op.unary.f32(i32 21, float %312)  ; Exp(value)
  %316 = call float @dx.op.unary.f32(i32 21, float %313)  ; Exp(value)
  %317 = call float @dx.op.unary.f32(i32 21, float %314)  ; Exp(value)
  %318 = fmul fast float %315, 1.868750e+01
  %319 = fmul fast float %316, 1.868750e+01
  %320 = fmul fast float %317, 1.868750e+01
  %321 = fsub fast float 0x4032DA0000000000, %318
  %322 = fsub fast float 0x4032DA0000000000, %319
  %323 = fsub fast float 0x4032DA0000000000, %320
  %324 = fadd fast float %315, -8.359375e-01
  %325 = fadd fast float %316, -8.359375e-01
  %326 = fadd fast float %317, -8.359375e-01
  %327 = call float @dx.op.binary.f32(i32 35, float %324, float 0.000000e+00)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %325, float 0.000000e+00)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 35, float %326, float 0.000000e+00)  ; FMax(a,b)
  %330 = fdiv fast float %327, %321
  %331 = fdiv fast float %328, %322
  %332 = fdiv fast float %329, %323
  %333 = call float @dx.op.unary.f32(i32 23, float %330)  ; Log(value)
  %334 = call float @dx.op.unary.f32(i32 23, float %331)  ; Log(value)
  %335 = call float @dx.op.unary.f32(i32 23, float %332)  ; Log(value)
  %336 = fmul fast float %333, 0x40191C0D60000000
  %337 = fmul fast float %334, 0x40191C0D60000000
  %338 = fmul fast float %335, 0x40191C0D60000000
  %339 = call float @dx.op.unary.f32(i32 21, float %336)  ; Exp(value)
  %340 = call float @dx.op.unary.f32(i32 21, float %337)  ; Exp(value)
  %341 = call float @dx.op.unary.f32(i32 21, float %338)  ; Exp(value)
  br label %346

; <label>:342                                     ; preds = %304
  %343 = fmul fast float %65, %65
  %344 = fmul fast float %66, %66
  %345 = fmul fast float %67, %67
  br label %346

; <label>:346                                     ; preds = %342, %308
  %347 = phi float [ %341, %308 ], [ %345, %342 ]
  %348 = phi float [ %340, %308 ], [ %344, %342 ]
  %349 = phi float [ %339, %308 ], [ %343, %342 ]
  br i1 %97, label %350, label %384, !dx.controlflow.hints !15

; <label>:350                                     ; preds = %346
  %351 = call float @dx.op.unary.f32(i32 23, float %70)  ; Log(value)
  %352 = call float @dx.op.unary.f32(i32 23, float %71)  ; Log(value)
  %353 = call float @dx.op.unary.f32(i32 23, float %72)  ; Log(value)
  %354 = fmul fast float %351, 0x3F89F9B580000000
  %355 = fmul fast float %352, 0x3F89F9B580000000
  %356 = fmul fast float %353, 0x3F89F9B580000000
  %357 = call float @dx.op.unary.f32(i32 21, float %354)  ; Exp(value)
  %358 = call float @dx.op.unary.f32(i32 21, float %355)  ; Exp(value)
  %359 = call float @dx.op.unary.f32(i32 21, float %356)  ; Exp(value)
  %360 = fmul fast float %357, 1.868750e+01
  %361 = fmul fast float %358, 1.868750e+01
  %362 = fmul fast float %359, 1.868750e+01
  %363 = fsub fast float 0x4032DA0000000000, %360
  %364 = fsub fast float 0x4032DA0000000000, %361
  %365 = fsub fast float 0x4032DA0000000000, %362
  %366 = fadd fast float %357, -8.359375e-01
  %367 = fadd fast float %358, -8.359375e-01
  %368 = fadd fast float %359, -8.359375e-01
  %369 = call float @dx.op.binary.f32(i32 35, float %366, float 0.000000e+00)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 35, float %367, float 0.000000e+00)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %368, float 0.000000e+00)  ; FMax(a,b)
  %372 = fdiv fast float %369, %363
  %373 = fdiv fast float %370, %364
  %374 = fdiv fast float %371, %365
  %375 = call float @dx.op.unary.f32(i32 23, float %372)  ; Log(value)
  %376 = call float @dx.op.unary.f32(i32 23, float %373)  ; Log(value)
  %377 = call float @dx.op.unary.f32(i32 23, float %374)  ; Log(value)
  %378 = fmul fast float %375, 0x40191C0D60000000
  %379 = fmul fast float %376, 0x40191C0D60000000
  %380 = fmul fast float %377, 0x40191C0D60000000
  %381 = call float @dx.op.unary.f32(i32 21, float %378)  ; Exp(value)
  %382 = call float @dx.op.unary.f32(i32 21, float %379)  ; Exp(value)
  %383 = call float @dx.op.unary.f32(i32 21, float %380)  ; Exp(value)
  br label %388

; <label>:384                                     ; preds = %346
  %385 = fmul fast float %70, %70
  %386 = fmul fast float %71, %71
  %387 = fmul fast float %72, %72
  br label %388

; <label>:388                                     ; preds = %384, %350
  %389 = phi float [ %383, %350 ], [ %387, %384 ]
  %390 = phi float [ %382, %350 ], [ %386, %384 ]
  %391 = phi float [ %381, %350 ], [ %385, %384 ]
  br i1 %97, label %392, label %426, !dx.controlflow.hints !15

; <label>:392                                     ; preds = %388
  %393 = call float @dx.op.unary.f32(i32 23, float %74)  ; Log(value)
  %394 = call float @dx.op.unary.f32(i32 23, float %75)  ; Log(value)
  %395 = call float @dx.op.unary.f32(i32 23, float %76)  ; Log(value)
  %396 = fmul fast float %393, 0x3F89F9B580000000
  %397 = fmul fast float %394, 0x3F89F9B580000000
  %398 = fmul fast float %395, 0x3F89F9B580000000
  %399 = call float @dx.op.unary.f32(i32 21, float %396)  ; Exp(value)
  %400 = call float @dx.op.unary.f32(i32 21, float %397)  ; Exp(value)
  %401 = call float @dx.op.unary.f32(i32 21, float %398)  ; Exp(value)
  %402 = fmul fast float %399, 1.868750e+01
  %403 = fmul fast float %400, 1.868750e+01
  %404 = fmul fast float %401, 1.868750e+01
  %405 = fsub fast float 0x4032DA0000000000, %402
  %406 = fsub fast float 0x4032DA0000000000, %403
  %407 = fsub fast float 0x4032DA0000000000, %404
  %408 = fadd fast float %399, -8.359375e-01
  %409 = fadd fast float %400, -8.359375e-01
  %410 = fadd fast float %401, -8.359375e-01
  %411 = call float @dx.op.binary.f32(i32 35, float %408, float 0.000000e+00)  ; FMax(a,b)
  %412 = call float @dx.op.binary.f32(i32 35, float %409, float 0.000000e+00)  ; FMax(a,b)
  %413 = call float @dx.op.binary.f32(i32 35, float %410, float 0.000000e+00)  ; FMax(a,b)
  %414 = fdiv fast float %411, %405
  %415 = fdiv fast float %412, %406
  %416 = fdiv fast float %413, %407
  %417 = call float @dx.op.unary.f32(i32 23, float %414)  ; Log(value)
  %418 = call float @dx.op.unary.f32(i32 23, float %415)  ; Log(value)
  %419 = call float @dx.op.unary.f32(i32 23, float %416)  ; Log(value)
  %420 = fmul fast float %417, 0x40191C0D60000000
  %421 = fmul fast float %418, 0x40191C0D60000000
  %422 = fmul fast float %419, 0x40191C0D60000000
  %423 = call float @dx.op.unary.f32(i32 21, float %420)  ; Exp(value)
  %424 = call float @dx.op.unary.f32(i32 21, float %421)  ; Exp(value)
  %425 = call float @dx.op.unary.f32(i32 21, float %422)  ; Exp(value)
  br label %430

; <label>:426                                     ; preds = %388
  %427 = fmul fast float %74, %74
  %428 = fmul fast float %75, %75
  %429 = fmul fast float %76, %76
  br label %430

; <label>:430                                     ; preds = %426, %392
  %431 = phi float [ %425, %392 ], [ %429, %426 ]
  %432 = phi float [ %424, %392 ], [ %428, %426 ]
  %433 = phi float [ %423, %392 ], [ %427, %426 ]
  br i1 %97, label %434, label %468, !dx.controlflow.hints !15

; <label>:434                                     ; preds = %430
  %435 = call float @dx.op.unary.f32(i32 23, float %83)  ; Log(value)
  %436 = call float @dx.op.unary.f32(i32 23, float %84)  ; Log(value)
  %437 = call float @dx.op.unary.f32(i32 23, float %85)  ; Log(value)
  %438 = fmul fast float %435, 0x3F89F9B580000000
  %439 = fmul fast float %436, 0x3F89F9B580000000
  %440 = fmul fast float %437, 0x3F89F9B580000000
  %441 = call float @dx.op.unary.f32(i32 21, float %438)  ; Exp(value)
  %442 = call float @dx.op.unary.f32(i32 21, float %439)  ; Exp(value)
  %443 = call float @dx.op.unary.f32(i32 21, float %440)  ; Exp(value)
  %444 = fmul fast float %441, 1.868750e+01
  %445 = fmul fast float %442, 1.868750e+01
  %446 = fmul fast float %443, 1.868750e+01
  %447 = fsub fast float 0x4032DA0000000000, %444
  %448 = fsub fast float 0x4032DA0000000000, %445
  %449 = fsub fast float 0x4032DA0000000000, %446
  %450 = fadd fast float %441, -8.359375e-01
  %451 = fadd fast float %442, -8.359375e-01
  %452 = fadd fast float %443, -8.359375e-01
  %453 = call float @dx.op.binary.f32(i32 35, float %450, float 0.000000e+00)  ; FMax(a,b)
  %454 = call float @dx.op.binary.f32(i32 35, float %451, float 0.000000e+00)  ; FMax(a,b)
  %455 = call float @dx.op.binary.f32(i32 35, float %452, float 0.000000e+00)  ; FMax(a,b)
  %456 = fdiv fast float %453, %447
  %457 = fdiv fast float %454, %448
  %458 = fdiv fast float %455, %449
  %459 = call float @dx.op.unary.f32(i32 23, float %456)  ; Log(value)
  %460 = call float @dx.op.unary.f32(i32 23, float %457)  ; Log(value)
  %461 = call float @dx.op.unary.f32(i32 23, float %458)  ; Log(value)
  %462 = fmul fast float %459, 0x40191C0D60000000
  %463 = fmul fast float %460, 0x40191C0D60000000
  %464 = fmul fast float %461, 0x40191C0D60000000
  %465 = call float @dx.op.unary.f32(i32 21, float %462)  ; Exp(value)
  %466 = call float @dx.op.unary.f32(i32 21, float %463)  ; Exp(value)
  %467 = call float @dx.op.unary.f32(i32 21, float %464)  ; Exp(value)
  br label %472

; <label>:468                                     ; preds = %430
  %469 = fmul fast float %83, %83
  %470 = fmul fast float %84, %84
  %471 = fmul fast float %85, %85
  br label %472

; <label>:472                                     ; preds = %468, %434
  %473 = phi float [ %467, %434 ], [ %471, %468 ]
  %474 = phi float [ %466, %434 ], [ %470, %468 ]
  %475 = phi float [ %465, %434 ], [ %469, %468 ]
  br i1 %97, label %476, label %510, !dx.controlflow.hints !15

; <label>:476                                     ; preds = %472
  %477 = call float @dx.op.unary.f32(i32 23, float %87)  ; Log(value)
  %478 = call float @dx.op.unary.f32(i32 23, float %88)  ; Log(value)
  %479 = call float @dx.op.unary.f32(i32 23, float %89)  ; Log(value)
  %480 = fmul fast float %477, 0x3F89F9B580000000
  %481 = fmul fast float %478, 0x3F89F9B580000000
  %482 = fmul fast float %479, 0x3F89F9B580000000
  %483 = call float @dx.op.unary.f32(i32 21, float %480)  ; Exp(value)
  %484 = call float @dx.op.unary.f32(i32 21, float %481)  ; Exp(value)
  %485 = call float @dx.op.unary.f32(i32 21, float %482)  ; Exp(value)
  %486 = fmul fast float %483, 1.868750e+01
  %487 = fmul fast float %484, 1.868750e+01
  %488 = fmul fast float %485, 1.868750e+01
  %489 = fsub fast float 0x4032DA0000000000, %486
  %490 = fsub fast float 0x4032DA0000000000, %487
  %491 = fsub fast float 0x4032DA0000000000, %488
  %492 = fadd fast float %483, -8.359375e-01
  %493 = fadd fast float %484, -8.359375e-01
  %494 = fadd fast float %485, -8.359375e-01
  %495 = call float @dx.op.binary.f32(i32 35, float %492, float 0.000000e+00)  ; FMax(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float %493, float 0.000000e+00)  ; FMax(a,b)
  %497 = call float @dx.op.binary.f32(i32 35, float %494, float 0.000000e+00)  ; FMax(a,b)
  %498 = fdiv fast float %495, %489
  %499 = fdiv fast float %496, %490
  %500 = fdiv fast float %497, %491
  %501 = call float @dx.op.unary.f32(i32 23, float %498)  ; Log(value)
  %502 = call float @dx.op.unary.f32(i32 23, float %499)  ; Log(value)
  %503 = call float @dx.op.unary.f32(i32 23, float %500)  ; Log(value)
  %504 = fmul fast float %501, 0x40191C0D60000000
  %505 = fmul fast float %502, 0x40191C0D60000000
  %506 = fmul fast float %503, 0x40191C0D60000000
  %507 = call float @dx.op.unary.f32(i32 21, float %504)  ; Exp(value)
  %508 = call float @dx.op.unary.f32(i32 21, float %505)  ; Exp(value)
  %509 = call float @dx.op.unary.f32(i32 21, float %506)  ; Exp(value)
  br label %514

; <label>:510                                     ; preds = %472
  %511 = fmul fast float %87, %87
  %512 = fmul fast float %88, %88
  %513 = fmul fast float %89, %89
  br label %514

; <label>:514                                     ; preds = %510, %476
  %515 = phi float [ %509, %476 ], [ %513, %510 ]
  %516 = phi float [ %508, %476 ], [ %512, %510 ]
  %517 = phi float [ %507, %476 ], [ %511, %510 ]
  br i1 %97, label %518, label %552, !dx.controlflow.hints !15

; <label>:518                                     ; preds = %514
  %519 = call float @dx.op.unary.f32(i32 23, float %79)  ; Log(value)
  %520 = call float @dx.op.unary.f32(i32 23, float %80)  ; Log(value)
  %521 = call float @dx.op.unary.f32(i32 23, float %81)  ; Log(value)
  %522 = fmul fast float %519, 0x3F89F9B580000000
  %523 = fmul fast float %520, 0x3F89F9B580000000
  %524 = fmul fast float %521, 0x3F89F9B580000000
  %525 = call float @dx.op.unary.f32(i32 21, float %522)  ; Exp(value)
  %526 = call float @dx.op.unary.f32(i32 21, float %523)  ; Exp(value)
  %527 = call float @dx.op.unary.f32(i32 21, float %524)  ; Exp(value)
  %528 = fmul fast float %525, 1.868750e+01
  %529 = fmul fast float %526, 1.868750e+01
  %530 = fmul fast float %527, 1.868750e+01
  %531 = fsub fast float 0x4032DA0000000000, %528
  %532 = fsub fast float 0x4032DA0000000000, %529
  %533 = fsub fast float 0x4032DA0000000000, %530
  %534 = fadd fast float %525, -8.359375e-01
  %535 = fadd fast float %526, -8.359375e-01
  %536 = fadd fast float %527, -8.359375e-01
  %537 = call float @dx.op.binary.f32(i32 35, float %534, float 0.000000e+00)  ; FMax(a,b)
  %538 = call float @dx.op.binary.f32(i32 35, float %535, float 0.000000e+00)  ; FMax(a,b)
  %539 = call float @dx.op.binary.f32(i32 35, float %536, float 0.000000e+00)  ; FMax(a,b)
  %540 = fdiv fast float %537, %531
  %541 = fdiv fast float %538, %532
  %542 = fdiv fast float %539, %533
  %543 = call float @dx.op.unary.f32(i32 23, float %540)  ; Log(value)
  %544 = call float @dx.op.unary.f32(i32 23, float %541)  ; Log(value)
  %545 = call float @dx.op.unary.f32(i32 23, float %542)  ; Log(value)
  %546 = fmul fast float %543, 0x40191C0D60000000
  %547 = fmul fast float %544, 0x40191C0D60000000
  %548 = fmul fast float %545, 0x40191C0D60000000
  %549 = call float @dx.op.unary.f32(i32 21, float %546)  ; Exp(value)
  %550 = call float @dx.op.unary.f32(i32 21, float %547)  ; Exp(value)
  %551 = call float @dx.op.unary.f32(i32 21, float %548)  ; Exp(value)
  br label %556

; <label>:552                                     ; preds = %514
  %553 = fmul fast float %79, %79
  %554 = fmul fast float %80, %80
  %555 = fmul fast float %81, %81
  br label %556

; <label>:556                                     ; preds = %552, %518
  %557 = phi float [ %551, %518 ], [ %555, %552 ]
  %558 = phi float [ %550, %518 ], [ %554, %552 ]
  %559 = phi float [ %549, %518 ], [ %553, %552 ]
  br i1 %97, label %560, label %594, !dx.controlflow.hints !15

; <label>:560                                     ; preds = %556
  %561 = call float @dx.op.unary.f32(i32 23, float %91)  ; Log(value)
  %562 = call float @dx.op.unary.f32(i32 23, float %92)  ; Log(value)
  %563 = call float @dx.op.unary.f32(i32 23, float %93)  ; Log(value)
  %564 = fmul fast float %561, 0x3F89F9B580000000
  %565 = fmul fast float %562, 0x3F89F9B580000000
  %566 = fmul fast float %563, 0x3F89F9B580000000
  %567 = call float @dx.op.unary.f32(i32 21, float %564)  ; Exp(value)
  %568 = call float @dx.op.unary.f32(i32 21, float %565)  ; Exp(value)
  %569 = call float @dx.op.unary.f32(i32 21, float %566)  ; Exp(value)
  %570 = fmul fast float %567, 1.868750e+01
  %571 = fmul fast float %568, 1.868750e+01
  %572 = fmul fast float %569, 1.868750e+01
  %573 = fsub fast float 0x4032DA0000000000, %570
  %574 = fsub fast float 0x4032DA0000000000, %571
  %575 = fsub fast float 0x4032DA0000000000, %572
  %576 = fadd fast float %567, -8.359375e-01
  %577 = fadd fast float %568, -8.359375e-01
  %578 = fadd fast float %569, -8.359375e-01
  %579 = call float @dx.op.binary.f32(i32 35, float %576, float 0.000000e+00)  ; FMax(a,b)
  %580 = call float @dx.op.binary.f32(i32 35, float %577, float 0.000000e+00)  ; FMax(a,b)
  %581 = call float @dx.op.binary.f32(i32 35, float %578, float 0.000000e+00)  ; FMax(a,b)
  %582 = fdiv fast float %579, %573
  %583 = fdiv fast float %580, %574
  %584 = fdiv fast float %581, %575
  %585 = call float @dx.op.unary.f32(i32 23, float %582)  ; Log(value)
  %586 = call float @dx.op.unary.f32(i32 23, float %583)  ; Log(value)
  %587 = call float @dx.op.unary.f32(i32 23, float %584)  ; Log(value)
  %588 = fmul fast float %585, 0x40191C0D60000000
  %589 = fmul fast float %586, 0x40191C0D60000000
  %590 = fmul fast float %587, 0x40191C0D60000000
  %591 = call float @dx.op.unary.f32(i32 21, float %588)  ; Exp(value)
  %592 = call float @dx.op.unary.f32(i32 21, float %589)  ; Exp(value)
  %593 = call float @dx.op.unary.f32(i32 21, float %590)  ; Exp(value)
  br label %598

; <label>:594                                     ; preds = %556
  %595 = fmul fast float %91, %91
  %596 = fmul fast float %92, %92
  %597 = fmul fast float %93, %93
  br label %598

; <label>:598                                     ; preds = %594, %560
  %599 = phi float [ %593, %560 ], [ %597, %594 ]
  %600 = phi float [ %592, %560 ], [ %596, %594 ]
  %601 = phi float [ %591, %560 ], [ %595, %594 ]
  %602 = call float @dx.op.binary.f32(i32 36, float %222, float %264)  ; FMin(a,b)
  %603 = call float @dx.op.binary.f32(i32 36, float %138, float %602)  ; FMin(a,b)
  %604 = call float @dx.op.binary.f32(i32 36, float %306, float %432)  ; FMin(a,b)
  %605 = call float @dx.op.binary.f32(i32 36, float %603, float %604)  ; FMin(a,b)
  %606 = call float @dx.op.binary.f32(i32 35, float %222, float %264)  ; FMax(a,b)
  %607 = call float @dx.op.binary.f32(i32 35, float %138, float %606)  ; FMax(a,b)
  %608 = call float @dx.op.binary.f32(i32 35, float %306, float %432)  ; FMax(a,b)
  %609 = call float @dx.op.binary.f32(i32 35, float %607, float %608)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float %264, float %306)  ; FMin(a,b)
  %611 = call float @dx.op.binary.f32(i32 36, float %180, float %610)  ; FMin(a,b)
  %612 = call float @dx.op.binary.f32(i32 36, float %348, float %474)  ; FMin(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float %611, float %612)  ; FMin(a,b)
  %614 = call float @dx.op.binary.f32(i32 35, float %264, float %306)  ; FMax(a,b)
  %615 = call float @dx.op.binary.f32(i32 35, float %180, float %614)  ; FMax(a,b)
  %616 = call float @dx.op.binary.f32(i32 35, float %348, float %474)  ; FMax(a,b)
  %617 = call float @dx.op.binary.f32(i32 35, float %615, float %616)  ; FMax(a,b)
  %618 = call float @dx.op.binary.f32(i32 36, float %390, float %432)  ; FMin(a,b)
  %619 = call float @dx.op.binary.f32(i32 36, float %264, float %618)  ; FMin(a,b)
  %620 = call float @dx.op.binary.f32(i32 36, float %474, float %558)  ; FMin(a,b)
  %621 = call float @dx.op.binary.f32(i32 36, float %619, float %620)  ; FMin(a,b)
  %622 = call float @dx.op.binary.f32(i32 35, float %390, float %432)  ; FMax(a,b)
  %623 = call float @dx.op.binary.f32(i32 35, float %264, float %622)  ; FMax(a,b)
  %624 = call float @dx.op.binary.f32(i32 35, float %474, float %558)  ; FMax(a,b)
  %625 = call float @dx.op.binary.f32(i32 35, float %623, float %624)  ; FMax(a,b)
  %626 = call float @dx.op.binary.f32(i32 36, float %432, float %474)  ; FMin(a,b)
  %627 = call float @dx.op.binary.f32(i32 36, float %306, float %626)  ; FMin(a,b)
  %628 = call float @dx.op.binary.f32(i32 36, float %516, float %600)  ; FMin(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %627, float %628)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 35, float %432, float %474)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 35, float %306, float %630)  ; FMax(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %516, float %600)  ; FMax(a,b)
  %633 = call float @dx.op.binary.f32(i32 35, float %631, float %632)  ; FMax(a,b)
  %634 = bitcast float %609 to i32
  %635 = sub i32 2129690299, %634
  %636 = bitcast i32 %635 to float
  %637 = bitcast float %617 to i32
  %638 = sub i32 2129690299, %637
  %639 = bitcast i32 %638 to float
  %640 = bitcast float %625 to i32
  %641 = sub i32 2129690299, %640
  %642 = bitcast i32 %641 to float
  %643 = bitcast float %633 to i32
  %644 = sub i32 2129690299, %643
  %645 = bitcast i32 %644 to float
  %646 = fsub fast float 1.000000e+00, %609
  %647 = call float @dx.op.binary.f32(i32 36, float %605, float %646)  ; FMin(a,b)
  %648 = fmul fast float %647, %636
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fsub fast float 1.000000e+00, %617
  %651 = call float @dx.op.binary.f32(i32 36, float %613, float %650)  ; FMin(a,b)
  %652 = fmul fast float %651, %639
  %653 = call float @dx.op.unary.f32(i32 7, float %652)  ; Saturate(value)
  %654 = fsub fast float 1.000000e+00, %625
  %655 = call float @dx.op.binary.f32(i32 36, float %621, float %654)  ; FMin(a,b)
  %656 = fmul fast float %655, %642
  %657 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %658 = fsub fast float 1.000000e+00, %633
  %659 = call float @dx.op.binary.f32(i32 36, float %629, float %658)  ; FMin(a,b)
  %660 = fmul fast float %659, %645
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = bitcast float %649 to i32
  %663 = lshr i32 %662, 1
  %664 = add nuw i32 %663, 532432441
  %665 = bitcast i32 %664 to float
  %666 = bitcast float %653 to i32
  %667 = lshr i32 %666, 1
  %668 = add nuw i32 %667, 532432441
  %669 = bitcast i32 %668 to float
  %670 = bitcast float %657 to i32
  %671 = lshr i32 %670, 1
  %672 = add nuw i32 %671, 532432441
  %673 = bitcast i32 %672 to float
  %674 = bitcast float %661 to i32
  %675 = lshr i32 %674, 1
  %676 = add nuw i32 %675, 532432441
  %677 = bitcast i32 %676 to float
  %678 = bitcast i32 %18 to float
  %679 = fmul fast float %665, %678
  %680 = fmul fast float %669, %678
  %681 = fmul fast float %673, %678
  %682 = fmul fast float %677, %678
  %683 = fsub fast float 1.000000e+00, %36
  %684 = fsub fast float 1.000000e+00, %37
  %685 = fmul fast float %683, %684
  %686 = fmul fast float %684, %36
  %687 = fmul fast float %683, %37
  %688 = fmul fast float %36, %37
  %689 = fsub fast float 3.125000e-02, %605
  %690 = fadd fast float %689, %609
  %691 = bitcast float %690 to i32
  %692 = sub i32 2129690299, %691
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %685, %693
  %695 = fsub fast float 3.125000e-02, %613
  %696 = fadd fast float %695, %617
  %697 = bitcast float %696 to i32
  %698 = sub i32 2129690299, %697
  %699 = bitcast i32 %698 to float
  %700 = fmul fast float %686, %699
  %701 = fsub fast float 3.125000e-02, %621
  %702 = fadd fast float %701, %625
  %703 = bitcast float %702 to i32
  %704 = sub i32 2129690299, %703
  %705 = bitcast i32 %704 to float
  %706 = fmul fast float %687, %705
  %707 = fsub fast float 3.125000e-02, %629
  %708 = fadd fast float %707, %633
  %709 = bitcast float %708 to i32
  %710 = sub i32 2129690299, %709
  %711 = bitcast i32 %710 to float
  %712 = fmul fast float %688, %711
  %713 = fmul fast float %679, %694
  %714 = fmul fast float %680, %700
  %715 = fmul fast float %681, %706
  %716 = fadd fast float %714, %694
  %717 = fadd fast float %716, %715
  %718 = fmul fast float %682, %712
  %719 = fadd fast float %713, %700
  %720 = fadd fast float %719, %718
  %721 = fadd fast float %713, %706
  %722 = fadd fast float %721, %718
  %723 = fadd fast float %714, %712
  %724 = fadd fast float %723, %715
  %725 = fadd fast float %714, %713
  %726 = fadd fast float %725, %715
  %727 = fadd fast float %726, %718
  %728 = fmul fast float %727, 2.000000e+00
  %729 = fadd fast float %724, %717
  %730 = fadd fast float %729, %728
  %731 = fadd fast float %730, %720
  %732 = fadd fast float %731, %722
  %733 = bitcast float %732 to i32
  %734 = sub i32 2129764351, %733
  %735 = bitcast i32 %734 to float
  %736 = fmul fast float %735, %732
  %737 = fsub fast float 2.000000e+00, %736
  %738 = fmul fast float %737, %735
  %739 = fadd fast float %223, %139
  %740 = fmul fast float %713, %739
  %741 = fmul fast float %717, %265
  %742 = fmul fast float %720, %307
  %743 = fmul fast float %722, %433
  %744 = fmul fast float %724, %475
  %745 = fadd fast float %601, %517
  %746 = fmul fast float %718, %745
  %747 = fadd fast float %559, %391
  %748 = fmul fast float %715, %747
  %749 = fadd fast float %349, %181
  %750 = fmul fast float %714, %749
  %751 = fadd fast float %741, %740
  %752 = fadd fast float %751, %744
  %753 = fadd fast float %752, %742
  %754 = fadd fast float %753, %743
  %755 = fadd fast float %754, %746
  %756 = fadd fast float %755, %748
  %757 = fadd fast float %756, %750
  %758 = fmul fast float %738, %757
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %760 = fadd fast float %222, %138
  %761 = fmul fast float %713, %760
  %762 = fmul fast float %717, %264
  %763 = fmul fast float %720, %306
  %764 = fmul fast float %722, %432
  %765 = fmul fast float %724, %474
  %766 = fadd fast float %600, %516
  %767 = fmul fast float %718, %766
  %768 = fadd fast float %558, %390
  %769 = fmul fast float %715, %768
  %770 = fadd fast float %348, %180
  %771 = fmul fast float %714, %770
  %772 = fadd fast float %762, %761
  %773 = fadd fast float %772, %765
  %774 = fadd fast float %773, %763
  %775 = fadd fast float %774, %764
  %776 = fadd fast float %775, %767
  %777 = fadd fast float %776, %769
  %778 = fadd fast float %777, %771
  %779 = fmul fast float %738, %778
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %781 = fadd fast float %221, %137
  %782 = fmul fast float %713, %781
  %783 = fmul fast float %717, %263
  %784 = fmul fast float %720, %305
  %785 = fmul fast float %722, %431
  %786 = fmul fast float %724, %473
  %787 = fadd fast float %599, %515
  %788 = fmul fast float %718, %787
  %789 = fadd fast float %557, %389
  %790 = fmul fast float %715, %789
  %791 = fadd fast float %347, %179
  %792 = fmul fast float %714, %791
  %793 = fadd fast float %783, %782
  %794 = fadd fast float %793, %786
  %795 = fadd fast float %794, %784
  %796 = fadd fast float %795, %785
  %797 = fadd fast float %796, %788
  %798 = fadd fast float %797, %790
  %799 = fadd fast float %798, %792
  %800 = fmul fast float %738, %799
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  br i1 %97, label %802, label %836, !dx.controlflow.hints !16

; <label>:802                                     ; preds = %598
  %803 = call float @dx.op.unary.f32(i32 23, float %759)  ; Log(value)
  %804 = call float @dx.op.unary.f32(i32 23, float %780)  ; Log(value)
  %805 = call float @dx.op.unary.f32(i32 23, float %801)  ; Log(value)
  %806 = fmul fast float %803, 0x3FC4640000000000
  %807 = fmul fast float %804, 0x3FC4640000000000
  %808 = fmul fast float %805, 0x3FC4640000000000
  %809 = call float @dx.op.unary.f32(i32 21, float %806)  ; Exp(value)
  %810 = call float @dx.op.unary.f32(i32 21, float %807)  ; Exp(value)
  %811 = call float @dx.op.unary.f32(i32 21, float %808)  ; Exp(value)
  %812 = fmul fast float %809, 0x4032DA0000000000
  %813 = fmul fast float %810, 0x4032DA0000000000
  %814 = fmul fast float %811, 0x4032DA0000000000
  %815 = fadd fast float %812, 8.359375e-01
  %816 = fadd fast float %813, 8.359375e-01
  %817 = fadd fast float %814, 8.359375e-01
  %818 = fmul fast float %809, 1.868750e+01
  %819 = fmul fast float %810, 1.868750e+01
  %820 = fmul fast float %811, 1.868750e+01
  %821 = fadd fast float %818, 1.000000e+00
  %822 = fadd fast float %819, 1.000000e+00
  %823 = fadd fast float %820, 1.000000e+00
  %824 = fdiv fast float %815, %821
  %825 = fdiv fast float %816, %822
  %826 = fdiv fast float %817, %823
  %827 = call float @dx.op.unary.f32(i32 23, float %824)  ; Log(value)
  %828 = call float @dx.op.unary.f32(i32 23, float %825)  ; Log(value)
  %829 = call float @dx.op.unary.f32(i32 23, float %826)  ; Log(value)
  %830 = fmul fast float %827, 7.884375e+01
  %831 = fmul fast float %828, 7.884375e+01
  %832 = fmul fast float %829, 7.884375e+01
  %833 = call float @dx.op.unary.f32(i32 21, float %830)  ; Exp(value)
  %834 = call float @dx.op.unary.f32(i32 21, float %831)  ; Exp(value)
  %835 = call float @dx.op.unary.f32(i32 21, float %832)  ; Exp(value)
  br label %840

; <label>:836                                     ; preds = %598
  %837 = call float @dx.op.unary.f32(i32 24, float %759)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %780)  ; Sqrt(value)
  %839 = call float @dx.op.unary.f32(i32 24, float %801)  ; Sqrt(value)
  br label %840

; <label>:840                                     ; preds = %836, %802
  %841 = phi float [ %833, %802 ], [ %837, %836 ]
  %842 = phi float [ %834, %802 ], [ %838, %836 ]
  %843 = phi float [ %835, %802 ], [ %839, %836 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %841, float %842, float %843, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %844 = or i32 %15, 8
  %845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.i32 %845, 0
  %847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.i32 %847, 0
  %849 = extractvalue %dx.types.CBufRet.i32 %847, 1
  %850 = extractvalue %dx.types.CBufRet.i32 %847, 2
  %851 = extractvalue %dx.types.CBufRet.i32 %847, 3
  %852 = uitofp i32 %844 to float
  %853 = bitcast i32 %848 to float
  %854 = bitcast i32 %849 to float
  %855 = fmul fast float %853, %852
  %856 = fmul fast float %854, %25
  %857 = bitcast i32 %850 to float
  %858 = bitcast i32 %851 to float
  %859 = fadd fast float %855, %857
  %860 = fadd fast float %856, %858
  %861 = call float @dx.op.unary.f32(i32 27, float %859)  ; Round_ni(value)
  %862 = call float @dx.op.unary.f32(i32 27, float %860)  ; Round_ni(value)
  %863 = fsub fast float %859, %861
  %864 = fsub fast float %860, %862
  %865 = fptosi float %861 to i32
  %866 = fptosi float %862 to i32
  %867 = add i32 %866, -1
  %868 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %865, i32 %867, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = add i32 %865, -1
  %873 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %872, i32 %866, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %865, i32 %866, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = extractvalue %dx.types.ResRet.f32 %877, 2
  %881 = add i32 %865, 1
  %882 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %881, i32 %867, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %881, i32 %866, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %887 = extractvalue %dx.types.ResRet.f32 %886, 0
  %888 = extractvalue %dx.types.ResRet.f32 %886, 1
  %889 = extractvalue %dx.types.ResRet.f32 %886, 2
  %890 = add i32 %865, 2
  %891 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %890, i32 %866, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = add i32 %866, 1
  %896 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %872, i32 %895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %865, i32 %895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = add i32 %866, 2
  %905 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %865, i32 %904, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %881, i32 %895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = extractvalue %dx.types.ResRet.f32 %909, 1
  %912 = extractvalue %dx.types.ResRet.f32 %909, 2
  %913 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %890, i32 %895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %881, i32 %904, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.i32 %921, 0
  %923 = add i32 %922, -3
  %924 = icmp ult i32 %923, 2
  br i1 %924, label %925, label %959, !dx.controlflow.hints !15

; <label>:925                                     ; preds = %840
  %926 = call float @dx.op.unary.f32(i32 23, float %869)  ; Log(value)
  %927 = call float @dx.op.unary.f32(i32 23, float %870)  ; Log(value)
  %928 = call float @dx.op.unary.f32(i32 23, float %871)  ; Log(value)
  %929 = fmul fast float %926, 0x3F89F9B580000000
  %930 = fmul fast float %927, 0x3F89F9B580000000
  %931 = fmul fast float %928, 0x3F89F9B580000000
  %932 = call float @dx.op.unary.f32(i32 21, float %929)  ; Exp(value)
  %933 = call float @dx.op.unary.f32(i32 21, float %930)  ; Exp(value)
  %934 = call float @dx.op.unary.f32(i32 21, float %931)  ; Exp(value)
  %935 = fmul fast float %932, 1.868750e+01
  %936 = fmul fast float %933, 1.868750e+01
  %937 = fmul fast float %934, 1.868750e+01
  %938 = fsub fast float 0x4032DA0000000000, %935
  %939 = fsub fast float 0x4032DA0000000000, %936
  %940 = fsub fast float 0x4032DA0000000000, %937
  %941 = fadd fast float %932, -8.359375e-01
  %942 = fadd fast float %933, -8.359375e-01
  %943 = fadd fast float %934, -8.359375e-01
  %944 = call float @dx.op.binary.f32(i32 35, float %941, float 0.000000e+00)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 35, float %942, float 0.000000e+00)  ; FMax(a,b)
  %946 = call float @dx.op.binary.f32(i32 35, float %943, float 0.000000e+00)  ; FMax(a,b)
  %947 = fdiv fast float %944, %938
  %948 = fdiv fast float %945, %939
  %949 = fdiv fast float %946, %940
  %950 = call float @dx.op.unary.f32(i32 23, float %947)  ; Log(value)
  %951 = call float @dx.op.unary.f32(i32 23, float %948)  ; Log(value)
  %952 = call float @dx.op.unary.f32(i32 23, float %949)  ; Log(value)
  %953 = fmul fast float %950, 0x40191C0D60000000
  %954 = fmul fast float %951, 0x40191C0D60000000
  %955 = fmul fast float %952, 0x40191C0D60000000
  %956 = call float @dx.op.unary.f32(i32 21, float %953)  ; Exp(value)
  %957 = call float @dx.op.unary.f32(i32 21, float %954)  ; Exp(value)
  %958 = call float @dx.op.unary.f32(i32 21, float %955)  ; Exp(value)
  br label %963

; <label>:959                                     ; preds = %840
  %960 = fmul fast float %869, %869
  %961 = fmul fast float %870, %870
  %962 = fmul fast float %871, %871
  br label %963

; <label>:963                                     ; preds = %959, %925
  %964 = phi float [ %958, %925 ], [ %962, %959 ]
  %965 = phi float [ %957, %925 ], [ %961, %959 ]
  %966 = phi float [ %956, %925 ], [ %960, %959 ]
  br i1 %924, label %967, label %1001, !dx.controlflow.hints !15

; <label>:967                                     ; preds = %963
  %968 = call float @dx.op.unary.f32(i32 23, float %883)  ; Log(value)
  %969 = call float @dx.op.unary.f32(i32 23, float %884)  ; Log(value)
  %970 = call float @dx.op.unary.f32(i32 23, float %885)  ; Log(value)
  %971 = fmul fast float %968, 0x3F89F9B580000000
  %972 = fmul fast float %969, 0x3F89F9B580000000
  %973 = fmul fast float %970, 0x3F89F9B580000000
  %974 = call float @dx.op.unary.f32(i32 21, float %971)  ; Exp(value)
  %975 = call float @dx.op.unary.f32(i32 21, float %972)  ; Exp(value)
  %976 = call float @dx.op.unary.f32(i32 21, float %973)  ; Exp(value)
  %977 = fmul fast float %974, 1.868750e+01
  %978 = fmul fast float %975, 1.868750e+01
  %979 = fmul fast float %976, 1.868750e+01
  %980 = fsub fast float 0x4032DA0000000000, %977
  %981 = fsub fast float 0x4032DA0000000000, %978
  %982 = fsub fast float 0x4032DA0000000000, %979
  %983 = fadd fast float %974, -8.359375e-01
  %984 = fadd fast float %975, -8.359375e-01
  %985 = fadd fast float %976, -8.359375e-01
  %986 = call float @dx.op.binary.f32(i32 35, float %983, float 0.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float %984, float 0.000000e+00)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %989 = fdiv fast float %986, %980
  %990 = fdiv fast float %987, %981
  %991 = fdiv fast float %988, %982
  %992 = call float @dx.op.unary.f32(i32 23, float %989)  ; Log(value)
  %993 = call float @dx.op.unary.f32(i32 23, float %990)  ; Log(value)
  %994 = call float @dx.op.unary.f32(i32 23, float %991)  ; Log(value)
  %995 = fmul fast float %992, 0x40191C0D60000000
  %996 = fmul fast float %993, 0x40191C0D60000000
  %997 = fmul fast float %994, 0x40191C0D60000000
  %998 = call float @dx.op.unary.f32(i32 21, float %995)  ; Exp(value)
  %999 = call float @dx.op.unary.f32(i32 21, float %996)  ; Exp(value)
  %1000 = call float @dx.op.unary.f32(i32 21, float %997)  ; Exp(value)
  br label %1005

; <label>:1001                                    ; preds = %963
  %1002 = fmul fast float %883, %883
  %1003 = fmul fast float %884, %884
  %1004 = fmul fast float %885, %885
  br label %1005

; <label>:1005                                    ; preds = %1001, %967
  %1006 = phi float [ %1000, %967 ], [ %1004, %1001 ]
  %1007 = phi float [ %999, %967 ], [ %1003, %1001 ]
  %1008 = phi float [ %998, %967 ], [ %1002, %1001 ]
  br i1 %924, label %1009, label %1043, !dx.controlflow.hints !15

; <label>:1009                                    ; preds = %1005
  %1010 = call float @dx.op.unary.f32(i32 23, float %874)  ; Log(value)
  %1011 = call float @dx.op.unary.f32(i32 23, float %875)  ; Log(value)
  %1012 = call float @dx.op.unary.f32(i32 23, float %876)  ; Log(value)
  %1013 = fmul fast float %1010, 0x3F89F9B580000000
  %1014 = fmul fast float %1011, 0x3F89F9B580000000
  %1015 = fmul fast float %1012, 0x3F89F9B580000000
  %1016 = call float @dx.op.unary.f32(i32 21, float %1013)  ; Exp(value)
  %1017 = call float @dx.op.unary.f32(i32 21, float %1014)  ; Exp(value)
  %1018 = call float @dx.op.unary.f32(i32 21, float %1015)  ; Exp(value)
  %1019 = fmul fast float %1016, 1.868750e+01
  %1020 = fmul fast float %1017, 1.868750e+01
  %1021 = fmul fast float %1018, 1.868750e+01
  %1022 = fsub fast float 0x4032DA0000000000, %1019
  %1023 = fsub fast float 0x4032DA0000000000, %1020
  %1024 = fsub fast float 0x4032DA0000000000, %1021
  %1025 = fadd fast float %1016, -8.359375e-01
  %1026 = fadd fast float %1017, -8.359375e-01
  %1027 = fadd fast float %1018, -8.359375e-01
  %1028 = call float @dx.op.binary.f32(i32 35, float %1025, float 0.000000e+00)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1026, float 0.000000e+00)  ; FMax(a,b)
  %1030 = call float @dx.op.binary.f32(i32 35, float %1027, float 0.000000e+00)  ; FMax(a,b)
  %1031 = fdiv fast float %1028, %1022
  %1032 = fdiv fast float %1029, %1023
  %1033 = fdiv fast float %1030, %1024
  %1034 = call float @dx.op.unary.f32(i32 23, float %1031)  ; Log(value)
  %1035 = call float @dx.op.unary.f32(i32 23, float %1032)  ; Log(value)
  %1036 = call float @dx.op.unary.f32(i32 23, float %1033)  ; Log(value)
  %1037 = fmul fast float %1034, 0x40191C0D60000000
  %1038 = fmul fast float %1035, 0x40191C0D60000000
  %1039 = fmul fast float %1036, 0x40191C0D60000000
  %1040 = call float @dx.op.unary.f32(i32 21, float %1037)  ; Exp(value)
  %1041 = call float @dx.op.unary.f32(i32 21, float %1038)  ; Exp(value)
  %1042 = call float @dx.op.unary.f32(i32 21, float %1039)  ; Exp(value)
  br label %1047

; <label>:1043                                    ; preds = %1005
  %1044 = fmul fast float %874, %874
  %1045 = fmul fast float %875, %875
  %1046 = fmul fast float %876, %876
  br label %1047

; <label>:1047                                    ; preds = %1043, %1009
  %1048 = phi float [ %1042, %1009 ], [ %1046, %1043 ]
  %1049 = phi float [ %1041, %1009 ], [ %1045, %1043 ]
  %1050 = phi float [ %1040, %1009 ], [ %1044, %1043 ]
  br i1 %924, label %1051, label %1085, !dx.controlflow.hints !15

; <label>:1051                                    ; preds = %1047
  %1052 = call float @dx.op.unary.f32(i32 23, float %878)  ; Log(value)
  %1053 = call float @dx.op.unary.f32(i32 23, float %879)  ; Log(value)
  %1054 = call float @dx.op.unary.f32(i32 23, float %880)  ; Log(value)
  %1055 = fmul fast float %1052, 0x3F89F9B580000000
  %1056 = fmul fast float %1053, 0x3F89F9B580000000
  %1057 = fmul fast float %1054, 0x3F89F9B580000000
  %1058 = call float @dx.op.unary.f32(i32 21, float %1055)  ; Exp(value)
  %1059 = call float @dx.op.unary.f32(i32 21, float %1056)  ; Exp(value)
  %1060 = call float @dx.op.unary.f32(i32 21, float %1057)  ; Exp(value)
  %1061 = fmul fast float %1058, 1.868750e+01
  %1062 = fmul fast float %1059, 1.868750e+01
  %1063 = fmul fast float %1060, 1.868750e+01
  %1064 = fsub fast float 0x4032DA0000000000, %1061
  %1065 = fsub fast float 0x4032DA0000000000, %1062
  %1066 = fsub fast float 0x4032DA0000000000, %1063
  %1067 = fadd fast float %1058, -8.359375e-01
  %1068 = fadd fast float %1059, -8.359375e-01
  %1069 = fadd fast float %1060, -8.359375e-01
  %1070 = call float @dx.op.binary.f32(i32 35, float %1067, float 0.000000e+00)  ; FMax(a,b)
  %1071 = call float @dx.op.binary.f32(i32 35, float %1068, float 0.000000e+00)  ; FMax(a,b)
  %1072 = call float @dx.op.binary.f32(i32 35, float %1069, float 0.000000e+00)  ; FMax(a,b)
  %1073 = fdiv fast float %1070, %1064
  %1074 = fdiv fast float %1071, %1065
  %1075 = fdiv fast float %1072, %1066
  %1076 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1077 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1078 = call float @dx.op.unary.f32(i32 23, float %1075)  ; Log(value)
  %1079 = fmul fast float %1076, 0x40191C0D60000000
  %1080 = fmul fast float %1077, 0x40191C0D60000000
  %1081 = fmul fast float %1078, 0x40191C0D60000000
  %1082 = call float @dx.op.unary.f32(i32 21, float %1079)  ; Exp(value)
  %1083 = call float @dx.op.unary.f32(i32 21, float %1080)  ; Exp(value)
  %1084 = call float @dx.op.unary.f32(i32 21, float %1081)  ; Exp(value)
  br label %1089

; <label>:1085                                    ; preds = %1047
  %1086 = fmul fast float %878, %878
  %1087 = fmul fast float %879, %879
  %1088 = fmul fast float %880, %880
  br label %1089

; <label>:1089                                    ; preds = %1085, %1051
  %1090 = phi float [ %1084, %1051 ], [ %1088, %1085 ]
  %1091 = phi float [ %1083, %1051 ], [ %1087, %1085 ]
  %1092 = phi float [ %1082, %1051 ], [ %1086, %1085 ]
  br i1 %924, label %1093, label %1127, !dx.controlflow.hints !15

; <label>:1093                                    ; preds = %1089
  %1094 = call float @dx.op.unary.f32(i32 23, float %887)  ; Log(value)
  %1095 = call float @dx.op.unary.f32(i32 23, float %888)  ; Log(value)
  %1096 = call float @dx.op.unary.f32(i32 23, float %889)  ; Log(value)
  %1097 = fmul fast float %1094, 0x3F89F9B580000000
  %1098 = fmul fast float %1095, 0x3F89F9B580000000
  %1099 = fmul fast float %1096, 0x3F89F9B580000000
  %1100 = call float @dx.op.unary.f32(i32 21, float %1097)  ; Exp(value)
  %1101 = call float @dx.op.unary.f32(i32 21, float %1098)  ; Exp(value)
  %1102 = call float @dx.op.unary.f32(i32 21, float %1099)  ; Exp(value)
  %1103 = fmul fast float %1100, 1.868750e+01
  %1104 = fmul fast float %1101, 1.868750e+01
  %1105 = fmul fast float %1102, 1.868750e+01
  %1106 = fsub fast float 0x4032DA0000000000, %1103
  %1107 = fsub fast float 0x4032DA0000000000, %1104
  %1108 = fsub fast float 0x4032DA0000000000, %1105
  %1109 = fadd fast float %1100, -8.359375e-01
  %1110 = fadd fast float %1101, -8.359375e-01
  %1111 = fadd fast float %1102, -8.359375e-01
  %1112 = call float @dx.op.binary.f32(i32 35, float %1109, float 0.000000e+00)  ; FMax(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1110, float 0.000000e+00)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1111, float 0.000000e+00)  ; FMax(a,b)
  %1115 = fdiv fast float %1112, %1106
  %1116 = fdiv fast float %1113, %1107
  %1117 = fdiv fast float %1114, %1108
  %1118 = call float @dx.op.unary.f32(i32 23, float %1115)  ; Log(value)
  %1119 = call float @dx.op.unary.f32(i32 23, float %1116)  ; Log(value)
  %1120 = call float @dx.op.unary.f32(i32 23, float %1117)  ; Log(value)
  %1121 = fmul fast float %1118, 0x40191C0D60000000
  %1122 = fmul fast float %1119, 0x40191C0D60000000
  %1123 = fmul fast float %1120, 0x40191C0D60000000
  %1124 = call float @dx.op.unary.f32(i32 21, float %1121)  ; Exp(value)
  %1125 = call float @dx.op.unary.f32(i32 21, float %1122)  ; Exp(value)
  %1126 = call float @dx.op.unary.f32(i32 21, float %1123)  ; Exp(value)
  br label %1131

; <label>:1127                                    ; preds = %1089
  %1128 = fmul fast float %887, %887
  %1129 = fmul fast float %888, %888
  %1130 = fmul fast float %889, %889
  br label %1131

; <label>:1131                                    ; preds = %1127, %1093
  %1132 = phi float [ %1126, %1093 ], [ %1130, %1127 ]
  %1133 = phi float [ %1125, %1093 ], [ %1129, %1127 ]
  %1134 = phi float [ %1124, %1093 ], [ %1128, %1127 ]
  br i1 %924, label %1135, label %1169, !dx.controlflow.hints !15

; <label>:1135                                    ; preds = %1131
  %1136 = call float @dx.op.unary.f32(i32 23, float %892)  ; Log(value)
  %1137 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %1138 = call float @dx.op.unary.f32(i32 23, float %894)  ; Log(value)
  %1139 = fmul fast float %1136, 0x3F89F9B580000000
  %1140 = fmul fast float %1137, 0x3F89F9B580000000
  %1141 = fmul fast float %1138, 0x3F89F9B580000000
  %1142 = call float @dx.op.unary.f32(i32 21, float %1139)  ; Exp(value)
  %1143 = call float @dx.op.unary.f32(i32 21, float %1140)  ; Exp(value)
  %1144 = call float @dx.op.unary.f32(i32 21, float %1141)  ; Exp(value)
  %1145 = fmul fast float %1142, 1.868750e+01
  %1146 = fmul fast float %1143, 1.868750e+01
  %1147 = fmul fast float %1144, 1.868750e+01
  %1148 = fsub fast float 0x4032DA0000000000, %1145
  %1149 = fsub fast float 0x4032DA0000000000, %1146
  %1150 = fsub fast float 0x4032DA0000000000, %1147
  %1151 = fadd fast float %1142, -8.359375e-01
  %1152 = fadd fast float %1143, -8.359375e-01
  %1153 = fadd fast float %1144, -8.359375e-01
  %1154 = call float @dx.op.binary.f32(i32 35, float %1151, float 0.000000e+00)  ; FMax(a,b)
  %1155 = call float @dx.op.binary.f32(i32 35, float %1152, float 0.000000e+00)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1153, float 0.000000e+00)  ; FMax(a,b)
  %1157 = fdiv fast float %1154, %1148
  %1158 = fdiv fast float %1155, %1149
  %1159 = fdiv fast float %1156, %1150
  %1160 = call float @dx.op.unary.f32(i32 23, float %1157)  ; Log(value)
  %1161 = call float @dx.op.unary.f32(i32 23, float %1158)  ; Log(value)
  %1162 = call float @dx.op.unary.f32(i32 23, float %1159)  ; Log(value)
  %1163 = fmul fast float %1160, 0x40191C0D60000000
  %1164 = fmul fast float %1161, 0x40191C0D60000000
  %1165 = fmul fast float %1162, 0x40191C0D60000000
  %1166 = call float @dx.op.unary.f32(i32 21, float %1163)  ; Exp(value)
  %1167 = call float @dx.op.unary.f32(i32 21, float %1164)  ; Exp(value)
  %1168 = call float @dx.op.unary.f32(i32 21, float %1165)  ; Exp(value)
  br label %1173

; <label>:1169                                    ; preds = %1131
  %1170 = fmul fast float %892, %892
  %1171 = fmul fast float %893, %893
  %1172 = fmul fast float %894, %894
  br label %1173

; <label>:1173                                    ; preds = %1169, %1135
  %1174 = phi float [ %1168, %1135 ], [ %1172, %1169 ]
  %1175 = phi float [ %1167, %1135 ], [ %1171, %1169 ]
  %1176 = phi float [ %1166, %1135 ], [ %1170, %1169 ]
  br i1 %924, label %1177, label %1211, !dx.controlflow.hints !15

; <label>:1177                                    ; preds = %1173
  %1178 = call float @dx.op.unary.f32(i32 23, float %897)  ; Log(value)
  %1179 = call float @dx.op.unary.f32(i32 23, float %898)  ; Log(value)
  %1180 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %1181 = fmul fast float %1178, 0x3F89F9B580000000
  %1182 = fmul fast float %1179, 0x3F89F9B580000000
  %1183 = fmul fast float %1180, 0x3F89F9B580000000
  %1184 = call float @dx.op.unary.f32(i32 21, float %1181)  ; Exp(value)
  %1185 = call float @dx.op.unary.f32(i32 21, float %1182)  ; Exp(value)
  %1186 = call float @dx.op.unary.f32(i32 21, float %1183)  ; Exp(value)
  %1187 = fmul fast float %1184, 1.868750e+01
  %1188 = fmul fast float %1185, 1.868750e+01
  %1189 = fmul fast float %1186, 1.868750e+01
  %1190 = fsub fast float 0x4032DA0000000000, %1187
  %1191 = fsub fast float 0x4032DA0000000000, %1188
  %1192 = fsub fast float 0x4032DA0000000000, %1189
  %1193 = fadd fast float %1184, -8.359375e-01
  %1194 = fadd fast float %1185, -8.359375e-01
  %1195 = fadd fast float %1186, -8.359375e-01
  %1196 = call float @dx.op.binary.f32(i32 35, float %1193, float 0.000000e+00)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 35, float %1194, float 0.000000e+00)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 35, float %1195, float 0.000000e+00)  ; FMax(a,b)
  %1199 = fdiv fast float %1196, %1190
  %1200 = fdiv fast float %1197, %1191
  %1201 = fdiv fast float %1198, %1192
  %1202 = call float @dx.op.unary.f32(i32 23, float %1199)  ; Log(value)
  %1203 = call float @dx.op.unary.f32(i32 23, float %1200)  ; Log(value)
  %1204 = call float @dx.op.unary.f32(i32 23, float %1201)  ; Log(value)
  %1205 = fmul fast float %1202, 0x40191C0D60000000
  %1206 = fmul fast float %1203, 0x40191C0D60000000
  %1207 = fmul fast float %1204, 0x40191C0D60000000
  %1208 = call float @dx.op.unary.f32(i32 21, float %1205)  ; Exp(value)
  %1209 = call float @dx.op.unary.f32(i32 21, float %1206)  ; Exp(value)
  %1210 = call float @dx.op.unary.f32(i32 21, float %1207)  ; Exp(value)
  br label %1215

; <label>:1211                                    ; preds = %1173
  %1212 = fmul fast float %897, %897
  %1213 = fmul fast float %898, %898
  %1214 = fmul fast float %899, %899
  br label %1215

; <label>:1215                                    ; preds = %1211, %1177
  %1216 = phi float [ %1210, %1177 ], [ %1214, %1211 ]
  %1217 = phi float [ %1209, %1177 ], [ %1213, %1211 ]
  %1218 = phi float [ %1208, %1177 ], [ %1212, %1211 ]
  br i1 %924, label %1219, label %1253, !dx.controlflow.hints !15

; <label>:1219                                    ; preds = %1215
  %1220 = call float @dx.op.unary.f32(i32 23, float %901)  ; Log(value)
  %1221 = call float @dx.op.unary.f32(i32 23, float %902)  ; Log(value)
  %1222 = call float @dx.op.unary.f32(i32 23, float %903)  ; Log(value)
  %1223 = fmul fast float %1220, 0x3F89F9B580000000
  %1224 = fmul fast float %1221, 0x3F89F9B580000000
  %1225 = fmul fast float %1222, 0x3F89F9B580000000
  %1226 = call float @dx.op.unary.f32(i32 21, float %1223)  ; Exp(value)
  %1227 = call float @dx.op.unary.f32(i32 21, float %1224)  ; Exp(value)
  %1228 = call float @dx.op.unary.f32(i32 21, float %1225)  ; Exp(value)
  %1229 = fmul fast float %1226, 1.868750e+01
  %1230 = fmul fast float %1227, 1.868750e+01
  %1231 = fmul fast float %1228, 1.868750e+01
  %1232 = fsub fast float 0x4032DA0000000000, %1229
  %1233 = fsub fast float 0x4032DA0000000000, %1230
  %1234 = fsub fast float 0x4032DA0000000000, %1231
  %1235 = fadd fast float %1226, -8.359375e-01
  %1236 = fadd fast float %1227, -8.359375e-01
  %1237 = fadd fast float %1228, -8.359375e-01
  %1238 = call float @dx.op.binary.f32(i32 35, float %1235, float 0.000000e+00)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 35, float %1236, float 0.000000e+00)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 35, float %1237, float 0.000000e+00)  ; FMax(a,b)
  %1241 = fdiv fast float %1238, %1232
  %1242 = fdiv fast float %1239, %1233
  %1243 = fdiv fast float %1240, %1234
  %1244 = call float @dx.op.unary.f32(i32 23, float %1241)  ; Log(value)
  %1245 = call float @dx.op.unary.f32(i32 23, float %1242)  ; Log(value)
  %1246 = call float @dx.op.unary.f32(i32 23, float %1243)  ; Log(value)
  %1247 = fmul fast float %1244, 0x40191C0D60000000
  %1248 = fmul fast float %1245, 0x40191C0D60000000
  %1249 = fmul fast float %1246, 0x40191C0D60000000
  %1250 = call float @dx.op.unary.f32(i32 21, float %1247)  ; Exp(value)
  %1251 = call float @dx.op.unary.f32(i32 21, float %1248)  ; Exp(value)
  %1252 = call float @dx.op.unary.f32(i32 21, float %1249)  ; Exp(value)
  br label %1257

; <label>:1253                                    ; preds = %1215
  %1254 = fmul fast float %901, %901
  %1255 = fmul fast float %902, %902
  %1256 = fmul fast float %903, %903
  br label %1257

; <label>:1257                                    ; preds = %1253, %1219
  %1258 = phi float [ %1252, %1219 ], [ %1256, %1253 ]
  %1259 = phi float [ %1251, %1219 ], [ %1255, %1253 ]
  %1260 = phi float [ %1250, %1219 ], [ %1254, %1253 ]
  br i1 %924, label %1261, label %1295, !dx.controlflow.hints !15

; <label>:1261                                    ; preds = %1257
  %1262 = call float @dx.op.unary.f32(i32 23, float %910)  ; Log(value)
  %1263 = call float @dx.op.unary.f32(i32 23, float %911)  ; Log(value)
  %1264 = call float @dx.op.unary.f32(i32 23, float %912)  ; Log(value)
  %1265 = fmul fast float %1262, 0x3F89F9B580000000
  %1266 = fmul fast float %1263, 0x3F89F9B580000000
  %1267 = fmul fast float %1264, 0x3F89F9B580000000
  %1268 = call float @dx.op.unary.f32(i32 21, float %1265)  ; Exp(value)
  %1269 = call float @dx.op.unary.f32(i32 21, float %1266)  ; Exp(value)
  %1270 = call float @dx.op.unary.f32(i32 21, float %1267)  ; Exp(value)
  %1271 = fmul fast float %1268, 1.868750e+01
  %1272 = fmul fast float %1269, 1.868750e+01
  %1273 = fmul fast float %1270, 1.868750e+01
  %1274 = fsub fast float 0x4032DA0000000000, %1271
  %1275 = fsub fast float 0x4032DA0000000000, %1272
  %1276 = fsub fast float 0x4032DA0000000000, %1273
  %1277 = fadd fast float %1268, -8.359375e-01
  %1278 = fadd fast float %1269, -8.359375e-01
  %1279 = fadd fast float %1270, -8.359375e-01
  %1280 = call float @dx.op.binary.f32(i32 35, float %1277, float 0.000000e+00)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 35, float %1279, float 0.000000e+00)  ; FMax(a,b)
  %1283 = fdiv fast float %1280, %1274
  %1284 = fdiv fast float %1281, %1275
  %1285 = fdiv fast float %1282, %1276
  %1286 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %1287 = call float @dx.op.unary.f32(i32 23, float %1284)  ; Log(value)
  %1288 = call float @dx.op.unary.f32(i32 23, float %1285)  ; Log(value)
  %1289 = fmul fast float %1286, 0x40191C0D60000000
  %1290 = fmul fast float %1287, 0x40191C0D60000000
  %1291 = fmul fast float %1288, 0x40191C0D60000000
  %1292 = call float @dx.op.unary.f32(i32 21, float %1289)  ; Exp(value)
  %1293 = call float @dx.op.unary.f32(i32 21, float %1290)  ; Exp(value)
  %1294 = call float @dx.op.unary.f32(i32 21, float %1291)  ; Exp(value)
  br label %1299

; <label>:1295                                    ; preds = %1257
  %1296 = fmul fast float %910, %910
  %1297 = fmul fast float %911, %911
  %1298 = fmul fast float %912, %912
  br label %1299

; <label>:1299                                    ; preds = %1295, %1261
  %1300 = phi float [ %1294, %1261 ], [ %1298, %1295 ]
  %1301 = phi float [ %1293, %1261 ], [ %1297, %1295 ]
  %1302 = phi float [ %1292, %1261 ], [ %1296, %1295 ]
  br i1 %924, label %1303, label %1337, !dx.controlflow.hints !15

; <label>:1303                                    ; preds = %1299
  %1304 = call float @dx.op.unary.f32(i32 23, float %914)  ; Log(value)
  %1305 = call float @dx.op.unary.f32(i32 23, float %915)  ; Log(value)
  %1306 = call float @dx.op.unary.f32(i32 23, float %916)  ; Log(value)
  %1307 = fmul fast float %1304, 0x3F89F9B580000000
  %1308 = fmul fast float %1305, 0x3F89F9B580000000
  %1309 = fmul fast float %1306, 0x3F89F9B580000000
  %1310 = call float @dx.op.unary.f32(i32 21, float %1307)  ; Exp(value)
  %1311 = call float @dx.op.unary.f32(i32 21, float %1308)  ; Exp(value)
  %1312 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1313 = fmul fast float %1310, 1.868750e+01
  %1314 = fmul fast float %1311, 1.868750e+01
  %1315 = fmul fast float %1312, 1.868750e+01
  %1316 = fsub fast float 0x4032DA0000000000, %1313
  %1317 = fsub fast float 0x4032DA0000000000, %1314
  %1318 = fsub fast float 0x4032DA0000000000, %1315
  %1319 = fadd fast float %1310, -8.359375e-01
  %1320 = fadd fast float %1311, -8.359375e-01
  %1321 = fadd fast float %1312, -8.359375e-01
  %1322 = call float @dx.op.binary.f32(i32 35, float %1319, float 0.000000e+00)  ; FMax(a,b)
  %1323 = call float @dx.op.binary.f32(i32 35, float %1320, float 0.000000e+00)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1321, float 0.000000e+00)  ; FMax(a,b)
  %1325 = fdiv fast float %1322, %1316
  %1326 = fdiv fast float %1323, %1317
  %1327 = fdiv fast float %1324, %1318
  %1328 = call float @dx.op.unary.f32(i32 23, float %1325)  ; Log(value)
  %1329 = call float @dx.op.unary.f32(i32 23, float %1326)  ; Log(value)
  %1330 = call float @dx.op.unary.f32(i32 23, float %1327)  ; Log(value)
  %1331 = fmul fast float %1328, 0x40191C0D60000000
  %1332 = fmul fast float %1329, 0x40191C0D60000000
  %1333 = fmul fast float %1330, 0x40191C0D60000000
  %1334 = call float @dx.op.unary.f32(i32 21, float %1331)  ; Exp(value)
  %1335 = call float @dx.op.unary.f32(i32 21, float %1332)  ; Exp(value)
  %1336 = call float @dx.op.unary.f32(i32 21, float %1333)  ; Exp(value)
  br label %1341

; <label>:1337                                    ; preds = %1299
  %1338 = fmul fast float %914, %914
  %1339 = fmul fast float %915, %915
  %1340 = fmul fast float %916, %916
  br label %1341

; <label>:1341                                    ; preds = %1337, %1303
  %1342 = phi float [ %1336, %1303 ], [ %1340, %1337 ]
  %1343 = phi float [ %1335, %1303 ], [ %1339, %1337 ]
  %1344 = phi float [ %1334, %1303 ], [ %1338, %1337 ]
  br i1 %924, label %1345, label %1379, !dx.controlflow.hints !15

; <label>:1345                                    ; preds = %1341
  %1346 = call float @dx.op.unary.f32(i32 23, float %906)  ; Log(value)
  %1347 = call float @dx.op.unary.f32(i32 23, float %907)  ; Log(value)
  %1348 = call float @dx.op.unary.f32(i32 23, float %908)  ; Log(value)
  %1349 = fmul fast float %1346, 0x3F89F9B580000000
  %1350 = fmul fast float %1347, 0x3F89F9B580000000
  %1351 = fmul fast float %1348, 0x3F89F9B580000000
  %1352 = call float @dx.op.unary.f32(i32 21, float %1349)  ; Exp(value)
  %1353 = call float @dx.op.unary.f32(i32 21, float %1350)  ; Exp(value)
  %1354 = call float @dx.op.unary.f32(i32 21, float %1351)  ; Exp(value)
  %1355 = fmul fast float %1352, 1.868750e+01
  %1356 = fmul fast float %1353, 1.868750e+01
  %1357 = fmul fast float %1354, 1.868750e+01
  %1358 = fsub fast float 0x4032DA0000000000, %1355
  %1359 = fsub fast float 0x4032DA0000000000, %1356
  %1360 = fsub fast float 0x4032DA0000000000, %1357
  %1361 = fadd fast float %1352, -8.359375e-01
  %1362 = fadd fast float %1353, -8.359375e-01
  %1363 = fadd fast float %1354, -8.359375e-01
  %1364 = call float @dx.op.binary.f32(i32 35, float %1361, float 0.000000e+00)  ; FMax(a,b)
  %1365 = call float @dx.op.binary.f32(i32 35, float %1362, float 0.000000e+00)  ; FMax(a,b)
  %1366 = call float @dx.op.binary.f32(i32 35, float %1363, float 0.000000e+00)  ; FMax(a,b)
  %1367 = fdiv fast float %1364, %1358
  %1368 = fdiv fast float %1365, %1359
  %1369 = fdiv fast float %1366, %1360
  %1370 = call float @dx.op.unary.f32(i32 23, float %1367)  ; Log(value)
  %1371 = call float @dx.op.unary.f32(i32 23, float %1368)  ; Log(value)
  %1372 = call float @dx.op.unary.f32(i32 23, float %1369)  ; Log(value)
  %1373 = fmul fast float %1370, 0x40191C0D60000000
  %1374 = fmul fast float %1371, 0x40191C0D60000000
  %1375 = fmul fast float %1372, 0x40191C0D60000000
  %1376 = call float @dx.op.unary.f32(i32 21, float %1373)  ; Exp(value)
  %1377 = call float @dx.op.unary.f32(i32 21, float %1374)  ; Exp(value)
  %1378 = call float @dx.op.unary.f32(i32 21, float %1375)  ; Exp(value)
  br label %1383

; <label>:1379                                    ; preds = %1341
  %1380 = fmul fast float %906, %906
  %1381 = fmul fast float %907, %907
  %1382 = fmul fast float %908, %908
  br label %1383

; <label>:1383                                    ; preds = %1379, %1345
  %1384 = phi float [ %1378, %1345 ], [ %1382, %1379 ]
  %1385 = phi float [ %1377, %1345 ], [ %1381, %1379 ]
  %1386 = phi float [ %1376, %1345 ], [ %1380, %1379 ]
  br i1 %924, label %1387, label %1421, !dx.controlflow.hints !15

; <label>:1387                                    ; preds = %1383
  %1388 = call float @dx.op.unary.f32(i32 23, float %918)  ; Log(value)
  %1389 = call float @dx.op.unary.f32(i32 23, float %919)  ; Log(value)
  %1390 = call float @dx.op.unary.f32(i32 23, float %920)  ; Log(value)
  %1391 = fmul fast float %1388, 0x3F89F9B580000000
  %1392 = fmul fast float %1389, 0x3F89F9B580000000
  %1393 = fmul fast float %1390, 0x3F89F9B580000000
  %1394 = call float @dx.op.unary.f32(i32 21, float %1391)  ; Exp(value)
  %1395 = call float @dx.op.unary.f32(i32 21, float %1392)  ; Exp(value)
  %1396 = call float @dx.op.unary.f32(i32 21, float %1393)  ; Exp(value)
  %1397 = fmul fast float %1394, 1.868750e+01
  %1398 = fmul fast float %1395, 1.868750e+01
  %1399 = fmul fast float %1396, 1.868750e+01
  %1400 = fsub fast float 0x4032DA0000000000, %1397
  %1401 = fsub fast float 0x4032DA0000000000, %1398
  %1402 = fsub fast float 0x4032DA0000000000, %1399
  %1403 = fadd fast float %1394, -8.359375e-01
  %1404 = fadd fast float %1395, -8.359375e-01
  %1405 = fadd fast float %1396, -8.359375e-01
  %1406 = call float @dx.op.binary.f32(i32 35, float %1403, float 0.000000e+00)  ; FMax(a,b)
  %1407 = call float @dx.op.binary.f32(i32 35, float %1404, float 0.000000e+00)  ; FMax(a,b)
  %1408 = call float @dx.op.binary.f32(i32 35, float %1405, float 0.000000e+00)  ; FMax(a,b)
  %1409 = fdiv fast float %1406, %1400
  %1410 = fdiv fast float %1407, %1401
  %1411 = fdiv fast float %1408, %1402
  %1412 = call float @dx.op.unary.f32(i32 23, float %1409)  ; Log(value)
  %1413 = call float @dx.op.unary.f32(i32 23, float %1410)  ; Log(value)
  %1414 = call float @dx.op.unary.f32(i32 23, float %1411)  ; Log(value)
  %1415 = fmul fast float %1412, 0x40191C0D60000000
  %1416 = fmul fast float %1413, 0x40191C0D60000000
  %1417 = fmul fast float %1414, 0x40191C0D60000000
  %1418 = call float @dx.op.unary.f32(i32 21, float %1415)  ; Exp(value)
  %1419 = call float @dx.op.unary.f32(i32 21, float %1416)  ; Exp(value)
  %1420 = call float @dx.op.unary.f32(i32 21, float %1417)  ; Exp(value)
  br label %1425

; <label>:1421                                    ; preds = %1383
  %1422 = fmul fast float %918, %918
  %1423 = fmul fast float %919, %919
  %1424 = fmul fast float %920, %920
  br label %1425

; <label>:1425                                    ; preds = %1421, %1387
  %1426 = phi float [ %1420, %1387 ], [ %1424, %1421 ]
  %1427 = phi float [ %1419, %1387 ], [ %1423, %1421 ]
  %1428 = phi float [ %1418, %1387 ], [ %1422, %1421 ]
  %1429 = call float @dx.op.binary.f32(i32 36, float %1049, float %1091)  ; FMin(a,b)
  %1430 = call float @dx.op.binary.f32(i32 36, float %965, float %1429)  ; FMin(a,b)
  %1431 = call float @dx.op.binary.f32(i32 36, float %1133, float %1259)  ; FMin(a,b)
  %1432 = call float @dx.op.binary.f32(i32 36, float %1430, float %1431)  ; FMin(a,b)
  %1433 = call float @dx.op.binary.f32(i32 35, float %1049, float %1091)  ; FMax(a,b)
  %1434 = call float @dx.op.binary.f32(i32 35, float %965, float %1433)  ; FMax(a,b)
  %1435 = call float @dx.op.binary.f32(i32 35, float %1133, float %1259)  ; FMax(a,b)
  %1436 = call float @dx.op.binary.f32(i32 35, float %1434, float %1435)  ; FMax(a,b)
  %1437 = call float @dx.op.binary.f32(i32 36, float %1091, float %1133)  ; FMin(a,b)
  %1438 = call float @dx.op.binary.f32(i32 36, float %1007, float %1437)  ; FMin(a,b)
  %1439 = call float @dx.op.binary.f32(i32 36, float %1175, float %1301)  ; FMin(a,b)
  %1440 = call float @dx.op.binary.f32(i32 36, float %1438, float %1439)  ; FMin(a,b)
  %1441 = call float @dx.op.binary.f32(i32 35, float %1091, float %1133)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 35, float %1007, float %1441)  ; FMax(a,b)
  %1443 = call float @dx.op.binary.f32(i32 35, float %1175, float %1301)  ; FMax(a,b)
  %1444 = call float @dx.op.binary.f32(i32 35, float %1442, float %1443)  ; FMax(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1217, float %1259)  ; FMin(a,b)
  %1446 = call float @dx.op.binary.f32(i32 36, float %1091, float %1445)  ; FMin(a,b)
  %1447 = call float @dx.op.binary.f32(i32 36, float %1301, float %1385)  ; FMin(a,b)
  %1448 = call float @dx.op.binary.f32(i32 36, float %1446, float %1447)  ; FMin(a,b)
  %1449 = call float @dx.op.binary.f32(i32 35, float %1217, float %1259)  ; FMax(a,b)
  %1450 = call float @dx.op.binary.f32(i32 35, float %1091, float %1449)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1301, float %1385)  ; FMax(a,b)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1450, float %1451)  ; FMax(a,b)
  %1453 = call float @dx.op.binary.f32(i32 36, float %1259, float %1301)  ; FMin(a,b)
  %1454 = call float @dx.op.binary.f32(i32 36, float %1133, float %1453)  ; FMin(a,b)
  %1455 = call float @dx.op.binary.f32(i32 36, float %1343, float %1427)  ; FMin(a,b)
  %1456 = call float @dx.op.binary.f32(i32 36, float %1454, float %1455)  ; FMin(a,b)
  %1457 = call float @dx.op.binary.f32(i32 35, float %1259, float %1301)  ; FMax(a,b)
  %1458 = call float @dx.op.binary.f32(i32 35, float %1133, float %1457)  ; FMax(a,b)
  %1459 = call float @dx.op.binary.f32(i32 35, float %1343, float %1427)  ; FMax(a,b)
  %1460 = call float @dx.op.binary.f32(i32 35, float %1458, float %1459)  ; FMax(a,b)
  %1461 = bitcast float %1436 to i32
  %1462 = sub i32 2129690299, %1461
  %1463 = bitcast i32 %1462 to float
  %1464 = bitcast float %1444 to i32
  %1465 = sub i32 2129690299, %1464
  %1466 = bitcast i32 %1465 to float
  %1467 = bitcast float %1452 to i32
  %1468 = sub i32 2129690299, %1467
  %1469 = bitcast i32 %1468 to float
  %1470 = bitcast float %1460 to i32
  %1471 = sub i32 2129690299, %1470
  %1472 = bitcast i32 %1471 to float
  %1473 = fsub fast float 1.000000e+00, %1436
  %1474 = call float @dx.op.binary.f32(i32 36, float %1432, float %1473)  ; FMin(a,b)
  %1475 = fmul fast float %1474, %1463
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fsub fast float 1.000000e+00, %1444
  %1478 = call float @dx.op.binary.f32(i32 36, float %1440, float %1477)  ; FMin(a,b)
  %1479 = fmul fast float %1478, %1466
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1481 = fsub fast float 1.000000e+00, %1452
  %1482 = call float @dx.op.binary.f32(i32 36, float %1448, float %1481)  ; FMin(a,b)
  %1483 = fmul fast float %1482, %1469
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = fsub fast float 1.000000e+00, %1460
  %1486 = call float @dx.op.binary.f32(i32 36, float %1456, float %1485)  ; FMin(a,b)
  %1487 = fmul fast float %1486, %1472
  %1488 = call float @dx.op.unary.f32(i32 7, float %1487)  ; Saturate(value)
  %1489 = bitcast float %1476 to i32
  %1490 = lshr i32 %1489, 1
  %1491 = add nuw i32 %1490, 532432441
  %1492 = bitcast i32 %1491 to float
  %1493 = bitcast float %1480 to i32
  %1494 = lshr i32 %1493, 1
  %1495 = add nuw i32 %1494, 532432441
  %1496 = bitcast i32 %1495 to float
  %1497 = bitcast float %1484 to i32
  %1498 = lshr i32 %1497, 1
  %1499 = add nuw i32 %1498, 532432441
  %1500 = bitcast i32 %1499 to float
  %1501 = bitcast float %1488 to i32
  %1502 = lshr i32 %1501, 1
  %1503 = add nuw i32 %1502, 532432441
  %1504 = bitcast i32 %1503 to float
  %1505 = bitcast i32 %846 to float
  %1506 = fmul fast float %1492, %1505
  %1507 = fmul fast float %1496, %1505
  %1508 = fmul fast float %1500, %1505
  %1509 = fmul fast float %1504, %1505
  %1510 = fsub fast float 1.000000e+00, %863
  %1511 = fsub fast float 1.000000e+00, %864
  %1512 = fmul fast float %1510, %1511
  %1513 = fmul fast float %1511, %863
  %1514 = fmul fast float %1510, %864
  %1515 = fmul fast float %863, %864
  %1516 = fsub fast float 3.125000e-02, %1432
  %1517 = fadd fast float %1516, %1436
  %1518 = bitcast float %1517 to i32
  %1519 = sub i32 2129690299, %1518
  %1520 = bitcast i32 %1519 to float
  %1521 = fmul fast float %1512, %1520
  %1522 = fsub fast float 3.125000e-02, %1440
  %1523 = fadd fast float %1522, %1444
  %1524 = bitcast float %1523 to i32
  %1525 = sub i32 2129690299, %1524
  %1526 = bitcast i32 %1525 to float
  %1527 = fmul fast float %1513, %1526
  %1528 = fsub fast float 3.125000e-02, %1448
  %1529 = fadd fast float %1528, %1452
  %1530 = bitcast float %1529 to i32
  %1531 = sub i32 2129690299, %1530
  %1532 = bitcast i32 %1531 to float
  %1533 = fmul fast float %1514, %1532
  %1534 = fsub fast float 3.125000e-02, %1456
  %1535 = fadd fast float %1534, %1460
  %1536 = bitcast float %1535 to i32
  %1537 = sub i32 2129690299, %1536
  %1538 = bitcast i32 %1537 to float
  %1539 = fmul fast float %1515, %1538
  %1540 = fmul fast float %1506, %1521
  %1541 = fmul fast float %1507, %1527
  %1542 = fmul fast float %1508, %1533
  %1543 = fadd fast float %1541, %1521
  %1544 = fadd fast float %1543, %1542
  %1545 = fmul fast float %1509, %1539
  %1546 = fadd fast float %1540, %1527
  %1547 = fadd fast float %1546, %1545
  %1548 = fadd fast float %1540, %1533
  %1549 = fadd fast float %1548, %1545
  %1550 = fadd fast float %1541, %1539
  %1551 = fadd fast float %1550, %1542
  %1552 = fadd fast float %1541, %1540
  %1553 = fadd fast float %1552, %1542
  %1554 = fadd fast float %1553, %1545
  %1555 = fmul fast float %1554, 2.000000e+00
  %1556 = fadd fast float %1551, %1544
  %1557 = fadd fast float %1556, %1555
  %1558 = fadd fast float %1557, %1547
  %1559 = fadd fast float %1558, %1549
  %1560 = bitcast float %1559 to i32
  %1561 = sub i32 2129764351, %1560
  %1562 = bitcast i32 %1561 to float
  %1563 = fmul fast float %1562, %1559
  %1564 = fsub fast float 2.000000e+00, %1563
  %1565 = fmul fast float %1564, %1562
  %1566 = fadd fast float %1050, %966
  %1567 = fmul fast float %1540, %1566
  %1568 = fmul fast float %1544, %1092
  %1569 = fmul fast float %1547, %1134
  %1570 = fmul fast float %1549, %1260
  %1571 = fmul fast float %1551, %1302
  %1572 = fadd fast float %1428, %1344
  %1573 = fmul fast float %1545, %1572
  %1574 = fadd fast float %1386, %1218
  %1575 = fmul fast float %1542, %1574
  %1576 = fadd fast float %1176, %1008
  %1577 = fmul fast float %1541, %1576
  %1578 = fadd fast float %1568, %1567
  %1579 = fadd fast float %1578, %1571
  %1580 = fadd fast float %1579, %1569
  %1581 = fadd fast float %1580, %1570
  %1582 = fadd fast float %1581, %1573
  %1583 = fadd fast float %1582, %1575
  %1584 = fadd fast float %1583, %1577
  %1585 = fmul fast float %1565, %1584
  %1586 = call float @dx.op.unary.f32(i32 7, float %1585)  ; Saturate(value)
  %1587 = fadd fast float %1049, %965
  %1588 = fmul fast float %1540, %1587
  %1589 = fmul fast float %1544, %1091
  %1590 = fmul fast float %1547, %1133
  %1591 = fmul fast float %1549, %1259
  %1592 = fmul fast float %1551, %1301
  %1593 = fadd fast float %1427, %1343
  %1594 = fmul fast float %1545, %1593
  %1595 = fadd fast float %1385, %1217
  %1596 = fmul fast float %1542, %1595
  %1597 = fadd fast float %1175, %1007
  %1598 = fmul fast float %1541, %1597
  %1599 = fadd fast float %1589, %1588
  %1600 = fadd fast float %1599, %1592
  %1601 = fadd fast float %1600, %1590
  %1602 = fadd fast float %1601, %1591
  %1603 = fadd fast float %1602, %1594
  %1604 = fadd fast float %1603, %1596
  %1605 = fadd fast float %1604, %1598
  %1606 = fmul fast float %1565, %1605
  %1607 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1608 = fadd fast float %1048, %964
  %1609 = fmul fast float %1540, %1608
  %1610 = fmul fast float %1544, %1090
  %1611 = fmul fast float %1547, %1132
  %1612 = fmul fast float %1549, %1258
  %1613 = fmul fast float %1551, %1300
  %1614 = fadd fast float %1426, %1342
  %1615 = fmul fast float %1545, %1614
  %1616 = fadd fast float %1384, %1216
  %1617 = fmul fast float %1542, %1616
  %1618 = fadd fast float %1174, %1006
  %1619 = fmul fast float %1541, %1618
  %1620 = fadd fast float %1610, %1609
  %1621 = fadd fast float %1620, %1613
  %1622 = fadd fast float %1621, %1611
  %1623 = fadd fast float %1622, %1612
  %1624 = fadd fast float %1623, %1615
  %1625 = fadd fast float %1624, %1617
  %1626 = fadd fast float %1625, %1619
  %1627 = fmul fast float %1565, %1626
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  br i1 %924, label %1629, label %1663, !dx.controlflow.hints !16

; <label>:1629                                    ; preds = %1425
  %1630 = call float @dx.op.unary.f32(i32 23, float %1586)  ; Log(value)
  %1631 = call float @dx.op.unary.f32(i32 23, float %1607)  ; Log(value)
  %1632 = call float @dx.op.unary.f32(i32 23, float %1628)  ; Log(value)
  %1633 = fmul fast float %1630, 0x3FC4640000000000
  %1634 = fmul fast float %1631, 0x3FC4640000000000
  %1635 = fmul fast float %1632, 0x3FC4640000000000
  %1636 = call float @dx.op.unary.f32(i32 21, float %1633)  ; Exp(value)
  %1637 = call float @dx.op.unary.f32(i32 21, float %1634)  ; Exp(value)
  %1638 = call float @dx.op.unary.f32(i32 21, float %1635)  ; Exp(value)
  %1639 = fmul fast float %1636, 0x4032DA0000000000
  %1640 = fmul fast float %1637, 0x4032DA0000000000
  %1641 = fmul fast float %1638, 0x4032DA0000000000
  %1642 = fadd fast float %1639, 8.359375e-01
  %1643 = fadd fast float %1640, 8.359375e-01
  %1644 = fadd fast float %1641, 8.359375e-01
  %1645 = fmul fast float %1636, 1.868750e+01
  %1646 = fmul fast float %1637, 1.868750e+01
  %1647 = fmul fast float %1638, 1.868750e+01
  %1648 = fadd fast float %1645, 1.000000e+00
  %1649 = fadd fast float %1646, 1.000000e+00
  %1650 = fadd fast float %1647, 1.000000e+00
  %1651 = fdiv fast float %1642, %1648
  %1652 = fdiv fast float %1643, %1649
  %1653 = fdiv fast float %1644, %1650
  %1654 = call float @dx.op.unary.f32(i32 23, float %1651)  ; Log(value)
  %1655 = call float @dx.op.unary.f32(i32 23, float %1652)  ; Log(value)
  %1656 = call float @dx.op.unary.f32(i32 23, float %1653)  ; Log(value)
  %1657 = fmul fast float %1654, 7.884375e+01
  %1658 = fmul fast float %1655, 7.884375e+01
  %1659 = fmul fast float %1656, 7.884375e+01
  %1660 = call float @dx.op.unary.f32(i32 21, float %1657)  ; Exp(value)
  %1661 = call float @dx.op.unary.f32(i32 21, float %1658)  ; Exp(value)
  %1662 = call float @dx.op.unary.f32(i32 21, float %1659)  ; Exp(value)
  br label %1667

; <label>:1663                                    ; preds = %1425
  %1664 = call float @dx.op.unary.f32(i32 24, float %1586)  ; Sqrt(value)
  %1665 = call float @dx.op.unary.f32(i32 24, float %1607)  ; Sqrt(value)
  %1666 = call float @dx.op.unary.f32(i32 24, float %1628)  ; Sqrt(value)
  br label %1667

; <label>:1667                                    ; preds = %1663, %1629
  %1668 = phi float [ %1660, %1629 ], [ %1664, %1663 ]
  %1669 = phi float [ %1661, %1629 ], [ %1665, %1663 ]
  %1670 = phi float [ %1662, %1629 ], [ %1666, %1663 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %844, i32 %16, i32 undef, float %1668, float %1669, float %1670, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1671 = or i32 %16, 8
  %1672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.i32 %1672, 0
  %1674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.i32 %1674, 0
  %1676 = extractvalue %dx.types.CBufRet.i32 %1674, 1
  %1677 = extractvalue %dx.types.CBufRet.i32 %1674, 2
  %1678 = extractvalue %dx.types.CBufRet.i32 %1674, 3
  %1679 = uitofp i32 %1671 to float
  %1680 = bitcast i32 %1675 to float
  %1681 = bitcast i32 %1676 to float
  %1682 = fmul fast float %1680, %852
  %1683 = fmul fast float %1681, %1679
  %1684 = bitcast i32 %1677 to float
  %1685 = bitcast i32 %1678 to float
  %1686 = fadd fast float %1682, %1684
  %1687 = fadd fast float %1683, %1685
  %1688 = call float @dx.op.unary.f32(i32 27, float %1686)  ; Round_ni(value)
  %1689 = call float @dx.op.unary.f32(i32 27, float %1687)  ; Round_ni(value)
  %1690 = fsub fast float %1686, %1688
  %1691 = fsub fast float %1687, %1689
  %1692 = fptosi float %1688 to i32
  %1693 = fptosi float %1689 to i32
  %1694 = add i32 %1693, -1
  %1695 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1692, i32 %1694, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1696 = extractvalue %dx.types.ResRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.ResRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.ResRet.f32 %1695, 2
  %1699 = add i32 %1692, -1
  %1700 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1699, i32 %1693, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.ResRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.ResRet.f32 %1700, 2
  %1704 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1692, i32 %1693, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.ResRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.ResRet.f32 %1704, 2
  %1708 = add i32 %1692, 1
  %1709 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1708, i32 %1694, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1710 = extractvalue %dx.types.ResRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.ResRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.ResRet.f32 %1709, 2
  %1713 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1708, i32 %1693, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1717 = add i32 %1692, 2
  %1718 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1717, i32 %1693, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = add i32 %1693, 1
  %1723 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1699, i32 %1722, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1724 = extractvalue %dx.types.ResRet.f32 %1723, 0
  %1725 = extractvalue %dx.types.ResRet.f32 %1723, 1
  %1726 = extractvalue %dx.types.ResRet.f32 %1723, 2
  %1727 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1692, i32 %1722, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1728 = extractvalue %dx.types.ResRet.f32 %1727, 0
  %1729 = extractvalue %dx.types.ResRet.f32 %1727, 1
  %1730 = extractvalue %dx.types.ResRet.f32 %1727, 2
  %1731 = add i32 %1693, 2
  %1732 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1692, i32 %1731, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.ResRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.ResRet.f32 %1732, 2
  %1736 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1708, i32 %1722, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.ResRet.f32 %1736, 2
  %1740 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1717, i32 %1722, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1741 = extractvalue %dx.types.ResRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.ResRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.ResRet.f32 %1740, 2
  %1744 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %1708, i32 %1731, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1745 = extractvalue %dx.types.ResRet.f32 %1744, 0
  %1746 = extractvalue %dx.types.ResRet.f32 %1744, 1
  %1747 = extractvalue %dx.types.ResRet.f32 %1744, 2
  %1748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.i32 %1748, 0
  %1750 = add i32 %1749, -3
  %1751 = icmp ult i32 %1750, 2
  br i1 %1751, label %1752, label %1786, !dx.controlflow.hints !15

; <label>:1752                                    ; preds = %1667
  %1753 = call float @dx.op.unary.f32(i32 23, float %1696)  ; Log(value)
  %1754 = call float @dx.op.unary.f32(i32 23, float %1697)  ; Log(value)
  %1755 = call float @dx.op.unary.f32(i32 23, float %1698)  ; Log(value)
  %1756 = fmul fast float %1753, 0x3F89F9B580000000
  %1757 = fmul fast float %1754, 0x3F89F9B580000000
  %1758 = fmul fast float %1755, 0x3F89F9B580000000
  %1759 = call float @dx.op.unary.f32(i32 21, float %1756)  ; Exp(value)
  %1760 = call float @dx.op.unary.f32(i32 21, float %1757)  ; Exp(value)
  %1761 = call float @dx.op.unary.f32(i32 21, float %1758)  ; Exp(value)
  %1762 = fmul fast float %1759, 1.868750e+01
  %1763 = fmul fast float %1760, 1.868750e+01
  %1764 = fmul fast float %1761, 1.868750e+01
  %1765 = fsub fast float 0x4032DA0000000000, %1762
  %1766 = fsub fast float 0x4032DA0000000000, %1763
  %1767 = fsub fast float 0x4032DA0000000000, %1764
  %1768 = fadd fast float %1759, -8.359375e-01
  %1769 = fadd fast float %1760, -8.359375e-01
  %1770 = fadd fast float %1761, -8.359375e-01
  %1771 = call float @dx.op.binary.f32(i32 35, float %1768, float 0.000000e+00)  ; FMax(a,b)
  %1772 = call float @dx.op.binary.f32(i32 35, float %1769, float 0.000000e+00)  ; FMax(a,b)
  %1773 = call float @dx.op.binary.f32(i32 35, float %1770, float 0.000000e+00)  ; FMax(a,b)
  %1774 = fdiv fast float %1771, %1765
  %1775 = fdiv fast float %1772, %1766
  %1776 = fdiv fast float %1773, %1767
  %1777 = call float @dx.op.unary.f32(i32 23, float %1774)  ; Log(value)
  %1778 = call float @dx.op.unary.f32(i32 23, float %1775)  ; Log(value)
  %1779 = call float @dx.op.unary.f32(i32 23, float %1776)  ; Log(value)
  %1780 = fmul fast float %1777, 0x40191C0D60000000
  %1781 = fmul fast float %1778, 0x40191C0D60000000
  %1782 = fmul fast float %1779, 0x40191C0D60000000
  %1783 = call float @dx.op.unary.f32(i32 21, float %1780)  ; Exp(value)
  %1784 = call float @dx.op.unary.f32(i32 21, float %1781)  ; Exp(value)
  %1785 = call float @dx.op.unary.f32(i32 21, float %1782)  ; Exp(value)
  br label %1790

; <label>:1786                                    ; preds = %1667
  %1787 = fmul fast float %1696, %1696
  %1788 = fmul fast float %1697, %1697
  %1789 = fmul fast float %1698, %1698
  br label %1790

; <label>:1790                                    ; preds = %1786, %1752
  %1791 = phi float [ %1785, %1752 ], [ %1789, %1786 ]
  %1792 = phi float [ %1784, %1752 ], [ %1788, %1786 ]
  %1793 = phi float [ %1783, %1752 ], [ %1787, %1786 ]
  br i1 %1751, label %1794, label %1828, !dx.controlflow.hints !15

; <label>:1794                                    ; preds = %1790
  %1795 = call float @dx.op.unary.f32(i32 23, float %1710)  ; Log(value)
  %1796 = call float @dx.op.unary.f32(i32 23, float %1711)  ; Log(value)
  %1797 = call float @dx.op.unary.f32(i32 23, float %1712)  ; Log(value)
  %1798 = fmul fast float %1795, 0x3F89F9B580000000
  %1799 = fmul fast float %1796, 0x3F89F9B580000000
  %1800 = fmul fast float %1797, 0x3F89F9B580000000
  %1801 = call float @dx.op.unary.f32(i32 21, float %1798)  ; Exp(value)
  %1802 = call float @dx.op.unary.f32(i32 21, float %1799)  ; Exp(value)
  %1803 = call float @dx.op.unary.f32(i32 21, float %1800)  ; Exp(value)
  %1804 = fmul fast float %1801, 1.868750e+01
  %1805 = fmul fast float %1802, 1.868750e+01
  %1806 = fmul fast float %1803, 1.868750e+01
  %1807 = fsub fast float 0x4032DA0000000000, %1804
  %1808 = fsub fast float 0x4032DA0000000000, %1805
  %1809 = fsub fast float 0x4032DA0000000000, %1806
  %1810 = fadd fast float %1801, -8.359375e-01
  %1811 = fadd fast float %1802, -8.359375e-01
  %1812 = fadd fast float %1803, -8.359375e-01
  %1813 = call float @dx.op.binary.f32(i32 35, float %1810, float 0.000000e+00)  ; FMax(a,b)
  %1814 = call float @dx.op.binary.f32(i32 35, float %1811, float 0.000000e+00)  ; FMax(a,b)
  %1815 = call float @dx.op.binary.f32(i32 35, float %1812, float 0.000000e+00)  ; FMax(a,b)
  %1816 = fdiv fast float %1813, %1807
  %1817 = fdiv fast float %1814, %1808
  %1818 = fdiv fast float %1815, %1809
  %1819 = call float @dx.op.unary.f32(i32 23, float %1816)  ; Log(value)
  %1820 = call float @dx.op.unary.f32(i32 23, float %1817)  ; Log(value)
  %1821 = call float @dx.op.unary.f32(i32 23, float %1818)  ; Log(value)
  %1822 = fmul fast float %1819, 0x40191C0D60000000
  %1823 = fmul fast float %1820, 0x40191C0D60000000
  %1824 = fmul fast float %1821, 0x40191C0D60000000
  %1825 = call float @dx.op.unary.f32(i32 21, float %1822)  ; Exp(value)
  %1826 = call float @dx.op.unary.f32(i32 21, float %1823)  ; Exp(value)
  %1827 = call float @dx.op.unary.f32(i32 21, float %1824)  ; Exp(value)
  br label %1832

; <label>:1828                                    ; preds = %1790
  %1829 = fmul fast float %1710, %1710
  %1830 = fmul fast float %1711, %1711
  %1831 = fmul fast float %1712, %1712
  br label %1832

; <label>:1832                                    ; preds = %1828, %1794
  %1833 = phi float [ %1827, %1794 ], [ %1831, %1828 ]
  %1834 = phi float [ %1826, %1794 ], [ %1830, %1828 ]
  %1835 = phi float [ %1825, %1794 ], [ %1829, %1828 ]
  br i1 %1751, label %1836, label %1870, !dx.controlflow.hints !15

; <label>:1836                                    ; preds = %1832
  %1837 = call float @dx.op.unary.f32(i32 23, float %1701)  ; Log(value)
  %1838 = call float @dx.op.unary.f32(i32 23, float %1702)  ; Log(value)
  %1839 = call float @dx.op.unary.f32(i32 23, float %1703)  ; Log(value)
  %1840 = fmul fast float %1837, 0x3F89F9B580000000
  %1841 = fmul fast float %1838, 0x3F89F9B580000000
  %1842 = fmul fast float %1839, 0x3F89F9B580000000
  %1843 = call float @dx.op.unary.f32(i32 21, float %1840)  ; Exp(value)
  %1844 = call float @dx.op.unary.f32(i32 21, float %1841)  ; Exp(value)
  %1845 = call float @dx.op.unary.f32(i32 21, float %1842)  ; Exp(value)
  %1846 = fmul fast float %1843, 1.868750e+01
  %1847 = fmul fast float %1844, 1.868750e+01
  %1848 = fmul fast float %1845, 1.868750e+01
  %1849 = fsub fast float 0x4032DA0000000000, %1846
  %1850 = fsub fast float 0x4032DA0000000000, %1847
  %1851 = fsub fast float 0x4032DA0000000000, %1848
  %1852 = fadd fast float %1843, -8.359375e-01
  %1853 = fadd fast float %1844, -8.359375e-01
  %1854 = fadd fast float %1845, -8.359375e-01
  %1855 = call float @dx.op.binary.f32(i32 35, float %1852, float 0.000000e+00)  ; FMax(a,b)
  %1856 = call float @dx.op.binary.f32(i32 35, float %1853, float 0.000000e+00)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 35, float %1854, float 0.000000e+00)  ; FMax(a,b)
  %1858 = fdiv fast float %1855, %1849
  %1859 = fdiv fast float %1856, %1850
  %1860 = fdiv fast float %1857, %1851
  %1861 = call float @dx.op.unary.f32(i32 23, float %1858)  ; Log(value)
  %1862 = call float @dx.op.unary.f32(i32 23, float %1859)  ; Log(value)
  %1863 = call float @dx.op.unary.f32(i32 23, float %1860)  ; Log(value)
  %1864 = fmul fast float %1861, 0x40191C0D60000000
  %1865 = fmul fast float %1862, 0x40191C0D60000000
  %1866 = fmul fast float %1863, 0x40191C0D60000000
  %1867 = call float @dx.op.unary.f32(i32 21, float %1864)  ; Exp(value)
  %1868 = call float @dx.op.unary.f32(i32 21, float %1865)  ; Exp(value)
  %1869 = call float @dx.op.unary.f32(i32 21, float %1866)  ; Exp(value)
  br label %1874

; <label>:1870                                    ; preds = %1832
  %1871 = fmul fast float %1701, %1701
  %1872 = fmul fast float %1702, %1702
  %1873 = fmul fast float %1703, %1703
  br label %1874

; <label>:1874                                    ; preds = %1870, %1836
  %1875 = phi float [ %1869, %1836 ], [ %1873, %1870 ]
  %1876 = phi float [ %1868, %1836 ], [ %1872, %1870 ]
  %1877 = phi float [ %1867, %1836 ], [ %1871, %1870 ]
  br i1 %1751, label %1878, label %1912, !dx.controlflow.hints !15

; <label>:1878                                    ; preds = %1874
  %1879 = call float @dx.op.unary.f32(i32 23, float %1705)  ; Log(value)
  %1880 = call float @dx.op.unary.f32(i32 23, float %1706)  ; Log(value)
  %1881 = call float @dx.op.unary.f32(i32 23, float %1707)  ; Log(value)
  %1882 = fmul fast float %1879, 0x3F89F9B580000000
  %1883 = fmul fast float %1880, 0x3F89F9B580000000
  %1884 = fmul fast float %1881, 0x3F89F9B580000000
  %1885 = call float @dx.op.unary.f32(i32 21, float %1882)  ; Exp(value)
  %1886 = call float @dx.op.unary.f32(i32 21, float %1883)  ; Exp(value)
  %1887 = call float @dx.op.unary.f32(i32 21, float %1884)  ; Exp(value)
  %1888 = fmul fast float %1885, 1.868750e+01
  %1889 = fmul fast float %1886, 1.868750e+01
  %1890 = fmul fast float %1887, 1.868750e+01
  %1891 = fsub fast float 0x4032DA0000000000, %1888
  %1892 = fsub fast float 0x4032DA0000000000, %1889
  %1893 = fsub fast float 0x4032DA0000000000, %1890
  %1894 = fadd fast float %1885, -8.359375e-01
  %1895 = fadd fast float %1886, -8.359375e-01
  %1896 = fadd fast float %1887, -8.359375e-01
  %1897 = call float @dx.op.binary.f32(i32 35, float %1894, float 0.000000e+00)  ; FMax(a,b)
  %1898 = call float @dx.op.binary.f32(i32 35, float %1895, float 0.000000e+00)  ; FMax(a,b)
  %1899 = call float @dx.op.binary.f32(i32 35, float %1896, float 0.000000e+00)  ; FMax(a,b)
  %1900 = fdiv fast float %1897, %1891
  %1901 = fdiv fast float %1898, %1892
  %1902 = fdiv fast float %1899, %1893
  %1903 = call float @dx.op.unary.f32(i32 23, float %1900)  ; Log(value)
  %1904 = call float @dx.op.unary.f32(i32 23, float %1901)  ; Log(value)
  %1905 = call float @dx.op.unary.f32(i32 23, float %1902)  ; Log(value)
  %1906 = fmul fast float %1903, 0x40191C0D60000000
  %1907 = fmul fast float %1904, 0x40191C0D60000000
  %1908 = fmul fast float %1905, 0x40191C0D60000000
  %1909 = call float @dx.op.unary.f32(i32 21, float %1906)  ; Exp(value)
  %1910 = call float @dx.op.unary.f32(i32 21, float %1907)  ; Exp(value)
  %1911 = call float @dx.op.unary.f32(i32 21, float %1908)  ; Exp(value)
  br label %1916

; <label>:1912                                    ; preds = %1874
  %1913 = fmul fast float %1705, %1705
  %1914 = fmul fast float %1706, %1706
  %1915 = fmul fast float %1707, %1707
  br label %1916

; <label>:1916                                    ; preds = %1912, %1878
  %1917 = phi float [ %1911, %1878 ], [ %1915, %1912 ]
  %1918 = phi float [ %1910, %1878 ], [ %1914, %1912 ]
  %1919 = phi float [ %1909, %1878 ], [ %1913, %1912 ]
  br i1 %1751, label %1920, label %1954, !dx.controlflow.hints !15

; <label>:1920                                    ; preds = %1916
  %1921 = call float @dx.op.unary.f32(i32 23, float %1714)  ; Log(value)
  %1922 = call float @dx.op.unary.f32(i32 23, float %1715)  ; Log(value)
  %1923 = call float @dx.op.unary.f32(i32 23, float %1716)  ; Log(value)
  %1924 = fmul fast float %1921, 0x3F89F9B580000000
  %1925 = fmul fast float %1922, 0x3F89F9B580000000
  %1926 = fmul fast float %1923, 0x3F89F9B580000000
  %1927 = call float @dx.op.unary.f32(i32 21, float %1924)  ; Exp(value)
  %1928 = call float @dx.op.unary.f32(i32 21, float %1925)  ; Exp(value)
  %1929 = call float @dx.op.unary.f32(i32 21, float %1926)  ; Exp(value)
  %1930 = fmul fast float %1927, 1.868750e+01
  %1931 = fmul fast float %1928, 1.868750e+01
  %1932 = fmul fast float %1929, 1.868750e+01
  %1933 = fsub fast float 0x4032DA0000000000, %1930
  %1934 = fsub fast float 0x4032DA0000000000, %1931
  %1935 = fsub fast float 0x4032DA0000000000, %1932
  %1936 = fadd fast float %1927, -8.359375e-01
  %1937 = fadd fast float %1928, -8.359375e-01
  %1938 = fadd fast float %1929, -8.359375e-01
  %1939 = call float @dx.op.binary.f32(i32 35, float %1936, float 0.000000e+00)  ; FMax(a,b)
  %1940 = call float @dx.op.binary.f32(i32 35, float %1937, float 0.000000e+00)  ; FMax(a,b)
  %1941 = call float @dx.op.binary.f32(i32 35, float %1938, float 0.000000e+00)  ; FMax(a,b)
  %1942 = fdiv fast float %1939, %1933
  %1943 = fdiv fast float %1940, %1934
  %1944 = fdiv fast float %1941, %1935
  %1945 = call float @dx.op.unary.f32(i32 23, float %1942)  ; Log(value)
  %1946 = call float @dx.op.unary.f32(i32 23, float %1943)  ; Log(value)
  %1947 = call float @dx.op.unary.f32(i32 23, float %1944)  ; Log(value)
  %1948 = fmul fast float %1945, 0x40191C0D60000000
  %1949 = fmul fast float %1946, 0x40191C0D60000000
  %1950 = fmul fast float %1947, 0x40191C0D60000000
  %1951 = call float @dx.op.unary.f32(i32 21, float %1948)  ; Exp(value)
  %1952 = call float @dx.op.unary.f32(i32 21, float %1949)  ; Exp(value)
  %1953 = call float @dx.op.unary.f32(i32 21, float %1950)  ; Exp(value)
  br label %1958

; <label>:1954                                    ; preds = %1916
  %1955 = fmul fast float %1714, %1714
  %1956 = fmul fast float %1715, %1715
  %1957 = fmul fast float %1716, %1716
  br label %1958

; <label>:1958                                    ; preds = %1954, %1920
  %1959 = phi float [ %1953, %1920 ], [ %1957, %1954 ]
  %1960 = phi float [ %1952, %1920 ], [ %1956, %1954 ]
  %1961 = phi float [ %1951, %1920 ], [ %1955, %1954 ]
  br i1 %1751, label %1962, label %1996, !dx.controlflow.hints !15

; <label>:1962                                    ; preds = %1958
  %1963 = call float @dx.op.unary.f32(i32 23, float %1719)  ; Log(value)
  %1964 = call float @dx.op.unary.f32(i32 23, float %1720)  ; Log(value)
  %1965 = call float @dx.op.unary.f32(i32 23, float %1721)  ; Log(value)
  %1966 = fmul fast float %1963, 0x3F89F9B580000000
  %1967 = fmul fast float %1964, 0x3F89F9B580000000
  %1968 = fmul fast float %1965, 0x3F89F9B580000000
  %1969 = call float @dx.op.unary.f32(i32 21, float %1966)  ; Exp(value)
  %1970 = call float @dx.op.unary.f32(i32 21, float %1967)  ; Exp(value)
  %1971 = call float @dx.op.unary.f32(i32 21, float %1968)  ; Exp(value)
  %1972 = fmul fast float %1969, 1.868750e+01
  %1973 = fmul fast float %1970, 1.868750e+01
  %1974 = fmul fast float %1971, 1.868750e+01
  %1975 = fsub fast float 0x4032DA0000000000, %1972
  %1976 = fsub fast float 0x4032DA0000000000, %1973
  %1977 = fsub fast float 0x4032DA0000000000, %1974
  %1978 = fadd fast float %1969, -8.359375e-01
  %1979 = fadd fast float %1970, -8.359375e-01
  %1980 = fadd fast float %1971, -8.359375e-01
  %1981 = call float @dx.op.binary.f32(i32 35, float %1978, float 0.000000e+00)  ; FMax(a,b)
  %1982 = call float @dx.op.binary.f32(i32 35, float %1979, float 0.000000e+00)  ; FMax(a,b)
  %1983 = call float @dx.op.binary.f32(i32 35, float %1980, float 0.000000e+00)  ; FMax(a,b)
  %1984 = fdiv fast float %1981, %1975
  %1985 = fdiv fast float %1982, %1976
  %1986 = fdiv fast float %1983, %1977
  %1987 = call float @dx.op.unary.f32(i32 23, float %1984)  ; Log(value)
  %1988 = call float @dx.op.unary.f32(i32 23, float %1985)  ; Log(value)
  %1989 = call float @dx.op.unary.f32(i32 23, float %1986)  ; Log(value)
  %1990 = fmul fast float %1987, 0x40191C0D60000000
  %1991 = fmul fast float %1988, 0x40191C0D60000000
  %1992 = fmul fast float %1989, 0x40191C0D60000000
  %1993 = call float @dx.op.unary.f32(i32 21, float %1990)  ; Exp(value)
  %1994 = call float @dx.op.unary.f32(i32 21, float %1991)  ; Exp(value)
  %1995 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  br label %2000

; <label>:1996                                    ; preds = %1958
  %1997 = fmul fast float %1719, %1719
  %1998 = fmul fast float %1720, %1720
  %1999 = fmul fast float %1721, %1721
  br label %2000

; <label>:2000                                    ; preds = %1996, %1962
  %2001 = phi float [ %1995, %1962 ], [ %1999, %1996 ]
  %2002 = phi float [ %1994, %1962 ], [ %1998, %1996 ]
  %2003 = phi float [ %1993, %1962 ], [ %1997, %1996 ]
  br i1 %1751, label %2004, label %2038, !dx.controlflow.hints !15

; <label>:2004                                    ; preds = %2000
  %2005 = call float @dx.op.unary.f32(i32 23, float %1724)  ; Log(value)
  %2006 = call float @dx.op.unary.f32(i32 23, float %1725)  ; Log(value)
  %2007 = call float @dx.op.unary.f32(i32 23, float %1726)  ; Log(value)
  %2008 = fmul fast float %2005, 0x3F89F9B580000000
  %2009 = fmul fast float %2006, 0x3F89F9B580000000
  %2010 = fmul fast float %2007, 0x3F89F9B580000000
  %2011 = call float @dx.op.unary.f32(i32 21, float %2008)  ; Exp(value)
  %2012 = call float @dx.op.unary.f32(i32 21, float %2009)  ; Exp(value)
  %2013 = call float @dx.op.unary.f32(i32 21, float %2010)  ; Exp(value)
  %2014 = fmul fast float %2011, 1.868750e+01
  %2015 = fmul fast float %2012, 1.868750e+01
  %2016 = fmul fast float %2013, 1.868750e+01
  %2017 = fsub fast float 0x4032DA0000000000, %2014
  %2018 = fsub fast float 0x4032DA0000000000, %2015
  %2019 = fsub fast float 0x4032DA0000000000, %2016
  %2020 = fadd fast float %2011, -8.359375e-01
  %2021 = fadd fast float %2012, -8.359375e-01
  %2022 = fadd fast float %2013, -8.359375e-01
  %2023 = call float @dx.op.binary.f32(i32 35, float %2020, float 0.000000e+00)  ; FMax(a,b)
  %2024 = call float @dx.op.binary.f32(i32 35, float %2021, float 0.000000e+00)  ; FMax(a,b)
  %2025 = call float @dx.op.binary.f32(i32 35, float %2022, float 0.000000e+00)  ; FMax(a,b)
  %2026 = fdiv fast float %2023, %2017
  %2027 = fdiv fast float %2024, %2018
  %2028 = fdiv fast float %2025, %2019
  %2029 = call float @dx.op.unary.f32(i32 23, float %2026)  ; Log(value)
  %2030 = call float @dx.op.unary.f32(i32 23, float %2027)  ; Log(value)
  %2031 = call float @dx.op.unary.f32(i32 23, float %2028)  ; Log(value)
  %2032 = fmul fast float %2029, 0x40191C0D60000000
  %2033 = fmul fast float %2030, 0x40191C0D60000000
  %2034 = fmul fast float %2031, 0x40191C0D60000000
  %2035 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 21, float %2033)  ; Exp(value)
  %2037 = call float @dx.op.unary.f32(i32 21, float %2034)  ; Exp(value)
  br label %2042

; <label>:2038                                    ; preds = %2000
  %2039 = fmul fast float %1724, %1724
  %2040 = fmul fast float %1725, %1725
  %2041 = fmul fast float %1726, %1726
  br label %2042

; <label>:2042                                    ; preds = %2038, %2004
  %2043 = phi float [ %2037, %2004 ], [ %2041, %2038 ]
  %2044 = phi float [ %2036, %2004 ], [ %2040, %2038 ]
  %2045 = phi float [ %2035, %2004 ], [ %2039, %2038 ]
  br i1 %1751, label %2046, label %2080, !dx.controlflow.hints !15

; <label>:2046                                    ; preds = %2042
  %2047 = call float @dx.op.unary.f32(i32 23, float %1728)  ; Log(value)
  %2048 = call float @dx.op.unary.f32(i32 23, float %1729)  ; Log(value)
  %2049 = call float @dx.op.unary.f32(i32 23, float %1730)  ; Log(value)
  %2050 = fmul fast float %2047, 0x3F89F9B580000000
  %2051 = fmul fast float %2048, 0x3F89F9B580000000
  %2052 = fmul fast float %2049, 0x3F89F9B580000000
  %2053 = call float @dx.op.unary.f32(i32 21, float %2050)  ; Exp(value)
  %2054 = call float @dx.op.unary.f32(i32 21, float %2051)  ; Exp(value)
  %2055 = call float @dx.op.unary.f32(i32 21, float %2052)  ; Exp(value)
  %2056 = fmul fast float %2053, 1.868750e+01
  %2057 = fmul fast float %2054, 1.868750e+01
  %2058 = fmul fast float %2055, 1.868750e+01
  %2059 = fsub fast float 0x4032DA0000000000, %2056
  %2060 = fsub fast float 0x4032DA0000000000, %2057
  %2061 = fsub fast float 0x4032DA0000000000, %2058
  %2062 = fadd fast float %2053, -8.359375e-01
  %2063 = fadd fast float %2054, -8.359375e-01
  %2064 = fadd fast float %2055, -8.359375e-01
  %2065 = call float @dx.op.binary.f32(i32 35, float %2062, float 0.000000e+00)  ; FMax(a,b)
  %2066 = call float @dx.op.binary.f32(i32 35, float %2063, float 0.000000e+00)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float %2064, float 0.000000e+00)  ; FMax(a,b)
  %2068 = fdiv fast float %2065, %2059
  %2069 = fdiv fast float %2066, %2060
  %2070 = fdiv fast float %2067, %2061
  %2071 = call float @dx.op.unary.f32(i32 23, float %2068)  ; Log(value)
  %2072 = call float @dx.op.unary.f32(i32 23, float %2069)  ; Log(value)
  %2073 = call float @dx.op.unary.f32(i32 23, float %2070)  ; Log(value)
  %2074 = fmul fast float %2071, 0x40191C0D60000000
  %2075 = fmul fast float %2072, 0x40191C0D60000000
  %2076 = fmul fast float %2073, 0x40191C0D60000000
  %2077 = call float @dx.op.unary.f32(i32 21, float %2074)  ; Exp(value)
  %2078 = call float @dx.op.unary.f32(i32 21, float %2075)  ; Exp(value)
  %2079 = call float @dx.op.unary.f32(i32 21, float %2076)  ; Exp(value)
  br label %2084

; <label>:2080                                    ; preds = %2042
  %2081 = fmul fast float %1728, %1728
  %2082 = fmul fast float %1729, %1729
  %2083 = fmul fast float %1730, %1730
  br label %2084

; <label>:2084                                    ; preds = %2080, %2046
  %2085 = phi float [ %2079, %2046 ], [ %2083, %2080 ]
  %2086 = phi float [ %2078, %2046 ], [ %2082, %2080 ]
  %2087 = phi float [ %2077, %2046 ], [ %2081, %2080 ]
  br i1 %1751, label %2088, label %2122, !dx.controlflow.hints !15

; <label>:2088                                    ; preds = %2084
  %2089 = call float @dx.op.unary.f32(i32 23, float %1737)  ; Log(value)
  %2090 = call float @dx.op.unary.f32(i32 23, float %1738)  ; Log(value)
  %2091 = call float @dx.op.unary.f32(i32 23, float %1739)  ; Log(value)
  %2092 = fmul fast float %2089, 0x3F89F9B580000000
  %2093 = fmul fast float %2090, 0x3F89F9B580000000
  %2094 = fmul fast float %2091, 0x3F89F9B580000000
  %2095 = call float @dx.op.unary.f32(i32 21, float %2092)  ; Exp(value)
  %2096 = call float @dx.op.unary.f32(i32 21, float %2093)  ; Exp(value)
  %2097 = call float @dx.op.unary.f32(i32 21, float %2094)  ; Exp(value)
  %2098 = fmul fast float %2095, 1.868750e+01
  %2099 = fmul fast float %2096, 1.868750e+01
  %2100 = fmul fast float %2097, 1.868750e+01
  %2101 = fsub fast float 0x4032DA0000000000, %2098
  %2102 = fsub fast float 0x4032DA0000000000, %2099
  %2103 = fsub fast float 0x4032DA0000000000, %2100
  %2104 = fadd fast float %2095, -8.359375e-01
  %2105 = fadd fast float %2096, -8.359375e-01
  %2106 = fadd fast float %2097, -8.359375e-01
  %2107 = call float @dx.op.binary.f32(i32 35, float %2104, float 0.000000e+00)  ; FMax(a,b)
  %2108 = call float @dx.op.binary.f32(i32 35, float %2105, float 0.000000e+00)  ; FMax(a,b)
  %2109 = call float @dx.op.binary.f32(i32 35, float %2106, float 0.000000e+00)  ; FMax(a,b)
  %2110 = fdiv fast float %2107, %2101
  %2111 = fdiv fast float %2108, %2102
  %2112 = fdiv fast float %2109, %2103
  %2113 = call float @dx.op.unary.f32(i32 23, float %2110)  ; Log(value)
  %2114 = call float @dx.op.unary.f32(i32 23, float %2111)  ; Log(value)
  %2115 = call float @dx.op.unary.f32(i32 23, float %2112)  ; Log(value)
  %2116 = fmul fast float %2113, 0x40191C0D60000000
  %2117 = fmul fast float %2114, 0x40191C0D60000000
  %2118 = fmul fast float %2115, 0x40191C0D60000000
  %2119 = call float @dx.op.unary.f32(i32 21, float %2116)  ; Exp(value)
  %2120 = call float @dx.op.unary.f32(i32 21, float %2117)  ; Exp(value)
  %2121 = call float @dx.op.unary.f32(i32 21, float %2118)  ; Exp(value)
  br label %2126

; <label>:2122                                    ; preds = %2084
  %2123 = fmul fast float %1737, %1737
  %2124 = fmul fast float %1738, %1738
  %2125 = fmul fast float %1739, %1739
  br label %2126

; <label>:2126                                    ; preds = %2122, %2088
  %2127 = phi float [ %2121, %2088 ], [ %2125, %2122 ]
  %2128 = phi float [ %2120, %2088 ], [ %2124, %2122 ]
  %2129 = phi float [ %2119, %2088 ], [ %2123, %2122 ]
  br i1 %1751, label %2130, label %2164, !dx.controlflow.hints !15

; <label>:2130                                    ; preds = %2126
  %2131 = call float @dx.op.unary.f32(i32 23, float %1741)  ; Log(value)
  %2132 = call float @dx.op.unary.f32(i32 23, float %1742)  ; Log(value)
  %2133 = call float @dx.op.unary.f32(i32 23, float %1743)  ; Log(value)
  %2134 = fmul fast float %2131, 0x3F89F9B580000000
  %2135 = fmul fast float %2132, 0x3F89F9B580000000
  %2136 = fmul fast float %2133, 0x3F89F9B580000000
  %2137 = call float @dx.op.unary.f32(i32 21, float %2134)  ; Exp(value)
  %2138 = call float @dx.op.unary.f32(i32 21, float %2135)  ; Exp(value)
  %2139 = call float @dx.op.unary.f32(i32 21, float %2136)  ; Exp(value)
  %2140 = fmul fast float %2137, 1.868750e+01
  %2141 = fmul fast float %2138, 1.868750e+01
  %2142 = fmul fast float %2139, 1.868750e+01
  %2143 = fsub fast float 0x4032DA0000000000, %2140
  %2144 = fsub fast float 0x4032DA0000000000, %2141
  %2145 = fsub fast float 0x4032DA0000000000, %2142
  %2146 = fadd fast float %2137, -8.359375e-01
  %2147 = fadd fast float %2138, -8.359375e-01
  %2148 = fadd fast float %2139, -8.359375e-01
  %2149 = call float @dx.op.binary.f32(i32 35, float %2146, float 0.000000e+00)  ; FMax(a,b)
  %2150 = call float @dx.op.binary.f32(i32 35, float %2147, float 0.000000e+00)  ; FMax(a,b)
  %2151 = call float @dx.op.binary.f32(i32 35, float %2148, float 0.000000e+00)  ; FMax(a,b)
  %2152 = fdiv fast float %2149, %2143
  %2153 = fdiv fast float %2150, %2144
  %2154 = fdiv fast float %2151, %2145
  %2155 = call float @dx.op.unary.f32(i32 23, float %2152)  ; Log(value)
  %2156 = call float @dx.op.unary.f32(i32 23, float %2153)  ; Log(value)
  %2157 = call float @dx.op.unary.f32(i32 23, float %2154)  ; Log(value)
  %2158 = fmul fast float %2155, 0x40191C0D60000000
  %2159 = fmul fast float %2156, 0x40191C0D60000000
  %2160 = fmul fast float %2157, 0x40191C0D60000000
  %2161 = call float @dx.op.unary.f32(i32 21, float %2158)  ; Exp(value)
  %2162 = call float @dx.op.unary.f32(i32 21, float %2159)  ; Exp(value)
  %2163 = call float @dx.op.unary.f32(i32 21, float %2160)  ; Exp(value)
  br label %2168

; <label>:2164                                    ; preds = %2126
  %2165 = fmul fast float %1741, %1741
  %2166 = fmul fast float %1742, %1742
  %2167 = fmul fast float %1743, %1743
  br label %2168

; <label>:2168                                    ; preds = %2164, %2130
  %2169 = phi float [ %2163, %2130 ], [ %2167, %2164 ]
  %2170 = phi float [ %2162, %2130 ], [ %2166, %2164 ]
  %2171 = phi float [ %2161, %2130 ], [ %2165, %2164 ]
  br i1 %1751, label %2172, label %2206, !dx.controlflow.hints !15

; <label>:2172                                    ; preds = %2168
  %2173 = call float @dx.op.unary.f32(i32 23, float %1733)  ; Log(value)
  %2174 = call float @dx.op.unary.f32(i32 23, float %1734)  ; Log(value)
  %2175 = call float @dx.op.unary.f32(i32 23, float %1735)  ; Log(value)
  %2176 = fmul fast float %2173, 0x3F89F9B580000000
  %2177 = fmul fast float %2174, 0x3F89F9B580000000
  %2178 = fmul fast float %2175, 0x3F89F9B580000000
  %2179 = call float @dx.op.unary.f32(i32 21, float %2176)  ; Exp(value)
  %2180 = call float @dx.op.unary.f32(i32 21, float %2177)  ; Exp(value)
  %2181 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2182 = fmul fast float %2179, 1.868750e+01
  %2183 = fmul fast float %2180, 1.868750e+01
  %2184 = fmul fast float %2181, 1.868750e+01
  %2185 = fsub fast float 0x4032DA0000000000, %2182
  %2186 = fsub fast float 0x4032DA0000000000, %2183
  %2187 = fsub fast float 0x4032DA0000000000, %2184
  %2188 = fadd fast float %2179, -8.359375e-01
  %2189 = fadd fast float %2180, -8.359375e-01
  %2190 = fadd fast float %2181, -8.359375e-01
  %2191 = call float @dx.op.binary.f32(i32 35, float %2188, float 0.000000e+00)  ; FMax(a,b)
  %2192 = call float @dx.op.binary.f32(i32 35, float %2189, float 0.000000e+00)  ; FMax(a,b)
  %2193 = call float @dx.op.binary.f32(i32 35, float %2190, float 0.000000e+00)  ; FMax(a,b)
  %2194 = fdiv fast float %2191, %2185
  %2195 = fdiv fast float %2192, %2186
  %2196 = fdiv fast float %2193, %2187
  %2197 = call float @dx.op.unary.f32(i32 23, float %2194)  ; Log(value)
  %2198 = call float @dx.op.unary.f32(i32 23, float %2195)  ; Log(value)
  %2199 = call float @dx.op.unary.f32(i32 23, float %2196)  ; Log(value)
  %2200 = fmul fast float %2197, 0x40191C0D60000000
  %2201 = fmul fast float %2198, 0x40191C0D60000000
  %2202 = fmul fast float %2199, 0x40191C0D60000000
  %2203 = call float @dx.op.unary.f32(i32 21, float %2200)  ; Exp(value)
  %2204 = call float @dx.op.unary.f32(i32 21, float %2201)  ; Exp(value)
  %2205 = call float @dx.op.unary.f32(i32 21, float %2202)  ; Exp(value)
  br label %2210

; <label>:2206                                    ; preds = %2168
  %2207 = fmul fast float %1733, %1733
  %2208 = fmul fast float %1734, %1734
  %2209 = fmul fast float %1735, %1735
  br label %2210

; <label>:2210                                    ; preds = %2206, %2172
  %2211 = phi float [ %2205, %2172 ], [ %2209, %2206 ]
  %2212 = phi float [ %2204, %2172 ], [ %2208, %2206 ]
  %2213 = phi float [ %2203, %2172 ], [ %2207, %2206 ]
  br i1 %1751, label %2214, label %2248, !dx.controlflow.hints !15

; <label>:2214                                    ; preds = %2210
  %2215 = call float @dx.op.unary.f32(i32 23, float %1745)  ; Log(value)
  %2216 = call float @dx.op.unary.f32(i32 23, float %1746)  ; Log(value)
  %2217 = call float @dx.op.unary.f32(i32 23, float %1747)  ; Log(value)
  %2218 = fmul fast float %2215, 0x3F89F9B580000000
  %2219 = fmul fast float %2216, 0x3F89F9B580000000
  %2220 = fmul fast float %2217, 0x3F89F9B580000000
  %2221 = call float @dx.op.unary.f32(i32 21, float %2218)  ; Exp(value)
  %2222 = call float @dx.op.unary.f32(i32 21, float %2219)  ; Exp(value)
  %2223 = call float @dx.op.unary.f32(i32 21, float %2220)  ; Exp(value)
  %2224 = fmul fast float %2221, 1.868750e+01
  %2225 = fmul fast float %2222, 1.868750e+01
  %2226 = fmul fast float %2223, 1.868750e+01
  %2227 = fsub fast float 0x4032DA0000000000, %2224
  %2228 = fsub fast float 0x4032DA0000000000, %2225
  %2229 = fsub fast float 0x4032DA0000000000, %2226
  %2230 = fadd fast float %2221, -8.359375e-01
  %2231 = fadd fast float %2222, -8.359375e-01
  %2232 = fadd fast float %2223, -8.359375e-01
  %2233 = call float @dx.op.binary.f32(i32 35, float %2230, float 0.000000e+00)  ; FMax(a,b)
  %2234 = call float @dx.op.binary.f32(i32 35, float %2231, float 0.000000e+00)  ; FMax(a,b)
  %2235 = call float @dx.op.binary.f32(i32 35, float %2232, float 0.000000e+00)  ; FMax(a,b)
  %2236 = fdiv fast float %2233, %2227
  %2237 = fdiv fast float %2234, %2228
  %2238 = fdiv fast float %2235, %2229
  %2239 = call float @dx.op.unary.f32(i32 23, float %2236)  ; Log(value)
  %2240 = call float @dx.op.unary.f32(i32 23, float %2237)  ; Log(value)
  %2241 = call float @dx.op.unary.f32(i32 23, float %2238)  ; Log(value)
  %2242 = fmul fast float %2239, 0x40191C0D60000000
  %2243 = fmul fast float %2240, 0x40191C0D60000000
  %2244 = fmul fast float %2241, 0x40191C0D60000000
  %2245 = call float @dx.op.unary.f32(i32 21, float %2242)  ; Exp(value)
  %2246 = call float @dx.op.unary.f32(i32 21, float %2243)  ; Exp(value)
  %2247 = call float @dx.op.unary.f32(i32 21, float %2244)  ; Exp(value)
  br label %2252

; <label>:2248                                    ; preds = %2210
  %2249 = fmul fast float %1745, %1745
  %2250 = fmul fast float %1746, %1746
  %2251 = fmul fast float %1747, %1747
  br label %2252

; <label>:2252                                    ; preds = %2248, %2214
  %2253 = phi float [ %2247, %2214 ], [ %2251, %2248 ]
  %2254 = phi float [ %2246, %2214 ], [ %2250, %2248 ]
  %2255 = phi float [ %2245, %2214 ], [ %2249, %2248 ]
  %2256 = call float @dx.op.binary.f32(i32 36, float %1876, float %1918)  ; FMin(a,b)
  %2257 = call float @dx.op.binary.f32(i32 36, float %1792, float %2256)  ; FMin(a,b)
  %2258 = call float @dx.op.binary.f32(i32 36, float %1960, float %2086)  ; FMin(a,b)
  %2259 = call float @dx.op.binary.f32(i32 36, float %2257, float %2258)  ; FMin(a,b)
  %2260 = call float @dx.op.binary.f32(i32 35, float %1876, float %1918)  ; FMax(a,b)
  %2261 = call float @dx.op.binary.f32(i32 35, float %1792, float %2260)  ; FMax(a,b)
  %2262 = call float @dx.op.binary.f32(i32 35, float %1960, float %2086)  ; FMax(a,b)
  %2263 = call float @dx.op.binary.f32(i32 35, float %2261, float %2262)  ; FMax(a,b)
  %2264 = call float @dx.op.binary.f32(i32 36, float %1918, float %1960)  ; FMin(a,b)
  %2265 = call float @dx.op.binary.f32(i32 36, float %1834, float %2264)  ; FMin(a,b)
  %2266 = call float @dx.op.binary.f32(i32 36, float %2002, float %2128)  ; FMin(a,b)
  %2267 = call float @dx.op.binary.f32(i32 36, float %2265, float %2266)  ; FMin(a,b)
  %2268 = call float @dx.op.binary.f32(i32 35, float %1918, float %1960)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 35, float %1834, float %2268)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float %2002, float %2128)  ; FMax(a,b)
  %2271 = call float @dx.op.binary.f32(i32 35, float %2269, float %2270)  ; FMax(a,b)
  %2272 = call float @dx.op.binary.f32(i32 36, float %2044, float %2086)  ; FMin(a,b)
  %2273 = call float @dx.op.binary.f32(i32 36, float %1918, float %2272)  ; FMin(a,b)
  %2274 = call float @dx.op.binary.f32(i32 36, float %2128, float %2212)  ; FMin(a,b)
  %2275 = call float @dx.op.binary.f32(i32 36, float %2273, float %2274)  ; FMin(a,b)
  %2276 = call float @dx.op.binary.f32(i32 35, float %2044, float %2086)  ; FMax(a,b)
  %2277 = call float @dx.op.binary.f32(i32 35, float %1918, float %2276)  ; FMax(a,b)
  %2278 = call float @dx.op.binary.f32(i32 35, float %2128, float %2212)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float %2277, float %2278)  ; FMax(a,b)
  %2280 = call float @dx.op.binary.f32(i32 36, float %2086, float %2128)  ; FMin(a,b)
  %2281 = call float @dx.op.binary.f32(i32 36, float %1960, float %2280)  ; FMin(a,b)
  %2282 = call float @dx.op.binary.f32(i32 36, float %2170, float %2254)  ; FMin(a,b)
  %2283 = call float @dx.op.binary.f32(i32 36, float %2281, float %2282)  ; FMin(a,b)
  %2284 = call float @dx.op.binary.f32(i32 35, float %2086, float %2128)  ; FMax(a,b)
  %2285 = call float @dx.op.binary.f32(i32 35, float %1960, float %2284)  ; FMax(a,b)
  %2286 = call float @dx.op.binary.f32(i32 35, float %2170, float %2254)  ; FMax(a,b)
  %2287 = call float @dx.op.binary.f32(i32 35, float %2285, float %2286)  ; FMax(a,b)
  %2288 = bitcast float %2263 to i32
  %2289 = sub i32 2129690299, %2288
  %2290 = bitcast i32 %2289 to float
  %2291 = bitcast float %2271 to i32
  %2292 = sub i32 2129690299, %2291
  %2293 = bitcast i32 %2292 to float
  %2294 = bitcast float %2279 to i32
  %2295 = sub i32 2129690299, %2294
  %2296 = bitcast i32 %2295 to float
  %2297 = bitcast float %2287 to i32
  %2298 = sub i32 2129690299, %2297
  %2299 = bitcast i32 %2298 to float
  %2300 = fsub fast float 1.000000e+00, %2263
  %2301 = call float @dx.op.binary.f32(i32 36, float %2259, float %2300)  ; FMin(a,b)
  %2302 = fmul fast float %2301, %2290
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  %2304 = fsub fast float 1.000000e+00, %2271
  %2305 = call float @dx.op.binary.f32(i32 36, float %2267, float %2304)  ; FMin(a,b)
  %2306 = fmul fast float %2305, %2293
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fsub fast float 1.000000e+00, %2279
  %2309 = call float @dx.op.binary.f32(i32 36, float %2275, float %2308)  ; FMin(a,b)
  %2310 = fmul fast float %2309, %2296
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fsub fast float 1.000000e+00, %2287
  %2313 = call float @dx.op.binary.f32(i32 36, float %2283, float %2312)  ; FMin(a,b)
  %2314 = fmul fast float %2313, %2299
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = bitcast float %2303 to i32
  %2317 = lshr i32 %2316, 1
  %2318 = add nuw i32 %2317, 532432441
  %2319 = bitcast i32 %2318 to float
  %2320 = bitcast float %2307 to i32
  %2321 = lshr i32 %2320, 1
  %2322 = add nuw i32 %2321, 532432441
  %2323 = bitcast i32 %2322 to float
  %2324 = bitcast float %2311 to i32
  %2325 = lshr i32 %2324, 1
  %2326 = add nuw i32 %2325, 532432441
  %2327 = bitcast i32 %2326 to float
  %2328 = bitcast float %2315 to i32
  %2329 = lshr i32 %2328, 1
  %2330 = add nuw i32 %2329, 532432441
  %2331 = bitcast i32 %2330 to float
  %2332 = bitcast i32 %1673 to float
  %2333 = fmul fast float %2319, %2332
  %2334 = fmul fast float %2323, %2332
  %2335 = fmul fast float %2327, %2332
  %2336 = fmul fast float %2331, %2332
  %2337 = fsub fast float 1.000000e+00, %1690
  %2338 = fsub fast float 1.000000e+00, %1691
  %2339 = fmul fast float %2337, %2338
  %2340 = fmul fast float %2338, %1690
  %2341 = fmul fast float %2337, %1691
  %2342 = fmul fast float %1690, %1691
  %2343 = fsub fast float 3.125000e-02, %2259
  %2344 = fadd fast float %2343, %2263
  %2345 = bitcast float %2344 to i32
  %2346 = sub i32 2129690299, %2345
  %2347 = bitcast i32 %2346 to float
  %2348 = fmul fast float %2339, %2347
  %2349 = fsub fast float 3.125000e-02, %2267
  %2350 = fadd fast float %2349, %2271
  %2351 = bitcast float %2350 to i32
  %2352 = sub i32 2129690299, %2351
  %2353 = bitcast i32 %2352 to float
  %2354 = fmul fast float %2340, %2353
  %2355 = fsub fast float 3.125000e-02, %2275
  %2356 = fadd fast float %2355, %2279
  %2357 = bitcast float %2356 to i32
  %2358 = sub i32 2129690299, %2357
  %2359 = bitcast i32 %2358 to float
  %2360 = fmul fast float %2341, %2359
  %2361 = fsub fast float 3.125000e-02, %2283
  %2362 = fadd fast float %2361, %2287
  %2363 = bitcast float %2362 to i32
  %2364 = sub i32 2129690299, %2363
  %2365 = bitcast i32 %2364 to float
  %2366 = fmul fast float %2342, %2365
  %2367 = fmul fast float %2333, %2348
  %2368 = fmul fast float %2334, %2354
  %2369 = fmul fast float %2335, %2360
  %2370 = fadd fast float %2368, %2348
  %2371 = fadd fast float %2370, %2369
  %2372 = fmul fast float %2336, %2366
  %2373 = fadd fast float %2367, %2354
  %2374 = fadd fast float %2373, %2372
  %2375 = fadd fast float %2367, %2360
  %2376 = fadd fast float %2375, %2372
  %2377 = fadd fast float %2368, %2366
  %2378 = fadd fast float %2377, %2369
  %2379 = fadd fast float %2368, %2367
  %2380 = fadd fast float %2379, %2369
  %2381 = fadd fast float %2380, %2372
  %2382 = fmul fast float %2381, 2.000000e+00
  %2383 = fadd fast float %2378, %2371
  %2384 = fadd fast float %2383, %2382
  %2385 = fadd fast float %2384, %2374
  %2386 = fadd fast float %2385, %2376
  %2387 = bitcast float %2386 to i32
  %2388 = sub i32 2129764351, %2387
  %2389 = bitcast i32 %2388 to float
  %2390 = fmul fast float %2389, %2386
  %2391 = fsub fast float 2.000000e+00, %2390
  %2392 = fmul fast float %2391, %2389
  %2393 = fadd fast float %1877, %1793
  %2394 = fmul fast float %2367, %2393
  %2395 = fmul fast float %2371, %1919
  %2396 = fmul fast float %2374, %1961
  %2397 = fmul fast float %2376, %2087
  %2398 = fmul fast float %2378, %2129
  %2399 = fadd fast float %2255, %2171
  %2400 = fmul fast float %2372, %2399
  %2401 = fadd fast float %2213, %2045
  %2402 = fmul fast float %2369, %2401
  %2403 = fadd fast float %2003, %1835
  %2404 = fmul fast float %2368, %2403
  %2405 = fadd fast float %2395, %2394
  %2406 = fadd fast float %2405, %2398
  %2407 = fadd fast float %2406, %2396
  %2408 = fadd fast float %2407, %2397
  %2409 = fadd fast float %2408, %2400
  %2410 = fadd fast float %2409, %2402
  %2411 = fadd fast float %2410, %2404
  %2412 = fmul fast float %2392, %2411
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2414 = fadd fast float %1876, %1792
  %2415 = fmul fast float %2367, %2414
  %2416 = fmul fast float %2371, %1918
  %2417 = fmul fast float %2374, %1960
  %2418 = fmul fast float %2376, %2086
  %2419 = fmul fast float %2378, %2128
  %2420 = fadd fast float %2254, %2170
  %2421 = fmul fast float %2372, %2420
  %2422 = fadd fast float %2212, %2044
  %2423 = fmul fast float %2369, %2422
  %2424 = fadd fast float %2002, %1834
  %2425 = fmul fast float %2368, %2424
  %2426 = fadd fast float %2416, %2415
  %2427 = fadd fast float %2426, %2419
  %2428 = fadd fast float %2427, %2417
  %2429 = fadd fast float %2428, %2418
  %2430 = fadd fast float %2429, %2421
  %2431 = fadd fast float %2430, %2423
  %2432 = fadd fast float %2431, %2425
  %2433 = fmul fast float %2392, %2432
  %2434 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2435 = fadd fast float %1875, %1791
  %2436 = fmul fast float %2367, %2435
  %2437 = fmul fast float %2371, %1917
  %2438 = fmul fast float %2374, %1959
  %2439 = fmul fast float %2376, %2085
  %2440 = fmul fast float %2378, %2127
  %2441 = fadd fast float %2253, %2169
  %2442 = fmul fast float %2372, %2441
  %2443 = fadd fast float %2211, %2043
  %2444 = fmul fast float %2369, %2443
  %2445 = fadd fast float %2001, %1833
  %2446 = fmul fast float %2368, %2445
  %2447 = fadd fast float %2437, %2436
  %2448 = fadd fast float %2447, %2440
  %2449 = fadd fast float %2448, %2438
  %2450 = fadd fast float %2449, %2439
  %2451 = fadd fast float %2450, %2442
  %2452 = fadd fast float %2451, %2444
  %2453 = fadd fast float %2452, %2446
  %2454 = fmul fast float %2392, %2453
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  br i1 %1751, label %2456, label %2490, !dx.controlflow.hints !16

; <label>:2456                                    ; preds = %2252
  %2457 = call float @dx.op.unary.f32(i32 23, float %2413)  ; Log(value)
  %2458 = call float @dx.op.unary.f32(i32 23, float %2434)  ; Log(value)
  %2459 = call float @dx.op.unary.f32(i32 23, float %2455)  ; Log(value)
  %2460 = fmul fast float %2457, 0x3FC4640000000000
  %2461 = fmul fast float %2458, 0x3FC4640000000000
  %2462 = fmul fast float %2459, 0x3FC4640000000000
  %2463 = call float @dx.op.unary.f32(i32 21, float %2460)  ; Exp(value)
  %2464 = call float @dx.op.unary.f32(i32 21, float %2461)  ; Exp(value)
  %2465 = call float @dx.op.unary.f32(i32 21, float %2462)  ; Exp(value)
  %2466 = fmul fast float %2463, 0x4032DA0000000000
  %2467 = fmul fast float %2464, 0x4032DA0000000000
  %2468 = fmul fast float %2465, 0x4032DA0000000000
  %2469 = fadd fast float %2466, 8.359375e-01
  %2470 = fadd fast float %2467, 8.359375e-01
  %2471 = fadd fast float %2468, 8.359375e-01
  %2472 = fmul fast float %2463, 1.868750e+01
  %2473 = fmul fast float %2464, 1.868750e+01
  %2474 = fmul fast float %2465, 1.868750e+01
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fadd fast float %2473, 1.000000e+00
  %2477 = fadd fast float %2474, 1.000000e+00
  %2478 = fdiv fast float %2469, %2475
  %2479 = fdiv fast float %2470, %2476
  %2480 = fdiv fast float %2471, %2477
  %2481 = call float @dx.op.unary.f32(i32 23, float %2478)  ; Log(value)
  %2482 = call float @dx.op.unary.f32(i32 23, float %2479)  ; Log(value)
  %2483 = call float @dx.op.unary.f32(i32 23, float %2480)  ; Log(value)
  %2484 = fmul fast float %2481, 7.884375e+01
  %2485 = fmul fast float %2482, 7.884375e+01
  %2486 = fmul fast float %2483, 7.884375e+01
  %2487 = call float @dx.op.unary.f32(i32 21, float %2484)  ; Exp(value)
  %2488 = call float @dx.op.unary.f32(i32 21, float %2485)  ; Exp(value)
  %2489 = call float @dx.op.unary.f32(i32 21, float %2486)  ; Exp(value)
  br label %2494

; <label>:2490                                    ; preds = %2252
  %2491 = call float @dx.op.unary.f32(i32 24, float %2413)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %2434)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %2455)  ; Sqrt(value)
  br label %2494

; <label>:2494                                    ; preds = %2490, %2456
  %2495 = phi float [ %2487, %2456 ], [ %2491, %2490 ]
  %2496 = phi float [ %2488, %2456 ], [ %2492, %2490 ]
  %2497 = phi float [ %2489, %2456 ], [ %2493, %2490 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %844, i32 %1671, i32 undef, float %2495, float %2496, float %2497, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.i32 %2498, 0
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 0
  %2502 = extractvalue %dx.types.CBufRet.i32 %2500, 1
  %2503 = extractvalue %dx.types.CBufRet.i32 %2500, 2
  %2504 = extractvalue %dx.types.CBufRet.i32 %2500, 3
  %2505 = bitcast i32 %2501 to float
  %2506 = bitcast i32 %2502 to float
  %2507 = fmul fast float %2505, %24
  %2508 = fmul fast float %2506, %1679
  %2509 = bitcast i32 %2503 to float
  %2510 = bitcast i32 %2504 to float
  %2511 = fadd fast float %2507, %2509
  %2512 = fadd fast float %2508, %2510
  %2513 = call float @dx.op.unary.f32(i32 27, float %2511)  ; Round_ni(value)
  %2514 = call float @dx.op.unary.f32(i32 27, float %2512)  ; Round_ni(value)
  %2515 = fsub fast float %2511, %2513
  %2516 = fsub fast float %2512, %2514
  %2517 = fptosi float %2513 to i32
  %2518 = fptosi float %2514 to i32
  %2519 = add i32 %2518, -1
  %2520 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2517, i32 %2519, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  %2522 = extractvalue %dx.types.ResRet.f32 %2520, 1
  %2523 = extractvalue %dx.types.ResRet.f32 %2520, 2
  %2524 = add i32 %2517, -1
  %2525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2524, i32 %2518, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = extractvalue %dx.types.ResRet.f32 %2525, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2525, 2
  %2529 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2517, i32 %2518, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = add i32 %2517, 1
  %2534 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2533, i32 %2519, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2538 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2533, i32 %2518, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2542 = add i32 %2517, 2
  %2543 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2542, i32 %2518, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2544 = extractvalue %dx.types.ResRet.f32 %2543, 0
  %2545 = extractvalue %dx.types.ResRet.f32 %2543, 1
  %2546 = extractvalue %dx.types.ResRet.f32 %2543, 2
  %2547 = add i32 %2518, 1
  %2548 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2524, i32 %2547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2549 = extractvalue %dx.types.ResRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.ResRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.ResRet.f32 %2548, 2
  %2552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2517, i32 %2547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2553 = extractvalue %dx.types.ResRet.f32 %2552, 0
  %2554 = extractvalue %dx.types.ResRet.f32 %2552, 1
  %2555 = extractvalue %dx.types.ResRet.f32 %2552, 2
  %2556 = add i32 %2518, 2
  %2557 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2517, i32 %2556, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2558 = extractvalue %dx.types.ResRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.ResRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.ResRet.f32 %2557, 2
  %2561 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2533, i32 %2547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2565 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2542, i32 %2547, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.ResRet.f32 %2565, 1
  %2568 = extractvalue %dx.types.ResRet.f32 %2565, 2
  %2569 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %2533, i32 %2556, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2574 = extractvalue %dx.types.CBufRet.i32 %2573, 0
  %2575 = add i32 %2574, -3
  %2576 = icmp ult i32 %2575, 2
  br i1 %2576, label %2577, label %2611, !dx.controlflow.hints !15

; <label>:2577                                    ; preds = %2494
  %2578 = call float @dx.op.unary.f32(i32 23, float %2521)  ; Log(value)
  %2579 = call float @dx.op.unary.f32(i32 23, float %2522)  ; Log(value)
  %2580 = call float @dx.op.unary.f32(i32 23, float %2523)  ; Log(value)
  %2581 = fmul fast float %2578, 0x3F89F9B580000000
  %2582 = fmul fast float %2579, 0x3F89F9B580000000
  %2583 = fmul fast float %2580, 0x3F89F9B580000000
  %2584 = call float @dx.op.unary.f32(i32 21, float %2581)  ; Exp(value)
  %2585 = call float @dx.op.unary.f32(i32 21, float %2582)  ; Exp(value)
  %2586 = call float @dx.op.unary.f32(i32 21, float %2583)  ; Exp(value)
  %2587 = fmul fast float %2584, 1.868750e+01
  %2588 = fmul fast float %2585, 1.868750e+01
  %2589 = fmul fast float %2586, 1.868750e+01
  %2590 = fsub fast float 0x4032DA0000000000, %2587
  %2591 = fsub fast float 0x4032DA0000000000, %2588
  %2592 = fsub fast float 0x4032DA0000000000, %2589
  %2593 = fadd fast float %2584, -8.359375e-01
  %2594 = fadd fast float %2585, -8.359375e-01
  %2595 = fadd fast float %2586, -8.359375e-01
  %2596 = call float @dx.op.binary.f32(i32 35, float %2593, float 0.000000e+00)  ; FMax(a,b)
  %2597 = call float @dx.op.binary.f32(i32 35, float %2594, float 0.000000e+00)  ; FMax(a,b)
  %2598 = call float @dx.op.binary.f32(i32 35, float %2595, float 0.000000e+00)  ; FMax(a,b)
  %2599 = fdiv fast float %2596, %2590
  %2600 = fdiv fast float %2597, %2591
  %2601 = fdiv fast float %2598, %2592
  %2602 = call float @dx.op.unary.f32(i32 23, float %2599)  ; Log(value)
  %2603 = call float @dx.op.unary.f32(i32 23, float %2600)  ; Log(value)
  %2604 = call float @dx.op.unary.f32(i32 23, float %2601)  ; Log(value)
  %2605 = fmul fast float %2602, 0x40191C0D60000000
  %2606 = fmul fast float %2603, 0x40191C0D60000000
  %2607 = fmul fast float %2604, 0x40191C0D60000000
  %2608 = call float @dx.op.unary.f32(i32 21, float %2605)  ; Exp(value)
  %2609 = call float @dx.op.unary.f32(i32 21, float %2606)  ; Exp(value)
  %2610 = call float @dx.op.unary.f32(i32 21, float %2607)  ; Exp(value)
  br label %2615

; <label>:2611                                    ; preds = %2494
  %2612 = fmul fast float %2521, %2521
  %2613 = fmul fast float %2522, %2522
  %2614 = fmul fast float %2523, %2523
  br label %2615

; <label>:2615                                    ; preds = %2611, %2577
  %2616 = phi float [ %2610, %2577 ], [ %2614, %2611 ]
  %2617 = phi float [ %2609, %2577 ], [ %2613, %2611 ]
  %2618 = phi float [ %2608, %2577 ], [ %2612, %2611 ]
  br i1 %2576, label %2619, label %2653, !dx.controlflow.hints !15

; <label>:2619                                    ; preds = %2615
  %2620 = call float @dx.op.unary.f32(i32 23, float %2535)  ; Log(value)
  %2621 = call float @dx.op.unary.f32(i32 23, float %2536)  ; Log(value)
  %2622 = call float @dx.op.unary.f32(i32 23, float %2537)  ; Log(value)
  %2623 = fmul fast float %2620, 0x3F89F9B580000000
  %2624 = fmul fast float %2621, 0x3F89F9B580000000
  %2625 = fmul fast float %2622, 0x3F89F9B580000000
  %2626 = call float @dx.op.unary.f32(i32 21, float %2623)  ; Exp(value)
  %2627 = call float @dx.op.unary.f32(i32 21, float %2624)  ; Exp(value)
  %2628 = call float @dx.op.unary.f32(i32 21, float %2625)  ; Exp(value)
  %2629 = fmul fast float %2626, 1.868750e+01
  %2630 = fmul fast float %2627, 1.868750e+01
  %2631 = fmul fast float %2628, 1.868750e+01
  %2632 = fsub fast float 0x4032DA0000000000, %2629
  %2633 = fsub fast float 0x4032DA0000000000, %2630
  %2634 = fsub fast float 0x4032DA0000000000, %2631
  %2635 = fadd fast float %2626, -8.359375e-01
  %2636 = fadd fast float %2627, -8.359375e-01
  %2637 = fadd fast float %2628, -8.359375e-01
  %2638 = call float @dx.op.binary.f32(i32 35, float %2635, float 0.000000e+00)  ; FMax(a,b)
  %2639 = call float @dx.op.binary.f32(i32 35, float %2636, float 0.000000e+00)  ; FMax(a,b)
  %2640 = call float @dx.op.binary.f32(i32 35, float %2637, float 0.000000e+00)  ; FMax(a,b)
  %2641 = fdiv fast float %2638, %2632
  %2642 = fdiv fast float %2639, %2633
  %2643 = fdiv fast float %2640, %2634
  %2644 = call float @dx.op.unary.f32(i32 23, float %2641)  ; Log(value)
  %2645 = call float @dx.op.unary.f32(i32 23, float %2642)  ; Log(value)
  %2646 = call float @dx.op.unary.f32(i32 23, float %2643)  ; Log(value)
  %2647 = fmul fast float %2644, 0x40191C0D60000000
  %2648 = fmul fast float %2645, 0x40191C0D60000000
  %2649 = fmul fast float %2646, 0x40191C0D60000000
  %2650 = call float @dx.op.unary.f32(i32 21, float %2647)  ; Exp(value)
  %2651 = call float @dx.op.unary.f32(i32 21, float %2648)  ; Exp(value)
  %2652 = call float @dx.op.unary.f32(i32 21, float %2649)  ; Exp(value)
  br label %2657

; <label>:2653                                    ; preds = %2615
  %2654 = fmul fast float %2535, %2535
  %2655 = fmul fast float %2536, %2536
  %2656 = fmul fast float %2537, %2537
  br label %2657

; <label>:2657                                    ; preds = %2653, %2619
  %2658 = phi float [ %2652, %2619 ], [ %2656, %2653 ]
  %2659 = phi float [ %2651, %2619 ], [ %2655, %2653 ]
  %2660 = phi float [ %2650, %2619 ], [ %2654, %2653 ]
  br i1 %2576, label %2661, label %2695, !dx.controlflow.hints !15

; <label>:2661                                    ; preds = %2657
  %2662 = call float @dx.op.unary.f32(i32 23, float %2526)  ; Log(value)
  %2663 = call float @dx.op.unary.f32(i32 23, float %2527)  ; Log(value)
  %2664 = call float @dx.op.unary.f32(i32 23, float %2528)  ; Log(value)
  %2665 = fmul fast float %2662, 0x3F89F9B580000000
  %2666 = fmul fast float %2663, 0x3F89F9B580000000
  %2667 = fmul fast float %2664, 0x3F89F9B580000000
  %2668 = call float @dx.op.unary.f32(i32 21, float %2665)  ; Exp(value)
  %2669 = call float @dx.op.unary.f32(i32 21, float %2666)  ; Exp(value)
  %2670 = call float @dx.op.unary.f32(i32 21, float %2667)  ; Exp(value)
  %2671 = fmul fast float %2668, 1.868750e+01
  %2672 = fmul fast float %2669, 1.868750e+01
  %2673 = fmul fast float %2670, 1.868750e+01
  %2674 = fsub fast float 0x4032DA0000000000, %2671
  %2675 = fsub fast float 0x4032DA0000000000, %2672
  %2676 = fsub fast float 0x4032DA0000000000, %2673
  %2677 = fadd fast float %2668, -8.359375e-01
  %2678 = fadd fast float %2669, -8.359375e-01
  %2679 = fadd fast float %2670, -8.359375e-01
  %2680 = call float @dx.op.binary.f32(i32 35, float %2677, float 0.000000e+00)  ; FMax(a,b)
  %2681 = call float @dx.op.binary.f32(i32 35, float %2678, float 0.000000e+00)  ; FMax(a,b)
  %2682 = call float @dx.op.binary.f32(i32 35, float %2679, float 0.000000e+00)  ; FMax(a,b)
  %2683 = fdiv fast float %2680, %2674
  %2684 = fdiv fast float %2681, %2675
  %2685 = fdiv fast float %2682, %2676
  %2686 = call float @dx.op.unary.f32(i32 23, float %2683)  ; Log(value)
  %2687 = call float @dx.op.unary.f32(i32 23, float %2684)  ; Log(value)
  %2688 = call float @dx.op.unary.f32(i32 23, float %2685)  ; Log(value)
  %2689 = fmul fast float %2686, 0x40191C0D60000000
  %2690 = fmul fast float %2687, 0x40191C0D60000000
  %2691 = fmul fast float %2688, 0x40191C0D60000000
  %2692 = call float @dx.op.unary.f32(i32 21, float %2689)  ; Exp(value)
  %2693 = call float @dx.op.unary.f32(i32 21, float %2690)  ; Exp(value)
  %2694 = call float @dx.op.unary.f32(i32 21, float %2691)  ; Exp(value)
  br label %2699

; <label>:2695                                    ; preds = %2657
  %2696 = fmul fast float %2526, %2526
  %2697 = fmul fast float %2527, %2527
  %2698 = fmul fast float %2528, %2528
  br label %2699

; <label>:2699                                    ; preds = %2695, %2661
  %2700 = phi float [ %2694, %2661 ], [ %2698, %2695 ]
  %2701 = phi float [ %2693, %2661 ], [ %2697, %2695 ]
  %2702 = phi float [ %2692, %2661 ], [ %2696, %2695 ]
  br i1 %2576, label %2703, label %2737, !dx.controlflow.hints !15

; <label>:2703                                    ; preds = %2699
  %2704 = call float @dx.op.unary.f32(i32 23, float %2530)  ; Log(value)
  %2705 = call float @dx.op.unary.f32(i32 23, float %2531)  ; Log(value)
  %2706 = call float @dx.op.unary.f32(i32 23, float %2532)  ; Log(value)
  %2707 = fmul fast float %2704, 0x3F89F9B580000000
  %2708 = fmul fast float %2705, 0x3F89F9B580000000
  %2709 = fmul fast float %2706, 0x3F89F9B580000000
  %2710 = call float @dx.op.unary.f32(i32 21, float %2707)  ; Exp(value)
  %2711 = call float @dx.op.unary.f32(i32 21, float %2708)  ; Exp(value)
  %2712 = call float @dx.op.unary.f32(i32 21, float %2709)  ; Exp(value)
  %2713 = fmul fast float %2710, 1.868750e+01
  %2714 = fmul fast float %2711, 1.868750e+01
  %2715 = fmul fast float %2712, 1.868750e+01
  %2716 = fsub fast float 0x4032DA0000000000, %2713
  %2717 = fsub fast float 0x4032DA0000000000, %2714
  %2718 = fsub fast float 0x4032DA0000000000, %2715
  %2719 = fadd fast float %2710, -8.359375e-01
  %2720 = fadd fast float %2711, -8.359375e-01
  %2721 = fadd fast float %2712, -8.359375e-01
  %2722 = call float @dx.op.binary.f32(i32 35, float %2719, float 0.000000e+00)  ; FMax(a,b)
  %2723 = call float @dx.op.binary.f32(i32 35, float %2720, float 0.000000e+00)  ; FMax(a,b)
  %2724 = call float @dx.op.binary.f32(i32 35, float %2721, float 0.000000e+00)  ; FMax(a,b)
  %2725 = fdiv fast float %2722, %2716
  %2726 = fdiv fast float %2723, %2717
  %2727 = fdiv fast float %2724, %2718
  %2728 = call float @dx.op.unary.f32(i32 23, float %2725)  ; Log(value)
  %2729 = call float @dx.op.unary.f32(i32 23, float %2726)  ; Log(value)
  %2730 = call float @dx.op.unary.f32(i32 23, float %2727)  ; Log(value)
  %2731 = fmul fast float %2728, 0x40191C0D60000000
  %2732 = fmul fast float %2729, 0x40191C0D60000000
  %2733 = fmul fast float %2730, 0x40191C0D60000000
  %2734 = call float @dx.op.unary.f32(i32 21, float %2731)  ; Exp(value)
  %2735 = call float @dx.op.unary.f32(i32 21, float %2732)  ; Exp(value)
  %2736 = call float @dx.op.unary.f32(i32 21, float %2733)  ; Exp(value)
  br label %2741

; <label>:2737                                    ; preds = %2699
  %2738 = fmul fast float %2530, %2530
  %2739 = fmul fast float %2531, %2531
  %2740 = fmul fast float %2532, %2532
  br label %2741

; <label>:2741                                    ; preds = %2737, %2703
  %2742 = phi float [ %2736, %2703 ], [ %2740, %2737 ]
  %2743 = phi float [ %2735, %2703 ], [ %2739, %2737 ]
  %2744 = phi float [ %2734, %2703 ], [ %2738, %2737 ]
  br i1 %2576, label %2745, label %2779, !dx.controlflow.hints !15

; <label>:2745                                    ; preds = %2741
  %2746 = call float @dx.op.unary.f32(i32 23, float %2539)  ; Log(value)
  %2747 = call float @dx.op.unary.f32(i32 23, float %2540)  ; Log(value)
  %2748 = call float @dx.op.unary.f32(i32 23, float %2541)  ; Log(value)
  %2749 = fmul fast float %2746, 0x3F89F9B580000000
  %2750 = fmul fast float %2747, 0x3F89F9B580000000
  %2751 = fmul fast float %2748, 0x3F89F9B580000000
  %2752 = call float @dx.op.unary.f32(i32 21, float %2749)  ; Exp(value)
  %2753 = call float @dx.op.unary.f32(i32 21, float %2750)  ; Exp(value)
  %2754 = call float @dx.op.unary.f32(i32 21, float %2751)  ; Exp(value)
  %2755 = fmul fast float %2752, 1.868750e+01
  %2756 = fmul fast float %2753, 1.868750e+01
  %2757 = fmul fast float %2754, 1.868750e+01
  %2758 = fsub fast float 0x4032DA0000000000, %2755
  %2759 = fsub fast float 0x4032DA0000000000, %2756
  %2760 = fsub fast float 0x4032DA0000000000, %2757
  %2761 = fadd fast float %2752, -8.359375e-01
  %2762 = fadd fast float %2753, -8.359375e-01
  %2763 = fadd fast float %2754, -8.359375e-01
  %2764 = call float @dx.op.binary.f32(i32 35, float %2761, float 0.000000e+00)  ; FMax(a,b)
  %2765 = call float @dx.op.binary.f32(i32 35, float %2762, float 0.000000e+00)  ; FMax(a,b)
  %2766 = call float @dx.op.binary.f32(i32 35, float %2763, float 0.000000e+00)  ; FMax(a,b)
  %2767 = fdiv fast float %2764, %2758
  %2768 = fdiv fast float %2765, %2759
  %2769 = fdiv fast float %2766, %2760
  %2770 = call float @dx.op.unary.f32(i32 23, float %2767)  ; Log(value)
  %2771 = call float @dx.op.unary.f32(i32 23, float %2768)  ; Log(value)
  %2772 = call float @dx.op.unary.f32(i32 23, float %2769)  ; Log(value)
  %2773 = fmul fast float %2770, 0x40191C0D60000000
  %2774 = fmul fast float %2771, 0x40191C0D60000000
  %2775 = fmul fast float %2772, 0x40191C0D60000000
  %2776 = call float @dx.op.unary.f32(i32 21, float %2773)  ; Exp(value)
  %2777 = call float @dx.op.unary.f32(i32 21, float %2774)  ; Exp(value)
  %2778 = call float @dx.op.unary.f32(i32 21, float %2775)  ; Exp(value)
  br label %2783

; <label>:2779                                    ; preds = %2741
  %2780 = fmul fast float %2539, %2539
  %2781 = fmul fast float %2540, %2540
  %2782 = fmul fast float %2541, %2541
  br label %2783

; <label>:2783                                    ; preds = %2779, %2745
  %2784 = phi float [ %2778, %2745 ], [ %2782, %2779 ]
  %2785 = phi float [ %2777, %2745 ], [ %2781, %2779 ]
  %2786 = phi float [ %2776, %2745 ], [ %2780, %2779 ]
  br i1 %2576, label %2787, label %2821, !dx.controlflow.hints !15

; <label>:2787                                    ; preds = %2783
  %2788 = call float @dx.op.unary.f32(i32 23, float %2544)  ; Log(value)
  %2789 = call float @dx.op.unary.f32(i32 23, float %2545)  ; Log(value)
  %2790 = call float @dx.op.unary.f32(i32 23, float %2546)  ; Log(value)
  %2791 = fmul fast float %2788, 0x3F89F9B580000000
  %2792 = fmul fast float %2789, 0x3F89F9B580000000
  %2793 = fmul fast float %2790, 0x3F89F9B580000000
  %2794 = call float @dx.op.unary.f32(i32 21, float %2791)  ; Exp(value)
  %2795 = call float @dx.op.unary.f32(i32 21, float %2792)  ; Exp(value)
  %2796 = call float @dx.op.unary.f32(i32 21, float %2793)  ; Exp(value)
  %2797 = fmul fast float %2794, 1.868750e+01
  %2798 = fmul fast float %2795, 1.868750e+01
  %2799 = fmul fast float %2796, 1.868750e+01
  %2800 = fsub fast float 0x4032DA0000000000, %2797
  %2801 = fsub fast float 0x4032DA0000000000, %2798
  %2802 = fsub fast float 0x4032DA0000000000, %2799
  %2803 = fadd fast float %2794, -8.359375e-01
  %2804 = fadd fast float %2795, -8.359375e-01
  %2805 = fadd fast float %2796, -8.359375e-01
  %2806 = call float @dx.op.binary.f32(i32 35, float %2803, float 0.000000e+00)  ; FMax(a,b)
  %2807 = call float @dx.op.binary.f32(i32 35, float %2804, float 0.000000e+00)  ; FMax(a,b)
  %2808 = call float @dx.op.binary.f32(i32 35, float %2805, float 0.000000e+00)  ; FMax(a,b)
  %2809 = fdiv fast float %2806, %2800
  %2810 = fdiv fast float %2807, %2801
  %2811 = fdiv fast float %2808, %2802
  %2812 = call float @dx.op.unary.f32(i32 23, float %2809)  ; Log(value)
  %2813 = call float @dx.op.unary.f32(i32 23, float %2810)  ; Log(value)
  %2814 = call float @dx.op.unary.f32(i32 23, float %2811)  ; Log(value)
  %2815 = fmul fast float %2812, 0x40191C0D60000000
  %2816 = fmul fast float %2813, 0x40191C0D60000000
  %2817 = fmul fast float %2814, 0x40191C0D60000000
  %2818 = call float @dx.op.unary.f32(i32 21, float %2815)  ; Exp(value)
  %2819 = call float @dx.op.unary.f32(i32 21, float %2816)  ; Exp(value)
  %2820 = call float @dx.op.unary.f32(i32 21, float %2817)  ; Exp(value)
  br label %2825

; <label>:2821                                    ; preds = %2783
  %2822 = fmul fast float %2544, %2544
  %2823 = fmul fast float %2545, %2545
  %2824 = fmul fast float %2546, %2546
  br label %2825

; <label>:2825                                    ; preds = %2821, %2787
  %2826 = phi float [ %2820, %2787 ], [ %2824, %2821 ]
  %2827 = phi float [ %2819, %2787 ], [ %2823, %2821 ]
  %2828 = phi float [ %2818, %2787 ], [ %2822, %2821 ]
  br i1 %2576, label %2829, label %2863, !dx.controlflow.hints !15

; <label>:2829                                    ; preds = %2825
  %2830 = call float @dx.op.unary.f32(i32 23, float %2549)  ; Log(value)
  %2831 = call float @dx.op.unary.f32(i32 23, float %2550)  ; Log(value)
  %2832 = call float @dx.op.unary.f32(i32 23, float %2551)  ; Log(value)
  %2833 = fmul fast float %2830, 0x3F89F9B580000000
  %2834 = fmul fast float %2831, 0x3F89F9B580000000
  %2835 = fmul fast float %2832, 0x3F89F9B580000000
  %2836 = call float @dx.op.unary.f32(i32 21, float %2833)  ; Exp(value)
  %2837 = call float @dx.op.unary.f32(i32 21, float %2834)  ; Exp(value)
  %2838 = call float @dx.op.unary.f32(i32 21, float %2835)  ; Exp(value)
  %2839 = fmul fast float %2836, 1.868750e+01
  %2840 = fmul fast float %2837, 1.868750e+01
  %2841 = fmul fast float %2838, 1.868750e+01
  %2842 = fsub fast float 0x4032DA0000000000, %2839
  %2843 = fsub fast float 0x4032DA0000000000, %2840
  %2844 = fsub fast float 0x4032DA0000000000, %2841
  %2845 = fadd fast float %2836, -8.359375e-01
  %2846 = fadd fast float %2837, -8.359375e-01
  %2847 = fadd fast float %2838, -8.359375e-01
  %2848 = call float @dx.op.binary.f32(i32 35, float %2845, float 0.000000e+00)  ; FMax(a,b)
  %2849 = call float @dx.op.binary.f32(i32 35, float %2846, float 0.000000e+00)  ; FMax(a,b)
  %2850 = call float @dx.op.binary.f32(i32 35, float %2847, float 0.000000e+00)  ; FMax(a,b)
  %2851 = fdiv fast float %2848, %2842
  %2852 = fdiv fast float %2849, %2843
  %2853 = fdiv fast float %2850, %2844
  %2854 = call float @dx.op.unary.f32(i32 23, float %2851)  ; Log(value)
  %2855 = call float @dx.op.unary.f32(i32 23, float %2852)  ; Log(value)
  %2856 = call float @dx.op.unary.f32(i32 23, float %2853)  ; Log(value)
  %2857 = fmul fast float %2854, 0x40191C0D60000000
  %2858 = fmul fast float %2855, 0x40191C0D60000000
  %2859 = fmul fast float %2856, 0x40191C0D60000000
  %2860 = call float @dx.op.unary.f32(i32 21, float %2857)  ; Exp(value)
  %2861 = call float @dx.op.unary.f32(i32 21, float %2858)  ; Exp(value)
  %2862 = call float @dx.op.unary.f32(i32 21, float %2859)  ; Exp(value)
  br label %2867

; <label>:2863                                    ; preds = %2825
  %2864 = fmul fast float %2549, %2549
  %2865 = fmul fast float %2550, %2550
  %2866 = fmul fast float %2551, %2551
  br label %2867

; <label>:2867                                    ; preds = %2863, %2829
  %2868 = phi float [ %2862, %2829 ], [ %2866, %2863 ]
  %2869 = phi float [ %2861, %2829 ], [ %2865, %2863 ]
  %2870 = phi float [ %2860, %2829 ], [ %2864, %2863 ]
  br i1 %2576, label %2871, label %2905, !dx.controlflow.hints !15

; <label>:2871                                    ; preds = %2867
  %2872 = call float @dx.op.unary.f32(i32 23, float %2553)  ; Log(value)
  %2873 = call float @dx.op.unary.f32(i32 23, float %2554)  ; Log(value)
  %2874 = call float @dx.op.unary.f32(i32 23, float %2555)  ; Log(value)
  %2875 = fmul fast float %2872, 0x3F89F9B580000000
  %2876 = fmul fast float %2873, 0x3F89F9B580000000
  %2877 = fmul fast float %2874, 0x3F89F9B580000000
  %2878 = call float @dx.op.unary.f32(i32 21, float %2875)  ; Exp(value)
  %2879 = call float @dx.op.unary.f32(i32 21, float %2876)  ; Exp(value)
  %2880 = call float @dx.op.unary.f32(i32 21, float %2877)  ; Exp(value)
  %2881 = fmul fast float %2878, 1.868750e+01
  %2882 = fmul fast float %2879, 1.868750e+01
  %2883 = fmul fast float %2880, 1.868750e+01
  %2884 = fsub fast float 0x4032DA0000000000, %2881
  %2885 = fsub fast float 0x4032DA0000000000, %2882
  %2886 = fsub fast float 0x4032DA0000000000, %2883
  %2887 = fadd fast float %2878, -8.359375e-01
  %2888 = fadd fast float %2879, -8.359375e-01
  %2889 = fadd fast float %2880, -8.359375e-01
  %2890 = call float @dx.op.binary.f32(i32 35, float %2887, float 0.000000e+00)  ; FMax(a,b)
  %2891 = call float @dx.op.binary.f32(i32 35, float %2888, float 0.000000e+00)  ; FMax(a,b)
  %2892 = call float @dx.op.binary.f32(i32 35, float %2889, float 0.000000e+00)  ; FMax(a,b)
  %2893 = fdiv fast float %2890, %2884
  %2894 = fdiv fast float %2891, %2885
  %2895 = fdiv fast float %2892, %2886
  %2896 = call float @dx.op.unary.f32(i32 23, float %2893)  ; Log(value)
  %2897 = call float @dx.op.unary.f32(i32 23, float %2894)  ; Log(value)
  %2898 = call float @dx.op.unary.f32(i32 23, float %2895)  ; Log(value)
  %2899 = fmul fast float %2896, 0x40191C0D60000000
  %2900 = fmul fast float %2897, 0x40191C0D60000000
  %2901 = fmul fast float %2898, 0x40191C0D60000000
  %2902 = call float @dx.op.unary.f32(i32 21, float %2899)  ; Exp(value)
  %2903 = call float @dx.op.unary.f32(i32 21, float %2900)  ; Exp(value)
  %2904 = call float @dx.op.unary.f32(i32 21, float %2901)  ; Exp(value)
  br label %2909

; <label>:2905                                    ; preds = %2867
  %2906 = fmul fast float %2553, %2553
  %2907 = fmul fast float %2554, %2554
  %2908 = fmul fast float %2555, %2555
  br label %2909

; <label>:2909                                    ; preds = %2905, %2871
  %2910 = phi float [ %2904, %2871 ], [ %2908, %2905 ]
  %2911 = phi float [ %2903, %2871 ], [ %2907, %2905 ]
  %2912 = phi float [ %2902, %2871 ], [ %2906, %2905 ]
  br i1 %2576, label %2913, label %2947, !dx.controlflow.hints !15

; <label>:2913                                    ; preds = %2909
  %2914 = call float @dx.op.unary.f32(i32 23, float %2562)  ; Log(value)
  %2915 = call float @dx.op.unary.f32(i32 23, float %2563)  ; Log(value)
  %2916 = call float @dx.op.unary.f32(i32 23, float %2564)  ; Log(value)
  %2917 = fmul fast float %2914, 0x3F89F9B580000000
  %2918 = fmul fast float %2915, 0x3F89F9B580000000
  %2919 = fmul fast float %2916, 0x3F89F9B580000000
  %2920 = call float @dx.op.unary.f32(i32 21, float %2917)  ; Exp(value)
  %2921 = call float @dx.op.unary.f32(i32 21, float %2918)  ; Exp(value)
  %2922 = call float @dx.op.unary.f32(i32 21, float %2919)  ; Exp(value)
  %2923 = fmul fast float %2920, 1.868750e+01
  %2924 = fmul fast float %2921, 1.868750e+01
  %2925 = fmul fast float %2922, 1.868750e+01
  %2926 = fsub fast float 0x4032DA0000000000, %2923
  %2927 = fsub fast float 0x4032DA0000000000, %2924
  %2928 = fsub fast float 0x4032DA0000000000, %2925
  %2929 = fadd fast float %2920, -8.359375e-01
  %2930 = fadd fast float %2921, -8.359375e-01
  %2931 = fadd fast float %2922, -8.359375e-01
  %2932 = call float @dx.op.binary.f32(i32 35, float %2929, float 0.000000e+00)  ; FMax(a,b)
  %2933 = call float @dx.op.binary.f32(i32 35, float %2930, float 0.000000e+00)  ; FMax(a,b)
  %2934 = call float @dx.op.binary.f32(i32 35, float %2931, float 0.000000e+00)  ; FMax(a,b)
  %2935 = fdiv fast float %2932, %2926
  %2936 = fdiv fast float %2933, %2927
  %2937 = fdiv fast float %2934, %2928
  %2938 = call float @dx.op.unary.f32(i32 23, float %2935)  ; Log(value)
  %2939 = call float @dx.op.unary.f32(i32 23, float %2936)  ; Log(value)
  %2940 = call float @dx.op.unary.f32(i32 23, float %2937)  ; Log(value)
  %2941 = fmul fast float %2938, 0x40191C0D60000000
  %2942 = fmul fast float %2939, 0x40191C0D60000000
  %2943 = fmul fast float %2940, 0x40191C0D60000000
  %2944 = call float @dx.op.unary.f32(i32 21, float %2941)  ; Exp(value)
  %2945 = call float @dx.op.unary.f32(i32 21, float %2942)  ; Exp(value)
  %2946 = call float @dx.op.unary.f32(i32 21, float %2943)  ; Exp(value)
  br label %2951

; <label>:2947                                    ; preds = %2909
  %2948 = fmul fast float %2562, %2562
  %2949 = fmul fast float %2563, %2563
  %2950 = fmul fast float %2564, %2564
  br label %2951

; <label>:2951                                    ; preds = %2947, %2913
  %2952 = phi float [ %2946, %2913 ], [ %2950, %2947 ]
  %2953 = phi float [ %2945, %2913 ], [ %2949, %2947 ]
  %2954 = phi float [ %2944, %2913 ], [ %2948, %2947 ]
  br i1 %2576, label %2955, label %2989, !dx.controlflow.hints !15

; <label>:2955                                    ; preds = %2951
  %2956 = call float @dx.op.unary.f32(i32 23, float %2566)  ; Log(value)
  %2957 = call float @dx.op.unary.f32(i32 23, float %2567)  ; Log(value)
  %2958 = call float @dx.op.unary.f32(i32 23, float %2568)  ; Log(value)
  %2959 = fmul fast float %2956, 0x3F89F9B580000000
  %2960 = fmul fast float %2957, 0x3F89F9B580000000
  %2961 = fmul fast float %2958, 0x3F89F9B580000000
  %2962 = call float @dx.op.unary.f32(i32 21, float %2959)  ; Exp(value)
  %2963 = call float @dx.op.unary.f32(i32 21, float %2960)  ; Exp(value)
  %2964 = call float @dx.op.unary.f32(i32 21, float %2961)  ; Exp(value)
  %2965 = fmul fast float %2962, 1.868750e+01
  %2966 = fmul fast float %2963, 1.868750e+01
  %2967 = fmul fast float %2964, 1.868750e+01
  %2968 = fsub fast float 0x4032DA0000000000, %2965
  %2969 = fsub fast float 0x4032DA0000000000, %2966
  %2970 = fsub fast float 0x4032DA0000000000, %2967
  %2971 = fadd fast float %2962, -8.359375e-01
  %2972 = fadd fast float %2963, -8.359375e-01
  %2973 = fadd fast float %2964, -8.359375e-01
  %2974 = call float @dx.op.binary.f32(i32 35, float %2971, float 0.000000e+00)  ; FMax(a,b)
  %2975 = call float @dx.op.binary.f32(i32 35, float %2972, float 0.000000e+00)  ; FMax(a,b)
  %2976 = call float @dx.op.binary.f32(i32 35, float %2973, float 0.000000e+00)  ; FMax(a,b)
  %2977 = fdiv fast float %2974, %2968
  %2978 = fdiv fast float %2975, %2969
  %2979 = fdiv fast float %2976, %2970
  %2980 = call float @dx.op.unary.f32(i32 23, float %2977)  ; Log(value)
  %2981 = call float @dx.op.unary.f32(i32 23, float %2978)  ; Log(value)
  %2982 = call float @dx.op.unary.f32(i32 23, float %2979)  ; Log(value)
  %2983 = fmul fast float %2980, 0x40191C0D60000000
  %2984 = fmul fast float %2981, 0x40191C0D60000000
  %2985 = fmul fast float %2982, 0x40191C0D60000000
  %2986 = call float @dx.op.unary.f32(i32 21, float %2983)  ; Exp(value)
  %2987 = call float @dx.op.unary.f32(i32 21, float %2984)  ; Exp(value)
  %2988 = call float @dx.op.unary.f32(i32 21, float %2985)  ; Exp(value)
  br label %2993

; <label>:2989                                    ; preds = %2951
  %2990 = fmul fast float %2566, %2566
  %2991 = fmul fast float %2567, %2567
  %2992 = fmul fast float %2568, %2568
  br label %2993

; <label>:2993                                    ; preds = %2989, %2955
  %2994 = phi float [ %2988, %2955 ], [ %2992, %2989 ]
  %2995 = phi float [ %2987, %2955 ], [ %2991, %2989 ]
  %2996 = phi float [ %2986, %2955 ], [ %2990, %2989 ]
  br i1 %2576, label %2997, label %3031, !dx.controlflow.hints !15

; <label>:2997                                    ; preds = %2993
  %2998 = call float @dx.op.unary.f32(i32 23, float %2558)  ; Log(value)
  %2999 = call float @dx.op.unary.f32(i32 23, float %2559)  ; Log(value)
  %3000 = call float @dx.op.unary.f32(i32 23, float %2560)  ; Log(value)
  %3001 = fmul fast float %2998, 0x3F89F9B580000000
  %3002 = fmul fast float %2999, 0x3F89F9B580000000
  %3003 = fmul fast float %3000, 0x3F89F9B580000000
  %3004 = call float @dx.op.unary.f32(i32 21, float %3001)  ; Exp(value)
  %3005 = call float @dx.op.unary.f32(i32 21, float %3002)  ; Exp(value)
  %3006 = call float @dx.op.unary.f32(i32 21, float %3003)  ; Exp(value)
  %3007 = fmul fast float %3004, 1.868750e+01
  %3008 = fmul fast float %3005, 1.868750e+01
  %3009 = fmul fast float %3006, 1.868750e+01
  %3010 = fsub fast float 0x4032DA0000000000, %3007
  %3011 = fsub fast float 0x4032DA0000000000, %3008
  %3012 = fsub fast float 0x4032DA0000000000, %3009
  %3013 = fadd fast float %3004, -8.359375e-01
  %3014 = fadd fast float %3005, -8.359375e-01
  %3015 = fadd fast float %3006, -8.359375e-01
  %3016 = call float @dx.op.binary.f32(i32 35, float %3013, float 0.000000e+00)  ; FMax(a,b)
  %3017 = call float @dx.op.binary.f32(i32 35, float %3014, float 0.000000e+00)  ; FMax(a,b)
  %3018 = call float @dx.op.binary.f32(i32 35, float %3015, float 0.000000e+00)  ; FMax(a,b)
  %3019 = fdiv fast float %3016, %3010
  %3020 = fdiv fast float %3017, %3011
  %3021 = fdiv fast float %3018, %3012
  %3022 = call float @dx.op.unary.f32(i32 23, float %3019)  ; Log(value)
  %3023 = call float @dx.op.unary.f32(i32 23, float %3020)  ; Log(value)
  %3024 = call float @dx.op.unary.f32(i32 23, float %3021)  ; Log(value)
  %3025 = fmul fast float %3022, 0x40191C0D60000000
  %3026 = fmul fast float %3023, 0x40191C0D60000000
  %3027 = fmul fast float %3024, 0x40191C0D60000000
  %3028 = call float @dx.op.unary.f32(i32 21, float %3025)  ; Exp(value)
  %3029 = call float @dx.op.unary.f32(i32 21, float %3026)  ; Exp(value)
  %3030 = call float @dx.op.unary.f32(i32 21, float %3027)  ; Exp(value)
  br label %3035

; <label>:3031                                    ; preds = %2993
  %3032 = fmul fast float %2558, %2558
  %3033 = fmul fast float %2559, %2559
  %3034 = fmul fast float %2560, %2560
  br label %3035

; <label>:3035                                    ; preds = %3031, %2997
  %3036 = phi float [ %3030, %2997 ], [ %3034, %3031 ]
  %3037 = phi float [ %3029, %2997 ], [ %3033, %3031 ]
  %3038 = phi float [ %3028, %2997 ], [ %3032, %3031 ]
  br i1 %2576, label %3039, label %3073, !dx.controlflow.hints !15

; <label>:3039                                    ; preds = %3035
  %3040 = call float @dx.op.unary.f32(i32 23, float %2570)  ; Log(value)
  %3041 = call float @dx.op.unary.f32(i32 23, float %2571)  ; Log(value)
  %3042 = call float @dx.op.unary.f32(i32 23, float %2572)  ; Log(value)
  %3043 = fmul fast float %3040, 0x3F89F9B580000000
  %3044 = fmul fast float %3041, 0x3F89F9B580000000
  %3045 = fmul fast float %3042, 0x3F89F9B580000000
  %3046 = call float @dx.op.unary.f32(i32 21, float %3043)  ; Exp(value)
  %3047 = call float @dx.op.unary.f32(i32 21, float %3044)  ; Exp(value)
  %3048 = call float @dx.op.unary.f32(i32 21, float %3045)  ; Exp(value)
  %3049 = fmul fast float %3046, 1.868750e+01
  %3050 = fmul fast float %3047, 1.868750e+01
  %3051 = fmul fast float %3048, 1.868750e+01
  %3052 = fsub fast float 0x4032DA0000000000, %3049
  %3053 = fsub fast float 0x4032DA0000000000, %3050
  %3054 = fsub fast float 0x4032DA0000000000, %3051
  %3055 = fadd fast float %3046, -8.359375e-01
  %3056 = fadd fast float %3047, -8.359375e-01
  %3057 = fadd fast float %3048, -8.359375e-01
  %3058 = call float @dx.op.binary.f32(i32 35, float %3055, float 0.000000e+00)  ; FMax(a,b)
  %3059 = call float @dx.op.binary.f32(i32 35, float %3056, float 0.000000e+00)  ; FMax(a,b)
  %3060 = call float @dx.op.binary.f32(i32 35, float %3057, float 0.000000e+00)  ; FMax(a,b)
  %3061 = fdiv fast float %3058, %3052
  %3062 = fdiv fast float %3059, %3053
  %3063 = fdiv fast float %3060, %3054
  %3064 = call float @dx.op.unary.f32(i32 23, float %3061)  ; Log(value)
  %3065 = call float @dx.op.unary.f32(i32 23, float %3062)  ; Log(value)
  %3066 = call float @dx.op.unary.f32(i32 23, float %3063)  ; Log(value)
  %3067 = fmul fast float %3064, 0x40191C0D60000000
  %3068 = fmul fast float %3065, 0x40191C0D60000000
  %3069 = fmul fast float %3066, 0x40191C0D60000000
  %3070 = call float @dx.op.unary.f32(i32 21, float %3067)  ; Exp(value)
  %3071 = call float @dx.op.unary.f32(i32 21, float %3068)  ; Exp(value)
  %3072 = call float @dx.op.unary.f32(i32 21, float %3069)  ; Exp(value)
  br label %3077

; <label>:3073                                    ; preds = %3035
  %3074 = fmul fast float %2570, %2570
  %3075 = fmul fast float %2571, %2571
  %3076 = fmul fast float %2572, %2572
  br label %3077

; <label>:3077                                    ; preds = %3073, %3039
  %3078 = phi float [ %3072, %3039 ], [ %3076, %3073 ]
  %3079 = phi float [ %3071, %3039 ], [ %3075, %3073 ]
  %3080 = phi float [ %3070, %3039 ], [ %3074, %3073 ]
  %3081 = call float @dx.op.binary.f32(i32 36, float %2701, float %2743)  ; FMin(a,b)
  %3082 = call float @dx.op.binary.f32(i32 36, float %2617, float %3081)  ; FMin(a,b)
  %3083 = call float @dx.op.binary.f32(i32 36, float %2785, float %2911)  ; FMin(a,b)
  %3084 = call float @dx.op.binary.f32(i32 36, float %3082, float %3083)  ; FMin(a,b)
  %3085 = call float @dx.op.binary.f32(i32 35, float %2701, float %2743)  ; FMax(a,b)
  %3086 = call float @dx.op.binary.f32(i32 35, float %2617, float %3085)  ; FMax(a,b)
  %3087 = call float @dx.op.binary.f32(i32 35, float %2785, float %2911)  ; FMax(a,b)
  %3088 = call float @dx.op.binary.f32(i32 35, float %3086, float %3087)  ; FMax(a,b)
  %3089 = call float @dx.op.binary.f32(i32 36, float %2743, float %2785)  ; FMin(a,b)
  %3090 = call float @dx.op.binary.f32(i32 36, float %2659, float %3089)  ; FMin(a,b)
  %3091 = call float @dx.op.binary.f32(i32 36, float %2827, float %2953)  ; FMin(a,b)
  %3092 = call float @dx.op.binary.f32(i32 36, float %3090, float %3091)  ; FMin(a,b)
  %3093 = call float @dx.op.binary.f32(i32 35, float %2743, float %2785)  ; FMax(a,b)
  %3094 = call float @dx.op.binary.f32(i32 35, float %2659, float %3093)  ; FMax(a,b)
  %3095 = call float @dx.op.binary.f32(i32 35, float %2827, float %2953)  ; FMax(a,b)
  %3096 = call float @dx.op.binary.f32(i32 35, float %3094, float %3095)  ; FMax(a,b)
  %3097 = call float @dx.op.binary.f32(i32 36, float %2869, float %2911)  ; FMin(a,b)
  %3098 = call float @dx.op.binary.f32(i32 36, float %2743, float %3097)  ; FMin(a,b)
  %3099 = call float @dx.op.binary.f32(i32 36, float %2953, float %3037)  ; FMin(a,b)
  %3100 = call float @dx.op.binary.f32(i32 36, float %3098, float %3099)  ; FMin(a,b)
  %3101 = call float @dx.op.binary.f32(i32 35, float %2869, float %2911)  ; FMax(a,b)
  %3102 = call float @dx.op.binary.f32(i32 35, float %2743, float %3101)  ; FMax(a,b)
  %3103 = call float @dx.op.binary.f32(i32 35, float %2953, float %3037)  ; FMax(a,b)
  %3104 = call float @dx.op.binary.f32(i32 35, float %3102, float %3103)  ; FMax(a,b)
  %3105 = call float @dx.op.binary.f32(i32 36, float %2911, float %2953)  ; FMin(a,b)
  %3106 = call float @dx.op.binary.f32(i32 36, float %2785, float %3105)  ; FMin(a,b)
  %3107 = call float @dx.op.binary.f32(i32 36, float %2995, float %3079)  ; FMin(a,b)
  %3108 = call float @dx.op.binary.f32(i32 36, float %3106, float %3107)  ; FMin(a,b)
  %3109 = call float @dx.op.binary.f32(i32 35, float %2911, float %2953)  ; FMax(a,b)
  %3110 = call float @dx.op.binary.f32(i32 35, float %2785, float %3109)  ; FMax(a,b)
  %3111 = call float @dx.op.binary.f32(i32 35, float %2995, float %3079)  ; FMax(a,b)
  %3112 = call float @dx.op.binary.f32(i32 35, float %3110, float %3111)  ; FMax(a,b)
  %3113 = bitcast float %3088 to i32
  %3114 = sub i32 2129690299, %3113
  %3115 = bitcast i32 %3114 to float
  %3116 = bitcast float %3096 to i32
  %3117 = sub i32 2129690299, %3116
  %3118 = bitcast i32 %3117 to float
  %3119 = bitcast float %3104 to i32
  %3120 = sub i32 2129690299, %3119
  %3121 = bitcast i32 %3120 to float
  %3122 = bitcast float %3112 to i32
  %3123 = sub i32 2129690299, %3122
  %3124 = bitcast i32 %3123 to float
  %3125 = fsub fast float 1.000000e+00, %3088
  %3126 = call float @dx.op.binary.f32(i32 36, float %3084, float %3125)  ; FMin(a,b)
  %3127 = fmul fast float %3126, %3115
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = fsub fast float 1.000000e+00, %3096
  %3130 = call float @dx.op.binary.f32(i32 36, float %3092, float %3129)  ; FMin(a,b)
  %3131 = fmul fast float %3130, %3118
  %3132 = call float @dx.op.unary.f32(i32 7, float %3131)  ; Saturate(value)
  %3133 = fsub fast float 1.000000e+00, %3104
  %3134 = call float @dx.op.binary.f32(i32 36, float %3100, float %3133)  ; FMin(a,b)
  %3135 = fmul fast float %3134, %3121
  %3136 = call float @dx.op.unary.f32(i32 7, float %3135)  ; Saturate(value)
  %3137 = fsub fast float 1.000000e+00, %3112
  %3138 = call float @dx.op.binary.f32(i32 36, float %3108, float %3137)  ; FMin(a,b)
  %3139 = fmul fast float %3138, %3124
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3141 = bitcast float %3128 to i32
  %3142 = lshr i32 %3141, 1
  %3143 = add nuw i32 %3142, 532432441
  %3144 = bitcast i32 %3143 to float
  %3145 = bitcast float %3132 to i32
  %3146 = lshr i32 %3145, 1
  %3147 = add nuw i32 %3146, 532432441
  %3148 = bitcast i32 %3147 to float
  %3149 = bitcast float %3136 to i32
  %3150 = lshr i32 %3149, 1
  %3151 = add nuw i32 %3150, 532432441
  %3152 = bitcast i32 %3151 to float
  %3153 = bitcast float %3140 to i32
  %3154 = lshr i32 %3153, 1
  %3155 = add nuw i32 %3154, 532432441
  %3156 = bitcast i32 %3155 to float
  %3157 = bitcast i32 %2499 to float
  %3158 = fmul fast float %3144, %3157
  %3159 = fmul fast float %3148, %3157
  %3160 = fmul fast float %3152, %3157
  %3161 = fmul fast float %3156, %3157
  %3162 = fsub fast float 1.000000e+00, %2515
  %3163 = fsub fast float 1.000000e+00, %2516
  %3164 = fmul fast float %3162, %3163
  %3165 = fmul fast float %3163, %2515
  %3166 = fmul fast float %3162, %2516
  %3167 = fmul fast float %2515, %2516
  %3168 = fsub fast float 3.125000e-02, %3084
  %3169 = fadd fast float %3168, %3088
  %3170 = bitcast float %3169 to i32
  %3171 = sub i32 2129690299, %3170
  %3172 = bitcast i32 %3171 to float
  %3173 = fmul fast float %3164, %3172
  %3174 = fsub fast float 3.125000e-02, %3092
  %3175 = fadd fast float %3174, %3096
  %3176 = bitcast float %3175 to i32
  %3177 = sub i32 2129690299, %3176
  %3178 = bitcast i32 %3177 to float
  %3179 = fmul fast float %3165, %3178
  %3180 = fsub fast float 3.125000e-02, %3100
  %3181 = fadd fast float %3180, %3104
  %3182 = bitcast float %3181 to i32
  %3183 = sub i32 2129690299, %3182
  %3184 = bitcast i32 %3183 to float
  %3185 = fmul fast float %3166, %3184
  %3186 = fsub fast float 3.125000e-02, %3108
  %3187 = fadd fast float %3186, %3112
  %3188 = bitcast float %3187 to i32
  %3189 = sub i32 2129690299, %3188
  %3190 = bitcast i32 %3189 to float
  %3191 = fmul fast float %3167, %3190
  %3192 = fmul fast float %3158, %3173
  %3193 = fmul fast float %3159, %3179
  %3194 = fmul fast float %3160, %3185
  %3195 = fadd fast float %3193, %3173
  %3196 = fadd fast float %3195, %3194
  %3197 = fmul fast float %3161, %3191
  %3198 = fadd fast float %3192, %3179
  %3199 = fadd fast float %3198, %3197
  %3200 = fadd fast float %3192, %3185
  %3201 = fadd fast float %3200, %3197
  %3202 = fadd fast float %3193, %3191
  %3203 = fadd fast float %3202, %3194
  %3204 = fadd fast float %3193, %3192
  %3205 = fadd fast float %3204, %3194
  %3206 = fadd fast float %3205, %3197
  %3207 = fmul fast float %3206, 2.000000e+00
  %3208 = fadd fast float %3203, %3196
  %3209 = fadd fast float %3208, %3207
  %3210 = fadd fast float %3209, %3199
  %3211 = fadd fast float %3210, %3201
  %3212 = bitcast float %3211 to i32
  %3213 = sub i32 2129764351, %3212
  %3214 = bitcast i32 %3213 to float
  %3215 = fmul fast float %3214, %3211
  %3216 = fsub fast float 2.000000e+00, %3215
  %3217 = fmul fast float %3216, %3214
  %3218 = fadd fast float %2702, %2618
  %3219 = fmul fast float %3192, %3218
  %3220 = fmul fast float %3196, %2744
  %3221 = fmul fast float %3199, %2786
  %3222 = fmul fast float %3201, %2912
  %3223 = fmul fast float %3203, %2954
  %3224 = fadd fast float %3080, %2996
  %3225 = fmul fast float %3197, %3224
  %3226 = fadd fast float %3038, %2870
  %3227 = fmul fast float %3194, %3226
  %3228 = fadd fast float %2828, %2660
  %3229 = fmul fast float %3193, %3228
  %3230 = fadd fast float %3220, %3219
  %3231 = fadd fast float %3230, %3223
  %3232 = fadd fast float %3231, %3221
  %3233 = fadd fast float %3232, %3222
  %3234 = fadd fast float %3233, %3225
  %3235 = fadd fast float %3234, %3227
  %3236 = fadd fast float %3235, %3229
  %3237 = fmul fast float %3217, %3236
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3239 = fadd fast float %2701, %2617
  %3240 = fmul fast float %3192, %3239
  %3241 = fmul fast float %3196, %2743
  %3242 = fmul fast float %3199, %2785
  %3243 = fmul fast float %3201, %2911
  %3244 = fmul fast float %3203, %2953
  %3245 = fadd fast float %3079, %2995
  %3246 = fmul fast float %3197, %3245
  %3247 = fadd fast float %3037, %2869
  %3248 = fmul fast float %3194, %3247
  %3249 = fadd fast float %2827, %2659
  %3250 = fmul fast float %3193, %3249
  %3251 = fadd fast float %3241, %3240
  %3252 = fadd fast float %3251, %3244
  %3253 = fadd fast float %3252, %3242
  %3254 = fadd fast float %3253, %3243
  %3255 = fadd fast float %3254, %3246
  %3256 = fadd fast float %3255, %3248
  %3257 = fadd fast float %3256, %3250
  %3258 = fmul fast float %3217, %3257
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3260 = fadd fast float %2700, %2616
  %3261 = fmul fast float %3192, %3260
  %3262 = fmul fast float %3196, %2742
  %3263 = fmul fast float %3199, %2784
  %3264 = fmul fast float %3201, %2910
  %3265 = fmul fast float %3203, %2952
  %3266 = fadd fast float %3078, %2994
  %3267 = fmul fast float %3197, %3266
  %3268 = fadd fast float %3036, %2868
  %3269 = fmul fast float %3194, %3268
  %3270 = fadd fast float %2826, %2658
  %3271 = fmul fast float %3193, %3270
  %3272 = fadd fast float %3262, %3261
  %3273 = fadd fast float %3272, %3265
  %3274 = fadd fast float %3273, %3263
  %3275 = fadd fast float %3274, %3264
  %3276 = fadd fast float %3275, %3267
  %3277 = fadd fast float %3276, %3269
  %3278 = fadd fast float %3277, %3271
  %3279 = fmul fast float %3217, %3278
  %3280 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  br i1 %2576, label %3281, label %3315, !dx.controlflow.hints !16

; <label>:3281                                    ; preds = %3077
  %3282 = call float @dx.op.unary.f32(i32 23, float %3238)  ; Log(value)
  %3283 = call float @dx.op.unary.f32(i32 23, float %3259)  ; Log(value)
  %3284 = call float @dx.op.unary.f32(i32 23, float %3280)  ; Log(value)
  %3285 = fmul fast float %3282, 0x3FC4640000000000
  %3286 = fmul fast float %3283, 0x3FC4640000000000
  %3287 = fmul fast float %3284, 0x3FC4640000000000
  %3288 = call float @dx.op.unary.f32(i32 21, float %3285)  ; Exp(value)
  %3289 = call float @dx.op.unary.f32(i32 21, float %3286)  ; Exp(value)
  %3290 = call float @dx.op.unary.f32(i32 21, float %3287)  ; Exp(value)
  %3291 = fmul fast float %3288, 0x4032DA0000000000
  %3292 = fmul fast float %3289, 0x4032DA0000000000
  %3293 = fmul fast float %3290, 0x4032DA0000000000
  %3294 = fadd fast float %3291, 8.359375e-01
  %3295 = fadd fast float %3292, 8.359375e-01
  %3296 = fadd fast float %3293, 8.359375e-01
  %3297 = fmul fast float %3288, 1.868750e+01
  %3298 = fmul fast float %3289, 1.868750e+01
  %3299 = fmul fast float %3290, 1.868750e+01
  %3300 = fadd fast float %3297, 1.000000e+00
  %3301 = fadd fast float %3298, 1.000000e+00
  %3302 = fadd fast float %3299, 1.000000e+00
  %3303 = fdiv fast float %3294, %3300
  %3304 = fdiv fast float %3295, %3301
  %3305 = fdiv fast float %3296, %3302
  %3306 = call float @dx.op.unary.f32(i32 23, float %3303)  ; Log(value)
  %3307 = call float @dx.op.unary.f32(i32 23, float %3304)  ; Log(value)
  %3308 = call float @dx.op.unary.f32(i32 23, float %3305)  ; Log(value)
  %3309 = fmul fast float %3306, 7.884375e+01
  %3310 = fmul fast float %3307, 7.884375e+01
  %3311 = fmul fast float %3308, 7.884375e+01
  %3312 = call float @dx.op.unary.f32(i32 21, float %3309)  ; Exp(value)
  %3313 = call float @dx.op.unary.f32(i32 21, float %3310)  ; Exp(value)
  %3314 = call float @dx.op.unary.f32(i32 21, float %3311)  ; Exp(value)
  br label %3319

; <label>:3315                                    ; preds = %3077
  %3316 = call float @dx.op.unary.f32(i32 24, float %3238)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %3259)  ; Sqrt(value)
  %3318 = call float @dx.op.unary.f32(i32 24, float %3280)  ; Sqrt(value)
  br label %3319

; <label>:3319                                    ; preds = %3315, %3281
  %3320 = phi float [ %3312, %3281 ], [ %3316, %3315 ]
  %3321 = phi float [ %3313, %3281 ], [ %3317, %3315 ]
  %3322 = phi float [ %3314, %3281 ], [ %3318, %3315 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %1671, i32 undef, float %3320, float %3321, float %3322, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 48, null}
!12 = !{void ()* @cs_cas_upscaling, !"cs_cas_upscaling", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

