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
; shader hash: 8410272b1acff7a0222cbb2a43486e19
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
;   [4208 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s5     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1            t16     1
;                                   texture     f32          2d      T2            t10     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u2     1
;                                       UAV     f32          2d      U2             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%GfxVirtualTexturingComposite = type { [8 x <4 x float>], [8 x <4 x float>], <3 x float>, i32, <2 x float>, float, float, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, [56 x %struct.TerrainTileDataVT], [20 x <4 x float>], [5 x <4 x i32>], [40 x <4 x i32>] }
%struct.TerrainTileDataVT = type { [2 x <4 x i32>], <2 x i32> }
%struct.SamplerState = type { i32 }

define void @cs_compose_to_scratch_ompv() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = alloca [4 x float], align 4
  %13 = alloca [4 x float], align 4
  %14 = alloca [4 x float], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x float], align 4
  %17 = alloca [4 x float], align 4
  %18 = alloca [4 x i32], align 4
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %21 = shl i32 %11, 3
  %22 = udiv i32 %21, %20
  %23 = lshr i32 %22, 1
  %24 = add nuw i32 %23, 243
  %25 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %24)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.i32 %25, 0
  %27 = extractvalue %dx.types.CBufRet.i32 %25, 1
  %28 = extractvalue %dx.types.CBufRet.i32 %25, 2
  %29 = extractvalue %dx.types.CBufRet.i32 %25, 3
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %28, i32* %32, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %29, i32* %33, align 4
  %34 = shl i32 %22, 1
  %35 = and i32 %34, 2
  %36 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %35
  %37 = load i32, i32* %36, align 4, !tbaa !23, !noalias !27
  %38 = and i32 %37, 255
  %39 = or i32 %35, 1
  %40 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %39
  %41 = load i32, i32* %40, align 4, !tbaa !23, !noalias !27
  %42 = lshr i32 %37, 8
  %43 = urem i32 %9, %20
  %44 = add nuw nsw i32 %38, 198
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %44)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = uitofp i32 %20 to float
  %50 = fdiv fast float %48, %49
  %51 = uitofp i32 %43 to float
  %52 = uitofp i32 %10 to float
  %53 = fmul fast float %50, %51
  %54 = fmul fast float %50, %52
  %55 = fadd fast float %53, %46
  %56 = fadd fast float %54, %47
  %57 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %58 = mul i32 %38, %20
  %59 = add i32 %43, %58
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %63, %55
  %65 = fmul fast float %63, %56
  %66 = fadd fast float %64, %61
  %67 = fadd fast float %65, %62
  %68 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %164, !dx.controlflow.hints !34

; <label>:70                                      ; preds = %0
  br label %71

; <label>:71                                      ; preds = %158, %70
  %72 = phi i32 [ %159, %158 ], [ -1, %70 ]
  %73 = phi i32 [ %160, %158 ], [ 0, %70 ]
  %74 = phi float [ %161, %158 ], [ -1.000000e+09, %70 ]
  %75 = phi i32 [ %42, %158 ], [ %41, %70 ]
  %76 = phi i32 [ %162, %158 ], [ 0, %70 ]
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %158, label %78

; <label>:78                                      ; preds = %71
  br label %79

; <label>:79                                      ; preds = %112, %78
  %80 = phi i32 [ %113, %112 ], [ %72, %78 ]
  %81 = phi i32 [ %114, %112 ], [ %73, %78 ]
  %82 = phi float [ %115, %112 ], [ %74, %78 ]
  %83 = phi i32 [ %88, %112 ], [ %75, %78 ]
  %84 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %83)  ; FirstbitLo(value)
  %85 = and i32 %84, 31
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = shl i32 %76, 5
  %90 = add i32 %84, %89
  %91 = mul i32 %90, 3
  %92 = add i32 %91, 30
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %92)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 1
  %95 = bitcast i32 %94 to float
  %96 = extractvalue %dx.types.CBufRet.i32 %93, 2
  %97 = bitcast i32 %96 to float
  %98 = fsub fast float %66, %95
  %99 = fsub fast float %67, %97
  %100 = add i32 %91, 32
  %101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %100)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.i32 %101, 1
  %103 = and i32 %102, 1048575
  %104 = uitofp i32 %103 to float
  %105 = fcmp fast olt float %98, 0.000000e+00
  %106 = fcmp fast olt float %99, 0.000000e+00
  %107 = or i1 %105, %106
  %108 = fcmp fast ogt float %98, %104
  %109 = fcmp fast ogt float %99, %104
  %110 = or i1 %108, %109
  %111 = or i1 %107, %110
  br i1 %111, label %112, label %117, !dx.controlflow.hints !35

; <label>:112                                     ; preds = %156, %117, %79
  %113 = phi i32 [ %80, %79 ], [ %90, %156 ], [ %119, %117 ]
  %114 = phi i32 [ %81, %79 ], [ %120, %156 ], [ %120, %117 ]
  %115 = phi float [ %82, %79 ], [ %154, %156 ], [ %82, %117 ]
  %116 = icmp eq i32 %88, 0
  br i1 %116, label %157, label %79

; <label>:117                                     ; preds = %79
  %118 = icmp ne i32 %81, 0
  %119 = select i1 %118, i32 %80, i32 %90
  %120 = select i1 %118, i32 %81, i32 1
  %121 = fdiv fast float %98, %104
  %122 = fdiv fast float %99, %104
  %123 = add i32 %91, 31
  %124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %123)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.i32 %124, 2
  %126 = lshr i32 %125, 24
  %127 = and i32 %126, 7
  %128 = or i32 %127, 8
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %128)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %132 = fdiv fast float 5.000000e-01, %130
  %133 = fmul fast float %132, 2.000000e+00
  %134 = fsub fast float 1.000000e+00, %133
  %135 = fmul fast float %134, %121
  %136 = fmul fast float %134, %122
  %137 = fadd fast float %135, %132
  %138 = fadd fast float %136, %132
  %139 = fmul fast float %137, %131
  %140 = fmul fast float %138, %131
  %141 = extractvalue %dx.types.CBufRet.i32 %124, 1
  %142 = and i32 %141, 16777215
  %143 = add i32 %142, 0
  %144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %143, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %92)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.i32 %145, 3
  %147 = bitcast i32 %146 to float
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %123)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 0
  %150 = bitcast i32 %149 to float
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %144, %dx.types.Handle %7, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, %150
  %154 = fadd fast float %153, %147
  %155 = fcmp fast ogt float %154, %82
  br i1 %155, label %156, label %112, !dx.controlflow.hints !36

; <label>:156                                     ; preds = %117
  br label %112

; <label>:157                                     ; preds = %112
  br label %158

; <label>:158                                     ; preds = %157, %71
  %159 = phi i32 [ %72, %71 ], [ %113, %157 ]
  %160 = phi i32 [ %73, %71 ], [ %114, %157 ]
  %161 = phi float [ %74, %71 ], [ %115, %157 ]
  %162 = add nuw nsw i32 %76, 1
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %201, label %71

; <label>:164                                     ; preds = %0
  %165 = icmp eq i32 %41, 0
  br i1 %165, label %198, label %166

; <label>:166                                     ; preds = %164
  br label %167

; <label>:167                                     ; preds = %195, %166
  %168 = phi i32 [ %173, %195 ], [ %41, %166 ]
  %169 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %168)  ; FirstbitLo(value)
  %170 = and i32 %169, 31
  %171 = shl i32 1, %170
  %172 = xor i32 %171, -1
  %173 = and i32 %168, %172
  %174 = mul i32 %169, 3
  %175 = add i32 %174, 30
  %176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %175)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.i32 %176, 1
  %178 = bitcast i32 %177 to float
  %179 = extractvalue %dx.types.CBufRet.i32 %176, 2
  %180 = bitcast i32 %179 to float
  %181 = fsub fast float %66, %178
  %182 = fsub fast float %67, %180
  %183 = add i32 %174, 32
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %183)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 1
  %186 = and i32 %185, 1048575
  %187 = uitofp i32 %186 to float
  %188 = fcmp fast olt float %181, 0.000000e+00
  %189 = fcmp fast olt float %182, 0.000000e+00
  %190 = or i1 %188, %189
  %191 = fcmp fast ogt float %181, %187
  %192 = fcmp fast ogt float %182, %187
  %193 = or i1 %191, %192
  %194 = or i1 %190, %193
  br i1 %194, label %195, label %204, !dx.controlflow.hints !37

; <label>:195                                     ; preds = %167
  %196 = icmp eq i32 %173, 0
  br i1 %196, label %197, label %167

; <label>:197                                     ; preds = %195
  br label %198

; <label>:198                                     ; preds = %197, %164
  %199 = icmp eq i32 %42, 0
  br i1 %199, label %205, label %200

; <label>:200                                     ; preds = %198
  br label %1681

; <label>:201                                     ; preds = %158
  br label %205

; <label>:202                                     ; preds = %1710, %1681
  %203 = phi i32 [ %1688, %1681 ], [ -1, %1710 ]
  br label %205

; <label>:204                                     ; preds = %167
  br label %205

; <label>:205                                     ; preds = %204, %202, %201, %198
  %206 = phi i32 [ -1, %198 ], [ %159, %201 ], [ %203, %202 ], [ %169, %204 ]
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %1626, !dx.controlflow.hints !38

; <label>:208                                     ; preds = %205
  %209 = mul i32 %206, 3
  %210 = add i32 %209, 32
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %210)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 1
  %213 = lshr i32 %212, 20
  %214 = add i32 %209, 31
  %215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %214)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.i32 %215, 3
  %217 = and i32 %216, 16777215
  %218 = extractvalue %dx.types.CBufRet.i32 %211, 0
  %219 = and i32 %218, 16777215
  %220 = add i32 %209, 30
  %221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %220)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.i32 %221, 1
  %223 = bitcast i32 %222 to float
  %224 = extractvalue %dx.types.CBufRet.i32 %221, 2
  %225 = bitcast i32 %224 to float
  %226 = fsub fast float %66, %223
  %227 = fsub fast float %67, %225
  %228 = and i32 %212, 1048575
  %229 = uitofp i32 %228 to float
  %230 = fdiv fast float %226, %229
  %231 = fdiv fast float %227, %229
  %232 = fsub fast float 1.000000e+00, %230
  %233 = fsub fast float 1.000000e+00, %231
  %234 = call float @dx.op.binary.f32(i32 36, float %230, float %232)  ; FMin(a,b)
  %235 = call float @dx.op.binary.f32(i32 36, float %231, float %233)  ; FMin(a,b)
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = fcmp fast ogt float %238, 0.000000e+00
  %240 = fmul fast float %229, %234
  %241 = fmul fast float %229, %235
  %242 = fdiv fast float %240, %238
  %243 = fdiv fast float %241, %238
  %244 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %245 = call float @dx.op.unary.f32(i32 7, float %243)  ; Saturate(value)
  %246 = select i1 %239, float %244, float 1.000000e+00
  %247 = select i1 %239, float %245, float 1.000000e+00
  %248 = fmul fast float %246, %238
  %249 = fmul fast float %247, %238
  %250 = fmul fast float %237, %66
  %251 = fmul fast float %237, %67
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %6, float %250, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = fmul fast float %248, 2.000000e+00
  %256 = fmul fast float %255, %253
  %257 = fmul fast float %249, 2.000000e+00
  %258 = fmul fast float %257, %254
  %259 = fsub fast float %226, %248
  %260 = fadd fast float %259, %256
  %261 = fsub fast float %227, %249
  %262 = fadd fast float %261, %258
  %263 = fdiv fast float %260, %229
  %264 = fdiv fast float %262, %229
  %265 = extractvalue %dx.types.CBufRet.i32 %215, 2
  %266 = lshr i32 %265, 24
  %267 = and i32 %266, 7
  %268 = or i32 %267, 8
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 %268)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 0
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %272 = fdiv fast float 5.000000e-01, %270
  %273 = fmul fast float %272, 2.000000e+00
  %274 = fsub fast float 1.000000e+00, %273
  %275 = fmul fast float %274, %263
  %276 = fmul fast float %274, %264
  %277 = fadd fast float %275, %272
  %278 = fadd fast float %276, %272
  %279 = fmul fast float %277, %271
  %280 = fmul fast float %278, %271
  %281 = fadd fast float %279, %272
  %282 = fadd fast float %280, %272
  %283 = fmul fast float %281, %270
  %284 = fmul fast float %282, %270
  %285 = call float @dx.op.unary.f32(i32 27, float %283)  ; Round_ni(value)
  %286 = call float @dx.op.unary.f32(i32 27, float %284)  ; Round_ni(value)
  %287 = fdiv fast float %285, %270
  %288 = fdiv fast float %286, %270
  %289 = fsub fast float %283, %285
  %290 = fsub fast float %284, %286
  %291 = add i32 %217, 0
  %292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %293 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %292, %dx.types.Handle %7, float %287, float %288, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  %295 = extractvalue %dx.types.ResRet.f32 %293, 1
  %296 = extractvalue %dx.types.ResRet.f32 %293, 2
  %297 = extractvalue %dx.types.ResRet.f32 %293, 3
  %298 = fmul fast float %294, 2.550000e+02
  %299 = fmul fast float %295, 2.550000e+02
  %300 = fmul fast float %296, 2.550000e+02
  %301 = fmul fast float %297, 2.550000e+02
  %302 = fptoui float %298 to i32
  %303 = fptoui float %299 to i32
  %304 = fptoui float %300 to i32
  %305 = fptoui float %301 to i32
  %306 = add i32 %219, 0
  %307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %308 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %307, %dx.types.Handle %7, float %287, float %288, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = extractvalue %dx.types.ResRet.f32 %308, 3
  %313 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %307, %dx.types.Handle %7, float %287, float %288, float undef, float undef, i32 0, i32 0, i32 1)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = extractvalue %dx.types.ResRet.f32 %313, 3
  %318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %307, %dx.types.Handle %7, float %287, float %288, float undef, float undef, i32 0, i32 0, i32 2)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = extractvalue %dx.types.ResRet.f32 %318, 1
  %321 = extractvalue %dx.types.ResRet.f32 %318, 2
  %322 = extractvalue %dx.types.ResRet.f32 %318, 3
  %323 = fsub fast float 1.000000e+00, %289
  %324 = fmul fast float %323, %290
  %325 = fmul fast float %289, %290
  %326 = fsub fast float 1.000000e+00, %290
  %327 = fmul fast float %326, %289
  %328 = fmul fast float %323, %326
  %329 = add i32 %302, %213
  %330 = mul i32 %329, 100
  %331 = add i32 %330, 80
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 2
  %334 = and i32 %333, 8388608
  %335 = icmp eq i32 %334, 0
  %336 = shl i32 %302, 4
  br i1 %335, label %350, label %337, !dx.controlflow.hints !39

; <label>:337                                     ; preds = %208
  %338 = fmul fast float %285, 2.500000e-01
  %339 = fptosi float %338 to i32
  %340 = srem i32 %339, 2
  %341 = fadd fast float %286, 1.000000e+00
  %342 = fmul fast float %341, 2.500000e-01
  %343 = fptosi float %342 to i32
  %344 = srem i32 %343, 2
  %345 = mul nsw i32 %344, 3
  %346 = srem i32 %345, 4
  %347 = add nsw i32 %346, %340
  %348 = and i32 %347, 15
  %349 = or i32 %348, %336
  br label %350

; <label>:350                                     ; preds = %337, %208
  %351 = phi i32 [ %349, %337 ], [ %336, %208 ]
  %352 = add i32 %303, %213
  %353 = mul i32 %352, 100
  %354 = add i32 %353, 80
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 2
  %357 = and i32 %356, 8388608
  %358 = icmp eq i32 %357, 0
  %359 = shl i32 %303, 4
  br i1 %358, label %374, label %360, !dx.controlflow.hints !39

; <label>:360                                     ; preds = %350
  %361 = fadd fast float %285, 1.000000e+00
  %362 = fmul fast float %361, 2.500000e-01
  %363 = fptosi float %362 to i32
  %364 = srem i32 %363, 2
  %365 = fadd fast float %286, 1.000000e+00
  %366 = fmul fast float %365, 2.500000e-01
  %367 = fptosi float %366 to i32
  %368 = srem i32 %367, 2
  %369 = mul nsw i32 %368, 3
  %370 = srem i32 %369, 4
  %371 = add nsw i32 %370, %364
  %372 = and i32 %371, 15
  %373 = or i32 %372, %359
  br label %374

; <label>:374                                     ; preds = %360, %350
  %375 = phi i32 [ %373, %360 ], [ %359, %350 ]
  %376 = add i32 %304, %213
  %377 = mul i32 %376, 100
  %378 = add i32 %377, 80
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 2
  %381 = and i32 %380, 8388608
  %382 = icmp eq i32 %381, 0
  %383 = shl i32 %304, 4
  br i1 %382, label %397, label %384, !dx.controlflow.hints !39

; <label>:384                                     ; preds = %374
  %385 = fadd fast float %285, 1.000000e+00
  %386 = fmul fast float %385, 2.500000e-01
  %387 = fptosi float %386 to i32
  %388 = srem i32 %387, 2
  %389 = fmul fast float %286, 2.500000e-01
  %390 = fptosi float %389 to i32
  %391 = srem i32 %390, 2
  %392 = mul nsw i32 %391, 3
  %393 = srem i32 %392, 4
  %394 = add nsw i32 %393, %388
  %395 = and i32 %394, 15
  %396 = or i32 %395, %383
  br label %397

; <label>:397                                     ; preds = %384, %374
  %398 = phi i32 [ %396, %384 ], [ %383, %374 ]
  %399 = add i32 %305, %213
  %400 = mul i32 %399, 100
  %401 = add i32 %400, 80
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 2
  %404 = and i32 %403, 8388608
  %405 = icmp eq i32 %404, 0
  %406 = shl i32 %305, 4
  br i1 %405, label %419, label %407, !dx.controlflow.hints !39

; <label>:407                                     ; preds = %397
  %408 = fmul fast float %285, 2.500000e-01
  %409 = fptosi float %408 to i32
  %410 = srem i32 %409, 2
  %411 = fmul fast float %286, 2.500000e-01
  %412 = fptosi float %411 to i32
  %413 = srem i32 %412, 2
  %414 = mul nsw i32 %413, 3
  %415 = srem i32 %414, 4
  %416 = add nsw i32 %415, %410
  %417 = and i32 %416, 15
  %418 = or i32 %417, %406
  br label %419

; <label>:419                                     ; preds = %407, %397
  %420 = phi i32 [ %418, %407 ], [ %406, %397 ]
  %421 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 0
  store float -1.000000e+00, float* %421, align 4
  %422 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 1
  store float -1.000000e+00, float* %422, align 4
  %423 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 2
  store float -1.000000e+00, float* %423, align 4
  %424 = getelementptr inbounds [4 x float], [4 x float]* %17, i32 0, i32 3
  store float -1.000000e+00, float* %424, align 4
  %425 = call i32 @dx.op.binary.i32(i32 40, i32 %398, i32 %420)  ; UMin(a,b)
  %426 = call i32 @dx.op.binary.i32(i32 40, i32 %351, i32 %375)  ; UMin(a,b)
  %427 = call i32 @dx.op.binary.i32(i32 40, i32 %426, i32 %425)  ; UMin(a,b)
  %428 = icmp eq i32 %427, 65535
  br i1 %428, label %752, label %429, !dx.controlflow.hints !40

; <label>:429                                     ; preds = %419
  %430 = icmp eq i32 %351, %427
  br i1 %430, label %431, label %437, !dx.controlflow.hints !41

; <label>:431                                     ; preds = %429
  %432 = fmul fast float %309, %324
  %433 = fmul fast float %314, %324
  %434 = fmul fast float %319, %324
  %435 = and i32 %351, 15
  %436 = uitofp i32 %435 to float
  store float %436, float* %421, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %437

; <label>:437                                     ; preds = %431, %429
  %438 = phi float [ -1.000000e+00, %429 ], [ %436, %431 ]
  %439 = phi float [ 0.000000e+00, %429 ], [ %324, %431 ]
  %440 = phi float [ 0.000000e+00, %429 ], [ %432, %431 ]
  %441 = phi float [ 0.000000e+00, %429 ], [ %433, %431 ]
  %442 = phi float [ 0.000000e+00, %429 ], [ %434, %431 ]
  %443 = phi i32 [ %427, %429 ], [ %351, %431 ]
  %444 = phi i32 [ %351, %429 ], [ 65535, %431 ]
  %445 = icmp eq i32 %375, %443
  br i1 %445, label %446, label %456, !dx.controlflow.hints !41

; <label>:446                                     ; preds = %437
  %447 = fmul fast float %310, %325
  %448 = fmul fast float %315, %325
  %449 = fmul fast float %320, %325
  %450 = fadd fast float %440, %447
  %451 = fadd fast float %441, %448
  %452 = fadd fast float %442, %449
  %453 = fadd fast float %439, %325
  %454 = and i32 %375, 15
  %455 = uitofp i32 %454 to float
  store float %455, float* %421, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %456

; <label>:456                                     ; preds = %446, %437
  %457 = phi float [ %438, %437 ], [ %455, %446 ]
  %458 = phi float [ %439, %437 ], [ %453, %446 ]
  %459 = phi float [ %440, %437 ], [ %450, %446 ]
  %460 = phi float [ %441, %437 ], [ %451, %446 ]
  %461 = phi float [ %442, %437 ], [ %452, %446 ]
  %462 = phi i32 [ %443, %437 ], [ %375, %446 ]
  %463 = phi i32 [ %375, %437 ], [ 65535, %446 ]
  %464 = icmp eq i32 %398, %462
  br i1 %464, label %465, label %477, !dx.controlflow.hints !41

; <label>:465                                     ; preds = %456
  %466 = fmul fast float %311, %327
  %467 = fmul fast float %316, %327
  %468 = fmul fast float %321, %327
  %469 = fadd fast float %459, %466
  %470 = fadd fast float %460, %467
  %471 = fadd fast float %461, %468
  %472 = fadd fast float %458, %327
  %473 = fadd fast float %458, %327
  %474 = fadd fast float %458, %327
  %475 = and i32 %398, 15
  %476 = uitofp i32 %475 to float
  store float %476, float* %421, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %477

; <label>:477                                     ; preds = %465, %456
  %478 = phi float [ %476, %465 ], [ %457, %456 ]
  %479 = phi float [ %472, %465 ], [ %458, %456 ]
  %480 = phi float [ %473, %465 ], [ %458, %456 ]
  %481 = phi float [ %474, %465 ], [ %458, %456 ]
  %482 = phi float [ %469, %465 ], [ %459, %456 ]
  %483 = phi float [ %470, %465 ], [ %460, %456 ]
  %484 = phi float [ %471, %465 ], [ %461, %456 ]
  %485 = phi i32 [ %398, %465 ], [ %462, %456 ]
  %486 = phi i32 [ 65535, %465 ], [ %398, %456 ]
  %487 = icmp eq i32 %420, %485
  br i1 %487, label %488, label %500, !dx.controlflow.hints !41

; <label>:488                                     ; preds = %477
  %489 = fmul fast float %312, %328
  %490 = fmul fast float %317, %328
  %491 = fmul fast float %322, %328
  %492 = fadd fast float %482, %489
  %493 = fadd fast float %483, %490
  %494 = fadd fast float %484, %491
  %495 = fadd fast float %479, %328
  %496 = fadd fast float %480, %328
  %497 = fadd fast float %481, %328
  %498 = and i32 %420, 15
  %499 = uitofp i32 %498 to float
  store float %499, float* %421, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %500

; <label>:500                                     ; preds = %488, %477
  %501 = phi float [ %478, %477 ], [ %499, %488 ]
  %502 = phi float [ %479, %477 ], [ %495, %488 ]
  %503 = phi float [ %480, %477 ], [ %496, %488 ]
  %504 = phi float [ %481, %477 ], [ %497, %488 ]
  %505 = phi float [ %482, %477 ], [ %492, %488 ]
  %506 = phi float [ %483, %477 ], [ %493, %488 ]
  %507 = phi float [ %484, %477 ], [ %494, %488 ]
  %508 = phi i32 [ %485, %477 ], [ %420, %488 ]
  %509 = phi i32 [ %420, %477 ], [ 65535, %488 ]
  %510 = call i32 @dx.op.binary.i32(i32 40, i32 %486, i32 %509)  ; UMin(a,b)
  %511 = call i32 @dx.op.binary.i32(i32 40, i32 %444, i32 %463)  ; UMin(a,b)
  %512 = call i32 @dx.op.binary.i32(i32 40, i32 %511, i32 %510)  ; UMin(a,b)
  %513 = icmp eq i32 %512, 65535
  br i1 %513, label %752, label %514, !dx.controlflow.hints !40

; <label>:514                                     ; preds = %500
  %515 = icmp eq i32 %444, %512
  br i1 %515, label %516, label %522, !dx.controlflow.hints !41

; <label>:516                                     ; preds = %514
  %517 = fmul fast float %309, %324
  %518 = fmul fast float %314, %324
  %519 = fmul fast float %319, %324
  %520 = and i32 %444, 15
  %521 = uitofp i32 %520 to float
  store float %521, float* %422, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %522

; <label>:522                                     ; preds = %516, %514
  %523 = phi float [ 0.000000e+00, %514 ], [ %324, %516 ]
  %524 = phi float [ 0.000000e+00, %514 ], [ %517, %516 ]
  %525 = phi float [ 0.000000e+00, %514 ], [ %518, %516 ]
  %526 = phi float [ 0.000000e+00, %514 ], [ %519, %516 ]
  %527 = phi i32 [ %512, %514 ], [ %444, %516 ]
  %528 = phi i32 [ %444, %514 ], [ 65535, %516 ]
  %529 = icmp eq i32 %463, %527
  br i1 %529, label %530, label %540, !dx.controlflow.hints !41

; <label>:530                                     ; preds = %522
  %531 = fadd fast float %523, %325
  %532 = fmul fast float %310, %325
  %533 = fmul fast float %315, %325
  %534 = fmul fast float %320, %325
  %535 = fadd fast float %524, %532
  %536 = fadd fast float %525, %533
  %537 = fadd fast float %526, %534
  %538 = and i32 %463, 15
  %539 = uitofp i32 %538 to float
  store float %539, float* %422, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %540

; <label>:540                                     ; preds = %530, %522
  %541 = phi float [ %523, %522 ], [ %531, %530 ]
  %542 = phi float [ %524, %522 ], [ %535, %530 ]
  %543 = phi float [ %525, %522 ], [ %536, %530 ]
  %544 = phi float [ %526, %522 ], [ %537, %530 ]
  %545 = phi i32 [ %527, %522 ], [ %463, %530 ]
  %546 = phi i32 [ %463, %522 ], [ 65535, %530 ]
  %547 = icmp eq i32 %486, %545
  br i1 %547, label %548, label %561, !dx.controlflow.hints !41

; <label>:548                                     ; preds = %540
  %549 = fadd fast float %541, %327
  %550 = fmul fast float %311, %327
  %551 = fmul fast float %316, %327
  %552 = fmul fast float %321, %327
  %553 = fadd fast float %542, %550
  %554 = fadd fast float %543, %551
  %555 = fadd fast float %544, %552
  %556 = fadd fast float %541, %327
  %557 = fadd fast float %541, %327
  %558 = fadd fast float %541, %327
  %559 = and i32 %486, 15
  %560 = uitofp i32 %559 to float
  store float %560, float* %422, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %561

; <label>:561                                     ; preds = %548, %540
  %562 = phi float [ %556, %548 ], [ %541, %540 ]
  %563 = phi float [ %557, %548 ], [ %541, %540 ]
  %564 = phi float [ %558, %548 ], [ %541, %540 ]
  %565 = phi float [ %553, %548 ], [ %542, %540 ]
  %566 = phi float [ %554, %548 ], [ %543, %540 ]
  %567 = phi float [ %555, %548 ], [ %544, %540 ]
  %568 = phi float [ %549, %548 ], [ %541, %540 ]
  %569 = phi i32 [ %486, %548 ], [ %545, %540 ]
  %570 = phi i32 [ 65535, %548 ], [ %486, %540 ]
  %571 = icmp eq i32 %509, %569
  br i1 %571, label %572, label %585, !dx.controlflow.hints !41

; <label>:572                                     ; preds = %561
  %573 = fadd fast float %568, %328
  %574 = fmul fast float %312, %328
  %575 = fmul fast float %317, %328
  %576 = fmul fast float %322, %328
  %577 = fadd fast float %565, %574
  %578 = fadd fast float %566, %575
  %579 = fadd fast float %567, %576
  %580 = fadd fast float %562, %328
  %581 = fadd fast float %563, %328
  %582 = fadd fast float %564, %328
  %583 = and i32 %509, 15
  %584 = uitofp i32 %583 to float
  store float %584, float* %422, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %585

; <label>:585                                     ; preds = %572, %561
  %586 = phi float [ %562, %561 ], [ %580, %572 ]
  %587 = phi float [ %563, %561 ], [ %581, %572 ]
  %588 = phi float [ %564, %561 ], [ %582, %572 ]
  %589 = phi float [ %565, %561 ], [ %577, %572 ]
  %590 = phi float [ %566, %561 ], [ %578, %572 ]
  %591 = phi float [ %567, %561 ], [ %579, %572 ]
  %592 = phi float [ %568, %561 ], [ %573, %572 ]
  %593 = phi i32 [ %569, %561 ], [ %509, %572 ]
  %594 = phi i32 [ %509, %561 ], [ 65535, %572 ]
  %595 = call i32 @dx.op.binary.i32(i32 40, i32 %570, i32 %594)  ; UMin(a,b)
  %596 = call i32 @dx.op.binary.i32(i32 40, i32 %528, i32 %546)  ; UMin(a,b)
  %597 = call i32 @dx.op.binary.i32(i32 40, i32 %596, i32 %595)  ; UMin(a,b)
  %598 = icmp eq i32 %597, 65535
  br i1 %598, label %752, label %599, !dx.controlflow.hints !40

; <label>:599                                     ; preds = %585
  %600 = icmp eq i32 %528, %597
  br i1 %600, label %601, label %607, !dx.controlflow.hints !41

; <label>:601                                     ; preds = %599
  %602 = fmul fast float %309, %324
  %603 = fmul fast float %314, %324
  %604 = fmul fast float %319, %324
  %605 = and i32 %528, 15
  %606 = uitofp i32 %605 to float
  store float %606, float* %423, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %607

; <label>:607                                     ; preds = %601, %599
  %608 = phi float [ 0.000000e+00, %599 ], [ %324, %601 ]
  %609 = phi float [ 0.000000e+00, %599 ], [ %602, %601 ]
  %610 = phi float [ 0.000000e+00, %599 ], [ %603, %601 ]
  %611 = phi float [ 0.000000e+00, %599 ], [ %604, %601 ]
  %612 = phi i32 [ %597, %599 ], [ %528, %601 ]
  %613 = phi i32 [ %528, %599 ], [ 65535, %601 ]
  %614 = icmp eq i32 %546, %612
  br i1 %614, label %615, label %625, !dx.controlflow.hints !41

; <label>:615                                     ; preds = %607
  %616 = fadd fast float %608, %325
  %617 = fmul fast float %310, %325
  %618 = fmul fast float %315, %325
  %619 = fmul fast float %320, %325
  %620 = fadd fast float %609, %617
  %621 = fadd fast float %610, %618
  %622 = fadd fast float %611, %619
  %623 = and i32 %546, 15
  %624 = uitofp i32 %623 to float
  store float %624, float* %423, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %625

; <label>:625                                     ; preds = %615, %607
  %626 = phi float [ %608, %607 ], [ %616, %615 ]
  %627 = phi float [ %609, %607 ], [ %620, %615 ]
  %628 = phi float [ %610, %607 ], [ %621, %615 ]
  %629 = phi float [ %611, %607 ], [ %622, %615 ]
  %630 = phi i32 [ %612, %607 ], [ %546, %615 ]
  %631 = phi i32 [ %546, %607 ], [ 65535, %615 ]
  %632 = icmp eq i32 %570, %630
  br i1 %632, label %633, label %646, !dx.controlflow.hints !41

; <label>:633                                     ; preds = %625
  %634 = fadd fast float %626, %327
  %635 = fmul fast float %311, %327
  %636 = fmul fast float %316, %327
  %637 = fmul fast float %321, %327
  %638 = fadd fast float %627, %635
  %639 = fadd fast float %628, %636
  %640 = fadd fast float %629, %637
  %641 = fadd fast float %626, %327
  %642 = fadd fast float %626, %327
  %643 = fadd fast float %626, %327
  %644 = and i32 %570, 15
  %645 = uitofp i32 %644 to float
  store float %645, float* %423, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %646

; <label>:646                                     ; preds = %633, %625
  %647 = phi float [ %641, %633 ], [ %626, %625 ]
  %648 = phi float [ %642, %633 ], [ %626, %625 ]
  %649 = phi float [ %643, %633 ], [ %626, %625 ]
  %650 = phi float [ %638, %633 ], [ %627, %625 ]
  %651 = phi float [ %639, %633 ], [ %628, %625 ]
  %652 = phi float [ %640, %633 ], [ %629, %625 ]
  %653 = phi float [ %634, %633 ], [ %626, %625 ]
  %654 = phi i32 [ %570, %633 ], [ %630, %625 ]
  %655 = phi i32 [ 65535, %633 ], [ %570, %625 ]
  %656 = icmp eq i32 %594, %654
  br i1 %656, label %657, label %670, !dx.controlflow.hints !41

; <label>:657                                     ; preds = %646
  %658 = fadd fast float %653, %328
  %659 = fmul fast float %312, %328
  %660 = fmul fast float %317, %328
  %661 = fmul fast float %322, %328
  %662 = fadd fast float %650, %659
  %663 = fadd fast float %651, %660
  %664 = fadd fast float %652, %661
  %665 = fadd fast float %647, %328
  %666 = fadd fast float %648, %328
  %667 = fadd fast float %649, %328
  %668 = and i32 %594, 15
  %669 = uitofp i32 %668 to float
  store float %669, float* %423, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %670

; <label>:670                                     ; preds = %657, %646
  %671 = phi float [ %647, %646 ], [ %665, %657 ]
  %672 = phi float [ %648, %646 ], [ %666, %657 ]
  %673 = phi float [ %649, %646 ], [ %667, %657 ]
  %674 = phi float [ %650, %646 ], [ %662, %657 ]
  %675 = phi float [ %651, %646 ], [ %663, %657 ]
  %676 = phi float [ %652, %646 ], [ %664, %657 ]
  %677 = phi float [ %653, %646 ], [ %658, %657 ]
  %678 = phi i32 [ %654, %646 ], [ %594, %657 ]
  %679 = phi i32 [ %594, %646 ], [ 65535, %657 ]
  %680 = call i32 @dx.op.binary.i32(i32 40, i32 %655, i32 %679)  ; UMin(a,b)
  %681 = call i32 @dx.op.binary.i32(i32 40, i32 %613, i32 %631)  ; UMin(a,b)
  %682 = call i32 @dx.op.binary.i32(i32 40, i32 %681, i32 %680)  ; UMin(a,b)
  %683 = icmp eq i32 %682, 65535
  br i1 %683, label %752, label %684, !dx.controlflow.hints !40

; <label>:684                                     ; preds = %670
  %685 = icmp eq i32 %613, %682
  br i1 %685, label %686, label %692, !dx.controlflow.hints !41

; <label>:686                                     ; preds = %684
  %687 = fmul fast float %309, %324
  %688 = fmul fast float %314, %324
  %689 = fmul fast float %319, %324
  %690 = and i32 %613, 15
  %691 = uitofp i32 %690 to float
  store float %691, float* %424, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %692

; <label>:692                                     ; preds = %686, %684
  %693 = phi float [ 0.000000e+00, %684 ], [ %324, %686 ]
  %694 = phi float [ 0.000000e+00, %684 ], [ %687, %686 ]
  %695 = phi float [ 0.000000e+00, %684 ], [ %688, %686 ]
  %696 = phi float [ 0.000000e+00, %684 ], [ %689, %686 ]
  %697 = phi i32 [ %682, %684 ], [ %613, %686 ]
  %698 = icmp eq i32 %631, %697
  br i1 %698, label %699, label %709, !dx.controlflow.hints !41

; <label>:699                                     ; preds = %692
  %700 = fadd fast float %693, %325
  %701 = fmul fast float %310, %325
  %702 = fmul fast float %315, %325
  %703 = fmul fast float %320, %325
  %704 = fadd fast float %694, %701
  %705 = fadd fast float %695, %702
  %706 = fadd fast float %696, %703
  %707 = and i32 %631, 15
  %708 = uitofp i32 %707 to float
  store float %708, float* %424, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %709

; <label>:709                                     ; preds = %699, %692
  %710 = phi float [ %693, %692 ], [ %700, %699 ]
  %711 = phi float [ %694, %692 ], [ %704, %699 ]
  %712 = phi float [ %695, %692 ], [ %705, %699 ]
  %713 = phi float [ %696, %692 ], [ %706, %699 ]
  %714 = phi i32 [ %697, %692 ], [ %631, %699 ]
  %715 = icmp eq i32 %655, %714
  br i1 %715, label %716, label %729, !dx.controlflow.hints !41

; <label>:716                                     ; preds = %709
  %717 = fadd fast float %710, %327
  %718 = fmul fast float %311, %327
  %719 = fmul fast float %316, %327
  %720 = fmul fast float %321, %327
  %721 = fadd fast float %711, %718
  %722 = fadd fast float %712, %719
  %723 = fadd fast float %713, %720
  %724 = fadd fast float %710, %327
  %725 = fadd fast float %710, %327
  %726 = fadd fast float %710, %327
  %727 = and i32 %655, 15
  %728 = uitofp i32 %727 to float
  store float %728, float* %424, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %729

; <label>:729                                     ; preds = %716, %709
  %730 = phi float [ %724, %716 ], [ %710, %709 ]
  %731 = phi float [ %725, %716 ], [ %710, %709 ]
  %732 = phi float [ %726, %716 ], [ %710, %709 ]
  %733 = phi float [ %721, %716 ], [ %711, %709 ]
  %734 = phi float [ %722, %716 ], [ %712, %709 ]
  %735 = phi float [ %723, %716 ], [ %713, %709 ]
  %736 = phi float [ %717, %716 ], [ %710, %709 ]
  %737 = phi i32 [ %655, %716 ], [ %714, %709 ]
  %738 = icmp eq i32 %679, %737
  br i1 %738, label %739, label %752, !dx.controlflow.hints !41

; <label>:739                                     ; preds = %729
  %740 = fadd fast float %736, %328
  %741 = fmul fast float %312, %328
  %742 = fmul fast float %317, %328
  %743 = fmul fast float %322, %328
  %744 = fadd fast float %733, %741
  %745 = fadd fast float %734, %742
  %746 = fadd fast float %735, %743
  %747 = fadd fast float %730, %328
  %748 = fadd fast float %731, %328
  %749 = fadd fast float %732, %328
  %750 = and i32 %679, 15
  %751 = uitofp i32 %750 to float
  store float %751, float* %424, align 4, !tbaa !42, !alias.scope !44, !noalias !47
  br label %752

; <label>:752                                     ; preds = %739, %729, %670, %585, %500, %419
  %753 = phi float [ -1.000000e+00, %419 ], [ %501, %500 ], [ %501, %585 ], [ %501, %670 ], [ %501, %739 ], [ %501, %729 ]
  %754 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %747, %739 ], [ %730, %729 ]
  %755 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %671, %670 ], [ %671, %739 ], [ %671, %729 ]
  %756 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %586, %585 ], [ %586, %670 ], [ %586, %739 ], [ %586, %729 ]
  %757 = phi float [ 0.000000e+00, %419 ], [ %502, %500 ], [ %502, %585 ], [ %502, %670 ], [ %502, %739 ], [ %502, %729 ]
  %758 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %748, %739 ], [ %731, %729 ]
  %759 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %672, %670 ], [ %672, %739 ], [ %672, %729 ]
  %760 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %587, %585 ], [ %587, %670 ], [ %587, %739 ], [ %587, %729 ]
  %761 = phi float [ 0.000000e+00, %419 ], [ %503, %500 ], [ %503, %585 ], [ %503, %670 ], [ %503, %739 ], [ %503, %729 ]
  %762 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %749, %739 ], [ %732, %729 ]
  %763 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %673, %670 ], [ %673, %739 ], [ %673, %729 ]
  %764 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %588, %585 ], [ %588, %670 ], [ %588, %739 ], [ %588, %729 ]
  %765 = phi float [ 0.000000e+00, %419 ], [ %504, %500 ], [ %504, %585 ], [ %504, %670 ], [ %504, %739 ], [ %504, %729 ]
  %766 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %744, %739 ], [ %733, %729 ]
  %767 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %674, %670 ], [ %674, %739 ], [ %674, %729 ]
  %768 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %589, %585 ], [ %589, %670 ], [ %589, %739 ], [ %589, %729 ]
  %769 = phi float [ 0.000000e+00, %419 ], [ %505, %500 ], [ %505, %585 ], [ %505, %670 ], [ %505, %739 ], [ %505, %729 ]
  %770 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %745, %739 ], [ %734, %729 ]
  %771 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %675, %670 ], [ %675, %739 ], [ %675, %729 ]
  %772 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %590, %585 ], [ %590, %670 ], [ %590, %739 ], [ %590, %729 ]
  %773 = phi float [ 0.000000e+00, %419 ], [ %506, %500 ], [ %506, %585 ], [ %506, %670 ], [ %506, %739 ], [ %506, %729 ]
  %774 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %746, %739 ], [ %735, %729 ]
  %775 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %676, %670 ], [ %676, %739 ], [ %676, %729 ]
  %776 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %591, %585 ], [ %591, %670 ], [ %591, %739 ], [ %591, %729 ]
  %777 = phi float [ 0.000000e+00, %419 ], [ %507, %500 ], [ %507, %585 ], [ %507, %670 ], [ %507, %739 ], [ %507, %729 ]
  %778 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ 0.000000e+00, %670 ], [ %740, %739 ], [ %736, %729 ]
  %779 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ 0.000000e+00, %585 ], [ %677, %670 ], [ %677, %739 ], [ %677, %729 ]
  %780 = phi float [ 0.000000e+00, %419 ], [ 0.000000e+00, %500 ], [ %592, %585 ], [ %592, %670 ], [ %592, %739 ], [ %592, %729 ]
  %781 = phi i32 [ 65535, %419 ], [ 65535, %500 ], [ 65535, %585 ], [ 65535, %670 ], [ %679, %739 ], [ %737, %729 ]
  %782 = phi i32 [ 65535, %419 ], [ 65535, %500 ], [ 65535, %585 ], [ %678, %670 ], [ %678, %739 ], [ %678, %729 ]
  %783 = phi i32 [ 65535, %419 ], [ 65535, %500 ], [ %593, %585 ], [ %593, %670 ], [ %593, %739 ], [ %593, %729 ]
  %784 = phi i32 [ 65535, %419 ], [ %508, %500 ], [ %508, %585 ], [ %508, %670 ], [ %508, %739 ], [ %508, %729 ]
  %785 = phi i32 [ 0, %419 ], [ 1, %500 ], [ 2, %585 ], [ 3, %670 ], [ 4, %739 ], [ 4, %729 ]
  %786 = lshr i32 %784, 4
  %787 = lshr i32 %783, 4
  %788 = lshr i32 %782, 4
  %789 = lshr i32 %781, 4
  %790 = icmp eq i32 %785, 0
  br i1 %790, label %810, label %791, !dx.controlflow.hints !61

; <label>:791                                     ; preds = %752
  %792 = fdiv fast float %769, %757
  %793 = fdiv fast float %773, %761
  %794 = fdiv fast float %777, %765
  %795 = icmp eq i32 %785, 1
  br i1 %795, label %810, label %796, !dx.controlflow.hints !61

; <label>:796                                     ; preds = %791
  %797 = fdiv fast float %768, %756
  %798 = fdiv fast float %772, %760
  %799 = fdiv fast float %776, %764
  %800 = icmp eq i32 %785, 2
  br i1 %800, label %810, label %801, !dx.controlflow.hints !61

; <label>:801                                     ; preds = %796
  %802 = fdiv fast float %767, %755
  %803 = fdiv fast float %771, %759
  %804 = fdiv fast float %775, %763
  %805 = icmp eq i32 %785, 3
  br i1 %805, label %810, label %806, !dx.controlflow.hints !61

; <label>:806                                     ; preds = %801
  %807 = fdiv fast float %766, %754
  %808 = fdiv fast float %770, %758
  %809 = fdiv fast float %774, %762
  br label %810

; <label>:810                                     ; preds = %806, %801, %796, %791, %752
  %811 = phi float [ %766, %801 ], [ %807, %806 ], [ %766, %796 ], [ %766, %791 ], [ %766, %752 ]
  %812 = phi float [ %802, %801 ], [ %802, %806 ], [ %767, %796 ], [ %767, %791 ], [ %767, %752 ]
  %813 = phi float [ %797, %801 ], [ %797, %806 ], [ %797, %796 ], [ %768, %791 ], [ %768, %752 ]
  %814 = phi float [ %792, %801 ], [ %792, %806 ], [ %792, %796 ], [ %792, %791 ], [ %769, %752 ]
  %815 = phi float [ %770, %801 ], [ %808, %806 ], [ %770, %796 ], [ %770, %791 ], [ %770, %752 ]
  %816 = phi float [ %803, %801 ], [ %803, %806 ], [ %771, %796 ], [ %771, %791 ], [ %771, %752 ]
  %817 = phi float [ %798, %801 ], [ %798, %806 ], [ %798, %796 ], [ %772, %791 ], [ %772, %752 ]
  %818 = phi float [ %793, %801 ], [ %793, %806 ], [ %793, %796 ], [ %793, %791 ], [ %773, %752 ]
  %819 = phi float [ %774, %801 ], [ %809, %806 ], [ %774, %796 ], [ %774, %791 ], [ %774, %752 ]
  %820 = phi float [ %804, %801 ], [ %804, %806 ], [ %775, %796 ], [ %775, %791 ], [ %775, %752 ]
  %821 = phi float [ %799, %801 ], [ %799, %806 ], [ %799, %796 ], [ %776, %791 ], [ %776, %752 ]
  %822 = phi float [ %794, %801 ], [ %794, %806 ], [ %794, %796 ], [ %794, %791 ], [ %777, %752 ]
  %823 = fmul fast float %780, 2.000000e+00
  %824 = fmul fast float %779, 2.000000e+00
  %825 = fmul fast float %778, 2.000000e+00
  %826 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  %827 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %828 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %829 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 0
  store i32 %786, i32* %829, align 4
  %830 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 1
  store i32 %787, i32* %830, align 4
  %831 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 2
  store i32 %788, i32* %831, align 4
  %832 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i32 0, i32 3
  store i32 %789, i32* %832, align 4
  %833 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 0
  store float 1.000000e+00, float* %833, align 4
  %834 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 1
  store float %826, float* %834, align 4
  %835 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 2
  store float %827, float* %835, align 4
  %836 = getelementptr inbounds [4 x float], [4 x float]* %16, i32 0, i32 3
  store float %828, float* %836, align 4
  %837 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 0
  %838 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 0
  %839 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %814, float* %837, align 4
  store float %818, float* %838, align 4
  store float %822, float* %839, align 4
  %840 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 1
  %841 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 1
  %842 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %813, float* %840, align 4
  store float %817, float* %841, align 4
  store float %821, float* %842, align 4
  %843 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 2
  %844 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 2
  %845 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %812, float* %843, align 4
  store float %816, float* %844, align 4
  store float %820, float* %845, align 4
  %846 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 3
  %847 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 3
  %848 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %811, float* %846, align 4
  store float %815, float* %847, align 4
  store float %819, float* %848, align 4
  br label %849

; <label>:849                                     ; preds = %1594, %810
  %850 = phi float [ %1604, %1594 ], [ %822, %810 ]
  %851 = phi float [ %1602, %1594 ], [ %818, %810 ]
  %852 = phi float [ %1600, %1594 ], [ %814, %810 ]
  %853 = phi float [ %1598, %1594 ], [ %753, %810 ]
  %854 = phi float [ %1591, %1594 ], [ 1.000000e+00, %810 ]
  %855 = phi i32 [ %1596, %1594 ], [ %786, %810 ]
  %856 = phi float [ %1587, %1594 ], [ 0.000000e+00, %810 ]
  %857 = phi float [ %1467, %1594 ], [ 0.000000e+00, %810 ]
  %858 = phi float [ %1347, %1594 ], [ 0.000000e+00, %810 ]
  %859 = phi float [ %1344, %1594 ], [ 0.000000e+00, %810 ]
  %860 = phi float [ %1339, %1594 ], [ 0.000000e+00, %810 ]
  %861 = phi float [ %1340, %1594 ], [ 0.000000e+00, %810 ]
  %862 = phi float [ %1341, %1594 ], [ 0.000000e+00, %810 ]
  %863 = phi float [ %1572, %1594 ], [ 0.000000e+00, %810 ]
  %864 = phi float [ %1566, %1594 ], [ 0.000000e+00, %810 ]
  %865 = phi float [ %1567, %1594 ], [ 0.000000e+00, %810 ]
  %866 = phi float [ %1568, %1594 ], [ 0.000000e+00, %810 ]
  %867 = phi float [ %1459, %1594 ], [ 0.000000e+00, %810 ]
  %868 = phi i32 [ %1588, %1594 ], [ 0, %810 ]
  %869 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %868
  store i32 65535, i32* %869, align 4, !tbaa !23, !noalias !62
  %870 = icmp eq i32 %868, 0
  %871 = add i32 %855, %213
  %872 = mul i32 %871, 100
  %873 = add i32 %872, 64
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 2
  %876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %875)  ; LegacyF16ToF32(value)
  %877 = fdiv fast float 2.500000e+01, %876
  %878 = call float @dx.op.unary.f32(i32 23, float %877)  ; Log(value)
  %879 = fsub fast float 5.000000e-01, %57
  %880 = fadd fast float %879, %878
  %881 = call float @dx.op.unary.f32(i32 28, float %880)  ; Round_pi(value)
  %882 = fptosi float %881 to i32
  %883 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %882)  ; IMax(a,b)
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = bitcast i32 %885 to float
  %887 = extractvalue %dx.types.ResRet.i32 %884, 1
  %888 = bitcast i32 %887 to float
  %889 = extractvalue %dx.types.ResRet.i32 %884, 3
  %890 = bitcast i32 %889 to float
  %891 = add i32 %872, 16
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = bitcast i32 %893 to float
  %895 = fcmp fast ogt float %853, 0.000000e+00
  br i1 %895, label %896, label %908, !dx.controlflow.hints !63

; <label>:896                                     ; preds = %849
  %897 = call float @dx.op.unary.f32(i32 13, float %853)  ; Sin(value)
  %898 = call float @dx.op.unary.f32(i32 12, float %853)  ; Cos(value)
  %899 = fsub fast float -0.000000e+00, %898
  %900 = fmul fast float %898, %886
  %901 = call float @dx.op.tertiary.f32(i32 46, float %897, float %890, float %900)  ; FMad(a,b,c)
  %902 = fmul fast float %898, %888
  %903 = call float @dx.op.tertiary.f32(i32 46, float %897, float %894, float %902)  ; FMad(a,b,c)
  %904 = fmul fast float %897, %886
  %905 = call float @dx.op.tertiary.f32(i32 46, float %899, float %890, float %904)  ; FMad(a,b,c)
  %906 = fmul fast float %897, %888
  %907 = call float @dx.op.tertiary.f32(i32 46, float %899, float %894, float %906)  ; FMad(a,b,c)
  br label %908

; <label>:908                                     ; preds = %896, %849
  %909 = phi float [ %901, %896 ], [ %886, %849 ]
  %910 = phi float [ %905, %896 ], [ %890, %849 ]
  %911 = phi float [ %903, %896 ], [ %888, %849 ]
  %912 = phi float [ %907, %896 ], [ %894, %849 ]
  %913 = fmul fast float %909, %66
  %914 = call float @dx.op.tertiary.f32(i32 46, float %911, float %67, float %913)  ; FMad(a,b,c)
  %915 = fmul fast float %910, %66
  %916 = call float @dx.op.tertiary.f32(i32 46, float %912, float %67, float %915)  ; FMad(a,b,c)
  %917 = add i32 %872, 80
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 2
  %920 = and i32 %919, 4
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %979, label %922, !dx.controlflow.hints !64

; <label>:922                                     ; preds = %908
  %923 = add i32 %872, 32
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 3
  %926 = and i32 %925, 16777215
  %927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %928 = add i32 %926, 0
  %929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %928, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %930 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %929, i32 0)  ; GetDimensions(handle,mipLevel)
  %931 = extractvalue %dx.types.Dimensions %930, 3
  %932 = sub nsw i32 %931, %883
  %933 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %932)  ; IMax(a,b)
  %934 = sitofp i32 %933 to float
  %935 = lshr i32 %925, 16
  %936 = and i32 %935, 15
  %937 = uitofp i32 %936 to float
  %938 = call float @dx.op.binary.f32(i32 35, float %937, float %934)  ; FMax(a,b)
  %939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %929, %dx.types.Handle %927, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %938)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = fsub fast float 1.000000e+00, %854
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 2
  %944 = lshr i32 %943, 24
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F70101020000000
  %947 = extractvalue %dx.types.ResRet.i32 %942, 3
  %948 = lshr i32 %947, 24
  %949 = uitofp i32 %948 to float
  %950 = bitcast float %854 to i32
  %951 = sitofp i32 %950 to float
  %952 = fadd fast float %951, 0xC1CFBF8940000000
  %953 = fmul fast float %952, 0x3F70101020000000
  %954 = fmul fast float %953, %949
  %955 = fadd fast float %954, 0x41CFBF8940000000
  %956 = fptosi float %955 to i32
  %957 = bitcast i32 %956 to float
  %958 = bitcast float %941 to i32
  %959 = sitofp i32 %958 to float
  %960 = fadd fast float %959, 0xC1CFBF8940000000
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = fmul fast float %961, %949
  %963 = fadd fast float %962, 0x41CFBF8940000000
  %964 = fptosi float %963 to i32
  %965 = bitcast i32 %964 to float
  %966 = fmul fast float %957, %946
  %967 = fmul fast float %965, %946
  %968 = fsub fast float %941, %966
  %969 = fadd fast float %967, %941
  %970 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %971 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %972 = fsub fast float %940, %970
  %973 = fsub fast float %971, %970
  %974 = bitcast float %973 to i32
  %975 = sub nsw i32 2129859010, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %976, %972
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  br label %979

; <label>:979                                     ; preds = %922, %908
  %980 = phi float [ %978, %922 ], [ 1.000000e+00, %908 ]
  %981 = phi float [ 1.000000e+00, %922 ], [ %854, %908 ]
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 2
  %984 = and i32 %983, 65536
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1006, label %986, !dx.controlflow.hints !65

; <label>:986                                     ; preds = %979
  %987 = add i32 %872, 32
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 2
  %990 = and i32 %989, 16777215
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = add i32 %990, 0
  %993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %992, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %994 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %993, i32 0)  ; GetDimensions(handle,mipLevel)
  %995 = extractvalue %dx.types.Dimensions %994, 3
  %996 = sub nsw i32 %995, %883
  %997 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %996)  ; IMax(a,b)
  %998 = sitofp i32 %997 to float
  %999 = lshr i32 %989, 16
  %1000 = and i32 %999, 15
  %1001 = uitofp i32 %1000 to float
  %1002 = call float @dx.op.binary.f32(i32 35, float %1001, float %998)  ; FMax(a,b)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %993, %dx.types.Handle %991, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %1002)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = fmul fast float %1004, %981
  br label %1006

; <label>:1006                                    ; preds = %986, %979
  %1007 = phi float [ %1005, %986 ], [ %981, %979 ]
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 2
  %1010 = and i32 %1009, 131072
  %1011 = icmp ne i32 %1010, 0
  %1012 = fcmp fast ogt float %1007, 0x3FE0101020000000
  %1013 = select i1 %1012, float 1.000000e+00, float 0.000000e+00
  %1014 = select i1 %1011, float %1013, float %1007
  %1015 = fmul fast float %1014, %980
  %1016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.i32 %1016, 3
  %1018 = and i32 %1017, 2
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1029, label %1020, !dx.controlflow.hints !66

; <label>:1020                                    ; preds = %1006
  %1021 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1022 = fmul fast float %1021, %1021
  %1023 = fmul fast float %1022, %1021
  %1024 = fmul fast float %1021, 6.000000e+00
  %1025 = fadd fast float %1024, -1.500000e+01
  %1026 = fmul fast float %1025, %1021
  %1027 = fadd fast float %1026, 1.000000e+01
  %1028 = fmul fast float %1023, %1027
  br label %1029

; <label>:1029                                    ; preds = %1020, %1006
  %1030 = phi float [ %1028, %1020 ], [ %1015, %1006 ]
  %1031 = select i1 %870, float %854, float %1030
  %1032 = and i32 %1009, 4194304
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1055, label %1034, !dx.controlflow.hints !67

; <label>:1034                                    ; preds = %1029
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 2
  %1037 = lshr i32 %1036, 16
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = extractvalue %dx.types.ResRet.i32 %1035, 3
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = fadd fast float %57, -1.000000e+00
  %1042 = fdiv fast float %1041, %1040
  %1043 = call float @dx.op.unary.f32(i32 7, float %1042)  ; Saturate(value)
  %1044 = fmul fast float %1038, 8.000000e+00
  %1045 = fadd fast float %1044, 1.000000e+00
  %1046 = fdiv fast float 1.000000e+00, %1045
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1048 = fmul fast float %1047, %1046
  %1049 = fdiv fast float 2.500000e+01, %1048
  %1050 = call float @dx.op.unary.f32(i32 23, float %1049)  ; Log(value)
  %1051 = fadd fast float %879, %1050
  %1052 = call float @dx.op.unary.f32(i32 28, float %1051)  ; Round_pi(value)
  %1053 = fptosi float %1052 to i32
  %1054 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1053)  ; IMax(a,b)
  br label %1055

; <label>:1055                                    ; preds = %1034, %1029
  %1056 = phi float [ %1046, %1034 ], [ 1.000000e+00, %1029 ]
  %1057 = phi i32 [ %1054, %1034 ], [ %883, %1029 ]
  %1058 = phi float [ %1043, %1034 ], [ 1.000000e+00, %1029 ]
  %1059 = add i32 %872, 32
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 1
  %1062 = and i32 %1061, 16777215
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1298, label %1064, !dx.controlflow.hints !68

; <label>:1064                                    ; preds = %1055
  %1065 = fmul fast float %1056, %914
  %1066 = fmul fast float %1056, %916
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = add i32 %1062, 0
  %1069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1068, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1070 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1069, i32 0)  ; GetDimensions(handle,mipLevel)
  %1071 = extractvalue %dx.types.Dimensions %1070, 3
  %1072 = sub nsw i32 %1071, %1057
  %1073 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1072)  ; IMax(a,b)
  %1074 = sitofp i32 %1073 to float
  %1075 = lshr i32 %1061, 16
  %1076 = and i32 %1075, 15
  %1077 = uitofp i32 %1076 to float
  %1078 = call float @dx.op.binary.f32(i32 35, float %1077, float %1074)  ; FMax(a,b)
  %1079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1069, %dx.types.Handle %1067, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float %1078)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 3
  %1086 = and i32 %1085, 255
  %1087 = uitofp i32 %1086 to float
  %1088 = lshr i32 %1085, 8
  %1089 = and i32 %1088, 255
  %1090 = uitofp i32 %1089 to float
  %1091 = lshr i32 %1085, 16
  %1092 = and i32 %1091, 255
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1093, 0x3F70101000000000
  %1095 = fmul fast float %1087, %1080
  %1096 = fadd fast float %1095, %1090
  %1097 = fmul fast float %1096, 0x3F70101000000000
  %1098 = fadd fast float %1081, -5.000000e-01
  %1099 = fadd fast float %1083, -5.000000e-01
  %1100 = fmul fast float %1094, %1098
  %1101 = fmul fast float %1094, %1099
  %1102 = fadd fast float %1100, 5.000000e-01
  %1103 = fadd fast float %1101, 5.000000e-01
  %1104 = fcmp fast olt float %1058, 1.000000e+00
  br i1 %1104, label %1105, label %1280, !dx.controlflow.hints !69

; <label>:1105                                    ; preds = %1064
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 2
  %1108 = and i32 %1107, 4194304
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1211, label %1110, !dx.controlflow.hints !70

; <label>:1110                                    ; preds = %1105
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 1
  %1113 = and i32 %1112, 16777215
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1115, i32 0)  ; GetDimensions(handle,mipLevel)
  %1117 = extractvalue %dx.types.Dimensions %1116, 3
  %1118 = sub nsw i32 %1117, %883
  %1119 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1118)  ; IMax(a,b)
  %1120 = sitofp i32 %1119 to float
  %1121 = lshr i32 %1112, 16
  %1122 = and i32 %1121, 15
  %1123 = uitofp i32 %1122 to float
  %1124 = call float @dx.op.binary.f32(i32 35, float %1123, float %1120)  ; FMax(a,b)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1115, %dx.types.Handle %1067, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %1124)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1129 = extractvalue %dx.types.ResRet.f32 %1125, 3
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 3
  %1132 = and i32 %1131, 255
  %1133 = uitofp i32 %1132 to float
  %1134 = lshr i32 %1131, 8
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = lshr i32 %1131, 16
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F70101000000000
  %1141 = fmul fast float %1133, %1126
  %1142 = fadd fast float %1127, -5.000000e-01
  %1143 = fadd fast float %1129, -5.000000e-01
  %1144 = fmul fast float %1140, %1142
  %1145 = fmul fast float %1140, %1143
  %1146 = fadd fast float %1144, 5.000000e-01
  %1147 = fadd fast float %1145, 5.000000e-01
  %1148 = fmul fast float %1102, 2.000000e+00
  %1149 = fadd fast float %1148, -1.000000e+00
  %1150 = fmul fast float %1103, 2.000000e+00
  %1151 = fadd fast float %1150, -1.000000e+00
  %1152 = fadd fast float %1149, %1151
  %1153 = fmul fast float %1152, 5.000000e-01
  %1154 = fsub fast float %1149, %1151
  %1155 = fmul fast float %1154, 5.000000e-01
  %1156 = call float @dx.op.unary.f32(i32 6, float %1153)  ; FAbs(value)
  %1157 = fsub fast float 1.000000e+00, %1156
  %1158 = call float @dx.op.unary.f32(i32 6, float %1155)  ; FAbs(value)
  %1159 = fsub fast float %1157, %1158
  %1160 = call float @dx.op.dot3.f32(i32 55, float %1153, float %1155, float %1159, float %1153, float %1155, float %1159)  ; Dot3(ax,ay,az,bx,by,bz)
  %1161 = call float @dx.op.unary.f32(i32 25, float %1160)  ; Rsqrt(value)
  %1162 = fmul fast float %1161, %1153
  %1163 = fmul fast float %1161, %1155
  %1164 = fmul fast float %1161, %1159
  %1165 = fmul fast float %1146, 2.000000e+00
  %1166 = fadd fast float %1165, -1.000000e+00
  %1167 = fmul fast float %1147, 2.000000e+00
  %1168 = fadd fast float %1167, -1.000000e+00
  %1169 = fadd fast float %1166, %1168
  %1170 = fmul fast float %1169, 5.000000e-01
  %1171 = fsub fast float %1166, %1168
  %1172 = fmul fast float %1171, 5.000000e-01
  %1173 = call float @dx.op.unary.f32(i32 6, float %1170)  ; FAbs(value)
  %1174 = fsub fast float 1.000000e+00, %1173
  %1175 = call float @dx.op.unary.f32(i32 6, float %1172)  ; FAbs(value)
  %1176 = fsub fast float %1174, %1175
  %1177 = call float @dx.op.dot3.f32(i32 55, float %1170, float %1172, float %1176, float %1170, float %1172, float %1176)  ; Dot3(ax,ay,az,bx,by,bz)
  %1178 = call float @dx.op.unary.f32(i32 25, float %1177)  ; Rsqrt(value)
  %1179 = fmul fast float %1170, %1178
  %1180 = fmul fast float %1172, %1178
  %1181 = fmul fast float %1178, %1176
  %1182 = fadd fast float %1181, -7.500000e-01
  %1183 = fmul fast float %1182, 4.000000e+00
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  %1185 = fmul fast float %1184, %1058
  %1186 = fsub fast float 1.000000e+00, %1185
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 3
  %1189 = lshr i32 %1188, 16
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = fmul fast float %1190, %1058
  %1192 = fadd fast float %1191, %1186
  %1193 = fdiv fast float %1186, %1192
  %1194 = fsub fast float %1179, %1162
  %1195 = fsub fast float %1180, %1163
  %1196 = fsub fast float %1181, %1164
  %1197 = fmul fast float %1194, %1193
  %1198 = fmul fast float %1195, %1193
  %1199 = fmul fast float %1193, %1196
  %1200 = fadd fast float %1197, %1162
  %1201 = fadd fast float %1198, %1163
  %1202 = fadd fast float %1199, %1164
  %1203 = fsub fast float %1128, %1082
  %1204 = fmul fast float %1193, %1203
  %1205 = fadd fast float %1204, %1082
  %1206 = fsub fast float %1136, %1096
  %1207 = fadd fast float %1206, %1141
  %1208 = fmul fast float %1207, 0x3F70101000000000
  %1209 = fmul fast float %1208, %1193
  %1210 = fadd fast float %1209, %1097
  br label %1298

; <label>:1211                                    ; preds = %1105
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 1
  %1214 = and i32 %1213, 16777215
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1216, i32 0)  ; GetDimensions(handle,mipLevel)
  %1218 = extractvalue %dx.types.Dimensions %1217, 3
  %1219 = sub nsw i32 %1218, %883
  %1220 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1219)  ; IMax(a,b)
  %1221 = sitofp i32 %1220 to float
  %1222 = lshr i32 %1213, 16
  %1223 = and i32 %1222, 15
  %1224 = uitofp i32 %1223 to float
  %1225 = call float @dx.op.binary.f32(i32 35, float %1224, float %1221)  ; FMax(a,b)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1216, %dx.types.Handle %1067, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %1225)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.ResRet.f32 %1226, 1
  %1229 = extractvalue %dx.types.ResRet.f32 %1226, 2
  %1230 = extractvalue %dx.types.ResRet.f32 %1226, 3
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 3
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = lshr i32 %1232, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = lshr i32 %1232, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101000000000
  %1242 = fmul fast float %1234, %1227
  %1243 = fadd fast float %1242, %1237
  %1244 = fadd fast float %1228, -5.000000e-01
  %1245 = fadd fast float %1230, -5.000000e-01
  %1246 = fmul fast float %1241, %1244
  %1247 = fmul fast float %1241, %1245
  %1248 = fadd fast float %1246, 5.000000e-01
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fsub fast float %1096, %1243
  %1251 = fsub fast float %1102, %1248
  %1252 = fsub fast float %1082, %1229
  %1253 = fsub fast float %1103, %1249
  %1254 = fmul fast float %1250, %1058
  %1255 = fmul fast float %1251, %1058
  %1256 = fmul fast float %1252, %1058
  %1257 = fmul fast float %1253, %1058
  %1258 = fadd fast float %1254, %1243
  %1259 = fmul fast float %1258, 0x3F70101000000000
  %1260 = fadd fast float %1255, %1248
  %1261 = fadd fast float %1256, %1229
  %1262 = fadd fast float %1257, %1249
  %1263 = fmul fast float %1260, 2.000000e+00
  %1264 = fadd fast float %1263, -1.000000e+00
  %1265 = fmul fast float %1262, 2.000000e+00
  %1266 = fadd fast float %1265, -1.000000e+00
  %1267 = fadd fast float %1264, %1266
  %1268 = fmul fast float %1267, 5.000000e-01
  %1269 = fsub fast float %1264, %1266
  %1270 = fmul fast float %1269, 5.000000e-01
  %1271 = call float @dx.op.unary.f32(i32 6, float %1268)  ; FAbs(value)
  %1272 = fsub fast float 1.000000e+00, %1271
  %1273 = call float @dx.op.unary.f32(i32 6, float %1270)  ; FAbs(value)
  %1274 = fsub fast float %1272, %1273
  %1275 = call float @dx.op.dot3.f32(i32 55, float %1268, float %1270, float %1274, float %1268, float %1270, float %1274)  ; Dot3(ax,ay,az,bx,by,bz)
  %1276 = call float @dx.op.unary.f32(i32 25, float %1275)  ; Rsqrt(value)
  %1277 = fmul fast float %1268, %1276
  %1278 = fmul fast float %1270, %1276
  %1279 = fmul fast float %1276, %1274
  br label %1298

; <label>:1280                                    ; preds = %1064
  %1281 = fmul fast float %1102, 2.000000e+00
  %1282 = fadd fast float %1281, -1.000000e+00
  %1283 = fmul fast float %1103, 2.000000e+00
  %1284 = fadd fast float %1283, -1.000000e+00
  %1285 = fadd fast float %1282, %1284
  %1286 = fmul fast float %1285, 5.000000e-01
  %1287 = fsub fast float %1282, %1284
  %1288 = fmul fast float %1287, 5.000000e-01
  %1289 = call float @dx.op.unary.f32(i32 6, float %1286)  ; FAbs(value)
  %1290 = fsub fast float 1.000000e+00, %1289
  %1291 = call float @dx.op.unary.f32(i32 6, float %1288)  ; FAbs(value)
  %1292 = fsub fast float %1290, %1291
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1286, float %1288, float %1292, float %1286, float %1288, float %1292)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call float @dx.op.unary.f32(i32 25, float %1293)  ; Rsqrt(value)
  %1295 = fmul fast float %1294, %1286
  %1296 = fmul fast float %1294, %1288
  %1297 = fmul fast float %1294, %1292
  br label %1298

; <label>:1298                                    ; preds = %1280, %1211, %1110, %1055
  %1299 = phi float [ %1200, %1110 ], [ %1277, %1211 ], [ %1295, %1280 ], [ 0.000000e+00, %1055 ]
  %1300 = phi float [ %1201, %1110 ], [ %1278, %1211 ], [ %1296, %1280 ], [ 0.000000e+00, %1055 ]
  %1301 = phi float [ %1202, %1110 ], [ %1279, %1211 ], [ %1297, %1280 ], [ 1.000000e+00, %1055 ]
  %1302 = phi float [ %1205, %1110 ], [ %1261, %1211 ], [ %1082, %1280 ], [ 1.000000e+00, %1055 ]
  %1303 = phi float [ %1210, %1110 ], [ %1259, %1211 ], [ %1097, %1280 ], [ 0x3FD6666660000000, %1055 ]
  %1304 = fmul fast float %1299, %909
  %1305 = call float @dx.op.tertiary.f32(i32 46, float %1300, float %910, float %1304)  ; FMad(a,b,c)
  %1306 = fmul fast float %1299, %911
  %1307 = call float @dx.op.tertiary.f32(i32 46, float %1300, float %912, float %1306)  ; FMad(a,b,c)
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 2
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = fdiv fast float %1305, %1310
  %1312 = fdiv fast float %1307, %1310
  %1313 = xor i1 %870, true
  %1314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.i32 %1314, 3
  %1316 = and i32 %1315, 1
  %1317 = icmp ne i32 %1316, 0
  %1318 = and i1 %1317, %1313
  br i1 %1318, label %1319, label %1331, !dx.controlflow.hints !71

; <label>:1319                                    ; preds = %1298
  %1320 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1321 = fmul fast float %1320, 0x3FECCCCCC0000000
  %1322 = fsub fast float 1.000000e+00, %1321
  %1323 = fmul fast float %1322, %1031
  %1324 = fsub fast float 1.000000e+00, %1031
  %1325 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %1326 = fmul fast float %1325, 0x3FECCCCCC0000000
  %1327 = fsub fast float 1.000000e+00, %1326
  %1328 = fmul fast float %1327, %1324
  %1329 = fadd fast float %1328, %1323
  %1330 = fdiv fast float %1323, %1329
  br label %1331

; <label>:1331                                    ; preds = %1319, %1298
  %1332 = phi float [ %1330, %1319 ], [ %1031, %1298 ]
  %1333 = fsub fast float %1311, %860
  %1334 = fsub fast float %1312, %861
  %1335 = fsub fast float %1301, %862
  %1336 = fmul fast float %1332, %1333
  %1337 = fmul fast float %1332, %1334
  %1338 = fmul fast float %1332, %1335
  %1339 = fadd fast float %1336, %860
  %1340 = fadd fast float %1337, %861
  %1341 = fadd fast float %1338, %862
  %1342 = fsub fast float %1302, %859
  %1343 = fmul fast float %1332, %1342
  %1344 = fadd fast float %1343, %859
  %1345 = fsub fast float %1303, %858
  %1346 = fmul fast float %1332, %1345
  %1347 = fadd fast float %1346, %858
  %1348 = fmul fast float %1056, %914
  %1349 = fmul fast float %1056, %916
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %1351, 16777215
  %1353 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1354 = add i32 %1352, 0
  %1355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1354, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1356 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1355, i32 0)  ; GetDimensions(handle,mipLevel)
  %1357 = extractvalue %dx.types.Dimensions %1356, 3
  %1358 = sub nsw i32 %1357, %1057
  %1359 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1358)  ; IMax(a,b)
  %1360 = sitofp i32 %1359 to float
  %1361 = lshr i32 %1351, 16
  %1362 = and i32 %1361, 15
  %1363 = uitofp i32 %1362 to float
  %1364 = call float @dx.op.binary.f32(i32 35, float %1363, float %1360)  ; FMax(a,b)
  %1365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1355, %dx.types.Handle %1353, float %1348, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1364)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = extractvalue %dx.types.ResRet.f32 %1365, 3
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = lshr i32 %1371, 16
  %1373 = and i32 %1372, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = lshr i32 %1371, 24
  %1376 = uitofp i32 %1375 to float
  %1377 = fmul fast float %1374, %1369
  %1378 = fadd fast float %1377, %1376
  %1379 = fcmp fast olt float %1058, 1.000000e+00
  br i1 %1379, label %1380, label %1421, !dx.controlflow.hints !72

; <label>:1380                                    ; preds = %1331
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = and i32 %1382, 16777215
  %1384 = add i32 %1383, 0
  %1385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1384, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1386 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1385, i32 0)  ; GetDimensions(handle,mipLevel)
  %1387 = extractvalue %dx.types.Dimensions %1386, 3
  %1388 = sub nsw i32 %1387, %883
  %1389 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1388)  ; IMax(a,b)
  %1390 = sitofp i32 %1389 to float
  %1391 = lshr i32 %1382, 16
  %1392 = and i32 %1391, 15
  %1393 = uitofp i32 %1392 to float
  %1394 = call float @dx.op.binary.f32(i32 35, float %1393, float %1390)  ; FMax(a,b)
  %1395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1385, %dx.types.Handle %1353, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %1394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = extractvalue %dx.types.ResRet.f32 %1395, 3
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = lshr i32 %1401, 16
  %1403 = and i32 %1402, 255
  %1404 = uitofp i32 %1403 to float
  %1405 = lshr i32 %1401, 24
  %1406 = uitofp i32 %1405 to float
  %1407 = fmul fast float %1404, %1399
  %1408 = fadd fast float %1407, %1406
  %1409 = fsub fast float %1366, %1396
  %1410 = fsub fast float %1367, %1397
  %1411 = fsub fast float %1368, %1398
  %1412 = fsub fast float %1378, %1408
  %1413 = fmul fast float %1409, %1058
  %1414 = fmul fast float %1410, %1058
  %1415 = fmul fast float %1411, %1058
  %1416 = fmul fast float %1412, %1058
  %1417 = fadd fast float %1413, %1396
  %1418 = fadd fast float %1414, %1397
  %1419 = fadd fast float %1415, %1398
  %1420 = fadd fast float %1416, %1408
  br label %1421

; <label>:1421                                    ; preds = %1380, %1331
  %1422 = phi float [ %1417, %1380 ], [ %1366, %1331 ]
  %1423 = phi float [ %1418, %1380 ], [ %1367, %1331 ]
  %1424 = phi float [ %1419, %1380 ], [ %1368, %1331 ]
  %1425 = phi float [ %1420, %1380 ], [ %1378, %1331 ]
  %1426 = fmul float %1425, 0x3F70101000000000
  %1427 = call float @dx.op.unary.f32(i32 24, float %1422)  ; Sqrt(value)
  %1428 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1429 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1430 = fmul fast float %852, 2.000000e+00
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fmul fast float %1427, %1431
  %1433 = fadd fast float %1432, %1430
  %1434 = fmul fast float %1433, %1427
  %1435 = fmul fast float %851, 2.000000e+00
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1428, %1436
  %1438 = fadd fast float %1437, %1435
  %1439 = fmul fast float %1438, %1428
  %1440 = fmul fast float %850, 2.000000e+00
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = fmul fast float %1429, %1441
  %1443 = fadd fast float %1442, %1440
  %1444 = fmul fast float %1443, %1429
  %1445 = fmul fast float %1434, %1434
  %1446 = fmul fast float %1439, %1439
  %1447 = fmul fast float %1444, %1444
  %1448 = fsub fast float %1445, %864
  %1449 = fsub fast float %1446, %865
  %1450 = fsub fast float %1447, %866
  %1451 = fsub fast float %1426, %867
  %1452 = fmul fast float %1448, %1332
  %1453 = fmul fast float %1449, %1332
  %1454 = fmul fast float %1450, %1332
  %1455 = fmul fast float %1451, %1332
  %1456 = fadd fast float %1452, %864
  %1457 = fadd fast float %1453, %865
  %1458 = fadd fast float %1454, %866
  %1459 = fadd fast float %1455, %867
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = lshr i32 %1461, 24
  %1463 = uitofp i32 %1462 to float
  %1464 = fmul fast float %1463, 0x3F70101020000000
  %1465 = fsub fast float %1464, %857
  %1466 = fmul fast float %1465, %1332
  %1467 = fadd fast float %1466, %857
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 2
  %1470 = and i32 %1469, 8
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1565, label %1472, !dx.controlflow.hints !73

; <label>:1472                                    ; preds = %1421
  %1473 = add i32 %872, 48
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 1
  %1476 = and i32 %1475, 16777215
  %1477 = add i32 %1476, 0
  %1478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1477, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1479 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1478, i32 0)  ; GetDimensions(handle,mipLevel)
  %1480 = extractvalue %dx.types.Dimensions %1479, 3
  %1481 = sub nsw i32 %1480, %1057
  %1482 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1481)  ; IMax(a,b)
  %1483 = sitofp i32 %1482 to float
  %1484 = lshr i32 %1475, 16
  %1485 = and i32 %1484, 15
  %1486 = uitofp i32 %1485 to float
  %1487 = call float @dx.op.binary.f32(i32 35, float %1486, float %1483)  ; FMax(a,b)
  %1488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1478, %dx.types.Handle %1353, float %1348, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.f32 %1488, 2
  br i1 %1379, label %1492, label %1511, !dx.controlflow.hints !74

; <label>:1492                                    ; preds = %1472
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 1
  %1495 = and i32 %1494, 16777215
  %1496 = add i32 %1495, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1496, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1497, i32 0)  ; GetDimensions(handle,mipLevel)
  %1499 = extractvalue %dx.types.Dimensions %1498, 3
  %1500 = sub nsw i32 %1499, %883
  %1501 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %1500)  ; IMax(a,b)
  %1502 = sitofp i32 %1501 to float
  %1503 = lshr i32 %1494, 16
  %1504 = and i32 %1503, 15
  %1505 = uitofp i32 %1504 to float
  %1506 = call float @dx.op.binary.f32(i32 35, float %1505, float %1502)  ; FMax(a,b)
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1497, %dx.types.Handle %1353, float %914, float %916, float undef, float undef, i32 0, i32 0, i32 undef, float %1506)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  br label %1511

; <label>:1511                                    ; preds = %1492, %1472
  %1512 = phi float [ %1508, %1492 ], [ %1489, %1472 ]
  %1513 = phi float [ %1509, %1492 ], [ %1490, %1472 ]
  %1514 = phi float [ %1510, %1492 ], [ %1491, %1472 ]
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.i32 %1518, 1
  %1520 = icmp eq i32 %1519, 2
  br i1 %1520, label %1521, label %1565, !dx.controlflow.hints !75

; <label>:1521                                    ; preds = %1511
  %1522 = call float @dx.op.binary.f32(i32 36, float %1456, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1523 = call float @dx.op.binary.f32(i32 36, float %1457, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1524 = call float @dx.op.binary.f32(i32 36, float %1458, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1525 = fsub fast float 1.000000e+00, %1522
  %1526 = fsub fast float 1.000000e+00, %1523
  %1527 = fsub fast float 1.000000e+00, %1524
  %1528 = call float @dx.op.unary.f32(i32 23, float %1525)  ; Log(value)
  %1529 = call float @dx.op.unary.f32(i32 23, float %1526)  ; Log(value)
  %1530 = call float @dx.op.unary.f32(i32 23, float %1527)  ; Log(value)
  %1531 = call float @dx.op.binary.f32(i32 36, float %1512, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1532 = call float @dx.op.binary.f32(i32 36, float %1513, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1533 = call float @dx.op.binary.f32(i32 36, float %1514, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1534 = fsub fast float 1.000000e+00, %1531
  %1535 = fsub fast float 1.000000e+00, %1532
  %1536 = fsub fast float 1.000000e+00, %1533
  %1537 = call float @dx.op.unary.f32(i32 23, float %1534)  ; Log(value)
  %1538 = call float @dx.op.unary.f32(i32 23, float %1535)  ; Log(value)
  %1539 = call float @dx.op.unary.f32(i32 23, float %1536)  ; Log(value)
  %1540 = fmul fast float %1030, %1537
  %1541 = fmul fast float %1030, %1538
  %1542 = fmul fast float %1030, %1539
  %1543 = fsub fast float -0.000000e+00, %1528
  %1544 = fsub fast float %1543, %1540
  %1545 = fsub fast float -0.000000e+00, %1529
  %1546 = fsub fast float %1545, %1541
  %1547 = fsub fast float -0.000000e+00, %1530
  %1548 = fsub fast float %1547, %1542
  %1549 = fsub fast float -0.000000e+00, %1544
  %1550 = fsub fast float -0.000000e+00, %1546
  %1551 = fsub fast float -0.000000e+00, %1548
  %1552 = call float @dx.op.unary.f32(i32 21, float %1549)  ; Exp(value)
  %1553 = call float @dx.op.unary.f32(i32 21, float %1550)  ; Exp(value)
  %1554 = call float @dx.op.unary.f32(i32 21, float %1551)  ; Exp(value)
  %1555 = fsub fast float 1.000000e+00, %1552
  %1556 = fsub fast float 1.000000e+00, %1553
  %1557 = fsub fast float 1.000000e+00, %1554
  %1558 = call float @dx.op.dot3.f32(i32 55, float %1555, float %1556, float %1557, float %1555, float %1556, float %1557)  ; Dot3(ax,ay,az,bx,by,bz)
  %1559 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float %1512, float %1513, float %1514)  ; Dot3(ax,ay,az,bx,by,bz)
  %1560 = fmul fast float %1559, %1030
  %1561 = fcmp fast une float %1558, 0.000000e+00
  %1562 = fdiv fast float %1560, %1558
  %1563 = select i1 %1561, float %1562, float 0.000000e+00
  %1564 = fmul fast float %1563, %1517
  br label %1565

; <label>:1565                                    ; preds = %1521, %1511, %1421
  %1566 = phi float [ %1555, %1521 ], [ %1456, %1511 ], [ %1456, %1421 ]
  %1567 = phi float [ %1556, %1521 ], [ %1457, %1511 ], [ %1457, %1421 ]
  %1568 = phi float [ %1557, %1521 ], [ %1458, %1511 ], [ %1458, %1421 ]
  %1569 = phi float [ %1564, %1521 ], [ %1517, %1511 ], [ 0.000000e+00, %1421 ]
  %1570 = fsub fast float %1569, %863
  %1571 = fmul fast float %1570, %1030
  %1572 = fadd fast float %1571, %863
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 2
  %1575 = lshr i32 %1574, 24
  %1576 = uitofp i32 %1575 to float
  %1577 = extractvalue %dx.types.ResRet.i32 %1573, 1
  %1578 = lshr i32 %1577, 24
  %1579 = uitofp i32 %1578 to float
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1446, float %1447, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = fmul fast float %1576, %1580
  %1582 = fadd fast float %1581, %1579
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = call float @dx.op.unary.f32(i32 7, float %1583)  ; Saturate(value)
  %1585 = fsub fast float %1584, %856
  %1586 = fmul fast float %1585, %1332
  %1587 = fadd fast float %1586, %856
  %1588 = add nuw nsw i32 %868, 1
  %1589 = icmp ugt i32 %1588, 3
  %1590 = getelementptr [4 x float], [4 x float]* %16, i32 0, i32 %1588
  %1591 = load float, float* %1590, align 4, !tbaa !42, !noalias !62
  %1592 = fcmp fast ole float %1591, 0.000000e+00
  %1593 = or i1 %1589, %1592
  br i1 %1593, label %1605, label %1594, !dx.controlflow.hints !76, !llvm.loop !77

; <label>:1594                                    ; preds = %1565
  %1595 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %1588
  %1596 = load i32, i32* %1595, align 4, !tbaa !23, !noalias !62
  %1597 = getelementptr [4 x float], [4 x float]* %17, i32 0, i32 %1588
  %1598 = load float, float* %1597, align 4, !tbaa !42, !noalias !62
  %1599 = getelementptr [4 x float], [4 x float]* %12, i32 0, i32 %1588
  %1600 = load float, float* %1599, align 4
  %1601 = getelementptr [4 x float], [4 x float]* %13, i32 0, i32 %1588
  %1602 = load float, float* %1601, align 4
  %1603 = getelementptr [4 x float], [4 x float]* %14, i32 0, i32 %1588
  %1604 = load float, float* %1603, align 4
  br label %849

; <label>:1605                                    ; preds = %1565
  %1606 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1340, float %1341, float %1339, float %1340, float %1341)  ; Dot3(ax,ay,az,bx,by,bz)
  %1607 = call float @dx.op.unary.f32(i32 25, float %1606)  ; Rsqrt(value)
  %1608 = fmul fast float %1607, %1339
  %1609 = fmul fast float %1607, %1340
  %1610 = fmul fast float %1607, %1341
  %1611 = call float @dx.op.unary.f32(i32 6, float %1608)  ; FAbs(value)
  %1612 = call float @dx.op.unary.f32(i32 6, float %1609)  ; FAbs(value)
  %1613 = fadd fast float %1610, %1611
  %1614 = fadd fast float %1613, %1612
  %1615 = fdiv fast float 1.000000e+00, %1614
  %1616 = fadd fast float %1340, %1339
  %1617 = fsub fast float %1339, %1340
  %1618 = fmul fast float %1616, 5.000000e-01
  %1619 = fmul fast float %1618, %1607
  %1620 = fmul fast float %1619, %1615
  %1621 = fadd fast float %1620, 5.000000e-01
  %1622 = fmul fast float %1617, 5.000000e-01
  %1623 = fmul fast float %1622, %1607
  %1624 = fmul fast float %1623, %1615
  %1625 = fadd fast float %1624, 5.000000e-01
  br label %1626

; <label>:1626                                    ; preds = %1605, %205
  %1627 = phi float [ %1587, %1605 ], [ 0.000000e+00, %205 ]
  %1628 = phi float [ %1467, %1605 ], [ 0.000000e+00, %205 ]
  %1629 = phi float [ %1572, %1605 ], [ 0.000000e+00, %205 ]
  %1630 = phi float [ %1347, %1605 ], [ 0.000000e+00, %205 ]
  %1631 = phi float [ %1621, %1605 ], [ 0.000000e+00, %205 ]
  %1632 = phi float [ %1344, %1605 ], [ 0.000000e+00, %205 ]
  %1633 = phi float [ %1625, %1605 ], [ 0.000000e+00, %205 ]
  %1634 = phi float [ %1566, %1605 ], [ 0.000000e+00, %205 ]
  %1635 = phi float [ %1567, %1605 ], [ 0.000000e+00, %205 ]
  %1636 = phi float [ %1568, %1605 ], [ 0.000000e+00, %205 ]
  %1637 = phi float [ %1459, %1605 ], [ 0.000000e+00, %205 ]
  br i1 %207, label %1638, label %1680, !dx.controlflow.hints !79

; <label>:1638                                    ; preds = %1626
  %1639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.i32 %1639, 1
  %1641 = icmp eq i32 %1640, 5
  %1642 = fcmp fast ole float %1634, 0x3F69A5C380000000
  %1643 = fcmp fast ole float %1635, 0x3F69A5C380000000
  %1644 = fcmp fast ole float %1636, 0x3F69A5C380000000
  %1645 = fmul fast float %1634, 0x4029D70A40000000
  %1646 = fmul fast float %1635, 0x4029D70A40000000
  %1647 = fmul fast float %1636, 0x4029D70A40000000
  %1648 = call float @dx.op.unary.f32(i32 23, float %1634)  ; Log(value)
  %1649 = call float @dx.op.unary.f32(i32 23, float %1635)  ; Log(value)
  %1650 = call float @dx.op.unary.f32(i32 23, float %1636)  ; Log(value)
  %1651 = fmul fast float %1648, 0x3FDAAAAAA0000000
  %1652 = fmul fast float %1649, 0x3FDAAAAAA0000000
  %1653 = fmul fast float %1650, 0x3FDAAAAAA0000000
  %1654 = call float @dx.op.unary.f32(i32 21, float %1651)  ; Exp(value)
  %1655 = call float @dx.op.unary.f32(i32 21, float %1652)  ; Exp(value)
  %1656 = call float @dx.op.unary.f32(i32 21, float %1653)  ; Exp(value)
  %1657 = fmul fast float %1654, 0x3FF0E147A0000000
  %1658 = fmul fast float %1655, 0x3FF0E147A0000000
  %1659 = fmul fast float %1656, 0x3FF0E147A0000000
  %1660 = fadd fast float %1657, 0xBFAC28F5C0000000
  %1661 = fadd fast float %1658, 0xBFAC28F5C0000000
  %1662 = fadd fast float %1659, 0xBFAC28F5C0000000
  %1663 = select i1 %1642, float %1645, float %1660
  %1664 = select i1 %1643, float %1646, float %1661
  %1665 = select i1 %1644, float %1647, float %1662
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %59, i32 %10, i32 undef, float %1663, float %1664, float %1665, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1641, label %1680, label %1666, !dx.controlflow.hints !80

; <label>:1666                                    ; preds = %1638
  %1667 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.i32 %1667, 1
  switch i32 %1668, label %1678 [
    i32 1, label %1669
    i32 2, label %1670
    i32 3, label %1677
  ], !dx.controlflow.hints !81

; <label>:1669                                    ; preds = %1666
  br label %1678

; <label>:1670                                    ; preds = %1666
  %1671 = fcmp fast une float %1629, 0.000000e+00
  %1672 = call float @dx.op.unary.f32(i32 23, float %1629)  ; Log(value)
  %1673 = fadd fast float %1672, 1.600000e+01
  %1674 = fmul fast float %1673, 3.125000e-02
  %1675 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1676 = select i1 %1671, float %1675, float 0.000000e+00
  br label %1678

; <label>:1677                                    ; preds = %1666
  br label %1678

; <label>:1678                                    ; preds = %1677, %1670, %1669, %1666
  %1679 = phi float [ 0.000000e+00, %1666 ], [ %1627, %1677 ], [ %1676, %1670 ], [ %1628, %1669 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %59, i32 %10, i32 undef, float %1631, float %1633, float %1632, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %59, i32 %10, i32 undef, float %1637, float %1630, float %1679, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1680

; <label>:1680                                    ; preds = %1678, %1638, %1626
  ret void

; <label>:1681                                    ; preds = %1710, %200
  %1682 = phi i32 [ %1687, %1710 ], [ %42, %200 ]
  %1683 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1682)  ; FirstbitLo(value)
  %1684 = and i32 %1683, 31
  %1685 = shl i32 1, %1684
  %1686 = xor i32 %1685, -1
  %1687 = and i32 %1682, %1686
  %1688 = add i32 %1683, 32
  %1689 = mul i32 %1688, 3
  %1690 = add i32 %1689, 30
  %1691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %1690)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.i32 %1691, 1
  %1693 = bitcast i32 %1692 to float
  %1694 = extractvalue %dx.types.CBufRet.i32 %1691, 2
  %1695 = bitcast i32 %1694 to float
  %1696 = fsub fast float %66, %1693
  %1697 = fsub fast float %67, %1695
  %1698 = add i32 %1689, 32
  %1699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 %1698)  ; CBufferLoadLegacy(handle,regIndex)
  %1700 = extractvalue %dx.types.CBufRet.i32 %1699, 1
  %1701 = and i32 %1700, 1048575
  %1702 = uitofp i32 %1701 to float
  %1703 = fcmp fast olt float %1696, 0.000000e+00
  %1704 = fcmp fast olt float %1697, 0.000000e+00
  %1705 = or i1 %1703, %1704
  %1706 = fcmp fast ogt float %1696, %1702
  %1707 = fcmp fast ogt float %1697, %1702
  %1708 = or i1 %1706, %1707
  %1709 = or i1 %1705, %1708
  br i1 %1709, label %1710, label %202, !dx.controlflow.hints !37

; <label>:1710                                    ; preds = %1681
  %1711 = icmp eq i32 %1687, 0
  br i1 %1711, label %202, label %1681
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !14, !16}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !12, !13}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15}
!15 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!16 = !{!17, !18, !19}
!17 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!20 = !{void ()* @cs_compose_to_scratch_ompv, !"cs_compose_to_scratch_ompv", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!28, !30, !31, !32}
!28 = distinct !{!28, !29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!29 = distinct !{!29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!30 = distinct !{!30, !29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!31 = distinct !{!31, !29, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!32 = distinct !{!32, !33, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!33 = distinct !{!33, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 1}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !25, i64 0}
!44 = !{!45}
!45 = distinct !{!45, !46, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %rotations"}
!46 = distinct !{!46, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z"}
!47 = !{!48, !49, !50, !51, !53, !55, !56, !57, !58, !59}
!48 = distinct !{!48, !46, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %layers"}
!49 = distinct !{!49, !46, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %alphas"}
!50 = distinct !{!50, !46, !"\01?GetLayersAlphasAndOptionalColors@@YAXUOMPVSamplingData@@V?$vector@M$01@@_NAIAV?$vector@I$03@@AIAV?$vector@M$03@@Y03$$CAV?$vector@M$02@@4@Z: %colors"}
!51 = distinct !{!51, !52, !"\01?SuperTerrain_CompositeAlbedoAndNormal@@YAX_NUPixelInput@@USuperTerrain_CompositingDatum@@@Z: %datum"}
!52 = distinct !{!52, !"\01?SuperTerrain_CompositeAlbedoAndNormal@@YAX_NUPixelInput@@USuperTerrain_CompositingDatum@@@Z"}
!53 = distinct !{!53, !54, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %albedoMetalness"}
!54 = distinct !{!54, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z"}
!55 = distinct !{!55, !54, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %normalOcclusionGloss"}
!56 = distinct !{!56, !54, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %emissive"}
!57 = distinct !{!57, !54, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %scatteringDmfp"}
!58 = distinct !{!58, !54, !"\01?CompositeAlbedoAndNormal@@YAXUCompositeScratchContext@@UTerrainTileDataVT@@_NAIAV?$vector@M$03@@33AIAM4@Z: %thermalEmissivity"}
!59 = distinct !{!59, !60, !"\01?CompositeScratch_AlbedoAndNormal@@YA_NI_NUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!60 = distinct !{!60, !"\01?CompositeScratch_AlbedoAndNormal@@YA_NI_NUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = !{!51, !53, !55, !56, !57, !58, !59}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}

