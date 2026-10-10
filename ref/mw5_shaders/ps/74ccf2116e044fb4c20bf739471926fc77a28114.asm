;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: cdd289f49ef8e8f9cb00c4948c21f57e
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [128 x i8] (type annotation not present)
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   cbuffer      NA          NA     CB1            cb5     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3             t3     1
;                                   texture     f32          2d      T4             t4     1
;                                   texture     f32          2d      T5             t5     1
;                                   texture     f32          3d      T6     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8, 9 }
;   output 3 depends on inputs: { 7, 8, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%CinematicConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.unary.f32(i32 22, float %11)  ; Frc(value)
  %18 = call float @dx.op.unary.f32(i32 22, float %12)  ; Frc(value)
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 1
  %21 = fcmp fast ogt float %20, 5.000000e-01
  %22 = extractvalue %dx.types.CBufRet.f32 %19, 0
  %23 = fcmp fast ogt float %22, 5.000000e-01
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %28 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %29 = fmul fast float %25, %17
  %30 = fmul fast float %26, %18
  %31 = fmul fast float %27, %17
  %32 = fmul fast float %28, %18
  %33 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  br i1 %23, label %35, label %39

; <label>:35                                      ; preds = %0
  %36 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  br label %44

; <label>:39                                      ; preds = %0
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %43 = extractvalue %dx.types.ResRet.f32 %42, 0
  br label %44

; <label>:44                                      ; preds = %39, %35
  %45 = phi float [ %37, %35 ], [ %41, %39 ]
  %46 = phi float [ %38, %35 ], [ %43, %39 ]
  br i1 %21, label %47, label %51

; <label>:47                                      ; preds = %44
  %48 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fadd fast float %49, %34
  br label %51

; <label>:51                                      ; preds = %47, %44
  %52 = phi float [ %50, %47 ], [ %34, %44 ]
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %56, 3
  br i1 %21, label %61, label %129

; <label>:61                                      ; preds = %51
  %62 = fmul fast float %54, %52
  %63 = fmul fast float %57, %45
  %64 = fadd fast float %63, %59
  %65 = fmul fast float %58, %46
  %66 = fadd fast float %65, %60
  %67 = fmul fast float %64, 0x3F81A19D60000000
  %68 = fadd fast float %67, %62
  %69 = fmul fast float %66, 0x3FBC6C7000000000
  %70 = fadd fast float %68, %69
  %71 = fsub fast float %62, %67
  %72 = fsub fast float %71, %69
  %73 = fmul fast float %64, 0x3FE1EBC6E0000000
  %74 = fadd fast float %73, %62
  %75 = fmul fast float %66, 0x3FD48527E0000000
  %76 = fsub fast float %74, %75
  %77 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %79 = call float @dx.op.binary.f32(i32 35, float %76, float 0.000000e+00)  ; FMax(a,b)
  %80 = call float @dx.op.unary.f32(i32 23, float %77)  ; Log(value)
  %81 = call float @dx.op.unary.f32(i32 23, float %78)  ; Log(value)
  %82 = call float @dx.op.unary.f32(i32 23, float %79)  ; Log(value)
  %83 = fmul fast float %80, 0x3F89F9B580000000
  %84 = fmul fast float %81, 0x3F89F9B580000000
  %85 = fmul fast float %82, 0x3F89F9B580000000
  %86 = call float @dx.op.unary.f32(i32 21, float %83)  ; Exp(value)
  %87 = call float @dx.op.unary.f32(i32 21, float %84)  ; Exp(value)
  %88 = call float @dx.op.unary.f32(i32 21, float %85)  ; Exp(value)
  %89 = fmul fast float %86, 1.868750e+01
  %90 = fmul fast float %87, 1.868750e+01
  %91 = fmul fast float %88, 1.868750e+01
  %92 = fsub fast float 0x4032DA0000000000, %89
  %93 = fsub fast float 0x4032DA0000000000, %90
  %94 = fsub fast float 0x4032DA0000000000, %91
  %95 = fadd fast float %86, -8.359375e-01
  %96 = fadd fast float %87, -8.359375e-01
  %97 = fadd fast float %88, -8.359375e-01
  %98 = call float @dx.op.binary.f32(i32 35, float %95, float 0.000000e+00)  ; FMax(a,b)
  %99 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %100 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %101 = fdiv fast float %98, %92
  %102 = fdiv fast float %99, %93
  %103 = fdiv fast float %100, %94
  %104 = call float @dx.op.unary.f32(i32 23, float %101)  ; Log(value)
  %105 = call float @dx.op.unary.f32(i32 23, float %102)  ; Log(value)
  %106 = call float @dx.op.unary.f32(i32 23, float %103)  ; Log(value)
  %107 = fmul fast float %104, 0x40191C0D60000000
  %108 = fmul fast float %105, 0x40191C0D60000000
  %109 = fmul fast float %106, 0x40191C0D60000000
  %110 = call float @dx.op.unary.f32(i32 21, float %107)  ; Exp(value)
  %111 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %112 = call float @dx.op.unary.f32(i32 21, float %109)  ; Exp(value)
  %113 = fmul fast float %111, 1.000000e+04
  %114 = fmul fast float %112, 1.000000e+04
  %115 = fmul fast float %110, 0x40E0C7C340000000
  %116 = call float @dx.op.tertiary.f32(i32 46, float 0xC0040D35A0000000, float %113, float %115)  ; FMad(a,b,c)
  %117 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB1E16360000000, float %114, float %116)  ; FMad(a,b,c)
  %118 = fmul fast float %110, 0xC0BEE94CC0000000
  %119 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFFBCD360000000, float %113, float %118)  ; FMad(a,b,c)
  %120 = call float @dx.op.tertiary.f32(i32 46, float 0xBFC89C5600000000, float %114, float %119)  ; FMad(a,b,c)
  %121 = fmul fast float %110, 0xC07037FBE0000000
  %122 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9526880000000, float %113, float %121)  ; FMad(a,b,c)
  %123 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1FF6D40000000, float %114, float %122)  ; FMad(a,b,c)
  %124 = fmul fast float %55, %117
  %125 = fmul fast float %55, %120
  %126 = fmul fast float %55, %123
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  br label %145

; <label>:129                                     ; preds = %51
  %130 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %132 = call float @dx.op.dot4.f32(i32 56, float %54, float %55, float %130, float %131, float %52, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %133 = call float @dx.op.unary.f32(i32 7, float %132)  ; Saturate(value)
  %134 = call float @dx.op.dot4.f32(i32 56, float %57, float %58, float %59, float %60, float %52, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %135 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %141 = call float @dx.op.dot4.f32(i32 56, float %137, float %138, float %139, float %140, float %52, float %45, float %46, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %142 = call float @dx.op.unary.f32(i32 7, float %141)  ; Saturate(value)
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %8, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  br label %145

; <label>:145                                     ; preds = %129, %61
  %146 = phi float [ %124, %61 ], [ %133, %129 ]
  %147 = phi float [ %125, %61 ], [ %135, %129 ]
  %148 = phi float [ %126, %61 ], [ %142, %129 ]
  %149 = phi float [ %128, %61 ], [ %144, %129 ]
  %150 = fmul fast float %146, %13
  %151 = fmul fast float %147, %14
  %152 = fmul fast float %148, %15
  %153 = fmul fast float %149, %16
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %156 = fcmp fast ogt float %155, 5.000000e-01
  br i1 %156, label %182, label %157

; <label>:157                                     ; preds = %145
  %158 = fcmp fast ole float %150, 0x3FA4B5DCC0000000
  %159 = fmul fast float %150, 0x3FB3D07220000000
  %160 = fadd fast float %150, 0x3FAC28F5C0000000
  %161 = fmul fast float %160, 0x3FEE54EDE0000000
  %162 = call float @dx.op.unary.f32(i32 23, float %161)  ; Log(value)
  %163 = fmul fast float %162, 0x4003333340000000
  %164 = call float @dx.op.unary.f32(i32 21, float %163)  ; Exp(value)
  %165 = select i1 %158, float %159, float %164
  %166 = fcmp fast ole float %151, 0x3FA4B5DCC0000000
  %167 = fmul fast float %151, 0x3FB3D07220000000
  %168 = fadd fast float %151, 0x3FAC28F5C0000000
  %169 = fmul fast float %168, 0x3FEE54EDE0000000
  %170 = call float @dx.op.unary.f32(i32 23, float %169)  ; Log(value)
  %171 = fmul fast float %170, 0x4003333340000000
  %172 = call float @dx.op.unary.f32(i32 21, float %171)  ; Exp(value)
  %173 = select i1 %166, float %167, float %172
  %174 = fcmp fast ole float %152, 0x3FA4B5DCC0000000
  %175 = fmul fast float %152, 0x3FB3D07220000000
  %176 = fadd fast float %152, 0x3FAC28F5C0000000
  %177 = fmul fast float %176, 0x3FEE54EDE0000000
  %178 = call float @dx.op.unary.f32(i32 23, float %177)  ; Log(value)
  %179 = fmul fast float %178, 0x4003333340000000
  %180 = call float @dx.op.unary.f32(i32 21, float %179)  ; Exp(value)
  %181 = select i1 %174, float %175, float %180
  br label %182

; <label>:182                                     ; preds = %157, %145
  %183 = phi float [ %150, %145 ], [ %165, %157 ]
  %184 = phi float [ %151, %145 ], [ %173, %157 ]
  %185 = phi float [ %152, %145 ], [ %181, %157 ]
  %186 = call float @dx.op.binary.f32(i32 35, float %153, float 0.000000e+00)  ; FMax(a,b)
  %187 = fcmp fast oeq float %186, 0.000000e+00
  br i1 %187, label %188, label %189, !dx.controlflow.hints !31

; <label>:188                                     ; preds = %182
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %189

; <label>:189                                     ; preds = %188, %182
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = bitcast float %191 to i32
  br i1 %156, label %193, label %358

; <label>:193                                     ; preds = %189
  %194 = and i32 %192, 127
  %195 = add nsw i32 %194, -3
  %196 = icmp ult i32 %195, 2
  br i1 %196, label %197, label %231

; <label>:197                                     ; preds = %193
  %198 = fmul fast float %183, 0x3F1A36E2E0000000
  %199 = fmul fast float %184, 0x3F1A36E2E0000000
  %200 = fmul fast float %185, 0x3F1A36E2E0000000
  %201 = call float @dx.op.unary.f32(i32 23, float %198)  ; Log(value)
  %202 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %203 = call float @dx.op.unary.f32(i32 23, float %200)  ; Log(value)
  %204 = fmul fast float %201, 0x3FC4640000000000
  %205 = fmul fast float %202, 0x3FC4640000000000
  %206 = fmul fast float %203, 0x3FC4640000000000
  %207 = call float @dx.op.unary.f32(i32 21, float %204)  ; Exp(value)
  %208 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %209 = call float @dx.op.unary.f32(i32 21, float %206)  ; Exp(value)
  %210 = fmul fast float %207, 0x4032DA0000000000
  %211 = fmul fast float %208, 0x4032DA0000000000
  %212 = fmul fast float %209, 0x4032DA0000000000
  %213 = fadd fast float %210, 8.359375e-01
  %214 = fadd fast float %211, 8.359375e-01
  %215 = fadd fast float %212, 8.359375e-01
  %216 = fmul fast float %207, 1.868750e+01
  %217 = fmul fast float %208, 1.868750e+01
  %218 = fmul fast float %209, 1.868750e+01
  %219 = fadd fast float %216, 1.000000e+00
  %220 = fadd fast float %217, 1.000000e+00
  %221 = fadd fast float %218, 1.000000e+00
  %222 = fdiv fast float %213, %219
  %223 = fdiv fast float %214, %220
  %224 = fdiv fast float %215, %221
  %225 = call float @dx.op.unary.f32(i32 23, float %222)  ; Log(value)
  %226 = call float @dx.op.unary.f32(i32 23, float %223)  ; Log(value)
  %227 = call float @dx.op.unary.f32(i32 23, float %224)  ; Log(value)
  %228 = fmul fast float %225, 7.884375e+01
  %229 = fmul fast float %226, 7.884375e+01
  %230 = fmul fast float %227, 7.884375e+01
  br label %343

; <label>:231                                     ; preds = %193
  %232 = fmul fast float %183, 0x3F6899C100000000
  %233 = fmul fast float %184, 0x3F6899C100000000
  %234 = fmul fast float %185, 0x3F6899C100000000
  %235 = fcmp fast olt float %232, 0x3FC3333340000000
  %236 = fmul fast float %183, 0x3F74E08D20000000
  %237 = fsub fast float 0x3FD04B4160000000, %236
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = fsub fast float 1.000000e+00, %238
  %240 = fmul fast float %239, 0x3FEB333340000000
  %241 = fadd fast float %240, 0x3FC3333340000000
  %242 = select i1 %235, float %232, float %241
  %243 = fcmp fast olt float %233, 0x3FC3333340000000
  %244 = fmul fast float %184, 0x3F74E08D20000000
  %245 = fsub fast float 0x3FD04B4160000000, %244
  %246 = call float @dx.op.unary.f32(i32 21, float %245)  ; Exp(value)
  %247 = fsub fast float 1.000000e+00, %246
  %248 = fmul fast float %247, 0x3FEB333340000000
  %249 = fadd fast float %248, 0x3FC3333340000000
  %250 = select i1 %243, float %233, float %249
  %251 = fcmp fast olt float %234, 0x3FC3333340000000
  %252 = fmul fast float %185, 0x3F74E08D20000000
  %253 = fsub fast float 0x3FD04B4160000000, %252
  %254 = call float @dx.op.unary.f32(i32 21, float %253)  ; Exp(value)
  %255 = fsub fast float 1.000000e+00, %254
  %256 = fmul fast float %255, 0x3FEB333340000000
  %257 = fadd fast float %256, 0x3FC3333340000000
  %258 = select i1 %251, float %234, float %257
  %259 = call float @dx.op.dot3.f32(i32 55, float %232, float %233, float %234, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = call float @dx.op.dot3.f32(i32 55, float %242, float %250, float %258, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fmul fast float %260, %232
  %262 = fmul fast float %260, %233
  %263 = fmul fast float %260, %234
  %264 = fdiv fast float %261, %259
  %265 = fdiv fast float %262, %259
  %266 = fdiv fast float %263, %259
  %267 = call float @dx.op.dot3.f32(i32 55, float %264, float %265, float %266, float 0x3FD0D013A0000000, float 0x3FE5B22D00000000, float 0x3FAE5C91E0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %268 = fmul fast float %259, 0x3FC99999A0000000
  %269 = fcmp fast olt float %268, 5.000000e-01
  %270 = fmul fast float %259, 0x3FE2776C60000000
  %271 = fsub fast float 0x3FF7154760000000, %270
  %272 = call float @dx.op.unary.f32(i32 21, float %271)  ; Exp(value)
  %273 = fsub fast float 1.000000e+00, %272
  %274 = fmul fast float %273, 5.000000e-01
  %275 = fadd fast float %274, 5.000000e-01
  %276 = select i1 %269, float %268, float %275
  %277 = fmul fast float %276, 0x3FEC28F5E0000000
  %278 = fadd fast float %277, 0xBFB47AE160000000
  %279 = fmul fast float %264, 0x3FFA916880000000
  %280 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %265, float %279)  ; FMad(a,b,c)
  %281 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %266, float %280)  ; FMad(a,b,c)
  %282 = fmul fast float %264, 0xBFBFE5C920000000
  %283 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %265, float %282)  ; FMad(a,b,c)
  %284 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %266, float %283)  ; FMad(a,b,c)
  %285 = fmul fast float %264, 0xBF92A30560000000
  %286 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %265, float %285)  ; FMad(a,b,c)
  %287 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %266, float %286)  ; FMad(a,b,c)
  %288 = fcmp fast ult float %267, 1.000000e+00
  br i1 %288, label %289, label %313

; <label>:289                                     ; preds = %231
  %290 = fcmp fast ugt float %267, 0.000000e+00
  br i1 %290, label %291, label %313

; <label>:291                                     ; preds = %289
  %292 = call float @dx.op.binary.f32(i32 35, float %281, float 1.000000e+00)  ; FMax(a,b)
  %293 = call float @dx.op.binary.f32(i32 35, float %284, float 1.000000e+00)  ; FMax(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %287, float 1.000000e+00)  ; FMax(a,b)
  %295 = fadd fast float %292, -1.000000e+00
  %296 = fadd fast float %293, -1.000000e+00
  %297 = fadd fast float %294, -1.000000e+00
  %298 = fsub fast float %281, %267
  %299 = fsub fast float %284, %267
  %300 = fsub fast float %287, %267
  %301 = fcmp fast ogt float %298, 0.000000e+00
  %302 = fdiv fast float %295, %298
  %303 = select i1 %301, float %302, float 0.000000e+00
  %304 = fcmp fast ogt float %299, 0.000000e+00
  %305 = fdiv fast float %296, %299
  %306 = select i1 %304, float %305, float 0.000000e+00
  %307 = fcmp fast ogt float %300, 0.000000e+00
  %308 = fdiv fast float %297, %300
  %309 = select i1 %307, float %308, float 0.000000e+00
  %310 = call float @dx.op.binary.f32(i32 35, float %306, float %309)  ; FMax(a,b)
  %311 = call float @dx.op.binary.f32(i32 35, float %303, float %310)  ; FMax(a,b)
  %312 = fmul float %311, 5.000000e-01
  br label %313

; <label>:313                                     ; preds = %291, %289, %231
  %314 = phi float [ %312, %291 ], [ 5.000000e-01, %231 ], [ 0.000000e+00, %289 ]
  %315 = call float @dx.op.binary.f32(i32 35, float %278, float %314)  ; FMax(a,b)
  %316 = fsub fast float %267, %264
  %317 = fsub fast float %267, %265
  %318 = fsub fast float %267, %266
  %319 = fmul fast float %315, %316
  %320 = fmul fast float %315, %317
  %321 = fmul fast float %315, %318
  %322 = fadd fast float %319, %264
  %323 = fadd fast float %320, %265
  %324 = fadd fast float %321, %266
  %325 = fmul fast float %322, 0x3FFA916880000000
  %326 = call float @dx.op.tertiary.f32(i32 46, float 0xBFE2CE7040000000, float %323, float %325)  ; FMad(a,b,c)
  %327 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB2A30560000000, float %324, float %326)  ; FMad(a,b,c)
  %328 = fmul fast float %322, 0xBFBFE5C920000000
  %329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF220C4A0000000, float %323, float %328)  ; FMad(a,b,c)
  %330 = call float @dx.op.tertiary.f32(i32 46, float 0xBF813404E0000000, float %324, float %329)  ; FMad(a,b,c)
  %331 = fmul fast float %322, 0xBF92A30560000000
  %332 = call float @dx.op.tertiary.f32(i32 46, float 0xBFB9C0EBE0000000, float %323, float %331)  ; FMad(a,b,c)
  %333 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF1E63200000000, float %324, float %332)  ; FMad(a,b,c)
  %334 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  %335 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %336 = call float @dx.op.unary.f32(i32 7, float %333)  ; Saturate(value)
  %337 = call float @dx.op.unary.f32(i32 23, float %334)  ; Log(value)
  %338 = call float @dx.op.unary.f32(i32 23, float %335)  ; Log(value)
  %339 = call float @dx.op.unary.f32(i32 23, float %336)  ; Log(value)
  %340 = fmul fast float %337, 0x3FDD1745C0000000
  %341 = fmul fast float %338, 0x3FDD1745C0000000
  %342 = fmul fast float %339, 0x3FDD1745C0000000
  br label %343

; <label>:343                                     ; preds = %313, %197
  %344 = phi float [ %228, %197 ], [ %340, %313 ]
  %345 = phi float [ %229, %197 ], [ %341, %313 ]
  %346 = phi float [ %230, %197 ], [ %342, %313 ]
  %347 = call float @dx.op.unary.f32(i32 21, float %344)  ; Exp(value)
  %348 = call float @dx.op.unary.f32(i32 21, float %345)  ; Exp(value)
  %349 = call float @dx.op.unary.f32(i32 21, float %346)  ; Exp(value)
  %350 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %351 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %352 = fmul fast float %350, %347
  %353 = fmul fast float %350, %348
  %354 = fmul fast float %350, %349
  %355 = fadd fast float %352, %351
  %356 = fadd fast float %353, %351
  %357 = fadd fast float %354, %351
  br label %662

; <label>:358                                     ; preds = %189
  %359 = and i32 %192, 128
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %375, label %361

; <label>:361                                     ; preds = %358
  %362 = call float @dx.op.unary.f32(i32 24, float %183)  ; Sqrt(value)
  %363 = call float @dx.op.unary.f32(i32 24, float %184)  ; Sqrt(value)
  %364 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %365 = fmul fast float %362, 9.687500e-01
  %366 = fmul fast float %363, 9.687500e-01
  %367 = fmul fast float %364, 9.687500e-01
  %368 = fadd fast float %365, 1.562500e-02
  %369 = fadd fast float %366, 1.562500e-02
  %370 = fadd fast float %367, 1.562500e-02
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %8, float %368, float %369, float %370, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  br label %662

; <label>:375                                     ; preds = %358
  %376 = and i32 %192, 127
  switch i32 %376, label %662 [
    i32 1, label %377
    i32 2, label %377
    i32 0, label %377
    i32 3, label %407
    i32 4, label %528
  ]

; <label>:377                                     ; preds = %375, %375, %375
  %378 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %379 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %380 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %381 = call float @dx.op.unary.f32(i32 23, float %378)  ; Log(value)
  %382 = call float @dx.op.unary.f32(i32 23, float %379)  ; Log(value)
  %383 = call float @dx.op.unary.f32(i32 23, float %380)  ; Log(value)
  %384 = fmul fast float %381, 0x3FDAAAAAA0000000
  %385 = fmul fast float %382, 0x3FDAAAAAA0000000
  %386 = fmul fast float %383, 0x3FDAAAAAA0000000
  %387 = call float @dx.op.unary.f32(i32 21, float %384)  ; Exp(value)
  %388 = call float @dx.op.unary.f32(i32 21, float %385)  ; Exp(value)
  %389 = call float @dx.op.unary.f32(i32 21, float %386)  ; Exp(value)
  %390 = fmul fast float %387, 0x3FF0E147A0000000
  %391 = fmul fast float %388, 0x3FF0E147A0000000
  %392 = fmul fast float %389, 0x3FF0E147A0000000
  %393 = fadd fast float %390, 0xBFAC28F5C0000000
  %394 = fadd fast float %391, 0xBFAC28F5C0000000
  %395 = fadd fast float %392, 0xBFAC28F5C0000000
  %396 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %397 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %398 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %399 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %400 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %401 = fmul fast float %399, %396
  %402 = fmul fast float %399, %397
  %403 = fmul fast float %399, %398
  %404 = fadd fast float %401, %400
  %405 = fadd fast float %402, %400
  %406 = fadd fast float %403, %400
  br label %662

; <label>:407                                     ; preds = %375
  %408 = fmul fast float %183, 0x4163D57C00000000
  %409 = fmul fast float %184, 0x4163D57C00000000
  %410 = fmul fast float %185, 0x4163D57C00000000
  %411 = fadd fast float %408, 9.999980e+05
  %412 = fadd fast float %409, 9.999980e+05
  %413 = fadd fast float %410, 9.999980e+05
  %414 = fmul fast float %411, %183
  %415 = fmul fast float %412, %184
  %416 = fmul fast float %413, %185
  %417 = fadd fast float %414, 0xC0AFE17A60000000
  %418 = fadd fast float %415, 0xC0AFE17A60000000
  %419 = fadd fast float %416, 0xC0AFE17A60000000
  %420 = fmul fast float %417, %183
  %421 = fmul fast float %418, %184
  %422 = fmul fast float %419, %185
  %423 = fmul fast float %183, 0x40F753C340000000
  %424 = fmul fast float %184, 0x40F753C340000000
  %425 = fmul fast float %185, 0x40F753C340000000
  %426 = fsub fast float 9.999990e+06, %423
  %427 = fsub fast float 9.999990e+06, %424
  %428 = fsub fast float 9.999990e+06, %425
  %429 = fmul fast float %426, %183
  %430 = fmul fast float %427, %184
  %431 = fmul fast float %428, %185
  %432 = fadd fast float %429, 0x4136D1DD80000000
  %433 = fadd fast float %430, 0x4136D1DD80000000
  %434 = fadd fast float %431, 0x4136D1DD80000000
  %435 = fmul fast float %432, %183
  %436 = fmul fast float %433, %184
  %437 = fmul fast float %434, %185
  %438 = fadd fast float %435, 1.000000e+00
  %439 = fadd fast float %436, 1.000000e+00
  %440 = fadd fast float %437, 1.000000e+00
  %441 = fdiv fast float %420, %438
  %442 = fdiv fast float %421, %439
  %443 = fdiv fast float %422, %440
  %444 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %445 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %446 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %447 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %448 = fmul fast float %444, 0x3FE413A920000000
  %449 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %445, float %448)  ; FMad(a,b,c)
  %450 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %446, float %449)  ; FMad(a,b,c)
  %451 = fmul fast float %444, 0x3FB1B089A0000000
  %452 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %445, float %451)  ; FMad(a,b,c)
  %453 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %446, float %452)  ; FMad(a,b,c)
  %454 = fmul fast float %444, 0x3F90CB2960000000
  %455 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %445, float %454)  ; FMad(a,b,c)
  %456 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %446, float %455)  ; FMad(a,b,c)
  %457 = fmul fast float %450, %447
  %458 = fmul fast float %453, %447
  %459 = fmul fast float %456, %447
  %460 = fmul fast float %457, 0x3F847AE140000000
  %461 = fmul fast float %458, 0x3F847AE140000000
  %462 = fmul fast float %459, 0x3F847AE140000000
  %463 = fmul fast float %457, 0x40B4D2F520000000
  %464 = fmul fast float %458, 0x40B4D2F520000000
  %465 = fmul fast float %459, 0x40B4D2F520000000
  %466 = fadd fast float %463, 0x41869ECF20000000
  %467 = fadd fast float %464, 0x41869ECF20000000
  %468 = fadd fast float %465, 0x41869ECF20000000
  %469 = fmul fast float %466, %460
  %470 = fmul fast float %467, %461
  %471 = fmul fast float %468, %462
  %472 = fadd fast float %469, 0x417BB79C60000000
  %473 = fadd fast float %470, 0x417BB79C60000000
  %474 = fadd fast float %471, 0x417BB79C60000000
  %475 = fmul fast float %472, %460
  %476 = fmul fast float %473, %461
  %477 = fmul fast float %474, %462
  %478 = fadd fast float %475, 0x41218DE180000000
  %479 = fadd fast float %476, 0x41218DE180000000
  %480 = fadd fast float %477, 0x41218DE180000000
  %481 = fmul fast float %478, %460
  %482 = fmul fast float %479, %461
  %483 = fmul fast float %480, %462
  %484 = fadd fast float %481, 0x4077F174E0000000
  %485 = fadd fast float %482, 0x4077F174E0000000
  %486 = fadd fast float %483, 0x4077F174E0000000
  %487 = fmul fast float %484, %460
  %488 = fmul fast float %485, %461
  %489 = fmul fast float %486, %462
  %490 = fadd fast float %487, 0x3F3FF79B80000000
  %491 = fadd fast float %488, 0x3F3FF79B80000000
  %492 = fadd fast float %489, 0x3F3FF79B80000000
  %493 = fmul fast float %457, 0x412442D320000000
  %494 = fmul fast float %458, 0x412442D320000000
  %495 = fmul fast float %459, 0x412442D320000000
  %496 = fadd fast float %493, 0x419385D5C0000000
  %497 = fadd fast float %494, 0x419385D5C0000000
  %498 = fadd fast float %495, 0x419385D5C0000000
  %499 = fmul fast float %496, %460
  %500 = fmul fast float %497, %461
  %501 = fmul fast float %498, %462
  %502 = fadd fast float %499, 4.182885e+06
  %503 = fadd fast float %500, 4.182885e+06
  %504 = fadd fast float %501, 4.182885e+06
  %505 = fmul fast float %502, %460
  %506 = fmul fast float %503, %461
  %507 = fmul fast float %504, %462
  %508 = fadd fast float %505, 0x40C4D633C0000000
  %509 = fadd fast float %506, 0x40C4D633C0000000
  %510 = fadd fast float %507, 0x40C4D633C0000000
  %511 = fmul fast float %508, %460
  %512 = fmul fast float %509, %461
  %513 = fmul fast float %510, %462
  %514 = fadd fast float %511, 1.000000e+00
  %515 = fadd fast float %512, 1.000000e+00
  %516 = fadd fast float %513, 1.000000e+00
  %517 = fdiv fast float %490, %514
  %518 = fdiv fast float %491, %515
  %519 = fdiv fast float %492, %516
  %520 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %521 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %522 = fmul fast float %520, %517
  %523 = fmul fast float %520, %518
  %524 = fmul fast float %520, %519
  %525 = fadd fast float %522, %521
  %526 = fadd fast float %523, %521
  %527 = fadd fast float %524, %521
  br label %662

; <label>:528                                     ; preds = %375
  %529 = fmul fast float %183, 0x4163D57C00000000
  %530 = fmul fast float %184, 0x4163D57C00000000
  %531 = fmul fast float %185, 0x4163D57C00000000
  %532 = fadd fast float %529, 9.999980e+05
  %533 = fadd fast float %530, 9.999980e+05
  %534 = fadd fast float %531, 9.999980e+05
  %535 = fmul fast float %532, %183
  %536 = fmul fast float %533, %184
  %537 = fmul fast float %534, %185
  %538 = fadd fast float %535, 0xC0AFE17A60000000
  %539 = fadd fast float %536, 0xC0AFE17A60000000
  %540 = fadd fast float %537, 0xC0AFE17A60000000
  %541 = fmul fast float %538, %183
  %542 = fmul fast float %539, %184
  %543 = fmul fast float %540, %185
  %544 = fmul fast float %183, 0x40F753C340000000
  %545 = fmul fast float %184, 0x40F753C340000000
  %546 = fmul fast float %185, 0x40F753C340000000
  %547 = fsub fast float 9.999990e+06, %544
  %548 = fsub fast float 9.999990e+06, %545
  %549 = fsub fast float 9.999990e+06, %546
  %550 = fmul fast float %547, %183
  %551 = fmul fast float %548, %184
  %552 = fmul fast float %549, %185
  %553 = fadd fast float %550, 0x4136D1DD80000000
  %554 = fadd fast float %551, 0x4136D1DD80000000
  %555 = fadd fast float %552, 0x4136D1DD80000000
  %556 = fmul fast float %553, %183
  %557 = fmul fast float %554, %184
  %558 = fmul fast float %555, %185
  %559 = fadd fast float %556, 1.000000e+00
  %560 = fadd fast float %557, 1.000000e+00
  %561 = fadd fast float %558, 1.000000e+00
  %562 = fdiv fast float %541, %559
  %563 = fdiv fast float %542, %560
  %564 = fdiv fast float %543, %561
  %565 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %566 = call float @dx.op.unary.f32(i32 7, float %563)  ; Saturate(value)
  %567 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %568 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %569 = fmul fast float %565, 0x3FEA519BC0000000
  %570 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %566, float %569)  ; FMad(a,b,c)
  %571 = fmul fast float %565, 0x3FA0FED480000000
  %572 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %566, float %571)  ; FMad(a,b,c)
  %573 = fmul fast float %565, 0x3F917E1C00000000
  %574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %566, float %573)  ; FMad(a,b,c)
  %575 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %567, float %574)  ; FMad(a,b,c)
  %576 = call float @dx.op.binary.f32(i32 35, float %565, float %566)  ; FMax(a,b)
  %577 = call float @dx.op.binary.f32(i32 35, float %576, float %567)  ; FMax(a,b)
  %578 = fadd fast float %577, -1.000000e+00
  %579 = fmul fast float %578, 2.500000e-01
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = fsub fast float 1.000000e+00, %580
  %582 = fmul fast float %581, %570
  %583 = fmul fast float %581, %572
  %584 = fmul fast float %581, %575
  %585 = fmul fast float %580, %565
  %586 = fmul fast float %580, %566
  %587 = fmul fast float %580, %567
  %588 = fadd fast float %582, %585
  %589 = fadd fast float %583, %586
  %590 = fadd fast float %584, %587
  %591 = fmul fast float %588, %568
  %592 = fmul fast float %589, %568
  %593 = fmul fast float %590, %568
  %594 = fmul fast float %591, 0x3F847AE140000000
  %595 = fmul fast float %592, 0x3F847AE140000000
  %596 = fmul fast float %593, 0x3F847AE140000000
  %597 = fmul fast float %591, 0x40B4D2F520000000
  %598 = fmul fast float %592, 0x40B4D2F520000000
  %599 = fmul fast float %593, 0x40B4D2F520000000
  %600 = fadd fast float %597, 0x41869ECF20000000
  %601 = fadd fast float %598, 0x41869ECF20000000
  %602 = fadd fast float %599, 0x41869ECF20000000
  %603 = fmul fast float %600, %594
  %604 = fmul fast float %601, %595
  %605 = fmul fast float %602, %596
  %606 = fadd fast float %603, 0x417BB79C60000000
  %607 = fadd fast float %604, 0x417BB79C60000000
  %608 = fadd fast float %605, 0x417BB79C60000000
  %609 = fmul fast float %606, %594
  %610 = fmul fast float %607, %595
  %611 = fmul fast float %608, %596
  %612 = fadd fast float %609, 0x41218DE180000000
  %613 = fadd fast float %610, 0x41218DE180000000
  %614 = fadd fast float %611, 0x41218DE180000000
  %615 = fmul fast float %612, %594
  %616 = fmul fast float %613, %595
  %617 = fmul fast float %614, %596
  %618 = fadd fast float %615, 0x4077F174E0000000
  %619 = fadd fast float %616, 0x4077F174E0000000
  %620 = fadd fast float %617, 0x4077F174E0000000
  %621 = fmul fast float %618, %594
  %622 = fmul fast float %619, %595
  %623 = fmul fast float %620, %596
  %624 = fadd fast float %621, 0x3F3FF79B80000000
  %625 = fadd fast float %622, 0x3F3FF79B80000000
  %626 = fadd fast float %623, 0x3F3FF79B80000000
  %627 = fmul fast float %591, 0x412442D320000000
  %628 = fmul fast float %592, 0x412442D320000000
  %629 = fmul fast float %593, 0x412442D320000000
  %630 = fadd fast float %627, 0x419385D5C0000000
  %631 = fadd fast float %628, 0x419385D5C0000000
  %632 = fadd fast float %629, 0x419385D5C0000000
  %633 = fmul fast float %630, %594
  %634 = fmul fast float %631, %595
  %635 = fmul fast float %632, %596
  %636 = fadd fast float %633, 4.182885e+06
  %637 = fadd fast float %634, 4.182885e+06
  %638 = fadd fast float %635, 4.182885e+06
  %639 = fmul fast float %636, %594
  %640 = fmul fast float %637, %595
  %641 = fmul fast float %638, %596
  %642 = fadd fast float %639, 0x40C4D633C0000000
  %643 = fadd fast float %640, 0x40C4D633C0000000
  %644 = fadd fast float %641, 0x40C4D633C0000000
  %645 = fmul fast float %642, %594
  %646 = fmul fast float %643, %595
  %647 = fmul fast float %644, %596
  %648 = fadd fast float %645, 1.000000e+00
  %649 = fadd fast float %646, 1.000000e+00
  %650 = fadd fast float %647, 1.000000e+00
  %651 = fdiv fast float %624, %648
  %652 = fdiv fast float %625, %649
  %653 = fdiv fast float %626, %650
  %654 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %655 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %656 = fmul fast float %654, %651
  %657 = fmul fast float %654, %652
  %658 = fmul fast float %654, %653
  %659 = fadd fast float %656, %655
  %660 = fadd fast float %657, %655
  %661 = fadd fast float %658, %655
  br label %662

; <label>:662                                     ; preds = %528, %407, %377, %375, %361, %343
  %663 = phi float [ %355, %343 ], [ %372, %361 ], [ %183, %375 ], [ %659, %528 ], [ %525, %407 ], [ %404, %377 ]
  %664 = phi float [ %356, %343 ], [ %373, %361 ], [ %184, %375 ], [ %660, %528 ], [ %526, %407 ], [ %405, %377 ]
  %665 = phi float [ %357, %343 ], [ %374, %361 ], [ %185, %375 ], [ %661, %528 ], [ %527, %407 ], [ %406, %377 ]
  %666 = fmul fast float %663, %186
  %667 = fmul fast float %664, %186
  %668 = fmul fast float %665, %186
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %666)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %667)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %668)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %186)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.viewIdState = !{!19}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, !17}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!16 = !{i32 1, %CinematicConstants* undef, !"", i32 0, i32 5, i32 1, i32 80, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15]}
!20 = !{void ()* @ps_main, !"ps_main", !21, !4, null}
!21 = !{!22, !29, null}
!22 = !{!23, !25, !27}
!23 = !{i32 0, !"SV_Position", i8 9, i8 3, !24, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!24 = !{i32 0}
!25 = !{i32 1, !"COLOR", i8 9, i8 0, !24, i8 2, i32 1, i8 4, i32 1, i8 0, !26}
!26 = !{i32 3, i32 15}
!27 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 2, i8 0, !28}
!28 = !{i32 3, i32 3}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !24, i8 0, i32 1, i8 4, i32 0, i8 0, !26}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 1}

