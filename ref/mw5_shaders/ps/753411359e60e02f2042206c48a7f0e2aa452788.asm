;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xyzw        1     NONE   float       
; NORMAL                   0   xyz         2     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        2     NONE   float       
; TRIID                    0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; CARD_BARY_AND_TILE       1   xyzw        4     NONE   float     zw
; CARD_TEXCOORDS_AND_RAY     1   xyzw        5     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw        6     NONE   float   x   
; PACKED_TRI_DATA          0   xyzw        7     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: c097628a194089ec291c1a7f6ac33ac3
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TRIID                    0        nointerpolation       
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
; CARD_TEXCOORDS_AND_RAY     1          noperspective       
; CARD_DEPTH_AND_SCALE     0          noperspective       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
;
; Buffer Definitions:
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 12 }
;   output 4 depends on inputs: { 8, 9, 10, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = icmp ne i32 %3, 0
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = select i1 %4, float 1.000000e+00, float -1.000000e+00
  %18 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %14, float %15, float %16)  ; Dot3(ax,ay,az,bx,by,bz)
  %19 = bitcast float %18 to i32
  %20 = ashr i32 %19, 1
  %21 = sub nsw i32 1597250115, %20
  %22 = bitcast i32 %21 to float
  %23 = fmul fast float %14, %17
  %24 = fmul fast float %23, %22
  %25 = fmul fast float %15, %17
  %26 = fmul fast float %25, %22
  %27 = fmul fast float %16, %17
  %28 = fmul fast float %27, %22
  %29 = add i32 %5, 60
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = add i32 %31, 0
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %33, i32 0)  ; GetDimensions(handle,mipLevel)
  %35 = extractvalue %dx.types.Dimensions %34, 0
  %36 = sitofp i32 %35 to float
  %37 = extractvalue %dx.types.Dimensions %34, 1
  %38 = sitofp i32 %37 to float
  %39 = add i32 %5, 24
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 2
  %42 = bitcast i32 %41 to float
  %43 = fdiv fast float 1.000000e+00, %6
  %44 = fmul fast float %43, %7
  %45 = fmul fast float %43, %8
  %46 = fmul fast float %44, %36
  %47 = call float @dx.op.unary.f32(i32 83, float %46)  ; DerivCoarseX(value)
  %48 = call float @dx.op.unary.f32(i32 84, float %46)  ; DerivCoarseY(value)
  %49 = fmul fast float %45, %38
  %50 = call float @dx.op.unary.f32(i32 83, float %49)  ; DerivCoarseX(value)
  %51 = call float @dx.op.unary.f32(i32 84, float %49)  ; DerivCoarseY(value)
  %52 = fmul fast float %50, %50
  %53 = fmul fast float %51, %51
  %54 = fadd fast float %53, %52
  %55 = fmul fast float %50, %47
  %56 = fmul fast float %51, %48
  %57 = fadd fast float %56, %55
  %58 = fmul fast float %47, %47
  %59 = fmul fast float %48, %48
  %60 = fadd fast float %59, %58
  %61 = fmul fast float %54, %60
  %62 = fmul fast float %57, %57
  %63 = fsub fast float %61, %62
  %64 = bitcast float %63 to i32
  %65 = fadd fast float %54, %60
  %66 = bitcast float %65 to i32
  %67 = sub i32 8388608, %66
  %68 = add i32 %67, %64
  %69 = ashr i32 %68, 24
  %70 = sitofp i32 %69 to float
  %71 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 3
  %73 = bitcast i32 %72 to float
  %74 = fdiv fast float 1.000000e+00, %73
  %75 = fptosi float %70 to i32
  %76 = shl i32 %75, 23
  %77 = add i32 %76, 2130706432
  %78 = bitcast float %36 to i32
  %79 = bitcast float %38 to i32
  %80 = sub i32 %77, %78
  %81 = sub i32 %77, %79
  %82 = bitcast i32 %80 to float
  %83 = bitcast i32 %81 to float
  %84 = fadd fast float %11, 5.000000e-01
  %85 = fmul fast float %74, %84
  %86 = add i32 %5, 72
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %86, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = add i32 %88, 0
  %90 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %89, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %91 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %90, %dx.types.Handle %2, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float %70)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fmul fast float %92, 2.000000e+00
  %94 = fadd fast float %93, -1.000000e+00
  %95 = fmul fast float %94, %42
  %96 = fmul fast float %9, %17
  %97 = fmul fast float %96, %43
  %98 = fmul fast float %97, %95
  %99 = fmul fast float %10, %17
  %100 = fmul fast float %99, %43
  %101 = fmul fast float %100, %95
  %102 = fadd fast float %98, %44
  %103 = fadd fast float %101, %45
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = add i32 %105, 0
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %107, %dx.types.Handle %2, float %102, float %103, float undef, float undef, i32 0, i32 0, i32 undef, float %70)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 3
  %110 = fsub fast float %102, %85
  %111 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %112 = fmul fast float %74, 5.000000e-01
  %113 = fsub fast float %112, %82
  %114 = fcmp fast ogt float %111, %113
  %115 = fsub fast float -5.000000e-01, %12
  %116 = fadd fast float %115, %103
  %117 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %118 = fsub fast float 5.000000e-01, %83
  %119 = fcmp fast ogt float %117, %118
  %120 = or i1 %114, %119
  %121 = select i1 %120, float 0.000000e+00, float %109
  %122 = fcmp fast olt float %121, 0x3FE0101020000000
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %124

; <label>:124                                     ; preds = %123, %0
  %125 = call float @dx.op.unary.f32(i32 6, float %24)  ; FAbs(value)
  %126 = call float @dx.op.unary.f32(i32 6, float %26)  ; FAbs(value)
  %127 = fadd fast float %126, %125
  %128 = call float @dx.op.unary.f32(i32 6, float %28)  ; FAbs(value)
  %129 = fadd fast float %127, %128
  %130 = fdiv fast float %24, %129
  %131 = fdiv fast float %26, %129
  %132 = fdiv fast float %28, %129
  %133 = fcmp fast oge float %132, 0.000000e+00
  %134 = call float @dx.op.unary.f32(i32 6, float %131)  ; FAbs(value)
  %135 = call float @dx.op.unary.f32(i32 6, float %130)  ; FAbs(value)
  %136 = fsub fast float 1.000000e+00, %134
  %137 = fsub fast float 1.000000e+00, %135
  %138 = fcmp fast oge float %130, 0.000000e+00
  %139 = select i1 %138, float 1.000000e+00, float -1.000000e+00
  %140 = fcmp fast oge float %131, 0.000000e+00
  %141 = select i1 %140, float 1.000000e+00, float -1.000000e+00
  %142 = fmul fast float %136, %139
  %143 = fmul fast float %137, %141
  %144 = select i1 %133, float %130, float %142
  %145 = select i1 %133, float %131, float %143
  %146 = fmul fast float %144, 1.275000e+02
  %147 = fmul fast float %145, 1.275000e+02
  %148 = fadd fast float %146, 1.275000e+02
  %149 = fadd fast float %147, 1.275000e+02
  %150 = call float @dx.op.unary.f32(i32 26, float %148)  ; Round_ne(value)
  %151 = call float @dx.op.unary.f32(i32 26, float %149)  ; Round_ne(value)
  %152 = fptoui float %150 to i32
  %153 = fptoui float %151 to i32
  %154 = shl i32 %153, 8
  %155 = or i32 %154, %152
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %13)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %155)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!11}
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, null, !9}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!11 = !{[34 x i32] [i32 32, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!12 = !{void ()* @ps_main, !"ps_main", !13, !4, !34}
!13 = !{!14, !31, null}
!14 = !{!15, !17, !18, !20, !22, !23, !26, !28, !29, !30}
!15 = !{i32 0, !"SV_Position", i8 9, i8 3, !16, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!16 = !{i32 0}
!17 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !16, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!18 = !{i32 2, !"NORMAL", i8 9, i8 0, !16, i8 2, i32 1, i8 3, i32 2, i8 0, !19}
!19 = !{i32 3, i32 7}
!20 = !{i32 3, !"TRIID", i8 5, i8 0, !16, i8 1, i32 1, i8 1, i32 3, i8 0, !21}
!21 = !{i32 3, i32 1}
!22 = !{i32 4, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !16, i8 2, i32 1, i8 1, i32 2, i8 3, null}
!23 = !{i32 5, !"CARD_BARY_AND_TILE", i8 9, i8 0, !24, i8 1, i32 1, i8 4, i32 4, i8 0, !25}
!24 = !{i32 1}
!25 = !{i32 3, i32 12}
!26 = !{i32 6, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !24, i8 4, i32 1, i8 4, i32 5, i8 0, !27}
!27 = !{i32 3, i32 15}
!28 = !{i32 7, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !16, i8 4, i32 1, i8 4, i32 6, i8 0, !21}
!29 = !{i32 8, !"PACKED_TRI_DATA", i8 5, i8 0, !16, i8 1, i32 1, i8 4, i32 7, i8 0, !21}
!30 = !{i32 9, !"SV_IsFrontFace", i8 5, i8 13, !16, i8 1, i32 1, i8 1, i32 3, i8 1, !21}
!31 = !{!32, !33}
!32 = !{i32 0, !"SV_Target", i8 5, i8 16, !16, i8 0, i32 1, i8 1, i32 0, i8 0, !21}
!33 = !{i32 1, !"SV_Target", i8 5, i8 16, !24, i8 0, i32 1, i8 1, i32 1, i8 0, !21}
!34 = !{i32 0, i64 16}

