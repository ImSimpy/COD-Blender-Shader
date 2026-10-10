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
; shader hash: feeb44323e1ddcdc78c8a9563112d306
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
; cbuffer 
; {
;
;   [80 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [16 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb4     1
;                                   cbuffer      NA          NA     CB1            cb5     1
;                                   texture  struct         r/o      T0             t0     1
;                                   texture     u32         buf      T1             t1     1
;                                   texture  struct         r/o      T2             t2     1
;                                   texture     u32         buf      T3             t3     1
;                                   texture     u32         buf      T4             t4     1
;                                   texture     u32         buf      T5             t5     1
;                                   texture     f32         buf      T6             t6     1
;                                   texture     u32         buf      T7             t7     1
;                                   texture     f32         buf      T8             t8     1
;                                   texture    byte         r/o      T9             t9     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>" = type { %struct.GfxNeuralLightGridTopLevelNode }
%struct.GfxNeuralLightGridTopLevelNode = type { i32, i32, i32, i32 }
%"class.Buffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<GfxNeuralLightGridInternalNode>" = type { %struct.GfxNeuralLightGridInternalNode }
%struct.GfxNeuralLightGridInternalNode = type { <2 x i32>, <2 x i32> }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GfxNeuralLightGridSetupConsts = type { <3 x float>, i32, <3 x float>, i32, <3 x float>, i32, <3 x i32>, i32, float, i32, i32, i32 }
%GfxSHProbeNeuralFallbackConsts = type { <3 x float>, i32, [4 x <4 x i32>] }

define void @cs_sh_sample_fallback_probe() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = alloca [8 x float], align 4
  %15 = alloca [8 x i32], align 4
  %16 = alloca [8 x float], align 4
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %20 = extractvalue %dx.types.CBufRet.i32 %17, 2
  %21 = extractvalue %dx.types.CBufRet.i32 %17, 3
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.i32 %22, 1
  %25 = extractvalue %dx.types.CBufRet.i32 %22, 2
  %26 = extractvalue %dx.types.CBufRet.i32 %22, 3
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %30 = extractvalue %dx.types.CBufRet.i32 %27, 2
  %31 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.i32 %32, 1
  %35 = extractvalue %dx.types.CBufRet.i32 %32, 2
  %36 = extractvalue %dx.types.CBufRet.i32 %32, 3
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %871, label %40, !dx.controlflow.hints !27

; <label>:40                                      ; preds = %0
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %44 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %55 = fsub fast float %52, %42
  %56 = fsub fast float %53, %43
  %57 = fsub fast float %54, %44
  %58 = fmul fast float %55, %46
  %59 = fmul fast float %56, %47
  %60 = fmul fast float %57, %48
  %61 = fcmp fast ole float %58, 0.000000e+00
  %62 = fcmp fast ole float %59, 0.000000e+00
  %63 = fcmp fast ole float %60, 0.000000e+00
  %64 = or i1 %61, %62
  %65 = or i1 %63, %64
  %66 = fcmp fast oge float %58, 1.000000e+00
  %67 = fcmp fast oge float %59, 1.000000e+00
  %68 = fcmp fast oge float %60, 1.000000e+00
  %69 = or i1 %66, %67
  %70 = or i1 %68, %69
  %71 = or i1 %65, %70
  br i1 %71, label %787, label %72, !dx.controlflow.hints !28

; <label>:72                                      ; preds = %40
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 0
  %75 = fptosi float %55 to i32
  %76 = fptosi float %56 to i32
  %77 = fptosi float %57 to i32
  %78 = and i32 %50, 31
  %79 = ashr i32 %75, %78
  %80 = ashr i32 %76, %78
  %81 = ashr i32 %77, %78
  %82 = mul i32 %74, %80
  %83 = add nsw i32 %82, %79
  %84 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %83, i32 0)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.i32 %84, 0
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %83, i32 4)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = icmp slt i32 %81, %85
  %89 = icmp sgt i32 %81, %87
  %90 = or i1 %88, %89
  br i1 %90, label %787, label %91, !dx.controlflow.hints !29

; <label>:91                                      ; preds = %72
  %92 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %83, i32 8)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.i32 %92, 0
  %94 = sub i32 %81, %85
  %95 = add nsw i32 %94, %93
  %96 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %787, label %99, !dx.controlflow.hints !30

; <label>:99                                      ; preds = %91
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 0
  store i32 -1, i32* %100, align 4, !tbaa !31, !noalias !35
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 1
  store i32 -1, i32* %101, align 4, !tbaa !31, !noalias !35
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 2
  store i32 -1, i32* %102, align 4, !tbaa !31, !noalias !35
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 3
  store i32 -1, i32* %103, align 4, !tbaa !31, !noalias !35
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 4
  store i32 -1, i32* %104, align 4, !tbaa !31, !noalias !35
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 5
  store i32 -1, i32* %105, align 4, !tbaa !31, !noalias !35
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 6
  store i32 -1, i32* %106, align 4, !tbaa !31, !noalias !35
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 7
  store i32 -1, i32* %107, align 4, !tbaa !31, !noalias !35
  br label %108

; <label>:108                                     ; preds = %212, %99
  %109 = phi i32 [ -1, %99 ], [ %209, %212 ]
  %110 = phi i32 [ -1, %99 ], [ %204, %212 ]
  %111 = phi i32 [ -1, %99 ], [ %197, %212 ]
  %112 = phi i32 [ -1, %99 ], [ %192, %212 ]
  %113 = phi i32 [ -1, %99 ], [ %183, %212 ]
  %114 = phi i32 [ -1, %99 ], [ %178, %212 ]
  %115 = phi i32 [ -1, %99 ], [ %170, %212 ]
  %116 = phi i32 [ -1, %99 ], [ %163, %212 ]
  %117 = phi i32 [ %97, %99 ], [ %232, %212 ]
  %118 = phi i32 [ %50, %99 ], [ %119, %212 ]
  %119 = add nsw i32 %118, -2
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = and i32 %121, 31
  %125 = shl i32 1, %124
  %126 = add i32 %125, 1
  %127 = and i32 %119, 31
  %128 = ashr i32 %75, %127
  %129 = ashr i32 %76, %127
  %130 = ashr i32 %77, %127
  %131 = and i32 %128, 3
  %132 = and i32 %129, 3
  %133 = and i32 %130, 3
  br label %134

; <label>:134                                     ; preds = %134, %108
  %135 = phi i32 [ %109, %108 ], [ %209, %134 ]
  %136 = phi i32 [ %110, %108 ], [ %204, %134 ]
  %137 = phi i32 [ %111, %108 ], [ %197, %134 ]
  %138 = phi i32 [ %112, %108 ], [ %192, %134 ]
  %139 = phi i32 [ %113, %108 ], [ %183, %134 ]
  %140 = phi i32 [ %114, %108 ], [ %178, %134 ]
  %141 = phi i32 [ %115, %108 ], [ %170, %134 ]
  %142 = phi i32 [ %116, %108 ], [ %163, %134 ]
  %143 = phi i32 [ 0, %108 ], [ %210, %134 ]
  %144 = sub i32 2, %143
  %145 = and i32 %144, 31
  %146 = lshr i32 %131, %145
  %147 = lshr i32 %132, %145
  %148 = lshr i32 %133, %145
  %149 = sub i32 %121, %143
  %150 = and i32 %149, 31
  %151 = shl i32 %146, %150
  %152 = shl i32 %147, %150
  %153 = shl i32 %148, %150
  %154 = shl i32 1, %150
  %155 = mul i32 %153, %126
  %156 = add i32 %155, %152
  %157 = mul i32 %156, %126
  %158 = add i32 %151, %123
  %159 = add i32 %158, %157
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %159, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = icmp ne i32 %161, -1
  %163 = select i1 %162, i32 %161, i32 %142
  store i32 %163, i32* %100, align 4, !tbaa !31, !noalias !35
  %164 = add i32 %154, %123
  %165 = add i32 %164, %151
  %166 = add i32 %165, %157
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = icmp ne i32 %168, -1
  %170 = select i1 %169, i32 %168, i32 %141
  store i32 %170, i32* %101, align 4, !tbaa !31, !noalias !35
  %171 = add i32 %152, %154
  %172 = add i32 %171, %155
  %173 = mul i32 %172, %126
  %174 = add i32 %158, %173
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = icmp ne i32 %176, -1
  %178 = select i1 %177, i32 %176, i32 %140
  store i32 %178, i32* %102, align 4, !tbaa !31, !noalias !35
  %179 = add i32 %165, %173
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = icmp ne i32 %181, -1
  %183 = select i1 %182, i32 %181, i32 %139
  store i32 %183, i32* %103, align 4, !tbaa !31, !noalias !35
  %184 = add i32 %153, %154
  %185 = mul i32 %184, %126
  %186 = add i32 %185, %152
  %187 = mul i32 %186, %126
  %188 = add i32 %158, %187
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = icmp ne i32 %190, -1
  %192 = select i1 %191, i32 %190, i32 %138
  store i32 %192, i32* %104, align 4, !tbaa !31, !noalias !35
  %193 = add i32 %165, %187
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = icmp ne i32 %195, -1
  %197 = select i1 %196, i32 %195, i32 %137
  store i32 %197, i32* %105, align 4, !tbaa !31, !noalias !35
  %198 = add i32 %171, %185
  %199 = mul i32 %198, %126
  %200 = add i32 %158, %199
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = icmp ne i32 %202, -1
  %204 = select i1 %203, i32 %202, i32 %136
  store i32 %204, i32* %106, align 4, !tbaa !31, !noalias !35
  %205 = add i32 %165, %199
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = icmp ne i32 %207, -1
  %209 = select i1 %208, i32 %207, i32 %135
  store i32 %209, i32* %107, align 4, !tbaa !31, !noalias !35
  %210 = add i32 %143, 1
  %211 = icmp ugt i32 %210, %121
  br i1 %211, label %212, label %134

; <label>:212                                     ; preds = %134
  %213 = shl nuw nsw i32 %133, 4
  %214 = shl nuw nsw i32 %132, 2
  %215 = lshr i32 %133, 1
  %216 = and i32 %213, 16
  %217 = or i32 %214, %131
  %218 = or i32 %217, %216
  %219 = shl i32 1, %218
  %220 = shl nuw nsw i32 %215, 2
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %117, i32 %220)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = and i32 %222, %219
  %224 = icmp eq i32 %223, 0
  %225 = add i32 %219, -1
  %226 = and i32 %222, %225
  %227 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %226)  ; Countbits(value)
  %228 = or i32 %220, 8
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %117, i32 %228)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = add i32 %230, %227
  %232 = select i1 %224, i32 -1, i32 %231
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %234, label %108

; <label>:234                                     ; preds = %212
  br label %235

; <label>:235                                     ; preds = %521, %234
  %236 = phi i32 [ %523, %521 ], [ %163, %234 ]
  %237 = phi float [ %518, %521 ], [ 0.000000e+00, %234 ]
  %238 = phi i32 [ %519, %521 ], [ 0, %234 ]
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = fsub fast float %52, %240
  %245 = fsub fast float %53, %241
  %246 = fsub fast float %54, %242
  %247 = fmul fast float %244, %243
  %248 = fmul fast float %245, %243
  %249 = fmul fast float %246, %243
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = call float @dx.op.unary.f32(i32 6, float %247)  ; FAbs(value)
  %253 = call float @dx.op.unary.f32(i32 6, float %248)  ; FAbs(value)
  %254 = fsub fast float 1.000000e+00, %252
  %255 = fsub fast float 1.000000e+00, %253
  %256 = call float @dx.op.unary.f32(i32 7, float %254)  ; Saturate(value)
  %257 = call float @dx.op.unary.f32(i32 7, float %255)  ; Saturate(value)
  %258 = fmul fast float %257, %256
  %259 = mul i32 %251, 29
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = extractvalue %dx.types.ResRet.f32 %260, 3
  %265 = add i32 %259, 1
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = add i32 %259, 2
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = add i32 %259, 3
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = extractvalue %dx.types.ResRet.f32 %278, 3
  %283 = add i32 %259, 4
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  %289 = add i32 %259, 5
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  %295 = add i32 %259, 6
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = extractvalue %dx.types.ResRet.f32 %296, 3
  %301 = add i32 %259, 7
  %302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = extractvalue %dx.types.ResRet.f32 %302, 1
  %305 = extractvalue %dx.types.ResRet.f32 %302, 2
  %306 = extractvalue %dx.types.ResRet.f32 %302, 3
  %307 = fmul fast float %261, %247
  %308 = fmul fast float %273, %248
  %309 = fadd fast float %308, %307
  %310 = fmul fast float %285, %249
  %311 = fadd fast float %309, %310
  %312 = fmul fast float %262, %247
  %313 = fmul fast float %274, %248
  %314 = fadd fast float %313, %312
  %315 = fmul fast float %286, %249
  %316 = fadd fast float %314, %315
  %317 = fmul fast float %263, %247
  %318 = fmul fast float %275, %248
  %319 = fadd fast float %318, %317
  %320 = fmul fast float %287, %249
  %321 = fadd fast float %319, %320
  %322 = fmul fast float %264, %247
  %323 = fmul fast float %276, %248
  %324 = fadd fast float %323, %322
  %325 = fmul fast float %288, %249
  %326 = fadd fast float %324, %325
  %327 = fmul fast float %267, %247
  %328 = fmul fast float %279, %248
  %329 = fadd fast float %328, %327
  %330 = fmul fast float %291, %249
  %331 = fadd fast float %329, %330
  %332 = fmul fast float %268, %247
  %333 = fmul fast float %280, %248
  %334 = fadd fast float %333, %332
  %335 = fmul fast float %292, %249
  %336 = fadd fast float %334, %335
  %337 = fmul fast float %269, %247
  %338 = fmul fast float %281, %248
  %339 = fadd fast float %338, %337
  %340 = fmul fast float %293, %249
  %341 = fadd fast float %339, %340
  %342 = fmul fast float %270, %247
  %343 = fmul fast float %282, %248
  %344 = fadd fast float %343, %342
  %345 = fmul fast float %294, %249
  %346 = fadd fast float %344, %345
  %347 = fadd fast float %311, %297
  %348 = fadd fast float %316, %298
  %349 = fadd fast float %321, %299
  %350 = fadd fast float %326, %300
  %351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %347)  ; FMax(a,b)
  %352 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %348)  ; FMax(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %349)  ; FMax(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %350)  ; FMax(a,b)
  %355 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %347)  ; FMin(a,b)
  %356 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %348)  ; FMin(a,b)
  %357 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %349)  ; FMin(a,b)
  %358 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %350)  ; FMin(a,b)
  %359 = fmul fast float %355, 0x3F847AE140000000
  %360 = fmul fast float %356, 0x3F847AE140000000
  %361 = fmul fast float %357, 0x3F847AE140000000
  %362 = fmul fast float %358, 0x3F847AE140000000
  %363 = fadd fast float %359, %351
  %364 = fadd fast float %360, %352
  %365 = fadd fast float %361, %353
  %366 = fadd fast float %362, %354
  %367 = fadd fast float %331, %303
  %368 = fadd fast float %336, %304
  %369 = fadd fast float %341, %305
  %370 = fadd fast float %346, %306
  %371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %367)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %368)  ; FMax(a,b)
  %373 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %369)  ; FMax(a,b)
  %374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %370)  ; FMax(a,b)
  %375 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %367)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %368)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %369)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %370)  ; FMin(a,b)
  %379 = fmul fast float %375, 0x3F847AE140000000
  %380 = fmul fast float %376, 0x3F847AE140000000
  %381 = fmul fast float %377, 0x3F847AE140000000
  %382 = fmul fast float %378, 0x3F847AE140000000
  %383 = fadd fast float %379, %371
  %384 = fadd fast float %380, %372
  %385 = fadd fast float %381, %373
  %386 = fadd fast float %382, %374
  br label %387

; <label>:387                                     ; preds = %387, %235
  %388 = phi i32 [ 0, %235 ], [ %408, %387 ]
  %389 = add i32 %259, 8
  %390 = shl i32 %388, 1
  %391 = add i32 %389, %390
  %392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.f32 %392, 0
  %394 = extractvalue %dx.types.ResRet.f32 %392, 1
  %395 = extractvalue %dx.types.ResRet.f32 %392, 2
  %396 = extractvalue %dx.types.ResRet.f32 %392, 3
  %397 = add i32 %259, 9
  %398 = add i32 %397, %390
  %399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.f32 %399, 0
  %401 = extractvalue %dx.types.ResRet.f32 %399, 1
  %402 = extractvalue %dx.types.ResRet.f32 %399, 2
  %403 = extractvalue %dx.types.ResRet.f32 %399, 3
  %404 = call float @dx.op.dot4.f32(i32 56, float %393, float %394, float %395, float %396, float %363, float %364, float %365, float %366)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %405 = call float @dx.op.dot4.f32(i32 56, float %400, float %401, float %402, float %403, float %383, float %384, float %385, float %386)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %406 = fadd fast float %405, %404
  %407 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 %388
  store float %406, float* %407, align 4, !tbaa !41, !noalias !35
  %408 = add nuw nsw i32 %388, 1
  %409 = icmp eq i32 %408, 8
  br i1 %409, label %410, label %387

; <label>:410                                     ; preds = %387
  %411 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %412 = fsub fast float 1.000000e+00, %411
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fmul fast float %258, %413
  %415 = add i32 %259, 24
  %416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = add i32 %259, 25
  %422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = extractvalue %dx.types.ResRet.f32 %422, 3
  %427 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 0
  %428 = load float, float* %427, align 4, !tbaa !41, !noalias !35
  %429 = fadd fast float %428, %417
  %430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %429)  ; FMax(a,b)
  %431 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %429)  ; FMin(a,b)
  %432 = fmul fast float %431, 0x3F847AE140000000
  %433 = fadd fast float %432, %430
  store float %433, float* %427, align 4, !tbaa !41, !noalias !35
  %434 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 1
  %435 = load float, float* %434, align 4, !tbaa !41, !noalias !35
  %436 = fadd fast float %435, %418
  %437 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %436)  ; FMax(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %436)  ; FMin(a,b)
  %439 = fmul fast float %438, 0x3F847AE140000000
  %440 = fadd fast float %439, %437
  store float %440, float* %434, align 4, !tbaa !41, !noalias !35
  %441 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 2
  %442 = load float, float* %441, align 4, !tbaa !41, !noalias !35
  %443 = fadd fast float %442, %419
  %444 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %443)  ; FMax(a,b)
  %445 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %443)  ; FMin(a,b)
  %446 = fmul fast float %445, 0x3F847AE140000000
  %447 = fadd fast float %446, %444
  store float %447, float* %441, align 4, !tbaa !41, !noalias !35
  %448 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 3
  %449 = load float, float* %448, align 4, !tbaa !41, !noalias !35
  %450 = fadd fast float %449, %420
  %451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %450)  ; FMax(a,b)
  %452 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %450)  ; FMin(a,b)
  %453 = fmul fast float %452, 0x3F847AE140000000
  %454 = fadd fast float %453, %451
  store float %454, float* %448, align 4, !tbaa !41, !noalias !35
  %455 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 4
  %456 = load float, float* %455, align 4, !tbaa !41, !noalias !35
  %457 = fadd fast float %456, %423
  %458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %457)  ; FMax(a,b)
  %459 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %457)  ; FMin(a,b)
  %460 = fmul fast float %459, 0x3F847AE140000000
  %461 = fadd fast float %460, %458
  store float %461, float* %455, align 4, !tbaa !41, !noalias !35
  %462 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 5
  %463 = load float, float* %462, align 4, !tbaa !41, !noalias !35
  %464 = fadd fast float %463, %424
  %465 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %464)  ; FMax(a,b)
  %466 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %464)  ; FMin(a,b)
  %467 = fmul fast float %466, 0x3F847AE140000000
  %468 = fadd fast float %467, %465
  store float %468, float* %462, align 4, !tbaa !41, !noalias !35
  %469 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 6
  %470 = load float, float* %469, align 4, !tbaa !41, !noalias !35
  %471 = fadd fast float %470, %425
  %472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %471)  ; FMax(a,b)
  %473 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %471)  ; FMin(a,b)
  %474 = fmul fast float %473, 0x3F847AE140000000
  %475 = fadd fast float %474, %472
  store float %475, float* %469, align 4, !tbaa !41, !noalias !35
  %476 = getelementptr inbounds [8 x float], [8 x float]* %14, i32 0, i32 7
  %477 = load float, float* %476, align 4, !tbaa !41, !noalias !35
  %478 = fadd fast float %477, %426
  %479 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %478)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %478)  ; FMin(a,b)
  %481 = fmul fast float %480, 0x3F847AE140000000
  %482 = fadd fast float %481, %479
  store float %482, float* %476, align 4, !tbaa !41, !noalias !35
  %483 = add i32 %259, 26
  %484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.f32 %484, 0
  %486 = extractvalue %dx.types.ResRet.f32 %484, 1
  %487 = extractvalue %dx.types.ResRet.f32 %484, 2
  %488 = extractvalue %dx.types.ResRet.f32 %484, 3
  %489 = add i32 %259, 27
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = fmul fast float %433, %485
  %496 = fmul fast float %440, %486
  %497 = fadd fast float %496, %495
  %498 = fmul fast float %447, %487
  %499 = fadd fast float %497, %498
  %500 = fmul fast float %454, %488
  %501 = fadd fast float %499, %500
  %502 = fmul fast float %461, %491
  %503 = fadd fast float %501, %502
  %504 = fmul fast float %468, %492
  %505 = fadd fast float %503, %504
  %506 = fmul fast float %475, %493
  %507 = fadd fast float %505, %506
  %508 = fmul fast float %482, %494
  %509 = fadd fast float %507, %508
  %510 = add i32 %259, 28
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = fadd fast float %509, %512
  %514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %513)  ; FMax(a,b)
  %515 = fmul fast float %414, %514
  %516 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %517 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 %238
  store float %516, float* %517, align 4, !tbaa !41, !noalias !35
  %518 = fadd fast float %516, %237
  %519 = add nuw nsw i32 %238, 1
  %520 = icmp eq i32 %519, 8
  br i1 %520, label %524, label %521

; <label>:521                                     ; preds = %410
  %522 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 %519
  %523 = load i32, i32* %522, align 4, !tbaa !31, !noalias !35
  br label %235

; <label>:524                                     ; preds = %410
  %525 = fcmp fast ugt float %518, 0x3EE4F8B580000000
  br i1 %525, label %526, label %787, !dx.controlflow.hints !43

; <label>:526                                     ; preds = %524
  %527 = fcmp fast ogt float %518, 0x3EE4F8B580000000
  %528 = fdiv fast float 1.000000e+00, %518
  %529 = select i1 %527, float %528, float 1.000000e+00
  %530 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 0
  %531 = load float, float* %530, align 4, !tbaa !41, !noalias !35
  %532 = fmul fast float %531, %529
  store float %532, float* %530, align 4, !tbaa !41, !noalias !35
  %533 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 1
  %534 = load float, float* %533, align 4, !tbaa !41, !noalias !35
  %535 = fmul fast float %534, %529
  store float %535, float* %533, align 4, !tbaa !41, !noalias !35
  %536 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 2
  %537 = load float, float* %536, align 4, !tbaa !41, !noalias !35
  %538 = fmul fast float %537, %529
  store float %538, float* %536, align 4, !tbaa !41, !noalias !35
  %539 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 3
  %540 = load float, float* %539, align 4, !tbaa !41, !noalias !35
  %541 = fmul fast float %540, %529
  store float %541, float* %539, align 4, !tbaa !41, !noalias !35
  %542 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 4
  %543 = load float, float* %542, align 4, !tbaa !41, !noalias !35
  %544 = fmul fast float %543, %529
  store float %544, float* %542, align 4, !tbaa !41, !noalias !35
  %545 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 5
  %546 = load float, float* %545, align 4, !tbaa !41, !noalias !35
  %547 = fmul fast float %546, %529
  store float %547, float* %545, align 4, !tbaa !41, !noalias !35
  %548 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 6
  %549 = load float, float* %548, align 4, !tbaa !41, !noalias !35
  %550 = fmul fast float %549, %529
  store float %550, float* %548, align 4, !tbaa !41, !noalias !35
  %551 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 7
  %552 = load float, float* %551, align 4, !tbaa !41, !noalias !35
  %553 = fmul fast float %552, %529
  store float %553, float* %551, align 4, !tbaa !41, !noalias !35
  br label %554

; <label>:554                                     ; preds = %781, %526
  %555 = phi float [ %785, %781 ], [ %532, %526 ]
  %556 = phi i32 [ %783, %781 ], [ %163, %526 ]
  %557 = phi float [ %736, %781 ], [ 0.000000e+00, %526 ]
  %558 = phi float [ %734, %781 ], [ 0.000000e+00, %526 ]
  %559 = phi float [ %732, %781 ], [ 0.000000e+00, %526 ]
  %560 = phi float [ %728, %781 ], [ 0.000000e+00, %526 ]
  %561 = phi float [ %726, %781 ], [ 0.000000e+00, %526 ]
  %562 = phi float [ %722, %781 ], [ 0.000000e+00, %526 ]
  %563 = phi float [ %720, %781 ], [ 0.000000e+00, %526 ]
  %564 = phi float [ %718, %781 ], [ 0.000000e+00, %526 ]
  %565 = phi float [ %714, %781 ], [ 0.000000e+00, %526 ]
  %566 = phi float [ %757, %781 ], [ 0.000000e+00, %526 ]
  %567 = phi float [ %755, %781 ], [ 0.000000e+00, %526 ]
  %568 = phi float [ %753, %781 ], [ 0.000000e+00, %526 ]
  %569 = phi float [ %750, %781 ], [ 0.000000e+00, %526 ]
  %570 = phi float [ %748, %781 ], [ 0.000000e+00, %526 ]
  %571 = phi float [ %745, %781 ], [ 0.000000e+00, %526 ]
  %572 = phi float [ %743, %781 ], [ 0.000000e+00, %526 ]
  %573 = phi float [ %741, %781 ], [ 0.000000e+00, %526 ]
  %574 = phi float [ %738, %781 ], [ 0.000000e+00, %526 ]
  %575 = phi float [ %778, %781 ], [ 0.000000e+00, %526 ]
  %576 = phi float [ %776, %781 ], [ 0.000000e+00, %526 ]
  %577 = phi float [ %774, %781 ], [ 0.000000e+00, %526 ]
  %578 = phi float [ %771, %781 ], [ 0.000000e+00, %526 ]
  %579 = phi float [ %769, %781 ], [ 0.000000e+00, %526 ]
  %580 = phi float [ %766, %781 ], [ 0.000000e+00, %526 ]
  %581 = phi float [ %764, %781 ], [ 0.000000e+00, %526 ]
  %582 = phi float [ %762, %781 ], [ 0.000000e+00, %526 ]
  %583 = phi float [ %759, %781 ], [ 0.000000e+00, %526 ]
  %584 = phi i32 [ %779, %781 ], [ 0, %526 ]
  %585 = shl i32 %556, 5
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = extractvalue %dx.types.ResRet.i32 %586, 1
  %589 = extractvalue %dx.types.ResRet.i32 %586, 2
  %590 = extractvalue %dx.types.ResRet.i32 %586, 3
  %591 = or i32 %585, 16
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = extractvalue %dx.types.ResRet.i32 %592, 1
  %595 = extractvalue %dx.types.ResRet.i32 %592, 2
  %596 = shl i32 %587, 4
  %597 = and i32 %596, 32752
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %587, 7
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %587, 22
  %603 = shl nuw nsw i32 %602, 5
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = and i32 %588, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F80204080000000
  %608 = fadd fast float %607, -1.000000e+00
  %609 = lshr i32 %588, 8
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F80204080000000
  %613 = fadd fast float %612, -1.000000e+00
  %614 = lshr i32 %588, 16
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F80204080000000
  %618 = fadd fast float %617, -1.000000e+00
  %619 = lshr i32 %588, 24
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F80204080000000
  %622 = fadd fast float %621, -1.000000e+00
  %623 = and i32 %589, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F80204080000000
  %626 = fadd fast float %625, -1.000000e+00
  %627 = lshr i32 %589, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F80204080000000
  %631 = fadd fast float %630, -1.000000e+00
  %632 = lshr i32 %589, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F80204080000000
  %636 = fadd fast float %635, -1.000000e+00
  %637 = lshr i32 %589, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F80204080000000
  %640 = fadd fast float %639, -1.000000e+00
  %641 = and i32 %590, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F80204080000000
  %644 = fadd fast float %643, -1.000000e+00
  %645 = lshr i32 %590, 8
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F80204080000000
  %649 = fadd fast float %648, -1.000000e+00
  %650 = lshr i32 %590, 16
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F80204080000000
  %654 = fadd fast float %653, -1.000000e+00
  %655 = lshr i32 %590, 24
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F80204080000000
  %658 = fadd fast float %657, -1.000000e+00
  %659 = and i32 %593, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F80204080000000
  %662 = fadd fast float %661, -1.000000e+00
  %663 = lshr i32 %593, 8
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F80204080000000
  %667 = fadd fast float %666, -1.000000e+00
  %668 = lshr i32 %593, 16
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = fmul fast float %670, 0x3F80204080000000
  %672 = fadd fast float %671, -1.000000e+00
  %673 = lshr i32 %593, 24
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F80204080000000
  %676 = fadd fast float %675, -1.000000e+00
  %677 = and i32 %594, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F80204080000000
  %680 = fadd fast float %679, -1.000000e+00
  %681 = lshr i32 %594, 8
  %682 = and i32 %681, 255
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, 0x3F80204080000000
  %685 = fadd fast float %684, -1.000000e+00
  %686 = lshr i32 %594, 16
  %687 = and i32 %686, 255
  %688 = uitofp i32 %687 to float
  %689 = fmul fast float %688, 0x3F80204080000000
  %690 = fadd fast float %689, -1.000000e+00
  %691 = lshr i32 %594, 24
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F80204080000000
  %694 = fadd fast float %693, -1.000000e+00
  %695 = and i32 %595, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F80204080000000
  %698 = fadd fast float %697, -1.000000e+00
  %699 = lshr i32 %595, 8
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = fmul fast float %701, 0x3F80204080000000
  %703 = fadd fast float %702, -1.000000e+00
  %704 = lshr i32 %595, 16
  %705 = and i32 %704, 255
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, 0x3F80204080000000
  %708 = fadd fast float %707, -1.000000e+00
  %709 = lshr i32 %595, 24
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, 0x3F80204080000000
  %712 = fadd fast float %711, -1.000000e+00
  %713 = fmul fast float %598, %555
  %714 = fadd fast float %713, %565
  %715 = fmul fast float %555, 0x3FFBB67AE0000000
  %716 = fmul fast float %715, %598
  %717 = fmul fast float %716, %608
  %718 = fadd fast float %717, %564
  %719 = fmul fast float %716, %613
  %720 = fadd fast float %719, %563
  %721 = fmul fast float %716, %618
  %722 = fadd fast float %721, %562
  %723 = fmul fast float %555, 0x3FFEFBDEC0000000
  %724 = fmul fast float %723, %598
  %725 = fmul fast float %724, %622
  %726 = fadd fast float %725, %561
  %727 = fmul fast float %724, %626
  %728 = fadd fast float %727, %560
  %729 = fmul fast float %555, 0x4001E377A0000000
  %730 = fmul fast float %729, %598
  %731 = fmul fast float %730, %631
  %732 = fadd fast float %731, %559
  %733 = fmul fast float %724, %636
  %734 = fadd fast float %733, %558
  %735 = fmul fast float %724, %640
  %736 = fadd fast float %735, %557
  %737 = fmul fast float %601, %555
  %738 = fadd fast float %737, %574
  %739 = fmul fast float %715, %601
  %740 = fmul fast float %739, %644
  %741 = fadd fast float %740, %573
  %742 = fmul fast float %739, %649
  %743 = fadd fast float %742, %572
  %744 = fmul fast float %739, %654
  %745 = fadd fast float %744, %571
  %746 = fmul fast float %723, %601
  %747 = fmul fast float %746, %658
  %748 = fadd fast float %747, %570
  %749 = fmul fast float %746, %662
  %750 = fadd fast float %749, %569
  %751 = fmul fast float %729, %601
  %752 = fmul fast float %751, %667
  %753 = fadd fast float %752, %568
  %754 = fmul fast float %746, %672
  %755 = fadd fast float %754, %567
  %756 = fmul fast float %746, %676
  %757 = fadd fast float %756, %566
  %758 = fmul fast float %604, %555
  %759 = fadd fast float %758, %583
  %760 = fmul fast float %715, %604
  %761 = fmul fast float %760, %680
  %762 = fadd fast float %761, %582
  %763 = fmul fast float %760, %685
  %764 = fadd fast float %763, %581
  %765 = fmul fast float %760, %690
  %766 = fadd fast float %765, %580
  %767 = fmul fast float %723, %604
  %768 = fmul fast float %767, %694
  %769 = fadd fast float %768, %579
  %770 = fmul fast float %767, %698
  %771 = fadd fast float %770, %578
  %772 = fmul fast float %729, %604
  %773 = fmul fast float %772, %703
  %774 = fadd fast float %773, %577
  %775 = fmul fast float %767, %708
  %776 = fadd fast float %775, %576
  %777 = fmul fast float %767, %712
  %778 = fadd fast float %777, %575
  %779 = add nuw nsw i32 %584, 1
  %780 = icmp eq i32 %779, 8
  br i1 %780, label %786, label %781

; <label>:781                                     ; preds = %554
  %782 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i32 0, i32 %779
  %783 = load i32, i32* %782, align 4, !tbaa !31, !noalias !35
  %784 = getelementptr inbounds [8 x float], [8 x float]* %16, i32 0, i32 %779
  %785 = load float, float* %784, align 4, !tbaa !41, !noalias !35
  br label %554

; <label>:786                                     ; preds = %554
  br label %787

; <label>:787                                     ; preds = %786, %524, %91, %72, %40
  %788 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %736, %786 ]
  %789 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %734, %786 ]
  %790 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %732, %786 ]
  %791 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %728, %786 ]
  %792 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %726, %786 ]
  %793 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %722, %786 ]
  %794 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %720, %786 ]
  %795 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %718, %786 ]
  %796 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %714, %786 ]
  %797 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %757, %786 ]
  %798 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %755, %786 ]
  %799 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %753, %786 ]
  %800 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %750, %786 ]
  %801 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %748, %786 ]
  %802 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %745, %786 ]
  %803 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %743, %786 ]
  %804 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %741, %786 ]
  %805 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %738, %786 ]
  %806 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %778, %786 ]
  %807 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %776, %786 ]
  %808 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %774, %786 ]
  %809 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %771, %786 ]
  %810 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %769, %786 ]
  %811 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %766, %786 ]
  %812 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %764, %786 ]
  %813 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %762, %786 ]
  %814 = phi float [ 0.000000e+00, %524 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %72 ], [ 0.000000e+00, %40 ], [ %759, %786 ]
  %815 = call i32 @dx.op.legacyF32ToF16(i32 130, float %796)  ; LegacyF32ToF16(value)
  %816 = call i32 @dx.op.legacyF32ToF16(i32 130, float %795)  ; LegacyF32ToF16(value)
  %817 = shl i32 %816, 16
  %818 = or i32 %817, %815
  %819 = call i32 @dx.op.legacyF32ToF16(i32 130, float %794)  ; LegacyF32ToF16(value)
  %820 = call i32 @dx.op.legacyF32ToF16(i32 130, float %793)  ; LegacyF32ToF16(value)
  %821 = shl i32 %820, 16
  %822 = or i32 %821, %819
  %823 = call i32 @dx.op.legacyF32ToF16(i32 130, float %792)  ; LegacyF32ToF16(value)
  %824 = call i32 @dx.op.legacyF32ToF16(i32 130, float %791)  ; LegacyF32ToF16(value)
  %825 = shl i32 %824, 16
  %826 = or i32 %825, %823
  %827 = call i32 @dx.op.legacyF32ToF16(i32 130, float %790)  ; LegacyF32ToF16(value)
  %828 = call i32 @dx.op.legacyF32ToF16(i32 130, float %789)  ; LegacyF32ToF16(value)
  %829 = shl i32 %828, 16
  %830 = or i32 %829, %827
  %831 = call i32 @dx.op.legacyF32ToF16(i32 130, float %788)  ; LegacyF32ToF16(value)
  %832 = call i32 @dx.op.legacyF32ToF16(i32 130, float %805)  ; LegacyF32ToF16(value)
  %833 = shl i32 %832, 16
  %834 = or i32 %833, %831
  %835 = call i32 @dx.op.legacyF32ToF16(i32 130, float %804)  ; LegacyF32ToF16(value)
  %836 = call i32 @dx.op.legacyF32ToF16(i32 130, float %803)  ; LegacyF32ToF16(value)
  %837 = shl i32 %836, 16
  %838 = or i32 %837, %835
  %839 = call i32 @dx.op.legacyF32ToF16(i32 130, float %802)  ; LegacyF32ToF16(value)
  %840 = call i32 @dx.op.legacyF32ToF16(i32 130, float %801)  ; LegacyF32ToF16(value)
  %841 = shl i32 %840, 16
  %842 = or i32 %841, %839
  %843 = call i32 @dx.op.legacyF32ToF16(i32 130, float %800)  ; LegacyF32ToF16(value)
  %844 = call i32 @dx.op.legacyF32ToF16(i32 130, float %799)  ; LegacyF32ToF16(value)
  %845 = shl i32 %844, 16
  %846 = or i32 %845, %843
  %847 = call i32 @dx.op.legacyF32ToF16(i32 130, float %798)  ; LegacyF32ToF16(value)
  %848 = call i32 @dx.op.legacyF32ToF16(i32 130, float %797)  ; LegacyF32ToF16(value)
  %849 = shl i32 %848, 16
  %850 = or i32 %849, %847
  %851 = call i32 @dx.op.legacyF32ToF16(i32 130, float %814)  ; LegacyF32ToF16(value)
  %852 = call i32 @dx.op.legacyF32ToF16(i32 130, float %813)  ; LegacyF32ToF16(value)
  %853 = shl i32 %852, 16
  %854 = or i32 %853, %851
  %855 = call i32 @dx.op.legacyF32ToF16(i32 130, float %812)  ; LegacyF32ToF16(value)
  %856 = call i32 @dx.op.legacyF32ToF16(i32 130, float %811)  ; LegacyF32ToF16(value)
  %857 = shl i32 %856, 16
  %858 = or i32 %857, %855
  %859 = call i32 @dx.op.legacyF32ToF16(i32 130, float %810)  ; LegacyF32ToF16(value)
  %860 = call i32 @dx.op.legacyF32ToF16(i32 130, float %809)  ; LegacyF32ToF16(value)
  %861 = shl i32 %860, 16
  %862 = or i32 %861, %859
  %863 = call i32 @dx.op.legacyF32ToF16(i32 130, float %808)  ; LegacyF32ToF16(value)
  %864 = call i32 @dx.op.legacyF32ToF16(i32 130, float %807)  ; LegacyF32ToF16(value)
  %865 = shl i32 %864, 16
  %866 = or i32 %865, %863
  %867 = call i32 @dx.op.legacyF32ToF16(i32 130, float %806)  ; LegacyF32ToF16(value)
  %868 = call i32 @dx.op.legacyF32ToF16(i32 130, float 1.000000e+00)  ; LegacyF32ToF16(value)
  %869 = shl i32 %868, 16
  %870 = or i32 %869, %867
  br label %871

; <label>:871                                     ; preds = %787, %0
  %872 = phi i32 [ %33, %0 ], [ %866, %787 ]
  %873 = phi i32 [ %28, %0 ], [ %850, %787 ]
  %874 = phi i32 [ %23, %0 ], [ %834, %787 ]
  %875 = phi i32 [ %18, %0 ], [ %818, %787 ]
  %876 = phi i32 [ %34, %0 ], [ %870, %787 ]
  %877 = phi i32 [ %29, %0 ], [ %854, %787 ]
  %878 = phi i32 [ %24, %0 ], [ %838, %787 ]
  %879 = phi i32 [ %19, %0 ], [ %822, %787 ]
  %880 = phi i32 [ %35, %0 ], [ %868, %787 ]
  %881 = phi i32 [ %30, %0 ], [ %858, %787 ]
  %882 = phi i32 [ %25, %0 ], [ %842, %787 ]
  %883 = phi i32 [ %20, %0 ], [ %826, %787 ]
  %884 = phi i32 [ %36, %0 ], [ 0, %787 ]
  %885 = phi i32 [ %31, %0 ], [ %862, %787 ]
  %886 = phi i32 [ %26, %0 ], [ %846, %787 ]
  %887 = phi i32 [ %21, %0 ], [ %830, %787 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 undef, i32 %875, i32 %879, i32 %883, i32 %887, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 16, i32 undef, i32 %874, i32 %878, i32 %882, i32 %886, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 32, i32 undef, i32 %873, i32 %877, i32 %881, i32 %885, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 48, i32 undef, i32 %872, i32 %876, i32 %880, i32 %884, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readonly }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !21, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !16, !17, !18}
!6 = !{i32 0, %"class.StructuredBuffer<GfxNeuralLightGridTopLevelNode>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 16}
!8 = !{i32 1, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 10, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.StructuredBuffer<GfxNeuralLightGridInternalNode>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i32 0, !7}
!11 = !{i32 3, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !9}
!12 = !{i32 4, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 10, i32 0, !9}
!13 = !{i32 5, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 10, i32 0, !9}
!14 = !{i32 6, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 10, i32 0, !15}
!15 = !{i32 0, i32 9}
!16 = !{i32 7, %"class.Buffer<unsigned int>"* undef, !"", i32 0, i32 7, i32 1, i32 10, i32 0, !9}
!17 = !{i32 8, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 10, i32 0, !15}
!18 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!19 = !{!20}
!20 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!21 = !{!22, !23}
!22 = !{i32 0, %GfxNeuralLightGridSetupConsts* undef, !"", i32 0, i32 4, i32 1, i32 80, null}
!23 = !{i32 1, %GfxSHProbeNeuralFallbackConsts* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!24 = !{void ()* @cs_sh_sample_fallback_probe, !"cs_sh_sample_fallback_probe", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 1, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !{!36, !38, !39, !40}
!36 = distinct !{!36, !37, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeR"}
!37 = distinct !{!37, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z"}
!38 = distinct !{!38, !37, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeG"}
!39 = distinct !{!39, !37, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeB"}
!40 = distinct !{!40, !37, !"\01?LookupNeuralLightGrid@@YA_NUNeuralLightGridSetup@@UNeuralLightGridData@@V?$vector@M$02@@USH3Vec@@33AIAM_N@Z: %probeA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !33, i64 0}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

