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
; shader hash: 198ddfc346acd132c41a91e5ceeb5b9e
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
;   [64 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<CSMNodeIntervals>" = type { %struct.CSMNodeIntervals }
%struct.CSMNodeIntervals = type { <2 x float>, i32, i32, i32, i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @serialize_tree() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = alloca [4 x float], align 4
  %9 = alloca [4 x float], align 4
  %10 = shl i32 %7, 2
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %1518, !dx.controlflow.hints !21

; <label>:14                                      ; preds = %0
  %15 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = add i32 %17, -2
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %234, !dx.controlflow.hints !22

; <label>:20                                      ; preds = %14
  %21 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %22 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = add i32 %21, 1
  %26 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %25, i32 0)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = extractvalue %dx.types.ResRet.f32 %26, 1
  %29 = add i32 %21, 2
  %30 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.f32 %30, 0
  %32 = extractvalue %dx.types.ResRet.f32 %30, 1
  %33 = add i32 %21, 3
  %34 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 0
  store float %23, float* %37, align 4
  %38 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 1
  store float %27, float* %38, align 4
  %39 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 2
  store float %31, float* %39, align 4
  %40 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 3
  store float %35, float* %40, align 4
  %41 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 0
  store float %24, float* %41, align 4
  %42 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 1
  store float %28, float* %42, align 4
  %43 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 2
  store float %32, float* %43, align 4
  %44 = getelementptr inbounds [4 x float], [4 x float]* %9, i32 0, i32 3
  store float %36, float* %44, align 4
  %45 = fcmp fast olt float %27, %23
  br i1 %45, label %46, label %50, !dx.controlflow.hints !23

; <label>:46                                      ; preds = %20
  %47 = fcmp fast olt float %31, %27
  br i1 %47, label %48, label %49, !dx.controlflow.hints !24

; <label>:48                                      ; preds = %46
  store float %31, float* %37, align 4, !alias.scope !25, !noalias !28
  store float %23, float* %39, align 4, !alias.scope !25, !noalias !28
  br label %53

; <label>:49                                      ; preds = %46
  store float %27, float* %37, align 4, !alias.scope !25, !noalias !28
  store float %23, float* %38, align 4, !alias.scope !25, !noalias !28
  br label %53

; <label>:50                                      ; preds = %20
  %51 = fcmp fast olt float %31, %23
  br i1 %51, label %52, label %53, !dx.controlflow.hints !32

; <label>:52                                      ; preds = %50
  store float %31, float* %37, align 4, !alias.scope !25, !noalias !28
  store float %23, float* %39, align 4, !alias.scope !25, !noalias !28
  br label %53

; <label>:53                                      ; preds = %52, %50, %49, %48
  %54 = phi float [ %27, %52 ], [ %27, %50 ], [ %23, %49 ], [ %27, %48 ]
  %55 = phi float [ %23, %52 ], [ %31, %50 ], [ %31, %49 ], [ %23, %48 ]
  %56 = phi float [ %31, %52 ], [ %23, %50 ], [ %27, %49 ], [ %31, %48 ]
  %57 = fcmp fast olt float %35, %56
  br i1 %57, label %58, label %59, !dx.controlflow.hints !33

; <label>:58                                      ; preds = %53
  store float %35, float* %37, align 4, !alias.scope !25, !noalias !28
  store float %56, float* %40, align 4, !alias.scope !25, !noalias !28
  br label %59

; <label>:59                                      ; preds = %58, %53
  %60 = phi float [ %35, %58 ], [ %56, %53 ]
  %61 = phi float [ %56, %58 ], [ %35, %53 ]
  %62 = fcmp fast olt float %55, %54
  br i1 %62, label %63, label %67, !dx.controlflow.hints !34

; <label>:63                                      ; preds = %59
  %64 = fcmp fast olt float %61, %55
  br i1 %64, label %65, label %66, !dx.controlflow.hints !35

; <label>:65                                      ; preds = %63
  store float %61, float* %38, align 4, !alias.scope !25, !noalias !28
  store float %54, float* %40, align 4, !alias.scope !25, !noalias !28
  br label %70

; <label>:66                                      ; preds = %63
  store float %55, float* %38, align 4, !alias.scope !25, !noalias !28
  store float %54, float* %39, align 4, !alias.scope !25, !noalias !28
  br label %70

; <label>:67                                      ; preds = %59
  %68 = fcmp fast olt float %61, %54
  br i1 %68, label %69, label %70, !dx.controlflow.hints !36

; <label>:69                                      ; preds = %67
  store float %61, float* %38, align 4, !alias.scope !25, !noalias !28
  store float %54, float* %40, align 4, !alias.scope !25, !noalias !28
  br label %70

; <label>:70                                      ; preds = %69, %67, %66, %65
  %71 = phi float [ %61, %69 ], [ %54, %67 ], [ %55, %66 ], [ %61, %65 ]
  %72 = phi float [ %55, %69 ], [ %55, %67 ], [ %54, %66 ], [ %55, %65 ]
  %73 = phi float [ %54, %69 ], [ %61, %67 ], [ %61, %66 ], [ %54, %65 ]
  %74 = fcmp fast olt float %73, %72
  br i1 %74, label %75, label %76, !dx.controlflow.hints !37

; <label>:75                                      ; preds = %70
  store float %73, float* %39, align 4, !alias.scope !25, !noalias !28
  store float %72, float* %40, align 4, !alias.scope !25, !noalias !28
  br label %76

; <label>:76                                      ; preds = %75, %70
  %77 = fcmp fast olt float %28, %24
  br i1 %77, label %78, label %82, !dx.controlflow.hints !23

; <label>:78                                      ; preds = %76
  %79 = fcmp fast olt float %32, %28
  br i1 %79, label %80, label %81, !dx.controlflow.hints !24

; <label>:80                                      ; preds = %78
  store float %32, float* %41, align 4, !alias.scope !38, !noalias !28
  store float %24, float* %43, align 4, !alias.scope !38, !noalias !28
  br label %85

; <label>:81                                      ; preds = %78
  store float %28, float* %41, align 4, !alias.scope !38, !noalias !28
  store float %24, float* %42, align 4, !alias.scope !38, !noalias !28
  br label %85

; <label>:82                                      ; preds = %76
  %83 = fcmp fast olt float %32, %24
  br i1 %83, label %84, label %85, !dx.controlflow.hints !32

; <label>:84                                      ; preds = %82
  store float %32, float* %41, align 4, !alias.scope !38, !noalias !28
  store float %24, float* %43, align 4, !alias.scope !38, !noalias !28
  br label %85

; <label>:85                                      ; preds = %84, %82, %81, %80
  %86 = phi float [ %28, %84 ], [ %28, %82 ], [ %24, %81 ], [ %28, %80 ]
  %87 = phi float [ %24, %84 ], [ %32, %82 ], [ %32, %81 ], [ %24, %80 ]
  %88 = phi float [ %32, %84 ], [ %24, %82 ], [ %28, %81 ], [ %32, %80 ]
  %89 = fcmp fast olt float %36, %88
  br i1 %89, label %90, label %91, !dx.controlflow.hints !33

; <label>:90                                      ; preds = %85
  store float %36, float* %41, align 4, !alias.scope !38, !noalias !28
  store float %88, float* %44, align 4, !alias.scope !38, !noalias !28
  br label %91

; <label>:91                                      ; preds = %90, %85
  %92 = phi float [ %36, %90 ], [ %88, %85 ]
  %93 = phi float [ %88, %90 ], [ %36, %85 ]
  %94 = fcmp fast olt float %87, %86
  br i1 %94, label %95, label %99, !dx.controlflow.hints !34

; <label>:95                                      ; preds = %91
  %96 = fcmp fast olt float %93, %87
  br i1 %96, label %97, label %98, !dx.controlflow.hints !35

; <label>:97                                      ; preds = %95
  store float %93, float* %42, align 4, !alias.scope !38, !noalias !28
  store float %86, float* %44, align 4, !alias.scope !38, !noalias !28
  br label %102

; <label>:98                                      ; preds = %95
  store float %87, float* %42, align 4, !alias.scope !38, !noalias !28
  store float %86, float* %43, align 4, !alias.scope !38, !noalias !28
  br label %102

; <label>:99                                      ; preds = %91
  %100 = fcmp fast olt float %93, %86
  br i1 %100, label %101, label %102, !dx.controlflow.hints !36

; <label>:101                                     ; preds = %99
  store float %93, float* %42, align 4, !alias.scope !38, !noalias !28
  store float %86, float* %44, align 4, !alias.scope !38, !noalias !28
  br label %102

; <label>:102                                     ; preds = %101, %99, %98, %97
  %103 = phi float [ %87, %101 ], [ %87, %99 ], [ %86, %98 ], [ %87, %97 ]
  %104 = phi float [ %86, %101 ], [ %93, %99 ], [ %93, %98 ], [ %86, %97 ]
  %105 = fcmp fast olt float %104, %103
  br i1 %105, label %106, label %107, !dx.controlflow.hints !37

; <label>:106                                     ; preds = %102
  store float %104, float* %43, align 4, !alias.scope !38, !noalias !28
  store float %103, float* %44, align 4, !alias.scope !38, !noalias !28
  br label %107

; <label>:107                                     ; preds = %106, %102
  %108 = phi float [ %103, %106 ], [ %104, %102 ]
  br label %109

; <label>:109                                     ; preds = %132, %107
  %110 = phi float [ %92, %107 ], [ %137, %132 ]
  %111 = phi float [ %71, %107 ], [ %135, %132 ]
  %112 = phi i32 [ 1, %107 ], [ %125, %132 ]
  %113 = phi i32 [ 0, %107 ], [ %126, %132 ]
  %114 = phi i32 [ 1, %107 ], [ %127, %132 ]
  %115 = phi i32 [ 1, %107 ], [ %133, %132 ]
  %116 = phi float [ %60, %107 ], [ %130, %132 ]
  %117 = fcmp fast ugt float %111, %110
  br i1 %117, label %121, label %118, !dx.controlflow.hints !41

; <label>:118                                     ; preds = %109
  %119 = add i32 %112, 1
  %120 = add i32 %114, 1
  br label %124

; <label>:121                                     ; preds = %109
  %122 = add i32 %113, 1
  %123 = add i32 %114, -1
  br label %124

; <label>:124                                     ; preds = %121, %118
  %125 = phi i32 [ %119, %118 ], [ %112, %121 ]
  %126 = phi i32 [ %113, %118 ], [ %122, %121 ]
  %127 = phi i32 [ %120, %118 ], [ %123, %121 ]
  %128 = phi float [ %111, %118 ], [ %110, %121 ]
  %129 = icmp ugt i32 %127, %115
  %130 = select i1 %129, float %128, float %116
  %131 = icmp ult i32 %125, 4
  br i1 %131, label %132, label %138

; <label>:132                                     ; preds = %124
  %133 = select i1 %129, i32 %127, i32 %115
  %134 = getelementptr [4 x float], [4 x float]* %8, i32 0, i32 %125
  %135 = load float, float* %134, align 4, !tbaa !42, !noalias !28
  %136 = getelementptr [4 x float], [4 x float]* %9, i32 0, i32 %126
  %137 = load float, float* %136, align 4, !tbaa !42, !noalias !28
  br label %109

; <label>:138                                     ; preds = %124
  %139 = fcmp fast ole float %23, %130
  %140 = fcmp fast oge float %24, %130
  %141 = and i1 %139, %140
  br i1 %141, label %142, label %145, !dx.controlflow.hints !46

; <label>:142                                     ; preds = %138
  %143 = call float @dx.op.binary.f32(i32 35, float %23, float %60)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 36, float %24, float %108)  ; FMin(a,b)
  br label %145

; <label>:145                                     ; preds = %142, %138
  %146 = phi i32 [ 1, %142 ], [ 0, %138 ]
  %147 = phi float [ %143, %142 ], [ %60, %138 ]
  %148 = phi float [ %144, %142 ], [ %108, %138 ]
  %149 = fcmp fast ole float %27, %130
  %150 = fcmp fast oge float %28, %130
  %151 = and i1 %149, %150
  br i1 %151, label %152, label %156, !dx.controlflow.hints !46

; <label>:152                                     ; preds = %145
  %153 = call float @dx.op.binary.f32(i32 35, float %27, float %147)  ; FMax(a,b)
  %154 = call float @dx.op.binary.f32(i32 36, float %28, float %148)  ; FMin(a,b)
  %155 = or i32 %146, 2
  br label %156

; <label>:156                                     ; preds = %152, %145
  %157 = phi i32 [ %155, %152 ], [ %146, %145 ]
  %158 = phi float [ %153, %152 ], [ %147, %145 ]
  %159 = phi float [ %154, %152 ], [ %148, %145 ]
  %160 = fcmp fast ole float %31, %130
  %161 = fcmp fast oge float %32, %130
  %162 = and i1 %160, %161
  br i1 %162, label %163, label %167, !dx.controlflow.hints !46

; <label>:163                                     ; preds = %156
  %164 = call float @dx.op.binary.f32(i32 35, float %31, float %158)  ; FMax(a,b)
  %165 = call float @dx.op.binary.f32(i32 36, float %32, float %159)  ; FMin(a,b)
  %166 = or i32 %157, 4
  br label %167

; <label>:167                                     ; preds = %163, %156
  %168 = phi i32 [ %166, %163 ], [ %157, %156 ]
  %169 = phi float [ %164, %163 ], [ %158, %156 ]
  %170 = phi float [ %165, %163 ], [ %159, %156 ]
  %171 = fcmp fast ole float %35, %130
  %172 = fcmp fast oge float %36, %130
  %173 = and i1 %171, %172
  br i1 %173, label %174, label %178, !dx.controlflow.hints !46

; <label>:174                                     ; preds = %167
  %175 = call float @dx.op.binary.f32(i32 35, float %35, float %169)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 36, float %36, float %170)  ; FMin(a,b)
  %177 = or i32 %168, 8
  br label %178

; <label>:178                                     ; preds = %174, %167
  %179 = phi i32 [ %177, %174 ], [ %168, %167 ]
  %180 = phi float [ %175, %174 ], [ %169, %167 ]
  %181 = phi float [ %176, %174 ], [ %170, %167 ]
  %182 = icmp eq i32 %179, 15
  br i1 %182, label %183, label %184, !dx.controlflow.hints !47

; <label>:183                                     ; preds = %178
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %21, i32 0, float %180, float %181, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %25, i32 0, float %180, float %181, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %29, i32 0, float %180, float %181, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %2, i32 %33, i32 0, float %180, float %181, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %184

; <label>:184                                     ; preds = %183, %178
  %185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = extractvalue %dx.types.ResRet.f32 %185, 1
  %188 = fadd fast float %186, %187
  %189 = fmul fast float %188, 5.000000e-01
  %190 = fadd fast float %186, 0x3FA99999A0000000
  %191 = call float @dx.op.binary.f32(i32 36, float %190, float %189)  ; FMin(a,b)
  %192 = bitcast float %191 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 9, i32 0, i32 %192, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 1
  %195 = bitcast float %194 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 10, i32 0, i32 %195, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %21, i32 16, i32 32, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %25, i32 0)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = extractvalue %dx.types.ResRet.f32 %196, 1
  %199 = fadd fast float %197, %198
  %200 = fmul fast float %199, 5.000000e-01
  %201 = fadd fast float %197, 0x3FA99999A0000000
  %202 = call float @dx.op.binary.f32(i32 36, float %201, float %200)  ; FMin(a,b)
  %203 = bitcast float %202 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 12, i32 0, i32 %203, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %25, i32 0)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 1
  %206 = bitcast float %205 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 13, i32 0, i32 %206, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %25, i32 16, i32 44, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 1
  %210 = fadd fast float %208, %209
  %211 = fmul fast float %210, 5.000000e-01
  %212 = fadd fast float %208, 0x3FA99999A0000000
  %213 = call float @dx.op.binary.f32(i32 36, float %212, float %211)  ; FMin(a,b)
  %214 = bitcast float %213 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 15, i32 0, i32 %214, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 1
  %217 = bitcast float %216 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 16, i32 0, i32 %217, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 16, i32 56, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = fadd fast float %219, %220
  %222 = fmul fast float %221, 5.000000e-01
  %223 = fadd fast float %219, 0x3FA99999A0000000
  %224 = call float @dx.op.binary.f32(i32 36, float %223, float %222)  ; FMin(a,b)
  %225 = bitcast float %224 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 18, i32 0, i32 %225, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 1
  %228 = bitcast float %227 to i32
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 19, i32 0, i32 %228, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %33, i32 16, i32 68, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.i32 %229, 1
  %231 = add i32 %230, -2
  %232 = extractvalue %dx.types.CBufRet.i32 %229, 2
  %233 = add i32 %231, %232
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %233, i32 12, i32 80, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1518

; <label>:234                                     ; preds = %14
  %235 = add i32 %17, -1
  %236 = icmp eq i32 %15, %235
  %237 = icmp eq i32 %10, 0
  br i1 %236, label %238, label %1186, !dx.controlflow.hints !48

; <label>:238                                     ; preds = %234
  br i1 %237, label %239, label %273, !dx.controlflow.hints !49

; <label>:239                                     ; preds = %238
  %240 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %240, i32 12)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = add i32 %240, -4
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %243, i32 12)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = add i32 %240, -3
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %246, i32 12)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = add i32 %240, -2
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %249, i32 12)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = add i32 %240, -1
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %252, i32 12)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = add i32 %245, %242
  %256 = add i32 %255, %248
  %257 = add i32 %256, %251
  %258 = add i32 %257, %254
  %259 = add i32 %15, %240
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %259, i32 12, i32 %258, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %260 = add i32 %258, 3
  %261 = and i32 %260, -4
  %262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.i32 %262, 3
  %264 = call i32 @dx.op.binary.i32(i32 40, i32 %261, i32 %263)  ; UMin(a,b)
  %265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.i32 %265, 3
  %267 = extractvalue %dx.types.CBufRet.i32 %262, 0
  %268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.i32 %268, 0
  %270 = mul i32 %269, %267
  %271 = icmp ugt i32 %261, %263
  %272 = select i1 %271, i32 131072, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 %264, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 1, i32 0, i32 %270, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 2, i32 0, i32 %266, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 3, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 4, i32 0, i32 %272, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 5, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 6, i32 0, i32 1065353216, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %273

; <label>:273                                     ; preds = %239, %238
  %274 = and i32 %7, 1073741823
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %274, i32 16)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = icmp eq i32 %276, 16777215
  br i1 %277, label %1518, label %278, !dx.controlflow.hints !50

; <label>:278                                     ; preds = %273
  %279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.i32 %279, 2
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %280, i32 12)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = extractvalue %dx.types.CBufRet.i32 %279, 3
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %285, label %1518, !dx.controlflow.hints !51

; <label>:285                                     ; preds = %278
  %286 = extractvalue %dx.types.CBufRet.i32 %279, 1
  %287 = add i32 %286, -2
  %288 = icmp sgt i32 %287, -1
  br i1 %288, label %289, label %367

; <label>:289                                     ; preds = %285
  %290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.i32 %290, 1
  br label %292

; <label>:292                                     ; preds = %357, %289
  %293 = phi i32 [ %291, %289 ], [ %298, %357 ]
  %294 = phi i32 [ -1, %289 ], [ %361, %357 ]
  %295 = phi i32 [ 0, %289 ], [ %358, %357 ]
  %296 = phi i32 [ 0, %289 ], [ %360, %357 ]
  %297 = phi i32 [ %274, %289 ], [ %359, %357 ]
  %298 = lshr i32 %293, 2
  %299 = add i32 %296, %297
  %300 = and i32 %297, 3
  %301 = icmp eq i32 %300, 3
  br i1 %301, label %302, label %327, !dx.controlflow.hints !52

; <label>:302                                     ; preds = %292
  %303 = add i32 %299, -3
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %303, i32 16)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = icmp eq i32 %305, 16777215
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %303, i32 12)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = select i1 %306, i32 0, i32 %308
  %310 = add i32 %299, -2
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %310, i32 16)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = icmp eq i32 %312, 16777215
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %310, i32 12)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = select i1 %313, i32 0, i32 %315
  %317 = add i32 %299, -1
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %317, i32 16)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = icmp eq i32 %319, 16777215
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %317, i32 12)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = select i1 %320, i32 0, i32 %322
  %324 = add i32 %309, %295
  %325 = add i32 %324, %316
  %326 = add i32 %325, %323
  br label %357

; <label>:327                                     ; preds = %292
  %328 = icmp eq i32 %300, 2
  br i1 %328, label %329, label %346, !dx.controlflow.hints !53

; <label>:329                                     ; preds = %327
  %330 = add i32 %299, -2
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %330, i32 16)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = icmp eq i32 %332, 16777215
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %330, i32 12)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = select i1 %333, i32 0, i32 %335
  %337 = add i32 %299, -1
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %337, i32 16)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = icmp eq i32 %339, 16777215
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %337, i32 12)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = select i1 %340, i32 0, i32 %342
  %344 = add i32 %336, %295
  %345 = add i32 %344, %343
  br label %357

; <label>:346                                     ; preds = %327
  %347 = icmp eq i32 %300, 1
  br i1 %347, label %348, label %357, !dx.controlflow.hints !54

; <label>:348                                     ; preds = %346
  %349 = add i32 %299, -1
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %349, i32 16)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = icmp eq i32 %351, 16777215
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %349, i32 12)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = select i1 %352, i32 0, i32 %354
  %356 = add i32 %355, %295
  br label %357

; <label>:357                                     ; preds = %348, %346, %329, %302
  %358 = phi i32 [ %326, %302 ], [ %345, %329 ], [ %356, %348 ], [ %295, %346 ]
  %359 = lshr i32 %297, 2
  %360 = add i32 %296, %298
  %361 = add nsw i32 %294, 1
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 1
  %364 = add i32 %363, -2
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %292, label %366

; <label>:366                                     ; preds = %357
  br label %367

; <label>:367                                     ; preds = %366, %285
  %368 = phi i32 [ 0, %285 ], [ %358, %366 ]
  %369 = add i32 %368, %282
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %274, i32 16)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = sub i32 %369, %371
  %373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.i32 %373, 3
  %375 = bitcast i32 %374 to float
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %274, i32 8)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = lshr i32 %377, 8
  %379 = xor i32 %378, -1
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.i32 %380, 1
  %383 = bitcast i32 %382 to float
  %384 = and i32 %379, 1
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %584, label %386, !dx.controlflow.hints !55

; <label>:386                                     ; preds = %367
  %387 = add i32 %369, 4
  %388 = icmp ult i32 %387, %283
  br i1 %388, label %389, label %1181, !dx.controlflow.hints !56

; <label>:389                                     ; preds = %386
  %390 = icmp eq i32 %381, 1
  %391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %392 = extractvalue %dx.types.CBufRet.i32 %391, 1
  br i1 %390, label %501, label %393, !dx.controlflow.hints !57

; <label>:393                                     ; preds = %389
  br i1 %237, label %416, label %394

; <label>:394                                     ; preds = %393
  br label %395

; <label>:395                                     ; preds = %410, %394
  %396 = phi i32 [ %412, %410 ], [ %10, %394 ]
  %397 = phi i32 [ %411, %410 ], [ 0, %394 ]
  %398 = phi i32 [ %413, %410 ], [ 0, %394 ]
  %399 = and i32 %396, 1
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %410, label %401, !dx.controlflow.hints !58

; <label>:401                                     ; preds = %395
  %402 = lshr i32 %398, 1
  %403 = and i32 %398, 1
  %404 = icmp ne i32 %403, 0
  %405 = select i1 %404, i32 %392, i32 0
  %406 = add i32 %405, %402
  %407 = and i32 %406, 31
  %408 = shl i32 1, %407
  %409 = or i32 %408, %397
  br label %410

; <label>:410                                     ; preds = %401, %395
  %411 = phi i32 [ %409, %401 ], [ %397, %395 ]
  %412 = lshr i32 %396, 1
  %413 = add i32 %398, 1
  %414 = icmp eq i32 %412, 0
  br i1 %414, label %415, label %395

; <label>:415                                     ; preds = %410
  br label %416

; <label>:416                                     ; preds = %415, %393
  %417 = phi i32 [ 0, %393 ], [ %411, %415 ]
  %418 = and i32 %392, 31
  %419 = shl i32 1, %418
  %420 = add i32 %419, -1
  %421 = and i32 %417, %420
  %422 = lshr i32 %417, %418
  %423 = mul i32 %421, %381
  %424 = uitofp i32 %423 to float
  %425 = fadd fast float %424, 5.000000e-01
  %426 = fmul fast float %425, %383
  %427 = icmp eq i32 %381, 0
  br i1 %427, label %465, label %428

; <label>:428                                     ; preds = %416
  %429 = mul i32 %422, %381
  %430 = uitofp i32 %429 to float
  %431 = fadd fast float %430, 5.000000e-01
  %432 = fmul fast float %431, %383
  br label %433

; <label>:433                                     ; preds = %460, %428
  %434 = phi float [ %461, %460 ], [ %432, %428 ]
  %435 = phi float [ %456, %460 ], [ 2.000000e+00, %428 ]
  %436 = phi i32 [ %462, %460 ], [ 0, %428 ]
  br label %437

; <label>:437                                     ; preds = %455, %433
  %438 = phi float [ %457, %455 ], [ %426, %433 ]
  %439 = phi float [ %456, %455 ], [ %435, %433 ]
  %440 = phi i32 [ %458, %455 ], [ 0, %433 ]
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = fmul fast float %442, %438
  %445 = fmul fast float %443, %434
  %446 = extractvalue %dx.types.CBufRet.f32 %441, 2
  %447 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %448 = fadd fast float %444, %446
  %449 = fadd fast float %445, %447
  %450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %448, float %449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = fcmp fast ogt float %451, 0.000000e+00
  br i1 %452, label %453, label %455, !dx.controlflow.hints !59

; <label>:453                                     ; preds = %437
  %454 = call float @dx.op.binary.f32(i32 36, float %451, float %439)  ; FMin(a,b)
  br label %455

; <label>:455                                     ; preds = %453, %437
  %456 = phi float [ %454, %453 ], [ %439, %437 ]
  %457 = fadd fast float %438, %383
  %458 = add nuw i32 %440, 1
  %459 = icmp eq i32 %458, %381
  br i1 %459, label %460, label %437

; <label>:460                                     ; preds = %455
  %461 = fadd fast float %434, %383
  %462 = add nuw i32 %436, 1
  %463 = icmp eq i32 %462, %381
  br i1 %463, label %464, label %433

; <label>:464                                     ; preds = %460
  br label %465

; <label>:465                                     ; preds = %464, %416
  %466 = phi float [ 2.000000e+00, %416 ], [ %456, %464 ]
  %467 = fcmp fast ole float %466, 1.000000e+00
  %468 = select i1 %467, float %466, float 0.000000e+00
  br i1 %427, label %551, label %469

; <label>:469                                     ; preds = %465
  %470 = mul i32 %422, %381
  %471 = uitofp i32 %470 to float
  %472 = fadd fast float %471, 5.000000e-01
  %473 = fmul fast float %472, %383
  br label %474

; <label>:474                                     ; preds = %497, %469
  %475 = phi float [ %498, %497 ], [ %473, %469 ]
  %476 = phi float [ %493, %497 ], [ 0.000000e+00, %469 ]
  %477 = phi i32 [ %499, %497 ], [ 0, %469 ]
  br label %478

; <label>:478                                     ; preds = %478, %474
  %479 = phi float [ %494, %478 ], [ %426, %474 ]
  %480 = phi float [ %493, %478 ], [ %476, %474 ]
  %481 = phi i32 [ %495, %478 ], [ 0, %474 ]
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %484 = extractvalue %dx.types.CBufRet.f32 %482, 1
  %485 = fmul fast float %483, %479
  %486 = fmul fast float %484, %475
  %487 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %488 = extractvalue %dx.types.CBufRet.f32 %482, 3
  %489 = fadd fast float %485, %487
  %490 = fadd fast float %486, %488
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %489, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = call float @dx.op.binary.f32(i32 35, float %492, float %480)  ; FMax(a,b)
  %494 = fadd fast float %479, %383
  %495 = add nuw i32 %481, 1
  %496 = icmp eq i32 %495, %381
  br i1 %496, label %497, label %478

; <label>:497                                     ; preds = %478
  %498 = fadd fast float %475, %383
  %499 = add nuw i32 %477, 1
  %500 = icmp eq i32 %499, %381
  br i1 %500, label %550, label %474

; <label>:501                                     ; preds = %389
  br i1 %237, label %524, label %502

; <label>:502                                     ; preds = %501
  br label %503

; <label>:503                                     ; preds = %518, %502
  %504 = phi i32 [ %520, %518 ], [ %10, %502 ]
  %505 = phi i32 [ %519, %518 ], [ 0, %502 ]
  %506 = phi i32 [ %521, %518 ], [ 0, %502 ]
  %507 = and i32 %504, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %518, label %509, !dx.controlflow.hints !58

; <label>:509                                     ; preds = %503
  %510 = lshr i32 %506, 1
  %511 = and i32 %506, 1
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, i32 %392, i32 0
  %514 = add i32 %513, %510
  %515 = and i32 %514, 31
  %516 = shl i32 1, %515
  %517 = or i32 %516, %505
  br label %518

; <label>:518                                     ; preds = %509, %503
  %519 = phi i32 [ %517, %509 ], [ %505, %503 ]
  %520 = lshr i32 %504, 1
  %521 = add i32 %506, 1
  %522 = icmp eq i32 %520, 0
  br i1 %522, label %523, label %503

; <label>:523                                     ; preds = %518
  br label %524

; <label>:524                                     ; preds = %523, %501
  %525 = phi i32 [ 0, %501 ], [ %519, %523 ]
  %526 = and i32 %392, 31
  %527 = shl i32 1, %526
  %528 = add i32 %527, -1
  %529 = and i32 %525, %528
  %530 = lshr i32 %525, %526
  %531 = uitofp i32 %529 to float
  %532 = fadd fast float %531, 5.000000e-01
  %533 = uitofp i32 %530 to float
  %534 = fadd fast float %533, 5.000000e-01
  %535 = fmul fast float %532, %375
  %536 = fmul fast float %534, %375
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = fmul fast float %535, %538
  %541 = fmul fast float %536, %539
  %542 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %543 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %544 = fadd fast float %540, %542
  %545 = fadd fast float %541, %543
  %546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %544, float %545, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  br label %551

; <label>:550                                     ; preds = %497
  br label %551

; <label>:551                                     ; preds = %550, %524, %465
  %552 = phi float [ %547, %524 ], [ %468, %465 ], [ %468, %550 ]
  %553 = phi float [ %549, %524 ], [ 0.000000e+00, %465 ], [ %493, %550 ]
  %554 = call float @dx.op.binary.f32(i32 35, float %552, float 0.000000e+00)  ; FMax(a,b)
  %555 = call float @dx.op.binary.f32(i32 35, float %553, float 0.000000e+00)  ; FMax(a,b)
  %556 = fcmp fast une float %553, 0.000000e+00
  br i1 %556, label %560, label %557, !dx.controlflow.hints !60

; <label>:557                                     ; preds = %551
  %558 = fcmp fast une float %552, 0.000000e+00
  %559 = select i1 %558, float 1.000000e+00, float 0.000000e+00
  br label %575

; <label>:560                                     ; preds = %551
  %561 = fcmp fast ugt float %552, %553
  br i1 %561, label %562, label %572, !dx.controlflow.hints !61

; <label>:562                                     ; preds = %560
  %563 = fadd fast float %553, 0x3E7AD7F2A0000000
  %564 = fcmp fast ult float %563, %552
  br i1 %564, label %565, label %570, !dx.controlflow.hints !62

; <label>:565                                     ; preds = %562
  %566 = fsub fast float %552, %553
  %567 = fmul fast float %566, 0x3F847AE140000000
  %568 = fadd fast float %567, %552
  %569 = call float @dx.op.binary.f32(i32 36, float %568, float 1.000000e+00)  ; FMin(a,b)
  br label %575

; <label>:570                                     ; preds = %562
  %571 = fadd fast float %553, 0xBE7AD7F2A0000000
  br label %575

; <label>:572                                     ; preds = %560
  %573 = fadd fast float %553, 0xBE7AD7F2A0000000
  %574 = call float @dx.op.binary.f32(i32 36, float %552, float %573)  ; FMin(a,b)
  br label %575

; <label>:575                                     ; preds = %572, %570, %565, %557
  %576 = phi float [ %574, %572 ], [ %571, %570 ], [ %554, %565 ], [ %554, %557 ]
  %577 = phi float [ %555, %572 ], [ %555, %570 ], [ %569, %565 ], [ %559, %557 ]
  %578 = fadd fast float %577, %576
  %579 = fmul fast float %578, 5.000000e-01
  %580 = fadd fast float %576, 0x3FA99999A0000000
  %581 = call float @dx.op.binary.f32(i32 36, float %580, float %579)  ; FMin(a,b)
  %582 = bitcast float %581 to i32
  %583 = lshr i32 %369, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %583, i32 0, i32 %582, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %584

; <label>:584                                     ; preds = %575, %367
  %585 = phi i32 [ %387, %575 ], [ %369, %367 ]
  %586 = phi i32 [ 3, %575 ], [ 0, %367 ]
  %587 = and i32 %379, 2
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %783, label %589, !dx.controlflow.hints !55

; <label>:589                                     ; preds = %584
  %590 = add i32 %585, 4
  %591 = icmp ult i32 %590, %283
  br i1 %591, label %592, label %1181, !dx.controlflow.hints !56

; <label>:592                                     ; preds = %589
  %593 = or i32 %586, 12
  %594 = icmp eq i32 %381, 1
  %595 = or i32 %10, 1
  %596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.i32 %596, 1
  br i1 %594, label %599, label %598, !dx.controlflow.hints !57

; <label>:598                                     ; preds = %592
  br label %600

; <label>:599                                     ; preds = %592
  br label %688

; <label>:600                                     ; preds = %615, %598
  %601 = phi i32 [ %617, %615 ], [ %595, %598 ]
  %602 = phi i32 [ %616, %615 ], [ 0, %598 ]
  %603 = phi i32 [ %618, %615 ], [ 0, %598 ]
  %604 = and i32 %601, 1
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %615, label %606, !dx.controlflow.hints !58

; <label>:606                                     ; preds = %600
  %607 = lshr i32 %603, 1
  %608 = and i32 %603, 1
  %609 = icmp ne i32 %608, 0
  %610 = select i1 %609, i32 %597, i32 0
  %611 = add i32 %610, %607
  %612 = and i32 %611, 31
  %613 = shl i32 1, %612
  %614 = or i32 %613, %602
  br label %615

; <label>:615                                     ; preds = %606, %600
  %616 = phi i32 [ %614, %606 ], [ %602, %600 ]
  %617 = lshr i32 %601, 1
  %618 = add i32 %603, 1
  %619 = icmp eq i32 %617, 0
  br i1 %619, label %767, label %600

; <label>:620                                     ; preds = %778, %647
  %621 = phi float [ %648, %647 ], [ %782, %778 ]
  %622 = phi float [ %643, %647 ], [ 2.000000e+00, %778 ]
  %623 = phi i32 [ %649, %647 ], [ 0, %778 ]
  br label %624

; <label>:624                                     ; preds = %642, %620
  %625 = phi float [ %644, %642 ], [ %776, %620 ]
  %626 = phi float [ %643, %642 ], [ %622, %620 ]
  %627 = phi i32 [ %645, %642 ], [ 0, %620 ]
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 0
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %631 = fmul fast float %629, %625
  %632 = fmul fast float %630, %621
  %633 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %635 = fadd fast float %631, %633
  %636 = fadd fast float %632, %634
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %635, float %636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = fcmp fast ogt float %638, 0.000000e+00
  br i1 %639, label %640, label %642, !dx.controlflow.hints !59

; <label>:640                                     ; preds = %624
  %641 = call float @dx.op.binary.f32(i32 36, float %638, float %626)  ; FMin(a,b)
  br label %642

; <label>:642                                     ; preds = %640, %624
  %643 = phi float [ %641, %640 ], [ %626, %624 ]
  %644 = fadd fast float %625, %383
  %645 = add nuw i32 %627, 1
  %646 = icmp eq i32 %645, %381
  br i1 %646, label %647, label %624

; <label>:647                                     ; preds = %642
  %648 = fadd fast float %621, %383
  %649 = add nuw i32 %623, 1
  %650 = icmp eq i32 %649, %381
  br i1 %650, label %651, label %620

; <label>:651                                     ; preds = %647
  br label %652

; <label>:652                                     ; preds = %767, %651
  %653 = phi float [ 2.000000e+00, %767 ], [ %643, %651 ]
  %654 = fcmp fast ole float %653, 1.000000e+00
  %655 = select i1 %654, float %653, float 0.000000e+00
  br i1 %777, label %709, label %656

; <label>:656                                     ; preds = %652
  %657 = mul i32 %772, %381
  %658 = uitofp i32 %657 to float
  %659 = fadd fast float %658, 5.000000e-01
  %660 = fmul fast float %659, %383
  br label %661

; <label>:661                                     ; preds = %684, %656
  %662 = phi float [ %685, %684 ], [ %660, %656 ]
  %663 = phi float [ %680, %684 ], [ 0.000000e+00, %656 ]
  %664 = phi i32 [ %686, %684 ], [ 0, %656 ]
  br label %665

; <label>:665                                     ; preds = %665, %661
  %666 = phi float [ %681, %665 ], [ %776, %661 ]
  %667 = phi float [ %680, %665 ], [ %663, %661 ]
  %668 = phi i32 [ %682, %665 ], [ 0, %661 ]
  %669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.f32 %669, 0
  %671 = extractvalue %dx.types.CBufRet.f32 %669, 1
  %672 = fmul fast float %670, %666
  %673 = fmul fast float %671, %662
  %674 = extractvalue %dx.types.CBufRet.f32 %669, 2
  %675 = extractvalue %dx.types.CBufRet.f32 %669, 3
  %676 = fadd fast float %672, %674
  %677 = fadd fast float %673, %675
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %676, float %677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = call float @dx.op.binary.f32(i32 35, float %679, float %667)  ; FMax(a,b)
  %681 = fadd fast float %666, %383
  %682 = add nuw i32 %668, 1
  %683 = icmp eq i32 %682, %381
  br i1 %683, label %684, label %665

; <label>:684                                     ; preds = %665
  %685 = fadd fast float %662, %383
  %686 = add nuw i32 %664, 1
  %687 = icmp eq i32 %686, %381
  br i1 %687, label %708, label %661

; <label>:688                                     ; preds = %703, %599
  %689 = phi i32 [ %705, %703 ], [ %595, %599 ]
  %690 = phi i32 [ %704, %703 ], [ 0, %599 ]
  %691 = phi i32 [ %706, %703 ], [ 0, %599 ]
  %692 = and i32 %689, 1
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %703, label %694, !dx.controlflow.hints !58

; <label>:694                                     ; preds = %688
  %695 = lshr i32 %691, 1
  %696 = and i32 %691, 1
  %697 = icmp ne i32 %696, 0
  %698 = select i1 %697, i32 %597, i32 0
  %699 = add i32 %698, %695
  %700 = and i32 %699, 31
  %701 = shl i32 1, %700
  %702 = or i32 %701, %690
  br label %703

; <label>:703                                     ; preds = %694, %688
  %704 = phi i32 [ %702, %694 ], [ %690, %688 ]
  %705 = lshr i32 %689, 1
  %706 = add i32 %691, 1
  %707 = icmp eq i32 %705, 0
  br i1 %707, label %742, label %688

; <label>:708                                     ; preds = %684
  br label %709

; <label>:709                                     ; preds = %742, %708, %652
  %710 = phi float [ %764, %742 ], [ %655, %652 ], [ %655, %708 ]
  %711 = phi float [ %766, %742 ], [ 0.000000e+00, %652 ], [ %680, %708 ]
  %712 = call float @dx.op.binary.f32(i32 35, float %710, float 0.000000e+00)  ; FMax(a,b)
  %713 = call float @dx.op.binary.f32(i32 35, float %711, float 0.000000e+00)  ; FMax(a,b)
  %714 = fcmp fast une float %711, 0.000000e+00
  br i1 %714, label %718, label %715, !dx.controlflow.hints !60

; <label>:715                                     ; preds = %709
  %716 = fcmp fast une float %710, 0.000000e+00
  %717 = select i1 %716, float 1.000000e+00, float 0.000000e+00
  br label %733

; <label>:718                                     ; preds = %709
  %719 = fcmp fast ugt float %710, %711
  br i1 %719, label %720, label %730, !dx.controlflow.hints !61

; <label>:720                                     ; preds = %718
  %721 = fadd fast float %711, 0x3E7AD7F2A0000000
  %722 = fcmp fast ult float %721, %710
  br i1 %722, label %723, label %728, !dx.controlflow.hints !62

; <label>:723                                     ; preds = %720
  %724 = fsub fast float %710, %711
  %725 = fmul fast float %724, 0x3F847AE140000000
  %726 = fadd fast float %725, %710
  %727 = call float @dx.op.binary.f32(i32 36, float %726, float 1.000000e+00)  ; FMin(a,b)
  br label %733

; <label>:728                                     ; preds = %720
  %729 = fadd fast float %711, 0xBE7AD7F2A0000000
  br label %733

; <label>:730                                     ; preds = %718
  %731 = fadd fast float %711, 0xBE7AD7F2A0000000
  %732 = call float @dx.op.binary.f32(i32 36, float %710, float %731)  ; FMin(a,b)
  br label %733

; <label>:733                                     ; preds = %730, %728, %723, %715
  %734 = phi float [ %732, %730 ], [ %729, %728 ], [ %712, %723 ], [ %712, %715 ]
  %735 = phi float [ %713, %730 ], [ %713, %728 ], [ %727, %723 ], [ %717, %715 ]
  %736 = fadd fast float %735, %734
  %737 = fmul fast float %736, 5.000000e-01
  %738 = fadd fast float %734, 0x3FA99999A0000000
  %739 = call float @dx.op.binary.f32(i32 36, float %738, float %737)  ; FMin(a,b)
  %740 = bitcast float %739 to i32
  %741 = lshr i32 %585, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %741, i32 0, i32 %740, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %783

; <label>:742                                     ; preds = %703
  %743 = and i32 %597, 31
  %744 = shl i32 1, %743
  %745 = add i32 %744, -1
  %746 = and i32 %704, %745
  %747 = lshr i32 %704, %743
  %748 = uitofp i32 %746 to float
  %749 = fadd fast float %748, 5.000000e-01
  %750 = uitofp i32 %747 to float
  %751 = fadd fast float %750, 5.000000e-01
  %752 = fmul fast float %749, %375
  %753 = fmul fast float %751, %375
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %757 = fmul fast float %755, %752
  %758 = fmul fast float %756, %753
  %759 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %760 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %761 = fadd fast float %757, %759
  %762 = fadd fast float %758, %760
  %763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %761, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %761, float %762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  br label %709

; <label>:767                                     ; preds = %615
  %768 = and i32 %597, 31
  %769 = shl i32 1, %768
  %770 = add i32 %769, -1
  %771 = and i32 %616, %770
  %772 = lshr i32 %616, %768
  %773 = mul i32 %771, %381
  %774 = uitofp i32 %773 to float
  %775 = fadd fast float %774, 5.000000e-01
  %776 = fmul fast float %775, %383
  %777 = icmp eq i32 %381, 0
  br i1 %777, label %652, label %778

; <label>:778                                     ; preds = %767
  %779 = mul i32 %772, %381
  %780 = uitofp i32 %779 to float
  %781 = fadd fast float %780, 5.000000e-01
  %782 = fmul fast float %781, %383
  br label %620

; <label>:783                                     ; preds = %733, %584
  %784 = phi i32 [ %590, %733 ], [ %585, %584 ]
  %785 = phi i32 [ %593, %733 ], [ %586, %584 ]
  %786 = and i32 %379, 4
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %941, label %788, !dx.controlflow.hints !55

; <label>:788                                     ; preds = %783
  %789 = add i32 %784, 4
  %790 = icmp ult i32 %789, %283
  br i1 %790, label %791, label %1181, !dx.controlflow.hints !56

; <label>:791                                     ; preds = %788
  %792 = or i32 %785, 48
  %793 = icmp eq i32 %381, 1
  %794 = or i32 %10, 2
  %795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.i32 %795, 1
  br i1 %793, label %798, label %797, !dx.controlflow.hints !57

; <label>:797                                     ; preds = %791
  br label %799

; <label>:798                                     ; preds = %791
  br label %887

; <label>:799                                     ; preds = %814, %797
  %800 = phi i32 [ %816, %814 ], [ %794, %797 ]
  %801 = phi i32 [ %815, %814 ], [ 0, %797 ]
  %802 = phi i32 [ %817, %814 ], [ 0, %797 ]
  %803 = and i32 %800, 1
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %814, label %805, !dx.controlflow.hints !58

; <label>:805                                     ; preds = %799
  %806 = lshr i32 %802, 1
  %807 = and i32 %802, 1
  %808 = icmp ne i32 %807, 0
  %809 = select i1 %808, i32 %796, i32 0
  %810 = add i32 %809, %806
  %811 = and i32 %810, 31
  %812 = shl i32 1, %811
  %813 = or i32 %812, %801
  br label %814

; <label>:814                                     ; preds = %805, %799
  %815 = phi i32 [ %813, %805 ], [ %801, %799 ]
  %816 = lshr i32 %800, 1
  %817 = add i32 %802, 1
  %818 = icmp eq i32 %816, 0
  br i1 %818, label %974, label %799

; <label>:819                                     ; preds = %985, %846
  %820 = phi float [ %847, %846 ], [ %989, %985 ]
  %821 = phi float [ %842, %846 ], [ 2.000000e+00, %985 ]
  %822 = phi i32 [ %848, %846 ], [ 0, %985 ]
  br label %823

; <label>:823                                     ; preds = %841, %819
  %824 = phi float [ %843, %841 ], [ %983, %819 ]
  %825 = phi float [ %842, %841 ], [ %821, %819 ]
  %826 = phi i32 [ %844, %841 ], [ 0, %819 ]
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %830 = fmul fast float %828, %824
  %831 = fmul fast float %829, %820
  %832 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %833 = extractvalue %dx.types.CBufRet.f32 %827, 3
  %834 = fadd fast float %830, %832
  %835 = fadd fast float %831, %833
  %836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %834, float %835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = fcmp fast ogt float %837, 0.000000e+00
  br i1 %838, label %839, label %841, !dx.controlflow.hints !59

; <label>:839                                     ; preds = %823
  %840 = call float @dx.op.binary.f32(i32 36, float %837, float %825)  ; FMin(a,b)
  br label %841

; <label>:841                                     ; preds = %839, %823
  %842 = phi float [ %840, %839 ], [ %825, %823 ]
  %843 = fadd fast float %824, %383
  %844 = add nuw i32 %826, 1
  %845 = icmp eq i32 %844, %381
  br i1 %845, label %846, label %823

; <label>:846                                     ; preds = %841
  %847 = fadd fast float %820, %383
  %848 = add nuw i32 %822, 1
  %849 = icmp eq i32 %848, %381
  br i1 %849, label %850, label %819

; <label>:850                                     ; preds = %846
  br label %851

; <label>:851                                     ; preds = %974, %850
  %852 = phi float [ 2.000000e+00, %974 ], [ %842, %850 ]
  %853 = fcmp fast ole float %852, 1.000000e+00
  %854 = select i1 %853, float %852, float 0.000000e+00
  br i1 %984, label %908, label %855

; <label>:855                                     ; preds = %851
  %856 = mul i32 %979, %381
  %857 = uitofp i32 %856 to float
  %858 = fadd fast float %857, 5.000000e-01
  %859 = fmul fast float %858, %383
  br label %860

; <label>:860                                     ; preds = %883, %855
  %861 = phi float [ %884, %883 ], [ %859, %855 ]
  %862 = phi float [ %879, %883 ], [ 0.000000e+00, %855 ]
  %863 = phi i32 [ %885, %883 ], [ 0, %855 ]
  br label %864

; <label>:864                                     ; preds = %864, %860
  %865 = phi float [ %880, %864 ], [ %983, %860 ]
  %866 = phi float [ %879, %864 ], [ %862, %860 ]
  %867 = phi i32 [ %881, %864 ], [ 0, %860 ]
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = fmul fast float %869, %865
  %872 = fmul fast float %870, %861
  %873 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %874 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %875 = fadd fast float %871, %873
  %876 = fadd fast float %872, %874
  %877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %875, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float %866)  ; FMax(a,b)
  %880 = fadd fast float %865, %383
  %881 = add nuw i32 %867, 1
  %882 = icmp eq i32 %881, %381
  br i1 %882, label %883, label %864

; <label>:883                                     ; preds = %864
  %884 = fadd fast float %861, %383
  %885 = add nuw i32 %863, 1
  %886 = icmp eq i32 %885, %381
  br i1 %886, label %907, label %860

; <label>:887                                     ; preds = %902, %798
  %888 = phi i32 [ %904, %902 ], [ %794, %798 ]
  %889 = phi i32 [ %903, %902 ], [ 0, %798 ]
  %890 = phi i32 [ %905, %902 ], [ 0, %798 ]
  %891 = and i32 %888, 1
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %902, label %893, !dx.controlflow.hints !58

; <label>:893                                     ; preds = %887
  %894 = lshr i32 %890, 1
  %895 = and i32 %890, 1
  %896 = icmp ne i32 %895, 0
  %897 = select i1 %896, i32 %796, i32 0
  %898 = add i32 %897, %894
  %899 = and i32 %898, 31
  %900 = shl i32 1, %899
  %901 = or i32 %900, %889
  br label %902

; <label>:902                                     ; preds = %893, %887
  %903 = phi i32 [ %901, %893 ], [ %889, %887 ]
  %904 = lshr i32 %888, 1
  %905 = add i32 %890, 1
  %906 = icmp eq i32 %904, 0
  br i1 %906, label %949, label %887

; <label>:907                                     ; preds = %883
  br label %908

; <label>:908                                     ; preds = %949, %907, %851
  %909 = phi float [ %971, %949 ], [ %854, %851 ], [ %854, %907 ]
  %910 = phi float [ %973, %949 ], [ 0.000000e+00, %851 ], [ %879, %907 ]
  %911 = call float @dx.op.binary.f32(i32 35, float %909, float 0.000000e+00)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 35, float %910, float 0.000000e+00)  ; FMax(a,b)
  %913 = fcmp fast une float %910, 0.000000e+00
  br i1 %913, label %917, label %914, !dx.controlflow.hints !60

; <label>:914                                     ; preds = %908
  %915 = fcmp fast une float %909, 0.000000e+00
  %916 = select i1 %915, float 1.000000e+00, float 0.000000e+00
  br label %932

; <label>:917                                     ; preds = %908
  %918 = fcmp fast ugt float %909, %910
  br i1 %918, label %919, label %929, !dx.controlflow.hints !61

; <label>:919                                     ; preds = %917
  %920 = fadd fast float %910, 0x3E7AD7F2A0000000
  %921 = fcmp fast ult float %920, %909
  br i1 %921, label %922, label %927, !dx.controlflow.hints !62

; <label>:922                                     ; preds = %919
  %923 = fsub fast float %909, %910
  %924 = fmul fast float %923, 0x3F847AE140000000
  %925 = fadd fast float %924, %909
  %926 = call float @dx.op.binary.f32(i32 36, float %925, float 1.000000e+00)  ; FMin(a,b)
  br label %932

; <label>:927                                     ; preds = %919
  %928 = fadd fast float %910, 0xBE7AD7F2A0000000
  br label %932

; <label>:929                                     ; preds = %917
  %930 = fadd fast float %910, 0xBE7AD7F2A0000000
  %931 = call float @dx.op.binary.f32(i32 36, float %909, float %930)  ; FMin(a,b)
  br label %932

; <label>:932                                     ; preds = %929, %927, %922, %914
  %933 = phi float [ %931, %929 ], [ %928, %927 ], [ %911, %922 ], [ %911, %914 ]
  %934 = phi float [ %912, %929 ], [ %912, %927 ], [ %926, %922 ], [ %916, %914 ]
  %935 = fadd fast float %934, %933
  %936 = fmul fast float %935, 5.000000e-01
  %937 = fadd fast float %933, 0x3FA99999A0000000
  %938 = call float @dx.op.binary.f32(i32 36, float %937, float %936)  ; FMin(a,b)
  %939 = bitcast float %938 to i32
  %940 = lshr i32 %784, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %940, i32 0, i32 %939, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %941

; <label>:941                                     ; preds = %932, %783
  %942 = phi i32 [ %789, %932 ], [ %784, %783 ]
  %943 = phi i32 [ %792, %932 ], [ %785, %783 ]
  %944 = add i32 %942, 4
  %945 = and i32 %379, 8
  %946 = icmp eq i32 %945, 0
  %947 = icmp uge i32 %944, %283
  %948 = or i1 %946, %947
  br i1 %948, label %1181, label %990, !dx.controlflow.hints !55

; <label>:949                                     ; preds = %902
  %950 = and i32 %796, 31
  %951 = shl i32 1, %950
  %952 = add i32 %951, -1
  %953 = and i32 %903, %952
  %954 = lshr i32 %903, %950
  %955 = uitofp i32 %953 to float
  %956 = fadd fast float %955, 5.000000e-01
  %957 = uitofp i32 %954 to float
  %958 = fadd fast float %957, 5.000000e-01
  %959 = fmul fast float %956, %375
  %960 = fmul fast float %958, %375
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = fmul fast float %962, %959
  %965 = fmul fast float %963, %960
  %966 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %968 = fadd fast float %964, %966
  %969 = fadd fast float %965, %967
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %968, float %969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %968, float %969, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  br label %908

; <label>:974                                     ; preds = %814
  %975 = and i32 %796, 31
  %976 = shl i32 1, %975
  %977 = add i32 %976, -1
  %978 = and i32 %815, %977
  %979 = lshr i32 %815, %975
  %980 = mul i32 %978, %381
  %981 = uitofp i32 %980 to float
  %982 = fadd fast float %981, 5.000000e-01
  %983 = fmul fast float %982, %383
  %984 = icmp eq i32 %381, 0
  br i1 %984, label %851, label %985

; <label>:985                                     ; preds = %974
  %986 = mul i32 %979, %381
  %987 = uitofp i32 %986 to float
  %988 = fadd fast float %987, 5.000000e-01
  %989 = fmul fast float %988, %383
  br label %819

; <label>:990                                     ; preds = %941
  %991 = or i32 %943, 192
  %992 = icmp eq i32 %381, 1
  %993 = or i32 %10, 3
  %994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.i32 %994, 1
  br i1 %992, label %997, label %996, !dx.controlflow.hints !57

; <label>:996                                     ; preds = %990
  br label %998

; <label>:997                                     ; preds = %990
  br label %1086

; <label>:998                                     ; preds = %1013, %996
  %999 = phi i32 [ %1015, %1013 ], [ %993, %996 ]
  %1000 = phi i32 [ %1014, %1013 ], [ 0, %996 ]
  %1001 = phi i32 [ %1016, %1013 ], [ 0, %996 ]
  %1002 = and i32 %999, 1
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1013, label %1004, !dx.controlflow.hints !58

; <label>:1004                                    ; preds = %998
  %1005 = lshr i32 %1001, 1
  %1006 = and i32 %1001, 1
  %1007 = icmp ne i32 %1006, 0
  %1008 = select i1 %1007, i32 %995, i32 0
  %1009 = add i32 %1008, %1005
  %1010 = and i32 %1009, 31
  %1011 = shl i32 1, %1010
  %1012 = or i32 %1011, %1000
  br label %1013

; <label>:1013                                    ; preds = %1004, %998
  %1014 = phi i32 [ %1012, %1004 ], [ %1000, %998 ]
  %1015 = lshr i32 %999, 1
  %1016 = add i32 %1001, 1
  %1017 = icmp eq i32 %1015, 0
  br i1 %1017, label %1165, label %998

; <label>:1018                                    ; preds = %1176, %1045
  %1019 = phi float [ %1046, %1045 ], [ %1180, %1176 ]
  %1020 = phi float [ %1041, %1045 ], [ 2.000000e+00, %1176 ]
  %1021 = phi i32 [ %1047, %1045 ], [ 0, %1176 ]
  br label %1022

; <label>:1022                                    ; preds = %1040, %1018
  %1023 = phi float [ %1042, %1040 ], [ %1174, %1018 ]
  %1024 = phi float [ %1041, %1040 ], [ %1020, %1018 ]
  %1025 = phi i32 [ %1043, %1040 ], [ 0, %1018 ]
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1029 = fmul fast float %1027, %1023
  %1030 = fmul fast float %1028, %1019
  %1031 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1032 = extractvalue %dx.types.CBufRet.f32 %1026, 3
  %1033 = fadd fast float %1029, %1031
  %1034 = fadd fast float %1030, %1032
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1033, float %1034, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = fcmp fast ogt float %1036, 0.000000e+00
  br i1 %1037, label %1038, label %1040, !dx.controlflow.hints !59

; <label>:1038                                    ; preds = %1022
  %1039 = call float @dx.op.binary.f32(i32 36, float %1036, float %1024)  ; FMin(a,b)
  br label %1040

; <label>:1040                                    ; preds = %1038, %1022
  %1041 = phi float [ %1039, %1038 ], [ %1024, %1022 ]
  %1042 = fadd fast float %1023, %383
  %1043 = add nuw i32 %1025, 1
  %1044 = icmp eq i32 %1043, %381
  br i1 %1044, label %1045, label %1022

; <label>:1045                                    ; preds = %1040
  %1046 = fadd fast float %1019, %383
  %1047 = add nuw i32 %1021, 1
  %1048 = icmp eq i32 %1047, %381
  br i1 %1048, label %1049, label %1018

; <label>:1049                                    ; preds = %1045
  br label %1050

; <label>:1050                                    ; preds = %1165, %1049
  %1051 = phi float [ 2.000000e+00, %1165 ], [ %1041, %1049 ]
  %1052 = fcmp fast ole float %1051, 1.000000e+00
  %1053 = select i1 %1052, float %1051, float 0.000000e+00
  br i1 %1175, label %1107, label %1054

; <label>:1054                                    ; preds = %1050
  %1055 = mul i32 %1170, %381
  %1056 = uitofp i32 %1055 to float
  %1057 = fadd fast float %1056, 5.000000e-01
  %1058 = fmul fast float %1057, %383
  br label %1059

; <label>:1059                                    ; preds = %1082, %1054
  %1060 = phi float [ %1083, %1082 ], [ %1058, %1054 ]
  %1061 = phi float [ %1078, %1082 ], [ 0.000000e+00, %1054 ]
  %1062 = phi i32 [ %1084, %1082 ], [ 0, %1054 ]
  br label %1063

; <label>:1063                                    ; preds = %1063, %1059
  %1064 = phi float [ %1079, %1063 ], [ %1174, %1059 ]
  %1065 = phi float [ %1078, %1063 ], [ %1061, %1059 ]
  %1066 = phi i32 [ %1080, %1063 ], [ 0, %1059 ]
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.CBufRet.f32 %1067, 1
  %1070 = fmul fast float %1068, %1064
  %1071 = fmul fast float %1069, %1060
  %1072 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1073 = extractvalue %dx.types.CBufRet.f32 %1067, 3
  %1074 = fadd fast float %1070, %1072
  %1075 = fadd fast float %1071, %1073
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = call float @dx.op.binary.f32(i32 35, float %1077, float %1065)  ; FMax(a,b)
  %1079 = fadd fast float %1064, %383
  %1080 = add nuw i32 %1066, 1
  %1081 = icmp eq i32 %1080, %381
  br i1 %1081, label %1082, label %1063

; <label>:1082                                    ; preds = %1063
  %1083 = fadd fast float %1060, %383
  %1084 = add nuw i32 %1062, 1
  %1085 = icmp eq i32 %1084, %381
  br i1 %1085, label %1106, label %1059

; <label>:1086                                    ; preds = %1101, %997
  %1087 = phi i32 [ %1103, %1101 ], [ %993, %997 ]
  %1088 = phi i32 [ %1102, %1101 ], [ 0, %997 ]
  %1089 = phi i32 [ %1104, %1101 ], [ 0, %997 ]
  %1090 = and i32 %1087, 1
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1101, label %1092, !dx.controlflow.hints !58

; <label>:1092                                    ; preds = %1086
  %1093 = lshr i32 %1089, 1
  %1094 = and i32 %1089, 1
  %1095 = icmp ne i32 %1094, 0
  %1096 = select i1 %1095, i32 %995, i32 0
  %1097 = add i32 %1096, %1093
  %1098 = and i32 %1097, 31
  %1099 = shl i32 1, %1098
  %1100 = or i32 %1099, %1088
  br label %1101

; <label>:1101                                    ; preds = %1092, %1086
  %1102 = phi i32 [ %1100, %1092 ], [ %1088, %1086 ]
  %1103 = lshr i32 %1087, 1
  %1104 = add i32 %1089, 1
  %1105 = icmp eq i32 %1103, 0
  br i1 %1105, label %1140, label %1086

; <label>:1106                                    ; preds = %1082
  br label %1107

; <label>:1107                                    ; preds = %1140, %1106, %1050
  %1108 = phi float [ %1162, %1140 ], [ %1053, %1050 ], [ %1053, %1106 ]
  %1109 = phi float [ %1164, %1140 ], [ 0.000000e+00, %1050 ], [ %1078, %1106 ]
  %1110 = call float @dx.op.binary.f32(i32 35, float %1108, float 0.000000e+00)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 35, float %1109, float 0.000000e+00)  ; FMax(a,b)
  %1112 = fcmp fast une float %1109, 0.000000e+00
  br i1 %1112, label %1116, label %1113, !dx.controlflow.hints !60

; <label>:1113                                    ; preds = %1107
  %1114 = fcmp fast une float %1108, 0.000000e+00
  %1115 = select i1 %1114, float 1.000000e+00, float 0.000000e+00
  br label %1131

; <label>:1116                                    ; preds = %1107
  %1117 = fcmp fast ugt float %1108, %1109
  br i1 %1117, label %1118, label %1128, !dx.controlflow.hints !61

; <label>:1118                                    ; preds = %1116
  %1119 = fadd fast float %1109, 0x3E7AD7F2A0000000
  %1120 = fcmp fast ult float %1119, %1108
  br i1 %1120, label %1121, label %1126, !dx.controlflow.hints !62

; <label>:1121                                    ; preds = %1118
  %1122 = fsub fast float %1108, %1109
  %1123 = fmul fast float %1122, 0x3F847AE140000000
  %1124 = fadd fast float %1123, %1108
  %1125 = call float @dx.op.binary.f32(i32 36, float %1124, float 1.000000e+00)  ; FMin(a,b)
  br label %1131

; <label>:1126                                    ; preds = %1118
  %1127 = fadd fast float %1109, 0xBE7AD7F2A0000000
  br label %1131

; <label>:1128                                    ; preds = %1116
  %1129 = fadd fast float %1109, 0xBE7AD7F2A0000000
  %1130 = call float @dx.op.binary.f32(i32 36, float %1108, float %1129)  ; FMin(a,b)
  br label %1131

; <label>:1131                                    ; preds = %1128, %1126, %1121, %1113
  %1132 = phi float [ %1130, %1128 ], [ %1127, %1126 ], [ %1110, %1121 ], [ %1110, %1113 ]
  %1133 = phi float [ %1111, %1128 ], [ %1111, %1126 ], [ %1125, %1121 ], [ %1115, %1113 ]
  %1134 = fadd fast float %1133, %1132
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = fadd fast float %1132, 0x3FA99999A0000000
  %1137 = call float @dx.op.binary.f32(i32 36, float %1136, float %1135)  ; FMin(a,b)
  %1138 = bitcast float %1137 to i32
  %1139 = lshr i32 %942, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1139, i32 0, i32 %1138, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1181

; <label>:1140                                    ; preds = %1101
  %1141 = and i32 %995, 31
  %1142 = shl i32 1, %1141
  %1143 = add i32 %1142, -1
  %1144 = and i32 %1102, %1143
  %1145 = lshr i32 %1102, %1141
  %1146 = uitofp i32 %1144 to float
  %1147 = fadd fast float %1146, 5.000000e-01
  %1148 = uitofp i32 %1145 to float
  %1149 = fadd fast float %1148, 5.000000e-01
  %1150 = fmul fast float %1147, %375
  %1151 = fmul fast float %1149, %375
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1155 = fmul fast float %1153, %1150
  %1156 = fmul fast float %1154, %1151
  %1157 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1158 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1159 = fadd fast float %1155, %1157
  %1160 = fadd fast float %1156, %1158
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1159, float %1160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1159, float %1160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  br label %1107

; <label>:1165                                    ; preds = %1013
  %1166 = and i32 %995, 31
  %1167 = shl i32 1, %1166
  %1168 = add i32 %1167, -1
  %1169 = and i32 %1014, %1168
  %1170 = lshr i32 %1014, %1166
  %1171 = mul i32 %1169, %381
  %1172 = uitofp i32 %1171 to float
  %1173 = fadd fast float %1172, 5.000000e-01
  %1174 = fmul fast float %1173, %383
  %1175 = icmp eq i32 %381, 0
  br i1 %1175, label %1050, label %1176

; <label>:1176                                    ; preds = %1165
  %1177 = mul i32 %1170, %381
  %1178 = uitofp i32 %1177 to float
  %1179 = fadd fast float %1178, 5.000000e-01
  %1180 = fmul fast float %1179, %383
  br label %1018

; <label>:1181                                    ; preds = %1131, %941, %788, %589, %386
  %1182 = phi i32 [ 0, %386 ], [ %586, %589 ], [ %785, %788 ], [ %991, %1131 ], [ %943, %941 ]
  %1183 = shl i32 %372, 8
  %1184 = or i32 %1182, %1183
  %1185 = lshr i32 %371, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1185, i32 0, i32 %1184, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1518

; <label>:1186                                    ; preds = %234
  br i1 %237, label %1187, label %1210, !dx.controlflow.hints !63

; <label>:1187                                    ; preds = %1186
  %1188 = add i32 %15, 1
  %1189 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %1190 = add i32 %1188, %1189
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1190, i32 12)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %1189, -4
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1193, i32 12)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1189, -3
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1196, i32 12)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = add i32 %1189, -2
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1199, i32 12)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = add i32 %1189, -1
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1202, i32 12)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = add i32 %1195, %1192
  %1206 = add i32 %1205, %1198
  %1207 = add i32 %1206, %1201
  %1208 = add i32 %1207, %1204
  %1209 = add i32 %1189, %15
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1209, i32 12, i32 %1208, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1210

; <label>:1210                                    ; preds = %1187, %1186
  %1211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.i32 %1211, 2
  %1213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.i32 %1213, 3
  %1215 = icmp ult i32 %1212, %1214
  br i1 %1215, label %1216, label %1518, !dx.controlflow.hints !64

; <label>:1216                                    ; preds = %1210
  %1217 = extractvalue %dx.types.CBufRet.i32 %1211, 1
  %1218 = add i32 %1217, %1212
  %1219 = and i32 %7, 1073741823
  %1220 = add i32 %1218, %1219
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1220, i32 16)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = icmp eq i32 %1222, 16777215
  br i1 %1223, label %1224, label %1232, !dx.controlflow.hints !65

; <label>:1224                                    ; preds = %1216
  %1225 = add i32 %1212, %10
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1225, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1226 = or i32 %10, 1
  %1227 = add i32 %1226, %1212
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1227, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1228 = or i32 %10, 2
  %1229 = add i32 %1228, %1212
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1229, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1230 = or i32 %10, 3
  %1231 = add i32 %1230, %1212
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1231, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1518

; <label>:1232                                    ; preds = %1216
  %1233 = extractvalue %dx.types.CBufRet.i32 %1213, 1
  %1234 = add i32 %1233, -2
  %1235 = icmp slt i32 %15, %1234
  br i1 %1235, label %1236, label %1312

; <label>:1236                                    ; preds = %1232
  br label %1237

; <label>:1237                                    ; preds = %1302, %1236
  %1238 = phi i32 [ %1243, %1302 ], [ %1217, %1236 ]
  %1239 = phi i32 [ %1304, %1302 ], [ %1219, %1236 ]
  %1240 = phi i32 [ %1305, %1302 ], [ %1218, %1236 ]
  %1241 = phi i32 [ %1303, %1302 ], [ 0, %1236 ]
  %1242 = phi i32 [ %1306, %1302 ], [ %15, %1236 ]
  %1243 = lshr i32 %1238, 2
  %1244 = add i32 %1239, %1240
  %1245 = and i32 %1239, 3
  %1246 = icmp eq i32 %1245, 3
  br i1 %1246, label %1247, label %1272, !dx.controlflow.hints !52

; <label>:1247                                    ; preds = %1237
  %1248 = add i32 %1244, -3
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1248, i32 16)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = icmp eq i32 %1250, 16777215
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1248, i32 12)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = select i1 %1251, i32 0, i32 %1253
  %1255 = add i32 %1244, -2
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1255, i32 16)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = icmp eq i32 %1257, 16777215
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1255, i32 12)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = select i1 %1258, i32 0, i32 %1260
  %1262 = add i32 %1244, -1
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1262, i32 16)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = icmp eq i32 %1264, 16777215
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1262, i32 12)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = select i1 %1265, i32 0, i32 %1267
  %1269 = add i32 %1254, %1241
  %1270 = add i32 %1269, %1261
  %1271 = add i32 %1270, %1268
  br label %1302

; <label>:1272                                    ; preds = %1237
  %1273 = icmp eq i32 %1245, 2
  br i1 %1273, label %1274, label %1291, !dx.controlflow.hints !53

; <label>:1274                                    ; preds = %1272
  %1275 = add i32 %1244, -2
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1275, i32 16)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = icmp eq i32 %1277, 16777215
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1275, i32 12)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = select i1 %1278, i32 0, i32 %1280
  %1282 = add i32 %1244, -1
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1282, i32 16)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = icmp eq i32 %1284, 16777215
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1282, i32 12)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = select i1 %1285, i32 0, i32 %1287
  %1289 = add i32 %1281, %1241
  %1290 = add i32 %1289, %1288
  br label %1302

; <label>:1291                                    ; preds = %1272
  %1292 = icmp eq i32 %1245, 1
  br i1 %1292, label %1293, label %1302, !dx.controlflow.hints !54

; <label>:1293                                    ; preds = %1291
  %1294 = add i32 %1244, -1
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1294, i32 16)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = icmp eq i32 %1296, 16777215
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1294, i32 12)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = select i1 %1297, i32 0, i32 %1299
  %1301 = add i32 %1300, %1241
  br label %1302

; <label>:1302                                    ; preds = %1293, %1291, %1274, %1247
  %1303 = phi i32 [ %1271, %1247 ], [ %1290, %1274 ], [ %1301, %1293 ], [ %1241, %1291 ]
  %1304 = lshr i32 %1239, 2
  %1305 = add i32 %1243, %1240
  %1306 = add nsw i32 %1242, 1
  %1307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.i32 %1307, 1
  %1309 = add i32 %1308, -2
  %1310 = icmp slt i32 %1306, %1309
  br i1 %1310, label %1237, label %1311

; <label>:1311                                    ; preds = %1302
  br label %1312

; <label>:1312                                    ; preds = %1311, %1232
  %1313 = phi i32 [ 0, %1232 ], [ %1303, %1311 ]
  %1314 = add i32 %15, 1
  %1315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.i32 %1315, 2
  %1317 = add i32 %1314, %1316
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1317, i32 12)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = add i32 %1319, %1313
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1220, i32 16)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = sub i32 %1320, %1322
  %1324 = add i32 %1212, %10
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1324, i32 8)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 1
  %1328 = icmp eq i32 %1327, 0
  %1329 = and i32 %1326, 2
  %1330 = shl nuw nsw i32 %1329, 1
  %1331 = xor i32 %1330, 4
  %1332 = lshr exact i32 %1329, 1
  %1333 = add nuw nsw i32 %1331, 4
  %1334 = or i32 %1332, 2
  %1335 = xor i32 %1332, 1
  %1336 = select i1 %1328, i32 %1333, i32 %1331
  %1337 = select i1 %1328, i32 %1334, i32 %1335
  %1338 = add i32 %1336, %1320
  %1339 = icmp ult i32 %1338, %1214
  br i1 %1339, label %1340, label %1513, !dx.controlflow.hints !66

; <label>:1340                                    ; preds = %1312
  %1341 = icmp eq i32 %1337, 2
  br i1 %1341, label %1354, label %1342, !dx.controlflow.hints !67

; <label>:1342                                    ; preds = %1340
  %1343 = icmp eq i32 %1337, 3
  br i1 %1343, label %1344, label %1365, !dx.controlflow.hints !68

; <label>:1344                                    ; preds = %1342
  %1345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1324, i32 0)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = fadd fast float %1346, %1347
  %1349 = fmul fast float %1348, 5.000000e-01
  %1350 = fadd fast float %1346, 0x3FA99999A0000000
  %1351 = call float @dx.op.binary.f32(i32 36, float %1350, float %1349)  ; FMin(a,b)
  %1352 = bitcast float %1351 to i32
  %1353 = lshr i32 %1320, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1353, i32 0, i32 %1352, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1365

; <label>:1354                                    ; preds = %1340
  %1355 = add i32 %1320, 4
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1324, i32 0)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = fadd fast float %1357, %1358
  %1360 = fmul fast float %1359, 5.000000e-01
  %1361 = fadd fast float %1357, 0x3FA99999A0000000
  %1362 = call float @dx.op.binary.f32(i32 36, float %1361, float %1360)  ; FMin(a,b)
  %1363 = bitcast float %1362 to i32
  %1364 = lshr i32 %1355, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1364, i32 0, i32 %1363, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1365

; <label>:1365                                    ; preds = %1354, %1344, %1342
  %1366 = add nsw i32 %1337, -1
  %1367 = icmp ult i32 %1366, 2
  %1368 = select i1 %1367, i32 %1320, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1324, i32 16, i32 %1368, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1369 = or i32 %10, 1
  %1370 = add i32 %1369, %1212
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1370, i32 8)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 1
  %1374 = icmp eq i32 %1373, 0
  %1375 = and i32 %1372, 2
  %1376 = shl nuw nsw i32 %1375, 1
  %1377 = xor i32 %1376, 4
  %1378 = lshr exact i32 %1375, 1
  %1379 = add nuw nsw i32 %1377, 4
  %1380 = or i32 %1378, 2
  %1381 = xor i32 %1378, 1
  %1382 = select i1 %1374, i32 %1379, i32 %1377
  %1383 = select i1 %1374, i32 %1380, i32 %1381
  %1384 = add i32 %1382, %1338
  %1385 = icmp ult i32 %1384, %1214
  br i1 %1385, label %1386, label %1513, !dx.controlflow.hints !66

; <label>:1386                                    ; preds = %1365
  %1387 = shl nuw nsw i32 %1383, 2
  %1388 = or i32 %1387, %1337
  %1389 = icmp eq i32 %1383, 2
  br i1 %1389, label %1402, label %1390, !dx.controlflow.hints !67

; <label>:1390                                    ; preds = %1386
  %1391 = icmp eq i32 %1383, 3
  br i1 %1391, label %1392, label %1413, !dx.controlflow.hints !68

; <label>:1392                                    ; preds = %1390
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1370, i32 0)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = fadd fast float %1394, %1395
  %1397 = fmul fast float %1396, 5.000000e-01
  %1398 = fadd fast float %1394, 0x3FA99999A0000000
  %1399 = call float @dx.op.binary.f32(i32 36, float %1398, float %1397)  ; FMin(a,b)
  %1400 = bitcast float %1399 to i32
  %1401 = lshr i32 %1338, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1401, i32 0, i32 %1400, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1413

; <label>:1402                                    ; preds = %1386
  %1403 = add i32 %1338, 4
  %1404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1370, i32 0)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = extractvalue %dx.types.ResRet.f32 %1404, 1
  %1407 = fadd fast float %1405, %1406
  %1408 = fmul fast float %1407, 5.000000e-01
  %1409 = fadd fast float %1405, 0x3FA99999A0000000
  %1410 = call float @dx.op.binary.f32(i32 36, float %1409, float %1408)  ; FMin(a,b)
  %1411 = bitcast float %1410 to i32
  %1412 = lshr i32 %1403, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1412, i32 0, i32 %1411, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1413

; <label>:1413                                    ; preds = %1402, %1392, %1390
  %1414 = add nsw i32 %1383, -1
  %1415 = icmp ult i32 %1414, 2
  %1416 = select i1 %1415, i32 %1338, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1370, i32 16, i32 %1416, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1417 = or i32 %10, 2
  %1418 = add i32 %1417, %1212
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1418, i32 8)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 1
  %1422 = icmp eq i32 %1421, 0
  %1423 = and i32 %1420, 2
  %1424 = shl nuw nsw i32 %1423, 1
  %1425 = xor i32 %1424, 4
  %1426 = lshr exact i32 %1423, 1
  %1427 = add nuw nsw i32 %1425, 4
  %1428 = or i32 %1426, 2
  %1429 = xor i32 %1426, 1
  %1430 = select i1 %1422, i32 %1427, i32 %1425
  %1431 = select i1 %1422, i32 %1428, i32 %1429
  %1432 = add i32 %1430, %1384
  %1433 = icmp ult i32 %1432, %1214
  br i1 %1433, label %1434, label %1513, !dx.controlflow.hints !66

; <label>:1434                                    ; preds = %1413
  %1435 = shl nuw nsw i32 %1431, 4
  %1436 = or i32 %1435, %1388
  %1437 = icmp eq i32 %1431, 2
  br i1 %1437, label %1450, label %1438, !dx.controlflow.hints !67

; <label>:1438                                    ; preds = %1434
  %1439 = icmp eq i32 %1431, 3
  br i1 %1439, label %1440, label %1461, !dx.controlflow.hints !68

; <label>:1440                                    ; preds = %1438
  %1441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1418, i32 0)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = fadd fast float %1442, %1443
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = fadd fast float %1442, 0x3FA99999A0000000
  %1447 = call float @dx.op.binary.f32(i32 36, float %1446, float %1445)  ; FMin(a,b)
  %1448 = bitcast float %1447 to i32
  %1449 = lshr i32 %1384, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1449, i32 0, i32 %1448, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1461

; <label>:1450                                    ; preds = %1434
  %1451 = add i32 %1384, 4
  %1452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1418, i32 0)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = fadd fast float %1453, %1454
  %1456 = fmul fast float %1455, 5.000000e-01
  %1457 = fadd fast float %1453, 0x3FA99999A0000000
  %1458 = call float @dx.op.binary.f32(i32 36, float %1457, float %1456)  ; FMin(a,b)
  %1459 = bitcast float %1458 to i32
  %1460 = lshr i32 %1451, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1460, i32 0, i32 %1459, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1461

; <label>:1461                                    ; preds = %1450, %1440, %1438
  %1462 = add nsw i32 %1431, -1
  %1463 = icmp ult i32 %1462, 2
  %1464 = select i1 %1463, i32 %1384, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1418, i32 16, i32 %1464, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1465 = or i32 %10, 3
  %1466 = add i32 %1465, %1212
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1466, i32 8)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 1
  %1470 = icmp eq i32 %1469, 0
  %1471 = and i32 %1468, 2
  %1472 = shl nuw nsw i32 %1471, 1
  %1473 = xor i32 %1472, 4
  %1474 = lshr exact i32 %1471, 1
  %1475 = add nuw nsw i32 %1473, 4
  %1476 = or i32 %1474, 2
  %1477 = xor i32 %1474, 1
  %1478 = select i1 %1470, i32 %1475, i32 %1473
  %1479 = select i1 %1470, i32 %1476, i32 %1477
  %1480 = add i32 %1478, %1432
  %1481 = icmp ult i32 %1480, %1214
  br i1 %1481, label %1482, label %1513, !dx.controlflow.hints !66

; <label>:1482                                    ; preds = %1461
  %1483 = shl nuw nsw i32 %1479, 6
  %1484 = or i32 %1483, %1436
  %1485 = icmp eq i32 %1479, 2
  br i1 %1485, label %1498, label %1486, !dx.controlflow.hints !67

; <label>:1486                                    ; preds = %1482
  %1487 = icmp eq i32 %1479, 3
  br i1 %1487, label %1488, label %1509, !dx.controlflow.hints !68

; <label>:1488                                    ; preds = %1486
  %1489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1466, i32 0)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = extractvalue %dx.types.ResRet.f32 %1489, 1
  %1492 = fadd fast float %1490, %1491
  %1493 = fmul fast float %1492, 5.000000e-01
  %1494 = fadd fast float %1490, 0x3FA99999A0000000
  %1495 = call float @dx.op.binary.f32(i32 36, float %1494, float %1493)  ; FMin(a,b)
  %1496 = bitcast float %1495 to i32
  %1497 = lshr i32 %1432, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1497, i32 0, i32 %1496, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1509

; <label>:1498                                    ; preds = %1482
  %1499 = add i32 %1432, 4
  %1500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1466, i32 0)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.ResRet.f32 %1500, 1
  %1503 = fadd fast float %1501, %1502
  %1504 = fmul fast float %1503, 5.000000e-01
  %1505 = fadd fast float %1501, 0x3FA99999A0000000
  %1506 = call float @dx.op.binary.f32(i32 36, float %1505, float %1504)  ; FMin(a,b)
  %1507 = bitcast float %1506 to i32
  %1508 = lshr i32 %1499, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1508, i32 0, i32 %1507, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1509

; <label>:1509                                    ; preds = %1498, %1488, %1486
  %1510 = add nsw i32 %1479, -1
  %1511 = icmp ult i32 %1510, 2
  %1512 = select i1 %1511, i32 %1432, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1466, i32 16, i32 %1512, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1513

; <label>:1513                                    ; preds = %1509, %1461, %1413, %1365, %1312
  %1514 = phi i32 [ 0, %1312 ], [ %1337, %1365 ], [ %1388, %1413 ], [ %1484, %1509 ], [ %1436, %1461 ]
  %1515 = shl i32 %1323, 8
  %1516 = or i32 %1514, %1515
  %1517 = lshr i32 %1322, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1517, i32 0, i32 %1516, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1518

; <label>:1518                                    ; preds = %1513, %1224, %1210, %1181, %278, %273, %184, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !14, !16}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !12}
!10 = !{i32 0, %"class.RWStructuredBuffer<CSMNodeIntervals>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 32}
!12 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !13}
!13 = !{i32 1, i32 4}
!14 = !{!15}
!15 = !{i32 0, %CSMConstants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!18 = !{void ()* @serialize_tree, !"serialize_tree", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26}
!26 = distinct !{!26, !27, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!27 = distinct !{!27, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outIntersection"}
!30 = distinct !{!30, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z"}
!31 = distinct !{!31, !30, !"\01?FindBestIntersection@@YAXY03V?$vector@M$01@@AIAV1@AIAI@Z: %outEnclosedFlags"}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39}
!39 = distinct !{!39, !40, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z: %f"}
!40 = distinct !{!40, !"\01?Sort4@@YAXAIAV?$vector@M$03@@@Z"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}

