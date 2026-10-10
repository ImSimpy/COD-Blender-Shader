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
; shader hash: 72c18acb401c20e71ea6347aca70be43
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
;                                   texture    byte         r/o      T1            t17     1
;                                   texture    byte         r/o      T2            t18     1
;                                   texture    byte         r/o      T3            t22     1
;                                   texture     f32          2d      T4             t8     1
;                                   texture     f32          2d      T5            t10     1
;                                   texture     f32          2d      T6            t12     1
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

define void @cs_compose_volume_decals_to_scratch_vhm_with_cutout() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x i32], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x float], align 4
  %25 = alloca [4 x float], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = alloca [4 x i32], align 4
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 3
  %37 = shl i32 %15, 3
  %38 = udiv i32 %37, %36
  %39 = lshr i32 %38, 1
  %40 = add nuw i32 %39, 233
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 %40)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.i32 %41, 1
  %44 = extractvalue %dx.types.CBufRet.i32 %41, 2
  %45 = extractvalue %dx.types.CBufRet.i32 %41, 3
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %45, i32* %49, align 4
  %50 = shl i32 %38, 1
  %51 = and i32 %50, 2
  %52 = getelementptr [4 x i32], [4 x i32]* %34, i32 0, i32 %51
  %53 = load i32, i32* %52, align 4, !tbaa !27, !noalias !31
  %54 = and i32 %53, 255
  %55 = urem i32 %13, %36
  %56 = add nuw nsw i32 %54, 198
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %56)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = uitofp i32 %36 to float
  %62 = fdiv fast float %60, %61
  %63 = uitofp i32 %55 to float
  %64 = uitofp i32 %14 to float
  %65 = fmul fast float %62, %63
  %66 = fmul fast float %62, %64
  %67 = fadd fast float %65, %58
  %68 = fadd fast float %66, %59
  %69 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %70 = mul i32 %54, %36
  %71 = add i32 %55, %70
  %72 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %73 = icmp eq i32 %72, 5
  %74 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %71, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = extractvalue %dx.types.ResRet.f32 %74, 1
  %77 = extractvalue %dx.types.ResRet.f32 %74, 2
  br i1 %73, label %87, label %78, !dx.controlflow.hints !38

; <label>:78                                      ; preds = %0
  %79 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %71, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %71, i32 %14, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  br label %87

; <label>:87                                      ; preds = %78, %0
  %88 = phi float [ undef, %0 ], [ %80, %78 ]
  %89 = phi float [ undef, %0 ], [ %81, %78 ]
  %90 = phi float [ undef, %0 ], [ %82, %78 ]
  %91 = phi float [ undef, %0 ], [ %84, %78 ]
  %92 = phi float [ undef, %0 ], [ %85, %78 ]
  %93 = phi float [ undef, %0 ], [ %86, %78 ]
  %94 = fcmp fast ole float %75, 0x3FA4B5DCC0000000
  %95 = fmul fast float %75, 0x3FB3D07220000000
  %96 = fadd fast float %75, 0x3FAC28F5C0000000
  %97 = fmul fast float %96, 0x3FEE54EDE0000000
  %98 = call float @dx.op.unary.f32(i32 23, float %97)  ; Log(value)
  %99 = fmul fast float %98, 0x4003333340000000
  %100 = call float @dx.op.unary.f32(i32 21, float %99)  ; Exp(value)
  %101 = select i1 %94, float %95, float %100
  %102 = fcmp fast ole float %76, 0x3FA4B5DCC0000000
  %103 = fmul fast float %76, 0x3FB3D07220000000
  %104 = fadd fast float %76, 0x3FAC28F5C0000000
  %105 = fmul fast float %104, 0x3FEE54EDE0000000
  %106 = call float @dx.op.unary.f32(i32 23, float %105)  ; Log(value)
  %107 = fmul fast float %106, 0x4003333340000000
  %108 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  %109 = select i1 %102, float %103, float %108
  %110 = fcmp fast ole float %77, 0x3FA4B5DCC0000000
  %111 = fmul fast float %77, 0x3FB3D07220000000
  %112 = fadd fast float %77, 0x3FAC28F5C0000000
  %113 = fmul fast float %112, 0x3FEE54EDE0000000
  %114 = call float @dx.op.unary.f32(i32 23, float %113)  ; Log(value)
  %115 = fmul fast float %114, 0x4003333340000000
  %116 = call float @dx.op.unary.f32(i32 21, float %115)  ; Exp(value)
  %117 = select i1 %110, float %111, float %116
  br i1 %73, label %127, label %118, !dx.controlflow.hints !39

; <label>:118                                     ; preds = %87
  switch i32 %72, label %127 [
    i32 1, label %119
    i32 2, label %120
    i32 3, label %126
  ], !dx.controlflow.hints !40

; <label>:119                                     ; preds = %118
  br label %127

; <label>:120                                     ; preds = %118
  %121 = fcmp fast une float %93, 0.000000e+00
  %122 = fmul fast float %93, 3.200000e+01
  %123 = fadd fast float %122, -1.600000e+01
  %124 = call float @dx.op.unary.f32(i32 21, float %123)  ; Exp(value)
  %125 = select i1 %121, float %124, float 0.000000e+00
  br label %127

; <label>:126                                     ; preds = %118
  br label %127

; <label>:127                                     ; preds = %126, %120, %119, %118, %87
  %128 = phi float [ 0.000000e+00, %118 ], [ %93, %126 ], [ 0.000000e+00, %120 ], [ 0.000000e+00, %119 ], [ 0.000000e+00, %87 ]
  %129 = phi float [ 0.000000e+00, %118 ], [ 0.000000e+00, %126 ], [ 0.000000e+00, %120 ], [ %93, %119 ], [ 0.000000e+00, %87 ]
  %130 = phi float [ 0.000000e+00, %118 ], [ 0.000000e+00, %126 ], [ %125, %120 ], [ 0.000000e+00, %119 ], [ 0.000000e+00, %87 ]
  %131 = phi float [ %92, %118 ], [ %92, %126 ], [ %92, %120 ], [ %92, %119 ], [ 0.000000e+00, %87 ]
  %132 = phi float [ %88, %118 ], [ %88, %126 ], [ %88, %120 ], [ %88, %119 ], [ 0.000000e+00, %87 ]
  %133 = phi float [ %90, %118 ], [ %90, %126 ], [ %90, %120 ], [ %90, %119 ], [ 0.000000e+00, %87 ]
  %134 = phi float [ %89, %118 ], [ %89, %126 ], [ %89, %120 ], [ %89, %119 ], [ 0.000000e+00, %87 ]
  %135 = phi float [ %91, %118 ], [ %91, %126 ], [ %91, %120 ], [ %91, %119 ], [ 0.000000e+00, %87 ]
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 22)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 2
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %1223, label %139, !dx.controlflow.hints !41

; <label>:139                                     ; preds = %127
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fdiv fast float 5.000000e-01, %141
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %144 = fdiv fast float 5.000000e-01, %143
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %147 = fmul fast float %146, %67
  %148 = fmul fast float %146, %68
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %152 = fdiv fast float %147, %150
  %153 = fdiv fast float %148, %151
  %154 = fmul fast float %142, 2.000000e+00
  %155 = fmul fast float %144, 2.000000e+00
  %156 = fsub fast float 1.000000e+00, %154
  %157 = fsub fast float 1.000000e+00, %155
  %158 = fmul fast float %152, %156
  %159 = fmul fast float %153, %157
  %160 = fadd fast float %158, %142
  %161 = fadd fast float %159, %144
  %162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.i32 %162, 3
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %178, !dx.controlflow.hints !42

; <label>:165                                     ; preds = %139
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %169 = fdiv fast float 5.000000e-01, %167
  %170 = fmul fast float %169, 2.000000e+00
  %171 = fsub fast float 1.000000e+00, %170
  %172 = fmul fast float %171, %160
  %173 = fmul fast float %171, %161
  %174 = fadd fast float %172, %169
  %175 = fadd fast float %173, %169
  %176 = fmul fast float %174, %168
  %177 = fmul fast float %175, %168
  br label %178

; <label>:178                                     ; preds = %165, %139
  %179 = phi float [ %176, %165 ], [ %160, %139 ]
  %180 = phi float [ %177, %165 ], [ %161, %139 ]
  %181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.i32 %181, 3
  %183 = add i32 %182, 0
  %184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.i32 %185, 3
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %301, label %188, !dx.controlflow.hints !43

; <label>:188                                     ; preds = %178
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %192 = fmul fast float %190, %179
  %193 = fmul fast float %191, %180
  %194 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 0
  %198 = extractvalue %dx.types.CBufRet.i32 %196, 1
  %199 = extractvalue %dx.types.CBufRet.i32 %196, 2
  %200 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %201 = fadd fast float %190, 0xBF847AE140000000
  %202 = fadd fast float %191, 0xBF847AE140000000
  %203 = call float @dx.op.binary.f32(i32 35, float %192, float 0.000000e+00)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 35, float %193, float 0.000000e+00)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float %203, float %201)  ; FMin(a,b)
  %206 = call float @dx.op.binary.f32(i32 36, float %204, float %202)  ; FMin(a,b)
  %207 = fdiv fast float %205, %194
  %208 = fdiv fast float %206, %195
  %209 = fptoui float %207 to i32
  %210 = fptoui float %208 to i32
  %211 = mul i32 %210, %197
  %212 = add i32 %211, %209
  %213 = lshr i32 %212, 1
  %214 = shl i32 %213, 2
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = shl i32 %212, 4
  %218 = and i32 %217, 16
  %219 = lshr i32 %216, %218
  %220 = and i32 %219, 255
  %221 = lshr i32 %219, 8
  %222 = and i32 %221, 31
  %223 = shl i32 1, %222
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, %205
  %226 = fdiv fast float %225, %190
  %227 = fmul fast float %224, %206
  %228 = fdiv fast float %227, %191
  %229 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %230 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %231 = uitofp i32 %198 to float
  %232 = fmul fast float %229, %231
  %233 = fmul fast float %230, %231
  %234 = uitofp i32 %200 to float
  %235 = fadd fast float %232, %234
  %236 = fadd fast float %233, %234
  %237 = mul i32 %220, %199
  %238 = call float @dx.op.unary.f32(i32 22, float %235)  ; Frc(value)
  %239 = fptoui float %235 to i32
  %240 = fptoui float %236 to i32
  %241 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 0
  %242 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %239, i32* %241, align 4
  store i32 %240, i32* %242, align 4
  %243 = add i32 %239, 1
  %244 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 1
  %245 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %243, i32* %244, align 4
  store i32 %240, i32* %245, align 4
  %246 = add i32 %240, 1
  %247 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 2
  %248 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %239, i32* %247, align 4
  store i32 %246, i32* %248, align 4
  %249 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 3
  %250 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %243, i32* %249, align 4
  store i32 %246, i32* %250, align 4
  br label %251

; <label>:251                                     ; preds = %275, %188
  %252 = phi i32 [ %240, %188 ], [ %279, %275 ]
  %253 = phi i32 [ %239, %188 ], [ %277, %275 ]
  %254 = phi i32 [ 0, %188 ], [ %273, %275 ]
  %255 = add i32 %199, -1
  %256 = call i32 @dx.op.binary.i32(i32 40, i32 %253, i32 %255)  ; UMin(a,b)
  %257 = call i32 @dx.op.binary.i32(i32 40, i32 %252, i32 %255)  ; UMin(a,b)
  %258 = add i32 %257, %237
  %259 = mul i32 %258, %199
  %260 = add i32 %259, %256
  %261 = lshr i32 %260, 1
  %262 = shl i32 %261, 2
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %260, 4
  %266 = and i32 %265, 16
  %267 = lshr i32 %264, %266
  %268 = and i32 %267, 65535
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3EF0002000000000
  %271 = call float @dx.op.unary.f32(i32 7, float %270)  ; Saturate(value)
  %272 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %254
  store float %271, float* %272, align 4, !tbaa !44, !noalias !46
  %273 = add nuw nsw i32 %254, 1
  %274 = icmp eq i32 %273, 4
  br i1 %274, label %280, label %275

; <label>:275                                     ; preds = %251
  %276 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %273
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %273
  %279 = load i32, i32* %278, align 4
  br label %251

; <label>:280                                     ; preds = %251
  %281 = call float @dx.op.unary.f32(i32 22, float %236)  ; Frc(value)
  %282 = fsub fast float 1.000000e+00, %238
  %283 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  %284 = load float, float* %283, align 4, !tbaa !44, !noalias !46
  %285 = fmul fast float %284, %282
  %286 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  %287 = load float, float* %286, align 4, !tbaa !44, !noalias !46
  %288 = fmul fast float %287, %238
  %289 = fadd fast float %288, %285
  %290 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  %291 = load float, float* %290, align 4, !tbaa !44, !noalias !46
  %292 = fmul fast float %291, %282
  %293 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  %294 = load float, float* %293, align 4, !tbaa !44, !noalias !46
  %295 = fmul fast float %294, %238
  %296 = fadd fast float %295, %292
  %297 = fsub fast float 1.000000e+00, %281
  %298 = fmul fast float %289, %297
  %299 = fmul fast float %296, %281
  %300 = fadd fast float %299, %298
  br label %304

; <label>:301                                     ; preds = %178
  %302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %184, %dx.types.Handle %11, float %179, float %180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  br label %304

; <label>:304                                     ; preds = %301, %280
  %305 = phi float [ %300, %280 ], [ %303, %301 ]
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %309 = fmul fast float %308, %305
  %310 = fadd fast float %309, %307
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %313 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %315 = fdiv fast float 1.000000e+00, %313
  %316 = fdiv fast float 1.000000e+00, %314
  br i1 %187, label %643, label %317, !dx.controlflow.hints !53

; <label>:317                                     ; preds = %304
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 3
  %321 = fmul fast float %319, %179
  %322 = fmul fast float %320, %180
  %323 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 29)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.i32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.i32 %325, 2
  %329 = extractvalue %dx.types.CBufRet.i32 %325, 3
  %330 = mul i32 %328, %328
  %331 = fadd fast float %319, 0xBF847AE140000000
  %332 = fadd fast float %320, 0xBF847AE140000000
  %333 = call float @dx.op.binary.f32(i32 35, float %321, float 0.000000e+00)  ; FMax(a,b)
  %334 = call float @dx.op.binary.f32(i32 35, float %322, float 0.000000e+00)  ; FMax(a,b)
  %335 = call float @dx.op.binary.f32(i32 36, float %333, float %331)  ; FMin(a,b)
  %336 = call float @dx.op.binary.f32(i32 36, float %334, float %332)  ; FMin(a,b)
  %337 = fdiv fast float %335, %323
  %338 = fdiv fast float %336, %324
  %339 = fptoui float %337 to i32
  %340 = fptoui float %338 to i32
  %341 = mul i32 %340, %326
  %342 = add i32 %341, %339
  %343 = lshr i32 %342, 1
  %344 = shl i32 %343, 2
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = shl i32 %342, 4
  %348 = and i32 %347, 16
  %349 = lshr i32 %346, %348
  %350 = and i32 %349, 255
  %351 = lshr i32 %349, 8
  %352 = and i32 %351, 31
  %353 = shl i32 1, %352
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, %335
  %356 = fdiv fast float %355, %319
  %357 = fmul fast float %354, %336
  %358 = fdiv fast float %357, %320
  %359 = call float @dx.op.unary.f32(i32 22, float %356)  ; Frc(value)
  %360 = call float @dx.op.unary.f32(i32 22, float %358)  ; Frc(value)
  %361 = uitofp i32 %327 to float
  %362 = fmul fast float %359, %361
  %363 = fmul fast float %360, %361
  %364 = uitofp i32 %329 to float
  %365 = fadd fast float %362, %364
  %366 = fadd fast float %363, %364
  %367 = mul i32 %330, %350
  %368 = fadd fast float %365, -1.000000e+00
  %369 = fadd fast float %366, -1.000000e+00
  %370 = call float @dx.op.unary.f32(i32 22, float %368)  ; Frc(value)
  %371 = fptoui float %368 to i32
  %372 = fptoui float %366 to i32
  %373 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  %374 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 0
  store i32 %371, i32* %373, align 4
  store i32 %372, i32* %374, align 4
  %375 = add i32 %371, 1
  %376 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  %377 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 1
  store i32 %375, i32* %376, align 4
  store i32 %372, i32* %377, align 4
  %378 = add i32 %372, 1
  %379 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  %380 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 2
  store i32 %371, i32* %379, align 4
  store i32 %378, i32* %380, align 4
  %381 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  %382 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 3
  store i32 %375, i32* %381, align 4
  store i32 %378, i32* %382, align 4
  %383 = add i32 %328, -1
  br label %384

; <label>:384                                     ; preds = %407, %317
  %385 = phi i32 [ %372, %317 ], [ %411, %407 ]
  %386 = phi i32 [ %371, %317 ], [ %409, %407 ]
  %387 = phi i32 [ 0, %317 ], [ %405, %407 ]
  %388 = call i32 @dx.op.binary.i32(i32 40, i32 %386, i32 %383)  ; UMin(a,b)
  %389 = call i32 @dx.op.binary.i32(i32 40, i32 %385, i32 %383)  ; UMin(a,b)
  %390 = mul i32 %389, %328
  %391 = add i32 %388, %367
  %392 = add i32 %391, %390
  %393 = lshr i32 %392, 1
  %394 = shl i32 %393, 2
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = shl i32 %392, 4
  %398 = and i32 %397, 16
  %399 = lshr i32 %396, %398
  %400 = and i32 %399, 65535
  %401 = uitofp i32 %400 to float
  %402 = fmul fast float %401, 0x3EF0002000000000
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 %387
  store float %403, float* %404, align 4, !tbaa !44, !noalias !54
  %405 = add nuw nsw i32 %387, 1
  %406 = icmp eq i32 %405, 4
  br i1 %406, label %412, label %407

; <label>:407                                     ; preds = %384
  %408 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %405
  %409 = load i32, i32* %408, align 4
  %410 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %405
  %411 = load i32, i32* %410, align 4
  br label %384

; <label>:412                                     ; preds = %384
  %413 = fadd fast float %365, 1.000000e+00
  %414 = fadd fast float %366, 1.000000e+00
  %415 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %416 = fsub fast float 1.000000e+00, %370
  %417 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  %418 = load float, float* %417, align 4, !tbaa !44, !noalias !54
  %419 = fmul fast float %418, %416
  %420 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  %421 = load float, float* %420, align 4, !tbaa !44, !noalias !54
  %422 = fmul fast float %421, %370
  %423 = fadd fast float %422, %419
  %424 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  %425 = load float, float* %424, align 4, !tbaa !44, !noalias !54
  %426 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  %427 = load float, float* %426, align 4, !tbaa !44, !noalias !54
  %428 = fmul fast float %427, %370
  %429 = fsub fast float 1.000000e+00, %415
  %430 = fmul fast float %423, %429
  %431 = call float @dx.op.unary.f32(i32 22, float %413)  ; Frc(value)
  %432 = fptoui float %413 to i32
  %433 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 0
  %434 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  store i32 %432, i32* %433, align 4
  store i32 %372, i32* %434, align 4
  %435 = add i32 %432, 1
  %436 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 1
  %437 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  store i32 %435, i32* %436, align 4
  store i32 %372, i32* %437, align 4
  %438 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 2
  %439 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  store i32 %432, i32* %438, align 4
  store i32 %378, i32* %439, align 4
  %440 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 3
  %441 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  store i32 %435, i32* %440, align 4
  store i32 %378, i32* %441, align 4
  br label %442

; <label>:442                                     ; preds = %465, %412
  %443 = phi i32 [ %372, %412 ], [ %469, %465 ]
  %444 = phi i32 [ %432, %412 ], [ %467, %465 ]
  %445 = phi i32 [ 0, %412 ], [ %463, %465 ]
  %446 = call i32 @dx.op.binary.i32(i32 40, i32 %444, i32 %383)  ; UMin(a,b)
  %447 = call i32 @dx.op.binary.i32(i32 40, i32 %443, i32 %383)  ; UMin(a,b)
  %448 = mul i32 %447, %328
  %449 = add i32 %446, %367
  %450 = add i32 %449, %448
  %451 = lshr i32 %450, 1
  %452 = shl i32 %451, 2
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = shl i32 %450, 4
  %456 = and i32 %455, 16
  %457 = lshr i32 %454, %456
  %458 = and i32 %457, 65535
  %459 = uitofp i32 %458 to float
  %460 = fmul fast float %459, 0x3EF0002000000000
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 %445
  store float %461, float* %462, align 4, !tbaa !44, !noalias !54
  %463 = add nuw nsw i32 %445, 1
  %464 = icmp eq i32 %463, 4
  br i1 %464, label %470, label %465

; <label>:465                                     ; preds = %442
  %466 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %463
  %467 = load i32, i32* %466, align 4
  %468 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %463
  %469 = load i32, i32* %468, align 4
  br label %442

; <label>:470                                     ; preds = %442
  %471 = fmul fast float %425, %416
  %472 = fadd fast float %428, %471
  %473 = fmul fast float %472, %415
  %474 = fsub fast float 1.000000e+00, %431
  %475 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  %476 = load float, float* %475, align 4, !tbaa !44, !noalias !54
  %477 = fmul fast float %476, %474
  %478 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  %479 = load float, float* %478, align 4, !tbaa !44, !noalias !54
  %480 = fmul fast float %479, %431
  %481 = fadd fast float %480, %477
  %482 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  %483 = load float, float* %482, align 4, !tbaa !44, !noalias !54
  %484 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  %485 = load float, float* %484, align 4, !tbaa !44, !noalias !54
  %486 = fmul fast float %485, %431
  %487 = fmul fast float %481, %429
  %488 = call float @dx.op.unary.f32(i32 22, float %365)  ; Frc(value)
  %489 = fptoui float %365 to i32
  %490 = fptoui float %369 to i32
  %491 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  %492 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  store i32 %489, i32* %491, align 4
  store i32 %490, i32* %492, align 4
  %493 = add i32 %489, 1
  %494 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  %495 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  store i32 %493, i32* %494, align 4
  store i32 %490, i32* %495, align 4
  %496 = add i32 %490, 1
  %497 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  %498 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  store i32 %489, i32* %497, align 4
  store i32 %496, i32* %498, align 4
  %499 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  %500 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  store i32 %493, i32* %499, align 4
  store i32 %496, i32* %500, align 4
  br label %501

; <label>:501                                     ; preds = %524, %470
  %502 = phi i32 [ %490, %470 ], [ %528, %524 ]
  %503 = phi i32 [ %489, %470 ], [ %526, %524 ]
  %504 = phi i32 [ 0, %470 ], [ %522, %524 ]
  %505 = call i32 @dx.op.binary.i32(i32 40, i32 %503, i32 %383)  ; UMin(a,b)
  %506 = call i32 @dx.op.binary.i32(i32 40, i32 %502, i32 %383)  ; UMin(a,b)
  %507 = mul i32 %506, %328
  %508 = add i32 %505, %367
  %509 = add i32 %508, %507
  %510 = lshr i32 %509, 1
  %511 = shl i32 %510, 2
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = shl i32 %509, 4
  %515 = and i32 %514, 16
  %516 = lshr i32 %513, %515
  %517 = and i32 %516, 65535
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %518, 0x3EF0002000000000
  %520 = call float @dx.op.unary.f32(i32 7, float %519)  ; Saturate(value)
  %521 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %504
  store float %520, float* %521, align 4, !tbaa !44, !noalias !54
  %522 = add nuw nsw i32 %504, 1
  %523 = icmp eq i32 %522, 4
  br i1 %523, label %529, label %524

; <label>:524                                     ; preds = %501
  %525 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %522
  %526 = load i32, i32* %525, align 4
  %527 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %522
  %528 = load i32, i32* %527, align 4
  br label %501

; <label>:529                                     ; preds = %501
  %530 = fmul fast float %483, %474
  %531 = fadd fast float %486, %530
  %532 = fmul fast float %531, %415
  %533 = call float @dx.op.unary.f32(i32 22, float %369)  ; Frc(value)
  %534 = fsub fast float 1.000000e+00, %488
  %535 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %536 = load float, float* %535, align 4, !tbaa !44, !noalias !54
  %537 = fmul fast float %536, %534
  %538 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %539 = load float, float* %538, align 4, !tbaa !44, !noalias !54
  %540 = fmul fast float %539, %488
  %541 = fadd fast float %540, %537
  %542 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %543 = load float, float* %542, align 4, !tbaa !44, !noalias !54
  %544 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %545 = load float, float* %544, align 4, !tbaa !44, !noalias !54
  %546 = fmul fast float %545, %488
  %547 = fsub fast float 1.000000e+00, %533
  %548 = fmul fast float %541, %547
  %549 = fptoui float %414 to i32
  %550 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  %551 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  store i32 %489, i32* %550, align 4
  store i32 %549, i32* %551, align 4
  %552 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  %553 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  store i32 %493, i32* %552, align 4
  store i32 %549, i32* %553, align 4
  %554 = add i32 %549, 1
  %555 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  %556 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  store i32 %489, i32* %555, align 4
  store i32 %554, i32* %556, align 4
  %557 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  %558 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  store i32 %493, i32* %557, align 4
  store i32 %554, i32* %558, align 4
  br label %559

; <label>:559                                     ; preds = %582, %529
  %560 = phi i32 [ %549, %529 ], [ %586, %582 ]
  %561 = phi i32 [ %489, %529 ], [ %584, %582 ]
  %562 = phi i32 [ 0, %529 ], [ %580, %582 ]
  %563 = call i32 @dx.op.binary.i32(i32 40, i32 %561, i32 %383)  ; UMin(a,b)
  %564 = call i32 @dx.op.binary.i32(i32 40, i32 %560, i32 %383)  ; UMin(a,b)
  %565 = mul i32 %564, %328
  %566 = add i32 %563, %367
  %567 = add i32 %566, %565
  %568 = lshr i32 %567, 1
  %569 = shl i32 %568, 2
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = shl i32 %567, 4
  %573 = and i32 %572, 16
  %574 = lshr i32 %571, %573
  %575 = and i32 %574, 65535
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3EF0002000000000
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %562
  store float %578, float* %579, align 4, !tbaa !44, !noalias !54
  %580 = add nuw nsw i32 %562, 1
  %581 = icmp eq i32 %580, 4
  br i1 %581, label %587, label %582

; <label>:582                                     ; preds = %559
  %583 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %580
  %584 = load i32, i32* %583, align 4
  %585 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %580
  %586 = load i32, i32* %585, align 4
  br label %559

; <label>:587                                     ; preds = %559
  %588 = fmul fast float %543, %534
  %589 = fadd fast float %546, %588
  %590 = fmul fast float %589, %533
  %591 = call float @dx.op.unary.f32(i32 22, float %414)  ; Frc(value)
  %592 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  %593 = load float, float* %592, align 4, !tbaa !44, !noalias !54
  %594 = fmul fast float %593, %534
  %595 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  %596 = load float, float* %595, align 4, !tbaa !44, !noalias !54
  %597 = fmul fast float %596, %488
  %598 = fadd fast float %597, %594
  %599 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  %600 = load float, float* %599, align 4, !tbaa !44, !noalias !54
  %601 = fmul fast float %600, %534
  %602 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  %603 = load float, float* %602, align 4, !tbaa !44, !noalias !54
  %604 = fmul fast float %603, %488
  %605 = fadd fast float %604, %601
  %606 = fsub fast float 1.000000e+00, %591
  %607 = fmul fast float %598, %606
  %608 = fmul fast float %605, %591
  %609 = fmul fast float %319, 2.000000e+00
  %610 = fmul fast float %354, %361
  %611 = fdiv fast float %609, %610
  %612 = fsub fast float -0.000000e+00, %430
  %613 = fsub fast float %612, %473
  %614 = fadd fast float %613, %487
  %615 = fadd fast float %614, %532
  %616 = fmul fast float %615, %308
  %617 = fmul fast float %320, 2.000000e+00
  %618 = fdiv fast float %617, %610
  %619 = fsub fast float -0.000000e+00, %548
  %620 = fsub fast float %619, %590
  %621 = fadd fast float %620, %607
  %622 = fadd fast float %621, %608
  %623 = fmul fast float %616, %618
  %624 = fsub fast float -0.000000e+00, %623
  %625 = fmul fast float %308, %611
  %626 = fmul fast float %625, %622
  %627 = fsub fast float -0.000000e+00, %626
  %628 = fmul fast float %618, %611
  %629 = call float @dx.op.dot3.f32(i32 55, float %624, float %627, float %628, float %624, float %627, float %628)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = call float @dx.op.unary.f32(i32 25, float %629)  ; Rsqrt(value)
  %631 = fmul fast float %630, %624
  %632 = fmul fast float %630, %627
  %633 = fmul fast float %630, %628
  %634 = call float @dx.op.dot3.f32(i32 55, float %611, float 0.000000e+00, float %616, float %611, float 0.000000e+00, float %616)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 25, float %634)  ; Rsqrt(value)
  %636 = fmul fast float %635, %611
  %637 = fmul fast float %635, %616
  %638 = fmul fast float %632, %637
  %639 = fmul fast float %636, %633
  %640 = fmul fast float %637, %631
  %641 = fsub fast float %639, %640
  %642 = fmul fast float %632, %636
  br label %706

; <label>:643                                     ; preds = %304
  %644 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 0
  %645 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 0
  %646 = fsub fast float -0.000000e+00, %315
  store float %646, float* %644, align 4
  store float 0.000000e+00, float* %645, align 4
  %647 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 1
  %648 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 1
  store float %315, float* %647, align 4
  store float 0.000000e+00, float* %648, align 4
  %649 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 2
  %650 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 2
  %651 = fsub fast float -0.000000e+00, %316
  store float 0.000000e+00, float* %649, align 4
  store float %651, float* %650, align 4
  %652 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 3
  %653 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 3
  store float 0.000000e+00, float* %652, align 4
  store float %316, float* %653, align 4
  br label %654

; <label>:654                                     ; preds = %667, %643
  %655 = phi float [ 0.000000e+00, %643 ], [ %671, %667 ]
  %656 = phi float [ %646, %643 ], [ %669, %667 ]
  %657 = phi i32 [ 0, %643 ], [ %665, %667 ]
  %658 = fadd fast float %656, %179
  %659 = fadd fast float %655, %180
  %660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %184, %dx.types.Handle %11, float %658, float %659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = fmul fast float %661, %308
  %663 = fadd fast float %662, %307
  %664 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 %657
  store float %663, float* %664, align 4, !tbaa !44, !noalias !66
  %665 = add nuw nsw i32 %657, 1
  %666 = icmp eq i32 %665, 4
  br i1 %666, label %672, label %667

; <label>:667                                     ; preds = %654
  %668 = getelementptr [4 x float], [4 x float]* %24, i32 0, i32 %665
  %669 = load float, float* %668, align 4
  %670 = getelementptr [4 x float], [4 x float]* %25, i32 0, i32 %665
  %671 = load float, float* %670, align 4
  br label %654

; <label>:672                                     ; preds = %654
  %673 = fdiv fast float %312, %313
  %674 = fdiv fast float %312, %314
  %675 = fmul fast float %673, 2.000000e+00
  %676 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 1
  %677 = load float, float* %676, align 4, !tbaa !44, !noalias !66
  %678 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 0
  %679 = load float, float* %678, align 4, !tbaa !44, !noalias !66
  %680 = fsub fast float %677, %679
  %681 = fmul fast float %674, 2.000000e+00
  %682 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 3
  %683 = load float, float* %682, align 4, !tbaa !44, !noalias !66
  %684 = getelementptr [4 x float], [4 x float]* %32, i32 0, i32 2
  %685 = load float, float* %684, align 4, !tbaa !44, !noalias !66
  %686 = fsub fast float %683, %685
  %687 = fmul fast float %674, -2.000000e+00
  %688 = fmul fast float %687, %680
  %689 = fmul fast float %673, -2.000000e+00
  %690 = fmul fast float %689, %686
  %691 = fmul fast float %681, %675
  %692 = call float @dx.op.dot3.f32(i32 55, float %688, float %690, float %691, float %688, float %690, float %691)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = call float @dx.op.unary.f32(i32 25, float %692)  ; Rsqrt(value)
  %694 = fmul fast float %693, %688
  %695 = fmul fast float %693, %690
  %696 = fmul fast float %693, %691
  %697 = call float @dx.op.dot3.f32(i32 55, float %675, float 0.000000e+00, float %680, float %675, float 0.000000e+00, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = call float @dx.op.unary.f32(i32 25, float %697)  ; Rsqrt(value)
  %699 = fmul fast float %698, %675
  %700 = fmul fast float %698, %680
  %701 = fmul fast float %700, %695
  %702 = fmul fast float %699, %696
  %703 = fmul fast float %700, %694
  %704 = fsub fast float %702, %703
  %705 = fmul fast float %699, %695
  br label %706

; <label>:706                                     ; preds = %672, %587
  %707 = phi float [ %642, %587 ], [ %705, %672 ]
  %708 = phi float [ %631, %587 ], [ %694, %672 ]
  %709 = phi float [ %632, %587 ], [ %695, %672 ]
  %710 = phi float [ %633, %587 ], [ %696, %672 ]
  %711 = phi float [ %638, %587 ], [ %701, %672 ]
  %712 = phi float [ %641, %587 ], [ %704, %672 ]
  %713 = phi float [ %636, %587 ], [ %699, %672 ]
  %714 = phi float [ %637, %587 ], [ %700, %672 ]
  %715 = fsub fast float -0.000000e+00, %707
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %718 = icmp eq i32 %717, 5
  %719 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %720 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %721 = fmul fast float %312, %67
  %722 = fmul fast float %312, %68
  %723 = fadd fast float %721, %719
  %724 = fadd fast float %722, %720
  %725 = fmul fast float %132, 2.000000e+00
  %726 = fadd fast float %725, -1.000000e+00
  %727 = fmul fast float %134, 2.000000e+00
  %728 = fadd fast float %727, -1.000000e+00
  %729 = fadd fast float %728, %726
  %730 = fmul fast float %729, 5.000000e-01
  %731 = fsub fast float %726, %728
  %732 = fmul fast float %731, 5.000000e-01
  %733 = call float @dx.op.unary.f32(i32 6, float %730)  ; FAbs(value)
  %734 = fsub fast float 1.000000e+00, %733
  %735 = call float @dx.op.unary.f32(i32 6, float %732)  ; FAbs(value)
  %736 = fsub fast float %734, %735
  %737 = call float @dx.op.dot3.f32(i32 55, float %730, float %732, float %736, float %730, float %732, float %736)  ; Dot3(ax,ay,az,bx,by,bz)
  %738 = call float @dx.op.unary.f32(i32 25, float %737)  ; Rsqrt(value)
  %739 = fmul fast float %738, %730
  %740 = fmul fast float %738, %732
  %741 = fmul fast float %738, %736
  %742 = fmul fast float %739, %714
  %743 = call float @dx.op.tertiary.f32(i32 46, float %740, float %715, float %742)  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %741, float %710, float %743)  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float %740, float %712, float 0.000000e+00)  ; FMad(a,b,c)
  %746 = call float @dx.op.tertiary.f32(i32 46, float %741, float %709, float %745)  ; FMad(a,b,c)
  %747 = fmul fast float %739, %713
  %748 = call float @dx.op.tertiary.f32(i32 46, float %740, float %711, float %747)  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float %741, float %708, float %748)  ; FMad(a,b,c)
  br label %750

; <label>:750                                     ; preds = %1176, %706
  %751 = phi float [ %1177, %1176 ], [ %130, %706 ]
  %752 = phi float [ %1178, %1176 ], [ %749, %706 ]
  %753 = phi float [ %1179, %1176 ], [ %746, %706 ]
  %754 = phi float [ %1180, %1176 ], [ %744, %706 ]
  %755 = phi float [ %1181, %1176 ], [ %133, %706 ]
  %756 = phi float [ %1182, %1176 ], [ %131, %706 ]
  %757 = phi float [ %1183, %1176 ], [ %135, %706 ]
  %758 = phi float [ %1184, %1176 ], [ %101, %706 ]
  %759 = phi float [ %1185, %1176 ], [ %109, %706 ]
  %760 = phi float [ %1186, %1176 ], [ %117, %706 ]
  %761 = phi i32 [ %1187, %1176 ], [ 0, %706 ]
  %762 = phi i32 [ %1188, %1176 ], [ 0, %706 ]
  %763 = shl i32 %762, 8
  %764 = or i32 %763, 48
  %765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = extractvalue %dx.types.ResRet.f32 %765, 3
  %770 = or i32 %763, 64
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = extractvalue %dx.types.ResRet.i32 %771, 1
  %774 = extractvalue %dx.types.ResRet.i32 %771, 2
  %775 = extractvalue %dx.types.ResRet.i32 %771, 3
  %776 = or i32 %763, 80
  %777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = or i32 %763, 96
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = or i32 %763, 112
  %789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = or i32 %763, 128
  %795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = or i32 %763, 144
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = or i32 %763, 160
  %807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = extractvalue %dx.types.ResRet.f32 %807, 2
  %811 = or i32 %763, 192
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = or i32 %763, 208
  %815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = or i32 %763, 240
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 1
  %820 = or i32 %763, 248
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = uitofp i32 %819 to float
  %825 = fmul fast float %824, 5.000000e+01
  %826 = call float @dx.op.unary.f32(i32 23, float %825)  ; Log(value)
  %827 = call float @dx.op.unary.f32(i32 28, float %826)  ; Round_pi(value)
  %828 = fsub fast float %827, %69
  %829 = fptosi float %828 to i32
  %830 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %829)  ; IMax(a,b)
  %831 = bitcast float %769 to i32
  %832 = and i32 %831, 2560
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %1176, !dx.controlflow.hints !67

; <label>:834                                     ; preds = %750
  %835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = extractvalue %dx.types.ResRet.f32 %835, 3
  %840 = call float @dx.op.dot4.f32(i32 56, float %836, float %837, float %838, float %839, float %723, float %724, float %310, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %841 = or i32 %763, 16
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = call float @dx.op.dot4.f32(i32 56, float %843, float %844, float %845, float %846, float %723, float %724, float %310, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %848 = or i32 %763, 32
  %849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = extractvalue %dx.types.ResRet.f32 %849, 3
  %854 = call float @dx.op.dot4.f32(i32 56, float %850, float %851, float %852, float %853, float %723, float %724, float %310, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %855 = call float @dx.op.unary.f32(i32 27, float %840)  ; Round_ni(value)
  %856 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %857 = call float @dx.op.unary.f32(i32 27, float %847)  ; Round_ni(value)
  %858 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %859 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %860 = call float @dx.op.unary.f32(i32 27, float %859)  ; Round_ni(value)
  %861 = fadd fast float %858, %856
  %862 = fadd fast float %861, %860
  %863 = fcmp fast oeq float %862, 0.000000e+00
  %864 = call float @dx.op.dot3.f32(i32 55, float %766, float %767, float %768, float %708, float %709, float %710)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %867 = fadd fast float %866, %864
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %870 = fcmp fast ogt float %868, %869
  %871 = and i1 %863, %870
  br i1 %871, label %872, label %1176, !dx.controlflow.hints !68

; <label>:872                                     ; preds = %834
  %873 = add i32 %761, 1
  %874 = sitofp i32 %830 to float
  %875 = add i32 %775, 0
  %876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %875, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %877 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %876, i32 0)  ; GetDimensions(handle,mipLevel)
  %878 = extractvalue %dx.types.Dimensions %877, 0
  %879 = extractvalue %dx.types.Dimensions %877, 1
  %880 = uitofp i32 %878 to float
  %881 = uitofp i32 %879 to float
  %882 = call float @dx.op.binary.f32(i32 35, float %880, float %881)  ; FMax(a,b)
  %883 = call float @dx.op.unary.f32(i32 23, float %882)  ; Log(value)
  %884 = call float @dx.op.unary.f32(i32 28, float %883)  ; Round_pi(value)
  %885 = fsub fast float %884, %874
  %886 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %885)  ; FMax(a,b)
  %887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %876, %dx.types.Handle %10, float %840, float %847, float undef, float undef, i32 0, i32 0, i32 undef, float %886)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = fmul fast float %888, %778
  %890 = fadd fast float %889, %779
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = fmul fast float %840, %784
  %893 = call float @dx.op.tertiary.f32(i32 46, float %785, float %847, float %892)  ; FMad(a,b,c)
  %894 = fadd fast float %893, %790
  %895 = fmul fast float %840, %786
  %896 = call float @dx.op.tertiary.f32(i32 46, float %787, float %847, float %895)  ; FMad(a,b,c)
  %897 = fadd fast float %896, %791
  %898 = add i32 %774, 0
  %899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %898, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %900 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %899, i32 0)  ; GetDimensions(handle,mipLevel)
  %901 = extractvalue %dx.types.Dimensions %900, 0
  %902 = extractvalue %dx.types.Dimensions %900, 1
  %903 = uitofp i32 %901 to float
  %904 = uitofp i32 %902 to float
  %905 = call float @dx.op.binary.f32(i32 35, float %903, float %904)  ; FMax(a,b)
  %906 = call float @dx.op.unary.f32(i32 23, float %905)  ; Log(value)
  %907 = call float @dx.op.unary.f32(i32 28, float %906)  ; Round_pi(value)
  %908 = fsub fast float %907, %874
  %909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %908)  ; FMax(a,b)
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %899, %dx.types.Handle %10, float %894, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float %909)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = and i32 %831, 1024
  %913 = icmp ne i32 %912, 0
  %914 = fcmp fast ogt float %911, 0x3FE0101020000000
  %915 = uitofp i1 %914 to float
  %916 = select i1 %913, float %915, float %911
  %917 = and i32 %831, 8192
  %918 = icmp ne i32 %917, 0
  %919 = select i1 %918, float %793, float 1.000000e+00
  %920 = fmul fast float %840, 2.000000e+00
  %921 = fadd fast float %920, -1.000000e+00
  %922 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %923 = fmul fast float %922, %822
  %924 = fsub fast float %923, %822
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fmul fast float %847, 2.000000e+00
  %927 = fadd fast float %926, -1.000000e+00
  %928 = call float @dx.op.unary.f32(i32 6, float %927)  ; FAbs(value)
  %929 = fmul fast float %928, %823
  %930 = fsub fast float %929, %823
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fmul fast float %859, %780
  %933 = fsub fast float %932, %780
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %891, %919
  %936 = fmul fast float %935, %888
  %937 = fmul fast float %936, %925
  %938 = fmul fast float %937, %916
  %939 = fmul fast float %938, %931
  %940 = fmul fast float %939, %934
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %944 = fsub fast float %868, %943
  %945 = fmul fast float %944, %942
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fmul fast float %940, %781
  %948 = fadd fast float %940, %781
  %949 = fmul fast float %948, %792
  %950 = fsub fast float %949, %792
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = and i32 %831, 128
  %953 = icmp ne i32 %952, 0
  %954 = select i1 %953, float %951, float %947
  %955 = fmul fast float %954, %946
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = fcmp fast ugt float %955, %957
  br i1 %958, label %959, label %1176, !dx.controlflow.hints !69

; <label>:959                                     ; preds = %872
  br i1 %918, label %1176, label %960, !dx.controlflow.hints !70

; <label>:960                                     ; preds = %959
  %961 = and i32 %831, 4
  %962 = and i32 %831, 8
  %963 = add i32 %772, 0
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %964, i32 0)  ; GetDimensions(handle,mipLevel)
  %966 = extractvalue %dx.types.Dimensions %965, 0
  %967 = extractvalue %dx.types.Dimensions %965, 1
  %968 = uitofp i32 %966 to float
  %969 = uitofp i32 %967 to float
  %970 = call float @dx.op.binary.f32(i32 35, float %968, float %969)  ; FMax(a,b)
  %971 = call float @dx.op.unary.f32(i32 23, float %970)  ; Log(value)
  %972 = call float @dx.op.unary.f32(i32 28, float %971)  ; Round_pi(value)
  %973 = fsub fast float %972, %874
  %974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %973)  ; FMax(a,b)
  %975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %964, %dx.types.Handle %10, float %894, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float %974)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %976 = extractvalue %dx.types.ResRet.f32 %975, 0
  %977 = extractvalue %dx.types.ResRet.f32 %975, 1
  %978 = extractvalue %dx.types.ResRet.f32 %975, 2
  %979 = extractvalue %dx.types.ResRet.f32 %975, 3
  %980 = bitcast float %805 to i32
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = lshr i32 %980, 8
  %984 = and i32 %983, 255
  %985 = uitofp i32 %984 to float
  %986 = fmul fast float %979, %982
  %987 = fadd fast float %986, %985
  %988 = fmul fast float %987, 0x3F70101000000000
  %989 = add i32 %773, 0
  %990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %989, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %991 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %990, i32 0)  ; GetDimensions(handle,mipLevel)
  %992 = extractvalue %dx.types.Dimensions %991, 0
  %993 = extractvalue %dx.types.Dimensions %991, 1
  %994 = uitofp i32 %992 to float
  %995 = uitofp i32 %993 to float
  %996 = call float @dx.op.binary.f32(i32 35, float %994, float %995)  ; FMax(a,b)
  %997 = call float @dx.op.unary.f32(i32 23, float %996)  ; Log(value)
  %998 = call float @dx.op.unary.f32(i32 28, float %997)  ; Round_pi(value)
  %999 = fsub fast float %998, %874
  %1000 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %999)  ; FMax(a,b)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %990, %dx.types.Handle %10, float %894, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float %1000)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1006 = bitcast float %799 to i32
  %1007 = and i32 %1006, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = lshr i32 %1006, 8
  %1010 = and i32 %1009, 255
  %1011 = uitofp i32 %1010 to float
  %1012 = lshr i32 %1006, 16
  %1013 = and i32 %1012, 255
  %1014 = uitofp i32 %1013 to float
  %1015 = fmul fast float %1014, 0x3F70101000000000
  %1016 = fmul fast float %1002, %1008
  %1017 = fadd fast float %1016, %1011
  %1018 = fmul fast float %1017, 0x3F70101000000000
  %1019 = fadd fast float %1003, -5.000000e-01
  %1020 = fadd fast float %1005, -5.000000e-01
  %1021 = fmul fast float %1019, %1015
  %1022 = fmul fast float %1020, %1015
  %1023 = fadd fast float %1021, 5.000000e-01
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fmul fast float %976, %808
  %1026 = fmul fast float %977, %809
  %1027 = fmul fast float %978, %810
  %1028 = fmul fast float %1023, 2.000000e+00
  %1029 = fadd fast float %1028, -1.000000e+00
  %1030 = fmul fast float %1024, 2.000000e+00
  %1031 = fadd fast float %1030, -1.000000e+00
  %1032 = fadd fast float %1029, %1031
  %1033 = fmul fast float %1032, 5.000000e-01
  %1034 = fsub fast float %1029, %1031
  %1035 = fmul fast float %1034, 5.000000e-01
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float 1.000000e+00, %1036
  %1038 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1039 = fsub fast float %1037, %1038
  %1040 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1035, float %1039, float %1033, float %1035, float %1039)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.unary.f32(i32 25, float %1040)  ; Rsqrt(value)
  %1042 = fmul fast float %1033, %1041
  %1043 = fmul fast float %1035, %1041
  %1044 = fmul fast float %1041, %1039
  %1045 = fmul fast float %1044, %766
  %1046 = fmul fast float %1044, %767
  %1047 = fmul fast float %1044, %768
  %1048 = fmul fast float %1042, %796
  %1049 = fmul fast float %1042, %797
  %1050 = fmul fast float %1042, %798
  %1051 = fadd fast float %1048, %1045
  %1052 = fadd fast float %1049, %1046
  %1053 = fadd fast float %1050, %1047
  %1054 = fmul fast float %1043, %802
  %1055 = fmul fast float %1043, %803
  %1056 = fmul fast float %1043, %804
  %1057 = fadd fast float %1051, %1054
  %1058 = fadd fast float %1052, %1055
  %1059 = fadd fast float %1053, %1056
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1057, float %1058, float %1059, float %1057, float %1058, float %1059)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = call float @dx.op.unary.f32(i32 25, float %1060)  ; Rsqrt(value)
  %1062 = fmul fast float %1057, %1061
  %1063 = fmul fast float %1058, %1061
  %1064 = fmul fast float %1059, %1061
  %1065 = icmp ne i32 %962, 0
  %1066 = select i1 %1065, float 1.000000e+00, float 0.000000e+00
  %1067 = fmul fast float %955, %1066
  %1068 = and i32 %831, 1
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1074, !dx.controlflow.hints !71

; <label>:1070                                    ; preds = %960
  %1071 = fsub fast float %1062, %752
  %1072 = fsub fast float %1063, %753
  %1073 = fsub fast float %1064, %754
  br label %1074

; <label>:1074                                    ; preds = %1070, %960
  %1075 = phi float [ %1071, %1070 ], [ %1062, %960 ]
  %1076 = phi float [ %1072, %1070 ], [ %1063, %960 ]
  %1077 = phi float [ %1073, %1070 ], [ %1064, %960 ]
  %1078 = fmul float %1077, %1067
  %1079 = fmul float %1076, %1067
  %1080 = fmul float %1075, %1067
  %1081 = fadd fast float %1080, %752
  %1082 = fadd fast float %1079, %753
  %1083 = fadd fast float %1078, %754
  %1084 = icmp ne i32 %961, 0
  %1085 = select i1 %1084, float 1.000000e+00, float 0.000000e+00
  %1086 = fmul fast float %955, %1085
  %1087 = fsub fast float %1025, %758
  %1088 = fsub fast float %1026, %759
  %1089 = fsub fast float %1027, %760
  %1090 = fmul fast float %1087, %1086
  %1091 = fmul fast float %1088, %1086
  %1092 = fmul fast float %1089, %1086
  %1093 = fadd fast float %1090, %758
  %1094 = fadd fast float %1091, %759
  %1095 = fadd fast float %1092, %760
  %1096 = fsub fast float %988, %757
  %1097 = fmul fast float %1096, %1086
  %1098 = fadd fast float %1097, %757
  %1099 = fsub fast float %1018, %756
  %1100 = fmul fast float %1099, %1067
  %1101 = fadd fast float %1100, %756
  %1102 = fsub fast float %1004, %755
  %1103 = fmul fast float %1102, %1067
  %1104 = fadd fast float %1103, %755
  %1105 = and i32 %831, 16
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1176, label %1107, !dx.controlflow.hints !72

; <label>:1107                                    ; preds = %1074
  %1108 = add i32 %813, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1109, %dx.types.Handle %1110, float %894, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00, float 0.000000e+00, float undef, float 0.000000e+00, float 0.000000e+00, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = bitcast float %816 to i32
  %1116 = and i32 %1115, 65535
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = fmul fast float %1112, %808
  %1119 = fmul fast float %1113, %809
  %1120 = fmul fast float %1114, %810
  %1121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.i32 %1121, 1
  %1123 = icmp eq i32 %1122, 2
  br i1 %1123, label %1124, label %1168, !dx.controlflow.hints !73

; <label>:1124                                    ; preds = %1107
  %1125 = call float @dx.op.binary.f32(i32 36, float %1093, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1126 = call float @dx.op.binary.f32(i32 36, float %1094, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1127 = call float @dx.op.binary.f32(i32 36, float %1095, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1128 = fsub fast float 1.000000e+00, %1125
  %1129 = fsub fast float 1.000000e+00, %1126
  %1130 = fsub fast float 1.000000e+00, %1127
  %1131 = call float @dx.op.unary.f32(i32 23, float %1128)  ; Log(value)
  %1132 = call float @dx.op.unary.f32(i32 23, float %1129)  ; Log(value)
  %1133 = call float @dx.op.unary.f32(i32 23, float %1130)  ; Log(value)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1118, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1119, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1120, float 0x3FEFAE1480000000)  ; FMin(a,b)
  %1137 = fsub fast float 1.000000e+00, %1134
  %1138 = fsub fast float 1.000000e+00, %1135
  %1139 = fsub fast float 1.000000e+00, %1136
  %1140 = call float @dx.op.unary.f32(i32 23, float %1137)  ; Log(value)
  %1141 = call float @dx.op.unary.f32(i32 23, float %1138)  ; Log(value)
  %1142 = call float @dx.op.unary.f32(i32 23, float %1139)  ; Log(value)
  %1143 = fmul fast float %955, %1140
  %1144 = fmul fast float %955, %1141
  %1145 = fmul fast float %955, %1142
  %1146 = fsub fast float -0.000000e+00, %1131
  %1147 = fsub fast float %1146, %1143
  %1148 = fsub fast float -0.000000e+00, %1132
  %1149 = fsub fast float %1148, %1144
  %1150 = fsub fast float -0.000000e+00, %1133
  %1151 = fsub fast float %1150, %1145
  %1152 = fsub fast float -0.000000e+00, %1147
  %1153 = fsub fast float -0.000000e+00, %1149
  %1154 = fsub fast float -0.000000e+00, %1151
  %1155 = call float @dx.op.unary.f32(i32 21, float %1152)  ; Exp(value)
  %1156 = call float @dx.op.unary.f32(i32 21, float %1153)  ; Exp(value)
  %1157 = call float @dx.op.unary.f32(i32 21, float %1154)  ; Exp(value)
  %1158 = fsub fast float 1.000000e+00, %1155
  %1159 = fsub fast float 1.000000e+00, %1156
  %1160 = fsub fast float 1.000000e+00, %1157
  %1161 = call float @dx.op.dot3.f32(i32 55, float %1158, float %1159, float %1160, float %1158, float %1159, float %1160)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float %1118, float %1119, float %1120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = fmul fast float %1162, %955
  %1164 = fcmp fast une float %1161, 0.000000e+00
  %1165 = fdiv fast float %1163, %1161
  %1166 = select i1 %1164, float %1165, float 0.000000e+00
  %1167 = fmul fast float %1166, %1117
  br label %1168

; <label>:1168                                    ; preds = %1124, %1107
  %1169 = phi float [ %1158, %1124 ], [ %1093, %1107 ]
  %1170 = phi float [ %1159, %1124 ], [ %1094, %1107 ]
  %1171 = phi float [ %1160, %1124 ], [ %1095, %1107 ]
  %1172 = phi float [ %1167, %1124 ], [ %1117, %1107 ]
  %1173 = fsub fast float %1172, %751
  %1174 = fmul fast float %1173, %955
  %1175 = fadd fast float %1174, %751
  br label %1176

; <label>:1176                                    ; preds = %1168, %1074, %959, %872, %834, %750
  %1177 = phi float [ %751, %750 ], [ %751, %872 ], [ %751, %959 ], [ %751, %834 ], [ %1175, %1168 ], [ %751, %1074 ]
  %1178 = phi float [ %752, %750 ], [ %752, %872 ], [ %752, %959 ], [ %752, %834 ], [ %1081, %1168 ], [ %1081, %1074 ]
  %1179 = phi float [ %753, %750 ], [ %753, %872 ], [ %753, %959 ], [ %753, %834 ], [ %1082, %1168 ], [ %1082, %1074 ]
  %1180 = phi float [ %754, %750 ], [ %754, %872 ], [ %754, %959 ], [ %754, %834 ], [ %1083, %1168 ], [ %1083, %1074 ]
  %1181 = phi float [ %755, %750 ], [ %755, %872 ], [ %755, %959 ], [ %755, %834 ], [ %1104, %1168 ], [ %1104, %1074 ]
  %1182 = phi float [ %756, %750 ], [ %756, %872 ], [ %756, %959 ], [ %756, %834 ], [ %1101, %1168 ], [ %1101, %1074 ]
  %1183 = phi float [ %757, %750 ], [ %757, %872 ], [ %757, %959 ], [ %757, %834 ], [ %1098, %1168 ], [ %1098, %1074 ]
  %1184 = phi float [ %758, %750 ], [ %758, %872 ], [ %758, %959 ], [ %758, %834 ], [ %1169, %1168 ], [ %1093, %1074 ]
  %1185 = phi float [ %759, %750 ], [ %759, %872 ], [ %759, %959 ], [ %759, %834 ], [ %1170, %1168 ], [ %1094, %1074 ]
  %1186 = phi float [ %760, %750 ], [ %760, %872 ], [ %760, %959 ], [ %760, %834 ], [ %1171, %1168 ], [ %1095, %1074 ]
  %1187 = phi i32 [ %761, %750 ], [ %873, %872 ], [ %873, %959 ], [ %761, %834 ], [ %873, %1168 ], [ %873, %1074 ]
  %1188 = add nuw i32 %762, 1
  %1189 = icmp eq i32 %1188, %137
  br i1 %1189, label %1190, label %750

; <label>:1190                                    ; preds = %1176
  %1191 = icmp eq i32 %1187, 0
  br i1 %1191, label %1223, label %1192, !dx.controlflow.hints !74

; <label>:1192                                    ; preds = %1190
  %1193 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1194 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1195 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  br i1 %718, label %1223, label %1196, !dx.controlflow.hints !75

; <label>:1196                                    ; preds = %1192
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1178, float %1179, float %1180, float %1178, float %1179, float %1180)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = call float @dx.op.unary.f32(i32 25, float %1197)  ; Rsqrt(value)
  %1199 = fmul fast float %1198, %1178
  %1200 = fmul fast float %1198, %1179
  %1201 = fmul fast float %1198, %1180
  %1202 = fmul fast float %1199, %713
  %1203 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %714, float %1202)  ; FMad(a,b,c)
  %1204 = fmul fast float %1199, %711
  %1205 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %712, float %1204)  ; FMad(a,b,c)
  %1206 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %715, float %1205)  ; FMad(a,b,c)
  %1207 = fmul fast float %1199, %708
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %709, float %1207)  ; FMad(a,b,c)
  %1209 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %710, float %1208)  ; FMad(a,b,c)
  %1210 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1211 = call float @dx.op.unary.f32(i32 6, float %1206)  ; FAbs(value)
  %1212 = fadd fast float %1210, %1209
  %1213 = fadd fast float %1212, %1211
  %1214 = fdiv fast float 1.000000e+00, %1213
  %1215 = fadd fast float %1206, %1203
  %1216 = fsub fast float %1203, %1206
  %1217 = fmul fast float %1215, 5.000000e-01
  %1218 = fmul fast float %1217, %1214
  %1219 = fadd fast float %1218, 5.000000e-01
  %1220 = fmul fast float %1216, 5.000000e-01
  %1221 = fmul fast float %1220, %1214
  %1222 = fadd fast float %1221, 5.000000e-01
  br label %1223

; <label>:1223                                    ; preds = %1196, %1192, %1190, %127
  %1224 = phi float [ %130, %127 ], [ %130, %1192 ], [ %1177, %1196 ], [ %130, %1190 ]
  %1225 = phi float [ %131, %127 ], [ %131, %1192 ], [ %1182, %1196 ], [ %131, %1190 ]
  %1226 = phi float [ %132, %127 ], [ %132, %1192 ], [ %1219, %1196 ], [ %132, %1190 ]
  %1227 = phi float [ %133, %127 ], [ %133, %1192 ], [ %1181, %1196 ], [ %133, %1190 ]
  %1228 = phi float [ %134, %127 ], [ %134, %1192 ], [ %1222, %1196 ], [ %134, %1190 ]
  %1229 = phi float [ %101, %127 ], [ %1193, %1192 ], [ %1193, %1196 ], [ %101, %1190 ]
  %1230 = phi float [ %109, %127 ], [ %1194, %1192 ], [ %1194, %1196 ], [ %109, %1190 ]
  %1231 = phi float [ %117, %127 ], [ %1195, %1192 ], [ %1195, %1196 ], [ %117, %1190 ]
  %1232 = phi float [ %135, %127 ], [ %1183, %1192 ], [ %1183, %1196 ], [ %135, %1190 ]
  %1233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1234 = extractvalue %dx.types.CBufRet.i32 %1233, 1
  %1235 = icmp eq i32 %1234, 5
  %1236 = fcmp fast ole float %1229, 0x3F69A5C380000000
  %1237 = fcmp fast ole float %1230, 0x3F69A5C380000000
  %1238 = fcmp fast ole float %1231, 0x3F69A5C380000000
  %1239 = fmul fast float %1229, 0x4029D70A40000000
  %1240 = fmul fast float %1230, 0x4029D70A40000000
  %1241 = fmul fast float %1231, 0x4029D70A40000000
  %1242 = call float @dx.op.unary.f32(i32 23, float %1229)  ; Log(value)
  %1243 = call float @dx.op.unary.f32(i32 23, float %1230)  ; Log(value)
  %1244 = call float @dx.op.unary.f32(i32 23, float %1231)  ; Log(value)
  %1245 = fmul fast float %1242, 0x3FDAAAAAA0000000
  %1246 = fmul fast float %1243, 0x3FDAAAAAA0000000
  %1247 = fmul fast float %1244, 0x3FDAAAAAA0000000
  %1248 = call float @dx.op.unary.f32(i32 21, float %1245)  ; Exp(value)
  %1249 = call float @dx.op.unary.f32(i32 21, float %1246)  ; Exp(value)
  %1250 = call float @dx.op.unary.f32(i32 21, float %1247)  ; Exp(value)
  %1251 = fmul fast float %1248, 0x3FF0E147A0000000
  %1252 = fmul fast float %1249, 0x3FF0E147A0000000
  %1253 = fmul fast float %1250, 0x3FF0E147A0000000
  %1254 = fadd fast float %1251, 0xBFAC28F5C0000000
  %1255 = fadd fast float %1252, 0xBFAC28F5C0000000
  %1256 = fadd fast float %1253, 0xBFAC28F5C0000000
  %1257 = select i1 %1236, float %1239, float %1254
  %1258 = select i1 %1237, float %1240, float %1255
  %1259 = select i1 %1238, float %1241, float %1256
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %71, i32 %14, i32 undef, float %1257, float %1258, float %1259, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br i1 %1235, label %1274, label %1260, !dx.controlflow.hints !76

; <label>:1260                                    ; preds = %1223
  %1261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.i32 %1261, 1
  switch i32 %1262, label %1272 [
    i32 1, label %1263
    i32 2, label %1264
    i32 3, label %1271
  ], !dx.controlflow.hints !77

; <label>:1263                                    ; preds = %1260
  br label %1272

; <label>:1264                                    ; preds = %1260
  %1265 = fcmp fast une float %1224, 0.000000e+00
  %1266 = call float @dx.op.unary.f32(i32 23, float %1224)  ; Log(value)
  %1267 = fadd fast float %1266, 1.600000e+01
  %1268 = fmul fast float %1267, 3.125000e-02
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1270 = select i1 %1265, float %1269, float 0.000000e+00
  br label %1272

; <label>:1271                                    ; preds = %1260
  br label %1272

; <label>:1272                                    ; preds = %1271, %1264, %1263, %1260
  %1273 = phi float [ 0.000000e+00, %1260 ], [ %128, %1271 ], [ %1270, %1264 ], [ %129, %1263 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %71, i32 %14, i32 undef, float %1226, float %1228, float %1227, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %71, i32 %14, i32 undef, float %1232, float %1225, float %1273, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1274

; <label>:1274                                    ; preds = %1272, %1223
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !14, !18, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 2, i32 0, !7}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 1, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %GfxVirtualTexturingComposite* undef, !"", i32 0, i32 0, i32 1, i32 4208, null}
!20 = !{!21, !22, !23}
!21 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!24 = !{void ()* @cs_compose_volume_decals_to_scratch_vhm_with_cutout, !"cs_compose_volume_decals_to_scratch_vhm_with_cutout", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 8, i32 8, i32 1}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !34, !35, !36}
!32 = distinct !{!32, !33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %pageIndex"}
!33 = distinct !{!33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z"}
!34 = distinct !{!34, !33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsLo"}
!35 = distinct !{!35, !33, !"\01?GetPageIndexAndTileDataBits@@YAXIIV?$vector@I$02@@AIAI11@Z: %tileDataBitsHi"}
!36 = distinct !{!36, !37, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z: %agg.result"}
!37 = distinct !{!37, !"\01?CompositeScratch_InitContext@@YA?AUCompositeScratchContext@@IV?$vector@I$02@@0_N@Z"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !29, i64 0}
!46 = !{!47, !49, !50, !51}
!47 = distinct !{!47, !48, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z: %albedoMetalness"}
!48 = distinct !{!48, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z"}
!49 = distinct !{!49, !48, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z: %normalOcclusionGloss"}
!50 = distinct !{!50, !48, !"\01?VHM_ApplyDecalsAvt@@YAXV?$vector@M$01@@MAIAV?$vector@M$03@@11@Z: %emissive"}
!51 = distinct !{!51, !52, !"\01?VHM_CompositeScratch_VolumeDecals@@YAXIUCompositeScratchContext@@UCompositeScratchResults@@@Z: %results"}
!52 = distinct !{!52, !"\01?VHM_CompositeScratch_VolumeDecals@@YAXIUCompositeScratchContext@@UCompositeScratchResults@@@Z"}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 1}
!54 = !{!55, !57, !58, !60, !61, !62, !64, !65, !47, !49, !50, !51}
!55 = distinct !{!55, !56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!56 = distinct !{!56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!57 = distinct !{!57, !56, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!58 = distinct !{!58, !59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentX"}
!59 = distinct !{!59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z"}
!60 = distinct !{!60, !59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %tangentY"}
!61 = distinct !{!61, !59, !"\01?VHM_SampleTangentFrameAtWorldPos@@YAXV?$vector@M$01@@MMAIAV?$vector@M$02@@11@Z: %normal"}
!62 = distinct !{!62, !63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentX"}
!63 = distinct !{!63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z"}
!64 = distinct !{!64, !63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %tangentY"}
!65 = distinct !{!65, !63, !"\01?EstimateTangentFrameAtVTUVs@@YAXV?$Texture2D@V?$vector@M$03@@@@IV?$vector@M$01@@UPaddedUVs@@V2@MAIAV?$vector@M$02@@44@Z: %normal"}
!66 = !{!62, !64, !65, !47, !49, !50, !51}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}

