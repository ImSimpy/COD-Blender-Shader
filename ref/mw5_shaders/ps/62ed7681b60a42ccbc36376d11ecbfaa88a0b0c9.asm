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
; shader hash: 40e7873c9ce9b928f568ed2c1a96dab1
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
  %135 = fmul fast float %14, 2.000000e+00
  %136 = fmul fast float %135, %134
  %137 = fadd fast float %136, -5.000000e-01
  %138 = fptosi float %137 to i32
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  %141 = icmp ne i32 %133, 0
  %142 = and i1 %141, %140
  %143 = select i1 %142, float 1.500000e+00, float 5.000000e-01
  %144 = icmp eq i32 %133, 0
  %145 = and i1 %144, %140
  %146 = select i1 %145, float 1.500000e+00, float 5.000000e-01
  %147 = call float @dx.op.unary.f32(i32 27, float %137)  ; Round_ni(value)
  %148 = fadd fast float %143, %147
  %149 = fmul fast float %148, 5.000000e-01
  %150 = call float @dx.op.unary.f32(i32 27, float %149)  ; Round_ni(value)
  %151 = fadd fast float %150, 5.000000e-01
  %152 = fmul fast float %151, %17
  %153 = fadd fast float %146, %147
  %154 = fmul fast float %153, 5.000000e-01
  %155 = call float @dx.op.unary.f32(i32 27, float %154)  ; Round_ni(value)
  %156 = fadd fast float %155, 5.000000e-01
  %157 = fmul fast float %156, %17
  %158 = call float @dx.op.unary.f32(i32 22, float %137)  ; Frc(value)
  %159 = icmp ne i32 %133, %139
  %160 = fsub fast float 1.000000e+00, %158
  %161 = select i1 %159, float %158, float %160
  %162 = fsub fast float %157, %129
  %163 = fsub fast float %15, %130
  %164 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %165 = fmul fast float %134, %162
  %166 = fmul fast float %164, %163
  %167 = call float @dx.op.unary.f32(i32 27, float %165)  ; Round_ni(value)
  %168 = call float @dx.op.unary.f32(i32 27, float %166)  ; Round_ni(value)
  %169 = fadd fast float %167, 5.000000e-01
  %170 = fadd fast float %168, 5.000000e-01
  %171 = fmul fast float %169, %17
  %172 = fmul fast float %170, %18
  %173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %152, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %12, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fcmp fast ogt float %174, 0.000000e+00
  %178 = fadd fast float %174, 0xBFB1111120000000
  %179 = fmul fast float %178, 0x3FF1249240000000
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = fadd fast float %176, 0xBFB1111120000000
  %182 = fmul fast float %181, 0x3FF1249240000000
  %183 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %184 = fsub fast float %180, %183
  %185 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %186 = fadd fast float %183, %180
  %187 = bitcast float %186 to i32
  %188 = sub nsw i32 2129859010, %187
  %189 = bitcast i32 %188 to float
  %190 = fmul fast float %185, 0x4005555560000000
  %191 = fmul fast float %190, %189
  %192 = fsub fast float 1.000000e+00, %191
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = call float @dx.op.binary.f32(i32 36, float %180, float %183)  ; FMin(a,b)
  %195 = fmul fast float %194, 4.000000e+01
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = call float @dx.op.binary.f32(i32 36, float %193, float %196)  ; FMin(a,b)
  %198 = fmul fast float %197, 5.000000e-01
  %199 = fadd fast float %198, 5.000000e-01
  %200 = select i1 %177, float %199, float 0.000000e+00
  %201 = select i1 %177, float %197, float 1.000000e+00
  %202 = fmul fast float %201, %161
  %203 = fsub fast float %152, %14
  %204 = fmul fast float %201, %203
  %205 = fadd fast float %204, %14
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %205, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = extractvalue %dx.types.ResRet.f32 %206, 2
  %210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = extractvalue %dx.types.ResRet.f32 %210, 1
  %213 = extractvalue %dx.types.ResRet.f32 %210, 2
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %216 = fmul fast float %215, 0x3F60101020000000
  %217 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %218 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %219 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %220 = fsub fast float %207, %211
  %221 = fsub fast float %208, %212
  %222 = fsub fast float %209, %213
  %223 = call float @dx.op.unary.f32(i32 6, float %220)  ; FAbs(value)
  %224 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %225 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %226 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = fcmp fast ogt float %226, %216
  br i1 %227, label %228, label %907, !dx.controlflow.hints !37

; <label>:228                                     ; preds = %0
  %229 = fadd fast float %167, 0xBFEFDF3B80000000
  %230 = fmul fast float %17, %229
  %231 = fadd fast float %168, 0xBFEFDF3B80000000
  %232 = fmul fast float %18, %231
  %233 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %230, float %232, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = extractvalue %dx.types.ResRet.f32 %233, 1
  %236 = extractvalue %dx.types.ResRet.f32 %233, 2
  %237 = extractvalue %dx.types.ResRet.f32 %233, 3
  %238 = bitcast float %234 to i32
  %239 = bitcast float %235 to i32
  %240 = bitcast float %236 to i32
  %241 = bitcast float %237 to i32
  %242 = call i32 @dx.op.binary.i32(i32 40, i32 %239, i32 %240)  ; UMin(a,b)
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %241)  ; UMin(a,b)
  %244 = call i32 @dx.op.binary.i32(i32 40, i32 %238, i32 %243)  ; UMin(a,b)
  %245 = fadd fast float %167, 0x3FFFEF9DC0000000
  %246 = fmul fast float %17, %245
  %247 = fadd fast float %168, 0x3FFFEF9DC0000000
  %248 = fmul fast float %18, %247
  %249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %246, float %248, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = bitcast float %250 to i32
  %255 = bitcast float %251 to i32
  %256 = bitcast float %252 to i32
  %257 = bitcast float %253 to i32
  %258 = call i32 @dx.op.binary.i32(i32 40, i32 %255, i32 %256)  ; UMin(a,b)
  %259 = call i32 @dx.op.binary.i32(i32 40, i32 %258, i32 %257)  ; UMin(a,b)
  %260 = call i32 @dx.op.binary.i32(i32 40, i32 %254, i32 %259)  ; UMin(a,b)
  %261 = call i32 @dx.op.binary.i32(i32 40, i32 %244, i32 %260)  ; UMin(a,b)
  %262 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = bitcast float %263 to i32
  %268 = bitcast float %264 to i32
  %269 = bitcast float %265 to i32
  %270 = bitcast float %266 to i32
  %271 = call i32 @dx.op.binary.i32(i32 40, i32 %268, i32 %269)  ; UMin(a,b)
  %272 = call i32 @dx.op.binary.i32(i32 40, i32 %271, i32 %270)  ; UMin(a,b)
  %273 = call i32 @dx.op.binary.i32(i32 40, i32 %267, i32 %272)  ; UMin(a,b)
  %274 = call i32 @dx.op.binary.i32(i32 40, i32 %261, i32 %273)  ; UMin(a,b)
  %275 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %230, float %248, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 3
  %280 = bitcast float %276 to i32
  %281 = bitcast float %277 to i32
  %282 = bitcast float %278 to i32
  %283 = bitcast float %279 to i32
  %284 = call i32 @dx.op.binary.i32(i32 40, i32 %281, i32 %282)  ; UMin(a,b)
  %285 = call i32 @dx.op.binary.i32(i32 40, i32 %284, i32 %283)  ; UMin(a,b)
  %286 = call i32 @dx.op.binary.i32(i32 40, i32 %280, i32 %285)  ; UMin(a,b)
  %287 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %246, float %232, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = bitcast float %288 to i32
  %293 = bitcast float %289 to i32
  %294 = bitcast float %290 to i32
  %295 = bitcast float %291 to i32
  %296 = call i32 @dx.op.binary.i32(i32 40, i32 %293, i32 %294)  ; UMin(a,b)
  %297 = call i32 @dx.op.binary.i32(i32 40, i32 %296, i32 %295)  ; UMin(a,b)
  %298 = call i32 @dx.op.binary.i32(i32 40, i32 %292, i32 %297)  ; UMin(a,b)
  %299 = call i32 @dx.op.binary.i32(i32 40, i32 %286, i32 %298)  ; UMin(a,b)
  %300 = call i32 @dx.op.binary.i32(i32 40, i32 %274, i32 %299)  ; UMin(a,b)
  %301 = lshr i32 %300, 11
  %302 = and i32 %300, 2047
  %303 = and i32 %301, 2047
  %304 = uitofp i32 %302 to float
  %305 = uitofp i32 %303 to float
  %306 = fmul fast float %304, 0x3F50040100000000
  %307 = fmul fast float %305, 0x3F50040100000000
  %308 = fadd fast float %306, -1.000000e+00
  %309 = fadd fast float %307, -1.000000e+00
  %310 = lshr i32 %300, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %314 = call float @dx.op.unary.f32(i32 6, float %309)  ; FAbs(value)
  %315 = fadd fast float %313, -5.000000e-01
  %316 = fadd fast float %314, -5.000000e-01
  %317 = fmul fast float %315, 2.000000e+00
  %318 = fmul fast float %316, 2.000000e+00
  %319 = call float @dx.op.unary.f32(i32 7, float %317)  ; Saturate(value)
  %320 = call float @dx.op.unary.f32(i32 7, float %318)  ; Saturate(value)
  %321 = fmul fast float %313, 2.000000e+00
  %322 = fmul fast float %314, 2.000000e+00
  %323 = call float @dx.op.unary.f32(i32 7, float %321)  ; Saturate(value)
  %324 = call float @dx.op.unary.f32(i32 7, float %322)  ; Saturate(value)
  %325 = fmul fast float %319, %319
  %326 = fmul fast float %325, 0x3FA48888A0000000
  %327 = fmul fast float %320, %320
  %328 = fmul fast float %327, 0x3FB2407960000000
  %329 = fmul fast float %323, 0x3F599999A0000000
  %330 = fmul fast float %324, 0x3F66C16C20000000
  %331 = fadd fast float %329, %326
  %332 = fadd fast float %330, %328
  %333 = fsub fast float -0.000000e+00, %331
  %334 = fsub fast float -0.000000e+00, %332
  %335 = fcmp fast olt float %308, 0.000000e+00
  %336 = fcmp fast olt float %309, 0.000000e+00
  %337 = select i1 %335, float 0.000000e+00, float 1.000000e+00
  %338 = select i1 %336, float 0.000000e+00, float 1.000000e+00
  %339 = fcmp fast une float %337, 0.000000e+00
  %340 = fcmp fast une float %338, 0.000000e+00
  %341 = select i1 %339, float %331, float %333
  %342 = select i1 %340, float %332, float %334
  %343 = fmul fast float %129, 1.920000e+03
  %344 = fmul fast float %130, 1.080000e+03
  %345 = call float @dx.op.unary.f32(i32 6, float %343)  ; FAbs(value)
  %346 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %347 = call float @dx.op.binary.f32(i32 35, float %345, float %346)  ; FMax(a,b)
  %348 = fsub fast float 8.000000e+01, %347
  %349 = call float @dx.op.unary.f32(i32 7, float %348)  ; Saturate(value)
  %350 = fsub fast float %129, %341
  %351 = fmul fast float %350, 1.920000e+03
  %352 = fsub fast float %130, %342
  %353 = fmul fast float %352, 1.080000e+03
  %354 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %355 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %356 = call float @dx.op.binary.f32(i32 35, float %354, float %355)  ; FMax(a,b)
  %357 = fmul fast float %356, 0x3FF5555560000000
  %358 = fsub fast float 2.000000e+00, %357
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %360 = fadd fast float %171, -5.000000e-01
  %361 = fadd fast float %172, -5.000000e-01
  %362 = call float @dx.op.unary.f32(i32 6, float %360)  ; FAbs(value)
  %363 = call float @dx.op.unary.f32(i32 6, float %361)  ; FAbs(value)
  %364 = fadd fast float %362, -5.000000e-01
  %365 = fadd fast float %363, -5.000000e-01
  %366 = call float @dx.op.binary.f32(i32 35, float %364, float %365)  ; FMax(a,b)
  %367 = fcmp fast olt float %366, 0.000000e+00
  %368 = fmul fast float %100, 0x3FB99999A0000000
  %369 = fadd fast float %312, %368
  %370 = fcmp fast olt float %100, %369
  %371 = select i1 %367, float %349, float 0.000000e+00
  %372 = fmul fast float %371, %359
  %373 = select i1 %370, float %371, float %372
  %374 = fsub fast float %205, %17
  %375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %374, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = extractvalue %dx.types.ResRet.f32 %375, 1
  %378 = extractvalue %dx.types.ResRet.f32 %375, 2
  %379 = fadd fast float %17, %205
  %380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %379, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = extractvalue %dx.types.ResRet.f32 %380, 1
  %383 = extractvalue %dx.types.ResRet.f32 %380, 2
  %384 = fsub fast float %15, %18
  %385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %205, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = fadd fast float %18, %15
  %390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %205, float %389, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 2
  %394 = fmul fast float %376, %376
  %395 = fmul fast float %377, %377
  %396 = fmul fast float %378, %378
  %397 = fmul fast float %381, %381
  %398 = fmul fast float %382, %382
  %399 = fmul fast float %383, %383
  %400 = fmul fast float %386, %386
  %401 = fmul fast float %387, %387
  %402 = fmul fast float %388, %388
  %403 = fmul fast float %391, %391
  %404 = fmul fast float %392, %392
  %405 = fmul fast float %393, %393
  %406 = fmul fast float %207, 4.000000e+00
  %407 = fmul fast float %208, 4.000000e+00
  %408 = fmul fast float %209, 4.000000e+00
  %409 = fadd fast float %376, %406
  %410 = fadd fast float %409, %381
  %411 = fadd fast float %410, %386
  %412 = fadd fast float %411, %391
  %413 = fadd fast float %377, %407
  %414 = fadd fast float %413, %382
  %415 = fadd fast float %414, %387
  %416 = fadd fast float %415, %392
  %417 = fadd fast float %378, %408
  %418 = fadd fast float %417, %383
  %419 = fadd fast float %418, %388
  %420 = fadd fast float %419, %393
  %421 = fmul fast float %207, %207
  %422 = fmul fast float %421, 4.000000e+00
  %423 = fmul fast float %208, %208
  %424 = fmul fast float %423, 4.000000e+00
  %425 = fmul fast float %209, %209
  %426 = fmul fast float %425, 4.000000e+00
  %427 = fadd fast float %394, %422
  %428 = fadd fast float %427, %397
  %429 = fadd fast float %428, %400
  %430 = fadd fast float %429, %403
  %431 = fadd fast float %395, %424
  %432 = fadd fast float %431, %398
  %433 = fadd fast float %432, %401
  %434 = fadd fast float %433, %404
  %435 = fadd fast float %396, %426
  %436 = fadd fast float %435, %399
  %437 = fadd fast float %436, %402
  %438 = fadd fast float %437, %405
  %439 = fmul fast float %412, 1.250000e-01
  %440 = fmul fast float %416, 1.250000e-01
  %441 = fmul fast float %420, 1.250000e-01
  %442 = fmul fast float %430, 1.250000e-01
  %443 = fmul fast float %434, 1.250000e-01
  %444 = fmul fast float %438, 1.250000e-01
  %445 = fmul fast float %439, %439
  %446 = fmul fast float %440, %440
  %447 = fmul fast float %441, %441
  %448 = fsub fast float %442, %445
  %449 = fsub fast float %443, %446
  %450 = fsub fast float %444, %447
  %451 = call float @dx.op.binary.f32(i32 35, float %448, float 0.000000e+00)  ; FMax(a,b)
  %452 = call float @dx.op.binary.f32(i32 35, float %449, float 0.000000e+00)  ; FMax(a,b)
  %453 = call float @dx.op.binary.f32(i32 35, float %450, float 0.000000e+00)  ; FMax(a,b)
  %454 = bitcast float %451 to i32
  %455 = ashr i32 %454, 1
  %456 = add nsw i32 %455, 532487669
  %457 = bitcast i32 %456 to float
  %458 = bitcast float %452 to i32
  %459 = ashr i32 %458, 1
  %460 = add nsw i32 %459, 532487669
  %461 = bitcast i32 %460 to float
  %462 = bitcast float %453 to i32
  %463 = ashr i32 %462, 1
  %464 = add nsw i32 %463, 532487669
  %465 = bitcast i32 %464 to float
  %466 = fmul fast float %341, 2.000000e+00
  %467 = fmul fast float %342, 2.000000e+00
  %468 = fsub fast float %466, %129
  %469 = fsub fast float %467, %130
  %470 = fsub fast float %205, %129
  %471 = fsub fast float %470, %341
  %472 = fsub fast float %163, %342
  %473 = fsub fast float %171, %341
  %474 = fsub fast float %172, %342
  %475 = fsub fast float %473, %468
  %476 = fsub fast float %474, %469
  %477 = fmul fast float %134, %471
  %478 = fmul fast float %164, %472
  %479 = call float @dx.op.unary.f32(i32 27, float %477)  ; Round_ni(value)
  %480 = call float @dx.op.unary.f32(i32 27, float %478)  ; Round_ni(value)
  %481 = fadd fast float %479, 5.000000e-01
  %482 = fadd fast float %480, 5.000000e-01
  %483 = fmul fast float %481, %17
  %484 = fmul fast float %482, %18
  %485 = call float @dx.op.dot3.f32(i32 55, float %207, float %208, float %209, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.dot3.f32(i32 55, float %386, float %387, float %388, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = call float @dx.op.dot3.f32(i32 55, float %391, float %392, float %393, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %488 = call float @dx.op.dot3.f32(i32 55, float %376, float %377, float %378, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %489 = call float @dx.op.dot3.f32(i32 55, float %381, float %382, float %383, float %217, float %218, float %219)  ; Dot3(ax,ay,az,bx,by,bz)
  %490 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %483, float %484, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = extractvalue %dx.types.ResRet.f32 %490, 2
  %494 = extractvalue %dx.types.ResRet.f32 %490, 3
  %495 = fsub fast float %485, %491
  %496 = fsub fast float %485, %492
  %497 = fsub fast float %485, %493
  %498 = fsub fast float %485, %494
  %499 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  %500 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %501 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  %502 = call float @dx.op.unary.f32(i32 6, float %498)  ; FAbs(value)
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %501)  ; FMin(a,b)
  %504 = call float @dx.op.binary.f32(i32 36, float %503, float %502)  ; FMin(a,b)
  %505 = call float @dx.op.binary.f32(i32 36, float %499, float %504)  ; FMin(a,b)
  %506 = fsub fast float %484, %18
  %507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %483, float %506, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = fsub fast float %486, %508
  %513 = fsub fast float %486, %509
  %514 = fsub fast float %486, %510
  %515 = fsub fast float %486, %511
  %516 = call float @dx.op.unary.f32(i32 6, float %512)  ; FAbs(value)
  %517 = call float @dx.op.unary.f32(i32 6, float %513)  ; FAbs(value)
  %518 = call float @dx.op.unary.f32(i32 6, float %514)  ; FAbs(value)
  %519 = call float @dx.op.unary.f32(i32 6, float %515)  ; FAbs(value)
  %520 = call float @dx.op.binary.f32(i32 36, float %517, float %518)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %520, float %519)  ; FMin(a,b)
  %522 = call float @dx.op.binary.f32(i32 36, float %516, float %521)  ; FMin(a,b)
  %523 = fadd fast float %522, %505
  %524 = fadd fast float %18, %484
  %525 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %483, float %524, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = extractvalue %dx.types.ResRet.f32 %525, 3
  %530 = fsub fast float %487, %526
  %531 = fsub fast float %487, %527
  %532 = fsub fast float %487, %528
  %533 = fsub fast float %487, %529
  %534 = call float @dx.op.unary.f32(i32 6, float %530)  ; FAbs(value)
  %535 = call float @dx.op.unary.f32(i32 6, float %531)  ; FAbs(value)
  %536 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %537 = call float @dx.op.unary.f32(i32 6, float %533)  ; FAbs(value)
  %538 = call float @dx.op.binary.f32(i32 36, float %535, float %536)  ; FMin(a,b)
  %539 = call float @dx.op.binary.f32(i32 36, float %538, float %537)  ; FMin(a,b)
  %540 = call float @dx.op.binary.f32(i32 36, float %534, float %539)  ; FMin(a,b)
  %541 = fadd fast float %523, %540
  %542 = fsub fast float %483, %17
  %543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %542, float %484, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = extractvalue %dx.types.ResRet.f32 %543, 3
  %548 = fsub fast float %488, %544
  %549 = fsub fast float %488, %545
  %550 = fsub fast float %488, %546
  %551 = fsub fast float %488, %547
  %552 = call float @dx.op.unary.f32(i32 6, float %548)  ; FAbs(value)
  %553 = call float @dx.op.unary.f32(i32 6, float %549)  ; FAbs(value)
  %554 = call float @dx.op.unary.f32(i32 6, float %550)  ; FAbs(value)
  %555 = call float @dx.op.unary.f32(i32 6, float %551)  ; FAbs(value)
  %556 = call float @dx.op.binary.f32(i32 36, float %553, float %554)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float %556, float %555)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float %552, float %557)  ; FMin(a,b)
  %559 = fadd fast float %541, %558
  %560 = fadd fast float %17, %483
  %561 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %11, float %560, float %484, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = extractvalue %dx.types.ResRet.f32 %561, 3
  %566 = fsub fast float %489, %562
  %567 = fsub fast float %489, %563
  %568 = fsub fast float %489, %564
  %569 = fsub fast float %489, %565
  %570 = call float @dx.op.unary.f32(i32 6, float %566)  ; FAbs(value)
  %571 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  %572 = call float @dx.op.unary.f32(i32 6, float %568)  ; FAbs(value)
  %573 = call float @dx.op.unary.f32(i32 6, float %569)  ; FAbs(value)
  %574 = call float @dx.op.binary.f32(i32 36, float %571, float %572)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float %574, float %573)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float %570, float %575)  ; FMin(a,b)
  %577 = fadd fast float %559, %576
  %578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = extractvalue %dx.types.ResRet.f32 %578, 3
  %583 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %475, float %476, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = fsub fast float %579, %587
  %589 = fsub fast float %580, %584
  %590 = fsub fast float %581, %585
  %591 = fsub fast float %582, %586
  %592 = call float @dx.op.unary.f32(i32 6, float %588)  ; FAbs(value)
  %593 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %594 = call float @dx.op.unary.f32(i32 6, float %590)  ; FAbs(value)
  %595 = call float @dx.op.unary.f32(i32 6, float %591)  ; FAbs(value)
  %596 = fsub fast float %579, %586
  %597 = fsub fast float %580, %587
  %598 = fsub fast float %581, %584
  %599 = fsub fast float %582, %585
  %600 = call float @dx.op.unary.f32(i32 6, float %596)  ; FAbs(value)
  %601 = call float @dx.op.unary.f32(i32 6, float %597)  ; FAbs(value)
  %602 = call float @dx.op.unary.f32(i32 6, float %598)  ; FAbs(value)
  %603 = call float @dx.op.unary.f32(i32 6, float %599)  ; FAbs(value)
  %604 = fsub fast float %579, %585
  %605 = fsub fast float %580, %586
  %606 = fsub fast float %581, %587
  %607 = fsub fast float %582, %584
  %608 = call float @dx.op.unary.f32(i32 6, float %604)  ; FAbs(value)
  %609 = call float @dx.op.unary.f32(i32 6, float %605)  ; FAbs(value)
  %610 = call float @dx.op.unary.f32(i32 6, float %606)  ; FAbs(value)
  %611 = call float @dx.op.unary.f32(i32 6, float %607)  ; FAbs(value)
  %612 = call float @dx.op.binary.f32(i32 36, float %608, float %600)  ; FMin(a,b)
  %613 = call float @dx.op.binary.f32(i32 36, float %609, float %601)  ; FMin(a,b)
  %614 = call float @dx.op.binary.f32(i32 36, float %610, float %602)  ; FMin(a,b)
  %615 = call float @dx.op.binary.f32(i32 36, float %611, float %603)  ; FMin(a,b)
  %616 = call float @dx.op.binary.f32(i32 36, float %612, float %592)  ; FMin(a,b)
  %617 = call float @dx.op.binary.f32(i32 36, float %613, float %593)  ; FMin(a,b)
  %618 = call float @dx.op.binary.f32(i32 36, float %614, float %594)  ; FMin(a,b)
  %619 = call float @dx.op.binary.f32(i32 36, float %615, float %595)  ; FMin(a,b)
  %620 = fsub fast float %579, %584
  %621 = fsub fast float %580, %585
  %622 = fsub fast float %581, %586
  %623 = fsub fast float %582, %587
  %624 = call float @dx.op.unary.f32(i32 6, float %620)  ; FAbs(value)
  %625 = call float @dx.op.unary.f32(i32 6, float %621)  ; FAbs(value)
  %626 = call float @dx.op.unary.f32(i32 6, float %622)  ; FAbs(value)
  %627 = call float @dx.op.unary.f32(i32 6, float %623)  ; FAbs(value)
  %628 = call float @dx.op.binary.f32(i32 36, float %624, float %616)  ; FMin(a,b)
  %629 = call float @dx.op.binary.f32(i32 36, float %625, float %617)  ; FMin(a,b)
  %630 = call float @dx.op.binary.f32(i32 36, float %626, float %618)  ; FMin(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %627, float %619)  ; FMin(a,b)
  %632 = call float @dx.op.dot4.f32(i32 56, float %628, float %629, float %630, float %631, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %633 = fadd fast float %577, %632
  %634 = fsub fast float %172, %18
  %635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %171, float %634, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = extractvalue %dx.types.ResRet.f32 %635, 3
  %640 = fsub fast float %476, %18
  %641 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %475, float %640, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = extractvalue %dx.types.ResRet.f32 %641, 1
  %644 = extractvalue %dx.types.ResRet.f32 %641, 2
  %645 = extractvalue %dx.types.ResRet.f32 %641, 3
  %646 = fsub fast float %636, %645
  %647 = fsub fast float %637, %642
  %648 = fsub fast float %638, %643
  %649 = fsub fast float %639, %644
  %650 = call float @dx.op.unary.f32(i32 6, float %646)  ; FAbs(value)
  %651 = call float @dx.op.unary.f32(i32 6, float %647)  ; FAbs(value)
  %652 = call float @dx.op.unary.f32(i32 6, float %648)  ; FAbs(value)
  %653 = call float @dx.op.unary.f32(i32 6, float %649)  ; FAbs(value)
  %654 = fsub fast float %636, %644
  %655 = fsub fast float %637, %645
  %656 = fsub fast float %638, %642
  %657 = fsub fast float %639, %643
  %658 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %659 = call float @dx.op.unary.f32(i32 6, float %655)  ; FAbs(value)
  %660 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %661 = call float @dx.op.unary.f32(i32 6, float %657)  ; FAbs(value)
  %662 = fsub fast float %636, %643
  %663 = fsub fast float %637, %644
  %664 = fsub fast float %638, %645
  %665 = fsub fast float %639, %642
  %666 = call float @dx.op.unary.f32(i32 6, float %662)  ; FAbs(value)
  %667 = call float @dx.op.unary.f32(i32 6, float %663)  ; FAbs(value)
  %668 = call float @dx.op.unary.f32(i32 6, float %664)  ; FAbs(value)
  %669 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %670 = call float @dx.op.binary.f32(i32 36, float %666, float %658)  ; FMin(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %667, float %659)  ; FMin(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float %668, float %660)  ; FMin(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float %669, float %661)  ; FMin(a,b)
  %674 = call float @dx.op.binary.f32(i32 36, float %670, float %650)  ; FMin(a,b)
  %675 = call float @dx.op.binary.f32(i32 36, float %671, float %651)  ; FMin(a,b)
  %676 = call float @dx.op.binary.f32(i32 36, float %672, float %652)  ; FMin(a,b)
  %677 = call float @dx.op.binary.f32(i32 36, float %673, float %653)  ; FMin(a,b)
  %678 = fsub fast float %636, %642
  %679 = fsub fast float %637, %643
  %680 = fsub fast float %638, %644
  %681 = fsub fast float %639, %645
  %682 = call float @dx.op.unary.f32(i32 6, float %678)  ; FAbs(value)
  %683 = call float @dx.op.unary.f32(i32 6, float %679)  ; FAbs(value)
  %684 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %685 = call float @dx.op.unary.f32(i32 6, float %681)  ; FAbs(value)
  %686 = call float @dx.op.binary.f32(i32 36, float %682, float %674)  ; FMin(a,b)
  %687 = call float @dx.op.binary.f32(i32 36, float %683, float %675)  ; FMin(a,b)
  %688 = call float @dx.op.binary.f32(i32 36, float %684, float %676)  ; FMin(a,b)
  %689 = call float @dx.op.binary.f32(i32 36, float %685, float %677)  ; FMin(a,b)
  %690 = call float @dx.op.dot4.f32(i32 56, float %686, float %687, float %688, float %689, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %691 = fadd fast float %633, %690
  %692 = fadd fast float %18, %172
  %693 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %171, float %692, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = extractvalue %dx.types.ResRet.f32 %693, 3
  %698 = fadd fast float %18, %476
  %699 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %475, float %698, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  %704 = fsub fast float %694, %703
  %705 = fsub fast float %695, %700
  %706 = fsub fast float %696, %701
  %707 = fsub fast float %697, %702
  %708 = call float @dx.op.unary.f32(i32 6, float %704)  ; FAbs(value)
  %709 = call float @dx.op.unary.f32(i32 6, float %705)  ; FAbs(value)
  %710 = call float @dx.op.unary.f32(i32 6, float %706)  ; FAbs(value)
  %711 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %712 = fsub fast float %694, %702
  %713 = fsub fast float %695, %703
  %714 = fsub fast float %696, %700
  %715 = fsub fast float %697, %701
  %716 = call float @dx.op.unary.f32(i32 6, float %712)  ; FAbs(value)
  %717 = call float @dx.op.unary.f32(i32 6, float %713)  ; FAbs(value)
  %718 = call float @dx.op.unary.f32(i32 6, float %714)  ; FAbs(value)
  %719 = call float @dx.op.unary.f32(i32 6, float %715)  ; FAbs(value)
  %720 = fsub fast float %694, %701
  %721 = fsub fast float %695, %702
  %722 = fsub fast float %696, %703
  %723 = fsub fast float %697, %700
  %724 = call float @dx.op.unary.f32(i32 6, float %720)  ; FAbs(value)
  %725 = call float @dx.op.unary.f32(i32 6, float %721)  ; FAbs(value)
  %726 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %727 = call float @dx.op.unary.f32(i32 6, float %723)  ; FAbs(value)
  %728 = call float @dx.op.binary.f32(i32 36, float %724, float %716)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %725, float %717)  ; FMin(a,b)
  %730 = call float @dx.op.binary.f32(i32 36, float %726, float %718)  ; FMin(a,b)
  %731 = call float @dx.op.binary.f32(i32 36, float %727, float %719)  ; FMin(a,b)
  %732 = call float @dx.op.binary.f32(i32 36, float %728, float %708)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 36, float %729, float %709)  ; FMin(a,b)
  %734 = call float @dx.op.binary.f32(i32 36, float %730, float %710)  ; FMin(a,b)
  %735 = call float @dx.op.binary.f32(i32 36, float %731, float %711)  ; FMin(a,b)
  %736 = fsub fast float %694, %700
  %737 = fsub fast float %695, %701
  %738 = fsub fast float %696, %702
  %739 = fsub fast float %697, %703
  %740 = call float @dx.op.unary.f32(i32 6, float %736)  ; FAbs(value)
  %741 = call float @dx.op.unary.f32(i32 6, float %737)  ; FAbs(value)
  %742 = call float @dx.op.unary.f32(i32 6, float %738)  ; FAbs(value)
  %743 = call float @dx.op.unary.f32(i32 6, float %739)  ; FAbs(value)
  %744 = call float @dx.op.binary.f32(i32 36, float %740, float %732)  ; FMin(a,b)
  %745 = call float @dx.op.binary.f32(i32 36, float %741, float %733)  ; FMin(a,b)
  %746 = call float @dx.op.binary.f32(i32 36, float %742, float %734)  ; FMin(a,b)
  %747 = call float @dx.op.binary.f32(i32 36, float %743, float %735)  ; FMin(a,b)
  %748 = call float @dx.op.dot4.f32(i32 56, float %744, float %745, float %746, float %747, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %749 = fadd fast float %691, %748
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %752 = fsub fast float %171, %751
  %753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %752, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = extractvalue %dx.types.ResRet.f32 %753, 3
  %758 = fsub fast float %475, %751
  %759 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %758, float %476, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = extractvalue %dx.types.ResRet.f32 %759, 3
  %764 = fsub fast float %754, %763
  %765 = fsub fast float %755, %760
  %766 = fsub fast float %756, %761
  %767 = fsub fast float %757, %762
  %768 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %769 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %770 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %771 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %772 = fsub fast float %754, %762
  %773 = fsub fast float %755, %763
  %774 = fsub fast float %756, %760
  %775 = fsub fast float %757, %761
  %776 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %777 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %778 = call float @dx.op.unary.f32(i32 6, float %774)  ; FAbs(value)
  %779 = call float @dx.op.unary.f32(i32 6, float %775)  ; FAbs(value)
  %780 = fsub fast float %754, %761
  %781 = fsub fast float %755, %762
  %782 = fsub fast float %756, %763
  %783 = fsub fast float %757, %760
  %784 = call float @dx.op.unary.f32(i32 6, float %780)  ; FAbs(value)
  %785 = call float @dx.op.unary.f32(i32 6, float %781)  ; FAbs(value)
  %786 = call float @dx.op.unary.f32(i32 6, float %782)  ; FAbs(value)
  %787 = call float @dx.op.unary.f32(i32 6, float %783)  ; FAbs(value)
  %788 = call float @dx.op.binary.f32(i32 36, float %784, float %776)  ; FMin(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %785, float %777)  ; FMin(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %786, float %778)  ; FMin(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %787, float %779)  ; FMin(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %788, float %768)  ; FMin(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %789, float %769)  ; FMin(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %790, float %770)  ; FMin(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %791, float %771)  ; FMin(a,b)
  %796 = fsub fast float %754, %760
  %797 = fsub fast float %755, %761
  %798 = fsub fast float %756, %762
  %799 = fsub fast float %757, %763
  %800 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %801 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %802 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %803 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %804 = call float @dx.op.binary.f32(i32 36, float %800, float %792)  ; FMin(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %801, float %793)  ; FMin(a,b)
  %806 = call float @dx.op.binary.f32(i32 36, float %802, float %794)  ; FMin(a,b)
  %807 = call float @dx.op.binary.f32(i32 36, float %803, float %795)  ; FMin(a,b)
  %808 = call float @dx.op.dot4.f32(i32 56, float %804, float %805, float %806, float %807, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %809 = fadd fast float %749, %808
  %810 = fadd fast float %751, %171
  %811 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %810, float %172, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = extractvalue %dx.types.ResRet.f32 %811, 3
  %816 = fadd fast float %751, %475
  %817 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %816, float %476, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = extractvalue %dx.types.ResRet.f32 %817, 3
  %822 = fsub fast float %812, %821
  %823 = fsub fast float %813, %818
  %824 = fsub fast float %814, %819
  %825 = fsub fast float %815, %820
  %826 = call float @dx.op.unary.f32(i32 6, float %822)  ; FAbs(value)
  %827 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %828 = call float @dx.op.unary.f32(i32 6, float %824)  ; FAbs(value)
  %829 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %830 = fsub fast float %812, %820
  %831 = fsub fast float %813, %821
  %832 = fsub fast float %814, %818
  %833 = fsub fast float %815, %819
  %834 = call float @dx.op.unary.f32(i32 6, float %830)  ; FAbs(value)
  %835 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %836 = call float @dx.op.unary.f32(i32 6, float %832)  ; FAbs(value)
  %837 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %838 = fsub fast float %812, %819
  %839 = fsub fast float %813, %820
  %840 = fsub fast float %814, %821
  %841 = fsub fast float %815, %818
  %842 = call float @dx.op.unary.f32(i32 6, float %838)  ; FAbs(value)
  %843 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %844 = call float @dx.op.unary.f32(i32 6, float %840)  ; FAbs(value)
  %845 = call float @dx.op.unary.f32(i32 6, float %841)  ; FAbs(value)
  %846 = call float @dx.op.binary.f32(i32 36, float %842, float %834)  ; FMin(a,b)
  %847 = call float @dx.op.binary.f32(i32 36, float %843, float %835)  ; FMin(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %844, float %836)  ; FMin(a,b)
  %849 = call float @dx.op.binary.f32(i32 36, float %845, float %837)  ; FMin(a,b)
  %850 = call float @dx.op.binary.f32(i32 36, float %846, float %826)  ; FMin(a,b)
  %851 = call float @dx.op.binary.f32(i32 36, float %847, float %827)  ; FMin(a,b)
  %852 = call float @dx.op.binary.f32(i32 36, float %848, float %828)  ; FMin(a,b)
  %853 = call float @dx.op.binary.f32(i32 36, float %849, float %829)  ; FMin(a,b)
  %854 = fsub fast float %812, %818
  %855 = fsub fast float %813, %819
  %856 = fsub fast float %814, %820
  %857 = fsub fast float %815, %821
  %858 = call float @dx.op.unary.f32(i32 6, float %854)  ; FAbs(value)
  %859 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %860 = call float @dx.op.unary.f32(i32 6, float %856)  ; FAbs(value)
  %861 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %862 = call float @dx.op.binary.f32(i32 36, float %858, float %850)  ; FMin(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %859, float %851)  ; FMin(a,b)
  %864 = call float @dx.op.binary.f32(i32 36, float %860, float %852)  ; FMin(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %861, float %853)  ; FMin(a,b)
  %866 = call float @dx.op.dot4.f32(i32 56, float %862, float %863, float %864, float %865, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %867 = fadd fast float %809, %866
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %870 = fmul fast float %869, 0x3F98181820000000
  %871 = fdiv fast float 0xC04C555540000000, %869
  %872 = fsub fast float %867, %870
  %873 = fmul fast float %872, %871
  %874 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %875 = fmul fast float %347, 0x3FB0842100000000
  %876 = fadd fast float %875, 0xBFA0842100000000
  %877 = call float @dx.op.unary.f32(i32 7, float %876)  ; Saturate(value)
  %878 = fmul fast float %877, 2.000000e+00
  %879 = fsub fast float 3.000000e+00, %878
  %880 = fmul fast float %879, %373
  %881 = fmul fast float %880, 5.000000e-01
  %882 = fmul fast float %881, %457
  %883 = fmul fast float %881, %461
  %884 = fmul fast float %881, %465
  %885 = fsub fast float %439, %882
  %886 = fsub fast float %440, %883
  %887 = fsub fast float %441, %884
  %888 = fadd fast float %882, %439
  %889 = fadd fast float %883, %440
  %890 = fadd fast float %884, %441
  %891 = call float @dx.op.binary.f32(i32 35, float %211, float %885)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 35, float %212, float %886)  ; FMax(a,b)
  %893 = call float @dx.op.binary.f32(i32 35, float %213, float %887)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 36, float %891, float %888)  ; FMin(a,b)
  %895 = call float @dx.op.binary.f32(i32 36, float %892, float %889)  ; FMin(a,b)
  %896 = call float @dx.op.binary.f32(i32 36, float %893, float %890)  ; FMin(a,b)
  %897 = fmul fast float %874, %373
  %898 = fsub fast float %211, %894
  %899 = fsub fast float %212, %895
  %900 = fsub fast float %213, %896
  %901 = fmul fast float %898, %897
  %902 = fmul fast float %899, %897
  %903 = fmul fast float %900, %897
  %904 = fadd fast float %901, %894
  %905 = fadd fast float %902, %895
  %906 = fadd fast float %903, %896
  br label %907

; <label>:907                                     ; preds = %228, %0
  %908 = phi float [ %904, %228 ], [ %211, %0 ]
  %909 = phi float [ %905, %228 ], [ %212, %0 ]
  %910 = phi float [ %906, %228 ], [ %213, %0 ]
  %911 = phi float [ %373, %228 ], [ 1.000000e+00, %0 ]
  %912 = fsub fast float %908, %207
  %913 = fsub fast float %909, %208
  %914 = fsub fast float %910, %209
  %915 = fmul fast float %912, %202
  %916 = fmul fast float %913, %202
  %917 = fmul fast float %914, %202
  %918 = fadd fast float %915, %207
  %919 = fadd fast float %916, %208
  %920 = fadd fast float %917, %209
  %921 = fmul fast float %911, %200
  %922 = fsub fast float %14, %129
  %923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %922, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = extractvalue %dx.types.ResRet.f32 %923, 1
  %926 = extractvalue %dx.types.ResRet.f32 %923, 2
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 3
  %929 = fmul fast float %928, 0x3F60101020000000
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %931 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %932 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %933 = fsub fast float %918, %924
  %934 = fsub fast float %919, %925
  %935 = fsub fast float %920, %926
  %936 = call float @dx.op.unary.f32(i32 6, float %933)  ; FAbs(value)
  %937 = call float @dx.op.unary.f32(i32 6, float %934)  ; FAbs(value)
  %938 = call float @dx.op.unary.f32(i32 6, float %935)  ; FAbs(value)
  %939 = call float @dx.op.dot3.f32(i32 55, float %936, float %937, float %938, float %930, float %931, float %932)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = fcmp fast ogt float %939, %929
  %941 = and i1 %177, %940
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %918)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %919)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %918)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %919)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %942 = select i1 %941, float 0.000000e+00, float 1.000000e+00
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

