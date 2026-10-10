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
; shader hash: fbe12ba86982ef2122bdf894bdb1c0b2
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
;   [96 x i8] (type annotation not present)
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
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%cb = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32> }

define void @cs_rcas() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %43 = call float @dx.op.binary.f32(i32 36, float %26, float %35)  ; FMin(a,b)
  %44 = call float @dx.op.binary.f32(i32 36, float %21, float %43)  ; FMin(a,b)
  %45 = call float @dx.op.binary.f32(i32 36, float %44, float %40)  ; FMin(a,b)
  %46 = call float @dx.op.binary.f32(i32 36, float %27, float %36)  ; FMin(a,b)
  %47 = call float @dx.op.binary.f32(i32 36, float %22, float %46)  ; FMin(a,b)
  %48 = call float @dx.op.binary.f32(i32 36, float %47, float %41)  ; FMin(a,b)
  %49 = call float @dx.op.binary.f32(i32 36, float %28, float %37)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %23, float %49)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %50, float %42)  ; FMin(a,b)
  %52 = call float @dx.op.binary.f32(i32 35, float %26, float %35)  ; FMax(a,b)
  %53 = call float @dx.op.binary.f32(i32 35, float %21, float %52)  ; FMax(a,b)
  %54 = call float @dx.op.binary.f32(i32 35, float %53, float %40)  ; FMax(a,b)
  %55 = call float @dx.op.binary.f32(i32 35, float %27, float %36)  ; FMax(a,b)
  %56 = call float @dx.op.binary.f32(i32 35, float %22, float %55)  ; FMax(a,b)
  %57 = call float @dx.op.binary.f32(i32 35, float %56, float %41)  ; FMax(a,b)
  %58 = call float @dx.op.binary.f32(i32 35, float %28, float %37)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 35, float %23, float %58)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 35, float %59, float %42)  ; FMax(a,b)
  %61 = fdiv fast float 2.500000e-01, %54
  %62 = fdiv fast float 2.500000e-01, %57
  %63 = fdiv fast float 2.500000e-01, %60
  %64 = fsub fast float 1.000000e+00, %54
  %65 = fmul fast float %45, 4.000000e+00
  %66 = fadd fast float %65, -4.000000e+00
  %67 = fdiv fast float 1.000000e+00, %66
  %68 = fmul fast float %67, %64
  %69 = fsub fast float 1.000000e+00, %57
  %70 = fmul fast float %48, 4.000000e+00
  %71 = fadd fast float %70, -4.000000e+00
  %72 = fdiv fast float 1.000000e+00, %71
  %73 = fmul fast float %72, %69
  %74 = fsub fast float 1.000000e+00, %60
  %75 = fmul fast float %51, 4.000000e+00
  %76 = fadd fast float %75, -4.000000e+00
  %77 = fdiv fast float 1.000000e+00, %76
  %78 = fmul fast float %77, %74
  %79 = fmul fast float %45, %61
  %80 = fsub fast float -0.000000e+00, %79
  %81 = call float @dx.op.binary.f32(i32 35, float %80, float %68)  ; FMax(a,b)
  %82 = fmul fast float %48, %62
  %83 = fsub fast float -0.000000e+00, %82
  %84 = call float @dx.op.binary.f32(i32 35, float %83, float %73)  ; FMax(a,b)
  %85 = fmul fast float %51, %63
  %86 = fsub fast float -0.000000e+00, %85
  %87 = call float @dx.op.binary.f32(i32 35, float %86, float %78)  ; FMax(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %84, float %87)  ; FMax(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %81, float %88)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float 0.000000e+00)  ; FMin(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %90)  ; FMax(a,b)
  %92 = bitcast i32 %18 to float
  %93 = fmul fast float %91, %92
  %94 = fmul fast float %93, 4.000000e+00
  %95 = fadd fast float %94, 1.000000e+00
  %96 = bitcast float %95 to i32
  %97 = sub i32 2129764351, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %98, %95
  %100 = fsub fast float 2.000000e+00, %99
  %101 = fmul fast float %100, %98
  %102 = fadd fast float %26, %21
  %103 = fadd fast float %102, %35
  %104 = fadd fast float %103, %40
  %105 = fmul fast float %93, %104
  %106 = fadd fast float %105, %30
  %107 = fmul fast float %101, %106
  %108 = fadd fast float %27, %22
  %109 = fadd fast float %108, %36
  %110 = fadd fast float %109, %41
  %111 = fmul fast float %93, %110
  %112 = fadd fast float %111, %31
  %113 = fmul fast float %101, %112
  %114 = fadd fast float %28, %23
  %115 = fadd fast float %114, %37
  %116 = fadd fast float %115, %42
  %117 = fmul fast float %93, %116
  %118 = fadd fast float %117, %32
  %119 = fmul fast float %101, %118
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %16, i32 undef, float %107, float %113, float %119, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %120 = or i32 %15, 8
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 0
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %120, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = extractvalue %dx.types.ResRet.f32 %123, 1
  %126 = extractvalue %dx.types.ResRet.f32 %123, 2
  %127 = add i32 %120, -1
  %128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = extractvalue %dx.types.ResRet.f32 %128, 1
  %131 = extractvalue %dx.types.ResRet.f32 %128, 2
  %132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %120, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = add i32 %120, 1
  %137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %136, i32 %16, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = extractvalue %dx.types.ResRet.f32 %137, 1
  %140 = extractvalue %dx.types.ResRet.f32 %137, 2
  %141 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %120, i32 %38, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = call float @dx.op.binary.f32(i32 36, float %129, float %138)  ; FMin(a,b)
  %146 = call float @dx.op.binary.f32(i32 36, float %124, float %145)  ; FMin(a,b)
  %147 = call float @dx.op.binary.f32(i32 36, float %146, float %142)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 36, float %130, float %139)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 36, float %125, float %148)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 36, float %149, float %143)  ; FMin(a,b)
  %151 = call float @dx.op.binary.f32(i32 36, float %131, float %140)  ; FMin(a,b)
  %152 = call float @dx.op.binary.f32(i32 36, float %126, float %151)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 36, float %152, float %144)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %129, float %138)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %124, float %154)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float %155, float %142)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float %130, float %139)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 35, float %125, float %157)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %158, float %143)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %131, float %140)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 35, float %126, float %160)  ; FMax(a,b)
  %162 = call float @dx.op.binary.f32(i32 35, float %161, float %144)  ; FMax(a,b)
  %163 = fdiv fast float 2.500000e-01, %156
  %164 = fdiv fast float 2.500000e-01, %159
  %165 = fdiv fast float 2.500000e-01, %162
  %166 = fsub fast float 1.000000e+00, %156
  %167 = fmul fast float %147, 4.000000e+00
  %168 = fadd fast float %167, -4.000000e+00
  %169 = fdiv fast float 1.000000e+00, %168
  %170 = fmul fast float %169, %166
  %171 = fsub fast float 1.000000e+00, %159
  %172 = fmul fast float %150, 4.000000e+00
  %173 = fadd fast float %172, -4.000000e+00
  %174 = fdiv fast float 1.000000e+00, %173
  %175 = fmul fast float %174, %171
  %176 = fsub fast float 1.000000e+00, %162
  %177 = fmul fast float %153, 4.000000e+00
  %178 = fadd fast float %177, -4.000000e+00
  %179 = fdiv fast float 1.000000e+00, %178
  %180 = fmul fast float %179, %176
  %181 = fmul fast float %147, %163
  %182 = fsub fast float -0.000000e+00, %181
  %183 = call float @dx.op.binary.f32(i32 35, float %182, float %170)  ; FMax(a,b)
  %184 = fmul fast float %150, %164
  %185 = fsub fast float -0.000000e+00, %184
  %186 = call float @dx.op.binary.f32(i32 35, float %185, float %175)  ; FMax(a,b)
  %187 = fmul fast float %153, %165
  %188 = fsub fast float -0.000000e+00, %187
  %189 = call float @dx.op.binary.f32(i32 35, float %188, float %180)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %186, float %189)  ; FMax(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %183, float %190)  ; FMax(a,b)
  %192 = call float @dx.op.binary.f32(i32 36, float %191, float 0.000000e+00)  ; FMin(a,b)
  %193 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %192)  ; FMax(a,b)
  %194 = bitcast i32 %122 to float
  %195 = fmul fast float %193, %194
  %196 = fmul fast float %195, 4.000000e+00
  %197 = fadd fast float %196, 1.000000e+00
  %198 = bitcast float %197 to i32
  %199 = sub i32 2129764351, %198
  %200 = bitcast i32 %199 to float
  %201 = fmul fast float %200, %197
  %202 = fsub fast float 2.000000e+00, %201
  %203 = fmul fast float %202, %200
  %204 = fadd fast float %129, %124
  %205 = fadd fast float %204, %138
  %206 = fadd fast float %205, %142
  %207 = fmul fast float %195, %206
  %208 = fadd fast float %207, %133
  %209 = fmul fast float %203, %208
  %210 = fadd fast float %130, %125
  %211 = fadd fast float %210, %139
  %212 = fadd fast float %211, %143
  %213 = fmul fast float %195, %212
  %214 = fadd fast float %213, %134
  %215 = fmul fast float %203, %214
  %216 = fadd fast float %131, %126
  %217 = fadd fast float %216, %140
  %218 = fadd fast float %217, %144
  %219 = fmul fast float %195, %218
  %220 = fadd fast float %219, %135
  %221 = fmul fast float %203, %220
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %120, i32 %16, i32 undef, float %209, float %215, float %221, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %222 = or i32 %16, 8
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 0
  %225 = add i32 %222, -1
  %226 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %120, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = extractvalue %dx.types.ResRet.f32 %226, 1
  %229 = extractvalue %dx.types.ResRet.f32 %226, 2
  %230 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %120, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %136, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = add i32 %222, 1
  %243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %120, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = call float @dx.op.binary.f32(i32 36, float %231, float %239)  ; FMin(a,b)
  %248 = call float @dx.op.binary.f32(i32 36, float %227, float %247)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 36, float %248, float %244)  ; FMin(a,b)
  %250 = call float @dx.op.binary.f32(i32 36, float %232, float %240)  ; FMin(a,b)
  %251 = call float @dx.op.binary.f32(i32 36, float %228, float %250)  ; FMin(a,b)
  %252 = call float @dx.op.binary.f32(i32 36, float %251, float %245)  ; FMin(a,b)
  %253 = call float @dx.op.binary.f32(i32 36, float %233, float %241)  ; FMin(a,b)
  %254 = call float @dx.op.binary.f32(i32 36, float %229, float %253)  ; FMin(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %254, float %246)  ; FMin(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float %231, float %239)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float %227, float %256)  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %257, float %244)  ; FMax(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float %232, float %240)  ; FMax(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %228, float %259)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %260, float %245)  ; FMax(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %233, float %241)  ; FMax(a,b)
  %263 = call float @dx.op.binary.f32(i32 35, float %229, float %262)  ; FMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %263, float %246)  ; FMax(a,b)
  %265 = fdiv fast float 2.500000e-01, %258
  %266 = fdiv fast float 2.500000e-01, %261
  %267 = fdiv fast float 2.500000e-01, %264
  %268 = fsub fast float 1.000000e+00, %258
  %269 = fmul fast float %249, 4.000000e+00
  %270 = fadd fast float %269, -4.000000e+00
  %271 = fdiv fast float 1.000000e+00, %270
  %272 = fmul fast float %271, %268
  %273 = fsub fast float 1.000000e+00, %261
  %274 = fmul fast float %252, 4.000000e+00
  %275 = fadd fast float %274, -4.000000e+00
  %276 = fdiv fast float 1.000000e+00, %275
  %277 = fmul fast float %276, %273
  %278 = fsub fast float 1.000000e+00, %264
  %279 = fmul fast float %255, 4.000000e+00
  %280 = fadd fast float %279, -4.000000e+00
  %281 = fdiv fast float 1.000000e+00, %280
  %282 = fmul fast float %281, %278
  %283 = fmul fast float %249, %265
  %284 = fsub fast float -0.000000e+00, %283
  %285 = call float @dx.op.binary.f32(i32 35, float %284, float %272)  ; FMax(a,b)
  %286 = fmul fast float %252, %266
  %287 = fsub fast float -0.000000e+00, %286
  %288 = call float @dx.op.binary.f32(i32 35, float %287, float %277)  ; FMax(a,b)
  %289 = fmul fast float %255, %267
  %290 = fsub fast float -0.000000e+00, %289
  %291 = call float @dx.op.binary.f32(i32 35, float %290, float %282)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %288, float %291)  ; FMax(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %285, float %292)  ; FMax(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %293, float 0.000000e+00)  ; FMin(a,b)
  %295 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %294)  ; FMax(a,b)
  %296 = bitcast i32 %224 to float
  %297 = fmul fast float %295, %296
  %298 = fmul fast float %297, 4.000000e+00
  %299 = fadd fast float %298, 1.000000e+00
  %300 = bitcast float %299 to i32
  %301 = sub i32 2129764351, %300
  %302 = bitcast i32 %301 to float
  %303 = fmul fast float %302, %299
  %304 = fsub fast float 2.000000e+00, %303
  %305 = fmul fast float %304, %302
  %306 = fadd fast float %231, %227
  %307 = fadd fast float %306, %239
  %308 = fadd fast float %307, %244
  %309 = fmul fast float %297, %308
  %310 = fadd fast float %309, %235
  %311 = fmul fast float %305, %310
  %312 = fadd fast float %232, %228
  %313 = fadd fast float %312, %240
  %314 = fadd fast float %313, %245
  %315 = fmul fast float %297, %314
  %316 = fadd fast float %315, %236
  %317 = fmul fast float %305, %316
  %318 = fadd fast float %233, %229
  %319 = fadd fast float %318, %241
  %320 = fadd fast float %319, %246
  %321 = fmul fast float %297, %320
  %322 = fadd fast float %321, %237
  %323 = fmul fast float %305, %322
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %120, i32 %222, i32 undef, float %311, float %317, float %323, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.i32 %324, 0
  %326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = extractvalue %dx.types.ResRet.f32 %326, 2
  %330 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %24, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %331 = extractvalue %dx.types.ResRet.f32 %330, 0
  %332 = extractvalue %dx.types.ResRet.f32 %330, 1
  %333 = extractvalue %dx.types.ResRet.f32 %330, 2
  %334 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %33, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = extractvalue %dx.types.ResRet.f32 %338, 1
  %341 = extractvalue %dx.types.ResRet.f32 %338, 2
  %342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %15, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = call float @dx.op.binary.f32(i32 36, float %331, float %339)  ; FMin(a,b)
  %347 = call float @dx.op.binary.f32(i32 36, float %327, float %346)  ; FMin(a,b)
  %348 = call float @dx.op.binary.f32(i32 36, float %347, float %343)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 36, float %332, float %340)  ; FMin(a,b)
  %350 = call float @dx.op.binary.f32(i32 36, float %328, float %349)  ; FMin(a,b)
  %351 = call float @dx.op.binary.f32(i32 36, float %350, float %344)  ; FMin(a,b)
  %352 = call float @dx.op.binary.f32(i32 36, float %333, float %341)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float %329, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float %353, float %345)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %331, float %339)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %327, float %355)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float %343)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %332, float %340)  ; FMax(a,b)
  %359 = call float @dx.op.binary.f32(i32 35, float %328, float %358)  ; FMax(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %359, float %344)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %333, float %341)  ; FMax(a,b)
  %362 = call float @dx.op.binary.f32(i32 35, float %329, float %361)  ; FMax(a,b)
  %363 = call float @dx.op.binary.f32(i32 35, float %362, float %345)  ; FMax(a,b)
  %364 = fdiv fast float 2.500000e-01, %357
  %365 = fdiv fast float 2.500000e-01, %360
  %366 = fdiv fast float 2.500000e-01, %363
  %367 = fsub fast float 1.000000e+00, %357
  %368 = fmul fast float %348, 4.000000e+00
  %369 = fadd fast float %368, -4.000000e+00
  %370 = fdiv fast float 1.000000e+00, %369
  %371 = fmul fast float %370, %367
  %372 = fsub fast float 1.000000e+00, %360
  %373 = fmul fast float %351, 4.000000e+00
  %374 = fadd fast float %373, -4.000000e+00
  %375 = fdiv fast float 1.000000e+00, %374
  %376 = fmul fast float %375, %372
  %377 = fsub fast float 1.000000e+00, %363
  %378 = fmul fast float %354, 4.000000e+00
  %379 = fadd fast float %378, -4.000000e+00
  %380 = fdiv fast float 1.000000e+00, %379
  %381 = fmul fast float %380, %377
  %382 = fmul fast float %348, %364
  %383 = fsub fast float -0.000000e+00, %382
  %384 = call float @dx.op.binary.f32(i32 35, float %383, float %371)  ; FMax(a,b)
  %385 = fmul fast float %351, %365
  %386 = fsub fast float -0.000000e+00, %385
  %387 = call float @dx.op.binary.f32(i32 35, float %386, float %376)  ; FMax(a,b)
  %388 = fmul fast float %354, %366
  %389 = fsub fast float -0.000000e+00, %388
  %390 = call float @dx.op.binary.f32(i32 35, float %389, float %381)  ; FMax(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %390)  ; FMax(a,b)
  %392 = call float @dx.op.binary.f32(i32 35, float %384, float %391)  ; FMax(a,b)
  %393 = call float @dx.op.binary.f32(i32 36, float %392, float 0.000000e+00)  ; FMin(a,b)
  %394 = call float @dx.op.binary.f32(i32 35, float -1.875000e-01, float %393)  ; FMax(a,b)
  %395 = bitcast i32 %325 to float
  %396 = fmul fast float %394, %395
  %397 = fmul fast float %396, 4.000000e+00
  %398 = fadd fast float %397, 1.000000e+00
  %399 = bitcast float %398 to i32
  %400 = sub i32 2129764351, %399
  %401 = bitcast i32 %400 to float
  %402 = fmul fast float %401, %398
  %403 = fsub fast float 2.000000e+00, %402
  %404 = fmul fast float %403, %401
  %405 = fadd fast float %331, %327
  %406 = fadd fast float %405, %339
  %407 = fadd fast float %406, %343
  %408 = fmul fast float %396, %407
  %409 = fadd fast float %408, %335
  %410 = fmul fast float %404, %409
  %411 = fadd fast float %332, %328
  %412 = fadd fast float %411, %340
  %413 = fadd fast float %412, %344
  %414 = fmul fast float %396, %413
  %415 = fadd fast float %414, %336
  %416 = fmul fast float %404, %415
  %417 = fadd fast float %333, %329
  %418 = fadd fast float %417, %341
  %419 = fadd fast float %418, %345
  %420 = fmul fast float %396, %419
  %421 = fadd fast float %420, %337
  %422 = fmul fast float %404, %421
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %15, i32 %222, i32 undef, float %410, float %416, float %422, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %cb* undef, !"", i32 0, i32 0, i32 1, i32 96, null}
!12 = !{void ()* @cs_rcas, !"cs_rcas", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 64, i32 1, i32 1}

