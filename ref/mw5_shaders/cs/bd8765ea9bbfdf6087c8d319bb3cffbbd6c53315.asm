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
; shader hash: f9c9f80bb2273938570738d28bd728f1
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
;   [80 x i8] (type annotation not present)
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
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%ConstantBufferClipmaps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_clipmaps() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %5 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %7 = shl i32 %4, 6
  %8 = shl i32 %6, 3
  %9 = add i32 %5, %7
  %10 = add i32 %9, %8
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = extractvalue %dx.types.CBufRet.i32 %11, 3
  %14 = icmp sgt i32 %12, 0
  %15 = icmp sgt i32 %13, 0
  %16 = zext i1 %14 to i32
  %17 = zext i1 %15 to i32
  %18 = lshr i32 %12, 31
  %19 = lshr i32 %13, 31
  %20 = sub nsw i32 %16, %18
  %21 = sub nsw i32 %17, %19
  %22 = sub i32 0, %12
  %23 = sub i32 0, %13
  %24 = call i32 @dx.op.binary.i32(i32 37, i32 %12, i32 %22)  ; IMax(a,b)
  %25 = call i32 @dx.op.binary.i32(i32 37, i32 %13, i32 %23)  ; IMax(a,b)
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 3
  %28 = mul i32 %27, %24
  %29 = extractvalue %dx.types.CBufRet.i32 %26, 2
  %30 = mul i32 %29, %25
  %31 = mul nsw i32 %25, %24
  %32 = sub i32 %28, %31
  %33 = add i32 %32, %30
  %34 = icmp ugt i32 %10, %33
  br i1 %34, label %280, label %35, !dx.controlflow.hints !15

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = extractvalue %dx.types.CBufRet.i32 %36, 1
  %39 = icmp ult i32 %37, %38
  %40 = select i1 %39, i32 %37, i32 %38
  %41 = select i1 %39, i32 %38, i32 %37
  %42 = extractvalue %dx.types.CBufRet.i32 %36, 2
  %43 = extractvalue %dx.types.CBufRet.i32 %36, 3
  %44 = icmp ult i32 %42, %43
  %45 = select i1 %44, i32 %42, i32 %43
  %46 = icmp ult i32 %10, %28
  %47 = extractvalue %dx.types.CBufRet.i32 %11, 0
  br i1 %46, label %48, label %69, !dx.controlflow.hints !16

; <label>:48                                      ; preds = %35
  %49 = icmp ne i32 %47, 0
  %50 = sub i32 %29, %41
  %51 = mul i32 %27, %40
  %52 = icmp ult i32 %10, %51
  br i1 %52, label %53, label %56, !dx.controlflow.hints !17

; <label>:53                                      ; preds = %48
  %54 = urem i32 %10, %40
  %55 = udiv i32 %10, %40
  br label %61

; <label>:56                                      ; preds = %48
  %57 = sub i32 %10, %51
  %58 = urem i32 %57, %50
  %59 = add i32 %58, %41
  %60 = udiv i32 %57, %50
  br label %61

; <label>:61                                      ; preds = %56, %53
  %62 = phi i32 [ %54, %53 ], [ %59, %56 ]
  %63 = phi i32 [ %55, %53 ], [ %60, %56 ]
  %64 = urem i32 %10, %24
  %65 = add i32 %64, %40
  %66 = udiv i32 %10, %24
  %67 = select i1 %49, i32 %62, i32 %65
  %68 = select i1 %49, i32 %63, i32 %66
  br label %221

; <label>:69                                      ; preds = %35
  %70 = icmp eq i32 %47, 0
  %71 = icmp ne i32 %40, 0
  %72 = and i1 %71, %70
  %73 = icmp ne i32 %41, 0
  %74 = and i1 %73, %72
  %75 = add i32 %29, -1
  %76 = icmp ne i32 %40, %75
  %77 = and i1 %74, %76
  %78 = icmp ne i32 %41, %75
  %79 = and i1 %77, %78
  %80 = select i1 %44, i32 %43, i32 %42
  %81 = sub i32 %10, %28
  %82 = sub i32 %29, %80
  %83 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %84 = icmp ne i32 %83, 0
  br i1 %79, label %85, label %131, !dx.controlflow.hints !18

; <label>:85                                      ; preds = %69
  %86 = mul i32 %40, %25
  %87 = icmp ult i32 %81, %86
  br i1 %87, label %88, label %108, !dx.controlflow.hints !19

; <label>:88                                      ; preds = %85
  %89 = mul i32 %45, %40
  %90 = icmp ult i32 %81, %89
  br i1 %90, label %91, label %94, !dx.controlflow.hints !20

; <label>:91                                      ; preds = %88
  %92 = udiv i32 %81, %45
  %93 = urem i32 %81, %45
  br label %100

; <label>:94                                      ; preds = %88
  %95 = sub i32 %81, %89
  %96 = sub i32 %27, %82
  %97 = udiv i32 %95, %82
  %98 = urem i32 %95, %82
  %99 = add i32 %96, %98
  br label %100

; <label>:100                                     ; preds = %94, %91
  %101 = phi i32 [ %92, %91 ], [ %97, %94 ]
  %102 = phi i32 [ %93, %91 ], [ %99, %94 ]
  %103 = udiv i32 %81, %25
  %104 = urem i32 %81, %25
  %105 = add i32 %104, %45
  %106 = select i1 %84, i32 %101, i32 %103
  %107 = select i1 %84, i32 %102, i32 %105
  br label %221

; <label>:108                                     ; preds = %85
  %109 = sub i32 %81, %86
  %110 = sub i32 %29, %41
  %111 = mul i32 %110, %45
  %112 = icmp ult i32 %109, %111
  br i1 %112, label %113, label %116, !dx.controlflow.hints !20

; <label>:113                                     ; preds = %108
  %114 = udiv i32 %109, %45
  %115 = urem i32 %109, %45
  br label %122

; <label>:116                                     ; preds = %108
  %117 = sub i32 %109, %111
  %118 = sub i32 %27, %82
  %119 = udiv i32 %117, %82
  %120 = urem i32 %117, %82
  %121 = add i32 %118, %120
  br label %122

; <label>:122                                     ; preds = %116, %113
  %123 = phi i32 [ %114, %113 ], [ %119, %116 ]
  %124 = phi i32 [ %115, %113 ], [ %121, %116 ]
  %125 = udiv i32 %109, %25
  %126 = urem i32 %109, %25
  %127 = add i32 %126, %45
  %128 = select i1 %84, i32 %123, i32 %125
  %129 = add i32 %128, %41
  %130 = select i1 %84, i32 %124, i32 %127
  br label %221

; <label>:131                                     ; preds = %69
  %132 = or i32 %41, %40
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %154, !dx.controlflow.hints !21

; <label>:134                                     ; preds = %131
  %135 = mul i32 %29, %45
  %136 = icmp ult i32 %81, %135
  br i1 %136, label %137, label %140, !dx.controlflow.hints !20

; <label>:137                                     ; preds = %134
  %138 = udiv i32 %81, %45
  %139 = urem i32 %81, %45
  br label %146

; <label>:140                                     ; preds = %134
  %141 = sub i32 %81, %135
  %142 = sub i32 %27, %82
  %143 = udiv i32 %141, %82
  %144 = urem i32 %141, %82
  %145 = add i32 %142, %144
  br label %146

; <label>:146                                     ; preds = %140, %137
  %147 = phi i32 [ %138, %137 ], [ %143, %140 ]
  %148 = phi i32 [ %139, %137 ], [ %145, %140 ]
  %149 = udiv i32 %81, %25
  %150 = urem i32 %81, %25
  %151 = add i32 %150, %45
  %152 = select i1 %84, i32 %147, i32 %149
  %153 = select i1 %84, i32 %148, i32 %151
  br label %221

; <label>:154                                     ; preds = %131
  br i1 %70, label %177, label %155, !dx.controlflow.hints !22

; <label>:155                                     ; preds = %154
  %156 = sub i32 %41, %40
  %157 = mul i32 %45, %156
  %158 = icmp ult i32 %81, %157
  br i1 %158, label %159, label %162, !dx.controlflow.hints !20

; <label>:159                                     ; preds = %155
  %160 = udiv i32 %81, %45
  %161 = urem i32 %81, %45
  br label %168

; <label>:162                                     ; preds = %155
  %163 = sub i32 %81, %157
  %164 = sub i32 %27, %82
  %165 = udiv i32 %163, %82
  %166 = urem i32 %163, %82
  %167 = add i32 %164, %166
  br label %168

; <label>:168                                     ; preds = %162, %159
  %169 = phi i32 [ %160, %159 ], [ %165, %162 ]
  %170 = phi i32 [ %161, %159 ], [ %167, %162 ]
  %171 = udiv i32 %81, %25
  %172 = urem i32 %81, %25
  %173 = add i32 %172, %45
  %174 = select i1 %84, i32 %169, i32 %171
  %175 = add i32 %174, %40
  %176 = select i1 %84, i32 %170, i32 %173
  br label %221

; <label>:177                                     ; preds = %154
  %178 = icmp eq i32 %40, 0
  br i1 %178, label %179, label %201, !dx.controlflow.hints !23

; <label>:179                                     ; preds = %177
  %180 = sub i32 %29, %41
  %181 = mul i32 %180, %45
  %182 = icmp ult i32 %81, %181
  br i1 %182, label %183, label %186, !dx.controlflow.hints !20

; <label>:183                                     ; preds = %179
  %184 = udiv i32 %81, %45
  %185 = urem i32 %81, %45
  br label %192

; <label>:186                                     ; preds = %179
  %187 = sub i32 %81, %181
  %188 = sub i32 %27, %82
  %189 = udiv i32 %187, %82
  %190 = urem i32 %187, %82
  %191 = add i32 %188, %190
  br label %192

; <label>:192                                     ; preds = %186, %183
  %193 = phi i32 [ %184, %183 ], [ %189, %186 ]
  %194 = phi i32 [ %185, %183 ], [ %191, %186 ]
  %195 = udiv i32 %81, %25
  %196 = urem i32 %81, %25
  %197 = add i32 %196, %45
  %198 = select i1 %84, i32 %193, i32 %195
  %199 = add i32 %198, %41
  %200 = select i1 %84, i32 %194, i32 %197
  br label %221

; <label>:201                                     ; preds = %177
  %202 = mul i32 %45, %40
  %203 = icmp ult i32 %81, %202
  br i1 %203, label %204, label %207, !dx.controlflow.hints !20

; <label>:204                                     ; preds = %201
  %205 = udiv i32 %81, %45
  %206 = urem i32 %81, %45
  br label %213

; <label>:207                                     ; preds = %201
  %208 = sub i32 %81, %202
  %209 = sub i32 %27, %82
  %210 = udiv i32 %208, %82
  %211 = urem i32 %208, %82
  %212 = add i32 %209, %211
  br label %213

; <label>:213                                     ; preds = %207, %204
  %214 = phi i32 [ %205, %204 ], [ %210, %207 ]
  %215 = phi i32 [ %206, %204 ], [ %212, %207 ]
  %216 = udiv i32 %81, %25
  %217 = urem i32 %81, %25
  %218 = add i32 %217, %45
  %219 = select i1 %84, i32 %214, i32 %216
  %220 = select i1 %84, i32 %215, i32 %218
  br label %221

; <label>:221                                     ; preds = %213, %192, %168, %146, %122, %100, %61
  %222 = phi i32 [ %67, %61 ], [ %106, %100 ], [ %129, %122 ], [ %152, %146 ], [ %175, %168 ], [ %199, %192 ], [ %219, %213 ]
  %223 = phi i32 [ %68, %61 ], [ %107, %100 ], [ %130, %122 ], [ %153, %146 ], [ %176, %168 ], [ %200, %192 ], [ %220, %213 ]
  %224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.i32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.i32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.i32 %224, 2
  %228 = extractvalue %dx.types.CBufRet.i32 %224, 3
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.i32 %229, 1
  %232 = extractvalue %dx.types.CBufRet.i32 %229, 3
  %233 = and i32 %232, 31
  %234 = extractvalue %dx.types.CBufRet.i32 %229, 2
  %235 = icmp eq i32 %234, 0
  %236 = shl i32 %222, %233
  %237 = shl i32 %223, %233
  br i1 %235, label %238, label %263, !dx.controlflow.hints !24

; <label>:238                                     ; preds = %221
  %239 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %245, label %241, !dx.controlflow.hints !25

; <label>:241                                     ; preds = %238
  %242 = mul i32 %29, %20
  %243 = shl i32 %242, %233
  %244 = add i32 %243, %236
  br label %245

; <label>:245                                     ; preds = %241, %238
  %246 = phi i32 [ %244, %241 ], [ %236, %238 ]
  %247 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249, !dx.controlflow.hints !26

; <label>:249                                     ; preds = %245
  %250 = mul i32 %27, %21
  %251 = shl i32 %250, %233
  %252 = add i32 %251, %237
  br label %253

; <label>:253                                     ; preds = %249, %245
  %254 = phi i32 [ %252, %249 ], [ %237, %245 ]
  %255 = icmp ult i32 %222, %225
  %256 = shl i32 %29, %233
  %257 = select i1 %255, i32 %256, i32 0
  %258 = add i32 %246, %257
  %259 = icmp ult i32 %223, %226
  br i1 %259, label %260, label %263, !dx.controlflow.hints !27

; <label>:260                                     ; preds = %253
  %261 = shl i32 %27, %233
  %262 = add i32 %261, %254
  br label %263

; <label>:263                                     ; preds = %260, %253, %221
  %264 = phi i32 [ %258, %260 ], [ %258, %253 ], [ %236, %221 ]
  %265 = phi i32 [ %262, %260 ], [ %254, %253 ], [ %237, %221 ]
  %266 = shl i32 %227, %233
  %267 = shl i32 %228, %233
  %268 = sub i32 %230, %266
  %269 = add i32 %268, %264
  %270 = sub i32 %231, %267
  %271 = add i32 %270, %265
  %272 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %273 = urem i32 %269, %272
  %274 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %275 = urem i32 %271, %274
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %273, i32 %275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %222, i32 %223, i32 %232, float %277, float %278, float %279, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %280

; <label>:280                                     ; preds = %263, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!9 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %ConstantBufferClipmaps* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!12 = !{void ()* @cs_clipmaps, !"cs_clipmaps", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}
!15 = distinct !{!15, !"dx.controlflow.hints", i32 2}
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
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

