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
; shader hash: ae6f37da43ec3c2ec7db0bccd26e8abc
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
  %50 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %11, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = extractvalue %dx.types.ResRet.f32 %50, 1
  %53 = extractvalue %dx.types.ResRet.f32 %50, 2
  %54 = extractvalue %dx.types.ResRet.f32 %50, 3
  %55 = bitcast float %51 to i32
  %56 = bitcast float %52 to i32
  %57 = bitcast float %53 to i32
  %58 = bitcast float %54 to i32
  %59 = call i32 @dx.op.binary.i32(i32 40, i32 %56, i32 %57)  ; UMin(a,b)
  %60 = call i32 @dx.op.binary.i32(i32 40, i32 %59, i32 %58)  ; UMin(a,b)
  %61 = call i32 @dx.op.binary.i32(i32 40, i32 %55, i32 %60)  ; UMin(a,b)
  %62 = call i32 @dx.op.binary.i32(i32 40, i32 %49, i32 %61)  ; UMin(a,b)
  %63 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %11, float %21, float %36, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = extractvalue %dx.types.ResRet.f32 %63, 1
  %66 = extractvalue %dx.types.ResRet.f32 %63, 2
  %67 = extractvalue %dx.types.ResRet.f32 %63, 3
  %68 = bitcast float %64 to i32
  %69 = bitcast float %65 to i32
  %70 = bitcast float %66 to i32
  %71 = bitcast float %67 to i32
  %72 = call i32 @dx.op.binary.i32(i32 40, i32 %69, i32 %70)  ; UMin(a,b)
  %73 = call i32 @dx.op.binary.i32(i32 40, i32 %72, i32 %71)  ; UMin(a,b)
  %74 = call i32 @dx.op.binary.i32(i32 40, i32 %68, i32 %73)  ; UMin(a,b)
  %75 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %11, float %35, float %22, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = extractvalue %dx.types.ResRet.f32 %75, 1
  %78 = extractvalue %dx.types.ResRet.f32 %75, 2
  %79 = extractvalue %dx.types.ResRet.f32 %75, 3
  %80 = bitcast float %76 to i32
  %81 = bitcast float %77 to i32
  %82 = bitcast float %78 to i32
  %83 = bitcast float %79 to i32
  %84 = call i32 @dx.op.binary.i32(i32 40, i32 %81, i32 %82)  ; UMin(a,b)
  %85 = call i32 @dx.op.binary.i32(i32 40, i32 %84, i32 %83)  ; UMin(a,b)
  %86 = call i32 @dx.op.binary.i32(i32 40, i32 %80, i32 %85)  ; UMin(a,b)
  %87 = call i32 @dx.op.binary.i32(i32 40, i32 %74, i32 %86)  ; UMin(a,b)
  %88 = call i32 @dx.op.binary.i32(i32 40, i32 %62, i32 %87)  ; UMin(a,b)
  %89 = lshr i32 %88, 11
  %90 = and i32 %88, 2047
  %91 = and i32 %89, 2047
  %92 = uitofp i32 %90 to float
  %93 = uitofp i32 %91 to float
  %94 = fmul fast float %92, 0x3F50040100000000
  %95 = fmul fast float %93, 0x3F50040100000000
  %96 = fadd fast float %94, -1.000000e+00
  %97 = fadd fast float %95, -1.000000e+00
  %98 = lshr i32 %88, 22
  %99 = shl nuw nsw i32 %98, 5
  %100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %99)  ; LegacyF16ToF32(value)
  %101 = call float @dx.op.unary.f32(i32 6, float %96)  ; FAbs(value)
  %102 = call float @dx.op.unary.f32(i32 6, float %97)  ; FAbs(value)
  %103 = fadd fast float %101, -5.000000e-01
  %104 = fadd fast float %102, -5.000000e-01
  %105 = fmul fast float %103, 2.000000e+00
  %106 = fmul fast float %104, 2.000000e+00
  %107 = call float @dx.op.unary.f32(i32 7, float %105)  ; Saturate(value)
  %108 = call float @dx.op.unary.f32(i32 7, float %106)  ; Saturate(value)
  %109 = fmul fast float %101, 2.000000e+00
  %110 = fmul fast float %102, 2.000000e+00
  %111 = call float @dx.op.unary.f32(i32 7, float %109)  ; Saturate(value)
  %112 = call float @dx.op.unary.f32(i32 7, float %110)  ; Saturate(value)
  %113 = fmul fast float %107, %107
  %114 = fmul fast float %113, 0x3FA48888A0000000
  %115 = fmul fast float %108, %108
  %116 = fmul fast float %115, 0x3FB2407960000000
  %117 = fmul fast float %111, 0x3F599999A0000000
  %118 = fmul fast float %112, 0x3F66C16C20000000
  %119 = fadd fast float %117, %114
  %120 = fadd fast float %118, %116
  %121 = fsub fast float -0.000000e+00, %119
  %122 = fsub fast float -0.000000e+00, %120
  %123 = fcmp fast olt float %96, 0.000000e+00
  %124 = fcmp fast olt float %97, 0.000000e+00
  %125 = select i1 %123, float 0.000000e+00, float 1.000000e+00
  %126 = select i1 %124, float 0.000000e+00, float 1.000000e+00
  %127 = fcmp fast une float %125, 0.000000e+00
  %128 = fcmp fast une float %126, 0.000000e+00
  %129 = select i1 %127, float %119, float %121
  %130 = select i1 %128, float %120, float %122
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %133 = fptosi float %132 to i32
  %134 = extractvalue %dx.types.CBufRet.f32 %16, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %136 = fmul fast float %14, 2.000000e+00
  %137 = fmul fast float %136, %134
  %138 = fmul fast float %15, 2.000000e+00
  %139 = fmul fast float %138, %135
  %140 = fadd fast float %137, -5.000000e-01
  %141 = fadd fast float %139, -5.000000e-01
  %142 = fptosi float %140 to i32
  %143 = fptosi float %141 to i32
  %144 = and i32 %142, 1
  %145 = and i32 %143, 1
  %146 = icmp ne i32 %144, 0
  %147 = icmp ne i32 %133, 0
  %148 = and i1 %147, %146
  %149 = select i1 %148, float 1.500000e+00, float 5.000000e-01
  %150 = icmp eq i32 %133, 0
  %151 = and i1 %150, %146
  %152 = select i1 %151, float 1.500000e+00, float 5.000000e-01
  %153 = icmp ne i32 %145, 0
  %154 = and i1 %147, %153
  %155 = select i1 %154, float 1.500000e+00, float 5.000000e-01
  %156 = and i1 %150, %153
  %157 = select i1 %156, float 1.500000e+00, float 5.000000e-01
  %158 = call float @dx.op.unary.f32(i32 27, float %140)  ; Round_ni(value)
  %159 = call float @dx.op.unary.f32(i32 27, float %141)  ; Round_ni(value)
  %160 = fadd fast float %149, %158
  %161 = fadd fast float %155, %159
  %162 = fmul fast float %160, 5.000000e-01
  %163 = fmul fast float %161, 5.000000e-01
  %164 = call float @dx.op.unary.f32(i32 27, float %162)  ; Round_ni(value)
  %165 = call float @dx.op.unary.f32(i32 27, float %163)  ; Round_ni(value)
  %166 = fadd fast float %164, 5.000000e-01
  %167 = fadd fast float %165, 5.000000e-01
  %168 = fmul fast float %166, %17
  %169 = fmul fast float %167, %18
  %170 = fadd fast float %152, %158
  %171 = fadd fast float %157, %159
  %172 = fmul fast float %170, 5.000000e-01
  %173 = fmul fast float %171, 5.000000e-01
  %174 = call float @dx.op.unary.f32(i32 27, float %172)  ; Round_ni(value)
  %175 = call float @dx.op.unary.f32(i32 27, float %173)  ; Round_ni(value)
  %176 = fadd fast float %174, 5.000000e-01
  %177 = fadd fast float %175, 5.000000e-01
  %178 = fmul fast float %176, %17
  %179 = fmul fast float %177, %18
  %180 = call float @dx.op.unary.f32(i32 22, float %140)  ; Frc(value)
  %181 = call float @dx.op.unary.f32(i32 22, float %141)  ; Frc(value)
  %182 = icmp ne i32 %133, %144
  %183 = icmp ne i32 %133, %145
  %184 = fsub fast float 1.000000e+00, %180
  %185 = fsub fast float 1.000000e+00, %181
  %186 = select i1 %182, float %180, float %184
  %187 = select i1 %183, float %181, float %185
  %188 = fsub fast float %178, %129
  %189 = fsub fast float %179, %130
  %190 = fmul fast float %134, %188
  %191 = fmul fast float %135, %189
  %192 = call float @dx.op.unary.f32(i32 27, float %190)  ; Round_ni(value)
  %193 = call float @dx.op.unary.f32(i32 27, float %191)  ; Round_ni(value)
  %194 = fadd fast float %192, 5.000000e-01
  %195 = fadd fast float %193, 5.000000e-01
  %196 = fmul fast float %194, %17
  %197 = fmul fast float %195, %18
  %198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %12, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fcmp fast ogt float %199, 0.000000e+00
  %203 = fadd fast float %199, 0xBFB1111120000000
  %204 = fmul fast float %203, 0x3FF1249240000000
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fadd fast float %201, 0xBFB1111120000000
  %207 = fmul fast float %206, 0x3FF1249240000000
  %208 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %209 = fsub fast float %205, %208
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = fadd fast float %208, %205
  %212 = bitcast float %211 to i32
  %213 = sub nsw i32 2129859010, %212
  %214 = bitcast i32 %213 to float
  %215 = fmul fast float %210, 0x4005555560000000
  %216 = fmul fast float %215, %214
  %217 = fsub fast float 1.000000e+00, %216
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = call float @dx.op.binary.f32(i32 36, float %205, float %208)  ; FMin(a,b)
  %220 = fmul fast float %219, 4.000000e+01
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = call float @dx.op.binary.f32(i32 36, float %218, float %221)  ; FMin(a,b)
  %223 = fmul fast float %222, 5.000000e-01
  %224 = fadd fast float %223, 5.000000e-01
  %225 = select i1 %202, float %224, float 0.000000e+00
  %226 = select i1 %202, float %222, float 1.000000e+00
  %227 = fmul fast float %226, %186
  %228 = fsub fast float %168, %14
  %229 = fsub fast float %169, %15
  %230 = fmul fast float %226, %228
  %231 = fmul fast float %226, %229
  %232 = fadd fast float %230, %14
  %233 = fadd fast float %231, %15
  %234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %232, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %235 = extractvalue %dx.types.ResRet.f32 %234, 0
  %236 = extractvalue %dx.types.ResRet.f32 %234, 1
  %237 = extractvalue %dx.types.ResRet.f32 %234, 2
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %244 = fmul fast float %243, 0x3F60101020000000
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %248 = fsub fast float %235, %239
  %249 = fsub fast float %236, %240
  %250 = fsub fast float %237, %241
  %251 = call float @dx.op.unary.f32(i32 6, float %248)  ; FAbs(value)
  %252 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %253 = call float @dx.op.unary.f32(i32 6, float %250)  ; FAbs(value)
  %254 = call float @dx.op.dot3.f32(i32 55, float %251, float %252, float %253, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %255 = fcmp fast ogt float %254, %244
  br i1 %255, label %256, label %1106, !dx.controlflow.hints !37

; <label>:256                                     ; preds = %0
  %257 = fadd fast float %192, 0xBFEFDF3B80000000
  %258 = fmul fast float %17, %257
  %259 = fadd fast float %193, 0xBFEFDF3B80000000
  %260 = fmul fast float %18, %259
  %261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %258, float %260, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = extractvalue %dx.types.ResRet.f32 %261, 3
  %266 = bitcast float %262 to i32
  %267 = bitcast float %263 to i32
  %268 = bitcast float %264 to i32
  %269 = bitcast float %265 to i32
  %270 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 %268)  ; UMin(a,b)
  %271 = call i32 @dx.op.binary.i32(i32 40, i32 %270, i32 %269)  ; UMin(a,b)
  %272 = call i32 @dx.op.binary.i32(i32 40, i32 %266, i32 %271)  ; UMin(a,b)
  %273 = fadd fast float %192, 0x3FFFEF9DC0000000
  %274 = fmul fast float %17, %273
  %275 = fadd fast float %193, 0x3FFFEF9DC0000000
  %276 = fmul fast float %18, %275
  %277 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %274, float %276, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = bitcast float %278 to i32
  %283 = bitcast float %279 to i32
  %284 = bitcast float %280 to i32
  %285 = bitcast float %281 to i32
  %286 = call i32 @dx.op.binary.i32(i32 40, i32 %283, i32 %284)  ; UMin(a,b)
  %287 = call i32 @dx.op.binary.i32(i32 40, i32 %286, i32 %285)  ; UMin(a,b)
  %288 = call i32 @dx.op.binary.i32(i32 40, i32 %282, i32 %287)  ; UMin(a,b)
  %289 = call i32 @dx.op.binary.i32(i32 40, i32 %272, i32 %288)  ; UMin(a,b)
  %290 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  %295 = bitcast float %291 to i32
  %296 = bitcast float %292 to i32
  %297 = bitcast float %293 to i32
  %298 = bitcast float %294 to i32
  %299 = call i32 @dx.op.binary.i32(i32 40, i32 %296, i32 %297)  ; UMin(a,b)
  %300 = call i32 @dx.op.binary.i32(i32 40, i32 %299, i32 %298)  ; UMin(a,b)
  %301 = call i32 @dx.op.binary.i32(i32 40, i32 %295, i32 %300)  ; UMin(a,b)
  %302 = call i32 @dx.op.binary.i32(i32 40, i32 %289, i32 %301)  ; UMin(a,b)
  %303 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %258, float %276, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = extractvalue %dx.types.ResRet.f32 %303, 3
  %308 = bitcast float %304 to i32
  %309 = bitcast float %305 to i32
  %310 = bitcast float %306 to i32
  %311 = bitcast float %307 to i32
  %312 = call i32 @dx.op.binary.i32(i32 40, i32 %309, i32 %310)  ; UMin(a,b)
  %313 = call i32 @dx.op.binary.i32(i32 40, i32 %312, i32 %311)  ; UMin(a,b)
  %314 = call i32 @dx.op.binary.i32(i32 40, i32 %308, i32 %313)  ; UMin(a,b)
  %315 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %274, float %260, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = bitcast float %316 to i32
  %321 = bitcast float %317 to i32
  %322 = bitcast float %318 to i32
  %323 = bitcast float %319 to i32
  %324 = call i32 @dx.op.binary.i32(i32 40, i32 %321, i32 %322)  ; UMin(a,b)
  %325 = call i32 @dx.op.binary.i32(i32 40, i32 %324, i32 %323)  ; UMin(a,b)
  %326 = call i32 @dx.op.binary.i32(i32 40, i32 %320, i32 %325)  ; UMin(a,b)
  %327 = call i32 @dx.op.binary.i32(i32 40, i32 %314, i32 %326)  ; UMin(a,b)
  %328 = call i32 @dx.op.binary.i32(i32 40, i32 %302, i32 %327)  ; UMin(a,b)
  %329 = lshr i32 %328, 11
  %330 = and i32 %328, 2047
  %331 = and i32 %329, 2047
  %332 = uitofp i32 %330 to float
  %333 = uitofp i32 %331 to float
  %334 = fmul fast float %332, 0x3F50040100000000
  %335 = fmul fast float %333, 0x3F50040100000000
  %336 = fadd fast float %334, -1.000000e+00
  %337 = fadd fast float %335, -1.000000e+00
  %338 = lshr i32 %328, 22
  %339 = shl nuw nsw i32 %338, 5
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %342 = call float @dx.op.unary.f32(i32 6, float %337)  ; FAbs(value)
  %343 = fadd fast float %341, -5.000000e-01
  %344 = fadd fast float %342, -5.000000e-01
  %345 = fmul fast float %343, 2.000000e+00
  %346 = fmul fast float %344, 2.000000e+00
  %347 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %348 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %349 = fmul fast float %341, 2.000000e+00
  %350 = fmul fast float %342, 2.000000e+00
  %351 = call float @dx.op.unary.f32(i32 7, float %349)  ; Saturate(value)
  %352 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %353 = fmul fast float %347, %347
  %354 = fmul fast float %353, 0x3FA48888A0000000
  %355 = fmul fast float %348, %348
  %356 = fmul fast float %355, 0x3FB2407960000000
  %357 = fmul fast float %351, 0x3F599999A0000000
  %358 = fmul fast float %352, 0x3F66C16C20000000
  %359 = fadd fast float %357, %354
  %360 = fadd fast float %358, %356
  %361 = fsub fast float -0.000000e+00, %359
  %362 = fsub fast float -0.000000e+00, %360
  %363 = fcmp fast olt float %336, 0.000000e+00
  %364 = fcmp fast olt float %337, 0.000000e+00
  %365 = select i1 %363, float 0.000000e+00, float 1.000000e+00
  %366 = select i1 %364, float 0.000000e+00, float 1.000000e+00
  %367 = fcmp fast une float %365, 0.000000e+00
  %368 = fcmp fast une float %366, 0.000000e+00
  %369 = select i1 %367, float %359, float %361
  %370 = select i1 %368, float %360, float %362
  %371 = fmul fast float %129, 1.920000e+03
  %372 = fmul fast float %130, 1.080000e+03
  %373 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %374 = call float @dx.op.unary.f32(i32 6, float %372)  ; FAbs(value)
  %375 = call float @dx.op.binary.f32(i32 35, float %373, float %374)  ; FMax(a,b)
  %376 = fsub fast float 8.000000e+01, %375
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %378 = fsub fast float %129, %369
  %379 = fmul fast float %378, 1.920000e+03
  %380 = fsub fast float %130, %370
  %381 = fmul fast float %380, 1.080000e+03
  %382 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %383 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %384 = call float @dx.op.binary.f32(i32 35, float %382, float %383)  ; FMax(a,b)
  %385 = fmul fast float %384, 0x3FF5555560000000
  %386 = fsub fast float 2.000000e+00, %385
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fadd fast float %196, -5.000000e-01
  %389 = fadd fast float %197, -5.000000e-01
  %390 = call float @dx.op.unary.f32(i32 6, float %388)  ; FAbs(value)
  %391 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %392 = fadd fast float %390, -5.000000e-01
  %393 = fadd fast float %391, -5.000000e-01
  %394 = call float @dx.op.binary.f32(i32 35, float %392, float %393)  ; FMax(a,b)
  %395 = fcmp fast olt float %394, 0.000000e+00
  %396 = fmul fast float %100, 0x3FB99999A0000000
  %397 = fadd fast float %340, %396
  %398 = fcmp fast olt float %100, %397
  %399 = select i1 %395, float %377, float 0.000000e+00
  %400 = fmul fast float %399, %387
  %401 = select i1 %398, float %399, float %400
  %402 = fsub fast float %232, %17
  %403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %402, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %404 = extractvalue %dx.types.ResRet.f32 %403, 0
  %405 = extractvalue %dx.types.ResRet.f32 %403, 1
  %406 = extractvalue %dx.types.ResRet.f32 %403, 2
  %407 = fadd fast float %17, %232
  %408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %407, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %409 = extractvalue %dx.types.ResRet.f32 %408, 0
  %410 = extractvalue %dx.types.ResRet.f32 %408, 1
  %411 = extractvalue %dx.types.ResRet.f32 %408, 2
  %412 = fsub fast float %233, %18
  %413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %232, float %412, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = fadd fast float %18, %233
  %418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %232, float %417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %419 = extractvalue %dx.types.ResRet.f32 %418, 0
  %420 = extractvalue %dx.types.ResRet.f32 %418, 1
  %421 = extractvalue %dx.types.ResRet.f32 %418, 2
  %422 = fmul fast float %404, %404
  %423 = fmul fast float %405, %405
  %424 = fmul fast float %406, %406
  %425 = fmul fast float %409, %409
  %426 = fmul fast float %410, %410
  %427 = fmul fast float %411, %411
  %428 = fmul fast float %414, %414
  %429 = fmul fast float %415, %415
  %430 = fmul fast float %416, %416
  %431 = fmul fast float %419, %419
  %432 = fmul fast float %420, %420
  %433 = fmul fast float %421, %421
  %434 = fmul fast float %235, 4.000000e+00
  %435 = fmul fast float %236, 4.000000e+00
  %436 = fmul fast float %237, 4.000000e+00
  %437 = fadd fast float %404, %434
  %438 = fadd fast float %437, %409
  %439 = fadd fast float %438, %414
  %440 = fadd fast float %439, %419
  %441 = fadd fast float %405, %435
  %442 = fadd fast float %441, %410
  %443 = fadd fast float %442, %415
  %444 = fadd fast float %443, %420
  %445 = fadd fast float %406, %436
  %446 = fadd fast float %445, %411
  %447 = fadd fast float %446, %416
  %448 = fadd fast float %447, %421
  %449 = fmul fast float %235, %235
  %450 = fmul fast float %449, 4.000000e+00
  %451 = fmul fast float %236, %236
  %452 = fmul fast float %451, 4.000000e+00
  %453 = fmul fast float %237, %237
  %454 = fmul fast float %453, 4.000000e+00
  %455 = fadd fast float %422, %450
  %456 = fadd fast float %455, %425
  %457 = fadd fast float %456, %428
  %458 = fadd fast float %457, %431
  %459 = fadd fast float %423, %452
  %460 = fadd fast float %459, %426
  %461 = fadd fast float %460, %429
  %462 = fadd fast float %461, %432
  %463 = fadd fast float %424, %454
  %464 = fadd fast float %463, %427
  %465 = fadd fast float %464, %430
  %466 = fadd fast float %465, %433
  %467 = fmul fast float %440, 1.250000e-01
  %468 = fmul fast float %444, 1.250000e-01
  %469 = fmul fast float %448, 1.250000e-01
  %470 = fmul fast float %458, 1.250000e-01
  %471 = fmul fast float %462, 1.250000e-01
  %472 = fmul fast float %466, 1.250000e-01
  %473 = fmul fast float %467, %467
  %474 = fmul fast float %468, %468
  %475 = fmul fast float %469, %469
  %476 = fsub fast float %470, %473
  %477 = fsub fast float %471, %474
  %478 = fsub fast float %472, %475
  %479 = call float @dx.op.binary.f32(i32 35, float %476, float 0.000000e+00)  ; FMax(a,b)
  %480 = call float @dx.op.binary.f32(i32 35, float %477, float 0.000000e+00)  ; FMax(a,b)
  %481 = call float @dx.op.binary.f32(i32 35, float %478, float 0.000000e+00)  ; FMax(a,b)
  %482 = bitcast float %479 to i32
  %483 = ashr i32 %482, 1
  %484 = add nsw i32 %483, 532487669
  %485 = bitcast i32 %484 to float
  %486 = bitcast float %480 to i32
  %487 = ashr i32 %486, 1
  %488 = add nsw i32 %487, 532487669
  %489 = bitcast i32 %488 to float
  %490 = bitcast float %481 to i32
  %491 = ashr i32 %490, 1
  %492 = add nsw i32 %491, 532487669
  %493 = bitcast i32 %492 to float
  %494 = fsub fast float -0.000000e+00, %17
  %495 = select i1 %182, float %494, float %17
  %496 = fsub fast float -0.000000e+00, %18
  %497 = select i1 %183, float %496, float %18
  %498 = fsub fast float %232, %495
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %498, float %233, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = extractvalue %dx.types.ResRet.f32 %499, 1
  %502 = extractvalue %dx.types.ResRet.f32 %499, 2
  %503 = fsub fast float %233, %497
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %232, float %503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = fadd fast float %495, %196
  %509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %508, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = fadd fast float %497, %197
  %514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %196, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = fsub fast float %500, %235
  %519 = fsub fast float %501, %236
  %520 = fsub fast float %502, %237
  %521 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %522 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %523 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %524 = call float @dx.op.dot3.f32(i32 55, float %521, float %522, float %523, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = fsub fast float %239, %510
  %526 = fsub fast float %240, %511
  %527 = fsub fast float %241, %512
  %528 = call float @dx.op.unary.f32(i32 6, float %525)  ; FAbs(value)
  %529 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %530 = call float @dx.op.unary.f32(i32 6, float %527)  ; FAbs(value)
  %531 = call float @dx.op.dot3.f32(i32 55, float %528, float %529, float %530, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %532 = fsub fast float %239, %515
  %533 = fsub fast float %240, %516
  %534 = fsub fast float %241, %517
  %535 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %536 = call float @dx.op.unary.f32(i32 6, float %533)  ; FAbs(value)
  %537 = call float @dx.op.unary.f32(i32 6, float %534)  ; FAbs(value)
  %538 = call float @dx.op.dot3.f32(i32 55, float %535, float %536, float %537, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = fsub fast float %505, %235
  %540 = fsub fast float %506, %236
  %541 = fsub fast float %507, %237
  %542 = call float @dx.op.unary.f32(i32 6, float %539)  ; FAbs(value)
  %543 = call float @dx.op.unary.f32(i32 6, float %540)  ; FAbs(value)
  %544 = call float @dx.op.unary.f32(i32 6, float %541)  ; FAbs(value)
  %545 = call float @dx.op.dot3.f32(i32 55, float %542, float %543, float %544, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.binary.f32(i32 35, float %538, float 0x3F50624DE0000000)  ; FMax(a,b)
  %547 = call float @dx.op.binary.f32(i32 35, float %545, float 0x3F50624DE0000000)  ; FMax(a,b)
  %548 = fmul fast float %547, %546
  %549 = call float @dx.op.binary.f32(i32 35, float %524, float 0x3F50624DE0000000)  ; FMax(a,b)
  %550 = call float @dx.op.binary.f32(i32 35, float %531, float 0x3F50624DE0000000)  ; FMax(a,b)
  %551 = fmul fast float %550, %549
  %552 = fadd fast float %551, %548
  %553 = fadd fast float %500, %235
  %554 = fadd fast float %501, %236
  %555 = fadd fast float %502, %237
  %556 = fmul fast float %548, %553
  %557 = fmul fast float %548, %554
  %558 = fmul fast float %548, %555
  %559 = fadd fast float %515, %239
  %560 = fadd fast float %516, %240
  %561 = fadd fast float %517, %241
  %562 = fmul fast float %551, %559
  %563 = fmul fast float %551, %560
  %564 = fmul fast float %551, %561
  %565 = fadd fast float %562, %556
  %566 = fadd fast float %563, %557
  %567 = fadd fast float %564, %558
  %568 = fdiv fast float 5.000000e-01, %552
  %569 = fmul fast float %565, %568
  %570 = fmul fast float %566, %568
  %571 = fmul fast float %567, %568
  %572 = fadd fast float %510, %239
  %573 = fadd fast float %511, %240
  %574 = fadd fast float %512, %241
  %575 = fmul fast float %548, %572
  %576 = fmul fast float %548, %573
  %577 = fmul fast float %548, %574
  %578 = fadd fast float %505, %235
  %579 = fadd fast float %506, %236
  %580 = fadd fast float %507, %237
  %581 = fmul fast float %551, %578
  %582 = fmul fast float %551, %579
  %583 = fmul fast float %551, %580
  %584 = fadd fast float %581, %575
  %585 = fadd fast float %582, %576
  %586 = fadd fast float %583, %577
  %587 = fmul fast float %584, %568
  %588 = fmul fast float %585, %568
  %589 = fmul fast float %586, %568
  %590 = fsub fast float 1.000000e+00, %187
  %591 = fsub fast float %569, %239
  %592 = fsub fast float %570, %240
  %593 = fsub fast float %571, %241
  %594 = fmul fast float %591, %590
  %595 = fmul fast float %592, %590
  %596 = fmul fast float %593, %590
  %597 = fadd fast float %594, %239
  %598 = fadd fast float %595, %240
  %599 = fadd fast float %596, %241
  %600 = fsub fast float %587, %235
  %601 = fsub fast float %588, %236
  %602 = fsub fast float %589, %237
  %603 = fmul fast float %600, %187
  %604 = fmul fast float %601, %187
  %605 = fmul fast float %602, %187
  %606 = fadd fast float %603, %235
  %607 = fadd fast float %604, %236
  %608 = fadd fast float %605, %237
  %609 = fmul fast float %510, %500
  %610 = fmul fast float %511, %501
  %611 = fmul fast float %512, %502
  %612 = fmul fast float %515, %505
  %613 = fmul fast float %516, %506
  %614 = fmul fast float %517, %507
  %615 = fadd fast float %612, %609
  %616 = fadd fast float %613, %610
  %617 = fadd fast float %614, %611
  %618 = fmul fast float %606, %606
  %619 = fmul fast float %618, 2.000000e+00
  %620 = fmul fast float %607, %607
  %621 = fmul fast float %620, 2.000000e+00
  %622 = fmul fast float %608, %608
  %623 = fmul fast float %622, 2.000000e+00
  %624 = fsub fast float %619, %615
  %625 = fsub fast float %621, %616
  %626 = fsub fast float %623, %617
  %627 = fmul fast float %624, 1.250000e-01
  %628 = fmul fast float %625, 1.250000e-01
  %629 = fmul fast float %626, 1.250000e-01
  %630 = fadd fast float %627, %606
  %631 = fadd fast float %628, %607
  %632 = fadd fast float %629, %608
  %633 = fmul fast float %597, %597
  %634 = fmul fast float %633, 2.000000e+00
  %635 = fmul fast float %598, %598
  %636 = fmul fast float %635, 2.000000e+00
  %637 = fmul fast float %599, %599
  %638 = fmul fast float %637, 2.000000e+00
  %639 = fsub fast float %634, %615
  %640 = fsub fast float %636, %616
  %641 = fsub fast float %638, %617
  %642 = fmul fast float %639, 1.250000e-01
  %643 = fmul fast float %640, 1.250000e-01
  %644 = fmul fast float %641, 1.250000e-01
  %645 = fadd fast float %642, %597
  %646 = fadd fast float %643, %598
  %647 = fadd fast float %644, %599
  %648 = fmul fast float %369, 2.000000e+00
  %649 = fmul fast float %370, 2.000000e+00
  %650 = fsub fast float %648, %129
  %651 = fsub fast float %649, %130
  %652 = fsub fast float %232, %129
  %653 = fsub fast float %233, %130
  %654 = fsub fast float %652, %369
  %655 = fsub fast float %653, %370
  %656 = fsub fast float %196, %369
  %657 = fsub fast float %197, %370
  %658 = fsub fast float %656, %650
  %659 = fsub fast float %657, %651
  %660 = fmul fast float %134, %654
  %661 = fmul fast float %135, %655
  %662 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %663 = call float @dx.op.unary.f32(i32 27, float %661)  ; Round_ni(value)
  %664 = fadd fast float %662, 5.000000e-01
  %665 = fadd fast float %663, 5.000000e-01
  %666 = fmul fast float %664, %17
  %667 = fmul fast float %665, %18
  %668 = call float @dx.op.dot3.f32(i32 55, float %235, float %236, float %237, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %669 = call float @dx.op.dot3.f32(i32 55, float %414, float %415, float %416, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %670 = call float @dx.op.dot3.f32(i32 55, float %419, float %420, float %421, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = call float @dx.op.dot3.f32(i32 55, float %404, float %405, float %406, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = call float @dx.op.dot3.f32(i32 55, float %409, float %410, float %411, float %245, float %246, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %666, float %667, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  %678 = fsub fast float %668, %674
  %679 = fsub fast float %668, %675
  %680 = fsub fast float %668, %676
  %681 = fsub fast float %668, %677
  %682 = call float @dx.op.unary.f32(i32 6, float %678)  ; FAbs(value)
  %683 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %684 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %685 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %686 = call float @dx.op.binary.f32(i32 36, float %683, float %684)  ; FMin(a,b)
  %687 = call float @dx.op.binary.f32(i32 36, float %686, float %685)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 36, float %682, float %687)  ; FMin(a,b)
  %689 = fsub fast float %667, %18
  %690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %666, float %689, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = extractvalue %dx.types.ResRet.f32 %690, 3
  %695 = fsub fast float %669, %691
  %696 = fsub fast float %669, %692
  %697 = fsub fast float %669, %693
  %698 = fsub fast float %669, %694
  %699 = call float @dx.op.unary.f32(i32 6, float %695)  ; FAbs(value)
  %700 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %701 = call float @dx.op.unary.f32(i32 6, float %697)  ; FAbs(value)
  %702 = call float @dx.op.unary.f32(i32 6, float %698)  ; FAbs(value)
  %703 = call float @dx.op.binary.f32(i32 36, float %700, float %701)  ; FMin(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float %702)  ; FMin(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %699, float %704)  ; FMin(a,b)
  %706 = fadd fast float %705, %688
  %707 = fadd fast float %18, %667
  %708 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %666, float %707, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = extractvalue %dx.types.ResRet.f32 %708, 2
  %712 = extractvalue %dx.types.ResRet.f32 %708, 3
  %713 = fsub fast float %670, %709
  %714 = fsub fast float %670, %710
  %715 = fsub fast float %670, %711
  %716 = fsub fast float %670, %712
  %717 = call float @dx.op.unary.f32(i32 6, float %713)  ; FAbs(value)
  %718 = call float @dx.op.unary.f32(i32 6, float %714)  ; FAbs(value)
  %719 = call float @dx.op.unary.f32(i32 6, float %715)  ; FAbs(value)
  %720 = call float @dx.op.unary.f32(i32 6, float %716)  ; FAbs(value)
  %721 = call float @dx.op.binary.f32(i32 36, float %718, float %719)  ; FMin(a,b)
  %722 = call float @dx.op.binary.f32(i32 36, float %721, float %720)  ; FMin(a,b)
  %723 = call float @dx.op.binary.f32(i32 36, float %717, float %722)  ; FMin(a,b)
  %724 = fadd fast float %706, %723
  %725 = fsub fast float %666, %17
  %726 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %725, float %667, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = extractvalue %dx.types.ResRet.f32 %726, 3
  %731 = fsub fast float %671, %727
  %732 = fsub fast float %671, %728
  %733 = fsub fast float %671, %729
  %734 = fsub fast float %671, %730
  %735 = call float @dx.op.unary.f32(i32 6, float %731)  ; FAbs(value)
  %736 = call float @dx.op.unary.f32(i32 6, float %732)  ; FAbs(value)
  %737 = call float @dx.op.unary.f32(i32 6, float %733)  ; FAbs(value)
  %738 = call float @dx.op.unary.f32(i32 6, float %734)  ; FAbs(value)
  %739 = call float @dx.op.binary.f32(i32 36, float %736, float %737)  ; FMin(a,b)
  %740 = call float @dx.op.binary.f32(i32 36, float %739, float %738)  ; FMin(a,b)
  %741 = call float @dx.op.binary.f32(i32 36, float %735, float %740)  ; FMin(a,b)
  %742 = fadd fast float %724, %741
  %743 = fadd fast float %17, %666
  %744 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %743, float %667, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = fsub fast float %672, %745
  %750 = fsub fast float %672, %746
  %751 = fsub fast float %672, %747
  %752 = fsub fast float %672, %748
  %753 = call float @dx.op.unary.f32(i32 6, float %749)  ; FAbs(value)
  %754 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %755 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %756 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %757 = call float @dx.op.binary.f32(i32 36, float %754, float %755)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float %756)  ; FMin(a,b)
  %759 = call float @dx.op.binary.f32(i32 36, float %753, float %758)  ; FMin(a,b)
  %760 = fadd fast float %742, %759
  %761 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = extractvalue %dx.types.ResRet.f32 %761, 3
  %766 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %658, float %659, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = fsub fast float %762, %770
  %772 = fsub fast float %763, %767
  %773 = fsub fast float %764, %768
  %774 = fsub fast float %765, %769
  %775 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %776 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %777 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %778 = call float @dx.op.unary.f32(i32 6, float %774)  ; FAbs(value)
  %779 = fsub fast float %762, %769
  %780 = fsub fast float %763, %770
  %781 = fsub fast float %764, %767
  %782 = fsub fast float %765, %768
  %783 = call float @dx.op.unary.f32(i32 6, float %779)  ; FAbs(value)
  %784 = call float @dx.op.unary.f32(i32 6, float %780)  ; FAbs(value)
  %785 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %786 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %787 = fsub fast float %762, %768
  %788 = fsub fast float %763, %769
  %789 = fsub fast float %764, %770
  %790 = fsub fast float %765, %767
  %791 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %792 = call float @dx.op.unary.f32(i32 6, float %788)  ; FAbs(value)
  %793 = call float @dx.op.unary.f32(i32 6, float %789)  ; FAbs(value)
  %794 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %795 = call float @dx.op.binary.f32(i32 36, float %791, float %783)  ; FMin(a,b)
  %796 = call float @dx.op.binary.f32(i32 36, float %792, float %784)  ; FMin(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %793, float %785)  ; FMin(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %794, float %786)  ; FMin(a,b)
  %799 = call float @dx.op.binary.f32(i32 36, float %795, float %775)  ; FMin(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %796, float %776)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %797, float %777)  ; FMin(a,b)
  %802 = call float @dx.op.binary.f32(i32 36, float %798, float %778)  ; FMin(a,b)
  %803 = fsub fast float %762, %767
  %804 = fsub fast float %763, %768
  %805 = fsub fast float %764, %769
  %806 = fsub fast float %765, %770
  %807 = call float @dx.op.unary.f32(i32 6, float %803)  ; FAbs(value)
  %808 = call float @dx.op.unary.f32(i32 6, float %804)  ; FAbs(value)
  %809 = call float @dx.op.unary.f32(i32 6, float %805)  ; FAbs(value)
  %810 = call float @dx.op.unary.f32(i32 6, float %806)  ; FAbs(value)
  %811 = call float @dx.op.binary.f32(i32 36, float %807, float %799)  ; FMin(a,b)
  %812 = call float @dx.op.binary.f32(i32 36, float %808, float %800)  ; FMin(a,b)
  %813 = call float @dx.op.binary.f32(i32 36, float %809, float %801)  ; FMin(a,b)
  %814 = call float @dx.op.binary.f32(i32 36, float %810, float %802)  ; FMin(a,b)
  %815 = call float @dx.op.dot4.f32(i32 56, float %811, float %812, float %813, float %814, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %816 = fadd fast float %760, %815
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %819 = fsub fast float %197, %818
  %820 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %196, float %819, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = fsub fast float %659, %818
  %826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %658, float %825, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 2
  %830 = extractvalue %dx.types.ResRet.f32 %826, 3
  %831 = fsub fast float %821, %830
  %832 = fsub fast float %822, %827
  %833 = fsub fast float %823, %828
  %834 = fsub fast float %824, %829
  %835 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %836 = call float @dx.op.unary.f32(i32 6, float %832)  ; FAbs(value)
  %837 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %838 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %839 = fsub fast float %821, %829
  %840 = fsub fast float %822, %830
  %841 = fsub fast float %823, %827
  %842 = fsub fast float %824, %828
  %843 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %844 = call float @dx.op.unary.f32(i32 6, float %840)  ; FAbs(value)
  %845 = call float @dx.op.unary.f32(i32 6, float %841)  ; FAbs(value)
  %846 = call float @dx.op.unary.f32(i32 6, float %842)  ; FAbs(value)
  %847 = fsub fast float %821, %828
  %848 = fsub fast float %822, %829
  %849 = fsub fast float %823, %830
  %850 = fsub fast float %824, %827
  %851 = call float @dx.op.unary.f32(i32 6, float %847)  ; FAbs(value)
  %852 = call float @dx.op.unary.f32(i32 6, float %848)  ; FAbs(value)
  %853 = call float @dx.op.unary.f32(i32 6, float %849)  ; FAbs(value)
  %854 = call float @dx.op.unary.f32(i32 6, float %850)  ; FAbs(value)
  %855 = call float @dx.op.binary.f32(i32 36, float %851, float %843)  ; FMin(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %852, float %844)  ; FMin(a,b)
  %857 = call float @dx.op.binary.f32(i32 36, float %853, float %845)  ; FMin(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %854, float %846)  ; FMin(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %855, float %835)  ; FMin(a,b)
  %860 = call float @dx.op.binary.f32(i32 36, float %856, float %836)  ; FMin(a,b)
  %861 = call float @dx.op.binary.f32(i32 36, float %857, float %837)  ; FMin(a,b)
  %862 = call float @dx.op.binary.f32(i32 36, float %858, float %838)  ; FMin(a,b)
  %863 = fsub fast float %821, %827
  %864 = fsub fast float %822, %828
  %865 = fsub fast float %823, %829
  %866 = fsub fast float %824, %830
  %867 = call float @dx.op.unary.f32(i32 6, float %863)  ; FAbs(value)
  %868 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %869 = call float @dx.op.unary.f32(i32 6, float %865)  ; FAbs(value)
  %870 = call float @dx.op.unary.f32(i32 6, float %866)  ; FAbs(value)
  %871 = call float @dx.op.binary.f32(i32 36, float %867, float %859)  ; FMin(a,b)
  %872 = call float @dx.op.binary.f32(i32 36, float %868, float %860)  ; FMin(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %869, float %861)  ; FMin(a,b)
  %874 = call float @dx.op.binary.f32(i32 36, float %870, float %862)  ; FMin(a,b)
  %875 = call float @dx.op.dot4.f32(i32 56, float %871, float %872, float %873, float %874, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %876 = fadd fast float %816, %875
  %877 = fadd fast float %818, %197
  %878 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %196, float %877, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = extractvalue %dx.types.ResRet.f32 %878, 2
  %882 = extractvalue %dx.types.ResRet.f32 %878, 3
  %883 = fadd fast float %818, %659
  %884 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %658, float %883, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = extractvalue %dx.types.ResRet.f32 %884, 3
  %889 = fsub fast float %879, %888
  %890 = fsub fast float %880, %885
  %891 = fsub fast float %881, %886
  %892 = fsub fast float %882, %887
  %893 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %894 = call float @dx.op.unary.f32(i32 6, float %890)  ; FAbs(value)
  %895 = call float @dx.op.unary.f32(i32 6, float %891)  ; FAbs(value)
  %896 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %897 = fsub fast float %879, %887
  %898 = fsub fast float %880, %888
  %899 = fsub fast float %881, %885
  %900 = fsub fast float %882, %886
  %901 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %902 = call float @dx.op.unary.f32(i32 6, float %898)  ; FAbs(value)
  %903 = call float @dx.op.unary.f32(i32 6, float %899)  ; FAbs(value)
  %904 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %905 = fsub fast float %879, %886
  %906 = fsub fast float %880, %887
  %907 = fsub fast float %881, %888
  %908 = fsub fast float %882, %885
  %909 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %910 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %911 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %912 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %913 = call float @dx.op.binary.f32(i32 36, float %909, float %901)  ; FMin(a,b)
  %914 = call float @dx.op.binary.f32(i32 36, float %910, float %902)  ; FMin(a,b)
  %915 = call float @dx.op.binary.f32(i32 36, float %911, float %903)  ; FMin(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %912, float %904)  ; FMin(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %913, float %893)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %914, float %894)  ; FMin(a,b)
  %919 = call float @dx.op.binary.f32(i32 36, float %915, float %895)  ; FMin(a,b)
  %920 = call float @dx.op.binary.f32(i32 36, float %916, float %896)  ; FMin(a,b)
  %921 = fsub fast float %879, %885
  %922 = fsub fast float %880, %886
  %923 = fsub fast float %881, %887
  %924 = fsub fast float %882, %888
  %925 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %926 = call float @dx.op.unary.f32(i32 6, float %922)  ; FAbs(value)
  %927 = call float @dx.op.unary.f32(i32 6, float %923)  ; FAbs(value)
  %928 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %929 = call float @dx.op.binary.f32(i32 36, float %925, float %917)  ; FMin(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %926, float %918)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %927, float %919)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %928, float %920)  ; FMin(a,b)
  %933 = call float @dx.op.dot4.f32(i32 56, float %929, float %930, float %931, float %932, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %934 = fadd fast float %876, %933
  %935 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %936 = fsub fast float %196, %935
  %937 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %936, float %197, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = extractvalue %dx.types.ResRet.f32 %937, 1
  %940 = extractvalue %dx.types.ResRet.f32 %937, 2
  %941 = extractvalue %dx.types.ResRet.f32 %937, 3
  %942 = fsub fast float %658, %935
  %943 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %942, float %659, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = extractvalue %dx.types.ResRet.f32 %943, 2
  %947 = extractvalue %dx.types.ResRet.f32 %943, 3
  %948 = fsub fast float %938, %947
  %949 = fsub fast float %939, %944
  %950 = fsub fast float %940, %945
  %951 = fsub fast float %941, %946
  %952 = call float @dx.op.unary.f32(i32 6, float %948)  ; FAbs(value)
  %953 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %954 = call float @dx.op.unary.f32(i32 6, float %950)  ; FAbs(value)
  %955 = call float @dx.op.unary.f32(i32 6, float %951)  ; FAbs(value)
  %956 = fsub fast float %938, %946
  %957 = fsub fast float %939, %947
  %958 = fsub fast float %940, %944
  %959 = fsub fast float %941, %945
  %960 = call float @dx.op.unary.f32(i32 6, float %956)  ; FAbs(value)
  %961 = call float @dx.op.unary.f32(i32 6, float %957)  ; FAbs(value)
  %962 = call float @dx.op.unary.f32(i32 6, float %958)  ; FAbs(value)
  %963 = call float @dx.op.unary.f32(i32 6, float %959)  ; FAbs(value)
  %964 = fsub fast float %938, %945
  %965 = fsub fast float %939, %946
  %966 = fsub fast float %940, %947
  %967 = fsub fast float %941, %944
  %968 = call float @dx.op.unary.f32(i32 6, float %964)  ; FAbs(value)
  %969 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %970 = call float @dx.op.unary.f32(i32 6, float %966)  ; FAbs(value)
  %971 = call float @dx.op.unary.f32(i32 6, float %967)  ; FAbs(value)
  %972 = call float @dx.op.binary.f32(i32 36, float %968, float %960)  ; FMin(a,b)
  %973 = call float @dx.op.binary.f32(i32 36, float %969, float %961)  ; FMin(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %970, float %962)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 36, float %971, float %963)  ; FMin(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %972, float %952)  ; FMin(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %973, float %953)  ; FMin(a,b)
  %978 = call float @dx.op.binary.f32(i32 36, float %974, float %954)  ; FMin(a,b)
  %979 = call float @dx.op.binary.f32(i32 36, float %975, float %955)  ; FMin(a,b)
  %980 = fsub fast float %938, %944
  %981 = fsub fast float %939, %945
  %982 = fsub fast float %940, %946
  %983 = fsub fast float %941, %947
  %984 = call float @dx.op.unary.f32(i32 6, float %980)  ; FAbs(value)
  %985 = call float @dx.op.unary.f32(i32 6, float %981)  ; FAbs(value)
  %986 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %987 = call float @dx.op.unary.f32(i32 6, float %983)  ; FAbs(value)
  %988 = call float @dx.op.binary.f32(i32 36, float %984, float %976)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %985, float %977)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %986, float %978)  ; FMin(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %987, float %979)  ; FMin(a,b)
  %992 = call float @dx.op.dot4.f32(i32 56, float %988, float %989, float %990, float %991, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %993 = fadd fast float %934, %992
  %994 = fadd fast float %935, %196
  %995 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %994, float %197, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = extractvalue %dx.types.ResRet.f32 %995, 3
  %1000 = fadd fast float %935, %658
  %1001 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %1000, float %659, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.ResRet.f32 %1001, 3
  %1006 = fsub fast float %996, %1005
  %1007 = fsub fast float %997, %1002
  %1008 = fsub fast float %998, %1003
  %1009 = fsub fast float %999, %1004
  %1010 = call float @dx.op.unary.f32(i32 6, float %1006)  ; FAbs(value)
  %1011 = call float @dx.op.unary.f32(i32 6, float %1007)  ; FAbs(value)
  %1012 = call float @dx.op.unary.f32(i32 6, float %1008)  ; FAbs(value)
  %1013 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1014 = fsub fast float %996, %1004
  %1015 = fsub fast float %997, %1005
  %1016 = fsub fast float %998, %1002
  %1017 = fsub fast float %999, %1003
  %1018 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1019 = call float @dx.op.unary.f32(i32 6, float %1015)  ; FAbs(value)
  %1020 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1021 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1022 = fsub fast float %996, %1003
  %1023 = fsub fast float %997, %1004
  %1024 = fsub fast float %998, %1005
  %1025 = fsub fast float %999, %1002
  %1026 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1027 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1028 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1029 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1030 = call float @dx.op.binary.f32(i32 36, float %1026, float %1018)  ; FMin(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1027, float %1019)  ; FMin(a,b)
  %1032 = call float @dx.op.binary.f32(i32 36, float %1028, float %1020)  ; FMin(a,b)
  %1033 = call float @dx.op.binary.f32(i32 36, float %1029, float %1021)  ; FMin(a,b)
  %1034 = call float @dx.op.binary.f32(i32 36, float %1030, float %1010)  ; FMin(a,b)
  %1035 = call float @dx.op.binary.f32(i32 36, float %1031, float %1011)  ; FMin(a,b)
  %1036 = call float @dx.op.binary.f32(i32 36, float %1032, float %1012)  ; FMin(a,b)
  %1037 = call float @dx.op.binary.f32(i32 36, float %1033, float %1013)  ; FMin(a,b)
  %1038 = fsub fast float %996, %1002
  %1039 = fsub fast float %997, %1003
  %1040 = fsub fast float %998, %1004
  %1041 = fsub fast float %999, %1005
  %1042 = call float @dx.op.unary.f32(i32 6, float %1038)  ; FAbs(value)
  %1043 = call float @dx.op.unary.f32(i32 6, float %1039)  ; FAbs(value)
  %1044 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1045 = call float @dx.op.unary.f32(i32 6, float %1041)  ; FAbs(value)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1042, float %1034)  ; FMin(a,b)
  %1047 = call float @dx.op.binary.f32(i32 36, float %1043, float %1035)  ; FMin(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1044, float %1036)  ; FMin(a,b)
  %1049 = call float @dx.op.binary.f32(i32 36, float %1045, float %1037)  ; FMin(a,b)
  %1050 = call float @dx.op.dot4.f32(i32 56, float %1046, float %1047, float %1048, float %1049, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1051 = fadd fast float %993, %1050
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 3
  %1054 = fmul fast float %1053, 0x3F98181820000000
  %1055 = fdiv fast float 0xC04C555540000000, %1053
  %1056 = fsub fast float %1051, %1054
  %1057 = fmul fast float %1056, %1055
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = fmul fast float %375, 0x3FB0842100000000
  %1060 = fadd fast float %1059, 0xBFA0842100000000
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = fmul fast float %1061, 2.000000e+00
  %1063 = fsub fast float 3.000000e+00, %1062
  %1064 = fmul fast float %1063, %401
  %1065 = fmul fast float %1064, 5.000000e-01
  %1066 = fmul fast float %1065, %485
  %1067 = fmul fast float %1065, %489
  %1068 = fmul fast float %1065, %493
  %1069 = fsub fast float %467, %1066
  %1070 = fsub fast float %468, %1067
  %1071 = fsub fast float %469, %1068
  %1072 = fadd fast float %1066, %467
  %1073 = fadd fast float %1067, %468
  %1074 = fadd fast float %1068, %469
  %1075 = call float @dx.op.binary.f32(i32 35, float %645, float %1069)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %646, float %1070)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 35, float %647, float %1071)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float %1075, float %1072)  ; FMin(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1076, float %1073)  ; FMin(a,b)
  %1080 = call float @dx.op.binary.f32(i32 36, float %1077, float %1074)  ; FMin(a,b)
  %1081 = fmul fast float %1058, %401
  %1082 = fsub fast float %645, %1078
  %1083 = fsub fast float %646, %1079
  %1084 = fsub fast float %647, %1080
  %1085 = fmul fast float %1082, %1081
  %1086 = fmul fast float %1083, %1081
  %1087 = fmul fast float %1084, %1081
  %1088 = fadd fast float %1085, %1078
  %1089 = fadd fast float %1086, %1079
  %1090 = fadd fast float %1087, %1080
  %1091 = call float @dx.op.binary.f32(i32 35, float %630, float %1069)  ; FMax(a,b)
  %1092 = call float @dx.op.binary.f32(i32 35, float %631, float %1070)  ; FMax(a,b)
  %1093 = call float @dx.op.binary.f32(i32 35, float %632, float %1071)  ; FMax(a,b)
  %1094 = call float @dx.op.binary.f32(i32 36, float %1091, float %1072)  ; FMin(a,b)
  %1095 = call float @dx.op.binary.f32(i32 36, float %1092, float %1073)  ; FMin(a,b)
  %1096 = call float @dx.op.binary.f32(i32 36, float %1093, float %1074)  ; FMin(a,b)
  %1097 = fsub fast float %630, %1094
  %1098 = fsub fast float %631, %1095
  %1099 = fsub fast float %632, %1096
  %1100 = fmul fast float %1097, %1081
  %1101 = fmul fast float %1098, %1081
  %1102 = fmul fast float %1099, %1081
  %1103 = fadd fast float %1100, %1094
  %1104 = fadd fast float %1101, %1095
  %1105 = fadd fast float %1102, %1096
  br label %1106

; <label>:1106                                    ; preds = %256, %0
  %1107 = phi float [ %1103, %256 ], [ %235, %0 ]
  %1108 = phi float [ %1104, %256 ], [ %236, %0 ]
  %1109 = phi float [ %1105, %256 ], [ %237, %0 ]
  %1110 = phi float [ %1088, %256 ], [ %239, %0 ]
  %1111 = phi float [ %1089, %256 ], [ %240, %0 ]
  %1112 = phi float [ %1090, %256 ], [ %241, %0 ]
  %1113 = phi float [ %401, %256 ], [ 1.000000e+00, %0 ]
  %1114 = fsub fast float %1110, %1107
  %1115 = fsub fast float %1111, %1108
  %1116 = fsub fast float %1112, %1109
  %1117 = fmul fast float %1114, %227
  %1118 = fmul fast float %1115, %227
  %1119 = fmul fast float %1116, %227
  %1120 = fadd fast float %1117, %1107
  %1121 = fadd fast float %1118, %1108
  %1122 = fadd fast float %1119, %1109
  %1123 = fmul fast float %1113, %225
  %1124 = fsub fast float %14, %129
  %1125 = fsub fast float %15, %130
  %1126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %1124, float %1125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1132 = fmul fast float %1131, 0x3F60101020000000
  %1133 = extractvalue %dx.types.CBufRet.f32 %1130, 0
  %1134 = extractvalue %dx.types.CBufRet.f32 %1130, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1130, 2
  %1136 = fsub fast float %1120, %1127
  %1137 = fsub fast float %1121, %1128
  %1138 = fsub fast float %1122, %1129
  %1139 = call float @dx.op.unary.f32(i32 6, float %1136)  ; FAbs(value)
  %1140 = call float @dx.op.unary.f32(i32 6, float %1137)  ; FAbs(value)
  %1141 = call float @dx.op.unary.f32(i32 6, float %1138)  ; FAbs(value)
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1139, float %1140, float %1141, float %1133, float %1134, float %1135)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = fcmp fast ogt float %1142, %1132
  %1144 = and i1 %202, %1143
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1120)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1121)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1122)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1123)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1120)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1121)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1122)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1123)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1145 = select i1 %1144, float 0.000000e+00, float 1.000000e+00
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %1145)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

