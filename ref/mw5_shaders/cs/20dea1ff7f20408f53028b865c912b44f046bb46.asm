;
; Note: shader requires additional functionality:
;       64 UAV slots
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
; shader hash: 91b3f577ebefb1703e2bf5af20e05ae9
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
;                                       UAV     f32          2d      U0             u8     1
;                                       UAV     f32          2d      U1             u9     1
;                                       UAV     f32          2d      U2             u0     1
;                                       UAV     f32          2d      U3             u1     1
;                                       UAV     f32          2d      U4             u2     1
;                                       UAV     f32          2d      U5             u3     1
;                                       UAV     f32          2d      U6             u4     1
;                                       UAV     f32          2d      U7             u5     1
;                                       UAV     f32          2d      U8             u6     1
;                                       UAV     f32          2d      U9             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.RWTexture2D<float>" = type { float }
%FloatZDownsampleConsts = type { <4 x float>, i32, i32, i32, i32 }

@"\01?floatZValues@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_floatz_downsample_border() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 9, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %17 = icmp ult i32 %14, %16
  %18 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %19 = sub i32 %14, %16
  %20 = extractvalue %dx.types.CBufRet.i32 %15, 1
  %21 = select i1 %17, i32 %18, i32 %19
  %22 = select i1 %17, i32 %14, i32 %20
  %23 = shl i32 %21, 3
  %24 = shl i32 %22, 3
  %25 = add i32 %23, %12
  %26 = add i32 %24, %13
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = fptoui float %28 to i32
  %31 = fptoui float %29 to i32
  %32 = icmp ult i32 %22, %20
  %33 = fcmp ule float %29, 1.600000e+01
  %34 = or i1 %32, %33
  %35 = icmp ugt i32 %13, 7
  %36 = and i1 %35, %34
  %37 = icmp ult i32 %21, %18
  %38 = fcmp ule float %28, 1.600000e+01
  %39 = or i1 %37, %38
  %40 = icmp ugt i32 %12, 7
  %41 = and i1 %40, %39
  %42 = or i1 %36, %41
  %43 = xor i1 %42, true
  %44 = lshr i32 %30, 1
  %45 = lshr i32 %31, 1
  %46 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %44)  ; UMax(a,b)
  %47 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %45)  ; UMax(a,b)
  %48 = icmp ult i32 %25, %46
  %49 = icmp ult i32 %26, %47
  %50 = and i1 %48, %49
  %51 = and i1 %50, %43
  %52 = shl i32 %25, 1
  %53 = shl i32 %26, 1
  br i1 %51, label %54, label %85, !dx.controlflow.hints !22

; <label>:54                                      ; preds = %0
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = or i32 %53, 1
  %58 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %52, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = or i32 %52, 1
  %61 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %60, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %60, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %52, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %52, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %60, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %60, i32 %57, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = and i32 %30, 1
  %74 = icmp ne i32 %73, 0
  %75 = add i32 %30, -3
  %76 = icmp eq i32 %75, %52
  %77 = and i1 %74, %76
  %78 = zext i1 %77 to i32
  %79 = and i32 %31, 1
  %80 = icmp ne i32 %79, 0
  %81 = add i32 %31, -3
  %82 = icmp eq i32 %81, %53
  %83 = and i1 %80, %82
  %84 = zext i1 %83 to i32
  br label %85

; <label>:85                                      ; preds = %54, %0
  %86 = phi float [ %56, %54 ], [ 0.000000e+00, %0 ]
  %87 = phi float [ %59, %54 ], [ 0.000000e+00, %0 ]
  %88 = phi float [ %62, %54 ], [ 0.000000e+00, %0 ]
  %89 = phi float [ %64, %54 ], [ 0.000000e+00, %0 ]
  %90 = phi float [ %66, %54 ], [ 0.000000e+00, %0 ]
  %91 = phi float [ %68, %54 ], [ 0.000000e+00, %0 ]
  %92 = phi float [ %70, %54 ], [ 0.000000e+00, %0 ]
  %93 = phi float [ %72, %54 ], [ 0.000000e+00, %0 ]
  %94 = phi i32 [ %78, %54 ], [ 0, %0 ]
  %95 = phi i32 [ %84, %54 ], [ 0, %0 ]
  %96 = fcmp fast ole float %86, -1.000000e+00
  %97 = fcmp fast ole float %87, -1.000000e+00
  %98 = fcmp fast ole float %88, -1.000000e+00
  %99 = fcmp fast ole float %89, -1.000000e+00
  %100 = select i1 %96, float -1.000000e+00, float %86
  %101 = select i1 %97, float -1.000000e+00, float %87
  %102 = select i1 %98, float -1.000000e+00, float %88
  %103 = select i1 %99, float -1.000000e+00, float %89
  %104 = and i1 %96, %97
  %105 = and i1 %104, %98
  %106 = and i1 %105, %99
  %107 = call float @dx.op.binary.f32(i32 36, float %87, float %88)  ; FMin(a,b)
  %108 = call float @dx.op.binary.f32(i32 36, float %86, float %107)  ; FMin(a,b)
  %109 = call float @dx.op.binary.f32(i32 36, float %108, float %89)  ; FMin(a,b)
  %110 = call float @dx.op.binary.f32(i32 35, float %101, float %102)  ; FMax(a,b)
  %111 = call float @dx.op.binary.f32(i32 35, float %100, float %110)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %111, float %103)  ; FMax(a,b)
  %113 = select i1 %106, float %109, float %112
  %114 = fcmp fast ole float %90, -1.000000e+00
  %115 = fcmp fast ole float %91, -1.000000e+00
  %116 = fcmp fast ole float %92, -1.000000e+00
  %117 = fcmp fast ole float %93, -1.000000e+00
  %118 = select i1 %114, float 0x47EFFFFFE0000000, float %90
  %119 = select i1 %115, float 0x47EFFFFFE0000000, float %91
  %120 = select i1 %116, float 0x47EFFFFFE0000000, float %92
  %121 = select i1 %117, float 0x47EFFFFFE0000000, float %93
  %122 = and i1 %114, %115
  %123 = and i1 %122, %116
  %124 = and i1 %123, %117
  %125 = call float @dx.op.binary.f32(i32 35, float %91, float %92)  ; FMax(a,b)
  %126 = call float @dx.op.binary.f32(i32 35, float %90, float %125)  ; FMax(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %126, float %93)  ; FMax(a,b)
  %128 = call float @dx.op.binary.f32(i32 36, float %119, float %120)  ; FMin(a,b)
  %129 = call float @dx.op.binary.f32(i32 36, float %118, float %128)  ; FMin(a,b)
  %130 = call float @dx.op.binary.f32(i32 36, float %129, float %121)  ; FMin(a,b)
  %131 = select i1 %124, float %127, float %130
  %132 = icmp eq i32 %94, 0
  br i1 %132, label %170, label %133, !dx.controlflow.hints !23

; <label>:133                                     ; preds = %85
  %134 = add i32 %52, 2
  %135 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %134, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = or i32 %53, 1
  %138 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %134, i32 %137, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %134, i32 %53, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %134, i32 %137, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fcmp fast ole float %113, -1.000000e+00
  %145 = fcmp fast ole float %136, -1.000000e+00
  %146 = fcmp fast ole float %139, -1.000000e+00
  %147 = select i1 %144, float -1.000000e+00, float %113
  %148 = select i1 %145, float -1.000000e+00, float %136
  %149 = select i1 %146, float -1.000000e+00, float %139
  %150 = and i1 %144, %145
  %151 = and i1 %150, %146
  %152 = call float @dx.op.binary.f32(i32 36, float %136, float %139)  ; FMin(a,b)
  %153 = call float @dx.op.binary.f32(i32 36, float %113, float %152)  ; FMin(a,b)
  %154 = call float @dx.op.binary.f32(i32 35, float %148, float %149)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %147, float %154)  ; FMax(a,b)
  %156 = select i1 %151, float %153, float %155
  %157 = fcmp fast ole float %131, -1.000000e+00
  %158 = fcmp fast ole float %141, -1.000000e+00
  %159 = fcmp fast ole float %143, -1.000000e+00
  %160 = select i1 %157, float 0x47EFFFFFE0000000, float %131
  %161 = select i1 %158, float 0x47EFFFFFE0000000, float %141
  %162 = select i1 %159, float 0x47EFFFFFE0000000, float %143
  %163 = and i1 %157, %158
  %164 = and i1 %163, %159
  %165 = call float @dx.op.binary.f32(i32 35, float %141, float %143)  ; FMax(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %131, float %165)  ; FMax(a,b)
  %167 = call float @dx.op.binary.f32(i32 36, float %161, float %162)  ; FMin(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %160, float %167)  ; FMin(a,b)
  %169 = select i1 %164, float %166, float %168
  br label %170

; <label>:170                                     ; preds = %133, %85
  %171 = phi float [ %156, %133 ], [ %113, %85 ]
  %172 = phi float [ %169, %133 ], [ %131, %85 ]
  %173 = icmp eq i32 %95, 0
  br i1 %173, label %211, label %174, !dx.controlflow.hints !24

; <label>:174                                     ; preds = %170
  %175 = add i32 %53, 2
  %176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %52, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = or i32 %52, 1
  %179 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %178, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %52, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %178, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fcmp fast ole float %171, -1.000000e+00
  %186 = fcmp fast ole float %177, -1.000000e+00
  %187 = fcmp fast ole float %180, -1.000000e+00
  %188 = select i1 %185, float -1.000000e+00, float %171
  %189 = select i1 %186, float -1.000000e+00, float %177
  %190 = select i1 %187, float -1.000000e+00, float %180
  %191 = and i1 %185, %186
  %192 = and i1 %191, %187
  %193 = call float @dx.op.binary.f32(i32 36, float %177, float %180)  ; FMin(a,b)
  %194 = call float @dx.op.binary.f32(i32 36, float %171, float %193)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %189, float %190)  ; FMax(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %188, float %195)  ; FMax(a,b)
  %197 = select i1 %192, float %194, float %196
  %198 = fcmp fast ole float %172, -1.000000e+00
  %199 = fcmp fast ole float %182, -1.000000e+00
  %200 = fcmp fast ole float %184, -1.000000e+00
  %201 = select i1 %198, float 0x47EFFFFFE0000000, float %172
  %202 = select i1 %199, float 0x47EFFFFFE0000000, float %182
  %203 = select i1 %200, float 0x47EFFFFFE0000000, float %184
  %204 = and i1 %198, %199
  %205 = and i1 %204, %200
  %206 = call float @dx.op.binary.f32(i32 35, float %182, float %184)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %172, float %206)  ; FMax(a,b)
  %208 = call float @dx.op.binary.f32(i32 36, float %202, float %203)  ; FMin(a,b)
  %209 = call float @dx.op.binary.f32(i32 36, float %201, float %208)  ; FMin(a,b)
  %210 = select i1 %205, float %207, float %209
  br label %211

; <label>:211                                     ; preds = %174, %170
  %212 = phi float [ %197, %174 ], [ %171, %170 ]
  %213 = phi float [ %210, %174 ], [ %172, %170 ]
  %214 = icmp ne i32 %94, 0
  %215 = icmp ne i32 %95, 0
  %216 = and i1 %214, %215
  br i1 %216, label %217, label %240, !dx.controlflow.hints !25

; <label>:217                                     ; preds = %211
  %218 = add i32 %52, 2
  %219 = add i32 %53, 2
  %220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 undef, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 undef, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fcmp fast ole float %212, -1.000000e+00
  %225 = fcmp fast ole float %221, -1.000000e+00
  %226 = select i1 %224, float -1.000000e+00, float %212
  %227 = select i1 %225, float -1.000000e+00, float %221
  %228 = and i1 %224, %225
  %229 = call float @dx.op.binary.f32(i32 36, float %212, float %221)  ; FMin(a,b)
  %230 = call float @dx.op.binary.f32(i32 35, float %226, float %227)  ; FMax(a,b)
  %231 = select i1 %228, float %229, float %230
  %232 = fcmp fast ole float %213, -1.000000e+00
  %233 = fcmp fast ole float %223, -1.000000e+00
  %234 = select i1 %232, float 0x47EFFFFFE0000000, float %213
  %235 = select i1 %233, float 0x47EFFFFFE0000000, float %223
  %236 = and i1 %232, %233
  %237 = call float @dx.op.binary.f32(i32 35, float %213, float %223)  ; FMax(a,b)
  %238 = call float @dx.op.binary.f32(i32 36, float %234, float %235)  ; FMin(a,b)
  %239 = select i1 %236, float %237, float %238
  br label %240

; <label>:240                                     ; preds = %217, %211
  %241 = phi float [ %231, %217 ], [ %212, %211 ]
  %242 = phi float [ %239, %217 ], [ %213, %211 ]
  br i1 %51, label %243, label %253, !dx.controlflow.hints !26

; <label>:243                                     ; preds = %240
  %244 = call i32 @dx.op.legacyF32ToF16(i32 130, float %241)  ; LegacyF32ToF16(value)
  %245 = call i32 @dx.op.legacyF32ToF16(i32 130, float %242)  ; LegacyF32ToF16(value)
  %246 = shl i32 %245, 16
  %247 = or i32 %246, %244
  %248 = and i32 %26, 15
  %249 = and i32 %25, 15
  %250 = mul i32 %249, 16
  %251 = add i32 %248, %250
  %252 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %251
  store i32 %247, i32 addrspace(3)* %252, align 4, !tbaa !27
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %8, i32 %25, i32 %26, i32 undef, float %241, float %241, float %241, float %241, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %25, i32 %26, i32 undef, float %242, float %242, float %242, float %242, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %253

; <label>:253                                     ; preds = %243, %240
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 3
  %256 = icmp ugt i32 %255, 1
  br i1 %256, label %257, label %522, !dx.controlflow.hints !31

; <label>:257                                     ; preds = %253
  %258 = lshr i32 %25, 1
  %259 = lshr i32 %26, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %260 = lshr i32 %46, 1
  %261 = lshr i32 %47, 1
  %262 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %260)  ; UMax(a,b)
  %263 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %261)  ; UMax(a,b)
  %264 = icmp ult i32 %258, %262
  %265 = icmp ult i32 %259, %263
  %266 = and i1 %264, %265
  %267 = and i1 %266, %43
  %268 = shl nuw i32 %258, 1
  %269 = shl nuw i32 %259, 1
  br i1 %267, label %270, label %330, !dx.controlflow.hints !32

; <label>:270                                     ; preds = %257
  %271 = or i32 %268, 1
  %272 = or i32 %269, 1
  %273 = add i32 %46, -1
  %274 = add i32 %47, -1
  %275 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 %273)  ; UMin(a,b)
  %276 = call i32 @dx.op.binary.i32(i32 40, i32 %269, i32 %274)  ; UMin(a,b)
  %277 = call i32 @dx.op.binary.i32(i32 40, i32 %271, i32 %273)  ; UMin(a,b)
  %278 = call i32 @dx.op.binary.i32(i32 40, i32 %272, i32 %274)  ; UMin(a,b)
  %279 = and i32 %275, 15
  %280 = and i32 %276, 15
  %281 = and i32 %277, 15
  %282 = and i32 %278, 15
  %283 = mul i32 %279, 16
  %284 = add i32 %280, %283
  %285 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %284
  %286 = load i32, i32 addrspace(3)* %285, align 4, !tbaa !27
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = mul i32 %281, 16
  %292 = add i32 %280, %291
  %293 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %292
  %294 = load i32, i32 addrspace(3)* %293, align 4, !tbaa !27
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = mul i32 %279, 16
  %300 = add i32 %282, %299
  %301 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %300
  %302 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !27
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = mul i32 %281, 16
  %308 = add i32 %282, %307
  %309 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %308
  %310 = load i32, i32 addrspace(3)* %309, align 4, !tbaa !27
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = icmp ugt i32 %46, 1
  %316 = and i32 %46, 1
  %317 = icmp ne i32 %316, 0
  %318 = and i1 %315, %317
  %319 = add i32 %46, -3
  %320 = icmp eq i32 %319, %268
  %321 = and i1 %320, %318
  %322 = icmp ugt i32 %47, 1
  %323 = and i32 %47, 1
  %324 = icmp ne i32 %323, 0
  %325 = and i1 %322, %324
  %326 = add i32 %47, -3
  %327 = icmp eq i32 %326, %269
  %328 = and i1 %327, %325
  %329 = zext i1 %328 to i32
  br label %330

; <label>:330                                     ; preds = %270, %257
  %331 = phi float [ %288, %270 ], [ 0.000000e+00, %257 ]
  %332 = phi float [ %296, %270 ], [ 0.000000e+00, %257 ]
  %333 = phi float [ %304, %270 ], [ 0.000000e+00, %257 ]
  %334 = phi float [ %312, %270 ], [ 0.000000e+00, %257 ]
  %335 = phi float [ %290, %270 ], [ 0.000000e+00, %257 ]
  %336 = phi float [ %298, %270 ], [ 0.000000e+00, %257 ]
  %337 = phi float [ %306, %270 ], [ 0.000000e+00, %257 ]
  %338 = phi float [ %314, %270 ], [ 0.000000e+00, %257 ]
  %339 = phi i1 [ %321, %270 ], [ false, %257 ]
  %340 = phi i32 [ %329, %270 ], [ 0, %257 ]
  %341 = fcmp fast ole float %331, -1.000000e+00
  %342 = fcmp fast ole float %332, -1.000000e+00
  %343 = fcmp fast ole float %333, -1.000000e+00
  %344 = fcmp fast ole float %334, -1.000000e+00
  %345 = select i1 %341, float -1.000000e+00, float %331
  %346 = select i1 %342, float -1.000000e+00, float %332
  %347 = select i1 %343, float -1.000000e+00, float %333
  %348 = select i1 %344, float -1.000000e+00, float %334
  %349 = and i1 %341, %342
  %350 = and i1 %349, %343
  %351 = and i1 %350, %344
  %352 = call float @dx.op.binary.f32(i32 36, float %332, float %333)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 36, float %331, float %352)  ; FMin(a,b)
  %354 = call float @dx.op.binary.f32(i32 36, float %353, float %334)  ; FMin(a,b)
  %355 = call float @dx.op.binary.f32(i32 35, float %346, float %347)  ; FMax(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %345, float %355)  ; FMax(a,b)
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float %348)  ; FMax(a,b)
  %358 = select i1 %351, float %354, float %357
  %359 = fcmp fast ole float %335, -1.000000e+00
  %360 = fcmp fast ole float %336, -1.000000e+00
  %361 = fcmp fast ole float %337, -1.000000e+00
  %362 = fcmp fast ole float %338, -1.000000e+00
  %363 = select i1 %359, float 0x47EFFFFFE0000000, float %335
  %364 = select i1 %360, float 0x47EFFFFFE0000000, float %336
  %365 = select i1 %361, float 0x47EFFFFFE0000000, float %337
  %366 = select i1 %362, float 0x47EFFFFFE0000000, float %338
  %367 = and i1 %359, %360
  %368 = and i1 %367, %361
  %369 = and i1 %368, %362
  %370 = call float @dx.op.binary.f32(i32 35, float %336, float %337)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %335, float %370)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float %371, float %338)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %364, float %365)  ; FMin(a,b)
  %374 = call float @dx.op.binary.f32(i32 36, float %363, float %373)  ; FMin(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float %374, float %366)  ; FMin(a,b)
  %376 = select i1 %369, float %372, float %375
  br i1 %339, label %377, label %424, !dx.controlflow.hints !33

; <label>:377                                     ; preds = %330
  %378 = and i32 %269, 14
  %379 = add i32 %268, 2
  %380 = and i32 %379, 14
  %381 = mul i32 %380, 16
  %382 = add i32 %378, %381
  %383 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %382
  %384 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !27
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = or i32 %378, 1
  %390 = mul i32 %380, 16
  %391 = add i32 %389, %390
  %392 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %391
  %393 = load i32, i32 addrspace(3)* %392, align 4, !tbaa !27
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fcmp fast ole float %358, -1.000000e+00
  %399 = fcmp fast ole float %386, -1.000000e+00
  %400 = fcmp fast ole float %395, -1.000000e+00
  %401 = select i1 %398, float -1.000000e+00, float %358
  %402 = select i1 %399, float -1.000000e+00, float %386
  %403 = select i1 %400, float -1.000000e+00, float %395
  %404 = and i1 %398, %399
  %405 = and i1 %404, %400
  %406 = call float @dx.op.binary.f32(i32 36, float %386, float %395)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %358, float %406)  ; FMin(a,b)
  %408 = call float @dx.op.binary.f32(i32 35, float %402, float %403)  ; FMax(a,b)
  %409 = call float @dx.op.binary.f32(i32 35, float %401, float %408)  ; FMax(a,b)
  %410 = select i1 %405, float %407, float %409
  %411 = fcmp fast ole float %376, -1.000000e+00
  %412 = fcmp fast ole float %388, -1.000000e+00
  %413 = fcmp fast ole float %397, -1.000000e+00
  %414 = select i1 %411, float 0x47EFFFFFE0000000, float %376
  %415 = select i1 %412, float 0x47EFFFFFE0000000, float %388
  %416 = select i1 %413, float 0x47EFFFFFE0000000, float %397
  %417 = and i1 %411, %412
  %418 = and i1 %417, %413
  %419 = call float @dx.op.binary.f32(i32 35, float %388, float %397)  ; FMax(a,b)
  %420 = call float @dx.op.binary.f32(i32 35, float %376, float %419)  ; FMax(a,b)
  %421 = call float @dx.op.binary.f32(i32 36, float %415, float %416)  ; FMin(a,b)
  %422 = call float @dx.op.binary.f32(i32 36, float %414, float %421)  ; FMin(a,b)
  %423 = select i1 %418, float %420, float %422
  br label %424

; <label>:424                                     ; preds = %377, %330
  %425 = phi float [ %410, %377 ], [ %358, %330 ]
  %426 = phi float [ %423, %377 ], [ %376, %330 ]
  %427 = icmp eq i32 %340, 0
  br i1 %427, label %475, label %428, !dx.controlflow.hints !34

; <label>:428                                     ; preds = %424
  %429 = add i32 %269, 2
  %430 = and i32 %429, 14
  %431 = and i32 %268, 14
  %432 = mul i32 %431, 16
  %433 = add i32 %430, %432
  %434 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %433
  %435 = load i32, i32 addrspace(3)* %434, align 4, !tbaa !27
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = or i32 %431, 1
  %441 = mul i32 %440, 16
  %442 = add i32 %430, %441
  %443 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %442
  %444 = load i32, i32 addrspace(3)* %443, align 4, !tbaa !27
  %445 = and i32 %444, 65535
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = lshr i32 %444, 16
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = fcmp fast ole float %425, -1.000000e+00
  %450 = fcmp fast ole float %437, -1.000000e+00
  %451 = fcmp fast ole float %446, -1.000000e+00
  %452 = select i1 %449, float -1.000000e+00, float %425
  %453 = select i1 %450, float -1.000000e+00, float %437
  %454 = select i1 %451, float -1.000000e+00, float %446
  %455 = and i1 %449, %450
  %456 = and i1 %455, %451
  %457 = call float @dx.op.binary.f32(i32 36, float %437, float %446)  ; FMin(a,b)
  %458 = call float @dx.op.binary.f32(i32 36, float %425, float %457)  ; FMin(a,b)
  %459 = call float @dx.op.binary.f32(i32 35, float %453, float %454)  ; FMax(a,b)
  %460 = call float @dx.op.binary.f32(i32 35, float %452, float %459)  ; FMax(a,b)
  %461 = select i1 %456, float %458, float %460
  %462 = fcmp fast ole float %426, -1.000000e+00
  %463 = fcmp fast ole float %439, -1.000000e+00
  %464 = fcmp fast ole float %448, -1.000000e+00
  %465 = select i1 %462, float 0x47EFFFFFE0000000, float %426
  %466 = select i1 %463, float 0x47EFFFFFE0000000, float %439
  %467 = select i1 %464, float 0x47EFFFFFE0000000, float %448
  %468 = and i1 %462, %463
  %469 = and i1 %468, %464
  %470 = call float @dx.op.binary.f32(i32 35, float %439, float %448)  ; FMax(a,b)
  %471 = call float @dx.op.binary.f32(i32 35, float %426, float %470)  ; FMax(a,b)
  %472 = call float @dx.op.binary.f32(i32 36, float %466, float %467)  ; FMin(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float %465, float %472)  ; FMin(a,b)
  %474 = select i1 %469, float %471, float %473
  br label %475

; <label>:475                                     ; preds = %428, %424
  %476 = phi float [ %461, %428 ], [ %425, %424 ]
  %477 = phi float [ %474, %428 ], [ %426, %424 ]
  %478 = icmp ne i32 %340, 0
  %479 = and i1 %339, %478
  br i1 %479, label %480, label %509, !dx.controlflow.hints !35

; <label>:480                                     ; preds = %475
  %481 = add i32 %269, 2
  %482 = and i32 %481, 14
  %483 = add i32 %268, 2
  %484 = and i32 %483, 14
  %485 = mul i32 %484, 16
  %486 = add i32 %482, %485
  %487 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %486
  %488 = load i32, i32 addrspace(3)* %487, align 4, !tbaa !27
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = fcmp fast ole float %476, -1.000000e+00
  %494 = fcmp fast ole float %490, -1.000000e+00
  %495 = select i1 %493, float -1.000000e+00, float %476
  %496 = select i1 %494, float -1.000000e+00, float %490
  %497 = and i1 %493, %494
  %498 = call float @dx.op.binary.f32(i32 36, float %476, float %490)  ; FMin(a,b)
  %499 = call float @dx.op.binary.f32(i32 35, float %495, float %496)  ; FMax(a,b)
  %500 = select i1 %497, float %498, float %499
  %501 = fcmp fast ole float %477, -1.000000e+00
  %502 = fcmp fast ole float %492, -1.000000e+00
  %503 = select i1 %501, float 0x47EFFFFFE0000000, float %477
  %504 = select i1 %502, float 0x47EFFFFFE0000000, float %492
  %505 = and i1 %501, %502
  %506 = call float @dx.op.binary.f32(i32 35, float %477, float %492)  ; FMax(a,b)
  %507 = call float @dx.op.binary.f32(i32 36, float %503, float %504)  ; FMin(a,b)
  %508 = select i1 %505, float %506, float %507
  br label %509

; <label>:509                                     ; preds = %480, %475
  %510 = phi float [ %500, %480 ], [ %476, %475 ]
  %511 = phi float [ %508, %480 ], [ %477, %475 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %267, label %512, label %522, !dx.controlflow.hints !36

; <label>:512                                     ; preds = %509
  %513 = call i32 @dx.op.legacyF32ToF16(i32 130, float %510)  ; LegacyF32ToF16(value)
  %514 = call i32 @dx.op.legacyF32ToF16(i32 130, float %511)  ; LegacyF32ToF16(value)
  %515 = shl i32 %514, 16
  %516 = or i32 %515, %513
  %517 = and i32 %259, 15
  %518 = and i32 %258, 15
  %519 = mul i32 %518, 16
  %520 = add i32 %517, %519
  %521 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %520
  store i32 %516, i32 addrspace(3)* %521, align 4, !tbaa !27
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %258, i32 %259, i32 undef, float %510, float %510, float %510, float %510, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %258, i32 %259, i32 undef, float %511, float %511, float %511, float %511, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %522

; <label>:522                                     ; preds = %512, %509, %253
  %523 = phi i32 [ %30, %253 ], [ %46, %512 ], [ %46, %509 ]
  %524 = phi i32 [ %31, %253 ], [ %47, %512 ], [ %47, %509 ]
  %525 = phi i32 [ %25, %253 ], [ %258, %512 ], [ %258, %509 ]
  %526 = phi i32 [ %26, %253 ], [ %259, %512 ], [ %259, %509 ]
  %527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.i32 %527, 3
  %529 = icmp ugt i32 %528, 2
  br i1 %529, label %530, label %799, !dx.controlflow.hints !37

; <label>:530                                     ; preds = %522
  %531 = lshr i32 %523, 1
  %532 = lshr i32 %524, 1
  %533 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %531)  ; UMax(a,b)
  %534 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %532)  ; UMax(a,b)
  %535 = lshr i32 %525, 1
  %536 = lshr i32 %526, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %537 = lshr i32 %533, 1
  %538 = lshr i32 %534, 1
  %539 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %537)  ; UMax(a,b)
  %540 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %538)  ; UMax(a,b)
  %541 = icmp ult i32 %535, %539
  %542 = icmp ult i32 %536, %540
  %543 = and i1 %541, %542
  %544 = and i1 %543, %43
  %545 = shl nuw i32 %535, 1
  %546 = shl nuw i32 %536, 1
  br i1 %544, label %547, label %607, !dx.controlflow.hints !32

; <label>:547                                     ; preds = %530
  %548 = or i32 %545, 1
  %549 = or i32 %546, 1
  %550 = add i32 %533, -1
  %551 = add i32 %534, -1
  %552 = call i32 @dx.op.binary.i32(i32 40, i32 %545, i32 %550)  ; UMin(a,b)
  %553 = call i32 @dx.op.binary.i32(i32 40, i32 %546, i32 %551)  ; UMin(a,b)
  %554 = call i32 @dx.op.binary.i32(i32 40, i32 %548, i32 %550)  ; UMin(a,b)
  %555 = call i32 @dx.op.binary.i32(i32 40, i32 %549, i32 %551)  ; UMin(a,b)
  %556 = and i32 %552, 15
  %557 = and i32 %553, 15
  %558 = and i32 %554, 15
  %559 = and i32 %555, 15
  %560 = mul i32 %556, 16
  %561 = add i32 %557, %560
  %562 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %561
  %563 = load i32, i32 addrspace(3)* %562, align 4, !tbaa !27
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %563, 16
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = mul i32 %558, 16
  %569 = add i32 %557, %568
  %570 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %569
  %571 = load i32, i32 addrspace(3)* %570, align 4, !tbaa !27
  %572 = and i32 %571, 65535
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %571, 16
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = mul i32 %556, 16
  %577 = add i32 %559, %576
  %578 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %577
  %579 = load i32, i32 addrspace(3)* %578, align 4, !tbaa !27
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = mul i32 %558, 16
  %585 = add i32 %559, %584
  %586 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %585
  %587 = load i32, i32 addrspace(3)* %586, align 4, !tbaa !27
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %587, 16
  %591 = call float @dx.op.legacyF16ToF32(i32 131, i32 %590)  ; LegacyF16ToF32(value)
  %592 = icmp ugt i32 %533, 1
  %593 = and i32 %533, 1
  %594 = icmp ne i32 %593, 0
  %595 = and i1 %592, %594
  %596 = add i32 %533, -3
  %597 = icmp eq i32 %596, %545
  %598 = and i1 %597, %595
  %599 = icmp ugt i32 %534, 1
  %600 = and i32 %534, 1
  %601 = icmp ne i32 %600, 0
  %602 = and i1 %599, %601
  %603 = add i32 %534, -3
  %604 = icmp eq i32 %603, %546
  %605 = and i1 %604, %602
  %606 = zext i1 %605 to i32
  br label %607

; <label>:607                                     ; preds = %547, %530
  %608 = phi float [ %565, %547 ], [ 0.000000e+00, %530 ]
  %609 = phi float [ %573, %547 ], [ 0.000000e+00, %530 ]
  %610 = phi float [ %581, %547 ], [ 0.000000e+00, %530 ]
  %611 = phi float [ %589, %547 ], [ 0.000000e+00, %530 ]
  %612 = phi float [ %567, %547 ], [ 0.000000e+00, %530 ]
  %613 = phi float [ %575, %547 ], [ 0.000000e+00, %530 ]
  %614 = phi float [ %583, %547 ], [ 0.000000e+00, %530 ]
  %615 = phi float [ %591, %547 ], [ 0.000000e+00, %530 ]
  %616 = phi i1 [ %598, %547 ], [ false, %530 ]
  %617 = phi i32 [ %606, %547 ], [ 0, %530 ]
  %618 = fcmp fast ole float %608, -1.000000e+00
  %619 = fcmp fast ole float %609, -1.000000e+00
  %620 = fcmp fast ole float %610, -1.000000e+00
  %621 = fcmp fast ole float %611, -1.000000e+00
  %622 = select i1 %618, float -1.000000e+00, float %608
  %623 = select i1 %619, float -1.000000e+00, float %609
  %624 = select i1 %620, float -1.000000e+00, float %610
  %625 = select i1 %621, float -1.000000e+00, float %611
  %626 = and i1 %618, %619
  %627 = and i1 %626, %620
  %628 = and i1 %627, %621
  %629 = call float @dx.op.binary.f32(i32 36, float %609, float %610)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float %608, float %629)  ; FMin(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %630, float %611)  ; FMin(a,b)
  %632 = call float @dx.op.binary.f32(i32 35, float %623, float %624)  ; FMax(a,b)
  %633 = call float @dx.op.binary.f32(i32 35, float %622, float %632)  ; FMax(a,b)
  %634 = call float @dx.op.binary.f32(i32 35, float %633, float %625)  ; FMax(a,b)
  %635 = select i1 %628, float %631, float %634
  %636 = fcmp fast ole float %612, -1.000000e+00
  %637 = fcmp fast ole float %613, -1.000000e+00
  %638 = fcmp fast ole float %614, -1.000000e+00
  %639 = fcmp fast ole float %615, -1.000000e+00
  %640 = select i1 %636, float 0x47EFFFFFE0000000, float %612
  %641 = select i1 %637, float 0x47EFFFFFE0000000, float %613
  %642 = select i1 %638, float 0x47EFFFFFE0000000, float %614
  %643 = select i1 %639, float 0x47EFFFFFE0000000, float %615
  %644 = and i1 %636, %637
  %645 = and i1 %644, %638
  %646 = and i1 %645, %639
  %647 = call float @dx.op.binary.f32(i32 35, float %613, float %614)  ; FMax(a,b)
  %648 = call float @dx.op.binary.f32(i32 35, float %612, float %647)  ; FMax(a,b)
  %649 = call float @dx.op.binary.f32(i32 35, float %648, float %615)  ; FMax(a,b)
  %650 = call float @dx.op.binary.f32(i32 36, float %641, float %642)  ; FMin(a,b)
  %651 = call float @dx.op.binary.f32(i32 36, float %640, float %650)  ; FMin(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %651, float %643)  ; FMin(a,b)
  %653 = select i1 %646, float %649, float %652
  br i1 %616, label %654, label %701, !dx.controlflow.hints !33

; <label>:654                                     ; preds = %607
  %655 = and i32 %546, 14
  %656 = add i32 %545, 2
  %657 = and i32 %656, 14
  %658 = mul i32 %657, 16
  %659 = add i32 %655, %658
  %660 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %659
  %661 = load i32, i32 addrspace(3)* %660, align 4, !tbaa !27
  %662 = and i32 %661, 65535
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %661, 16
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = or i32 %655, 1
  %667 = mul i32 %657, 16
  %668 = add i32 %666, %667
  %669 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %668
  %670 = load i32, i32 addrspace(3)* %669, align 4, !tbaa !27
  %671 = and i32 %670, 65535
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = lshr i32 %670, 16
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = fcmp fast ole float %635, -1.000000e+00
  %676 = fcmp fast ole float %663, -1.000000e+00
  %677 = fcmp fast ole float %672, -1.000000e+00
  %678 = select i1 %675, float -1.000000e+00, float %635
  %679 = select i1 %676, float -1.000000e+00, float %663
  %680 = select i1 %677, float -1.000000e+00, float %672
  %681 = and i1 %675, %676
  %682 = and i1 %681, %677
  %683 = call float @dx.op.binary.f32(i32 36, float %663, float %672)  ; FMin(a,b)
  %684 = call float @dx.op.binary.f32(i32 36, float %635, float %683)  ; FMin(a,b)
  %685 = call float @dx.op.binary.f32(i32 35, float %679, float %680)  ; FMax(a,b)
  %686 = call float @dx.op.binary.f32(i32 35, float %678, float %685)  ; FMax(a,b)
  %687 = select i1 %682, float %684, float %686
  %688 = fcmp fast ole float %653, -1.000000e+00
  %689 = fcmp fast ole float %665, -1.000000e+00
  %690 = fcmp fast ole float %674, -1.000000e+00
  %691 = select i1 %688, float 0x47EFFFFFE0000000, float %653
  %692 = select i1 %689, float 0x47EFFFFFE0000000, float %665
  %693 = select i1 %690, float 0x47EFFFFFE0000000, float %674
  %694 = and i1 %688, %689
  %695 = and i1 %694, %690
  %696 = call float @dx.op.binary.f32(i32 35, float %665, float %674)  ; FMax(a,b)
  %697 = call float @dx.op.binary.f32(i32 35, float %653, float %696)  ; FMax(a,b)
  %698 = call float @dx.op.binary.f32(i32 36, float %692, float %693)  ; FMin(a,b)
  %699 = call float @dx.op.binary.f32(i32 36, float %691, float %698)  ; FMin(a,b)
  %700 = select i1 %695, float %697, float %699
  br label %701

; <label>:701                                     ; preds = %654, %607
  %702 = phi float [ %687, %654 ], [ %635, %607 ]
  %703 = phi float [ %700, %654 ], [ %653, %607 ]
  %704 = icmp eq i32 %617, 0
  br i1 %704, label %752, label %705, !dx.controlflow.hints !34

; <label>:705                                     ; preds = %701
  %706 = add i32 %546, 2
  %707 = and i32 %706, 14
  %708 = and i32 %545, 14
  %709 = mul i32 %708, 16
  %710 = add i32 %707, %709
  %711 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %710
  %712 = load i32, i32 addrspace(3)* %711, align 4, !tbaa !27
  %713 = and i32 %712, 65535
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %712, 16
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = or i32 %708, 1
  %718 = mul i32 %717, 16
  %719 = add i32 %707, %718
  %720 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %719
  %721 = load i32, i32 addrspace(3)* %720, align 4, !tbaa !27
  %722 = and i32 %721, 65535
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = lshr i32 %721, 16
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = fcmp fast ole float %702, -1.000000e+00
  %727 = fcmp fast ole float %714, -1.000000e+00
  %728 = fcmp fast ole float %723, -1.000000e+00
  %729 = select i1 %726, float -1.000000e+00, float %702
  %730 = select i1 %727, float -1.000000e+00, float %714
  %731 = select i1 %728, float -1.000000e+00, float %723
  %732 = and i1 %726, %727
  %733 = and i1 %732, %728
  %734 = call float @dx.op.binary.f32(i32 36, float %714, float %723)  ; FMin(a,b)
  %735 = call float @dx.op.binary.f32(i32 36, float %702, float %734)  ; FMin(a,b)
  %736 = call float @dx.op.binary.f32(i32 35, float %730, float %731)  ; FMax(a,b)
  %737 = call float @dx.op.binary.f32(i32 35, float %729, float %736)  ; FMax(a,b)
  %738 = select i1 %733, float %735, float %737
  %739 = fcmp fast ole float %703, -1.000000e+00
  %740 = fcmp fast ole float %716, -1.000000e+00
  %741 = fcmp fast ole float %725, -1.000000e+00
  %742 = select i1 %739, float 0x47EFFFFFE0000000, float %703
  %743 = select i1 %740, float 0x47EFFFFFE0000000, float %716
  %744 = select i1 %741, float 0x47EFFFFFE0000000, float %725
  %745 = and i1 %739, %740
  %746 = and i1 %745, %741
  %747 = call float @dx.op.binary.f32(i32 35, float %716, float %725)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %703, float %747)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 36, float %743, float %744)  ; FMin(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %742, float %749)  ; FMin(a,b)
  %751 = select i1 %746, float %748, float %750
  br label %752

; <label>:752                                     ; preds = %705, %701
  %753 = phi float [ %738, %705 ], [ %702, %701 ]
  %754 = phi float [ %751, %705 ], [ %703, %701 ]
  %755 = icmp ne i32 %617, 0
  %756 = and i1 %616, %755
  br i1 %756, label %757, label %786, !dx.controlflow.hints !35

; <label>:757                                     ; preds = %752
  %758 = add i32 %546, 2
  %759 = and i32 %758, 14
  %760 = add i32 %545, 2
  %761 = and i32 %760, 14
  %762 = mul i32 %761, 16
  %763 = add i32 %759, %762
  %764 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %763
  %765 = load i32, i32 addrspace(3)* %764, align 4, !tbaa !27
  %766 = and i32 %765, 65535
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = lshr i32 %765, 16
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = fcmp fast ole float %753, -1.000000e+00
  %771 = fcmp fast ole float %767, -1.000000e+00
  %772 = select i1 %770, float -1.000000e+00, float %753
  %773 = select i1 %771, float -1.000000e+00, float %767
  %774 = and i1 %770, %771
  %775 = call float @dx.op.binary.f32(i32 36, float %753, float %767)  ; FMin(a,b)
  %776 = call float @dx.op.binary.f32(i32 35, float %772, float %773)  ; FMax(a,b)
  %777 = select i1 %774, float %775, float %776
  %778 = fcmp fast ole float %754, -1.000000e+00
  %779 = fcmp fast ole float %769, -1.000000e+00
  %780 = select i1 %778, float 0x47EFFFFFE0000000, float %754
  %781 = select i1 %779, float 0x47EFFFFFE0000000, float %769
  %782 = and i1 %778, %779
  %783 = call float @dx.op.binary.f32(i32 35, float %754, float %769)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %780, float %781)  ; FMin(a,b)
  %785 = select i1 %782, float %783, float %784
  br label %786

; <label>:786                                     ; preds = %757, %752
  %787 = phi float [ %777, %757 ], [ %753, %752 ]
  %788 = phi float [ %785, %757 ], [ %754, %752 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %544, label %789, label %799, !dx.controlflow.hints !36

; <label>:789                                     ; preds = %786
  %790 = call i32 @dx.op.legacyF32ToF16(i32 130, float %787)  ; LegacyF32ToF16(value)
  %791 = call i32 @dx.op.legacyF32ToF16(i32 130, float %788)  ; LegacyF32ToF16(value)
  %792 = shl i32 %791, 16
  %793 = or i32 %792, %790
  %794 = and i32 %536, 15
  %795 = and i32 %535, 15
  %796 = mul i32 %795, 16
  %797 = add i32 %794, %796
  %798 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %797
  store i32 %793, i32 addrspace(3)* %798, align 4, !tbaa !27
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %535, i32 %536, i32 undef, float %787, float %787, float %787, float %787, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %535, i32 %536, i32 undef, float %788, float %788, float %788, float %788, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %799

; <label>:799                                     ; preds = %789, %786, %522
  %800 = phi i32 [ %523, %522 ], [ %533, %789 ], [ %533, %786 ]
  %801 = phi i32 [ %524, %522 ], [ %534, %789 ], [ %534, %786 ]
  %802 = phi i32 [ %525, %522 ], [ %535, %789 ], [ %535, %786 ]
  %803 = phi i32 [ %526, %522 ], [ %536, %789 ], [ %536, %786 ]
  %804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.i32 %804, 3
  %806 = icmp ugt i32 %805, 3
  br i1 %806, label %807, label %1076, !dx.controlflow.hints !38

; <label>:807                                     ; preds = %799
  %808 = lshr i32 %800, 1
  %809 = lshr i32 %801, 1
  %810 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %808)  ; UMax(a,b)
  %811 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %809)  ; UMax(a,b)
  %812 = lshr i32 %802, 1
  %813 = lshr i32 %803, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %814 = lshr i32 %810, 1
  %815 = lshr i32 %811, 1
  %816 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %814)  ; UMax(a,b)
  %817 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %815)  ; UMax(a,b)
  %818 = icmp ult i32 %812, %816
  %819 = icmp ult i32 %813, %817
  %820 = and i1 %818, %819
  %821 = and i1 %820, %43
  %822 = shl nuw i32 %812, 1
  %823 = shl nuw i32 %813, 1
  br i1 %821, label %824, label %884, !dx.controlflow.hints !32

; <label>:824                                     ; preds = %807
  %825 = or i32 %822, 1
  %826 = or i32 %823, 1
  %827 = add i32 %810, -1
  %828 = add i32 %811, -1
  %829 = call i32 @dx.op.binary.i32(i32 40, i32 %822, i32 %827)  ; UMin(a,b)
  %830 = call i32 @dx.op.binary.i32(i32 40, i32 %823, i32 %828)  ; UMin(a,b)
  %831 = call i32 @dx.op.binary.i32(i32 40, i32 %825, i32 %827)  ; UMin(a,b)
  %832 = call i32 @dx.op.binary.i32(i32 40, i32 %826, i32 %828)  ; UMin(a,b)
  %833 = and i32 %829, 15
  %834 = and i32 %830, 15
  %835 = and i32 %831, 15
  %836 = and i32 %832, 15
  %837 = mul i32 %833, 16
  %838 = add i32 %834, %837
  %839 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %838
  %840 = load i32, i32 addrspace(3)* %839, align 4, !tbaa !27
  %841 = and i32 %840, 65535
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = lshr i32 %840, 16
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = mul i32 %835, 16
  %846 = add i32 %834, %845
  %847 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %846
  %848 = load i32, i32 addrspace(3)* %847, align 4, !tbaa !27
  %849 = and i32 %848, 65535
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = lshr i32 %848, 16
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = mul i32 %833, 16
  %854 = add i32 %836, %853
  %855 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %854
  %856 = load i32, i32 addrspace(3)* %855, align 4, !tbaa !27
  %857 = and i32 %856, 65535
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = lshr i32 %856, 16
  %860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %859)  ; LegacyF16ToF32(value)
  %861 = mul i32 %835, 16
  %862 = add i32 %836, %861
  %863 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %862
  %864 = load i32, i32 addrspace(3)* %863, align 4, !tbaa !27
  %865 = and i32 %864, 65535
  %866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %865)  ; LegacyF16ToF32(value)
  %867 = lshr i32 %864, 16
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = icmp ugt i32 %810, 1
  %870 = and i32 %810, 1
  %871 = icmp ne i32 %870, 0
  %872 = and i1 %869, %871
  %873 = add i32 %810, -3
  %874 = icmp eq i32 %873, %822
  %875 = and i1 %874, %872
  %876 = icmp ugt i32 %811, 1
  %877 = and i32 %811, 1
  %878 = icmp ne i32 %877, 0
  %879 = and i1 %876, %878
  %880 = add i32 %811, -3
  %881 = icmp eq i32 %880, %823
  %882 = and i1 %881, %879
  %883 = zext i1 %882 to i32
  br label %884

; <label>:884                                     ; preds = %824, %807
  %885 = phi float [ %842, %824 ], [ 0.000000e+00, %807 ]
  %886 = phi float [ %850, %824 ], [ 0.000000e+00, %807 ]
  %887 = phi float [ %858, %824 ], [ 0.000000e+00, %807 ]
  %888 = phi float [ %866, %824 ], [ 0.000000e+00, %807 ]
  %889 = phi float [ %844, %824 ], [ 0.000000e+00, %807 ]
  %890 = phi float [ %852, %824 ], [ 0.000000e+00, %807 ]
  %891 = phi float [ %860, %824 ], [ 0.000000e+00, %807 ]
  %892 = phi float [ %868, %824 ], [ 0.000000e+00, %807 ]
  %893 = phi i1 [ %875, %824 ], [ false, %807 ]
  %894 = phi i32 [ %883, %824 ], [ 0, %807 ]
  %895 = fcmp fast ole float %885, -1.000000e+00
  %896 = fcmp fast ole float %886, -1.000000e+00
  %897 = fcmp fast ole float %887, -1.000000e+00
  %898 = fcmp fast ole float %888, -1.000000e+00
  %899 = select i1 %895, float -1.000000e+00, float %885
  %900 = select i1 %896, float -1.000000e+00, float %886
  %901 = select i1 %897, float -1.000000e+00, float %887
  %902 = select i1 %898, float -1.000000e+00, float %888
  %903 = and i1 %895, %896
  %904 = and i1 %903, %897
  %905 = and i1 %904, %898
  %906 = call float @dx.op.binary.f32(i32 36, float %886, float %887)  ; FMin(a,b)
  %907 = call float @dx.op.binary.f32(i32 36, float %885, float %906)  ; FMin(a,b)
  %908 = call float @dx.op.binary.f32(i32 36, float %907, float %888)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float %900, float %901)  ; FMax(a,b)
  %910 = call float @dx.op.binary.f32(i32 35, float %899, float %909)  ; FMax(a,b)
  %911 = call float @dx.op.binary.f32(i32 35, float %910, float %902)  ; FMax(a,b)
  %912 = select i1 %905, float %908, float %911
  %913 = fcmp fast ole float %889, -1.000000e+00
  %914 = fcmp fast ole float %890, -1.000000e+00
  %915 = fcmp fast ole float %891, -1.000000e+00
  %916 = fcmp fast ole float %892, -1.000000e+00
  %917 = select i1 %913, float 0x47EFFFFFE0000000, float %889
  %918 = select i1 %914, float 0x47EFFFFFE0000000, float %890
  %919 = select i1 %915, float 0x47EFFFFFE0000000, float %891
  %920 = select i1 %916, float 0x47EFFFFFE0000000, float %892
  %921 = and i1 %913, %914
  %922 = and i1 %921, %915
  %923 = and i1 %922, %916
  %924 = call float @dx.op.binary.f32(i32 35, float %890, float %891)  ; FMax(a,b)
  %925 = call float @dx.op.binary.f32(i32 35, float %889, float %924)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %925, float %892)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 36, float %918, float %919)  ; FMin(a,b)
  %928 = call float @dx.op.binary.f32(i32 36, float %917, float %927)  ; FMin(a,b)
  %929 = call float @dx.op.binary.f32(i32 36, float %928, float %920)  ; FMin(a,b)
  %930 = select i1 %923, float %926, float %929
  br i1 %893, label %931, label %978, !dx.controlflow.hints !33

; <label>:931                                     ; preds = %884
  %932 = and i32 %823, 14
  %933 = add i32 %822, 2
  %934 = and i32 %933, 14
  %935 = mul i32 %934, 16
  %936 = add i32 %932, %935
  %937 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %936
  %938 = load i32, i32 addrspace(3)* %937, align 4, !tbaa !27
  %939 = and i32 %938, 65535
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = lshr i32 %938, 16
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = or i32 %932, 1
  %944 = mul i32 %934, 16
  %945 = add i32 %943, %944
  %946 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %945
  %947 = load i32, i32 addrspace(3)* %946, align 4, !tbaa !27
  %948 = and i32 %947, 65535
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = lshr i32 %947, 16
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = fcmp fast ole float %912, -1.000000e+00
  %953 = fcmp fast ole float %940, -1.000000e+00
  %954 = fcmp fast ole float %949, -1.000000e+00
  %955 = select i1 %952, float -1.000000e+00, float %912
  %956 = select i1 %953, float -1.000000e+00, float %940
  %957 = select i1 %954, float -1.000000e+00, float %949
  %958 = and i1 %952, %953
  %959 = and i1 %958, %954
  %960 = call float @dx.op.binary.f32(i32 36, float %940, float %949)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %912, float %960)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %956, float %957)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 35, float %955, float %962)  ; FMax(a,b)
  %964 = select i1 %959, float %961, float %963
  %965 = fcmp fast ole float %930, -1.000000e+00
  %966 = fcmp fast ole float %942, -1.000000e+00
  %967 = fcmp fast ole float %951, -1.000000e+00
  %968 = select i1 %965, float 0x47EFFFFFE0000000, float %930
  %969 = select i1 %966, float 0x47EFFFFFE0000000, float %942
  %970 = select i1 %967, float 0x47EFFFFFE0000000, float %951
  %971 = and i1 %965, %966
  %972 = and i1 %971, %967
  %973 = call float @dx.op.binary.f32(i32 35, float %942, float %951)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 35, float %930, float %973)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %969, float %970)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %968, float %975)  ; FMin(a,b)
  %977 = select i1 %972, float %974, float %976
  br label %978

; <label>:978                                     ; preds = %931, %884
  %979 = phi float [ %964, %931 ], [ %912, %884 ]
  %980 = phi float [ %977, %931 ], [ %930, %884 ]
  %981 = icmp eq i32 %894, 0
  br i1 %981, label %1029, label %982, !dx.controlflow.hints !34

; <label>:982                                     ; preds = %978
  %983 = add i32 %823, 2
  %984 = and i32 %983, 14
  %985 = and i32 %822, 14
  %986 = mul i32 %985, 16
  %987 = add i32 %984, %986
  %988 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %987
  %989 = load i32, i32 addrspace(3)* %988, align 4, !tbaa !27
  %990 = and i32 %989, 65535
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = lshr i32 %989, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = or i32 %985, 1
  %995 = mul i32 %994, 16
  %996 = add i32 %984, %995
  %997 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %996
  %998 = load i32, i32 addrspace(3)* %997, align 4, !tbaa !27
  %999 = and i32 %998, 65535
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = lshr i32 %998, 16
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = fcmp fast ole float %979, -1.000000e+00
  %1004 = fcmp fast ole float %991, -1.000000e+00
  %1005 = fcmp fast ole float %1000, -1.000000e+00
  %1006 = select i1 %1003, float -1.000000e+00, float %979
  %1007 = select i1 %1004, float -1.000000e+00, float %991
  %1008 = select i1 %1005, float -1.000000e+00, float %1000
  %1009 = and i1 %1003, %1004
  %1010 = and i1 %1009, %1005
  %1011 = call float @dx.op.binary.f32(i32 36, float %991, float %1000)  ; FMin(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %979, float %1011)  ; FMin(a,b)
  %1013 = call float @dx.op.binary.f32(i32 35, float %1007, float %1008)  ; FMax(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float %1006, float %1013)  ; FMax(a,b)
  %1015 = select i1 %1010, float %1012, float %1014
  %1016 = fcmp fast ole float %980, -1.000000e+00
  %1017 = fcmp fast ole float %993, -1.000000e+00
  %1018 = fcmp fast ole float %1002, -1.000000e+00
  %1019 = select i1 %1016, float 0x47EFFFFFE0000000, float %980
  %1020 = select i1 %1017, float 0x47EFFFFFE0000000, float %993
  %1021 = select i1 %1018, float 0x47EFFFFFE0000000, float %1002
  %1022 = and i1 %1016, %1017
  %1023 = and i1 %1022, %1018
  %1024 = call float @dx.op.binary.f32(i32 35, float %993, float %1002)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 35, float %980, float %1024)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1020, float %1021)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1019, float %1026)  ; FMin(a,b)
  %1028 = select i1 %1023, float %1025, float %1027
  br label %1029

; <label>:1029                                    ; preds = %982, %978
  %1030 = phi float [ %1015, %982 ], [ %979, %978 ]
  %1031 = phi float [ %1028, %982 ], [ %980, %978 ]
  %1032 = icmp ne i32 %894, 0
  %1033 = and i1 %893, %1032
  br i1 %1033, label %1034, label %1063, !dx.controlflow.hints !35

; <label>:1034                                    ; preds = %1029
  %1035 = add i32 %823, 2
  %1036 = and i32 %1035, 14
  %1037 = add i32 %822, 2
  %1038 = and i32 %1037, 14
  %1039 = mul i32 %1038, 16
  %1040 = add i32 %1036, %1039
  %1041 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %1040
  %1042 = load i32, i32 addrspace(3)* %1041, align 4, !tbaa !27
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1042, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fcmp fast ole float %1030, -1.000000e+00
  %1048 = fcmp fast ole float %1044, -1.000000e+00
  %1049 = select i1 %1047, float -1.000000e+00, float %1030
  %1050 = select i1 %1048, float -1.000000e+00, float %1044
  %1051 = and i1 %1047, %1048
  %1052 = call float @dx.op.binary.f32(i32 36, float %1030, float %1044)  ; FMin(a,b)
  %1053 = call float @dx.op.binary.f32(i32 35, float %1049, float %1050)  ; FMax(a,b)
  %1054 = select i1 %1051, float %1052, float %1053
  %1055 = fcmp fast ole float %1031, -1.000000e+00
  %1056 = fcmp fast ole float %1046, -1.000000e+00
  %1057 = select i1 %1055, float 0x47EFFFFFE0000000, float %1031
  %1058 = select i1 %1056, float 0x47EFFFFFE0000000, float %1046
  %1059 = and i1 %1055, %1056
  %1060 = call float @dx.op.binary.f32(i32 35, float %1031, float %1046)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 36, float %1057, float %1058)  ; FMin(a,b)
  %1062 = select i1 %1059, float %1060, float %1061
  br label %1063

; <label>:1063                                    ; preds = %1034, %1029
  %1064 = phi float [ %1054, %1034 ], [ %1030, %1029 ]
  %1065 = phi float [ %1062, %1034 ], [ %1031, %1029 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %821, label %1066, label %1076, !dx.controlflow.hints !36

; <label>:1066                                    ; preds = %1063
  %1067 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1064)  ; LegacyF32ToF16(value)
  %1068 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1065)  ; LegacyF32ToF16(value)
  %1069 = shl i32 %1068, 16
  %1070 = or i32 %1069, %1067
  %1071 = and i32 %813, 15
  %1072 = and i32 %812, 15
  %1073 = mul i32 %1072, 16
  %1074 = add i32 %1071, %1073
  %1075 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?floatZValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %1074
  store i32 %1070, i32 addrspace(3)* %1075, align 4, !tbaa !27
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %812, i32 %813, i32 undef, float %1064, float %1064, float %1064, float %1064, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %812, i32 %813, i32 undef, float %1065, float %1065, float %1065, float %1065, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1076

; <label>:1076                                    ; preds = %1066, %1063, %799
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
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !17, null}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 9, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 7, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 8, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 9, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{!18}
!18 = !{i32 0, %FloatZDownsampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!19 = !{void ()* @cs_floatz_downsample_border, !"cs_floatz_downsample_border", null, !4, !20}
!20 = !{i32 0, i64 33024, i32 4, !21}
!21 = !{i32 16, i32 16, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}

