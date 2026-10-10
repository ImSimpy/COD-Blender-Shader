;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
; SV_Depth                 0    N/A   oDepth    DEPTH   float    YES
;
; shader hash: afedc11c34ed6b6b2950f44ad92d37c7
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=1
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORDS                0                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
; SV_Depth                 0                              
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3             t3     1
;                                   texture     f32          2d      T4             t4     1
;                                   texture     f32          2d      T5             t5     1
;                                   texture     f32          2d      T6             t6     1
;                                   texture     f32          2d      T7             t7     1
;                                   texture     f32          2d      T8             t8     1
;                                   texture     f32          2d      T9             t9     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
;   output 3 depends on inputs: { 4, 5 }
;   output 4 depends on inputs: { 4, 5 }
;   output 5 depends on inputs: { 4, 5 }
;   output 6 depends on inputs: { 4, 5 }
;   output 7 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %19 = fmul fast float %17, 0x3FF7EF9DC0000000
  %20 = fmul fast float %18, 0x3FF7EF9DC0000000
  %21 = fsub fast float %14, %19
  %22 = fsub fast float %15, %20
  %23 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %11, float %21, float %22, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  %25 = extractvalue %dx.types.ResRet.f32 %23, 1
  %26 = extractvalue %dx.types.ResRet.f32 %23, 2
  %27 = extractvalue %dx.types.ResRet.f32 %23, 3
  %28 = bitcast float %24 to i32
  %29 = bitcast float %25 to i32
  %30 = bitcast float %26 to i32
  %31 = bitcast float %27 to i32
  %32 = call i32 @dx.op.binary.i32(i32 40, i32 %29, i32 %30)  ; UMin(a,b)
  %33 = call i32 @dx.op.binary.i32(i32 40, i32 %32, i32 %31)  ; UMin(a,b)
  %34 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 %33)  ; UMin(a,b)
  %35 = fadd fast float %19, %14
  %36 = fadd fast float %20, %15
  %37 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %11, float %35, float %36, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = extractvalue %dx.types.ResRet.f32 %37, 1
  %40 = extractvalue %dx.types.ResRet.f32 %37, 2
  %41 = extractvalue %dx.types.ResRet.f32 %37, 3
  %42 = bitcast float %38 to i32
  %43 = bitcast float %39 to i32
  %44 = bitcast float %40 to i32
  %45 = bitcast float %41 to i32
  %46 = call i32 @dx.op.binary.i32(i32 40, i32 %43, i32 %44)  ; UMin(a,b)
  %47 = call i32 @dx.op.binary.i32(i32 40, i32 %46, i32 %45)  ; UMin(a,b)
  %48 = call i32 @dx.op.binary.i32(i32 40, i32 %42, i32 %47)  ; UMin(a,b)
  %49 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 %48)  ; UMin(a,b)
  %50 = lshr i32 %49, 11
  %51 = and i32 %49, 2047
  %52 = and i32 %50, 2047
  %53 = uitofp i32 %51 to float
  %54 = uitofp i32 %52 to float
  %55 = fmul fast float %53, 0x3F50040100000000
  %56 = fmul fast float %54, 0x3F50040100000000
  %57 = fadd fast float %55, -1.000000e+00
  %58 = fadd fast float %56, -1.000000e+00
  %59 = lshr i32 %49, 22
  %60 = shl nuw nsw i32 %59, 5
  %61 = call float @dx.op.legacyF16ToF32(i32 131, i32 %60)  ; LegacyF16ToF32(value)
  %62 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %63 = call float @dx.op.unary.f32(i32 6, float %58)  ; FAbs(value)
  %64 = fadd fast float %62, -5.000000e-01
  %65 = fadd fast float %63, -5.000000e-01
  %66 = fmul fast float %64, 2.000000e+00
  %67 = fmul fast float %65, 2.000000e+00
  %68 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %69 = call float @dx.op.unary.f32(i32 7, float %67)  ; Saturate(value)
  %70 = fmul fast float %62, 2.000000e+00
  %71 = fmul fast float %63, 2.000000e+00
  %72 = call float @dx.op.unary.f32(i32 7, float %70)  ; Saturate(value)
  %73 = call float @dx.op.unary.f32(i32 7, float %71)  ; Saturate(value)
  %74 = fmul fast float %68, %68
  %75 = fmul fast float %74, 0x3FA48888A0000000
  %76 = fmul fast float %69, %69
  %77 = fmul fast float %76, 0x3FB2407960000000
  %78 = fmul fast float %72, 0x3F599999A0000000
  %79 = fmul fast float %73, 0x3F66C16C20000000
  %80 = fadd fast float %78, %75
  %81 = fadd fast float %79, %77
  %82 = fsub fast float -0.000000e+00, %80
  %83 = fsub fast float -0.000000e+00, %81
  %84 = fcmp fast olt float %57, 0.000000e+00
  %85 = fcmp fast olt float %58, 0.000000e+00
  %86 = select i1 %84, float 0.000000e+00, float 1.000000e+00
  %87 = select i1 %85, float 0.000000e+00, float 1.000000e+00
  %88 = fcmp fast une float %86, 0.000000e+00
  %89 = fcmp fast une float %87, 0.000000e+00
  %90 = select i1 %88, float %80, float %82
  %91 = select i1 %89, float %81, float %83
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %94 = fptosi float %93 to i32
  %95 = extractvalue %dx.types.CBufRet.f32 %16, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %97 = fmul fast float %14, 2.000000e+00
  %98 = fmul fast float %97, %95
  %99 = fmul fast float %15, 2.000000e+00
  %100 = fmul fast float %99, %96
  %101 = fadd fast float %98, -5.000000e-01
  %102 = fadd fast float %100, -5.000000e-01
  %103 = fptosi float %101 to i32
  %104 = fptosi float %102 to i32
  %105 = and i32 %103, 1
  %106 = and i32 %104, 1
  %107 = icmp ne i32 %105, 0
  %108 = icmp ne i32 %94, 0
  %109 = and i1 %108, %107
  %110 = select i1 %109, float 1.500000e+00, float 5.000000e-01
  %111 = icmp eq i32 %94, 0
  %112 = and i1 %111, %107
  %113 = select i1 %112, float 1.500000e+00, float 5.000000e-01
  %114 = icmp ne i32 %106, 0
  %115 = and i1 %108, %114
  %116 = select i1 %115, float 1.500000e+00, float 5.000000e-01
  %117 = and i1 %111, %114
  %118 = select i1 %117, float 1.500000e+00, float 5.000000e-01
  %119 = call float @dx.op.unary.f32(i32 27, float %101)  ; Round_ni(value)
  %120 = call float @dx.op.unary.f32(i32 27, float %102)  ; Round_ni(value)
  %121 = fadd fast float %110, %119
  %122 = fadd fast float %116, %120
  %123 = fmul fast float %121, 5.000000e-01
  %124 = fmul fast float %122, 5.000000e-01
  %125 = call float @dx.op.unary.f32(i32 27, float %123)  ; Round_ni(value)
  %126 = call float @dx.op.unary.f32(i32 27, float %124)  ; Round_ni(value)
  %127 = fadd fast float %125, 5.000000e-01
  %128 = fadd fast float %126, 5.000000e-01
  %129 = fmul fast float %127, %17
  %130 = fmul fast float %128, %18
  %131 = fadd fast float %113, %119
  %132 = fadd fast float %118, %120
  %133 = fmul fast float %131, 5.000000e-01
  %134 = fmul fast float %132, 5.000000e-01
  %135 = call float @dx.op.unary.f32(i32 27, float %133)  ; Round_ni(value)
  %136 = call float @dx.op.unary.f32(i32 27, float %134)  ; Round_ni(value)
  %137 = fadd fast float %135, 5.000000e-01
  %138 = fadd fast float %136, 5.000000e-01
  %139 = fmul fast float %137, %17
  %140 = fmul fast float %138, %18
  %141 = call float @dx.op.unary.f32(i32 22, float %101)  ; Frc(value)
  %142 = call float @dx.op.unary.f32(i32 22, float %102)  ; Frc(value)
  %143 = icmp ne i32 %94, %105
  %144 = icmp ne i32 %94, %106
  %145 = fsub fast float 1.000000e+00, %141
  %146 = fsub fast float 1.000000e+00, %142
  %147 = select i1 %143, float %141, float %145
  %148 = select i1 %144, float %142, float %146
  %149 = fsub fast float %139, %90
  %150 = fsub fast float %140, %91
  %151 = fmul fast float %95, %149
  %152 = fmul fast float %96, %150
  %153 = call float @dx.op.unary.f32(i32 27, float %151)  ; Round_ni(value)
  %154 = call float @dx.op.unary.f32(i32 27, float %152)  ; Round_ni(value)
  %155 = fadd fast float %153, 5.000000e-01
  %156 = fadd fast float %154, 5.000000e-01
  %157 = fmul fast float %155, %17
  %158 = fmul fast float %156, %18
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %129, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %12, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fcmp fast ogt float %160, 0.000000e+00
  %164 = fadd fast float %160, 0xBFB1111120000000
  %165 = fmul fast float %164, 0x3FF1249240000000
  %166 = call float @dx.op.unary.f32(i32 7, float %165)  ; Saturate(value)
  %167 = fadd fast float %162, 0xBFB1111120000000
  %168 = fmul fast float %167, 0x3FF1249240000000
  %169 = call float @dx.op.unary.f32(i32 7, float %168)  ; Saturate(value)
  %170 = fsub fast float %166, %169
  %171 = call float @dx.op.unary.f32(i32 6, float %170)  ; FAbs(value)
  %172 = fadd fast float %169, %166
  %173 = bitcast float %172 to i32
  %174 = sub nsw i32 2129859010, %173
  %175 = bitcast i32 %174 to float
  %176 = fmul fast float %171, 0x4005555560000000
  %177 = fmul fast float %176, %175
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = call float @dx.op.binary.f32(i32 36, float %166, float %169)  ; FMin(a,b)
  %181 = fmul fast float %180, 4.000000e+01
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = call float @dx.op.binary.f32(i32 36, float %179, float %182)  ; FMin(a,b)
  %184 = fmul fast float %183, 5.000000e-01
  %185 = fadd fast float %184, 5.000000e-01
  %186 = select i1 %163, float %185, float 0.000000e+00
  %187 = select i1 %163, float %183, float 1.000000e+00
  %188 = fmul fast float %187, %147
  %189 = fsub fast float %129, %14
  %190 = fsub fast float %130, %15
  %191 = fmul fast float %187, %189
  %192 = fmul fast float %187, %190
  %193 = fadd fast float %191, %14
  %194 = fadd fast float %192, %15
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = extractvalue %dx.types.ResRet.f32 %199, 1
  %202 = extractvalue %dx.types.ResRet.f32 %199, 2
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %205 = fmul fast float %204, 0x3F78181820000000
  %206 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %208 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %209 = fsub fast float %196, %200
  %210 = fsub fast float %197, %201
  %211 = fsub fast float %198, %202
  %212 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %213 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %214 = call float @dx.op.unary.f32(i32 6, float %211)  ; FAbs(value)
  %215 = call float @dx.op.dot3.f32(i32 55, float %212, float %213, float %214, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = fcmp fast ogt float %215, %205
  br i1 %216, label %217, label %737, !dx.controlflow.hints !37

; <label>:217                                     ; preds = %0
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %221 = fmul fast float %219, 0x3FF7EF9DC0000000
  %222 = fmul fast float %220, 0x3FF7EF9DC0000000
  %223 = fsub fast float %157, %221
  %224 = fsub fast float %158, %222
  %225 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = extractvalue %dx.types.ResRet.f32 %225, 2
  %229 = extractvalue %dx.types.ResRet.f32 %225, 3
  %230 = bitcast float %226 to i32
  %231 = bitcast float %227 to i32
  %232 = bitcast float %228 to i32
  %233 = bitcast float %229 to i32
  %234 = call i32 @dx.op.binary.i32(i32 40, i32 %231, i32 %232)  ; UMin(a,b)
  %235 = call i32 @dx.op.binary.i32(i32 40, i32 %234, i32 %233)  ; UMin(a,b)
  %236 = call i32 @dx.op.binary.i32(i32 40, i32 %230, i32 %235)  ; UMin(a,b)
  %237 = fadd fast float %221, %157
  %238 = fadd fast float %222, %158
  %239 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %237, float %238, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = extractvalue %dx.types.ResRet.f32 %239, 3
  %244 = bitcast float %240 to i32
  %245 = bitcast float %241 to i32
  %246 = bitcast float %242 to i32
  %247 = bitcast float %243 to i32
  %248 = call i32 @dx.op.binary.i32(i32 40, i32 %245, i32 %246)  ; UMin(a,b)
  %249 = call i32 @dx.op.binary.i32(i32 40, i32 %248, i32 %247)  ; UMin(a,b)
  %250 = call i32 @dx.op.binary.i32(i32 40, i32 %244, i32 %249)  ; UMin(a,b)
  %251 = call i32 @dx.op.binary.i32(i32 40, i32 %236, i32 %250)  ; UMin(a,b)
  %252 = lshr i32 %251, 11
  %253 = and i32 %251, 2047
  %254 = and i32 %252, 2047
  %255 = uitofp i32 %253 to float
  %256 = uitofp i32 %254 to float
  %257 = fmul fast float %255, 0x3F50040100000000
  %258 = fmul fast float %256, 0x3F50040100000000
  %259 = fadd fast float %257, -1.000000e+00
  %260 = fadd fast float %258, -1.000000e+00
  %261 = lshr i32 %251, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %265 = call float @dx.op.unary.f32(i32 6, float %260)  ; FAbs(value)
  %266 = fadd fast float %264, -5.000000e-01
  %267 = fadd fast float %265, -5.000000e-01
  %268 = fmul fast float %266, 2.000000e+00
  %269 = fmul fast float %267, 2.000000e+00
  %270 = call float @dx.op.unary.f32(i32 7, float %268)  ; Saturate(value)
  %271 = call float @dx.op.unary.f32(i32 7, float %269)  ; Saturate(value)
  %272 = fmul fast float %264, 2.000000e+00
  %273 = fmul fast float %265, 2.000000e+00
  %274 = call float @dx.op.unary.f32(i32 7, float %272)  ; Saturate(value)
  %275 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %276 = fmul fast float %270, %270
  %277 = fmul fast float %276, 0x3FA48888A0000000
  %278 = fmul fast float %271, %271
  %279 = fmul fast float %278, 0x3FB2407960000000
  %280 = fmul fast float %274, 0x3F599999A0000000
  %281 = fmul fast float %275, 0x3F66C16C20000000
  %282 = fadd fast float %280, %277
  %283 = fadd fast float %281, %279
  %284 = fsub fast float -0.000000e+00, %282
  %285 = fsub fast float -0.000000e+00, %283
  %286 = fcmp fast olt float %259, 0.000000e+00
  %287 = fcmp fast olt float %260, 0.000000e+00
  %288 = select i1 %286, float 0.000000e+00, float 1.000000e+00
  %289 = select i1 %287, float 0.000000e+00, float 1.000000e+00
  %290 = fcmp fast une float %288, 0.000000e+00
  %291 = fcmp fast une float %289, 0.000000e+00
  %292 = select i1 %290, float %282, float %284
  %293 = select i1 %291, float %283, float %285
  %294 = fmul fast float %90, 1.920000e+03
  %295 = fmul fast float %91, 1.080000e+03
  %296 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %297 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %298 = call float @dx.op.binary.f32(i32 35, float %296, float %297)  ; FMax(a,b)
  %299 = fsub fast float 8.000000e+01, %298
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = fsub fast float %90, %292
  %302 = fmul fast float %301, 1.920000e+03
  %303 = fsub fast float %91, %293
  %304 = fmul fast float %303, 1.080000e+03
  %305 = call float @dx.op.unary.f32(i32 6, float %302)  ; FAbs(value)
  %306 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %307 = call float @dx.op.binary.f32(i32 35, float %305, float %306)  ; FMax(a,b)
  %308 = fmul fast float %307, 0x3FF5555560000000
  %309 = fsub fast float 2.000000e+00, %308
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = fadd fast float %157, -5.000000e-01
  %312 = fadd fast float %158, -5.000000e-01
  %313 = call float @dx.op.unary.f32(i32 6, float %311)  ; FAbs(value)
  %314 = call float @dx.op.unary.f32(i32 6, float %312)  ; FAbs(value)
  %315 = fadd fast float %313, -5.000000e-01
  %316 = fadd fast float %314, -5.000000e-01
  %317 = call float @dx.op.binary.f32(i32 35, float %315, float %316)  ; FMax(a,b)
  %318 = fcmp fast olt float %317, 0.000000e+00
  %319 = fmul fast float %61, 0x3FB99999A0000000
  %320 = fadd fast float %263, %319
  %321 = fcmp fast olt float %61, %320
  %322 = select i1 %318, float %300, float 0.000000e+00
  %323 = fmul fast float %322, %310
  %324 = select i1 %321, float %322, float %323
  %325 = fsub fast float %193, %219
  %326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %325, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = extractvalue %dx.types.ResRet.f32 %326, 1
  %329 = extractvalue %dx.types.ResRet.f32 %326, 2
  %330 = fadd fast float %219, %193
  %331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %330, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %332 = extractvalue %dx.types.ResRet.f32 %331, 0
  %333 = extractvalue %dx.types.ResRet.f32 %331, 1
  %334 = extractvalue %dx.types.ResRet.f32 %331, 2
  %335 = fsub fast float %194, %220
  %336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %193, float %335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %337 = extractvalue %dx.types.ResRet.f32 %336, 0
  %338 = extractvalue %dx.types.ResRet.f32 %336, 1
  %339 = extractvalue %dx.types.ResRet.f32 %336, 2
  %340 = fadd fast float %220, %194
  %341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %193, float %340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %342 = extractvalue %dx.types.ResRet.f32 %341, 0
  %343 = extractvalue %dx.types.ResRet.f32 %341, 1
  %344 = extractvalue %dx.types.ResRet.f32 %341, 2
  %345 = fmul fast float %327, %327
  %346 = fmul fast float %328, %328
  %347 = fmul fast float %329, %329
  %348 = fmul fast float %332, %332
  %349 = fmul fast float %333, %333
  %350 = fmul fast float %334, %334
  %351 = fmul fast float %337, %337
  %352 = fmul fast float %338, %338
  %353 = fmul fast float %339, %339
  %354 = fmul fast float %342, %342
  %355 = fmul fast float %343, %343
  %356 = fmul fast float %344, %344
  %357 = fmul fast float %196, 4.000000e+00
  %358 = fmul fast float %197, 4.000000e+00
  %359 = fmul fast float %198, 4.000000e+00
  %360 = fadd fast float %327, %357
  %361 = fadd fast float %360, %332
  %362 = fadd fast float %361, %337
  %363 = fadd fast float %362, %342
  %364 = fadd fast float %328, %358
  %365 = fadd fast float %364, %333
  %366 = fadd fast float %365, %338
  %367 = fadd fast float %366, %343
  %368 = fadd fast float %329, %359
  %369 = fadd fast float %368, %334
  %370 = fadd fast float %369, %339
  %371 = fadd fast float %370, %344
  %372 = fmul fast float %196, %196
  %373 = fmul fast float %372, 4.000000e+00
  %374 = fmul fast float %197, %197
  %375 = fmul fast float %374, 4.000000e+00
  %376 = fmul fast float %198, %198
  %377 = fmul fast float %376, 4.000000e+00
  %378 = fadd fast float %345, %373
  %379 = fadd fast float %378, %348
  %380 = fadd fast float %379, %351
  %381 = fadd fast float %380, %354
  %382 = fadd fast float %346, %375
  %383 = fadd fast float %382, %349
  %384 = fadd fast float %383, %352
  %385 = fadd fast float %384, %355
  %386 = fadd fast float %347, %377
  %387 = fadd fast float %386, %350
  %388 = fadd fast float %387, %353
  %389 = fadd fast float %388, %356
  %390 = fmul fast float %363, 1.250000e-01
  %391 = fmul fast float %367, 1.250000e-01
  %392 = fmul fast float %371, 1.250000e-01
  %393 = fmul fast float %381, 1.250000e-01
  %394 = fmul fast float %385, 1.250000e-01
  %395 = fmul fast float %389, 1.250000e-01
  %396 = fmul fast float %390, %390
  %397 = fmul fast float %391, %391
  %398 = fmul fast float %392, %392
  %399 = fsub fast float %393, %396
  %400 = fsub fast float %394, %397
  %401 = fsub fast float %395, %398
  %402 = call float @dx.op.binary.f32(i32 35, float %399, float 0.000000e+00)  ; FMax(a,b)
  %403 = call float @dx.op.binary.f32(i32 35, float %400, float 0.000000e+00)  ; FMax(a,b)
  %404 = call float @dx.op.binary.f32(i32 35, float %401, float 0.000000e+00)  ; FMax(a,b)
  %405 = bitcast float %402 to i32
  %406 = ashr i32 %405, 1
  %407 = add nsw i32 %406, 532487669
  %408 = bitcast i32 %407 to float
  %409 = bitcast float %403 to i32
  %410 = ashr i32 %409, 1
  %411 = add nsw i32 %410, 532487669
  %412 = bitcast i32 %411 to float
  %413 = bitcast float %404 to i32
  %414 = ashr i32 %413, 1
  %415 = add nsw i32 %414, 532487669
  %416 = bitcast i32 %415 to float
  %417 = fsub fast float -0.000000e+00, %219
  %418 = select i1 %143, float %417, float %219
  %419 = fsub fast float -0.000000e+00, %220
  %420 = select i1 %144, float %419, float %220
  %421 = fsub fast float %193, %418
  %422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %421, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = fsub fast float %194, %420
  %427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %193, float %426, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = fadd fast float %418, %157
  %432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %431, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %433 = extractvalue %dx.types.ResRet.f32 %432, 0
  %434 = extractvalue %dx.types.ResRet.f32 %432, 1
  %435 = extractvalue %dx.types.ResRet.f32 %432, 2
  %436 = fadd fast float %420, %158
  %437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %157, float %436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %438 = extractvalue %dx.types.ResRet.f32 %437, 0
  %439 = extractvalue %dx.types.ResRet.f32 %437, 1
  %440 = extractvalue %dx.types.ResRet.f32 %437, 2
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %445 = fsub fast float %423, %196
  %446 = fsub fast float %424, %197
  %447 = fsub fast float %425, %198
  %448 = call float @dx.op.unary.f32(i32 6, float %445)  ; FAbs(value)
  %449 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  %450 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  %451 = call float @dx.op.dot3.f32(i32 55, float %448, float %449, float %450, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fsub fast float %200, %433
  %453 = fsub fast float %201, %434
  %454 = fsub fast float %202, %435
  %455 = call float @dx.op.unary.f32(i32 6, float %452)  ; FAbs(value)
  %456 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %457 = call float @dx.op.unary.f32(i32 6, float %454)  ; FAbs(value)
  %458 = call float @dx.op.dot3.f32(i32 55, float %455, float %456, float %457, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = fsub fast float %200, %438
  %460 = fsub fast float %201, %439
  %461 = fsub fast float %202, %440
  %462 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %463 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  %464 = call float @dx.op.unary.f32(i32 6, float %461)  ; FAbs(value)
  %465 = call float @dx.op.dot3.f32(i32 55, float %462, float %463, float %464, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %466 = fsub fast float %428, %196
  %467 = fsub fast float %429, %197
  %468 = fsub fast float %430, %198
  %469 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %470 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  %471 = call float @dx.op.unary.f32(i32 6, float %468)  ; FAbs(value)
  %472 = call float @dx.op.dot3.f32(i32 55, float %469, float %470, float %471, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = call float @dx.op.binary.f32(i32 35, float %465, float 0x3F50624DE0000000)  ; FMax(a,b)
  %474 = call float @dx.op.binary.f32(i32 35, float %472, float 0x3F50624DE0000000)  ; FMax(a,b)
  %475 = fmul fast float %474, %473
  %476 = call float @dx.op.binary.f32(i32 35, float %451, float 0x3F50624DE0000000)  ; FMax(a,b)
  %477 = call float @dx.op.binary.f32(i32 35, float %458, float 0x3F50624DE0000000)  ; FMax(a,b)
  %478 = fmul fast float %477, %476
  %479 = fadd fast float %478, %475
  %480 = fadd fast float %423, %196
  %481 = fadd fast float %424, %197
  %482 = fadd fast float %425, %198
  %483 = fmul fast float %475, %480
  %484 = fmul fast float %475, %481
  %485 = fmul fast float %475, %482
  %486 = fadd fast float %438, %200
  %487 = fadd fast float %439, %201
  %488 = fadd fast float %440, %202
  %489 = fmul fast float %478, %486
  %490 = fmul fast float %478, %487
  %491 = fmul fast float %478, %488
  %492 = fadd fast float %489, %483
  %493 = fadd fast float %490, %484
  %494 = fadd fast float %491, %485
  %495 = fdiv fast float 5.000000e-01, %479
  %496 = fmul fast float %492, %495
  %497 = fmul fast float %493, %495
  %498 = fmul fast float %494, %495
  %499 = fadd fast float %433, %200
  %500 = fadd fast float %434, %201
  %501 = fadd fast float %435, %202
  %502 = fmul fast float %475, %499
  %503 = fmul fast float %475, %500
  %504 = fmul fast float %475, %501
  %505 = fadd fast float %428, %196
  %506 = fadd fast float %429, %197
  %507 = fadd fast float %430, %198
  %508 = fmul fast float %478, %505
  %509 = fmul fast float %478, %506
  %510 = fmul fast float %478, %507
  %511 = fadd fast float %508, %502
  %512 = fadd fast float %509, %503
  %513 = fadd fast float %510, %504
  %514 = fmul fast float %511, %495
  %515 = fmul fast float %512, %495
  %516 = fmul fast float %513, %495
  %517 = fsub fast float 1.000000e+00, %148
  %518 = fsub fast float %496, %200
  %519 = fsub fast float %497, %201
  %520 = fsub fast float %498, %202
  %521 = fmul fast float %518, %517
  %522 = fmul fast float %519, %517
  %523 = fmul fast float %520, %517
  %524 = fadd fast float %521, %200
  %525 = fadd fast float %522, %201
  %526 = fadd fast float %523, %202
  %527 = fsub fast float %514, %196
  %528 = fsub fast float %515, %197
  %529 = fsub fast float %516, %198
  %530 = fmul fast float %527, %148
  %531 = fmul fast float %528, %148
  %532 = fmul fast float %529, %148
  %533 = fadd fast float %530, %196
  %534 = fadd fast float %531, %197
  %535 = fadd fast float %532, %198
  %536 = fmul fast float %433, %423
  %537 = fmul fast float %434, %424
  %538 = fmul fast float %435, %425
  %539 = fmul fast float %438, %428
  %540 = fmul fast float %439, %429
  %541 = fmul fast float %440, %430
  %542 = fadd fast float %539, %536
  %543 = fadd fast float %540, %537
  %544 = fadd fast float %541, %538
  %545 = fmul fast float %533, %533
  %546 = fmul fast float %545, 2.000000e+00
  %547 = fmul fast float %534, %534
  %548 = fmul fast float %547, 2.000000e+00
  %549 = fmul fast float %535, %535
  %550 = fmul fast float %549, 2.000000e+00
  %551 = fsub fast float %546, %542
  %552 = fsub fast float %548, %543
  %553 = fsub fast float %550, %544
  %554 = fmul fast float %551, 1.250000e-01
  %555 = fmul fast float %552, 1.250000e-01
  %556 = fmul fast float %553, 1.250000e-01
  %557 = fadd fast float %554, %533
  %558 = fadd fast float %555, %534
  %559 = fadd fast float %556, %535
  %560 = fmul fast float %524, %524
  %561 = fmul fast float %560, 2.000000e+00
  %562 = fmul fast float %525, %525
  %563 = fmul fast float %562, 2.000000e+00
  %564 = fmul fast float %526, %526
  %565 = fmul fast float %564, 2.000000e+00
  %566 = fsub fast float %561, %542
  %567 = fsub fast float %563, %543
  %568 = fsub fast float %565, %544
  %569 = fmul fast float %566, 1.250000e-01
  %570 = fmul fast float %567, 1.250000e-01
  %571 = fmul fast float %568, 1.250000e-01
  %572 = fadd fast float %569, %524
  %573 = fadd fast float %570, %525
  %574 = fadd fast float %571, %526
  %575 = fsub fast float %193, %90
  %576 = fsub fast float %194, %91
  %577 = fsub fast float %575, %292
  %578 = fsub fast float %576, %293
  %579 = fadd fast float %157, %90
  %580 = fmul fast float %292, -3.000000e+00
  %581 = fadd fast float %579, %580
  %582 = fadd fast float %158, %91
  %583 = fmul fast float %293, -3.000000e+00
  %584 = fadd fast float %582, %583
  %585 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %587 = fmul fast float %585, %577
  %588 = fmul fast float %586, %578
  %589 = call float @dx.op.unary.f32(i32 27, float %587)  ; Round_ni(value)
  %590 = call float @dx.op.unary.f32(i32 27, float %588)  ; Round_ni(value)
  %591 = fadd fast float %589, 5.000000e-01
  %592 = fadd fast float %590, 5.000000e-01
  %593 = fmul fast float %591, %219
  %594 = fmul fast float %592, %220
  %595 = call float @dx.op.dot3.f32(i32 55, float %196, float %197, float %198, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = call float @dx.op.dot3.f32(i32 55, float %337, float %338, float %339, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %598 = call float @dx.op.dot3.f32(i32 55, float %327, float %328, float %329, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = call float @dx.op.dot3.f32(i32 55, float %332, float %333, float %334, float %442, float %443, float %444)  ; Dot3(ax,ay,az,bx,by,bz)
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %593, float %594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = fsub fast float %595, %601
  %603 = call float @dx.op.unary.f32(i32 6, float %602)  ; FAbs(value)
  %604 = fsub fast float %594, %220
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %593, float %604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = fsub fast float %596, %606
  %608 = call float @dx.op.unary.f32(i32 6, float %607)  ; FAbs(value)
  %609 = fadd fast float %608, %603
  %610 = fadd fast float %220, %594
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %593, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fsub fast float %597, %612
  %614 = call float @dx.op.unary.f32(i32 6, float %613)  ; FAbs(value)
  %615 = fadd fast float %609, %614
  %616 = fsub fast float %593, %219
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %616, float %594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = fsub fast float %598, %618
  %620 = call float @dx.op.unary.f32(i32 6, float %619)  ; FAbs(value)
  %621 = fadd fast float %615, %620
  %622 = fadd fast float %219, %593
  %623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %622, float %594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 0
  %625 = fsub fast float %599, %624
  %626 = call float @dx.op.unary.f32(i32 6, float %625)  ; FAbs(value)
  %627 = fadd fast float %621, %626
  %628 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = extractvalue %dx.types.ResRet.f32 %628, 3
  %633 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %581, float %584, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = extractvalue %dx.types.ResRet.f32 %633, 3
  %638 = fsub fast float %629, %637
  %639 = fsub fast float %630, %634
  %640 = fsub fast float %631, %635
  %641 = fsub fast float %632, %636
  %642 = call float @dx.op.unary.f32(i32 6, float %638)  ; FAbs(value)
  %643 = call float @dx.op.unary.f32(i32 6, float %639)  ; FAbs(value)
  %644 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %645 = call float @dx.op.unary.f32(i32 6, float %641)  ; FAbs(value)
  %646 = fsub fast float %629, %636
  %647 = fsub fast float %630, %637
  %648 = fsub fast float %631, %634
  %649 = fsub fast float %632, %635
  %650 = call float @dx.op.unary.f32(i32 6, float %646)  ; FAbs(value)
  %651 = call float @dx.op.unary.f32(i32 6, float %647)  ; FAbs(value)
  %652 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %653 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %654 = fsub fast float %629, %635
  %655 = fsub fast float %630, %636
  %656 = fsub fast float %631, %637
  %657 = fsub fast float %632, %634
  %658 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %659 = call float @dx.op.unary.f32(i32 6, float %655)  ; FAbs(value)
  %660 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %661 = call float @dx.op.unary.f32(i32 6, float %657)  ; FAbs(value)
  %662 = call float @dx.op.binary.f32(i32 36, float %658, float %650)  ; FMin(a,b)
  %663 = call float @dx.op.binary.f32(i32 36, float %659, float %651)  ; FMin(a,b)
  %664 = call float @dx.op.binary.f32(i32 36, float %660, float %652)  ; FMin(a,b)
  %665 = call float @dx.op.binary.f32(i32 36, float %661, float %653)  ; FMin(a,b)
  %666 = call float @dx.op.binary.f32(i32 36, float %662, float %642)  ; FMin(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float %663, float %643)  ; FMin(a,b)
  %668 = call float @dx.op.binary.f32(i32 36, float %664, float %644)  ; FMin(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float %665, float %645)  ; FMin(a,b)
  %670 = fsub fast float %629, %634
  %671 = fsub fast float %630, %635
  %672 = fsub fast float %631, %636
  %673 = fsub fast float %632, %637
  %674 = call float @dx.op.unary.f32(i32 6, float %670)  ; FAbs(value)
  %675 = call float @dx.op.unary.f32(i32 6, float %671)  ; FAbs(value)
  %676 = call float @dx.op.unary.f32(i32 6, float %672)  ; FAbs(value)
  %677 = call float @dx.op.unary.f32(i32 6, float %673)  ; FAbs(value)
  %678 = call float @dx.op.binary.f32(i32 36, float %674, float %666)  ; FMin(a,b)
  %679 = call float @dx.op.binary.f32(i32 36, float %675, float %667)  ; FMin(a,b)
  %680 = call float @dx.op.binary.f32(i32 36, float %676, float %668)  ; FMin(a,b)
  %681 = call float @dx.op.binary.f32(i32 36, float %677, float %669)  ; FMin(a,b)
  %682 = call float @dx.op.dot4.f32(i32 56, float %678, float %679, float %680, float %681, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %683 = fadd fast float %627, %682
  %684 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %685 = fmul fast float %684, 0x3F98181820000000
  %686 = fdiv fast float 0xC04C555540000000, %684
  %687 = fsub fast float %683, %685
  %688 = fmul fast float %687, %686
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fmul fast float %298, 0x3FB0842100000000
  %691 = fadd fast float %690, 0xBFA0842100000000
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = fmul fast float %692, 2.000000e+00
  %694 = fsub fast float 3.000000e+00, %693
  %695 = fmul fast float %694, %324
  %696 = fmul fast float %695, 5.000000e-01
  %697 = fmul fast float %696, %408
  %698 = fmul fast float %696, %412
  %699 = fmul fast float %696, %416
  %700 = fsub fast float %390, %697
  %701 = fsub fast float %391, %698
  %702 = fsub fast float %392, %699
  %703 = fadd fast float %697, %390
  %704 = fadd fast float %698, %391
  %705 = fadd fast float %699, %392
  %706 = call float @dx.op.binary.f32(i32 35, float %572, float %700)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 35, float %573, float %701)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 35, float %574, float %702)  ; FMax(a,b)
  %709 = call float @dx.op.binary.f32(i32 36, float %706, float %703)  ; FMin(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %707, float %704)  ; FMin(a,b)
  %711 = call float @dx.op.binary.f32(i32 36, float %708, float %705)  ; FMin(a,b)
  %712 = fmul fast float %689, %324
  %713 = fsub fast float %572, %709
  %714 = fsub fast float %573, %710
  %715 = fsub fast float %574, %711
  %716 = fmul fast float %713, %712
  %717 = fmul fast float %714, %712
  %718 = fmul fast float %715, %712
  %719 = fadd fast float %716, %709
  %720 = fadd fast float %717, %710
  %721 = fadd fast float %718, %711
  %722 = call float @dx.op.binary.f32(i32 35, float %557, float %700)  ; FMax(a,b)
  %723 = call float @dx.op.binary.f32(i32 35, float %558, float %701)  ; FMax(a,b)
  %724 = call float @dx.op.binary.f32(i32 35, float %559, float %702)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 36, float %722, float %703)  ; FMin(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %723, float %704)  ; FMin(a,b)
  %727 = call float @dx.op.binary.f32(i32 36, float %724, float %705)  ; FMin(a,b)
  %728 = fsub fast float %557, %725
  %729 = fsub fast float %558, %726
  %730 = fsub fast float %559, %727
  %731 = fmul fast float %728, %712
  %732 = fmul fast float %729, %712
  %733 = fmul fast float %730, %712
  %734 = fadd fast float %731, %725
  %735 = fadd fast float %732, %726
  %736 = fadd fast float %733, %727
  br label %737

; <label>:737                                     ; preds = %217, %0
  %738 = phi float [ %734, %217 ], [ %196, %0 ]
  %739 = phi float [ %735, %217 ], [ %197, %0 ]
  %740 = phi float [ %736, %217 ], [ %198, %0 ]
  %741 = phi float [ %719, %217 ], [ %200, %0 ]
  %742 = phi float [ %720, %217 ], [ %201, %0 ]
  %743 = phi float [ %721, %217 ], [ %202, %0 ]
  %744 = phi float [ %324, %217 ], [ 1.000000e+00, %0 ]
  %745 = fsub fast float %741, %738
  %746 = fsub fast float %742, %739
  %747 = fsub fast float %743, %740
  %748 = fmul fast float %745, %188
  %749 = fmul fast float %746, %188
  %750 = fmul fast float %747, %188
  %751 = fadd fast float %748, %738
  %752 = fadd fast float %749, %739
  %753 = fadd fast float %750, %740
  %754 = fmul fast float %744, %186
  %755 = fsub fast float %14, %90
  %756 = fsub fast float %15, %91
  %757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %755, float %756, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %763 = fmul fast float %762, 0x3F78181820000000
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %767 = fsub fast float %751, %758
  %768 = fsub fast float %752, %759
  %769 = fsub fast float %753, %760
  %770 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %771 = call float @dx.op.unary.f32(i32 6, float %768)  ; FAbs(value)
  %772 = call float @dx.op.unary.f32(i32 6, float %769)  ; FAbs(value)
  %773 = call float @dx.op.dot3.f32(i32 55, float %770, float %771, float %772, float %764, float %765, float %766)  ; Dot3(ax,ay,az,bx,by,bz)
  %774 = fcmp fast ogt float %773, %763
  %775 = and i1 %163, %774
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %751)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %752)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %753)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %754)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %751)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %752)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %753)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %754)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %776 = select i1 %775, float 0.000000e+00, float 1.000000e+00
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %776)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!22}
!dx.entryPoints = !{!23}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !17, !19}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!17 = !{!18}
!18 = !{i32 0, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{[8 x i32] [i32 6, i32 8, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255]}
!23 = !{void ()* @ps_main, !"ps_main", !24, !4, null}
!24 = !{!25, !30, null}
!25 = !{!26, !28}
!26 = !{i32 0, !"SV_Position", i8 9, i8 3, !27, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!27 = !{i32 0}
!28 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !27, i8 2, i32 1, i8 2, i32 1, i8 0, !29}
!29 = !{i32 3, i32 3}
!30 = !{!31, !33, !35}
!31 = !{i32 0, !"SV_Target", i8 9, i8 16, !27, i8 0, i32 1, i8 4, i32 0, i8 0, !32}
!32 = !{i32 3, i32 15}
!33 = !{i32 1, !"SV_Target", i8 9, i8 16, !34, i8 0, i32 1, i8 4, i32 1, i8 0, !32}
!34 = !{i32 1}
!35 = !{i32 2, !"SV_Depth", i8 9, i8 17, !27, i8 0, i32 1, i8 1, i32 -1, i8 -1, !36}
!36 = !{i32 3, i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}

