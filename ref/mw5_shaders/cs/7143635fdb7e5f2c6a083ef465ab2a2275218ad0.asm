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
; shader hash: 0a18f55862bca63e69fbf8a31d87a970
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
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;                                       UAV     f32          2d      U5             u5     1
;                                       UAV     f32          2d      U6             u6     1
;                                       UAV     f32          2d      U7             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%FloatZDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?floatZValues@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_floatz_downsample_border() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %18 = icmp ult i32 %15, %17
  %19 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %20 = sub i32 %15, %17
  %21 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %22 = select i1 %18, i32 %19, i32 %20
  %23 = select i1 %18, i32 %15, i32 %21
  %24 = shl i32 %22, 3
  %25 = shl i32 %23, 3
  %26 = add i32 %24, %13
  %27 = add i32 %25, %14
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %31 = fptoui float %29 to i32
  %32 = fptoui float %30 to i32
  %33 = icmp ult i32 %23, %21
  %34 = fcmp ule float %30, 1.600000e+01
  %35 = or i1 %33, %34
  %36 = icmp ugt i32 %14, 7
  %37 = and i1 %36, %35
  %38 = icmp ult i32 %22, %19
  %39 = fcmp ule float %29, 1.600000e+01
  %40 = or i1 %38, %39
  %41 = icmp ugt i32 %13, 7
  %42 = and i1 %41, %40
  %43 = or i1 %37, %42
  %44 = xor i1 %43, true
  %45 = lshr i32 %31, 1
  %46 = lshr i32 %32, 1
  %47 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %45)  ; UMax(a,b)
  %48 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %46)  ; UMax(a,b)
  %49 = icmp ult i32 %26, %47
  %50 = icmp ult i32 %27, %48
  %51 = and i1 %49, %50
  %52 = and i1 %51, %44
  %53 = shl i32 %26, 1
  %54 = shl i32 %27, 1
  br i1 %52, label %55, label %86, !dx.controlflow.hints !25

; <label>:55                                      ; preds = %0
  %56 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %58 = uitofp i32 %53 to float
  %59 = uitofp i32 %54 to float
  %60 = fadd fast float %58, 1.000000e+00
  %61 = fadd fast float %59, 1.000000e+00
  %62 = fmul fast float %56, %60
  %63 = fmul fast float %57, %61
  %64 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %11, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = extractvalue %dx.types.ResRet.f32 %64, 3
  %69 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %11, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = extractvalue %dx.types.ResRet.f32 %69, 1
  %72 = extractvalue %dx.types.ResRet.f32 %69, 2
  %73 = extractvalue %dx.types.ResRet.f32 %69, 3
  %74 = and i32 %31, 1
  %75 = icmp ne i32 %74, 0
  %76 = add i32 %31, -3
  %77 = icmp eq i32 %76, %53
  %78 = and i1 %75, %77
  %79 = zext i1 %78 to i32
  %80 = and i32 %32, 1
  %81 = icmp ne i32 %80, 0
  %82 = add i32 %32, -3
  %83 = icmp eq i32 %82, %54
  %84 = and i1 %81, %83
  %85 = zext i1 %84 to i32
  br label %86

; <label>:86                                      ; preds = %55, %0
  %87 = phi float [ %65, %55 ], [ 0.000000e+00, %0 ]
  %88 = phi float [ %66, %55 ], [ 0.000000e+00, %0 ]
  %89 = phi float [ %67, %55 ], [ 0.000000e+00, %0 ]
  %90 = phi float [ %68, %55 ], [ 0.000000e+00, %0 ]
  %91 = phi float [ %70, %55 ], [ 0.000000e+00, %0 ]
  %92 = phi float [ %71, %55 ], [ 0.000000e+00, %0 ]
  %93 = phi float [ %72, %55 ], [ 0.000000e+00, %0 ]
  %94 = phi float [ %73, %55 ], [ 0.000000e+00, %0 ]
  %95 = phi i32 [ %79, %55 ], [ 0, %0 ]
  %96 = phi i32 [ %85, %55 ], [ 0, %0 ]
  %97 = fcmp fast ole float %87, -1.000000e+00
  %98 = fcmp fast ole float %88, -1.000000e+00
  %99 = fcmp fast ole float %89, -1.000000e+00
  %100 = fcmp fast ole float %90, -1.000000e+00
  %101 = select i1 %97, float -1.000000e+00, float %87
  %102 = select i1 %98, float -1.000000e+00, float %88
  %103 = select i1 %99, float -1.000000e+00, float %89
  %104 = select i1 %100, float -1.000000e+00, float %90
  %105 = and i1 %97, %98
  %106 = and i1 %105, %99
  %107 = and i1 %106, %100
  %108 = call float @dx.op.binary.f32(i32 36, float %88, float %89)  ; FMin(a,b)
  %109 = call float @dx.op.binary.f32(i32 36, float %87, float %108)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 36, float %109, float %90)  ; FMin(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %102, float %103)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %101, float %111)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float %112, float %104)  ; FMax(a,b)
  %114 = select i1 %107, float %110, float %113
  %115 = fcmp fast ole float %91, -1.000000e+00
  %116 = fcmp fast ole float %92, -1.000000e+00
  %117 = fcmp fast ole float %93, -1.000000e+00
  %118 = fcmp fast ole float %94, -1.000000e+00
  %119 = select i1 %115, float 0x47EFFFFFE0000000, float %91
  %120 = select i1 %116, float 0x47EFFFFFE0000000, float %92
  %121 = select i1 %117, float 0x47EFFFFFE0000000, float %93
  %122 = select i1 %118, float 0x47EFFFFFE0000000, float %94
  %123 = and i1 %115, %116
  %124 = and i1 %123, %117
  %125 = and i1 %124, %118
  %126 = call float @dx.op.binary.f32(i32 35, float %92, float %93)  ; FMax(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %91, float %126)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 35, float %127, float %94)  ; FMax(a,b)
  %129 = call float @dx.op.binary.f32(i32 36, float %120, float %121)  ; FMin(a,b)
  %130 = call float @dx.op.binary.f32(i32 36, float %119, float %129)  ; FMin(a,b)
  %131 = call float @dx.op.binary.f32(i32 36, float %130, float %122)  ; FMin(a,b)
  %132 = select i1 %125, float %128, float %131
  %133 = icmp eq i32 %95, 0
  br i1 %133, label %171, label %134, !dx.controlflow.hints !26

; <label>:134                                     ; preds = %86
  %135 = add i32 %53, 2
  %136 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %135, i32 %54, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = or i32 %54, 1
  %139 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %135, i32 %138, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %135, i32 %54, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %135, i32 %138, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fcmp fast ole float %114, -1.000000e+00
  %146 = fcmp fast ole float %137, -1.000000e+00
  %147 = fcmp fast ole float %140, -1.000000e+00
  %148 = select i1 %145, float -1.000000e+00, float %114
  %149 = select i1 %146, float -1.000000e+00, float %137
  %150 = select i1 %147, float -1.000000e+00, float %140
  %151 = and i1 %145, %146
  %152 = and i1 %151, %147
  %153 = call float @dx.op.binary.f32(i32 36, float %137, float %140)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %114, float %153)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %149, float %150)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float %148, float %155)  ; FMax(a,b)
  %157 = select i1 %152, float %154, float %156
  %158 = fcmp fast ole float %132, -1.000000e+00
  %159 = fcmp fast ole float %142, -1.000000e+00
  %160 = fcmp fast ole float %144, -1.000000e+00
  %161 = select i1 %158, float 0x47EFFFFFE0000000, float %132
  %162 = select i1 %159, float 0x47EFFFFFE0000000, float %142
  %163 = select i1 %160, float 0x47EFFFFFE0000000, float %144
  %164 = and i1 %158, %159
  %165 = and i1 %164, %160
  %166 = call float @dx.op.binary.f32(i32 35, float %142, float %144)  ; FMax(a,b)
  %167 = call float @dx.op.binary.f32(i32 35, float %132, float %166)  ; FMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %162, float %163)  ; FMin(a,b)
  %169 = call float @dx.op.binary.f32(i32 36, float %161, float %168)  ; FMin(a,b)
  %170 = select i1 %165, float %167, float %169
  br label %171

; <label>:171                                     ; preds = %134, %86
  %172 = phi float [ %157, %134 ], [ %114, %86 ]
  %173 = phi float [ %170, %134 ], [ %132, %86 ]
  %174 = icmp eq i32 %96, 0
  br i1 %174, label %212, label %175, !dx.controlflow.hints !27

; <label>:175                                     ; preds = %171
  %176 = add i32 %54, 2
  %177 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %53, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = or i32 %53, 1
  %180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %179, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %53, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %179, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fcmp fast ole float %172, -1.000000e+00
  %187 = fcmp fast ole float %178, -1.000000e+00
  %188 = fcmp fast ole float %181, -1.000000e+00
  %189 = select i1 %186, float -1.000000e+00, float %172
  %190 = select i1 %187, float -1.000000e+00, float %178
  %191 = select i1 %188, float -1.000000e+00, float %181
  %192 = and i1 %186, %187
  %193 = and i1 %192, %188
  %194 = call float @dx.op.binary.f32(i32 36, float %178, float %181)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 36, float %172, float %194)  ; FMin(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %190, float %191)  ; FMax(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %189, float %196)  ; FMax(a,b)
  %198 = select i1 %193, float %195, float %197
  %199 = fcmp fast ole float %173, -1.000000e+00
  %200 = fcmp fast ole float %183, -1.000000e+00
  %201 = fcmp fast ole float %185, -1.000000e+00
  %202 = select i1 %199, float 0x47EFFFFFE0000000, float %173
  %203 = select i1 %200, float 0x47EFFFFFE0000000, float %183
  %204 = select i1 %201, float 0x47EFFFFFE0000000, float %185
  %205 = and i1 %199, %200
  %206 = and i1 %205, %201
  %207 = call float @dx.op.binary.f32(i32 35, float %183, float %185)  ; FMax(a,b)
  %208 = call float @dx.op.binary.f32(i32 35, float %173, float %207)  ; FMax(a,b)
  %209 = call float @dx.op.binary.f32(i32 36, float %203, float %204)  ; FMin(a,b)
  %210 = call float @dx.op.binary.f32(i32 36, float %202, float %209)  ; FMin(a,b)
  %211 = select i1 %206, float %208, float %210
  br label %212

; <label>:212                                     ; preds = %175, %171
  %213 = phi float [ %198, %175 ], [ %172, %171 ]
  %214 = phi float [ %211, %175 ], [ %173, %171 ]
  %215 = icmp ne i32 %95, 0
  %216 = icmp ne i32 %96, 0
  %217 = and i1 %215, %216
  br i1 %217, label %218, label %241, !dx.controlflow.hints !28

; <label>:218                                     ; preds = %212
  %219 = add i32 %53, 2
  %220 = add i32 %54, 2
  %221 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %219, i32 %220, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = fcmp fast ole float %213, -1.000000e+00
  %226 = fcmp fast ole float %222, -1.000000e+00
  %227 = select i1 %225, float -1.000000e+00, float %213
  %228 = select i1 %226, float -1.000000e+00, float %222
  %229 = and i1 %225, %226
  %230 = call float @dx.op.binary.f32(i32 36, float %213, float %222)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %227, float %228)  ; FMax(a,b)
  %232 = select i1 %229, float %230, float %231
  %233 = fcmp fast ole float %214, -1.000000e+00
  %234 = fcmp fast ole float %224, -1.000000e+00
  %235 = select i1 %233, float 0x47EFFFFFE0000000, float %214
  %236 = select i1 %234, float 0x47EFFFFFE0000000, float %224
  %237 = and i1 %233, %234
  %238 = call float @dx.op.binary.f32(i32 35, float %214, float %224)  ; FMax(a,b)
  %239 = call float @dx.op.binary.f32(i32 36, float %235, float %236)  ; FMin(a,b)
  %240 = select i1 %237, float %238, float %239
  br label %241

; <label>:241                                     ; preds = %218, %212
  %242 = phi float [ %232, %218 ], [ %213, %212 ]
  %243 = phi float [ %240, %218 ], [ %214, %212 ]
  br i1 %52, label %244, label %254, !dx.controlflow.hints !29

; <label>:244                                     ; preds = %241
  %245 = call i32 @dx.op.legacyF32ToF16(i32 130, float %242)  ; LegacyF32ToF16(value)
  %246 = call i32 @dx.op.legacyF32ToF16(i32 130, float %243)  ; LegacyF32ToF16(value)
  %247 = shl i32 %246, 16
  %248 = or i32 %247, %245
  %249 = and i32 %27, 15
  %250 = and i32 %26, 15
  %251 = mul i32 %250, 16
  %252 = add i32 %249, %251
  %253 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %252
  store i32 %248, i32 addrspace(3)* %253, align 4, !tbaa !30
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %26, i32 %27, i32 undef, float %242, float %242, float %242, float %242, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %26, i32 %27, i32 undef, float %243, float %243, float %243, float %243, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %254

; <label>:254                                     ; preds = %244, %241
  %255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.i32 %255, 3
  %257 = icmp ugt i32 %256, 1
  br i1 %257, label %258, label %523, !dx.controlflow.hints !34

; <label>:258                                     ; preds = %254
  %259 = lshr i32 %26, 1
  %260 = lshr i32 %27, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %261 = lshr i32 %47, 1
  %262 = lshr i32 %48, 1
  %263 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %261)  ; UMax(a,b)
  %264 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %262)  ; UMax(a,b)
  %265 = icmp ult i32 %259, %263
  %266 = icmp ult i32 %260, %264
  %267 = and i1 %265, %266
  %268 = and i1 %267, %44
  %269 = shl nuw i32 %259, 1
  %270 = shl nuw i32 %260, 1
  br i1 %268, label %271, label %331, !dx.controlflow.hints !35

; <label>:271                                     ; preds = %258
  %272 = or i32 %269, 1
  %273 = or i32 %270, 1
  %274 = add i32 %47, -1
  %275 = add i32 %48, -1
  %276 = call i32 @dx.op.binary.i32(i32 40, i32 %269, i32 %274)  ; UMin(a,b)
  %277 = call i32 @dx.op.binary.i32(i32 40, i32 %270, i32 %275)  ; UMin(a,b)
  %278 = call i32 @dx.op.binary.i32(i32 40, i32 %272, i32 %274)  ; UMin(a,b)
  %279 = call i32 @dx.op.binary.i32(i32 40, i32 %273, i32 %275)  ; UMin(a,b)
  %280 = and i32 %276, 15
  %281 = and i32 %277, 15
  %282 = and i32 %278, 15
  %283 = and i32 %279, 15
  %284 = mul i32 %280, 16
  %285 = add i32 %281, %284
  %286 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %285
  %287 = load i32, i32 addrspace(3)* %286, align 4, !tbaa !30
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = mul i32 %282, 16
  %293 = add i32 %281, %292
  %294 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %293
  %295 = load i32, i32 addrspace(3)* %294, align 4, !tbaa !30
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = mul i32 %280, 16
  %301 = add i32 %283, %300
  %302 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %301
  %303 = load i32, i32 addrspace(3)* %302, align 4, !tbaa !30
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = mul i32 %282, 16
  %309 = add i32 %283, %308
  %310 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %309
  %311 = load i32, i32 addrspace(3)* %310, align 4, !tbaa !30
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = icmp ugt i32 %47, 1
  %317 = and i32 %47, 1
  %318 = icmp ne i32 %317, 0
  %319 = and i1 %316, %318
  %320 = add i32 %47, -3
  %321 = icmp eq i32 %320, %269
  %322 = and i1 %321, %319
  %323 = icmp ugt i32 %48, 1
  %324 = and i32 %48, 1
  %325 = icmp ne i32 %324, 0
  %326 = and i1 %323, %325
  %327 = add i32 %48, -3
  %328 = icmp eq i32 %327, %270
  %329 = and i1 %328, %326
  %330 = zext i1 %329 to i32
  br label %331

; <label>:331                                     ; preds = %271, %258
  %332 = phi float [ %289, %271 ], [ 0.000000e+00, %258 ]
  %333 = phi float [ %297, %271 ], [ 0.000000e+00, %258 ]
  %334 = phi float [ %305, %271 ], [ 0.000000e+00, %258 ]
  %335 = phi float [ %313, %271 ], [ 0.000000e+00, %258 ]
  %336 = phi float [ %291, %271 ], [ 0.000000e+00, %258 ]
  %337 = phi float [ %299, %271 ], [ 0.000000e+00, %258 ]
  %338 = phi float [ %307, %271 ], [ 0.000000e+00, %258 ]
  %339 = phi float [ %315, %271 ], [ 0.000000e+00, %258 ]
  %340 = phi i1 [ %322, %271 ], [ false, %258 ]
  %341 = phi i32 [ %330, %271 ], [ 0, %258 ]
  %342 = fcmp fast ole float %332, -1.000000e+00
  %343 = fcmp fast ole float %333, -1.000000e+00
  %344 = fcmp fast ole float %334, -1.000000e+00
  %345 = fcmp fast ole float %335, -1.000000e+00
  %346 = select i1 %342, float -1.000000e+00, float %332
  %347 = select i1 %343, float -1.000000e+00, float %333
  %348 = select i1 %344, float -1.000000e+00, float %334
  %349 = select i1 %345, float -1.000000e+00, float %335
  %350 = and i1 %342, %343
  %351 = and i1 %350, %344
  %352 = and i1 %351, %345
  %353 = call float @dx.op.binary.f32(i32 36, float %333, float %334)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float %332, float %353)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float %354, float %335)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %347, float %348)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %346, float %356)  ; FMax(a,b)
  %358 = call float @dx.op.binary.f32(i32 35, float %357, float %349)  ; FMax(a,b)
  %359 = select i1 %352, float %355, float %358
  %360 = fcmp fast ole float %336, -1.000000e+00
  %361 = fcmp fast ole float %337, -1.000000e+00
  %362 = fcmp fast ole float %338, -1.000000e+00
  %363 = fcmp fast ole float %339, -1.000000e+00
  %364 = select i1 %360, float 0x47EFFFFFE0000000, float %336
  %365 = select i1 %361, float 0x47EFFFFFE0000000, float %337
  %366 = select i1 %362, float 0x47EFFFFFE0000000, float %338
  %367 = select i1 %363, float 0x47EFFFFFE0000000, float %339
  %368 = and i1 %360, %361
  %369 = and i1 %368, %362
  %370 = and i1 %369, %363
  %371 = call float @dx.op.binary.f32(i32 35, float %337, float %338)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float %336, float %371)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float %372, float %339)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %365, float %366)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %364, float %374)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %375, float %367)  ; FMin(a,b)
  %377 = select i1 %370, float %373, float %376
  br i1 %340, label %378, label %425, !dx.controlflow.hints !36

; <label>:378                                     ; preds = %331
  %379 = and i32 %270, 14
  %380 = add i32 %269, 2
  %381 = and i32 %380, 14
  %382 = mul i32 %381, 16
  %383 = add i32 %379, %382
  %384 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %383
  %385 = load i32, i32 addrspace(3)* %384, align 4, !tbaa !30
  %386 = and i32 %385, 65535
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %385, 16
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = or i32 %379, 1
  %391 = mul i32 %381, 16
  %392 = add i32 %390, %391
  %393 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %392
  %394 = load i32, i32 addrspace(3)* %393, align 4, !tbaa !30
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = fcmp fast ole float %359, -1.000000e+00
  %400 = fcmp fast ole float %387, -1.000000e+00
  %401 = fcmp fast ole float %396, -1.000000e+00
  %402 = select i1 %399, float -1.000000e+00, float %359
  %403 = select i1 %400, float -1.000000e+00, float %387
  %404 = select i1 %401, float -1.000000e+00, float %396
  %405 = and i1 %399, %400
  %406 = and i1 %405, %401
  %407 = call float @dx.op.binary.f32(i32 36, float %387, float %396)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 36, float %359, float %407)  ; FMin(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %403, float %404)  ; FMax(a,b)
  %410 = call float @dx.op.binary.f32(i32 35, float %402, float %409)  ; FMax(a,b)
  %411 = select i1 %406, float %408, float %410
  %412 = fcmp fast ole float %377, -1.000000e+00
  %413 = fcmp fast ole float %389, -1.000000e+00
  %414 = fcmp fast ole float %398, -1.000000e+00
  %415 = select i1 %412, float 0x47EFFFFFE0000000, float %377
  %416 = select i1 %413, float 0x47EFFFFFE0000000, float %389
  %417 = select i1 %414, float 0x47EFFFFFE0000000, float %398
  %418 = and i1 %412, %413
  %419 = and i1 %418, %414
  %420 = call float @dx.op.binary.f32(i32 35, float %389, float %398)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 35, float %377, float %420)  ; FMax(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %416, float %417)  ; FMin(a,b)
  %423 = call float @dx.op.binary.f32(i32 36, float %415, float %422)  ; FMin(a,b)
  %424 = select i1 %419, float %421, float %423
  br label %425

; <label>:425                                     ; preds = %378, %331
  %426 = phi float [ %411, %378 ], [ %359, %331 ]
  %427 = phi float [ %424, %378 ], [ %377, %331 ]
  %428 = icmp eq i32 %341, 0
  br i1 %428, label %476, label %429, !dx.controlflow.hints !37

; <label>:429                                     ; preds = %425
  %430 = add i32 %270, 2
  %431 = and i32 %430, 14
  %432 = and i32 %269, 14
  %433 = mul i32 %432, 16
  %434 = add i32 %431, %433
  %435 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %434
  %436 = load i32, i32 addrspace(3)* %435, align 4, !tbaa !30
  %437 = and i32 %436, 65535
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %436, 16
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = or i32 %432, 1
  %442 = mul i32 %441, 16
  %443 = add i32 %431, %442
  %444 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %443
  %445 = load i32, i32 addrspace(3)* %444, align 4, !tbaa !30
  %446 = and i32 %445, 65535
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = lshr i32 %445, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = fcmp fast ole float %426, -1.000000e+00
  %451 = fcmp fast ole float %438, -1.000000e+00
  %452 = fcmp fast ole float %447, -1.000000e+00
  %453 = select i1 %450, float -1.000000e+00, float %426
  %454 = select i1 %451, float -1.000000e+00, float %438
  %455 = select i1 %452, float -1.000000e+00, float %447
  %456 = and i1 %450, %451
  %457 = and i1 %456, %452
  %458 = call float @dx.op.binary.f32(i32 36, float %438, float %447)  ; FMin(a,b)
  %459 = call float @dx.op.binary.f32(i32 36, float %426, float %458)  ; FMin(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %454, float %455)  ; FMax(a,b)
  %461 = call float @dx.op.binary.f32(i32 35, float %453, float %460)  ; FMax(a,b)
  %462 = select i1 %457, float %459, float %461
  %463 = fcmp fast ole float %427, -1.000000e+00
  %464 = fcmp fast ole float %440, -1.000000e+00
  %465 = fcmp fast ole float %449, -1.000000e+00
  %466 = select i1 %463, float 0x47EFFFFFE0000000, float %427
  %467 = select i1 %464, float 0x47EFFFFFE0000000, float %440
  %468 = select i1 %465, float 0x47EFFFFFE0000000, float %449
  %469 = and i1 %463, %464
  %470 = and i1 %469, %465
  %471 = call float @dx.op.binary.f32(i32 35, float %440, float %449)  ; FMax(a,b)
  %472 = call float @dx.op.binary.f32(i32 35, float %427, float %471)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float %467, float %468)  ; FMin(a,b)
  %474 = call float @dx.op.binary.f32(i32 36, float %466, float %473)  ; FMin(a,b)
  %475 = select i1 %470, float %472, float %474
  br label %476

; <label>:476                                     ; preds = %429, %425
  %477 = phi float [ %462, %429 ], [ %426, %425 ]
  %478 = phi float [ %475, %429 ], [ %427, %425 ]
  %479 = icmp ne i32 %341, 0
  %480 = and i1 %340, %479
  br i1 %480, label %481, label %510, !dx.controlflow.hints !38

; <label>:481                                     ; preds = %476
  %482 = add i32 %270, 2
  %483 = and i32 %482, 14
  %484 = add i32 %269, 2
  %485 = and i32 %484, 14
  %486 = mul i32 %485, 16
  %487 = add i32 %483, %486
  %488 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %487
  %489 = load i32, i32 addrspace(3)* %488, align 4, !tbaa !30
  %490 = and i32 %489, 65535
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %489, 16
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = fcmp fast ole float %477, -1.000000e+00
  %495 = fcmp fast ole float %491, -1.000000e+00
  %496 = select i1 %494, float -1.000000e+00, float %477
  %497 = select i1 %495, float -1.000000e+00, float %491
  %498 = and i1 %494, %495
  %499 = call float @dx.op.binary.f32(i32 36, float %477, float %491)  ; FMin(a,b)
  %500 = call float @dx.op.binary.f32(i32 35, float %496, float %497)  ; FMax(a,b)
  %501 = select i1 %498, float %499, float %500
  %502 = fcmp fast ole float %478, -1.000000e+00
  %503 = fcmp fast ole float %493, -1.000000e+00
  %504 = select i1 %502, float 0x47EFFFFFE0000000, float %478
  %505 = select i1 %503, float 0x47EFFFFFE0000000, float %493
  %506 = and i1 %502, %503
  %507 = call float @dx.op.binary.f32(i32 35, float %478, float %493)  ; FMax(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %504, float %505)  ; FMin(a,b)
  %509 = select i1 %506, float %507, float %508
  br label %510

; <label>:510                                     ; preds = %481, %476
  %511 = phi float [ %501, %481 ], [ %477, %476 ]
  %512 = phi float [ %509, %481 ], [ %478, %476 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %268, label %513, label %523, !dx.controlflow.hints !39

; <label>:513                                     ; preds = %510
  %514 = call i32 @dx.op.legacyF32ToF16(i32 130, float %511)  ; LegacyF32ToF16(value)
  %515 = call i32 @dx.op.legacyF32ToF16(i32 130, float %512)  ; LegacyF32ToF16(value)
  %516 = shl i32 %515, 16
  %517 = or i32 %516, %514
  %518 = and i32 %260, 15
  %519 = and i32 %259, 15
  %520 = mul i32 %519, 16
  %521 = add i32 %518, %520
  %522 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %521
  store i32 %517, i32 addrspace(3)* %522, align 4, !tbaa !30
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %259, i32 %260, i32 undef, float %511, float %511, float %511, float %511, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %259, i32 %260, i32 undef, float %512, float %512, float %512, float %512, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %523

; <label>:523                                     ; preds = %513, %510, %254
  %524 = phi i32 [ %31, %254 ], [ %47, %513 ], [ %47, %510 ]
  %525 = phi i32 [ %32, %254 ], [ %48, %513 ], [ %48, %510 ]
  %526 = phi i32 [ %26, %254 ], [ %259, %513 ], [ %259, %510 ]
  %527 = phi i32 [ %27, %254 ], [ %260, %513 ], [ %260, %510 ]
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 3
  %530 = icmp ugt i32 %529, 2
  br i1 %530, label %531, label %800, !dx.controlflow.hints !40

; <label>:531                                     ; preds = %523
  %532 = lshr i32 %524, 1
  %533 = lshr i32 %525, 1
  %534 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %532)  ; UMax(a,b)
  %535 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %533)  ; UMax(a,b)
  %536 = lshr i32 %526, 1
  %537 = lshr i32 %527, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %538 = lshr i32 %534, 1
  %539 = lshr i32 %535, 1
  %540 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %538)  ; UMax(a,b)
  %541 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %539)  ; UMax(a,b)
  %542 = icmp ult i32 %536, %540
  %543 = icmp ult i32 %537, %541
  %544 = and i1 %542, %543
  %545 = and i1 %544, %44
  %546 = shl nuw i32 %536, 1
  %547 = shl nuw i32 %537, 1
  br i1 %545, label %548, label %608, !dx.controlflow.hints !35

; <label>:548                                     ; preds = %531
  %549 = or i32 %546, 1
  %550 = or i32 %547, 1
  %551 = add i32 %534, -1
  %552 = add i32 %535, -1
  %553 = call i32 @dx.op.binary.i32(i32 40, i32 %546, i32 %551)  ; UMin(a,b)
  %554 = call i32 @dx.op.binary.i32(i32 40, i32 %547, i32 %552)  ; UMin(a,b)
  %555 = call i32 @dx.op.binary.i32(i32 40, i32 %549, i32 %551)  ; UMin(a,b)
  %556 = call i32 @dx.op.binary.i32(i32 40, i32 %550, i32 %552)  ; UMin(a,b)
  %557 = and i32 %553, 15
  %558 = and i32 %554, 15
  %559 = and i32 %555, 15
  %560 = and i32 %556, 15
  %561 = mul i32 %557, 16
  %562 = add i32 %558, %561
  %563 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %562
  %564 = load i32, i32 addrspace(3)* %563, align 4, !tbaa !30
  %565 = and i32 %564, 65535
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %564, 16
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = mul i32 %559, 16
  %570 = add i32 %558, %569
  %571 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %570
  %572 = load i32, i32 addrspace(3)* %571, align 4, !tbaa !30
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = mul i32 %557, 16
  %578 = add i32 %560, %577
  %579 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %578
  %580 = load i32, i32 addrspace(3)* %579, align 4, !tbaa !30
  %581 = and i32 %580, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %580, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = mul i32 %559, 16
  %586 = add i32 %560, %585
  %587 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %586
  %588 = load i32, i32 addrspace(3)* %587, align 4, !tbaa !30
  %589 = and i32 %588, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = lshr i32 %588, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = icmp ugt i32 %534, 1
  %594 = and i32 %534, 1
  %595 = icmp ne i32 %594, 0
  %596 = and i1 %593, %595
  %597 = add i32 %534, -3
  %598 = icmp eq i32 %597, %546
  %599 = and i1 %598, %596
  %600 = icmp ugt i32 %535, 1
  %601 = and i32 %535, 1
  %602 = icmp ne i32 %601, 0
  %603 = and i1 %600, %602
  %604 = add i32 %535, -3
  %605 = icmp eq i32 %604, %547
  %606 = and i1 %605, %603
  %607 = zext i1 %606 to i32
  br label %608

; <label>:608                                     ; preds = %548, %531
  %609 = phi float [ %566, %548 ], [ 0.000000e+00, %531 ]
  %610 = phi float [ %574, %548 ], [ 0.000000e+00, %531 ]
  %611 = phi float [ %582, %548 ], [ 0.000000e+00, %531 ]
  %612 = phi float [ %590, %548 ], [ 0.000000e+00, %531 ]
  %613 = phi float [ %568, %548 ], [ 0.000000e+00, %531 ]
  %614 = phi float [ %576, %548 ], [ 0.000000e+00, %531 ]
  %615 = phi float [ %584, %548 ], [ 0.000000e+00, %531 ]
  %616 = phi float [ %592, %548 ], [ 0.000000e+00, %531 ]
  %617 = phi i1 [ %599, %548 ], [ false, %531 ]
  %618 = phi i32 [ %607, %548 ], [ 0, %531 ]
  %619 = fcmp fast ole float %609, -1.000000e+00
  %620 = fcmp fast ole float %610, -1.000000e+00
  %621 = fcmp fast ole float %611, -1.000000e+00
  %622 = fcmp fast ole float %612, -1.000000e+00
  %623 = select i1 %619, float -1.000000e+00, float %609
  %624 = select i1 %620, float -1.000000e+00, float %610
  %625 = select i1 %621, float -1.000000e+00, float %611
  %626 = select i1 %622, float -1.000000e+00, float %612
  %627 = and i1 %619, %620
  %628 = and i1 %627, %621
  %629 = and i1 %628, %622
  %630 = call float @dx.op.binary.f32(i32 36, float %610, float %611)  ; FMin(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %609, float %630)  ; FMin(a,b)
  %632 = call float @dx.op.binary.f32(i32 36, float %631, float %612)  ; FMin(a,b)
  %633 = call float @dx.op.binary.f32(i32 35, float %624, float %625)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 35, float %623, float %633)  ; FMax(a,b)
  %635 = call float @dx.op.binary.f32(i32 35, float %634, float %626)  ; FMax(a,b)
  %636 = select i1 %629, float %632, float %635
  %637 = fcmp fast ole float %613, -1.000000e+00
  %638 = fcmp fast ole float %614, -1.000000e+00
  %639 = fcmp fast ole float %615, -1.000000e+00
  %640 = fcmp fast ole float %616, -1.000000e+00
  %641 = select i1 %637, float 0x47EFFFFFE0000000, float %613
  %642 = select i1 %638, float 0x47EFFFFFE0000000, float %614
  %643 = select i1 %639, float 0x47EFFFFFE0000000, float %615
  %644 = select i1 %640, float 0x47EFFFFFE0000000, float %616
  %645 = and i1 %637, %638
  %646 = and i1 %645, %639
  %647 = and i1 %646, %640
  %648 = call float @dx.op.binary.f32(i32 35, float %614, float %615)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 35, float %613, float %648)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 35, float %649, float %616)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 36, float %642, float %643)  ; FMin(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %641, float %651)  ; FMin(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %652, float %644)  ; FMin(a,b)
  %654 = select i1 %647, float %650, float %653
  br i1 %617, label %655, label %702, !dx.controlflow.hints !36

; <label>:655                                     ; preds = %608
  %656 = and i32 %547, 14
  %657 = add i32 %546, 2
  %658 = and i32 %657, 14
  %659 = mul i32 %658, 16
  %660 = add i32 %656, %659
  %661 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %660
  %662 = load i32, i32 addrspace(3)* %661, align 4, !tbaa !30
  %663 = and i32 %662, 65535
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = lshr i32 %662, 16
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = or i32 %656, 1
  %668 = mul i32 %658, 16
  %669 = add i32 %667, %668
  %670 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %669
  %671 = load i32, i32 addrspace(3)* %670, align 4, !tbaa !30
  %672 = and i32 %671, 65535
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = lshr i32 %671, 16
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = fcmp fast ole float %636, -1.000000e+00
  %677 = fcmp fast ole float %664, -1.000000e+00
  %678 = fcmp fast ole float %673, -1.000000e+00
  %679 = select i1 %676, float -1.000000e+00, float %636
  %680 = select i1 %677, float -1.000000e+00, float %664
  %681 = select i1 %678, float -1.000000e+00, float %673
  %682 = and i1 %676, %677
  %683 = and i1 %682, %678
  %684 = call float @dx.op.binary.f32(i32 36, float %664, float %673)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 36, float %636, float %684)  ; FMin(a,b)
  %686 = call float @dx.op.binary.f32(i32 35, float %680, float %681)  ; FMax(a,b)
  %687 = call float @dx.op.binary.f32(i32 35, float %679, float %686)  ; FMax(a,b)
  %688 = select i1 %683, float %685, float %687
  %689 = fcmp fast ole float %654, -1.000000e+00
  %690 = fcmp fast ole float %666, -1.000000e+00
  %691 = fcmp fast ole float %675, -1.000000e+00
  %692 = select i1 %689, float 0x47EFFFFFE0000000, float %654
  %693 = select i1 %690, float 0x47EFFFFFE0000000, float %666
  %694 = select i1 %691, float 0x47EFFFFFE0000000, float %675
  %695 = and i1 %689, %690
  %696 = and i1 %695, %691
  %697 = call float @dx.op.binary.f32(i32 35, float %666, float %675)  ; FMax(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %654, float %697)  ; FMax(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %693, float %694)  ; FMin(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %692, float %699)  ; FMin(a,b)
  %701 = select i1 %696, float %698, float %700
  br label %702

; <label>:702                                     ; preds = %655, %608
  %703 = phi float [ %688, %655 ], [ %636, %608 ]
  %704 = phi float [ %701, %655 ], [ %654, %608 ]
  %705 = icmp eq i32 %618, 0
  br i1 %705, label %753, label %706, !dx.controlflow.hints !37

; <label>:706                                     ; preds = %702
  %707 = add i32 %547, 2
  %708 = and i32 %707, 14
  %709 = and i32 %546, 14
  %710 = mul i32 %709, 16
  %711 = add i32 %708, %710
  %712 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %711
  %713 = load i32, i32 addrspace(3)* %712, align 4, !tbaa !30
  %714 = and i32 %713, 65535
  %715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %714)  ; LegacyF16ToF32(value)
  %716 = lshr i32 %713, 16
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = or i32 %709, 1
  %719 = mul i32 %718, 16
  %720 = add i32 %708, %719
  %721 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %720
  %722 = load i32, i32 addrspace(3)* %721, align 4, !tbaa !30
  %723 = and i32 %722, 65535
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = lshr i32 %722, 16
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = fcmp fast ole float %703, -1.000000e+00
  %728 = fcmp fast ole float %715, -1.000000e+00
  %729 = fcmp fast ole float %724, -1.000000e+00
  %730 = select i1 %727, float -1.000000e+00, float %703
  %731 = select i1 %728, float -1.000000e+00, float %715
  %732 = select i1 %729, float -1.000000e+00, float %724
  %733 = and i1 %727, %728
  %734 = and i1 %733, %729
  %735 = call float @dx.op.binary.f32(i32 36, float %715, float %724)  ; FMin(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %703, float %735)  ; FMin(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %731, float %732)  ; FMax(a,b)
  %738 = call float @dx.op.binary.f32(i32 35, float %730, float %737)  ; FMax(a,b)
  %739 = select i1 %734, float %736, float %738
  %740 = fcmp fast ole float %704, -1.000000e+00
  %741 = fcmp fast ole float %717, -1.000000e+00
  %742 = fcmp fast ole float %726, -1.000000e+00
  %743 = select i1 %740, float 0x47EFFFFFE0000000, float %704
  %744 = select i1 %741, float 0x47EFFFFFE0000000, float %717
  %745 = select i1 %742, float 0x47EFFFFFE0000000, float %726
  %746 = and i1 %740, %741
  %747 = and i1 %746, %742
  %748 = call float @dx.op.binary.f32(i32 35, float %717, float %726)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float %704, float %748)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %744, float %745)  ; FMin(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float %743, float %750)  ; FMin(a,b)
  %752 = select i1 %747, float %749, float %751
  br label %753

; <label>:753                                     ; preds = %706, %702
  %754 = phi float [ %739, %706 ], [ %703, %702 ]
  %755 = phi float [ %752, %706 ], [ %704, %702 ]
  %756 = icmp ne i32 %618, 0
  %757 = and i1 %617, %756
  br i1 %757, label %758, label %787, !dx.controlflow.hints !38

; <label>:758                                     ; preds = %753
  %759 = add i32 %547, 2
  %760 = and i32 %759, 14
  %761 = add i32 %546, 2
  %762 = and i32 %761, 14
  %763 = mul i32 %762, 16
  %764 = add i32 %760, %763
  %765 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %764
  %766 = load i32, i32 addrspace(3)* %765, align 4, !tbaa !30
  %767 = and i32 %766, 65535
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %766, 16
  %770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %769)  ; LegacyF16ToF32(value)
  %771 = fcmp fast ole float %754, -1.000000e+00
  %772 = fcmp fast ole float %768, -1.000000e+00
  %773 = select i1 %771, float -1.000000e+00, float %754
  %774 = select i1 %772, float -1.000000e+00, float %768
  %775 = and i1 %771, %772
  %776 = call float @dx.op.binary.f32(i32 36, float %754, float %768)  ; FMin(a,b)
  %777 = call float @dx.op.binary.f32(i32 35, float %773, float %774)  ; FMax(a,b)
  %778 = select i1 %775, float %776, float %777
  %779 = fcmp fast ole float %755, -1.000000e+00
  %780 = fcmp fast ole float %770, -1.000000e+00
  %781 = select i1 %779, float 0x47EFFFFFE0000000, float %755
  %782 = select i1 %780, float 0x47EFFFFFE0000000, float %770
  %783 = and i1 %779, %780
  %784 = call float @dx.op.binary.f32(i32 35, float %755, float %770)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 36, float %781, float %782)  ; FMin(a,b)
  %786 = select i1 %783, float %784, float %785
  br label %787

; <label>:787                                     ; preds = %758, %753
  %788 = phi float [ %778, %758 ], [ %754, %753 ]
  %789 = phi float [ %786, %758 ], [ %755, %753 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %545, label %790, label %800, !dx.controlflow.hints !39

; <label>:790                                     ; preds = %787
  %791 = call i32 @dx.op.legacyF32ToF16(i32 130, float %788)  ; LegacyF32ToF16(value)
  %792 = call i32 @dx.op.legacyF32ToF16(i32 130, float %789)  ; LegacyF32ToF16(value)
  %793 = shl i32 %792, 16
  %794 = or i32 %793, %791
  %795 = and i32 %537, 15
  %796 = and i32 %536, 15
  %797 = mul i32 %796, 16
  %798 = add i32 %795, %797
  %799 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %798
  store i32 %794, i32 addrspace(3)* %799, align 4, !tbaa !30
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %536, i32 %537, i32 undef, float %788, float %788, float %788, float %788, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %536, i32 %537, i32 undef, float %789, float %789, float %789, float %789, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %800

; <label>:800                                     ; preds = %790, %787, %523
  %801 = phi i32 [ %524, %523 ], [ %534, %790 ], [ %534, %787 ]
  %802 = phi i32 [ %525, %523 ], [ %535, %790 ], [ %535, %787 ]
  %803 = phi i32 [ %526, %523 ], [ %536, %790 ], [ %536, %787 ]
  %804 = phi i32 [ %527, %523 ], [ %537, %790 ], [ %537, %787 ]
  %805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.i32 %805, 3
  %807 = icmp ugt i32 %806, 3
  br i1 %807, label %808, label %1077, !dx.controlflow.hints !41

; <label>:808                                     ; preds = %800
  %809 = lshr i32 %801, 1
  %810 = lshr i32 %802, 1
  %811 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %809)  ; UMax(a,b)
  %812 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %810)  ; UMax(a,b)
  %813 = lshr i32 %803, 1
  %814 = lshr i32 %804, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %815 = lshr i32 %811, 1
  %816 = lshr i32 %812, 1
  %817 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %815)  ; UMax(a,b)
  %818 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %816)  ; UMax(a,b)
  %819 = icmp ult i32 %813, %817
  %820 = icmp ult i32 %814, %818
  %821 = and i1 %819, %820
  %822 = and i1 %821, %44
  %823 = shl nuw i32 %813, 1
  %824 = shl nuw i32 %814, 1
  br i1 %822, label %825, label %885, !dx.controlflow.hints !35

; <label>:825                                     ; preds = %808
  %826 = or i32 %823, 1
  %827 = or i32 %824, 1
  %828 = add i32 %811, -1
  %829 = add i32 %812, -1
  %830 = call i32 @dx.op.binary.i32(i32 40, i32 %823, i32 %828)  ; UMin(a,b)
  %831 = call i32 @dx.op.binary.i32(i32 40, i32 %824, i32 %829)  ; UMin(a,b)
  %832 = call i32 @dx.op.binary.i32(i32 40, i32 %826, i32 %828)  ; UMin(a,b)
  %833 = call i32 @dx.op.binary.i32(i32 40, i32 %827, i32 %829)  ; UMin(a,b)
  %834 = and i32 %830, 15
  %835 = and i32 %831, 15
  %836 = and i32 %832, 15
  %837 = and i32 %833, 15
  %838 = mul i32 %834, 16
  %839 = add i32 %835, %838
  %840 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %839
  %841 = load i32, i32 addrspace(3)* %840, align 4, !tbaa !30
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = lshr i32 %841, 16
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = mul i32 %836, 16
  %847 = add i32 %835, %846
  %848 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %847
  %849 = load i32, i32 addrspace(3)* %848, align 4, !tbaa !30
  %850 = and i32 %849, 65535
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = lshr i32 %849, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = mul i32 %834, 16
  %855 = add i32 %837, %854
  %856 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %855
  %857 = load i32, i32 addrspace(3)* %856, align 4, !tbaa !30
  %858 = and i32 %857, 65535
  %859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %858)  ; LegacyF16ToF32(value)
  %860 = lshr i32 %857, 16
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = mul i32 %836, 16
  %863 = add i32 %837, %862
  %864 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %863
  %865 = load i32, i32 addrspace(3)* %864, align 4, !tbaa !30
  %866 = and i32 %865, 65535
  %867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %866)  ; LegacyF16ToF32(value)
  %868 = lshr i32 %865, 16
  %869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %868)  ; LegacyF16ToF32(value)
  %870 = icmp ugt i32 %811, 1
  %871 = and i32 %811, 1
  %872 = icmp ne i32 %871, 0
  %873 = and i1 %870, %872
  %874 = add i32 %811, -3
  %875 = icmp eq i32 %874, %823
  %876 = and i1 %875, %873
  %877 = icmp ugt i32 %812, 1
  %878 = and i32 %812, 1
  %879 = icmp ne i32 %878, 0
  %880 = and i1 %877, %879
  %881 = add i32 %812, -3
  %882 = icmp eq i32 %881, %824
  %883 = and i1 %882, %880
  %884 = zext i1 %883 to i32
  br label %885

; <label>:885                                     ; preds = %825, %808
  %886 = phi float [ %843, %825 ], [ 0.000000e+00, %808 ]
  %887 = phi float [ %851, %825 ], [ 0.000000e+00, %808 ]
  %888 = phi float [ %859, %825 ], [ 0.000000e+00, %808 ]
  %889 = phi float [ %867, %825 ], [ 0.000000e+00, %808 ]
  %890 = phi float [ %845, %825 ], [ 0.000000e+00, %808 ]
  %891 = phi float [ %853, %825 ], [ 0.000000e+00, %808 ]
  %892 = phi float [ %861, %825 ], [ 0.000000e+00, %808 ]
  %893 = phi float [ %869, %825 ], [ 0.000000e+00, %808 ]
  %894 = phi i1 [ %876, %825 ], [ false, %808 ]
  %895 = phi i32 [ %884, %825 ], [ 0, %808 ]
  %896 = fcmp fast ole float %886, -1.000000e+00
  %897 = fcmp fast ole float %887, -1.000000e+00
  %898 = fcmp fast ole float %888, -1.000000e+00
  %899 = fcmp fast ole float %889, -1.000000e+00
  %900 = select i1 %896, float -1.000000e+00, float %886
  %901 = select i1 %897, float -1.000000e+00, float %887
  %902 = select i1 %898, float -1.000000e+00, float %888
  %903 = select i1 %899, float -1.000000e+00, float %889
  %904 = and i1 %896, %897
  %905 = and i1 %904, %898
  %906 = and i1 %905, %899
  %907 = call float @dx.op.binary.f32(i32 36, float %887, float %888)  ; FMin(a,b)
  %908 = call float @dx.op.binary.f32(i32 36, float %886, float %907)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %908, float %889)  ; FMin(a,b)
  %910 = call float @dx.op.binary.f32(i32 35, float %901, float %902)  ; FMax(a,b)
  %911 = call float @dx.op.binary.f32(i32 35, float %900, float %910)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 35, float %911, float %903)  ; FMax(a,b)
  %913 = select i1 %906, float %909, float %912
  %914 = fcmp fast ole float %890, -1.000000e+00
  %915 = fcmp fast ole float %891, -1.000000e+00
  %916 = fcmp fast ole float %892, -1.000000e+00
  %917 = fcmp fast ole float %893, -1.000000e+00
  %918 = select i1 %914, float 0x47EFFFFFE0000000, float %890
  %919 = select i1 %915, float 0x47EFFFFFE0000000, float %891
  %920 = select i1 %916, float 0x47EFFFFFE0000000, float %892
  %921 = select i1 %917, float 0x47EFFFFFE0000000, float %893
  %922 = and i1 %914, %915
  %923 = and i1 %922, %916
  %924 = and i1 %923, %917
  %925 = call float @dx.op.binary.f32(i32 35, float %891, float %892)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %890, float %925)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float %926, float %893)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %919, float %920)  ; FMin(a,b)
  %929 = call float @dx.op.binary.f32(i32 36, float %918, float %928)  ; FMin(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %929, float %921)  ; FMin(a,b)
  %931 = select i1 %924, float %927, float %930
  br i1 %894, label %932, label %979, !dx.controlflow.hints !36

; <label>:932                                     ; preds = %885
  %933 = and i32 %824, 14
  %934 = add i32 %823, 2
  %935 = and i32 %934, 14
  %936 = mul i32 %935, 16
  %937 = add i32 %933, %936
  %938 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %937
  %939 = load i32, i32 addrspace(3)* %938, align 4, !tbaa !30
  %940 = and i32 %939, 65535
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = lshr i32 %939, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = or i32 %933, 1
  %945 = mul i32 %935, 16
  %946 = add i32 %944, %945
  %947 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %946
  %948 = load i32, i32 addrspace(3)* %947, align 4, !tbaa !30
  %949 = and i32 %948, 65535
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = lshr i32 %948, 16
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = fcmp fast ole float %913, -1.000000e+00
  %954 = fcmp fast ole float %941, -1.000000e+00
  %955 = fcmp fast ole float %950, -1.000000e+00
  %956 = select i1 %953, float -1.000000e+00, float %913
  %957 = select i1 %954, float -1.000000e+00, float %941
  %958 = select i1 %955, float -1.000000e+00, float %950
  %959 = and i1 %953, %954
  %960 = and i1 %959, %955
  %961 = call float @dx.op.binary.f32(i32 36, float %941, float %950)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %913, float %961)  ; FMin(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %957, float %958)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %956, float %963)  ; FMax(a,b)
  %965 = select i1 %960, float %962, float %964
  %966 = fcmp fast ole float %931, -1.000000e+00
  %967 = fcmp fast ole float %943, -1.000000e+00
  %968 = fcmp fast ole float %952, -1.000000e+00
  %969 = select i1 %966, float 0x47EFFFFFE0000000, float %931
  %970 = select i1 %967, float 0x47EFFFFFE0000000, float %943
  %971 = select i1 %968, float 0x47EFFFFFE0000000, float %952
  %972 = and i1 %966, %967
  %973 = and i1 %972, %968
  %974 = call float @dx.op.binary.f32(i32 35, float %943, float %952)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 35, float %931, float %974)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %970, float %971)  ; FMin(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %969, float %976)  ; FMin(a,b)
  %978 = select i1 %973, float %975, float %977
  br label %979

; <label>:979                                     ; preds = %932, %885
  %980 = phi float [ %965, %932 ], [ %913, %885 ]
  %981 = phi float [ %978, %932 ], [ %931, %885 ]
  %982 = icmp eq i32 %895, 0
  br i1 %982, label %1030, label %983, !dx.controlflow.hints !37

; <label>:983                                     ; preds = %979
  %984 = add i32 %824, 2
  %985 = and i32 %984, 14
  %986 = and i32 %823, 14
  %987 = mul i32 %986, 16
  %988 = add i32 %985, %987
  %989 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %988
  %990 = load i32, i32 addrspace(3)* %989, align 4, !tbaa !30
  %991 = and i32 %990, 65535
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = lshr i32 %990, 16
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = or i32 %986, 1
  %996 = mul i32 %995, 16
  %997 = add i32 %985, %996
  %998 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %997
  %999 = load i32, i32 addrspace(3)* %998, align 4, !tbaa !30
  %1000 = and i32 %999, 65535
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = lshr i32 %999, 16
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = fcmp fast ole float %980, -1.000000e+00
  %1005 = fcmp fast ole float %992, -1.000000e+00
  %1006 = fcmp fast ole float %1001, -1.000000e+00
  %1007 = select i1 %1004, float -1.000000e+00, float %980
  %1008 = select i1 %1005, float -1.000000e+00, float %992
  %1009 = select i1 %1006, float -1.000000e+00, float %1001
  %1010 = and i1 %1004, %1005
  %1011 = and i1 %1010, %1006
  %1012 = call float @dx.op.binary.f32(i32 36, float %992, float %1001)  ; FMin(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %980, float %1012)  ; FMin(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float %1008, float %1009)  ; FMax(a,b)
  %1015 = call float @dx.op.binary.f32(i32 35, float %1007, float %1014)  ; FMax(a,b)
  %1016 = select i1 %1011, float %1013, float %1015
  %1017 = fcmp fast ole float %981, -1.000000e+00
  %1018 = fcmp fast ole float %994, -1.000000e+00
  %1019 = fcmp fast ole float %1003, -1.000000e+00
  %1020 = select i1 %1017, float 0x47EFFFFFE0000000, float %981
  %1021 = select i1 %1018, float 0x47EFFFFFE0000000, float %994
  %1022 = select i1 %1019, float 0x47EFFFFFE0000000, float %1003
  %1023 = and i1 %1017, %1018
  %1024 = and i1 %1023, %1019
  %1025 = call float @dx.op.binary.f32(i32 35, float %994, float %1003)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %981, float %1025)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1021, float %1022)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1020, float %1027)  ; FMin(a,b)
  %1029 = select i1 %1024, float %1026, float %1028
  br label %1030

; <label>:1030                                    ; preds = %983, %979
  %1031 = phi float [ %1016, %983 ], [ %980, %979 ]
  %1032 = phi float [ %1029, %983 ], [ %981, %979 ]
  %1033 = icmp ne i32 %895, 0
  %1034 = and i1 %894, %1033
  br i1 %1034, label %1035, label %1064, !dx.controlflow.hints !38

; <label>:1035                                    ; preds = %1030
  %1036 = add i32 %824, 2
  %1037 = and i32 %1036, 14
  %1038 = add i32 %823, 2
  %1039 = and i32 %1038, 14
  %1040 = mul i32 %1039, 16
  %1041 = add i32 %1037, %1040
  %1042 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %1041
  %1043 = load i32, i32 addrspace(3)* %1042, align 4, !tbaa !30
  %1044 = and i32 %1043, 65535
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = lshr i32 %1043, 16
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = fcmp fast ole float %1031, -1.000000e+00
  %1049 = fcmp fast ole float %1045, -1.000000e+00
  %1050 = select i1 %1048, float -1.000000e+00, float %1031
  %1051 = select i1 %1049, float -1.000000e+00, float %1045
  %1052 = and i1 %1048, %1049
  %1053 = call float @dx.op.binary.f32(i32 36, float %1031, float %1045)  ; FMin(a,b)
  %1054 = call float @dx.op.binary.f32(i32 35, float %1050, float %1051)  ; FMax(a,b)
  %1055 = select i1 %1052, float %1053, float %1054
  %1056 = fcmp fast ole float %1032, -1.000000e+00
  %1057 = fcmp fast ole float %1047, -1.000000e+00
  %1058 = select i1 %1056, float 0x47EFFFFFE0000000, float %1032
  %1059 = select i1 %1057, float 0x47EFFFFFE0000000, float %1047
  %1060 = and i1 %1056, %1057
  %1061 = call float @dx.op.binary.f32(i32 35, float %1032, float %1047)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 36, float %1058, float %1059)  ; FMin(a,b)
  %1063 = select i1 %1060, float %1061, float %1062
  br label %1064

; <label>:1064                                    ; preds = %1035, %1030
  %1065 = phi float [ %1055, %1035 ], [ %1031, %1030 ]
  %1066 = phi float [ %1063, %1035 ], [ %1032, %1030 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %822, label %1067, label %1077, !dx.controlflow.hints !39

; <label>:1067                                    ; preds = %1064
  %1068 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1065)  ; LegacyF32ToF16(value)
  %1069 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1066)  ; LegacyF32ToF16(value)
  %1070 = shl i32 %1069, 16
  %1071 = or i32 %1070, %1068
  %1072 = and i32 %814, 15
  %1073 = and i32 %813, 15
  %1074 = mul i32 %1073, 16
  %1075 = add i32 %1072, %1074
  %1076 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %1075
  store i32 %1071, i32 addrspace(3)* %1076, align 4, !tbaa !30
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %813, i32 %814, i32 undef, float %1065, float %1065, float %1065, float %1065, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %813, i32 %814, i32 undef, float %1066, float %1066, float %1066, float %1066, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1077

; <label>:1077                                    ; preds = %1067, %1064, %800
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !18, !20}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !11, !12, !13, !14, !15, !16, !17}
!10 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 7, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!20 = !{!21}
!21 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_floatz_downsample_border, !"cs_floatz_downsample_border", null, !4, !23}
!23 = !{i32 0, i64 256, i32 4, !24}
!24 = !{i32 16, i32 16, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}

