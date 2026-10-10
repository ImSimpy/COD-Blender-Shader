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
; shader hash: 10f6b3e55dd1682f8ca3389c2c934aec
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

define void @cs_water_tile_generate_underwater_mesh_9x9() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = icmp ugt i32 %6, 63
  br i1 %13, label %429, label %14, !dx.controlflow.hints !16

; <label>:14                                      ; preds = %0
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = add i32 %17, %15
  %19 = and i32 %6, 7
  %20 = lshr i32 %6, 3
  %21 = shl i32 %18, 2
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %24 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.i32 %24, 1
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %21, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = sub i32 %27, %23
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 196)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %31 = call i32 @dx.op.tertiary.i32(i32 49, i32 %30, i32 %28, i32 %25)  ; UMad(a,b,c)
  %32 = mul i32 %20, 9
  %33 = add i32 %32, %19
  %34 = add i32 %33, %31
  %35 = add nuw nsw i32 %19, 1
  %36 = add i32 %35, %32
  %37 = add i32 %36, %31
  %38 = add nuw nsw i32 %19, 9
  %39 = add i32 %38, %32
  %40 = add i32 %39, %31
  %41 = add nuw nsw i32 %19, 10
  %42 = add i32 %41, %32
  %43 = add i32 %42, %31
  %44 = mul i32 %34, 20
  %45 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = extractvalue %dx.types.ResRet.f32 %45, 2
  %49 = mul i32 %37, 20
  %50 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = mul i32 %40, 20
  %55 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = mul i32 %43, 20
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = bitcast float %46 to i32
  %65 = bitcast float %47 to i32
  %66 = bitcast float %48 to i32
  %67 = icmp eq i32 %64, 2139095040
  %68 = icmp eq i32 %65, 2139095040
  %69 = icmp eq i32 %66, 2139095040
  %70 = or i1 %67, %68
  %71 = or i1 %69, %70
  %72 = bitcast float %51 to i32
  %73 = bitcast float %52 to i32
  %74 = bitcast float %53 to i32
  %75 = icmp eq i32 %72, 2139095040
  %76 = icmp eq i32 %73, 2139095040
  %77 = icmp eq i32 %74, 2139095040
  %78 = or i1 %75, %76
  %79 = or i1 %77, %78
  %80 = bitcast float %56 to i32
  %81 = bitcast float %57 to i32
  %82 = bitcast float %58 to i32
  %83 = icmp eq i32 %80, 2139095040
  %84 = icmp eq i32 %81, 2139095040
  %85 = icmp eq i32 %82, 2139095040
  %86 = or i1 %83, %84
  %87 = or i1 %85, %86
  %88 = bitcast float %61 to i32
  %89 = bitcast float %62 to i32
  %90 = bitcast float %63 to i32
  %91 = icmp eq i32 %88, 2139095040
  %92 = icmp eq i32 %89, 2139095040
  %93 = icmp eq i32 %90, 2139095040
  %94 = or i1 %91, %92
  %95 = or i1 %93, %94
  %96 = or i1 %71, %79
  %97 = or i1 %96, %87
  %98 = or i1 %97, %95
  br i1 %98, label %429, label %99, !dx.controlflow.hints !17

; <label>:99                                      ; preds = %14
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 1
  br label %102

; <label>:102                                     ; preds = %425, %99
  %103 = phi float [ undef, %99 ], [ %303, %425 ]
  %104 = phi float [ undef, %99 ], [ %267, %425 ]
  %105 = phi float [ undef, %99 ], [ %231, %425 ]
  %106 = phi float [ undef, %99 ], [ %195, %425 ]
  %107 = phi float [ undef, %99 ], [ %160, %425 ]
  %108 = phi i32 [ 0, %99 ], [ %426, %425 ]
  %109 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 0
  %110 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 0
  %111 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 0
  store float 0.000000e+00, float* %109, align 4
  store float 0.000000e+00, float* %110, align 4
  store float 0.000000e+00, float* %111, align 4
  %112 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 1
  %113 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 1
  %114 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 1
  store float 0.000000e+00, float* %112, align 4
  store float 0.000000e+00, float* %113, align 4
  store float 0.000000e+00, float* %114, align 4
  %115 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 2
  %116 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 2
  %117 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 2
  store float 0.000000e+00, float* %115, align 4
  store float 0.000000e+00, float* %116, align 4
  store float 0.000000e+00, float* %117, align 4
  %118 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 0
  %119 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 0
  %120 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 0
  store float 0.000000e+00, float* %118, align 4
  store float 0.000000e+00, float* %119, align 4
  store float 0.000000e+00, float* %120, align 4
  %121 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 1
  %122 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 1
  %123 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 1
  store float 0.000000e+00, float* %121, align 4
  store float 0.000000e+00, float* %122, align 4
  store float 0.000000e+00, float* %123, align 4
  %124 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 2
  %125 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 2
  %126 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 2
  store float 0.000000e+00, float* %124, align 4
  store float 0.000000e+00, float* %125, align 4
  store float 0.000000e+00, float* %126, align 4
  %127 = mul i32 %108, 3
  %128 = add i32 0, %127
  %129 = getelementptr [12 x float], [12 x float]* @"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim", i32 0, i32 %128
  %130 = load float, float* %129, align 4
  %131 = mul i32 %108, 3
  %132 = add i32 1, %131
  %133 = getelementptr [12 x float], [12 x float]* @"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim", i32 0, i32 %132
  %134 = load float, float* %133, align 4
  %135 = mul i32 %108, 3
  %136 = add i32 2, %135
  %137 = getelementptr [12 x float], [12 x float]* @"\01?planeNormals@?1??Water_Tile_GenerateUnderwaterMesh@@YAXV?$vector@I$02@@00III@Z@3QBV?$vector@M$02@@B.v.1dim", i32 0, i32 %136
  %138 = load float, float* %137, align 4
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %141 = fsub fast float -0.000000e+00, %140
  %142 = fsub fast float %46, %61
  %143 = fsub fast float %47, %62
  %144 = fsub fast float %48, %63
  %145 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %130, float %134, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %146 = call float @dx.op.unary.f32(i32 6, float %145)  ; FAbs(value)
  %147 = fcmp fast olt float %146, 0x3F1A36E2E0000000
  br i1 %147, label %159, label %148, !dx.controlflow.hints !18

; <label>:148                                     ; preds = %102
  %149 = call float @dx.op.dot3.f32(i32 55, float %130, float %134, float %138, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %150 = fadd fast float %101, %149
  %151 = fsub fast float -0.000000e+00, %150
  %152 = fdiv fast float %151, %145
  %153 = fmul fast float %152, %142
  %154 = fmul fast float %152, %143
  %155 = fmul fast float %152, %144
  %156 = fadd fast float %153, %61
  %157 = fadd fast float %154, %62
  %158 = fadd fast float %155, %63
  br label %159

; <label>:159                                     ; preds = %148, %102
  %160 = phi float [ %152, %148 ], [ %107, %102 ]
  %161 = phi i1 [ true, %148 ], [ false, %102 ]
  %162 = phi float [ %156, %148 ], [ 0.000000e+00, %102 ]
  %163 = phi float [ %157, %148 ], [ 0.000000e+00, %102 ]
  %164 = phi float [ %158, %148 ], [ 0.000000e+00, %102 ]
  br i1 %161, label %165, label %172, !dx.controlflow.hints !19

; <label>:165                                     ; preds = %159
  %166 = fcmp fast ogt float %160, 0.000000e+00
  %167 = fcmp fast ole float %160, 1.000000e+00
  %168 = and i1 %166, %167
  %169 = fcmp fast oge float %164, %141
  %170 = and i1 %168, %169
  br i1 %170, label %171, label %172, !dx.controlflow.hints !20

; <label>:171                                     ; preds = %165
  store float %162, float* %109, align 4
  store float %163, float* %110, align 4
  store float %164, float* %111, align 4
  br label %172

; <label>:172                                     ; preds = %171, %165, %159
  %173 = phi float [ %164, %171 ], [ 0.000000e+00, %165 ], [ 0.000000e+00, %159 ]
  %174 = phi float [ %163, %171 ], [ 0.000000e+00, %165 ], [ 0.000000e+00, %159 ]
  %175 = phi float [ %162, %171 ], [ 0.000000e+00, %165 ], [ 0.000000e+00, %159 ]
  %176 = phi i32 [ 1, %171 ], [ 0, %165 ], [ 0, %159 ]
  store float %175, float* %118, align 4
  store float %174, float* %119, align 4
  store float %173, float* %120, align 4
  %177 = fsub fast float %56, %46
  %178 = fsub fast float %57, %47
  %179 = fsub fast float %58, %48
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %130, float %134, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %182 = fcmp fast olt float %181, 0x3F1A36E2E0000000
  br i1 %182, label %194, label %183, !dx.controlflow.hints !18

; <label>:183                                     ; preds = %172
  %184 = call float @dx.op.dot3.f32(i32 55, float %130, float %134, float %138, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = fadd fast float %101, %184
  %186 = fsub fast float -0.000000e+00, %185
  %187 = fdiv fast float %186, %180
  %188 = fmul fast float %187, %177
  %189 = fmul fast float %187, %178
  %190 = fmul fast float %187, %179
  %191 = fadd fast float %188, %46
  %192 = fadd fast float %189, %47
  %193 = fadd fast float %190, %48
  br label %194

; <label>:194                                     ; preds = %183, %172
  %195 = phi float [ %187, %183 ], [ %106, %172 ]
  %196 = phi i1 [ true, %183 ], [ false, %172 ]
  %197 = phi float [ %191, %183 ], [ 0.000000e+00, %172 ]
  %198 = phi float [ %192, %183 ], [ 0.000000e+00, %172 ]
  %199 = phi float [ %193, %183 ], [ 0.000000e+00, %172 ]
  br i1 %196, label %200, label %211, !dx.controlflow.hints !19

; <label>:200                                     ; preds = %194
  %201 = fcmp fast ogt float %195, 0.000000e+00
  %202 = fcmp fast ole float %195, 1.000000e+00
  %203 = and i1 %201, %202
  %204 = fcmp fast oge float %199, %141
  %205 = and i1 %203, %204
  br i1 %205, label %206, label %211, !dx.controlflow.hints !20

; <label>:206                                     ; preds = %200
  %207 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %176
  %208 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %176
  %209 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %176
  store float %197, float* %207, align 4
  store float %198, float* %208, align 4
  store float %199, float* %209, align 4
  %210 = add nuw nsw i32 %176, 1
  br label %211

; <label>:211                                     ; preds = %206, %200, %194
  %212 = phi i32 [ %210, %206 ], [ %176, %200 ], [ %176, %194 ]
  %213 = fsub fast float %61, %56
  %214 = fsub fast float %62, %57
  %215 = fsub fast float %63, %58
  %216 = call float @dx.op.dot3.f32(i32 55, float %213, float %214, float %215, float %130, float %134, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = fcmp fast olt float %217, 0x3F1A36E2E0000000
  br i1 %218, label %230, label %219, !dx.controlflow.hints !18

; <label>:219                                     ; preds = %211
  %220 = call float @dx.op.dot3.f32(i32 55, float %130, float %134, float %138, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %221 = fadd fast float %101, %220
  %222 = fsub fast float -0.000000e+00, %221
  %223 = fdiv fast float %222, %216
  %224 = fmul fast float %223, %213
  %225 = fmul fast float %223, %214
  %226 = fmul fast float %223, %215
  %227 = fadd fast float %224, %56
  %228 = fadd fast float %225, %57
  %229 = fadd fast float %226, %58
  br label %230

; <label>:230                                     ; preds = %219, %211
  %231 = phi float [ %223, %219 ], [ %105, %211 ]
  %232 = phi i1 [ true, %219 ], [ false, %211 ]
  %233 = phi float [ %227, %219 ], [ 0.000000e+00, %211 ]
  %234 = phi float [ %228, %219 ], [ 0.000000e+00, %211 ]
  %235 = phi float [ %229, %219 ], [ 0.000000e+00, %211 ]
  br i1 %232, label %236, label %247, !dx.controlflow.hints !19

; <label>:236                                     ; preds = %230
  %237 = fcmp fast ogt float %231, 0.000000e+00
  %238 = fcmp fast ole float %231, 1.000000e+00
  %239 = and i1 %237, %238
  %240 = fcmp fast oge float %235, %141
  %241 = and i1 %239, %240
  br i1 %241, label %242, label %247, !dx.controlflow.hints !20

; <label>:242                                     ; preds = %236
  %243 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %212
  %244 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %212
  %245 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %212
  store float %233, float* %243, align 4
  store float %234, float* %244, align 4
  store float %235, float* %245, align 4
  %246 = add nsw i32 %212, 1
  br label %247

; <label>:247                                     ; preds = %242, %236, %230
  %248 = phi i32 [ %246, %242 ], [ %212, %236 ], [ %212, %230 ]
  %249 = fsub fast float %51, %61
  %250 = fsub fast float %52, %62
  %251 = fsub fast float %53, %63
  %252 = call float @dx.op.dot3.f32(i32 55, float %249, float %250, float %251, float %130, float %134, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %253 = call float @dx.op.unary.f32(i32 6, float %252)  ; FAbs(value)
  %254 = fcmp fast olt float %253, 0x3F1A36E2E0000000
  br i1 %254, label %266, label %255, !dx.controlflow.hints !18

; <label>:255                                     ; preds = %247
  %256 = call float @dx.op.dot3.f32(i32 55, float %130, float %134, float %138, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %257 = fadd fast float %101, %256
  %258 = fsub fast float -0.000000e+00, %257
  %259 = fdiv fast float %258, %252
  %260 = fmul fast float %259, %249
  %261 = fmul fast float %259, %250
  %262 = fmul fast float %259, %251
  %263 = fadd fast float %260, %61
  %264 = fadd fast float %261, %62
  %265 = fadd fast float %262, %63
  br label %266

; <label>:266                                     ; preds = %255, %247
  %267 = phi float [ %259, %255 ], [ %104, %247 ]
  %268 = phi i1 [ true, %255 ], [ false, %247 ]
  %269 = phi float [ %263, %255 ], [ 0.000000e+00, %247 ]
  %270 = phi float [ %264, %255 ], [ 0.000000e+00, %247 ]
  %271 = phi float [ %265, %255 ], [ 0.000000e+00, %247 ]
  br i1 %268, label %272, label %283, !dx.controlflow.hints !19

; <label>:272                                     ; preds = %266
  %273 = fcmp fast ogt float %267, 0.000000e+00
  %274 = fcmp fast ole float %267, 1.000000e+00
  %275 = and i1 %273, %274
  %276 = fcmp fast oge float %271, %141
  %277 = and i1 %275, %276
  br i1 %277, label %278, label %283, !dx.controlflow.hints !20

; <label>:278                                     ; preds = %272
  %279 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %176
  %280 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %176
  %281 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %176
  store float %269, float* %279, align 4
  store float %270, float* %280, align 4
  store float %271, float* %281, align 4
  %282 = add nuw nsw i32 %176, 1
  br label %283

; <label>:283                                     ; preds = %278, %272, %266
  %284 = phi i32 [ %282, %278 ], [ %176, %272 ], [ %176, %266 ]
  %285 = fsub fast float %46, %51
  %286 = fsub fast float %47, %52
  %287 = fsub fast float %48, %53
  %288 = call float @dx.op.dot3.f32(i32 55, float %285, float %286, float %287, float %130, float %134, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fcmp fast olt float %289, 0x3F1A36E2E0000000
  br i1 %290, label %302, label %291, !dx.controlflow.hints !18

; <label>:291                                     ; preds = %283
  %292 = call float @dx.op.dot3.f32(i32 55, float %130, float %134, float %138, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = fadd fast float %101, %292
  %294 = fsub fast float -0.000000e+00, %293
  %295 = fdiv fast float %294, %288
  %296 = fmul fast float %295, %285
  %297 = fmul fast float %295, %286
  %298 = fmul fast float %295, %287
  %299 = fadd fast float %296, %51
  %300 = fadd fast float %297, %52
  %301 = fadd fast float %298, %53
  br label %302

; <label>:302                                     ; preds = %291, %283
  %303 = phi float [ %295, %291 ], [ %103, %283 ]
  %304 = phi i1 [ true, %291 ], [ false, %283 ]
  %305 = phi float [ %299, %291 ], [ 0.000000e+00, %283 ]
  %306 = phi float [ %300, %291 ], [ 0.000000e+00, %283 ]
  %307 = phi float [ %301, %291 ], [ 0.000000e+00, %283 ]
  br i1 %304, label %308, label %319, !dx.controlflow.hints !19

; <label>:308                                     ; preds = %302
  %309 = fcmp fast ogt float %303, 0.000000e+00
  %310 = fcmp fast ole float %303, 1.000000e+00
  %311 = and i1 %309, %310
  %312 = fcmp fast oge float %307, %141
  %313 = and i1 %311, %312
  br i1 %313, label %314, label %319, !dx.controlflow.hints !20

; <label>:314                                     ; preds = %308
  %315 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %284
  %316 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %284
  %317 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %284
  store float %305, float* %315, align 4
  store float %306, float* %316, align 4
  store float %307, float* %317, align 4
  %318 = add nsw i32 %284, 1
  br label %319

; <label>:319                                     ; preds = %314, %308, %302
  %320 = phi i32 [ %318, %314 ], [ %284, %308 ], [ %284, %302 ]
  %321 = fadd fast float %140, 6.250000e-02
  %322 = icmp ugt i32 %248, 1
  br i1 %322, label %323, label %341, !dx.controlflow.hints !21

; <label>:323                                     ; preds = %319
  %324 = load float, float* %112, align 4
  %325 = load float, float* %109, align 4
  %326 = fsub fast float -0.000000e+00, %321
  %327 = call float @dx.op.binary.f32(i32 36, float %325, float %324)  ; FMin(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %325, float %324)  ; FMax(a,b)
  %329 = fcmp fast oge float %321, %327
  %330 = fcmp fast oge float %328, %326
  %331 = and i1 %329, %330
  %332 = load float, float* %113, align 4
  %333 = load float, float* %110, align 4
  %334 = call float @dx.op.binary.f32(i32 36, float %333, float %332)  ; FMin(a,b)
  %335 = call float @dx.op.binary.f32(i32 35, float %333, float %332)  ; FMax(a,b)
  %336 = fcmp fast oge float %321, %334
  %337 = fcmp fast oge float %335, %326
  %338 = and i1 %336, %337
  %339 = and i1 %331, %338
  %340 = zext i1 %339 to i32
  br label %341

; <label>:341                                     ; preds = %323, %319
  %342 = phi i32 [ 0, %319 ], [ %340, %323 ]
  %343 = icmp ugt i32 %320, 1
  br i1 %343, label %344, label %363, !dx.controlflow.hints !22

; <label>:344                                     ; preds = %341
  %345 = load float, float* %121, align 4
  %346 = load float, float* %118, align 4
  %347 = fsub fast float -0.000000e+00, %321
  %348 = call float @dx.op.binary.f32(i32 36, float %346, float %345)  ; FMin(a,b)
  %349 = call float @dx.op.binary.f32(i32 35, float %346, float %345)  ; FMax(a,b)
  %350 = fcmp fast oge float %321, %348
  %351 = fcmp fast oge float %349, %347
  %352 = and i1 %350, %351
  %353 = load float, float* %122, align 4
  %354 = load float, float* %119, align 4
  %355 = call float @dx.op.binary.f32(i32 36, float %354, float %353)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 35, float %354, float %353)  ; FMax(a,b)
  %357 = fcmp fast oge float %321, %355
  %358 = fcmp fast oge float %356, %347
  %359 = and i1 %357, %358
  %360 = and i1 %352, %359
  %361 = zext i1 %360 to i32
  %362 = add nuw nsw i32 %361, %342
  br label %363

; <label>:363                                     ; preds = %344, %341
  %364 = phi i32 [ %342, %341 ], [ %362, %344 ]
  %365 = phi i32 [ 0, %341 ], [ %361, %344 ]
  %366 = icmp eq i32 %364, 0
  br i1 %366, label %425, label %367, !dx.controlflow.hints !23

; <label>:367                                     ; preds = %363
  %368 = shl nsw i32 %364, 2
  %369 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 112, i32 undef, i32 undef, i32 %368)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %372 = icmp ne i32 %342, 0
  %373 = add i32 %369, 4
  %374 = icmp ult i32 %373, 30721
  %375 = and i1 %372, %374
  br i1 %375, label %376, label %391, !dx.controlflow.hints !24

; <label>:376                                     ; preds = %367
  %377 = load float, float* %114, align 4
  %378 = load float, float* %111, align 4
  %379 = call float @dx.op.binary.f32(i32 36, float %378, float %377)  ; FMin(a,b)
  %380 = load float, float* %109, align 4
  %381 = load float, float* %110, align 4
  %382 = mul i32 %369, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %382, i32 undef, float %380, float %381, float %378, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %383 = load float, float* %112, align 4
  %384 = load float, float* %113, align 4
  %385 = add i32 %382, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %385, i32 undef, float %383, float %384, float %377, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %386 = fsub fast float -0.000000e+00, %371
  %387 = call float @dx.op.binary.f32(i32 36, float %386, float %378)  ; FMin(a,b)
  %388 = add i32 %382, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %388, i32 undef, float %380, float %381, float %387, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %389 = call float @dx.op.binary.f32(i32 36, float %386, float %377)  ; FMin(a,b)
  %390 = add i32 %382, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %390, i32 undef, float %383, float %384, float %389, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %391

; <label>:391                                     ; preds = %376, %367
  %392 = phi i32 [ %373, %376 ], [ %369, %367 ]
  %393 = phi float [ %379, %376 ], [ 1.310720e+05, %367 ]
  %394 = icmp ne i32 %365, 0
  %395 = add i32 %392, 4
  %396 = icmp ult i32 %395, 30721
  %397 = and i1 %394, %396
  %398 = fsub fast float -0.000000e+00, %371
  br i1 %397, label %399, label %414, !dx.controlflow.hints !25

; <label>:399                                     ; preds = %391
  %400 = load float, float* %123, align 4
  %401 = load float, float* %120, align 4
  %402 = call float @dx.op.binary.f32(i32 36, float %401, float %400)  ; FMin(a,b)
  %403 = call float @dx.op.binary.f32(i32 36, float %393, float %402)  ; FMin(a,b)
  %404 = load float, float* %118, align 4
  %405 = load float, float* %119, align 4
  %406 = mul i32 %392, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %406, i32 undef, float %404, float %405, float %401, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %407 = load float, float* %121, align 4
  %408 = load float, float* %122, align 4
  %409 = add i32 %406, 12
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %409, i32 undef, float %407, float %408, float %400, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %410 = call float @dx.op.binary.f32(i32 36, float %398, float %401)  ; FMin(a,b)
  %411 = add i32 %406, 24
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %411, i32 undef, float %404, float %405, float %410, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %412 = call float @dx.op.binary.f32(i32 36, float %398, float %400)  ; FMin(a,b)
  %413 = add i32 %406, 36
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %413, i32 undef, float %407, float %408, float %412, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %414

; <label>:414                                     ; preds = %399, %391
  %415 = phi float [ %403, %399 ], [ %393, %391 ]
  %416 = fcmp fast olt float %415, 1.310720e+05
  %417 = fcmp fast ogt float %415, %398
  %418 = and i1 %416, %417
  br i1 %418, label %419, label %425, !dx.controlflow.hints !26

; <label>:419                                     ; preds = %414
  %420 = fadd fast float %415, %371
  %421 = fmul fast float %420, 6.400000e+01
  %422 = fptoui float %421 to i32
  %423 = xor i32 %422, -1
  %424 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 108, i32 undef, i32 undef, i32 %423)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %425

; <label>:425                                     ; preds = %419, %414, %363
  %426 = add nuw nsw i32 %108, 1
  %427 = icmp eq i32 %426, 4
  br i1 %427, label %428, label %102

; <label>:428                                     ; preds = %425
  br label %429

; <label>:429                                     ; preds = %428, %14, %0
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
!13 = !{void ()* @cs_water_tile_generate_underwater_mesh_9x9, !"cs_water_tile_generate_underwater_mesh_9x9", null, !4, !14}
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

