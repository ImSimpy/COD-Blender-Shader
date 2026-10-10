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
; shader hash: 536ad452b0d40b695ce04a7df37bc5f3
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
;   [3376 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u1     1
;                                       UAV    byte         r/w      U1             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }

@"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim" = internal constant [12 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], align 4

define void @cs_water_tile_generate_underwater_mesh() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = shl i32 %6, 6
  %15 = and i32 %14, 192
  %16 = add i32 %15, %7
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %433, label %18, !dx.controlflow.hints !16

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = and i32 %16, 15
  %22 = lshr i32 %16, 4
  %23 = shl i32 %20, 2
  %24 = add i32 %23, %6
  %25 = and i32 %24, -4
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 0
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = sub i32 %31, %27
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 196)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 0
  %35 = call i32 @dx.op.tertiary.i32(i32 49, i32 %34, i32 %32, i32 %29)  ; UMad(a,b,c)
  %36 = mul i32 %22, 17
  %37 = add i32 %36, %21
  %38 = add i32 %37, %35
  %39 = add nuw nsw i32 %21, 1
  %40 = add i32 %39, %36
  %41 = add i32 %40, %35
  %42 = add nuw nsw i32 %21, 17
  %43 = add i32 %42, %36
  %44 = add i32 %43, %35
  %45 = add nuw nsw i32 %21, 18
  %46 = add i32 %45, %36
  %47 = add i32 %46, %35
  %48 = mul i32 %38, 20
  %49 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = extractvalue %dx.types.ResRet.f32 %49, 1
  %52 = extractvalue %dx.types.ResRet.f32 %49, 2
  %53 = mul i32 %41, 20
  %54 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.f32 %54, 0
  %56 = extractvalue %dx.types.ResRet.f32 %54, 1
  %57 = extractvalue %dx.types.ResRet.f32 %54, 2
  %58 = mul i32 %44, 20
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = mul i32 %47, 20
  %64 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = bitcast float %50 to i32
  %69 = bitcast float %51 to i32
  %70 = bitcast float %52 to i32
  %71 = icmp eq i32 %68, 2139095040
  %72 = icmp eq i32 %69, 2139095040
  %73 = icmp eq i32 %70, 2139095040
  %74 = or i1 %71, %72
  %75 = or i1 %73, %74
  %76 = bitcast float %55 to i32
  %77 = bitcast float %56 to i32
  %78 = bitcast float %57 to i32
  %79 = icmp eq i32 %76, 2139095040
  %80 = icmp eq i32 %77, 2139095040
  %81 = icmp eq i32 %78, 2139095040
  %82 = or i1 %79, %80
  %83 = or i1 %81, %82
  %84 = bitcast float %60 to i32
  %85 = bitcast float %61 to i32
  %86 = bitcast float %62 to i32
  %87 = icmp eq i32 %84, 2139095040
  %88 = icmp eq i32 %85, 2139095040
  %89 = icmp eq i32 %86, 2139095040
  %90 = or i1 %87, %88
  %91 = or i1 %89, %90
  %92 = bitcast float %65 to i32
  %93 = bitcast float %66 to i32
  %94 = bitcast float %67 to i32
  %95 = icmp eq i32 %92, 2139095040
  %96 = icmp eq i32 %93, 2139095040
  %97 = icmp eq i32 %94, 2139095040
  %98 = or i1 %95, %96
  %99 = or i1 %97, %98
  %100 = or i1 %75, %83
  %101 = or i1 %100, %91
  %102 = or i1 %101, %99
  br i1 %102, label %433, label %103, !dx.controlflow.hints !17

; <label>:103                                     ; preds = %18
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 1
  br label %106

; <label>:106                                     ; preds = %429, %103
  %107 = phi float [ undef, %103 ], [ %307, %429 ]
  %108 = phi float [ undef, %103 ], [ %271, %429 ]
  %109 = phi float [ undef, %103 ], [ %235, %429 ]
  %110 = phi float [ undef, %103 ], [ %199, %429 ]
  %111 = phi float [ undef, %103 ], [ %164, %429 ]
  %112 = phi i32 [ 0, %103 ], [ %430, %429 ]
  %113 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 0
  %114 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 0
  %115 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 0
  store float 0.000000e+00, float* %113, align 4
  store float 0.000000e+00, float* %114, align 4
  store float 0.000000e+00, float* %115, align 4
  %116 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 1
  %117 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 1
  %118 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 1
  store float 0.000000e+00, float* %116, align 4
  store float 0.000000e+00, float* %117, align 4
  store float 0.000000e+00, float* %118, align 4
  %119 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 2
  %120 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 2
  %121 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 2
  store float 0.000000e+00, float* %119, align 4
  store float 0.000000e+00, float* %120, align 4
  store float 0.000000e+00, float* %121, align 4
  %122 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 0
  %123 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 0
  %124 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 0
  store float 0.000000e+00, float* %122, align 4
  store float 0.000000e+00, float* %123, align 4
  store float 0.000000e+00, float* %124, align 4
  %125 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 1
  %126 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 1
  %127 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 1
  store float 0.000000e+00, float* %125, align 4
  store float 0.000000e+00, float* %126, align 4
  store float 0.000000e+00, float* %127, align 4
  %128 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 2
  %129 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 2
  %130 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 2
  store float 0.000000e+00, float* %128, align 4
  store float 0.000000e+00, float* %129, align 4
  store float 0.000000e+00, float* %130, align 4
  %131 = mul i32 %112, 3
  %132 = add i32 0, %131
  %133 = getelementptr [12 x float], [12 x float]* @"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim", i32 0, i32 %132
  %134 = load float, float* %133, align 4
  %135 = mul i32 %112, 3
  %136 = add i32 1, %135
  %137 = getelementptr [12 x float], [12 x float]* @"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim", i32 0, i32 %136
  %138 = load float, float* %137, align 4
  %139 = mul i32 %112, 3
  %140 = add i32 2, %139
  %141 = getelementptr [12 x float], [12 x float]* @"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim", i32 0, i32 %140
  %142 = load float, float* %141, align 4
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %145 = fsub fast float -0.000000e+00, %144
  %146 = fsub fast float %50, %65
  %147 = fsub fast float %51, %66
  %148 = fsub fast float %52, %67
  %149 = call float @dx.op.dot3.f32(i32 55, float %146, float %147, float %148, float %134, float %138, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = call float @dx.op.unary.f32(i32 6, float %149)  ; FAbs(value)
  %151 = fcmp fast olt float %150, 0x3F1A36E2E0000000
  br i1 %151, label %163, label %152, !dx.controlflow.hints !18

; <label>:152                                     ; preds = %106
  %153 = call float @dx.op.dot3.f32(i32 55, float %134, float %138, float %142, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = fadd fast float %105, %153
  %155 = fsub fast float -0.000000e+00, %154
  %156 = fdiv fast float %155, %149
  %157 = fmul fast float %156, %146
  %158 = fmul fast float %156, %147
  %159 = fmul fast float %156, %148
  %160 = fadd fast float %157, %65
  %161 = fadd fast float %158, %66
  %162 = fadd fast float %159, %67
  br label %163

; <label>:163                                     ; preds = %152, %106
  %164 = phi float [ %156, %152 ], [ %111, %106 ]
  %165 = phi i1 [ true, %152 ], [ false, %106 ]
  %166 = phi float [ %160, %152 ], [ 0.000000e+00, %106 ]
  %167 = phi float [ %161, %152 ], [ 0.000000e+00, %106 ]
  %168 = phi float [ %162, %152 ], [ 0.000000e+00, %106 ]
  br i1 %165, label %169, label %176, !dx.controlflow.hints !19

; <label>:169                                     ; preds = %163
  %170 = fcmp fast ogt float %164, 0.000000e+00
  %171 = fcmp fast ole float %164, 1.000000e+00
  %172 = and i1 %170, %171
  %173 = fcmp fast oge float %168, %145
  %174 = and i1 %172, %173
  br i1 %174, label %175, label %176, !dx.controlflow.hints !20

; <label>:175                                     ; preds = %169
  store float %166, float* %113, align 4
  store float %167, float* %114, align 4
  store float %168, float* %115, align 4
  br label %176

; <label>:176                                     ; preds = %175, %169, %163
  %177 = phi float [ %168, %175 ], [ 0.000000e+00, %169 ], [ 0.000000e+00, %163 ]
  %178 = phi float [ %167, %175 ], [ 0.000000e+00, %169 ], [ 0.000000e+00, %163 ]
  %179 = phi float [ %166, %175 ], [ 0.000000e+00, %169 ], [ 0.000000e+00, %163 ]
  %180 = phi i32 [ 1, %175 ], [ 0, %169 ], [ 0, %163 ]
  store float %179, float* %122, align 4
  store float %178, float* %123, align 4
  store float %177, float* %124, align 4
  %181 = fsub fast float %60, %50
  %182 = fsub fast float %61, %51
  %183 = fsub fast float %62, %52
  %184 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %134, float %138, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %186 = fcmp fast olt float %185, 0x3F1A36E2E0000000
  br i1 %186, label %198, label %187, !dx.controlflow.hints !18

; <label>:187                                     ; preds = %176
  %188 = call float @dx.op.dot3.f32(i32 55, float %134, float %138, float %142, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = fadd fast float %105, %188
  %190 = fsub fast float -0.000000e+00, %189
  %191 = fdiv fast float %190, %184
  %192 = fmul fast float %191, %181
  %193 = fmul fast float %191, %182
  %194 = fmul fast float %191, %183
  %195 = fadd fast float %192, %50
  %196 = fadd fast float %193, %51
  %197 = fadd fast float %194, %52
  br label %198

; <label>:198                                     ; preds = %187, %176
  %199 = phi float [ %191, %187 ], [ %110, %176 ]
  %200 = phi i1 [ true, %187 ], [ false, %176 ]
  %201 = phi float [ %195, %187 ], [ 0.000000e+00, %176 ]
  %202 = phi float [ %196, %187 ], [ 0.000000e+00, %176 ]
  %203 = phi float [ %197, %187 ], [ 0.000000e+00, %176 ]
  br i1 %200, label %204, label %215, !dx.controlflow.hints !19

; <label>:204                                     ; preds = %198
  %205 = fcmp fast ogt float %199, 0.000000e+00
  %206 = fcmp fast ole float %199, 1.000000e+00
  %207 = and i1 %205, %206
  %208 = fcmp fast oge float %203, %145
  %209 = and i1 %207, %208
  br i1 %209, label %210, label %215, !dx.controlflow.hints !20

; <label>:210                                     ; preds = %204
  %211 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %180
  %212 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %180
  %213 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %180
  store float %201, float* %211, align 4
  store float %202, float* %212, align 4
  store float %203, float* %213, align 4
  %214 = add nuw nsw i32 %180, 1
  br label %215

; <label>:215                                     ; preds = %210, %204, %198
  %216 = phi i32 [ %214, %210 ], [ %180, %204 ], [ %180, %198 ]
  %217 = fsub fast float %65, %60
  %218 = fsub fast float %66, %61
  %219 = fsub fast float %67, %62
  %220 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %219, float %134, float %138, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %222 = fcmp fast olt float %221, 0x3F1A36E2E0000000
  br i1 %222, label %234, label %223, !dx.controlflow.hints !18

; <label>:223                                     ; preds = %215
  %224 = call float @dx.op.dot3.f32(i32 55, float %134, float %138, float %142, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fadd fast float %105, %224
  %226 = fsub fast float -0.000000e+00, %225
  %227 = fdiv fast float %226, %220
  %228 = fmul fast float %227, %217
  %229 = fmul fast float %227, %218
  %230 = fmul fast float %227, %219
  %231 = fadd fast float %228, %60
  %232 = fadd fast float %229, %61
  %233 = fadd fast float %230, %62
  br label %234

; <label>:234                                     ; preds = %223, %215
  %235 = phi float [ %227, %223 ], [ %109, %215 ]
  %236 = phi i1 [ true, %223 ], [ false, %215 ]
  %237 = phi float [ %231, %223 ], [ 0.000000e+00, %215 ]
  %238 = phi float [ %232, %223 ], [ 0.000000e+00, %215 ]
  %239 = phi float [ %233, %223 ], [ 0.000000e+00, %215 ]
  br i1 %236, label %240, label %251, !dx.controlflow.hints !19

; <label>:240                                     ; preds = %234
  %241 = fcmp fast ogt float %235, 0.000000e+00
  %242 = fcmp fast ole float %235, 1.000000e+00
  %243 = and i1 %241, %242
  %244 = fcmp fast oge float %239, %145
  %245 = and i1 %243, %244
  br i1 %245, label %246, label %251, !dx.controlflow.hints !20

; <label>:246                                     ; preds = %240
  %247 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %216
  %248 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %216
  %249 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %216
  store float %237, float* %247, align 4
  store float %238, float* %248, align 4
  store float %239, float* %249, align 4
  %250 = add nsw i32 %216, 1
  br label %251

; <label>:251                                     ; preds = %246, %240, %234
  %252 = phi i32 [ %250, %246 ], [ %216, %240 ], [ %216, %234 ]
  %253 = fsub fast float %55, %65
  %254 = fsub fast float %56, %66
  %255 = fsub fast float %57, %67
  %256 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %134, float %138, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = call float @dx.op.unary.f32(i32 6, float %256)  ; FAbs(value)
  %258 = fcmp fast olt float %257, 0x3F1A36E2E0000000
  br i1 %258, label %270, label %259, !dx.controlflow.hints !18

; <label>:259                                     ; preds = %251
  %260 = call float @dx.op.dot3.f32(i32 55, float %134, float %138, float %142, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fadd fast float %105, %260
  %262 = fsub fast float -0.000000e+00, %261
  %263 = fdiv fast float %262, %256
  %264 = fmul fast float %263, %253
  %265 = fmul fast float %263, %254
  %266 = fmul fast float %263, %255
  %267 = fadd fast float %264, %65
  %268 = fadd fast float %265, %66
  %269 = fadd fast float %266, %67
  br label %270

; <label>:270                                     ; preds = %259, %251
  %271 = phi float [ %263, %259 ], [ %108, %251 ]
  %272 = phi i1 [ true, %259 ], [ false, %251 ]
  %273 = phi float [ %267, %259 ], [ 0.000000e+00, %251 ]
  %274 = phi float [ %268, %259 ], [ 0.000000e+00, %251 ]
  %275 = phi float [ %269, %259 ], [ 0.000000e+00, %251 ]
  br i1 %272, label %276, label %287, !dx.controlflow.hints !19

; <label>:276                                     ; preds = %270
  %277 = fcmp fast ogt float %271, 0.000000e+00
  %278 = fcmp fast ole float %271, 1.000000e+00
  %279 = and i1 %277, %278
  %280 = fcmp fast oge float %275, %145
  %281 = and i1 %279, %280
  br i1 %281, label %282, label %287, !dx.controlflow.hints !20

; <label>:282                                     ; preds = %276
  %283 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %180
  %284 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %180
  %285 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %180
  store float %273, float* %283, align 4
  store float %274, float* %284, align 4
  store float %275, float* %285, align 4
  %286 = add nuw nsw i32 %180, 1
  br label %287

; <label>:287                                     ; preds = %282, %276, %270
  %288 = phi i32 [ %286, %282 ], [ %180, %276 ], [ %180, %270 ]
  %289 = fsub fast float %50, %55
  %290 = fsub fast float %51, %56
  %291 = fsub fast float %52, %57
  %292 = call float @dx.op.dot3.f32(i32 55, float %289, float %290, float %291, float %134, float %138, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = fcmp fast olt float %293, 0x3F1A36E2E0000000
  br i1 %294, label %306, label %295, !dx.controlflow.hints !18

; <label>:295                                     ; preds = %287
  %296 = call float @dx.op.dot3.f32(i32 55, float %134, float %138, float %142, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %297 = fadd fast float %105, %296
  %298 = fsub fast float -0.000000e+00, %297
  %299 = fdiv fast float %298, %292
  %300 = fmul fast float %299, %289
  %301 = fmul fast float %299, %290
  %302 = fmul fast float %299, %291
  %303 = fadd fast float %300, %55
  %304 = fadd fast float %301, %56
  %305 = fadd fast float %302, %57
  br label %306

; <label>:306                                     ; preds = %295, %287
  %307 = phi float [ %299, %295 ], [ %107, %287 ]
  %308 = phi i1 [ true, %295 ], [ false, %287 ]
  %309 = phi float [ %303, %295 ], [ 0.000000e+00, %287 ]
  %310 = phi float [ %304, %295 ], [ 0.000000e+00, %287 ]
  %311 = phi float [ %305, %295 ], [ 0.000000e+00, %287 ]
  br i1 %308, label %312, label %323, !dx.controlflow.hints !19

; <label>:312                                     ; preds = %306
  %313 = fcmp fast ogt float %307, 0.000000e+00
  %314 = fcmp fast ole float %307, 1.000000e+00
  %315 = and i1 %313, %314
  %316 = fcmp fast oge float %311, %145
  %317 = and i1 %315, %316
  br i1 %317, label %318, label %323, !dx.controlflow.hints !20

; <label>:318                                     ; preds = %312
  %319 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %288
  %320 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %288
  %321 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %288
  store float %309, float* %319, align 4
  store float %310, float* %320, align 4
  store float %311, float* %321, align 4
  %322 = add nsw i32 %288, 1
  br label %323

; <label>:323                                     ; preds = %318, %312, %306
  %324 = phi i32 [ %322, %318 ], [ %288, %312 ], [ %288, %306 ]
  %325 = fadd fast float %144, 6.250000e-02
  %326 = icmp ugt i32 %252, 1
  br i1 %326, label %327, label %345, !dx.controlflow.hints !21

; <label>:327                                     ; preds = %323
  %328 = load float, float* %116, align 4
  %329 = load float, float* %113, align 4
  %330 = fsub fast float -0.000000e+00, %325
  %331 = call float @dx.op.binary.f32(i32 36, float %329, float %328)  ; FMin(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %329, float %328)  ; FMax(a,b)
  %333 = fcmp fast oge float %325, %331
  %334 = fcmp fast oge float %332, %330
  %335 = and i1 %333, %334
  %336 = load float, float* %117, align 4
  %337 = load float, float* %114, align 4
  %338 = call float @dx.op.binary.f32(i32 36, float %337, float %336)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 35, float %337, float %336)  ; FMax(a,b)
  %340 = fcmp fast oge float %325, %338
  %341 = fcmp fast oge float %339, %330
  %342 = and i1 %340, %341
  %343 = and i1 %335, %342
  %344 = zext i1 %343 to i32
  br label %345

; <label>:345                                     ; preds = %327, %323
  %346 = phi i32 [ 0, %323 ], [ %344, %327 ]
  %347 = icmp ugt i32 %324, 1
  br i1 %347, label %348, label %367, !dx.controlflow.hints !22

; <label>:348                                     ; preds = %345
  %349 = load float, float* %125, align 4
  %350 = load float, float* %122, align 4
  %351 = fsub fast float -0.000000e+00, %325
  %352 = call float @dx.op.binary.f32(i32 36, float %350, float %349)  ; FMin(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %350, float %349)  ; FMax(a,b)
  %354 = fcmp fast oge float %325, %352
  %355 = fcmp fast oge float %353, %351
  %356 = and i1 %354, %355
  %357 = load float, float* %126, align 4
  %358 = load float, float* %123, align 4
  %359 = call float @dx.op.binary.f32(i32 36, float %358, float %357)  ; FMin(a,b)
  %360 = call float @dx.op.binary.f32(i32 35, float %358, float %357)  ; FMax(a,b)
  %361 = fcmp fast oge float %325, %359
  %362 = fcmp fast oge float %360, %351
  %363 = and i1 %361, %362
  %364 = and i1 %356, %363
  %365 = zext i1 %364 to i32
  %366 = add nuw nsw i32 %365, %346
  br label %367

; <label>:367                                     ; preds = %348, %345
  %368 = phi i32 [ %346, %345 ], [ %366, %348 ]
  %369 = phi i32 [ 0, %345 ], [ %365, %348 ]
  %370 = icmp eq i32 %368, 0
  br i1 %370, label %429, label %371, !dx.controlflow.hints !23

; <label>:371                                     ; preds = %367
  %372 = shl nsw i32 %368, 2
  %373 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 112, i32 undef, i32 undef, i32 %372)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %376 = icmp ne i32 %346, 0
  %377 = add i32 %373, 4
  %378 = icmp ult i32 %377, 30721
  %379 = and i1 %376, %378
  br i1 %379, label %380, label %395, !dx.controlflow.hints !24

; <label>:380                                     ; preds = %371
  %381 = load float, float* %118, align 4
  %382 = load float, float* %115, align 4
  %383 = call float @dx.op.binary.f32(i32 36, float %382, float %381)  ; FMin(a,b)
  %384 = load float, float* %113, align 4
  %385 = load float, float* %114, align 4
  %386 = mul i32 %373, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %386, i32 undef, float %384, float %385, float %382, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %387 = load float, float* %116, align 4
  %388 = load float, float* %117, align 4
  %389 = add i32 %386, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %389, i32 undef, float %387, float %388, float %381, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %390 = fsub fast float -0.000000e+00, %375
  %391 = call float @dx.op.binary.f32(i32 36, float %390, float %382)  ; FMin(a,b)
  %392 = add i32 %386, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %392, i32 undef, float %384, float %385, float %391, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %393 = call float @dx.op.binary.f32(i32 36, float %390, float %381)  ; FMin(a,b)
  %394 = add i32 %386, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %394, i32 undef, float %387, float %388, float %393, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %395

; <label>:395                                     ; preds = %380, %371
  %396 = phi i32 [ %377, %380 ], [ %373, %371 ]
  %397 = phi float [ %383, %380 ], [ 1.310720e+05, %371 ]
  %398 = icmp ne i32 %369, 0
  %399 = add i32 %396, 4
  %400 = icmp ult i32 %399, 30721
  %401 = and i1 %398, %400
  %402 = fsub fast float -0.000000e+00, %375
  br i1 %401, label %403, label %418, !dx.controlflow.hints !25

; <label>:403                                     ; preds = %395
  %404 = load float, float* %127, align 4
  %405 = load float, float* %124, align 4
  %406 = call float @dx.op.binary.f32(i32 36, float %405, float %404)  ; FMin(a,b)
  %407 = call float @dx.op.binary.f32(i32 36, float %397, float %406)  ; FMin(a,b)
  %408 = load float, float* %122, align 4
  %409 = load float, float* %123, align 4
  %410 = mul i32 %396, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %410, i32 undef, float %408, float %409, float %405, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %411 = load float, float* %125, align 4
  %412 = load float, float* %126, align 4
  %413 = add i32 %410, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %413, i32 undef, float %411, float %412, float %404, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %414 = call float @dx.op.binary.f32(i32 36, float %402, float %405)  ; FMin(a,b)
  %415 = add i32 %410, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %415, i32 undef, float %408, float %409, float %414, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %416 = call float @dx.op.binary.f32(i32 36, float %402, float %404)  ; FMin(a,b)
  %417 = add i32 %410, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %417, i32 undef, float %411, float %412, float %416, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %418

; <label>:418                                     ; preds = %403, %395
  %419 = phi float [ %407, %403 ], [ %397, %395 ]
  %420 = fcmp fast olt float %419, 1.310720e+05
  %421 = fcmp fast ogt float %419, %402
  %422 = and i1 %420, %421
  br i1 %422, label %423, label %429, !dx.controlflow.hints !26

; <label>:423                                     ; preds = %418
  %424 = fadd fast float %419, %375
  %425 = fmul fast float %424, 6.400000e+01
  %426 = fptoui float %425 to i32
  %427 = xor i32 %426, -1
  %428 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 108, i32 undef, i32 undef, i32 %427)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %429

; <label>:429                                     ; preds = %423, %418, %367
  %430 = add nuw nsw i32 %112, 1
  %431 = icmp eq i32 %430, 4
  br i1 %431, label %432, label %106

; <label>:432                                     ; preds = %429
  br label %433

; <label>:433                                     ; preds = %432, %18, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{!9, !10}
!9 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!10 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!13 = !{void ()* @cs_water_tile_generate_underwater_mesh, !"cs_water_tile_generate_underwater_mesh", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

