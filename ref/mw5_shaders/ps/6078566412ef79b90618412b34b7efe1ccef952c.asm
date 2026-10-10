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
; shader hash: 032f1bf1bcaa40998473f1b2cd2ca9b8
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
  %96 = fmul fast float %14, 2.000000e+00
  %97 = fmul fast float %96, %95
  %98 = fadd fast float %97, -5.000000e-01
  %99 = fptosi float %98 to i32
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  %102 = icmp ne i32 %94, 0
  %103 = and i1 %102, %101
  %104 = select i1 %103, float 1.500000e+00, float 5.000000e-01
  %105 = icmp eq i32 %94, 0
  %106 = and i1 %105, %101
  %107 = select i1 %106, float 1.500000e+00, float 5.000000e-01
  %108 = call float @dx.op.unary.f32(i32 27, float %98)  ; Round_ni(value)
  %109 = fadd fast float %104, %108
  %110 = fmul fast float %109, 5.000000e-01
  %111 = call float @dx.op.unary.f32(i32 27, float %110)  ; Round_ni(value)
  %112 = fadd fast float %111, 5.000000e-01
  %113 = fmul fast float %112, %17
  %114 = fadd fast float %107, %108
  %115 = fmul fast float %114, 5.000000e-01
  %116 = call float @dx.op.unary.f32(i32 27, float %115)  ; Round_ni(value)
  %117 = fadd fast float %116, 5.000000e-01
  %118 = fmul fast float %117, %17
  %119 = call float @dx.op.unary.f32(i32 22, float %98)  ; Frc(value)
  %120 = icmp ne i32 %94, %100
  %121 = fsub fast float 1.000000e+00, %119
  %122 = select i1 %120, float %119, float %121
  %123 = fsub fast float %118, %90
  %124 = fsub fast float %15, %91
  %125 = extractvalue %dx.types.CBufRet.f32 %16, 1
  %126 = fmul fast float %95, %123
  %127 = fmul fast float %125, %124
  %128 = call float @dx.op.unary.f32(i32 27, float %126)  ; Round_ni(value)
  %129 = call float @dx.op.unary.f32(i32 27, float %127)  ; Round_ni(value)
  %130 = fadd fast float %128, 5.000000e-01
  %131 = fadd fast float %129, 5.000000e-01
  %132 = fmul fast float %130, %17
  %133 = fmul fast float %131, %18
  %134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %12, float %113, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %12, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fcmp fast ogt float %135, 0.000000e+00
  %139 = fadd fast float %135, 0xBFB1111120000000
  %140 = fmul fast float %139, 0x3FF1249240000000
  %141 = call float @dx.op.unary.f32(i32 7, float %140)  ; Saturate(value)
  %142 = fadd fast float %137, 0xBFB1111120000000
  %143 = fmul fast float %142, 0x3FF1249240000000
  %144 = call float @dx.op.unary.f32(i32 7, float %143)  ; Saturate(value)
  %145 = fsub fast float %141, %144
  %146 = call float @dx.op.unary.f32(i32 6, float %145)  ; FAbs(value)
  %147 = fadd fast float %144, %141
  %148 = bitcast float %147 to i32
  %149 = sub nsw i32 2129859010, %148
  %150 = bitcast i32 %149 to float
  %151 = fmul fast float %146, 0x4005555560000000
  %152 = fmul fast float %151, %150
  %153 = fsub fast float 1.000000e+00, %152
  %154 = call float @dx.op.unary.f32(i32 7, float %153)  ; Saturate(value)
  %155 = call float @dx.op.binary.f32(i32 36, float %141, float %144)  ; FMin(a,b)
  %156 = fmul fast float %155, 4.000000e+01
  %157 = call float @dx.op.unary.f32(i32 7, float %156)  ; Saturate(value)
  %158 = call float @dx.op.binary.f32(i32 36, float %154, float %157)  ; FMin(a,b)
  %159 = fmul fast float %158, 5.000000e-01
  %160 = fadd fast float %159, 5.000000e-01
  %161 = select i1 %138, float %160, float 0.000000e+00
  %162 = select i1 %138, float %158, float 1.000000e+00
  %163 = fmul fast float %162, %122
  %164 = fsub fast float %113, %14
  %165 = fmul fast float %162, %164
  %166 = fadd fast float %165, %14
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %166, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %172 = extractvalue %dx.types.ResRet.f32 %171, 0
  %173 = extractvalue %dx.types.ResRet.f32 %171, 1
  %174 = extractvalue %dx.types.ResRet.f32 %171, 2
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %177 = fmul fast float %176, 0x3F78181820000000
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %181 = fsub fast float %168, %172
  %182 = fsub fast float %169, %173
  %183 = fsub fast float %170, %174
  %184 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %185 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %186 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %187 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %178, float %179, float %180)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = fcmp fast ogt float %187, %177
  br i1 %188, label %189, label %539, !dx.controlflow.hints !37

; <label>:189                                     ; preds = %0
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %193 = fmul fast float %191, 0x3FF7EF9DC0000000
  %194 = fmul fast float %192, 0x3FF7EF9DC0000000
  %195 = fsub fast float %132, %193
  %196 = fsub fast float %133, %194
  %197 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = extractvalue %dx.types.ResRet.f32 %197, 2
  %201 = extractvalue %dx.types.ResRet.f32 %197, 3
  %202 = bitcast float %198 to i32
  %203 = bitcast float %199 to i32
  %204 = bitcast float %200 to i32
  %205 = bitcast float %201 to i32
  %206 = call i32 @dx.op.binary.i32(i32 40, i32 %203, i32 %204)  ; UMin(a,b)
  %207 = call i32 @dx.op.binary.i32(i32 40, i32 %206, i32 %205)  ; UMin(a,b)
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %202, i32 %207)  ; UMin(a,b)
  %209 = fadd fast float %193, %132
  %210 = fadd fast float %194, %133
  %211 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %11, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = extractvalue %dx.types.ResRet.f32 %211, 3
  %216 = bitcast float %212 to i32
  %217 = bitcast float %213 to i32
  %218 = bitcast float %214 to i32
  %219 = bitcast float %215 to i32
  %220 = call i32 @dx.op.binary.i32(i32 40, i32 %217, i32 %218)  ; UMin(a,b)
  %221 = call i32 @dx.op.binary.i32(i32 40, i32 %220, i32 %219)  ; UMin(a,b)
  %222 = call i32 @dx.op.binary.i32(i32 40, i32 %216, i32 %221)  ; UMin(a,b)
  %223 = call i32 @dx.op.binary.i32(i32 40, i32 %208, i32 %222)  ; UMin(a,b)
  %224 = lshr i32 %223, 11
  %225 = and i32 %223, 2047
  %226 = and i32 %224, 2047
  %227 = uitofp i32 %225 to float
  %228 = uitofp i32 %226 to float
  %229 = fmul fast float %227, 0x3F50040100000000
  %230 = fmul fast float %228, 0x3F50040100000000
  %231 = fadd fast float %229, -1.000000e+00
  %232 = fadd fast float %230, -1.000000e+00
  %233 = lshr i32 %223, 22
  %234 = shl nuw nsw i32 %233, 5
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %237 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %238 = fadd fast float %236, -5.000000e-01
  %239 = fadd fast float %237, -5.000000e-01
  %240 = fmul fast float %238, 2.000000e+00
  %241 = fmul fast float %239, 2.000000e+00
  %242 = call float @dx.op.unary.f32(i32 7, float %240)  ; Saturate(value)
  %243 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %244 = fmul fast float %236, 2.000000e+00
  %245 = fmul fast float %237, 2.000000e+00
  %246 = call float @dx.op.unary.f32(i32 7, float %244)  ; Saturate(value)
  %247 = call float @dx.op.unary.f32(i32 7, float %245)  ; Saturate(value)
  %248 = fmul fast float %242, %242
  %249 = fmul fast float %248, 0x3FA48888A0000000
  %250 = fmul fast float %243, %243
  %251 = fmul fast float %250, 0x3FB2407960000000
  %252 = fmul fast float %246, 0x3F599999A0000000
  %253 = fmul fast float %247, 0x3F66C16C20000000
  %254 = fadd fast float %252, %249
  %255 = fadd fast float %253, %251
  %256 = fsub fast float -0.000000e+00, %254
  %257 = fsub fast float -0.000000e+00, %255
  %258 = fcmp fast olt float %231, 0.000000e+00
  %259 = fcmp fast olt float %232, 0.000000e+00
  %260 = select i1 %258, float 0.000000e+00, float 1.000000e+00
  %261 = select i1 %259, float 0.000000e+00, float 1.000000e+00
  %262 = fcmp fast une float %260, 0.000000e+00
  %263 = fcmp fast une float %261, 0.000000e+00
  %264 = select i1 %262, float %254, float %256
  %265 = select i1 %263, float %255, float %257
  %266 = fmul fast float %90, 1.920000e+03
  %267 = fmul fast float %91, 1.080000e+03
  %268 = call float @dx.op.unary.f32(i32 6, float %266)  ; FAbs(value)
  %269 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %270 = call float @dx.op.binary.f32(i32 35, float %268, float %269)  ; FMax(a,b)
  %271 = fsub fast float 8.000000e+01, %270
  %272 = call float @dx.op.unary.f32(i32 7, float %271)  ; Saturate(value)
  %273 = fsub fast float %90, %264
  %274 = fmul fast float %273, 1.920000e+03
  %275 = fsub fast float %91, %265
  %276 = fmul fast float %275, 1.080000e+03
  %277 = call float @dx.op.unary.f32(i32 6, float %274)  ; FAbs(value)
  %278 = call float @dx.op.unary.f32(i32 6, float %276)  ; FAbs(value)
  %279 = call float @dx.op.binary.f32(i32 35, float %277, float %278)  ; FMax(a,b)
  %280 = fmul fast float %279, 0x3FF5555560000000
  %281 = fsub fast float 2.000000e+00, %280
  %282 = call float @dx.op.unary.f32(i32 7, float %281)  ; Saturate(value)
  %283 = fadd fast float %132, -5.000000e-01
  %284 = fadd fast float %133, -5.000000e-01
  %285 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %286 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %287 = fadd fast float %285, -5.000000e-01
  %288 = fadd fast float %286, -5.000000e-01
  %289 = call float @dx.op.binary.f32(i32 35, float %287, float %288)  ; FMax(a,b)
  %290 = fcmp fast olt float %289, 0.000000e+00
  %291 = fmul fast float %61, 0x3FB99999A0000000
  %292 = fadd fast float %235, %291
  %293 = fcmp fast olt float %61, %292
  %294 = select i1 %290, float %272, float 0.000000e+00
  %295 = fmul fast float %294, %282
  %296 = select i1 %293, float %294, float %295
  %297 = fsub fast float %166, %191
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %297, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = fadd fast float %191, %166
  %303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %302, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = extractvalue %dx.types.ResRet.f32 %303, 1
  %306 = extractvalue %dx.types.ResRet.f32 %303, 2
  %307 = fsub fast float %15, %192
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %166, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = extractvalue %dx.types.ResRet.f32 %308, 1
  %311 = extractvalue %dx.types.ResRet.f32 %308, 2
  %312 = fadd fast float %192, %15
  %313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %166, float %312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  %315 = extractvalue %dx.types.ResRet.f32 %313, 1
  %316 = extractvalue %dx.types.ResRet.f32 %313, 2
  %317 = fmul fast float %299, %299
  %318 = fmul fast float %300, %300
  %319 = fmul fast float %301, %301
  %320 = fmul fast float %304, %304
  %321 = fmul fast float %305, %305
  %322 = fmul fast float %306, %306
  %323 = fmul fast float %309, %309
  %324 = fmul fast float %310, %310
  %325 = fmul fast float %311, %311
  %326 = fmul fast float %314, %314
  %327 = fmul fast float %315, %315
  %328 = fmul fast float %316, %316
  %329 = fmul fast float %168, 4.000000e+00
  %330 = fmul fast float %169, 4.000000e+00
  %331 = fmul fast float %170, 4.000000e+00
  %332 = fadd fast float %299, %329
  %333 = fadd fast float %332, %304
  %334 = fadd fast float %333, %309
  %335 = fadd fast float %334, %314
  %336 = fadd fast float %300, %330
  %337 = fadd fast float %336, %305
  %338 = fadd fast float %337, %310
  %339 = fadd fast float %338, %315
  %340 = fadd fast float %301, %331
  %341 = fadd fast float %340, %306
  %342 = fadd fast float %341, %311
  %343 = fadd fast float %342, %316
  %344 = fmul fast float %168, %168
  %345 = fmul fast float %344, 4.000000e+00
  %346 = fmul fast float %169, %169
  %347 = fmul fast float %346, 4.000000e+00
  %348 = fmul fast float %170, %170
  %349 = fmul fast float %348, 4.000000e+00
  %350 = fadd fast float %317, %345
  %351 = fadd fast float %350, %320
  %352 = fadd fast float %351, %323
  %353 = fadd fast float %352, %326
  %354 = fadd fast float %318, %347
  %355 = fadd fast float %354, %321
  %356 = fadd fast float %355, %324
  %357 = fadd fast float %356, %327
  %358 = fadd fast float %319, %349
  %359 = fadd fast float %358, %322
  %360 = fadd fast float %359, %325
  %361 = fadd fast float %360, %328
  %362 = fmul fast float %335, 1.250000e-01
  %363 = fmul fast float %339, 1.250000e-01
  %364 = fmul fast float %343, 1.250000e-01
  %365 = fmul fast float %353, 1.250000e-01
  %366 = fmul fast float %357, 1.250000e-01
  %367 = fmul fast float %361, 1.250000e-01
  %368 = fmul fast float %362, %362
  %369 = fmul fast float %363, %363
  %370 = fmul fast float %364, %364
  %371 = fsub fast float %365, %368
  %372 = fsub fast float %366, %369
  %373 = fsub fast float %367, %370
  %374 = call float @dx.op.binary.f32(i32 35, float %371, float 0.000000e+00)  ; FMax(a,b)
  %375 = call float @dx.op.binary.f32(i32 35, float %372, float 0.000000e+00)  ; FMax(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %377 = bitcast float %374 to i32
  %378 = ashr i32 %377, 1
  %379 = add nsw i32 %378, 532487669
  %380 = bitcast i32 %379 to float
  %381 = bitcast float %375 to i32
  %382 = ashr i32 %381, 1
  %383 = add nsw i32 %382, 532487669
  %384 = bitcast i32 %383 to float
  %385 = bitcast float %376 to i32
  %386 = ashr i32 %385, 1
  %387 = add nsw i32 %386, 532487669
  %388 = bitcast i32 %387 to float
  %389 = fsub fast float %166, %90
  %390 = fsub fast float %389, %264
  %391 = fsub fast float %124, %265
  %392 = fadd fast float %132, %90
  %393 = fmul fast float %264, -3.000000e+00
  %394 = fadd fast float %392, %393
  %395 = fadd fast float %133, %91
  %396 = fmul fast float %265, -3.000000e+00
  %397 = fadd fast float %395, %396
  %398 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %400 = fmul fast float %398, %390
  %401 = fmul fast float %399, %391
  %402 = call float @dx.op.unary.f32(i32 27, float %400)  ; Round_ni(value)
  %403 = call float @dx.op.unary.f32(i32 27, float %401)  ; Round_ni(value)
  %404 = fadd fast float %402, 5.000000e-01
  %405 = fadd fast float %403, 5.000000e-01
  %406 = fmul fast float %404, %191
  %407 = fmul fast float %405, %192
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %409, float %410, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = call float @dx.op.dot3.f32(i32 55, float %309, float %310, float %311, float %409, float %410, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = call float @dx.op.dot3.f32(i32 55, float %314, float %315, float %316, float %409, float %410, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %415 = call float @dx.op.dot3.f32(i32 55, float %299, float %300, float %301, float %409, float %410, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %416 = call float @dx.op.dot3.f32(i32 55, float %304, float %305, float %306, float %409, float %410, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %406, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = fsub fast float %412, %418
  %420 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %421 = fsub fast float %407, %192
  %422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %406, float %421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = fsub fast float %413, %423
  %425 = call float @dx.op.unary.f32(i32 6, float %424)  ; FAbs(value)
  %426 = fadd fast float %425, %420
  %427 = fadd fast float %192, %407
  %428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %406, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = fsub fast float %414, %429
  %431 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %432 = fadd fast float %426, %431
  %433 = fsub fast float %406, %191
  %434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %433, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = fsub fast float %415, %435
  %437 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %438 = fadd fast float %432, %437
  %439 = fadd fast float %191, %406
  %440 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %439, float %407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = fsub fast float %416, %441
  %443 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  %444 = fadd fast float %438, %443
  %445 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %11, float %132, float %133, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %11, float %394, float %397, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = fsub fast float %446, %454
  %456 = fsub fast float %447, %451
  %457 = fsub fast float %448, %452
  %458 = fsub fast float %449, %453
  %459 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  %460 = call float @dx.op.unary.f32(i32 6, float %456)  ; FAbs(value)
  %461 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  %462 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  %463 = fsub fast float %446, %453
  %464 = fsub fast float %447, %454
  %465 = fsub fast float %448, %451
  %466 = fsub fast float %449, %452
  %467 = call float @dx.op.unary.f32(i32 6, float %463)  ; FAbs(value)
  %468 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %469 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  %470 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  %471 = fsub fast float %446, %452
  %472 = fsub fast float %447, %453
  %473 = fsub fast float %448, %454
  %474 = fsub fast float %449, %451
  %475 = call float @dx.op.unary.f32(i32 6, float %471)  ; FAbs(value)
  %476 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  %477 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %478 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %479 = call float @dx.op.binary.f32(i32 36, float %475, float %467)  ; FMin(a,b)
  %480 = call float @dx.op.binary.f32(i32 36, float %476, float %468)  ; FMin(a,b)
  %481 = call float @dx.op.binary.f32(i32 36, float %477, float %469)  ; FMin(a,b)
  %482 = call float @dx.op.binary.f32(i32 36, float %478, float %470)  ; FMin(a,b)
  %483 = call float @dx.op.binary.f32(i32 36, float %479, float %459)  ; FMin(a,b)
  %484 = call float @dx.op.binary.f32(i32 36, float %480, float %460)  ; FMin(a,b)
  %485 = call float @dx.op.binary.f32(i32 36, float %481, float %461)  ; FMin(a,b)
  %486 = call float @dx.op.binary.f32(i32 36, float %482, float %462)  ; FMin(a,b)
  %487 = fsub fast float %446, %451
  %488 = fsub fast float %447, %452
  %489 = fsub fast float %448, %453
  %490 = fsub fast float %449, %454
  %491 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  %492 = call float @dx.op.unary.f32(i32 6, float %488)  ; FAbs(value)
  %493 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %494 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  %495 = call float @dx.op.binary.f32(i32 36, float %491, float %483)  ; FMin(a,b)
  %496 = call float @dx.op.binary.f32(i32 36, float %492, float %484)  ; FMin(a,b)
  %497 = call float @dx.op.binary.f32(i32 36, float %493, float %485)  ; FMin(a,b)
  %498 = call float @dx.op.binary.f32(i32 36, float %494, float %486)  ; FMin(a,b)
  %499 = call float @dx.op.dot4.f32(i32 56, float %495, float %496, float %497, float %498, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %500 = fadd fast float %444, %499
  %501 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %502 = fmul fast float %501, 0x3F98181820000000
  %503 = fdiv fast float 0xC04C555540000000, %501
  %504 = fsub fast float %500, %502
  %505 = fmul fast float %504, %503
  %506 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %507 = fmul fast float %270, 0x3FB0842100000000
  %508 = fadd fast float %507, 0xBFA0842100000000
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fmul fast float %509, 2.000000e+00
  %511 = fsub fast float 3.000000e+00, %510
  %512 = fmul fast float %511, %296
  %513 = fmul fast float %512, 5.000000e-01
  %514 = fmul fast float %513, %380
  %515 = fmul fast float %513, %384
  %516 = fmul fast float %513, %388
  %517 = fsub fast float %362, %514
  %518 = fsub fast float %363, %515
  %519 = fsub fast float %364, %516
  %520 = fadd fast float %514, %362
  %521 = fadd fast float %515, %363
  %522 = fadd fast float %516, %364
  %523 = call float @dx.op.binary.f32(i32 35, float %172, float %517)  ; FMax(a,b)
  %524 = call float @dx.op.binary.f32(i32 35, float %173, float %518)  ; FMax(a,b)
  %525 = call float @dx.op.binary.f32(i32 35, float %174, float %519)  ; FMax(a,b)
  %526 = call float @dx.op.binary.f32(i32 36, float %523, float %520)  ; FMin(a,b)
  %527 = call float @dx.op.binary.f32(i32 36, float %524, float %521)  ; FMin(a,b)
  %528 = call float @dx.op.binary.f32(i32 36, float %525, float %522)  ; FMin(a,b)
  %529 = fmul fast float %506, %296
  %530 = fsub fast float %172, %526
  %531 = fsub fast float %173, %527
  %532 = fsub fast float %174, %528
  %533 = fmul fast float %530, %529
  %534 = fmul fast float %531, %529
  %535 = fmul fast float %532, %529
  %536 = fadd fast float %533, %526
  %537 = fadd fast float %534, %527
  %538 = fadd fast float %535, %528
  br label %539

; <label>:539                                     ; preds = %189, %0
  %540 = phi float [ %536, %189 ], [ %172, %0 ]
  %541 = phi float [ %537, %189 ], [ %173, %0 ]
  %542 = phi float [ %538, %189 ], [ %174, %0 ]
  %543 = phi float [ %296, %189 ], [ 1.000000e+00, %0 ]
  %544 = fsub fast float %540, %168
  %545 = fsub fast float %541, %169
  %546 = fsub fast float %542, %170
  %547 = fmul fast float %544, %163
  %548 = fmul fast float %545, %163
  %549 = fmul fast float %546, %163
  %550 = fadd fast float %547, %168
  %551 = fadd fast float %548, %169
  %552 = fadd fast float %549, %170
  %553 = fmul fast float %543, %161
  %554 = fsub fast float %14, %90
  %555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %554, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 3
  %561 = fmul fast float %560, 0x3F78181820000000
  %562 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %563 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %564 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %565 = fsub fast float %550, %556
  %566 = fsub fast float %551, %557
  %567 = fsub fast float %552, %558
  %568 = call float @dx.op.unary.f32(i32 6, float %565)  ; FAbs(value)
  %569 = call float @dx.op.unary.f32(i32 6, float %566)  ; FAbs(value)
  %570 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  %571 = call float @dx.op.dot3.f32(i32 55, float %568, float %569, float %570, float %562, float %563, float %564)  ; Dot3(ax,ay,az,bx,by,bz)
  %572 = fcmp fast ogt float %571, %561
  %573 = and i1 %138, %572
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %553)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %574 = select i1 %573, float 0.000000e+00, float 1.000000e+00
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %574)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

