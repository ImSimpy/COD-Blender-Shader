;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xyzw        1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        2     NONE   float       
; TRIID                    0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; CARD_BARY_AND_TILE       1   xyzw        4     NONE   float     zw
; PACKED_TRI_DATA          0   xyzw        5     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: 800c3b15ec77592be0bf14c35cad663e
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
; Number of inputs: 24, outputs: 5
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
  %3 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %4 = icmp ne i32 %3, 0
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = select i1 %4, float 1.000000e+00, float -1.000000e+00
  %15 = call float @dx.op.dot3.f32(i32 55, float %9, float %10, float %11, float %9, float %10, float %11)  ; Dot3(ax,ay,az,bx,by,bz)
  %16 = bitcast float %15 to i32
  %17 = ashr i32 %16, 1
  %18 = sub nsw i32 1597250115, %17
  %19 = bitcast i32 %18 to float
  %20 = fmul fast float %9, %14
  %21 = fmul fast float %20, %19
  %22 = fmul fast float %10, %14
  %23 = fmul fast float %22, %19
  %24 = fmul fast float %11, %14
  %25 = fmul fast float %24, %19
  %26 = add i32 %5, 60
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = add i32 %28, 0
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %30, i32 0)  ; GetDimensions(handle,mipLevel)
  %32 = extractvalue %dx.types.Dimensions %31, 0
  %33 = sitofp i32 %32 to float
  %34 = extractvalue %dx.types.Dimensions %31, 1
  %35 = sitofp i32 %34 to float
  %36 = fmul fast float %33, %12
  %37 = call float @dx.op.unary.f32(i32 83, float %36)  ; DerivCoarseX(value)
  %38 = call float @dx.op.unary.f32(i32 84, float %36)  ; DerivCoarseY(value)
  %39 = fmul fast float %35, %13
  %40 = call float @dx.op.unary.f32(i32 83, float %39)  ; DerivCoarseX(value)
  %41 = call float @dx.op.unary.f32(i32 84, float %39)  ; DerivCoarseY(value)
  %42 = fmul fast float %40, %40
  %43 = fmul fast float %41, %41
  %44 = fadd fast float %43, %42
  %45 = fmul fast float %40, %37
  %46 = fmul fast float %41, %38
  %47 = fadd fast float %46, %45
  %48 = fmul fast float %37, %37
  %49 = fmul fast float %38, %38
  %50 = fadd fast float %49, %48
  %51 = fmul fast float %44, %50
  %52 = fmul fast float %47, %47
  %53 = fsub fast float %51, %52
  %54 = bitcast float %53 to i32
  %55 = fadd fast float %44, %50
  %56 = bitcast float %55 to i32
  %57 = sub i32 8388608, %56
  %58 = add i32 %57, %54
  %59 = ashr i32 %58, 24
  %60 = sitofp i32 %59 to float
  %61 = add i32 %5, 24
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 3
  %64 = bitcast i32 %63 to float
  %65 = fdiv fast float 1.000000e+00, %64
  %66 = fptosi float %60 to i32
  %67 = shl i32 %66, 23
  %68 = add i32 %67, 2130706432
  %69 = bitcast float %33 to i32
  %70 = bitcast float %35 to i32
  %71 = sub i32 %68, %69
  %72 = sub i32 %68, %70
  %73 = bitcast i32 %71 to float
  %74 = bitcast i32 %72 to float
  %75 = fadd fast float %6, 5.000000e-01
  %76 = fmul fast float %65, %75
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = add i32 %78, 0
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %79, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %80, %dx.types.Handle %2, float %12, float %13, float undef, float undef, i32 0, i32 0, i32 undef, float %60)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 3
  %83 = fsub fast float %12, %76
  %84 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %85 = fmul fast float %65, 5.000000e-01
  %86 = fsub fast float %85, %73
  %87 = fcmp fast ogt float %84, %86
  %88 = fsub fast float -5.000000e-01, %7
  %89 = fadd fast float %88, %13
  %90 = call float @dx.op.unary.f32(i32 6, float %89)  ; FAbs(value)
  %91 = fsub fast float 5.000000e-01, %74
  %92 = fcmp fast ogt float %90, %91
  %93 = or i1 %87, %92
  %94 = select i1 %93, float 0.000000e+00, float %82
  %95 = fcmp fast olt float %94, 0x3FE0101020000000
  br i1 %95, label %96, label %97

; <label>:96                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %97

; <label>:97                                      ; preds = %96, %0
  %98 = call float @dx.op.unary.f32(i32 6, float %21)  ; FAbs(value)
  %99 = call float @dx.op.unary.f32(i32 6, float %23)  ; FAbs(value)
  %100 = fadd fast float %99, %98
  %101 = call float @dx.op.unary.f32(i32 6, float %25)  ; FAbs(value)
  %102 = fadd fast float %100, %101
  %103 = fdiv fast float %21, %102
  %104 = fdiv fast float %23, %102
  %105 = fdiv fast float %25, %102
  %106 = fcmp fast oge float %105, 0.000000e+00
  %107 = call float @dx.op.unary.f32(i32 6, float %104)  ; FAbs(value)
  %108 = call float @dx.op.unary.f32(i32 6, float %103)  ; FAbs(value)
  %109 = fsub fast float 1.000000e+00, %107
  %110 = fsub fast float 1.000000e+00, %108
  %111 = fcmp fast oge float %103, 0.000000e+00
  %112 = select i1 %111, float 1.000000e+00, float -1.000000e+00
  %113 = fcmp fast oge float %104, 0.000000e+00
  %114 = select i1 %113, float 1.000000e+00, float -1.000000e+00
  %115 = fmul fast float %109, %112
  %116 = fmul fast float %110, %114
  %117 = select i1 %106, float %103, float %115
  %118 = select i1 %106, float %104, float %116
  %119 = fmul fast float %117, 1.275000e+02
  %120 = fmul fast float %118, 1.275000e+02
  %121 = fadd fast float %119, 1.275000e+02
  %122 = fadd fast float %120, 1.275000e+02
  %123 = call float @dx.op.unary.f32(i32 26, float %121)  ; Round_ne(value)
  %124 = call float @dx.op.unary.f32(i32 26, float %122)  ; Round_ne(value)
  %125 = fptoui float %123 to i32
  %126 = fptoui float %124 to i32
  %127 = shl i32 %126, 8
  %128 = or i32 %127, %125
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %8)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %128)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!11 = !{[26 x i32] [i32 24, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!12 = !{void ()* @ps_main, !"ps_main", !13, !4, !32}
!13 = !{!14, !29, null}
!14 = !{!15, !17, !19, !21, !23, !24, !27, !28}
!15 = !{i32 0, !"SV_Position", i8 9, i8 3, !16, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!16 = !{i32 0}
!17 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !16, i8 2, i32 1, i8 4, i32 1, i8 0, !18}
!18 = !{i32 3, i32 3}
!19 = !{i32 2, !"NORMAL", i8 9, i8 0, !16, i8 2, i32 1, i8 3, i32 2, i8 0, !20}
!20 = !{i32 3, i32 7}
!21 = !{i32 3, !"TRIID", i8 5, i8 0, !16, i8 1, i32 1, i8 1, i32 3, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 4, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !16, i8 2, i32 1, i8 1, i32 2, i8 3, null}
!24 = !{i32 5, !"CARD_BARY_AND_TILE", i8 9, i8 0, !25, i8 1, i32 1, i8 4, i32 4, i8 0, !26}
!25 = !{i32 1}
!26 = !{i32 3, i32 12}
!27 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !16, i8 1, i32 1, i8 4, i32 5, i8 0, !22}
!28 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !16, i8 1, i32 1, i8 1, i32 3, i8 1, !22}
!29 = !{!30, !31}
!30 = !{i32 0, !"SV_Target", i8 5, i8 16, !16, i8 0, i32 1, i8 1, i32 0, i8 0, !22}
!31 = !{i32 1, !"SV_Target", i8 5, i8 16, !25, i8 0, i32 1, i8 1, i32 1, i8 0, !22}
!32 = !{i32 0, i64 16}

