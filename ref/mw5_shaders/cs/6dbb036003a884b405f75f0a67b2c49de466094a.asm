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
; shader hash: 6e0af7f36cbbcf09a8afc9dce783f97a
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
  br i1 %13, label %14, label %1729, !dx.controlflow.hints !21

; <label>:14                                      ; preds = %0
  %15 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = add i32 %17, -2
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %282, !dx.controlflow.hints !22

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
  %188 = fmul fast float %186, 6.553500e+04
  %189 = call float @dx.op.unary.f32(i32 28, float %188)  ; Round_pi(value)
  %190 = fptoui float %189 to i32
  %191 = fmul fast float %187, 6.553500e+04
  %192 = call float @dx.op.unary.f32(i32 27, float %191)  ; Round_ni(value)
  %193 = fptoui float %192 to i32
  %194 = add i32 %193, %190
  %195 = lshr i32 %194, 1
  %196 = add i32 %190, 1024
  %197 = call i32 @dx.op.binary.i32(i32 40, i32 %196, i32 %195)  ; UMin(a,b)
  %198 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 9, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %199 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 9, i32 0, i32 undef, i32 %197)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %21, i32 0)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 1
  %202 = fmul fast float %201, 6.553500e+04
  %203 = call float @dx.op.unary.f32(i32 27, float %202)  ; Round_ni(value)
  %204 = fptoui float %203 to i32
  %205 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 9, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %206 = shl i32 %204, 16
  %207 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 9, i32 0, i32 undef, i32 %206)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %21, i32 16, i32 32, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %25, i32 0)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = extractvalue %dx.types.ResRet.f32 %208, 1
  %211 = fmul fast float %209, 6.553500e+04
  %212 = call float @dx.op.unary.f32(i32 28, float %211)  ; Round_pi(value)
  %213 = fptoui float %212 to i32
  %214 = fmul fast float %210, 6.553500e+04
  %215 = call float @dx.op.unary.f32(i32 27, float %214)  ; Round_ni(value)
  %216 = fptoui float %215 to i32
  %217 = add i32 %216, %213
  %218 = lshr i32 %217, 1
  %219 = add i32 %213, 1024
  %220 = call i32 @dx.op.binary.i32(i32 40, i32 %219, i32 %218)  ; UMin(a,b)
  %221 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 11, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %222 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 11, i32 0, i32 undef, i32 %220)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %25, i32 0)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 1
  %225 = fmul fast float %224, 6.553500e+04
  %226 = call float @dx.op.unary.f32(i32 27, float %225)  ; Round_ni(value)
  %227 = fptoui float %226 to i32
  %228 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 11, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %229 = shl i32 %227, 16
  %230 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 11, i32 0, i32 undef, i32 %229)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %25, i32 16, i32 40, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = fmul fast float %232, 6.553500e+04
  %235 = call float @dx.op.unary.f32(i32 28, float %234)  ; Round_pi(value)
  %236 = fptoui float %235 to i32
  %237 = fmul fast float %233, 6.553500e+04
  %238 = call float @dx.op.unary.f32(i32 27, float %237)  ; Round_ni(value)
  %239 = fptoui float %238 to i32
  %240 = add i32 %239, %236
  %241 = lshr i32 %240, 1
  %242 = add i32 %236, 1024
  %243 = call i32 @dx.op.binary.i32(i32 40, i32 %242, i32 %241)  ; UMin(a,b)
  %244 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 13, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %245 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 13, i32 0, i32 undef, i32 %243)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %29, i32 0)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 1
  %248 = fmul fast float %247, 6.553500e+04
  %249 = call float @dx.op.unary.f32(i32 27, float %248)  ; Round_ni(value)
  %250 = fptoui float %249 to i32
  %251 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 13, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %252 = shl i32 %250, 16
  %253 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 13, i32 0, i32 undef, i32 %252)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %29, i32 16, i32 48, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = extractvalue %dx.types.ResRet.f32 %254, 1
  %257 = fmul fast float %255, 6.553500e+04
  %258 = call float @dx.op.unary.f32(i32 28, float %257)  ; Round_pi(value)
  %259 = fptoui float %258 to i32
  %260 = fmul fast float %256, 6.553500e+04
  %261 = call float @dx.op.unary.f32(i32 27, float %260)  ; Round_ni(value)
  %262 = fptoui float %261 to i32
  %263 = add i32 %262, %259
  %264 = lshr i32 %263, 1
  %265 = add i32 %259, 1024
  %266 = call i32 @dx.op.binary.i32(i32 40, i32 %265, i32 %264)  ; UMin(a,b)
  %267 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 15, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %268 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 15, i32 0, i32 undef, i32 %266)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %33, i32 0)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 1
  %271 = fmul fast float %270, 6.553500e+04
  %272 = call float @dx.op.unary.f32(i32 27, float %271)  ; Round_ni(value)
  %273 = fptoui float %272 to i32
  %274 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 15, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %275 = shl i32 %273, 16
  %276 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 15, i32 0, i32 undef, i32 %275)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %33, i32 16, i32 56, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.i32 %277, 1
  %279 = add i32 %278, -2
  %280 = extractvalue %dx.types.CBufRet.i32 %277, 2
  %281 = add i32 %279, %280
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %281, i32 12, i32 64, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1729

; <label>:282                                     ; preds = %14
  %283 = add i32 %17, -1
  %284 = icmp eq i32 %15, %283
  %285 = icmp eq i32 %10, 0
  br i1 %284, label %286, label %1294, !dx.controlflow.hints !48

; <label>:286                                     ; preds = %282
  br i1 %285, label %287, label %322, !dx.controlflow.hints !49

; <label>:287                                     ; preds = %286
  %288 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %288, i32 12)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = add i32 %288, -4
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %291, i32 12)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = add i32 %288, -3
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %294, i32 12)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = add i32 %288, -2
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %297, i32 12)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = add i32 %288, -1
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %300, i32 12)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = add i32 %293, %290
  %304 = add i32 %303, %296
  %305 = add i32 %304, %299
  %306 = add i32 %305, %302
  %307 = add i32 %15, %288
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %307, i32 12, i32 %306, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %308 = add i32 %306, 3
  %309 = and i32 %308, -4
  %310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.i32 %310, 3
  %312 = call i32 @dx.op.binary.i32(i32 40, i32 %309, i32 %311)  ; UMin(a,b)
  %313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.i32 %313, 3
  %315 = extractvalue %dx.types.CBufRet.i32 %310, 0
  %316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.i32 %316, 0
  %318 = mul i32 %317, %315
  %319 = or i32 %318, 536870912
  %320 = icmp ugt i32 %309, %311
  %321 = select i1 %320, i32 131072, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 %312, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 1, i32 0, i32 %319, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 2, i32 0, i32 %314, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 3, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 4, i32 0, i32 %321, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 5, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 6, i32 0, i32 1065353216, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %322

; <label>:322                                     ; preds = %287, %286
  %323 = and i32 %7, 1073741823
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %323, i32 16)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = icmp eq i32 %325, 16777215
  br i1 %326, label %1729, label %327, !dx.controlflow.hints !50

; <label>:327                                     ; preds = %322
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 2
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %329, i32 12)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.i32 %328, 3
  %333 = icmp ult i32 %331, %332
  br i1 %333, label %334, label %1729, !dx.controlflow.hints !51

; <label>:334                                     ; preds = %327
  %335 = extractvalue %dx.types.CBufRet.i32 %328, 1
  %336 = add i32 %335, -2
  %337 = icmp sgt i32 %336, -1
  br i1 %337, label %338, label %416

; <label>:338                                     ; preds = %334
  %339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.i32 %339, 1
  br label %341

; <label>:341                                     ; preds = %406, %338
  %342 = phi i32 [ %340, %338 ], [ %347, %406 ]
  %343 = phi i32 [ -1, %338 ], [ %410, %406 ]
  %344 = phi i32 [ 0, %338 ], [ %407, %406 ]
  %345 = phi i32 [ 0, %338 ], [ %409, %406 ]
  %346 = phi i32 [ %323, %338 ], [ %408, %406 ]
  %347 = lshr i32 %342, 2
  %348 = add i32 %345, %346
  %349 = and i32 %346, 3
  %350 = icmp eq i32 %349, 3
  br i1 %350, label %351, label %376, !dx.controlflow.hints !52

; <label>:351                                     ; preds = %341
  %352 = add i32 %348, -3
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %352, i32 16)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = icmp eq i32 %354, 16777215
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %352, i32 12)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = select i1 %355, i32 0, i32 %357
  %359 = add i32 %348, -2
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %359, i32 16)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = icmp eq i32 %361, 16777215
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %359, i32 12)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = select i1 %362, i32 0, i32 %364
  %366 = add i32 %348, -1
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %366, i32 16)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = icmp eq i32 %368, 16777215
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %366, i32 12)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = select i1 %369, i32 0, i32 %371
  %373 = add i32 %358, %344
  %374 = add i32 %373, %365
  %375 = add i32 %374, %372
  br label %406

; <label>:376                                     ; preds = %341
  %377 = icmp eq i32 %349, 2
  br i1 %377, label %378, label %395, !dx.controlflow.hints !53

; <label>:378                                     ; preds = %376
  %379 = add i32 %348, -2
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %379, i32 16)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = icmp eq i32 %381, 16777215
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %379, i32 12)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = select i1 %382, i32 0, i32 %384
  %386 = add i32 %348, -1
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %386, i32 16)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = icmp eq i32 %388, 16777215
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %386, i32 12)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = select i1 %389, i32 0, i32 %391
  %393 = add i32 %385, %344
  %394 = add i32 %393, %392
  br label %406

; <label>:395                                     ; preds = %376
  %396 = icmp eq i32 %349, 1
  br i1 %396, label %397, label %406, !dx.controlflow.hints !54

; <label>:397                                     ; preds = %395
  %398 = add i32 %348, -1
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %398, i32 16)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = icmp eq i32 %400, 16777215
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %398, i32 12)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = select i1 %401, i32 0, i32 %403
  %405 = add i32 %404, %344
  br label %406

; <label>:406                                     ; preds = %397, %395, %378, %351
  %407 = phi i32 [ %375, %351 ], [ %394, %378 ], [ %405, %397 ], [ %344, %395 ]
  %408 = lshr i32 %346, 2
  %409 = add i32 %345, %347
  %410 = add nsw i32 %343, 1
  %411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.i32 %411, 1
  %413 = add i32 %412, -2
  %414 = icmp slt i32 %410, %413
  br i1 %414, label %341, label %415

; <label>:415                                     ; preds = %406
  br label %416

; <label>:416                                     ; preds = %415, %334
  %417 = phi i32 [ 0, %334 ], [ %407, %415 ]
  %418 = add i32 %417, %331
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %323, i32 16)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = sub i32 %418, %420
  %422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.i32 %422, 3
  %424 = bitcast i32 %423 to float
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %323, i32 8)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = lshr i32 %426, 8
  %428 = xor i32 %427, -1
  %429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.i32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.i32 %429, 1
  %432 = bitcast i32 %431 to float
  %433 = and i32 %428, 1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %645, label %435, !dx.controlflow.hints !55

; <label>:435                                     ; preds = %416
  %436 = add i32 %418, 2
  %437 = icmp ult i32 %436, %332
  br i1 %437, label %438, label %1278, !dx.controlflow.hints !56

; <label>:438                                     ; preds = %435
  %439 = icmp eq i32 %430, 1
  %440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.i32 %440, 1
  br i1 %439, label %550, label %442, !dx.controlflow.hints !57

; <label>:442                                     ; preds = %438
  br i1 %285, label %465, label %443

; <label>:443                                     ; preds = %442
  br label %444

; <label>:444                                     ; preds = %459, %443
  %445 = phi i32 [ %461, %459 ], [ %10, %443 ]
  %446 = phi i32 [ %460, %459 ], [ 0, %443 ]
  %447 = phi i32 [ %462, %459 ], [ 0, %443 ]
  %448 = and i32 %445, 1
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %459, label %450, !dx.controlflow.hints !58

; <label>:450                                     ; preds = %444
  %451 = lshr i32 %447, 1
  %452 = and i32 %447, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, i32 %441, i32 0
  %455 = add i32 %454, %451
  %456 = and i32 %455, 31
  %457 = shl i32 1, %456
  %458 = or i32 %457, %446
  br label %459

; <label>:459                                     ; preds = %450, %444
  %460 = phi i32 [ %458, %450 ], [ %446, %444 ]
  %461 = lshr i32 %445, 1
  %462 = add i32 %447, 1
  %463 = icmp eq i32 %461, 0
  br i1 %463, label %464, label %444

; <label>:464                                     ; preds = %459
  br label %465

; <label>:465                                     ; preds = %464, %442
  %466 = phi i32 [ 0, %442 ], [ %460, %464 ]
  %467 = and i32 %441, 31
  %468 = shl i32 1, %467
  %469 = add i32 %468, -1
  %470 = and i32 %466, %469
  %471 = lshr i32 %466, %467
  %472 = mul i32 %470, %430
  %473 = uitofp i32 %472 to float
  %474 = fadd fast float %473, 5.000000e-01
  %475 = fmul fast float %474, %432
  %476 = icmp eq i32 %430, 0
  br i1 %476, label %514, label %477

; <label>:477                                     ; preds = %465
  %478 = mul i32 %471, %430
  %479 = uitofp i32 %478 to float
  %480 = fadd fast float %479, 5.000000e-01
  %481 = fmul fast float %480, %432
  br label %482

; <label>:482                                     ; preds = %509, %477
  %483 = phi float [ %510, %509 ], [ %481, %477 ]
  %484 = phi float [ %505, %509 ], [ 2.000000e+00, %477 ]
  %485 = phi i32 [ %511, %509 ], [ 0, %477 ]
  br label %486

; <label>:486                                     ; preds = %504, %482
  %487 = phi float [ %506, %504 ], [ %475, %482 ]
  %488 = phi float [ %505, %504 ], [ %484, %482 ]
  %489 = phi i32 [ %507, %504 ], [ 0, %482 ]
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = fmul fast float %491, %487
  %494 = fmul fast float %492, %483
  %495 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %496 = extractvalue %dx.types.CBufRet.f32 %490, 3
  %497 = fadd fast float %493, %495
  %498 = fadd fast float %494, %496
  %499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %497, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = fcmp fast ogt float %500, 0.000000e+00
  br i1 %501, label %502, label %504, !dx.controlflow.hints !59

; <label>:502                                     ; preds = %486
  %503 = call float @dx.op.binary.f32(i32 36, float %500, float %488)  ; FMin(a,b)
  br label %504

; <label>:504                                     ; preds = %502, %486
  %505 = phi float [ %503, %502 ], [ %488, %486 ]
  %506 = fadd fast float %487, %432
  %507 = add nuw i32 %489, 1
  %508 = icmp eq i32 %507, %430
  br i1 %508, label %509, label %486

; <label>:509                                     ; preds = %504
  %510 = fadd fast float %483, %432
  %511 = add nuw i32 %485, 1
  %512 = icmp eq i32 %511, %430
  br i1 %512, label %513, label %482

; <label>:513                                     ; preds = %509
  br label %514

; <label>:514                                     ; preds = %513, %465
  %515 = phi float [ 2.000000e+00, %465 ], [ %505, %513 ]
  %516 = fcmp fast ole float %515, 1.000000e+00
  %517 = select i1 %516, float %515, float 0.000000e+00
  br i1 %476, label %600, label %518

; <label>:518                                     ; preds = %514
  %519 = mul i32 %471, %430
  %520 = uitofp i32 %519 to float
  %521 = fadd fast float %520, 5.000000e-01
  %522 = fmul fast float %521, %432
  br label %523

; <label>:523                                     ; preds = %546, %518
  %524 = phi float [ %547, %546 ], [ %522, %518 ]
  %525 = phi float [ %542, %546 ], [ 0.000000e+00, %518 ]
  %526 = phi i32 [ %548, %546 ], [ 0, %518 ]
  br label %527

; <label>:527                                     ; preds = %527, %523
  %528 = phi float [ %543, %527 ], [ %475, %523 ]
  %529 = phi float [ %542, %527 ], [ %525, %523 ]
  %530 = phi i32 [ %544, %527 ], [ 0, %523 ]
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = extractvalue %dx.types.CBufRet.f32 %531, 1
  %534 = fmul fast float %532, %528
  %535 = fmul fast float %533, %524
  %536 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %537 = extractvalue %dx.types.CBufRet.f32 %531, 3
  %538 = fadd fast float %534, %536
  %539 = fadd fast float %535, %537
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %538, float %539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = call float @dx.op.binary.f32(i32 35, float %541, float %529)  ; FMax(a,b)
  %543 = fadd fast float %528, %432
  %544 = add nuw i32 %530, 1
  %545 = icmp eq i32 %544, %430
  br i1 %545, label %546, label %527

; <label>:546                                     ; preds = %527
  %547 = fadd fast float %524, %432
  %548 = add nuw i32 %526, 1
  %549 = icmp eq i32 %548, %430
  br i1 %549, label %599, label %523

; <label>:550                                     ; preds = %438
  br i1 %285, label %573, label %551

; <label>:551                                     ; preds = %550
  br label %552

; <label>:552                                     ; preds = %567, %551
  %553 = phi i32 [ %569, %567 ], [ %10, %551 ]
  %554 = phi i32 [ %568, %567 ], [ 0, %551 ]
  %555 = phi i32 [ %570, %567 ], [ 0, %551 ]
  %556 = and i32 %553, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %567, label %558, !dx.controlflow.hints !58

; <label>:558                                     ; preds = %552
  %559 = lshr i32 %555, 1
  %560 = and i32 %555, 1
  %561 = icmp ne i32 %560, 0
  %562 = select i1 %561, i32 %441, i32 0
  %563 = add i32 %562, %559
  %564 = and i32 %563, 31
  %565 = shl i32 1, %564
  %566 = or i32 %565, %554
  br label %567

; <label>:567                                     ; preds = %558, %552
  %568 = phi i32 [ %566, %558 ], [ %554, %552 ]
  %569 = lshr i32 %553, 1
  %570 = add i32 %555, 1
  %571 = icmp eq i32 %569, 0
  br i1 %571, label %572, label %552

; <label>:572                                     ; preds = %567
  br label %573

; <label>:573                                     ; preds = %572, %550
  %574 = phi i32 [ 0, %550 ], [ %568, %572 ]
  %575 = and i32 %441, 31
  %576 = shl i32 1, %575
  %577 = add i32 %576, -1
  %578 = and i32 %574, %577
  %579 = lshr i32 %574, %575
  %580 = uitofp i32 %578 to float
  %581 = fadd fast float %580, 5.000000e-01
  %582 = uitofp i32 %579 to float
  %583 = fadd fast float %582, 5.000000e-01
  %584 = fmul fast float %581, %424
  %585 = fmul fast float %583, %424
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = fmul fast float %584, %587
  %590 = fmul fast float %585, %588
  %591 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %592 = extractvalue %dx.types.CBufRet.f32 %586, 3
  %593 = fadd fast float %589, %591
  %594 = fadd fast float %590, %592
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %593, float %594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %593, float %594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  br label %600

; <label>:599                                     ; preds = %546
  br label %600

; <label>:600                                     ; preds = %599, %573, %514
  %601 = phi float [ %596, %573 ], [ %517, %514 ], [ %517, %599 ]
  %602 = phi float [ %598, %573 ], [ 0.000000e+00, %514 ], [ %542, %599 ]
  %603 = call float @dx.op.binary.f32(i32 35, float %601, float 0.000000e+00)  ; FMax(a,b)
  %604 = call float @dx.op.binary.f32(i32 35, float %602, float 0.000000e+00)  ; FMax(a,b)
  %605 = fcmp fast une float %602, 0.000000e+00
  br i1 %605, label %609, label %606, !dx.controlflow.hints !60

; <label>:606                                     ; preds = %600
  %607 = fcmp fast une float %601, 0.000000e+00
  %608 = select i1 %607, float 1.000000e+00, float 0.000000e+00
  br label %624

; <label>:609                                     ; preds = %600
  %610 = fcmp fast ugt float %601, %602
  br i1 %610, label %611, label %621, !dx.controlflow.hints !61

; <label>:611                                     ; preds = %609
  %612 = fadd fast float %602, 0x3E7AD7F2A0000000
  %613 = fcmp fast ult float %612, %601
  br i1 %613, label %614, label %619, !dx.controlflow.hints !62

; <label>:614                                     ; preds = %611
  %615 = fsub fast float %601, %602
  %616 = fmul fast float %615, 0x3F847AE140000000
  %617 = fadd fast float %616, %601
  %618 = call float @dx.op.binary.f32(i32 36, float %617, float 1.000000e+00)  ; FMin(a,b)
  br label %624

; <label>:619                                     ; preds = %611
  %620 = fadd fast float %602, 0xBE7AD7F2A0000000
  br label %624

; <label>:621                                     ; preds = %609
  %622 = fadd fast float %602, 0xBE7AD7F2A0000000
  %623 = call float @dx.op.binary.f32(i32 36, float %601, float %622)  ; FMin(a,b)
  br label %624

; <label>:624                                     ; preds = %621, %619, %614, %606
  %625 = phi float [ %623, %621 ], [ %620, %619 ], [ %603, %614 ], [ %603, %606 ]
  %626 = phi float [ %604, %621 ], [ %604, %619 ], [ %618, %614 ], [ %608, %606 ]
  %627 = fmul fast float %625, 6.553500e+04
  %628 = call float @dx.op.unary.f32(i32 28, float %627)  ; Round_pi(value)
  %629 = fptoui float %628 to i32
  %630 = fmul fast float %626, 6.553500e+04
  %631 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %632 = fptoui float %631 to i32
  %633 = add i32 %632, %629
  %634 = lshr i32 %633, 1
  %635 = add i32 %629, 1024
  %636 = call i32 @dx.op.binary.i32(i32 40, i32 %635, i32 %634)  ; UMin(a,b)
  %637 = lshr i32 %418, 2
  %638 = and i32 %418, 2
  %639 = icmp ne i32 %638, 0
  %640 = shl nuw nsw i32 %638, 3
  %641 = select i1 %639, i32 65535, i32 -65536
  %642 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %637, i32 0, i32 undef, i32 %641)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %643 = shl i32 %636, %640
  %644 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %637, i32 0, i32 undef, i32 %643)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %645

; <label>:645                                     ; preds = %624, %416
  %646 = phi i32 [ %436, %624 ], [ %418, %416 ]
  %647 = phi i32 [ 2, %624 ], [ 0, %416 ]
  %648 = and i32 %428, 2
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %856, label %650, !dx.controlflow.hints !55

; <label>:650                                     ; preds = %645
  %651 = add i32 %646, 2
  %652 = icmp ult i32 %651, %332
  br i1 %652, label %653, label %1278, !dx.controlflow.hints !56

; <label>:653                                     ; preds = %650
  %654 = or i32 %647, 8
  %655 = icmp eq i32 %430, 1
  %656 = or i32 %10, 1
  %657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.i32 %657, 1
  br i1 %655, label %660, label %659, !dx.controlflow.hints !57

; <label>:659                                     ; preds = %653
  br label %661

; <label>:660                                     ; preds = %653
  br label %749

; <label>:661                                     ; preds = %676, %659
  %662 = phi i32 [ %678, %676 ], [ %656, %659 ]
  %663 = phi i32 [ %677, %676 ], [ 0, %659 ]
  %664 = phi i32 [ %679, %676 ], [ 0, %659 ]
  %665 = and i32 %662, 1
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %676, label %667, !dx.controlflow.hints !58

; <label>:667                                     ; preds = %661
  %668 = lshr i32 %664, 1
  %669 = and i32 %664, 1
  %670 = icmp ne i32 %669, 0
  %671 = select i1 %670, i32 %658, i32 0
  %672 = add i32 %671, %668
  %673 = and i32 %672, 31
  %674 = shl i32 1, %673
  %675 = or i32 %674, %663
  br label %676

; <label>:676                                     ; preds = %667, %661
  %677 = phi i32 [ %675, %667 ], [ %663, %661 ]
  %678 = lshr i32 %662, 1
  %679 = add i32 %664, 1
  %680 = icmp eq i32 %678, 0
  br i1 %680, label %840, label %661

; <label>:681                                     ; preds = %851, %708
  %682 = phi float [ %709, %708 ], [ %855, %851 ]
  %683 = phi float [ %704, %708 ], [ 2.000000e+00, %851 ]
  %684 = phi i32 [ %710, %708 ], [ 0, %851 ]
  br label %685

; <label>:685                                     ; preds = %703, %681
  %686 = phi float [ %705, %703 ], [ %849, %681 ]
  %687 = phi float [ %704, %703 ], [ %683, %681 ]
  %688 = phi i32 [ %706, %703 ], [ 0, %681 ]
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 0
  %691 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %692 = fmul fast float %690, %686
  %693 = fmul fast float %691, %682
  %694 = extractvalue %dx.types.CBufRet.f32 %689, 2
  %695 = extractvalue %dx.types.CBufRet.f32 %689, 3
  %696 = fadd fast float %692, %694
  %697 = fadd fast float %693, %695
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %696, float %697, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = fcmp fast ogt float %699, 0.000000e+00
  br i1 %700, label %701, label %703, !dx.controlflow.hints !59

; <label>:701                                     ; preds = %685
  %702 = call float @dx.op.binary.f32(i32 36, float %699, float %687)  ; FMin(a,b)
  br label %703

; <label>:703                                     ; preds = %701, %685
  %704 = phi float [ %702, %701 ], [ %687, %685 ]
  %705 = fadd fast float %686, %432
  %706 = add nuw i32 %688, 1
  %707 = icmp eq i32 %706, %430
  br i1 %707, label %708, label %685

; <label>:708                                     ; preds = %703
  %709 = fadd fast float %682, %432
  %710 = add nuw i32 %684, 1
  %711 = icmp eq i32 %710, %430
  br i1 %711, label %712, label %681

; <label>:712                                     ; preds = %708
  br label %713

; <label>:713                                     ; preds = %840, %712
  %714 = phi float [ 2.000000e+00, %840 ], [ %704, %712 ]
  %715 = fcmp fast ole float %714, 1.000000e+00
  %716 = select i1 %715, float %714, float 0.000000e+00
  br i1 %850, label %770, label %717

; <label>:717                                     ; preds = %713
  %718 = mul i32 %845, %430
  %719 = uitofp i32 %718 to float
  %720 = fadd fast float %719, 5.000000e-01
  %721 = fmul fast float %720, %432
  br label %722

; <label>:722                                     ; preds = %745, %717
  %723 = phi float [ %746, %745 ], [ %721, %717 ]
  %724 = phi float [ %741, %745 ], [ 0.000000e+00, %717 ]
  %725 = phi i32 [ %747, %745 ], [ 0, %717 ]
  br label %726

; <label>:726                                     ; preds = %726, %722
  %727 = phi float [ %742, %726 ], [ %849, %722 ]
  %728 = phi float [ %741, %726 ], [ %724, %722 ]
  %729 = phi i32 [ %743, %726 ], [ 0, %722 ]
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %733 = fmul fast float %731, %727
  %734 = fmul fast float %732, %723
  %735 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %736 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %737 = fadd fast float %733, %735
  %738 = fadd fast float %734, %736
  %739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %737, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = call float @dx.op.binary.f32(i32 35, float %740, float %728)  ; FMax(a,b)
  %742 = fadd fast float %727, %432
  %743 = add nuw i32 %729, 1
  %744 = icmp eq i32 %743, %430
  br i1 %744, label %745, label %726

; <label>:745                                     ; preds = %726
  %746 = fadd fast float %723, %432
  %747 = add nuw i32 %725, 1
  %748 = icmp eq i32 %747, %430
  br i1 %748, label %769, label %722

; <label>:749                                     ; preds = %764, %660
  %750 = phi i32 [ %766, %764 ], [ %656, %660 ]
  %751 = phi i32 [ %765, %764 ], [ 0, %660 ]
  %752 = phi i32 [ %767, %764 ], [ 0, %660 ]
  %753 = and i32 %750, 1
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %764, label %755, !dx.controlflow.hints !58

; <label>:755                                     ; preds = %749
  %756 = lshr i32 %752, 1
  %757 = and i32 %752, 1
  %758 = icmp ne i32 %757, 0
  %759 = select i1 %758, i32 %658, i32 0
  %760 = add i32 %759, %756
  %761 = and i32 %760, 31
  %762 = shl i32 1, %761
  %763 = or i32 %762, %751
  br label %764

; <label>:764                                     ; preds = %755, %749
  %765 = phi i32 [ %763, %755 ], [ %751, %749 ]
  %766 = lshr i32 %750, 1
  %767 = add i32 %752, 1
  %768 = icmp eq i32 %766, 0
  br i1 %768, label %815, label %749

; <label>:769                                     ; preds = %745
  br label %770

; <label>:770                                     ; preds = %815, %769, %713
  %771 = phi float [ %837, %815 ], [ %716, %713 ], [ %716, %769 ]
  %772 = phi float [ %839, %815 ], [ 0.000000e+00, %713 ], [ %741, %769 ]
  %773 = call float @dx.op.binary.f32(i32 35, float %771, float 0.000000e+00)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 35, float %772, float 0.000000e+00)  ; FMax(a,b)
  %775 = fcmp fast une float %772, 0.000000e+00
  br i1 %775, label %779, label %776, !dx.controlflow.hints !60

; <label>:776                                     ; preds = %770
  %777 = fcmp fast une float %771, 0.000000e+00
  %778 = select i1 %777, float 1.000000e+00, float 0.000000e+00
  br label %794

; <label>:779                                     ; preds = %770
  %780 = fcmp fast ugt float %771, %772
  br i1 %780, label %781, label %791, !dx.controlflow.hints !61

; <label>:781                                     ; preds = %779
  %782 = fadd fast float %772, 0x3E7AD7F2A0000000
  %783 = fcmp fast ult float %782, %771
  br i1 %783, label %784, label %789, !dx.controlflow.hints !62

; <label>:784                                     ; preds = %781
  %785 = fsub fast float %771, %772
  %786 = fmul fast float %785, 0x3F847AE140000000
  %787 = fadd fast float %786, %771
  %788 = call float @dx.op.binary.f32(i32 36, float %787, float 1.000000e+00)  ; FMin(a,b)
  br label %794

; <label>:789                                     ; preds = %781
  %790 = fadd fast float %772, 0xBE7AD7F2A0000000
  br label %794

; <label>:791                                     ; preds = %779
  %792 = fadd fast float %772, 0xBE7AD7F2A0000000
  %793 = call float @dx.op.binary.f32(i32 36, float %771, float %792)  ; FMin(a,b)
  br label %794

; <label>:794                                     ; preds = %791, %789, %784, %776
  %795 = phi float [ %793, %791 ], [ %790, %789 ], [ %773, %784 ], [ %773, %776 ]
  %796 = phi float [ %774, %791 ], [ %774, %789 ], [ %788, %784 ], [ %778, %776 ]
  %797 = fmul fast float %795, 6.553500e+04
  %798 = call float @dx.op.unary.f32(i32 28, float %797)  ; Round_pi(value)
  %799 = fptoui float %798 to i32
  %800 = fmul fast float %796, 6.553500e+04
  %801 = call float @dx.op.unary.f32(i32 27, float %800)  ; Round_ni(value)
  %802 = fptoui float %801 to i32
  %803 = add i32 %802, %799
  %804 = lshr i32 %803, 1
  %805 = add i32 %799, 1024
  %806 = call i32 @dx.op.binary.i32(i32 40, i32 %805, i32 %804)  ; UMin(a,b)
  %807 = lshr i32 %646, 2
  %808 = and i32 %646, 2
  %809 = icmp ne i32 %808, 0
  %810 = shl nuw nsw i32 %808, 3
  %811 = select i1 %809, i32 65535, i32 -65536
  %812 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %807, i32 0, i32 undef, i32 %811)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %813 = shl i32 %806, %810
  %814 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %807, i32 0, i32 undef, i32 %813)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %856

; <label>:815                                     ; preds = %764
  %816 = and i32 %658, 31
  %817 = shl i32 1, %816
  %818 = add i32 %817, -1
  %819 = and i32 %765, %818
  %820 = lshr i32 %765, %816
  %821 = uitofp i32 %819 to float
  %822 = fadd fast float %821, 5.000000e-01
  %823 = uitofp i32 %820 to float
  %824 = fadd fast float %823, 5.000000e-01
  %825 = fmul fast float %822, %424
  %826 = fmul fast float %824, %424
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 1
  %830 = fmul fast float %828, %825
  %831 = fmul fast float %829, %826
  %832 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %833 = extractvalue %dx.types.CBufRet.f32 %827, 3
  %834 = fadd fast float %830, %832
  %835 = fadd fast float %831, %833
  %836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %834, float %835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %834, float %835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  br label %770

; <label>:840                                     ; preds = %676
  %841 = and i32 %658, 31
  %842 = shl i32 1, %841
  %843 = add i32 %842, -1
  %844 = and i32 %677, %843
  %845 = lshr i32 %677, %841
  %846 = mul i32 %844, %430
  %847 = uitofp i32 %846 to float
  %848 = fadd fast float %847, 5.000000e-01
  %849 = fmul fast float %848, %432
  %850 = icmp eq i32 %430, 0
  br i1 %850, label %713, label %851

; <label>:851                                     ; preds = %840
  %852 = mul i32 %845, %430
  %853 = uitofp i32 %852 to float
  %854 = fadd fast float %853, 5.000000e-01
  %855 = fmul fast float %854, %432
  br label %681

; <label>:856                                     ; preds = %794, %645
  %857 = phi i32 [ %651, %794 ], [ %646, %645 ]
  %858 = phi i32 [ %654, %794 ], [ %647, %645 ]
  %859 = and i32 %428, 4
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %1026, label %861, !dx.controlflow.hints !55

; <label>:861                                     ; preds = %856
  %862 = add i32 %857, 2
  %863 = icmp ult i32 %862, %332
  br i1 %863, label %864, label %1278, !dx.controlflow.hints !56

; <label>:864                                     ; preds = %861
  %865 = or i32 %858, 32
  %866 = icmp eq i32 %430, 1
  %867 = or i32 %10, 2
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 1
  br i1 %866, label %871, label %870, !dx.controlflow.hints !57

; <label>:870                                     ; preds = %864
  br label %872

; <label>:871                                     ; preds = %864
  br label %960

; <label>:872                                     ; preds = %887, %870
  %873 = phi i32 [ %889, %887 ], [ %867, %870 ]
  %874 = phi i32 [ %888, %887 ], [ 0, %870 ]
  %875 = phi i32 [ %890, %887 ], [ 0, %870 ]
  %876 = and i32 %873, 1
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %887, label %878, !dx.controlflow.hints !58

; <label>:878                                     ; preds = %872
  %879 = lshr i32 %875, 1
  %880 = and i32 %875, 1
  %881 = icmp ne i32 %880, 0
  %882 = select i1 %881, i32 %869, i32 0
  %883 = add i32 %882, %879
  %884 = and i32 %883, 31
  %885 = shl i32 1, %884
  %886 = or i32 %885, %874
  br label %887

; <label>:887                                     ; preds = %878, %872
  %888 = phi i32 [ %886, %878 ], [ %874, %872 ]
  %889 = lshr i32 %873, 1
  %890 = add i32 %875, 1
  %891 = icmp eq i32 %889, 0
  br i1 %891, label %1059, label %872

; <label>:892                                     ; preds = %1070, %919
  %893 = phi float [ %920, %919 ], [ %1074, %1070 ]
  %894 = phi float [ %915, %919 ], [ 2.000000e+00, %1070 ]
  %895 = phi i32 [ %921, %919 ], [ 0, %1070 ]
  br label %896

; <label>:896                                     ; preds = %914, %892
  %897 = phi float [ %916, %914 ], [ %1068, %892 ]
  %898 = phi float [ %915, %914 ], [ %894, %892 ]
  %899 = phi i32 [ %917, %914 ], [ 0, %892 ]
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 0
  %902 = extractvalue %dx.types.CBufRet.f32 %900, 1
  %903 = fmul fast float %901, %897
  %904 = fmul fast float %902, %893
  %905 = extractvalue %dx.types.CBufRet.f32 %900, 2
  %906 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %907 = fadd fast float %903, %905
  %908 = fadd fast float %904, %906
  %909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %907, float %908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %910 = extractvalue %dx.types.ResRet.f32 %909, 0
  %911 = fcmp fast ogt float %910, 0.000000e+00
  br i1 %911, label %912, label %914, !dx.controlflow.hints !59

; <label>:912                                     ; preds = %896
  %913 = call float @dx.op.binary.f32(i32 36, float %910, float %898)  ; FMin(a,b)
  br label %914

; <label>:914                                     ; preds = %912, %896
  %915 = phi float [ %913, %912 ], [ %898, %896 ]
  %916 = fadd fast float %897, %432
  %917 = add nuw i32 %899, 1
  %918 = icmp eq i32 %917, %430
  br i1 %918, label %919, label %896

; <label>:919                                     ; preds = %914
  %920 = fadd fast float %893, %432
  %921 = add nuw i32 %895, 1
  %922 = icmp eq i32 %921, %430
  br i1 %922, label %923, label %892

; <label>:923                                     ; preds = %919
  br label %924

; <label>:924                                     ; preds = %1059, %923
  %925 = phi float [ 2.000000e+00, %1059 ], [ %915, %923 ]
  %926 = fcmp fast ole float %925, 1.000000e+00
  %927 = select i1 %926, float %925, float 0.000000e+00
  br i1 %1069, label %981, label %928

; <label>:928                                     ; preds = %924
  %929 = mul i32 %1064, %430
  %930 = uitofp i32 %929 to float
  %931 = fadd fast float %930, 5.000000e-01
  %932 = fmul fast float %931, %432
  br label %933

; <label>:933                                     ; preds = %956, %928
  %934 = phi float [ %957, %956 ], [ %932, %928 ]
  %935 = phi float [ %952, %956 ], [ 0.000000e+00, %928 ]
  %936 = phi i32 [ %958, %956 ], [ 0, %928 ]
  br label %937

; <label>:937                                     ; preds = %937, %933
  %938 = phi float [ %953, %937 ], [ %1068, %933 ]
  %939 = phi float [ %952, %937 ], [ %935, %933 ]
  %940 = phi i32 [ %954, %937 ], [ 0, %933 ]
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = fmul fast float %942, %938
  %945 = fmul fast float %943, %934
  %946 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %948 = fadd fast float %944, %946
  %949 = fadd fast float %945, %947
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = call float @dx.op.binary.f32(i32 35, float %951, float %939)  ; FMax(a,b)
  %953 = fadd fast float %938, %432
  %954 = add nuw i32 %940, 1
  %955 = icmp eq i32 %954, %430
  br i1 %955, label %956, label %937

; <label>:956                                     ; preds = %937
  %957 = fadd fast float %934, %432
  %958 = add nuw i32 %936, 1
  %959 = icmp eq i32 %958, %430
  br i1 %959, label %980, label %933

; <label>:960                                     ; preds = %975, %871
  %961 = phi i32 [ %977, %975 ], [ %867, %871 ]
  %962 = phi i32 [ %976, %975 ], [ 0, %871 ]
  %963 = phi i32 [ %978, %975 ], [ 0, %871 ]
  %964 = and i32 %961, 1
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %975, label %966, !dx.controlflow.hints !58

; <label>:966                                     ; preds = %960
  %967 = lshr i32 %963, 1
  %968 = and i32 %963, 1
  %969 = icmp ne i32 %968, 0
  %970 = select i1 %969, i32 %869, i32 0
  %971 = add i32 %970, %967
  %972 = and i32 %971, 31
  %973 = shl i32 1, %972
  %974 = or i32 %973, %962
  br label %975

; <label>:975                                     ; preds = %966, %960
  %976 = phi i32 [ %974, %966 ], [ %962, %960 ]
  %977 = lshr i32 %961, 1
  %978 = add i32 %963, 1
  %979 = icmp eq i32 %977, 0
  br i1 %979, label %1034, label %960

; <label>:980                                     ; preds = %956
  br label %981

; <label>:981                                     ; preds = %1034, %980, %924
  %982 = phi float [ %1056, %1034 ], [ %927, %924 ], [ %927, %980 ]
  %983 = phi float [ %1058, %1034 ], [ 0.000000e+00, %924 ], [ %952, %980 ]
  %984 = call float @dx.op.binary.f32(i32 35, float %982, float 0.000000e+00)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 35, float %983, float 0.000000e+00)  ; FMax(a,b)
  %986 = fcmp fast une float %983, 0.000000e+00
  br i1 %986, label %990, label %987, !dx.controlflow.hints !60

; <label>:987                                     ; preds = %981
  %988 = fcmp fast une float %982, 0.000000e+00
  %989 = select i1 %988, float 1.000000e+00, float 0.000000e+00
  br label %1005

; <label>:990                                     ; preds = %981
  %991 = fcmp fast ugt float %982, %983
  br i1 %991, label %992, label %1002, !dx.controlflow.hints !61

; <label>:992                                     ; preds = %990
  %993 = fadd fast float %983, 0x3E7AD7F2A0000000
  %994 = fcmp fast ult float %993, %982
  br i1 %994, label %995, label %1000, !dx.controlflow.hints !62

; <label>:995                                     ; preds = %992
  %996 = fsub fast float %982, %983
  %997 = fmul fast float %996, 0x3F847AE140000000
  %998 = fadd fast float %997, %982
  %999 = call float @dx.op.binary.f32(i32 36, float %998, float 1.000000e+00)  ; FMin(a,b)
  br label %1005

; <label>:1000                                    ; preds = %992
  %1001 = fadd fast float %983, 0xBE7AD7F2A0000000
  br label %1005

; <label>:1002                                    ; preds = %990
  %1003 = fadd fast float %983, 0xBE7AD7F2A0000000
  %1004 = call float @dx.op.binary.f32(i32 36, float %982, float %1003)  ; FMin(a,b)
  br label %1005

; <label>:1005                                    ; preds = %1002, %1000, %995, %987
  %1006 = phi float [ %1004, %1002 ], [ %1001, %1000 ], [ %984, %995 ], [ %984, %987 ]
  %1007 = phi float [ %985, %1002 ], [ %985, %1000 ], [ %999, %995 ], [ %989, %987 ]
  %1008 = fmul fast float %1006, 6.553500e+04
  %1009 = call float @dx.op.unary.f32(i32 28, float %1008)  ; Round_pi(value)
  %1010 = fptoui float %1009 to i32
  %1011 = fmul fast float %1007, 6.553500e+04
  %1012 = call float @dx.op.unary.f32(i32 27, float %1011)  ; Round_ni(value)
  %1013 = fptoui float %1012 to i32
  %1014 = add i32 %1013, %1010
  %1015 = lshr i32 %1014, 1
  %1016 = add i32 %1010, 1024
  %1017 = call i32 @dx.op.binary.i32(i32 40, i32 %1016, i32 %1015)  ; UMin(a,b)
  %1018 = lshr i32 %857, 2
  %1019 = and i32 %857, 2
  %1020 = icmp ne i32 %1019, 0
  %1021 = shl nuw nsw i32 %1019, 3
  %1022 = select i1 %1020, i32 65535, i32 -65536
  %1023 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1018, i32 0, i32 undef, i32 %1022)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1024 = shl i32 %1017, %1021
  %1025 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1018, i32 0, i32 undef, i32 %1024)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1026

; <label>:1026                                    ; preds = %1005, %856
  %1027 = phi i32 [ %862, %1005 ], [ %857, %856 ]
  %1028 = phi i32 [ %865, %1005 ], [ %858, %856 ]
  %1029 = add i32 %1027, 2
  %1030 = and i32 %428, 8
  %1031 = icmp eq i32 %1030, 0
  %1032 = icmp uge i32 %1029, %332
  %1033 = or i1 %1031, %1032
  br i1 %1033, label %1278, label %1075, !dx.controlflow.hints !55

; <label>:1034                                    ; preds = %975
  %1035 = and i32 %869, 31
  %1036 = shl i32 1, %1035
  %1037 = add i32 %1036, -1
  %1038 = and i32 %976, %1037
  %1039 = lshr i32 %976, %1035
  %1040 = uitofp i32 %1038 to float
  %1041 = fadd fast float %1040, 5.000000e-01
  %1042 = uitofp i32 %1039 to float
  %1043 = fadd fast float %1042, 5.000000e-01
  %1044 = fmul fast float %1041, %424
  %1045 = fmul fast float %1043, %424
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1049 = fmul fast float %1047, %1044
  %1050 = fmul fast float %1048, %1045
  %1051 = extractvalue %dx.types.CBufRet.f32 %1046, 2
  %1052 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1053 = fadd fast float %1049, %1051
  %1054 = fadd fast float %1050, %1052
  %1055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1053, float %1054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  br label %981

; <label>:1059                                    ; preds = %887
  %1060 = and i32 %869, 31
  %1061 = shl i32 1, %1060
  %1062 = add i32 %1061, -1
  %1063 = and i32 %888, %1062
  %1064 = lshr i32 %888, %1060
  %1065 = mul i32 %1063, %430
  %1066 = uitofp i32 %1065 to float
  %1067 = fadd fast float %1066, 5.000000e-01
  %1068 = fmul fast float %1067, %432
  %1069 = icmp eq i32 %430, 0
  br i1 %1069, label %924, label %1070

; <label>:1070                                    ; preds = %1059
  %1071 = mul i32 %1064, %430
  %1072 = uitofp i32 %1071 to float
  %1073 = fadd fast float %1072, 5.000000e-01
  %1074 = fmul fast float %1073, %432
  br label %892

; <label>:1075                                    ; preds = %1026
  %1076 = or i32 %1028, 128
  %1077 = icmp eq i32 %430, 1
  %1078 = or i32 %10, 3
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 1
  br i1 %1077, label %1082, label %1081, !dx.controlflow.hints !57

; <label>:1081                                    ; preds = %1075
  br label %1083

; <label>:1082                                    ; preds = %1075
  br label %1171

; <label>:1083                                    ; preds = %1098, %1081
  %1084 = phi i32 [ %1100, %1098 ], [ %1078, %1081 ]
  %1085 = phi i32 [ %1099, %1098 ], [ 0, %1081 ]
  %1086 = phi i32 [ %1101, %1098 ], [ 0, %1081 ]
  %1087 = and i32 %1084, 1
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1098, label %1089, !dx.controlflow.hints !58

; <label>:1089                                    ; preds = %1083
  %1090 = lshr i32 %1086, 1
  %1091 = and i32 %1086, 1
  %1092 = icmp ne i32 %1091, 0
  %1093 = select i1 %1092, i32 %1080, i32 0
  %1094 = add i32 %1093, %1090
  %1095 = and i32 %1094, 31
  %1096 = shl i32 1, %1095
  %1097 = or i32 %1096, %1085
  br label %1098

; <label>:1098                                    ; preds = %1089, %1083
  %1099 = phi i32 [ %1097, %1089 ], [ %1085, %1083 ]
  %1100 = lshr i32 %1084, 1
  %1101 = add i32 %1086, 1
  %1102 = icmp eq i32 %1100, 0
  br i1 %1102, label %1262, label %1083

; <label>:1103                                    ; preds = %1273, %1130
  %1104 = phi float [ %1131, %1130 ], [ %1277, %1273 ]
  %1105 = phi float [ %1126, %1130 ], [ 2.000000e+00, %1273 ]
  %1106 = phi i32 [ %1132, %1130 ], [ 0, %1273 ]
  br label %1107

; <label>:1107                                    ; preds = %1125, %1103
  %1108 = phi float [ %1127, %1125 ], [ %1271, %1103 ]
  %1109 = phi float [ %1126, %1125 ], [ %1105, %1103 ]
  %1110 = phi i32 [ %1128, %1125 ], [ 0, %1103 ]
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.CBufRet.f32 %1111, 1
  %1114 = fmul fast float %1112, %1108
  %1115 = fmul fast float %1113, %1104
  %1116 = extractvalue %dx.types.CBufRet.f32 %1111, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1118 = fadd fast float %1114, %1116
  %1119 = fadd fast float %1115, %1117
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1118, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = fcmp fast ogt float %1121, 0.000000e+00
  br i1 %1122, label %1123, label %1125, !dx.controlflow.hints !59

; <label>:1123                                    ; preds = %1107
  %1124 = call float @dx.op.binary.f32(i32 36, float %1121, float %1109)  ; FMin(a,b)
  br label %1125

; <label>:1125                                    ; preds = %1123, %1107
  %1126 = phi float [ %1124, %1123 ], [ %1109, %1107 ]
  %1127 = fadd fast float %1108, %432
  %1128 = add nuw i32 %1110, 1
  %1129 = icmp eq i32 %1128, %430
  br i1 %1129, label %1130, label %1107

; <label>:1130                                    ; preds = %1125
  %1131 = fadd fast float %1104, %432
  %1132 = add nuw i32 %1106, 1
  %1133 = icmp eq i32 %1132, %430
  br i1 %1133, label %1134, label %1103

; <label>:1134                                    ; preds = %1130
  br label %1135

; <label>:1135                                    ; preds = %1262, %1134
  %1136 = phi float [ 2.000000e+00, %1262 ], [ %1126, %1134 ]
  %1137 = fcmp fast ole float %1136, 1.000000e+00
  %1138 = select i1 %1137, float %1136, float 0.000000e+00
  br i1 %1272, label %1192, label %1139

; <label>:1139                                    ; preds = %1135
  %1140 = mul i32 %1267, %430
  %1141 = uitofp i32 %1140 to float
  %1142 = fadd fast float %1141, 5.000000e-01
  %1143 = fmul fast float %1142, %432
  br label %1144

; <label>:1144                                    ; preds = %1167, %1139
  %1145 = phi float [ %1168, %1167 ], [ %1143, %1139 ]
  %1146 = phi float [ %1163, %1167 ], [ 0.000000e+00, %1139 ]
  %1147 = phi i32 [ %1169, %1167 ], [ 0, %1139 ]
  br label %1148

; <label>:1148                                    ; preds = %1148, %1144
  %1149 = phi float [ %1164, %1148 ], [ %1271, %1144 ]
  %1150 = phi float [ %1163, %1148 ], [ %1146, %1144 ]
  %1151 = phi i32 [ %1165, %1148 ], [ 0, %1144 ]
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1155 = fmul fast float %1153, %1149
  %1156 = fmul fast float %1154, %1145
  %1157 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1158 = extractvalue %dx.types.CBufRet.f32 %1152, 3
  %1159 = fadd fast float %1155, %1157
  %1160 = fadd fast float %1156, %1158
  %1161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1159, float %1160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = call float @dx.op.binary.f32(i32 35, float %1162, float %1150)  ; FMax(a,b)
  %1164 = fadd fast float %1149, %432
  %1165 = add nuw i32 %1151, 1
  %1166 = icmp eq i32 %1165, %430
  br i1 %1166, label %1167, label %1148

; <label>:1167                                    ; preds = %1148
  %1168 = fadd fast float %1145, %432
  %1169 = add nuw i32 %1147, 1
  %1170 = icmp eq i32 %1169, %430
  br i1 %1170, label %1191, label %1144

; <label>:1171                                    ; preds = %1186, %1082
  %1172 = phi i32 [ %1188, %1186 ], [ %1078, %1082 ]
  %1173 = phi i32 [ %1187, %1186 ], [ 0, %1082 ]
  %1174 = phi i32 [ %1189, %1186 ], [ 0, %1082 ]
  %1175 = and i32 %1172, 1
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1186, label %1177, !dx.controlflow.hints !58

; <label>:1177                                    ; preds = %1171
  %1178 = lshr i32 %1174, 1
  %1179 = and i32 %1174, 1
  %1180 = icmp ne i32 %1179, 0
  %1181 = select i1 %1180, i32 %1080, i32 0
  %1182 = add i32 %1181, %1178
  %1183 = and i32 %1182, 31
  %1184 = shl i32 1, %1183
  %1185 = or i32 %1184, %1173
  br label %1186

; <label>:1186                                    ; preds = %1177, %1171
  %1187 = phi i32 [ %1185, %1177 ], [ %1173, %1171 ]
  %1188 = lshr i32 %1172, 1
  %1189 = add i32 %1174, 1
  %1190 = icmp eq i32 %1188, 0
  br i1 %1190, label %1237, label %1171

; <label>:1191                                    ; preds = %1167
  br label %1192

; <label>:1192                                    ; preds = %1237, %1191, %1135
  %1193 = phi float [ %1259, %1237 ], [ %1138, %1135 ], [ %1138, %1191 ]
  %1194 = phi float [ %1261, %1237 ], [ 0.000000e+00, %1135 ], [ %1163, %1191 ]
  %1195 = call float @dx.op.binary.f32(i32 35, float %1193, float 0.000000e+00)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 35, float %1194, float 0.000000e+00)  ; FMax(a,b)
  %1197 = fcmp fast une float %1194, 0.000000e+00
  br i1 %1197, label %1201, label %1198, !dx.controlflow.hints !60

; <label>:1198                                    ; preds = %1192
  %1199 = fcmp fast une float %1193, 0.000000e+00
  %1200 = select i1 %1199, float 1.000000e+00, float 0.000000e+00
  br label %1216

; <label>:1201                                    ; preds = %1192
  %1202 = fcmp fast ugt float %1193, %1194
  br i1 %1202, label %1203, label %1213, !dx.controlflow.hints !61

; <label>:1203                                    ; preds = %1201
  %1204 = fadd fast float %1194, 0x3E7AD7F2A0000000
  %1205 = fcmp fast ult float %1204, %1193
  br i1 %1205, label %1206, label %1211, !dx.controlflow.hints !62

; <label>:1206                                    ; preds = %1203
  %1207 = fsub fast float %1193, %1194
  %1208 = fmul fast float %1207, 0x3F847AE140000000
  %1209 = fadd fast float %1208, %1193
  %1210 = call float @dx.op.binary.f32(i32 36, float %1209, float 1.000000e+00)  ; FMin(a,b)
  br label %1216

; <label>:1211                                    ; preds = %1203
  %1212 = fadd fast float %1194, 0xBE7AD7F2A0000000
  br label %1216

; <label>:1213                                    ; preds = %1201
  %1214 = fadd fast float %1194, 0xBE7AD7F2A0000000
  %1215 = call float @dx.op.binary.f32(i32 36, float %1193, float %1214)  ; FMin(a,b)
  br label %1216

; <label>:1216                                    ; preds = %1213, %1211, %1206, %1198
  %1217 = phi float [ %1215, %1213 ], [ %1212, %1211 ], [ %1195, %1206 ], [ %1195, %1198 ]
  %1218 = phi float [ %1196, %1213 ], [ %1196, %1211 ], [ %1210, %1206 ], [ %1200, %1198 ]
  %1219 = fmul fast float %1217, 6.553500e+04
  %1220 = call float @dx.op.unary.f32(i32 28, float %1219)  ; Round_pi(value)
  %1221 = fptoui float %1220 to i32
  %1222 = fmul fast float %1218, 6.553500e+04
  %1223 = call float @dx.op.unary.f32(i32 27, float %1222)  ; Round_ni(value)
  %1224 = fptoui float %1223 to i32
  %1225 = add i32 %1224, %1221
  %1226 = lshr i32 %1225, 1
  %1227 = add i32 %1221, 1024
  %1228 = call i32 @dx.op.binary.i32(i32 40, i32 %1227, i32 %1226)  ; UMin(a,b)
  %1229 = lshr i32 %1027, 2
  %1230 = and i32 %1027, 2
  %1231 = icmp ne i32 %1230, 0
  %1232 = shl nuw nsw i32 %1230, 3
  %1233 = select i1 %1231, i32 65535, i32 -65536
  %1234 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1229, i32 0, i32 undef, i32 %1233)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1235 = shl i32 %1228, %1232
  %1236 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1229, i32 0, i32 undef, i32 %1235)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1278

; <label>:1237                                    ; preds = %1186
  %1238 = and i32 %1080, 31
  %1239 = shl i32 1, %1238
  %1240 = add i32 %1239, -1
  %1241 = and i32 %1187, %1240
  %1242 = lshr i32 %1187, %1238
  %1243 = uitofp i32 %1241 to float
  %1244 = fadd fast float %1243, 5.000000e-01
  %1245 = uitofp i32 %1242 to float
  %1246 = fadd fast float %1245, 5.000000e-01
  %1247 = fmul fast float %1244, %424
  %1248 = fmul fast float %1246, %424
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1252 = fmul fast float %1250, %1247
  %1253 = fmul fast float %1251, %1248
  %1254 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1255 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1256 = fadd fast float %1252, %1254
  %1257 = fadd fast float %1253, %1255
  %1258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  %1260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  br label %1192

; <label>:1262                                    ; preds = %1098
  %1263 = and i32 %1080, 31
  %1264 = shl i32 1, %1263
  %1265 = add i32 %1264, -1
  %1266 = and i32 %1099, %1265
  %1267 = lshr i32 %1099, %1263
  %1268 = mul i32 %1266, %430
  %1269 = uitofp i32 %1268 to float
  %1270 = fadd fast float %1269, 5.000000e-01
  %1271 = fmul fast float %1270, %432
  %1272 = icmp eq i32 %430, 0
  br i1 %1272, label %1135, label %1273

; <label>:1273                                    ; preds = %1262
  %1274 = mul i32 %1267, %430
  %1275 = uitofp i32 %1274 to float
  %1276 = fadd fast float %1275, 5.000000e-01
  %1277 = fmul fast float %1276, %432
  br label %1103

; <label>:1278                                    ; preds = %1216, %1026, %861, %650, %435
  %1279 = phi i32 [ 0, %435 ], [ %647, %650 ], [ %858, %861 ], [ %1076, %1216 ], [ %1028, %1026 ]
  %1280 = shl i32 %421, 8
  %1281 = or i32 %1279, %1280
  %1282 = and i32 %420, 2
  %1283 = icmp eq i32 %1282, 0
  %1284 = lshr i32 %420, 2
  br i1 %1283, label %1293, label %1285, !dx.controlflow.hints !63

; <label>:1285                                    ; preds = %1278
  %1286 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1284, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1287 = add nuw nsw i32 %1284, 1
  %1288 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1287, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1289 = shl i32 %1281, 16
  %1290 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1284, i32 0, i32 undef, i32 %1289)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1291 = lshr i32 %1281, 16
  %1292 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1287, i32 0, i32 undef, i32 %1291)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1729

; <label>:1293                                    ; preds = %1278
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1284, i32 0, i32 %1281, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1729

; <label>:1294                                    ; preds = %282
  br i1 %285, label %1295, label %1318, !dx.controlflow.hints !64

; <label>:1295                                    ; preds = %1294
  %1296 = add i32 %15, 1
  %1297 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %1298 = add i32 %1296, %1297
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1298, i32 12)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = add i32 %1297, -4
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1301, i32 12)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = add i32 %1297, -3
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1304, i32 12)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1297, -2
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1307, i32 12)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = add i32 %1297, -1
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1310, i32 12)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = add i32 %1303, %1300
  %1314 = add i32 %1313, %1306
  %1315 = add i32 %1314, %1309
  %1316 = add i32 %1315, %1312
  %1317 = add i32 %1297, %15
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1317, i32 12, i32 %1316, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1318

; <label>:1318                                    ; preds = %1295, %1294
  %1319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.i32 %1319, 2
  %1321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.i32 %1321, 3
  %1323 = icmp ult i32 %1320, %1322
  br i1 %1323, label %1324, label %1729, !dx.controlflow.hints !65

; <label>:1324                                    ; preds = %1318
  %1325 = extractvalue %dx.types.CBufRet.i32 %1319, 1
  %1326 = add i32 %1325, %1320
  %1327 = and i32 %7, 1073741823
  %1328 = add i32 %1326, %1327
  %1329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1328, i32 16)  ; BufferLoad(srv,index,wot)
  %1330 = extractvalue %dx.types.ResRet.i32 %1329, 0
  %1331 = icmp eq i32 %1330, 16777215
  br i1 %1331, label %1332, label %1340, !dx.controlflow.hints !66

; <label>:1332                                    ; preds = %1324
  %1333 = add i32 %1320, %10
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1333, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1334 = or i32 %10, 1
  %1335 = add i32 %1334, %1320
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1335, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1336 = or i32 %10, 2
  %1337 = add i32 %1336, %1320
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1337, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1338 = or i32 %10, 3
  %1339 = add i32 %1338, %1320
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1339, i32 16, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1729

; <label>:1340                                    ; preds = %1324
  %1341 = extractvalue %dx.types.CBufRet.i32 %1321, 1
  %1342 = add i32 %1341, -2
  %1343 = icmp slt i32 %15, %1342
  br i1 %1343, label %1344, label %1420

; <label>:1344                                    ; preds = %1340
  br label %1345

; <label>:1345                                    ; preds = %1410, %1344
  %1346 = phi i32 [ %1351, %1410 ], [ %1325, %1344 ]
  %1347 = phi i32 [ %1414, %1410 ], [ %15, %1344 ]
  %1348 = phi i32 [ %1411, %1410 ], [ 0, %1344 ]
  %1349 = phi i32 [ %1413, %1410 ], [ %1326, %1344 ]
  %1350 = phi i32 [ %1412, %1410 ], [ %1327, %1344 ]
  %1351 = lshr i32 %1346, 2
  %1352 = add i32 %1349, %1350
  %1353 = and i32 %1350, 3
  %1354 = icmp eq i32 %1353, 3
  br i1 %1354, label %1355, label %1380, !dx.controlflow.hints !52

; <label>:1355                                    ; preds = %1345
  %1356 = add i32 %1352, -3
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1356, i32 16)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = icmp eq i32 %1358, 16777215
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1356, i32 12)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = select i1 %1359, i32 0, i32 %1361
  %1363 = add i32 %1352, -2
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1363, i32 16)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = icmp eq i32 %1365, 16777215
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1363, i32 12)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = select i1 %1366, i32 0, i32 %1368
  %1370 = add i32 %1352, -1
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1370, i32 16)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = icmp eq i32 %1372, 16777215
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1370, i32 12)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = select i1 %1373, i32 0, i32 %1375
  %1377 = add i32 %1362, %1348
  %1378 = add i32 %1377, %1369
  %1379 = add i32 %1378, %1376
  br label %1410

; <label>:1380                                    ; preds = %1345
  %1381 = icmp eq i32 %1353, 2
  br i1 %1381, label %1382, label %1399, !dx.controlflow.hints !53

; <label>:1382                                    ; preds = %1380
  %1383 = add i32 %1352, -2
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1383, i32 16)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = icmp eq i32 %1385, 16777215
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1383, i32 12)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = select i1 %1386, i32 0, i32 %1388
  %1390 = add i32 %1352, -1
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1390, i32 16)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = icmp eq i32 %1392, 16777215
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1390, i32 12)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = select i1 %1393, i32 0, i32 %1395
  %1397 = add i32 %1389, %1348
  %1398 = add i32 %1397, %1396
  br label %1410

; <label>:1399                                    ; preds = %1380
  %1400 = icmp eq i32 %1353, 1
  br i1 %1400, label %1401, label %1410, !dx.controlflow.hints !54

; <label>:1401                                    ; preds = %1399
  %1402 = add i32 %1352, -1
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1402, i32 16)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = icmp eq i32 %1404, 16777215
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1402, i32 12)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = select i1 %1405, i32 0, i32 %1407
  %1409 = add i32 %1408, %1348
  br label %1410

; <label>:1410                                    ; preds = %1401, %1399, %1382, %1355
  %1411 = phi i32 [ %1379, %1355 ], [ %1398, %1382 ], [ %1409, %1401 ], [ %1348, %1399 ]
  %1412 = lshr i32 %1350, 2
  %1413 = add i32 %1349, %1351
  %1414 = add nsw i32 %1347, 1
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 1
  %1417 = add i32 %1416, -2
  %1418 = icmp slt i32 %1414, %1417
  br i1 %1418, label %1345, label %1419

; <label>:1419                                    ; preds = %1410
  br label %1420

; <label>:1420                                    ; preds = %1419, %1340
  %1421 = phi i32 [ 0, %1340 ], [ %1411, %1419 ]
  %1422 = add i32 %15, 1
  %1423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.i32 %1423, 2
  %1425 = add i32 %1422, %1424
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1425, i32 12)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = add i32 %1427, %1421
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1328, i32 16)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = sub i32 %1428, %1430
  %1432 = add i32 %1320, %10
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1432, i32 8)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 1
  %1436 = and i32 %1434, 2
  %1437 = shl nuw nsw i32 %1436, 1
  %1438 = lshr exact i32 %1436, 1
  %1439 = shl nuw nsw i32 %1435, 1
  %1440 = xor i32 %1439, 6
  %1441 = xor i32 %1437, %1440
  %1442 = shl nuw nsw i32 %1435, 1
  %1443 = xor i32 %1442, 3
  %1444 = xor i32 %1438, %1443
  %1445 = add i32 %1441, %1428
  %1446 = icmp ult i32 %1445, %1322
  br i1 %1446, label %1447, label %1713, !dx.controlflow.hints !67

; <label>:1447                                    ; preds = %1420
  %1448 = icmp eq i32 %1444, 3
  br i1 %1448, label %1473, label %1449, !dx.controlflow.hints !68

; <label>:1449                                    ; preds = %1447
  %1450 = icmp eq i32 %1444, 2
  br i1 %1450, label %1451, label %1496, !dx.controlflow.hints !69

; <label>:1451                                    ; preds = %1449
  %1452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1432, i32 0)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = fmul fast float %1453, 6.553500e+04
  %1456 = call float @dx.op.unary.f32(i32 28, float %1455)  ; Round_pi(value)
  %1457 = fptoui float %1456 to i32
  %1458 = fmul fast float %1454, 6.553500e+04
  %1459 = call float @dx.op.unary.f32(i32 27, float %1458)  ; Round_ni(value)
  %1460 = fptoui float %1459 to i32
  %1461 = add i32 %1460, %1457
  %1462 = lshr i32 %1461, 1
  %1463 = add i32 %1457, 1024
  %1464 = call i32 @dx.op.binary.i32(i32 40, i32 %1463, i32 %1462)  ; UMin(a,b)
  %1465 = lshr i32 %1428, 2
  %1466 = and i32 %1428, 2
  %1467 = icmp ne i32 %1466, 0
  %1468 = shl nuw nsw i32 %1466, 3
  %1469 = select i1 %1467, i32 65535, i32 -65536
  %1470 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1465, i32 0, i32 undef, i32 %1469)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1471 = shl i32 %1464, %1468
  %1472 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1465, i32 0, i32 undef, i32 %1471)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1496

; <label>:1473                                    ; preds = %1447
  %1474 = add i32 %1428, 4
  %1475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1432, i32 0)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = fmul fast float %1476, 6.553500e+04
  %1479 = call float @dx.op.unary.f32(i32 28, float %1478)  ; Round_pi(value)
  %1480 = fptoui float %1479 to i32
  %1481 = fmul fast float %1477, 6.553500e+04
  %1482 = call float @dx.op.unary.f32(i32 27, float %1481)  ; Round_ni(value)
  %1483 = fptoui float %1482 to i32
  %1484 = add i32 %1483, %1480
  %1485 = lshr i32 %1484, 1
  %1486 = add i32 %1480, 1024
  %1487 = call i32 @dx.op.binary.i32(i32 40, i32 %1486, i32 %1485)  ; UMin(a,b)
  %1488 = lshr i32 %1474, 2
  %1489 = and i32 %1474, 2
  %1490 = icmp ne i32 %1489, 0
  %1491 = shl nuw nsw i32 %1489, 3
  %1492 = select i1 %1490, i32 65535, i32 -65536
  %1493 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1488, i32 0, i32 undef, i32 %1492)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1494 = shl i32 %1487, %1491
  %1495 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1488, i32 0, i32 undef, i32 %1494)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1496

; <label>:1496                                    ; preds = %1473, %1451, %1449
  %1497 = and i32 %1444, 1
  %1498 = icmp ne i32 %1497, 0
  %1499 = select i1 %1498, i32 %1428, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1432, i32 16, i32 %1499, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1500 = or i32 %10, 1
  %1501 = add i32 %1500, %1320
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1501, i32 8)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 1
  %1505 = and i32 %1503, 2
  %1506 = shl nuw nsw i32 %1505, 1
  %1507 = lshr exact i32 %1505, 1
  %1508 = shl nuw nsw i32 %1504, 1
  %1509 = xor i32 %1508, 6
  %1510 = xor i32 %1506, %1509
  %1511 = shl nuw nsw i32 %1504, 1
  %1512 = xor i32 %1511, 3
  %1513 = xor i32 %1507, %1512
  %1514 = add i32 %1510, %1445
  %1515 = icmp ult i32 %1514, %1322
  br i1 %1515, label %1516, label %1713, !dx.controlflow.hints !67

; <label>:1516                                    ; preds = %1496
  %1517 = shl nuw nsw i32 %1513, 2
  %1518 = or i32 %1517, %1444
  %1519 = icmp eq i32 %1513, 3
  br i1 %1519, label %1544, label %1520, !dx.controlflow.hints !68

; <label>:1520                                    ; preds = %1516
  %1521 = icmp eq i32 %1513, 2
  br i1 %1521, label %1522, label %1567, !dx.controlflow.hints !69

; <label>:1522                                    ; preds = %1520
  %1523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1501, i32 0)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.f32 %1523, 1
  %1526 = fmul fast float %1524, 6.553500e+04
  %1527 = call float @dx.op.unary.f32(i32 28, float %1526)  ; Round_pi(value)
  %1528 = fptoui float %1527 to i32
  %1529 = fmul fast float %1525, 6.553500e+04
  %1530 = call float @dx.op.unary.f32(i32 27, float %1529)  ; Round_ni(value)
  %1531 = fptoui float %1530 to i32
  %1532 = add i32 %1531, %1528
  %1533 = lshr i32 %1532, 1
  %1534 = add i32 %1528, 1024
  %1535 = call i32 @dx.op.binary.i32(i32 40, i32 %1534, i32 %1533)  ; UMin(a,b)
  %1536 = lshr i32 %1445, 2
  %1537 = and i32 %1445, 2
  %1538 = icmp ne i32 %1537, 0
  %1539 = shl nuw nsw i32 %1537, 3
  %1540 = select i1 %1538, i32 65535, i32 -65536
  %1541 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1536, i32 0, i32 undef, i32 %1540)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1542 = shl i32 %1535, %1539
  %1543 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1536, i32 0, i32 undef, i32 %1542)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1567

; <label>:1544                                    ; preds = %1516
  %1545 = add i32 %1445, 4
  %1546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1501, i32 0)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.ResRet.f32 %1546, 1
  %1549 = fmul fast float %1547, 6.553500e+04
  %1550 = call float @dx.op.unary.f32(i32 28, float %1549)  ; Round_pi(value)
  %1551 = fptoui float %1550 to i32
  %1552 = fmul fast float %1548, 6.553500e+04
  %1553 = call float @dx.op.unary.f32(i32 27, float %1552)  ; Round_ni(value)
  %1554 = fptoui float %1553 to i32
  %1555 = add i32 %1554, %1551
  %1556 = lshr i32 %1555, 1
  %1557 = add i32 %1551, 1024
  %1558 = call i32 @dx.op.binary.i32(i32 40, i32 %1557, i32 %1556)  ; UMin(a,b)
  %1559 = lshr i32 %1545, 2
  %1560 = and i32 %1545, 2
  %1561 = icmp ne i32 %1560, 0
  %1562 = shl nuw nsw i32 %1560, 3
  %1563 = select i1 %1561, i32 65535, i32 -65536
  %1564 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1559, i32 0, i32 undef, i32 %1563)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1565 = shl i32 %1558, %1562
  %1566 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1559, i32 0, i32 undef, i32 %1565)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1567

; <label>:1567                                    ; preds = %1544, %1522, %1520
  %1568 = and i32 %1513, 1
  %1569 = icmp ne i32 %1568, 0
  %1570 = select i1 %1569, i32 %1445, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1501, i32 16, i32 %1570, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1571 = or i32 %10, 2
  %1572 = add i32 %1571, %1320
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1572, i32 8)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 1
  %1576 = and i32 %1574, 2
  %1577 = shl nuw nsw i32 %1576, 1
  %1578 = lshr exact i32 %1576, 1
  %1579 = shl nuw nsw i32 %1575, 1
  %1580 = xor i32 %1579, 6
  %1581 = xor i32 %1577, %1580
  %1582 = shl nuw nsw i32 %1575, 1
  %1583 = xor i32 %1582, 3
  %1584 = xor i32 %1578, %1583
  %1585 = add i32 %1581, %1514
  %1586 = icmp ult i32 %1585, %1322
  br i1 %1586, label %1587, label %1713, !dx.controlflow.hints !67

; <label>:1587                                    ; preds = %1567
  %1588 = shl nuw nsw i32 %1584, 4
  %1589 = or i32 %1588, %1518
  %1590 = icmp eq i32 %1584, 3
  br i1 %1590, label %1615, label %1591, !dx.controlflow.hints !68

; <label>:1591                                    ; preds = %1587
  %1592 = icmp eq i32 %1584, 2
  br i1 %1592, label %1593, label %1638, !dx.controlflow.hints !69

; <label>:1593                                    ; preds = %1591
  %1594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1572, i32 0)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1597 = fmul fast float %1595, 6.553500e+04
  %1598 = call float @dx.op.unary.f32(i32 28, float %1597)  ; Round_pi(value)
  %1599 = fptoui float %1598 to i32
  %1600 = fmul fast float %1596, 6.553500e+04
  %1601 = call float @dx.op.unary.f32(i32 27, float %1600)  ; Round_ni(value)
  %1602 = fptoui float %1601 to i32
  %1603 = add i32 %1602, %1599
  %1604 = lshr i32 %1603, 1
  %1605 = add i32 %1599, 1024
  %1606 = call i32 @dx.op.binary.i32(i32 40, i32 %1605, i32 %1604)  ; UMin(a,b)
  %1607 = lshr i32 %1514, 2
  %1608 = and i32 %1514, 2
  %1609 = icmp ne i32 %1608, 0
  %1610 = shl nuw nsw i32 %1608, 3
  %1611 = select i1 %1609, i32 65535, i32 -65536
  %1612 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1607, i32 0, i32 undef, i32 %1611)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1613 = shl i32 %1606, %1610
  %1614 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1607, i32 0, i32 undef, i32 %1613)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1638

; <label>:1615                                    ; preds = %1587
  %1616 = add i32 %1514, 4
  %1617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1572, i32 0)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  %1619 = extractvalue %dx.types.ResRet.f32 %1617, 1
  %1620 = fmul fast float %1618, 6.553500e+04
  %1621 = call float @dx.op.unary.f32(i32 28, float %1620)  ; Round_pi(value)
  %1622 = fptoui float %1621 to i32
  %1623 = fmul fast float %1619, 6.553500e+04
  %1624 = call float @dx.op.unary.f32(i32 27, float %1623)  ; Round_ni(value)
  %1625 = fptoui float %1624 to i32
  %1626 = add i32 %1625, %1622
  %1627 = lshr i32 %1626, 1
  %1628 = add i32 %1622, 1024
  %1629 = call i32 @dx.op.binary.i32(i32 40, i32 %1628, i32 %1627)  ; UMin(a,b)
  %1630 = lshr i32 %1616, 2
  %1631 = and i32 %1616, 2
  %1632 = icmp ne i32 %1631, 0
  %1633 = shl nuw nsw i32 %1631, 3
  %1634 = select i1 %1632, i32 65535, i32 -65536
  %1635 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1630, i32 0, i32 undef, i32 %1634)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1636 = shl i32 %1629, %1633
  %1637 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1630, i32 0, i32 undef, i32 %1636)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1638

; <label>:1638                                    ; preds = %1615, %1593, %1591
  %1639 = and i32 %1584, 1
  %1640 = icmp ne i32 %1639, 0
  %1641 = select i1 %1640, i32 %1514, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1572, i32 16, i32 %1641, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1642 = or i32 %10, 3
  %1643 = add i32 %1642, %1320
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1643, i32 8)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 1
  %1647 = and i32 %1645, 2
  %1648 = shl nuw nsw i32 %1647, 1
  %1649 = lshr exact i32 %1647, 1
  %1650 = shl nuw nsw i32 %1646, 1
  %1651 = xor i32 %1650, 6
  %1652 = xor i32 %1648, %1651
  %1653 = shl nuw nsw i32 %1646, 1
  %1654 = xor i32 %1653, 3
  %1655 = xor i32 %1649, %1654
  %1656 = add i32 %1652, %1585
  %1657 = icmp ult i32 %1656, %1322
  br i1 %1657, label %1658, label %1713, !dx.controlflow.hints !67

; <label>:1658                                    ; preds = %1638
  %1659 = shl nuw nsw i32 %1655, 6
  %1660 = or i32 %1659, %1589
  %1661 = icmp eq i32 %1655, 3
  br i1 %1661, label %1686, label %1662, !dx.controlflow.hints !68

; <label>:1662                                    ; preds = %1658
  %1663 = icmp eq i32 %1655, 2
  br i1 %1663, label %1664, label %1709, !dx.controlflow.hints !69

; <label>:1664                                    ; preds = %1662
  %1665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1643, i32 0)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.f32 %1665, 0
  %1667 = extractvalue %dx.types.ResRet.f32 %1665, 1
  %1668 = fmul fast float %1666, 6.553500e+04
  %1669 = call float @dx.op.unary.f32(i32 28, float %1668)  ; Round_pi(value)
  %1670 = fptoui float %1669 to i32
  %1671 = fmul fast float %1667, 6.553500e+04
  %1672 = call float @dx.op.unary.f32(i32 27, float %1671)  ; Round_ni(value)
  %1673 = fptoui float %1672 to i32
  %1674 = add i32 %1673, %1670
  %1675 = lshr i32 %1674, 1
  %1676 = add i32 %1670, 1024
  %1677 = call i32 @dx.op.binary.i32(i32 40, i32 %1676, i32 %1675)  ; UMin(a,b)
  %1678 = lshr i32 %1585, 2
  %1679 = and i32 %1585, 2
  %1680 = icmp ne i32 %1679, 0
  %1681 = shl nuw nsw i32 %1679, 3
  %1682 = select i1 %1680, i32 65535, i32 -65536
  %1683 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1678, i32 0, i32 undef, i32 %1682)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1684 = shl i32 %1677, %1681
  %1685 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1678, i32 0, i32 undef, i32 %1684)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1709

; <label>:1686                                    ; preds = %1658
  %1687 = add i32 %1585, 4
  %1688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1643, i32 0)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.f32 %1688, 0
  %1690 = extractvalue %dx.types.ResRet.f32 %1688, 1
  %1691 = fmul fast float %1689, 6.553500e+04
  %1692 = call float @dx.op.unary.f32(i32 28, float %1691)  ; Round_pi(value)
  %1693 = fptoui float %1692 to i32
  %1694 = fmul fast float %1690, 6.553500e+04
  %1695 = call float @dx.op.unary.f32(i32 27, float %1694)  ; Round_ni(value)
  %1696 = fptoui float %1695 to i32
  %1697 = add i32 %1696, %1693
  %1698 = lshr i32 %1697, 1
  %1699 = add i32 %1693, 1024
  %1700 = call i32 @dx.op.binary.i32(i32 40, i32 %1699, i32 %1698)  ; UMin(a,b)
  %1701 = lshr i32 %1687, 2
  %1702 = and i32 %1687, 2
  %1703 = icmp ne i32 %1702, 0
  %1704 = shl nuw nsw i32 %1702, 3
  %1705 = select i1 %1703, i32 65535, i32 -65536
  %1706 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1701, i32 0, i32 undef, i32 %1705)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1707 = shl i32 %1700, %1704
  %1708 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1701, i32 0, i32 undef, i32 %1707)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1709

; <label>:1709                                    ; preds = %1686, %1664, %1662
  %1710 = and i32 %1655, 1
  %1711 = icmp ne i32 %1710, 0
  %1712 = select i1 %1711, i32 %1585, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1643, i32 16, i32 %1712, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1713

; <label>:1713                                    ; preds = %1709, %1638, %1567, %1496, %1420
  %1714 = phi i32 [ 0, %1420 ], [ %1444, %1496 ], [ %1518, %1567 ], [ %1660, %1709 ], [ %1589, %1638 ]
  %1715 = shl i32 %1431, 8
  %1716 = or i32 %1714, %1715
  %1717 = and i32 %1430, 2
  %1718 = icmp eq i32 %1717, 0
  %1719 = lshr i32 %1430, 2
  br i1 %1718, label %1728, label %1720, !dx.controlflow.hints !63

; <label>:1720                                    ; preds = %1713
  %1721 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1719, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1722 = add nuw nsw i32 %1719, 1
  %1723 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1722, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1724 = shl i32 %1716, 16
  %1725 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1719, i32 0, i32 undef, i32 %1724)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1726 = lshr i32 %1716, 16
  %1727 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1722, i32 0, i32 undef, i32 %1726)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1729

; <label>:1728                                    ; preds = %1713
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1719, i32 0, i32 %1716, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1729

; <label>:1729                                    ; preds = %1728, %1720, %1332, %1318, %1293, %1285, %327, %322, %184, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}

