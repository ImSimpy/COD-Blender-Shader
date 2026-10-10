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
; shader hash: 0f3675001b16e5e85f466de2b4b88860
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
;   [80 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     u32          2d      T1             t4     1
;                                   texture     f32        2dMS      T2             t1     1
;                                   texture     u32        2dMS      T3             t5     1
;                                   texture     f32     2darray      T4             t2     1
;                                   texture     u32     2darray      T5             t6     1
;                                   texture     f32          3d      T6             t3     1
;                                   texture     u32          3d      T7             t7     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture2DMS<vector<float, 4>, 0>" = type { <4 x float>, %"class.Texture2DMS<vector<float, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>" = type { <4 x i32>, %"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<unsigned int, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2DArray<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2DArray<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture3D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture3D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%TaskGraphDebugUIConstants = type { <4 x i32>, <2 x i32>, <2 x i32>, <3 x float>, i32, <2 x float>, i32, i32, i32, i32, i32, i32 }

define void @main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %14 = extractvalue %dx.types.Dimensions %13, 0
  %15 = extractvalue %dx.types.Dimensions %13, 1
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %18 = icmp sgt i32 %17, -1
  %19 = extractvalue %dx.types.CBufRet.i32 %16, 3
  %20 = icmp eq i32 %19, 0
  br i1 %18, label %21, label %30, !dx.controlflow.hints !23

; <label>:21                                      ; preds = %0
  br i1 %20, label %22, label %26, !dx.controlflow.hints !24

; <label>:22                                      ; preds = %21
  %23 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 undef)  ; GetDimensions(handle,mipLevel)
  %24 = extractvalue %dx.types.Dimensions %23, 0
  %25 = extractvalue %dx.types.Dimensions %23, 1
  br label %64

; <label>:26                                      ; preds = %21
  %27 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %6, i32 undef)  ; GetDimensions(handle,mipLevel)
  %28 = extractvalue %dx.types.Dimensions %27, 0
  %29 = extractvalue %dx.types.Dimensions %27, 1
  br label %64

; <label>:30                                      ; preds = %0
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %43, !dx.controlflow.hints !25

; <label>:34                                      ; preds = %30
  br i1 %20, label %35, label %39, !dx.controlflow.hints !26

; <label>:35                                      ; preds = %34
  %36 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %37 = extractvalue %dx.types.Dimensions %36, 0
  %38 = extractvalue %dx.types.Dimensions %36, 1
  br label %64

; <label>:39                                      ; preds = %34
  %40 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4, i32 0)  ; GetDimensions(handle,mipLevel)
  %41 = extractvalue %dx.types.Dimensions %40, 0
  %42 = extractvalue %dx.types.Dimensions %40, 1
  br label %64

; <label>:43                                      ; preds = %30
  %44 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %55, !dx.controlflow.hints !27

; <label>:46                                      ; preds = %43
  br i1 %20, label %47, label %51, !dx.controlflow.hints !28

; <label>:47                                      ; preds = %46
  %48 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3, i32 0)  ; GetDimensions(handle,mipLevel)
  %49 = extractvalue %dx.types.Dimensions %48, 0
  %50 = extractvalue %dx.types.Dimensions %48, 1
  br label %64

; <label>:51                                      ; preds = %46
  %52 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %53 = extractvalue %dx.types.Dimensions %52, 0
  %54 = extractvalue %dx.types.Dimensions %52, 1
  br label %64

; <label>:55                                      ; preds = %43
  br i1 %20, label %56, label %60, !dx.controlflow.hints !29

; <label>:56                                      ; preds = %55
  %57 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %58 = extractvalue %dx.types.Dimensions %57, 0
  %59 = extractvalue %dx.types.Dimensions %57, 1
  br label %64

; <label>:60                                      ; preds = %55
  %61 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %62 = extractvalue %dx.types.Dimensions %61, 0
  %63 = extractvalue %dx.types.Dimensions %61, 1
  br label %64

; <label>:64                                      ; preds = %60, %56, %51, %47, %39, %35, %26, %22
  %65 = phi i32 [ 0, %22 ], [ %19, %26 ], [ 0, %35 ], [ %19, %39 ], [ 0, %47 ], [ %19, %51 ], [ 0, %56 ], [ %19, %60 ]
  %66 = phi i32 [ %24, %22 ], [ %28, %26 ], [ %37, %35 ], [ %41, %39 ], [ %49, %47 ], [ %53, %51 ], [ %58, %56 ], [ %62, %60 ]
  %67 = phi i32 [ %25, %22 ], [ %29, %26 ], [ %38, %35 ], [ %42, %39 ], [ %50, %47 ], [ %54, %51 ], [ %59, %56 ], [ %63, %60 ]
  %68 = mul i32 %66, %11
  %69 = udiv i32 %68, %14
  %70 = mul i32 %67, %12
  %71 = udiv i32 %70, %15
  %72 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.i32 %72, 3
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %74, float 1.000000e+00, float 0.000000e+00
  %76 = icmp eq i32 %65, 0
  br i1 %76, label %77, label %127, !dx.controlflow.hints !30

; <label>:77                                      ; preds = %64
  br i1 %18, label %78, label %84, !dx.controlflow.hints !31

; <label>:78                                      ; preds = %77
  %79 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %17, i32 %69, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = extractvalue %dx.types.ResRet.f32 %79, 1
  %82 = extractvalue %dx.types.ResRet.f32 %79, 2
  %83 = extractvalue %dx.types.ResRet.f32 %79, 3
  br label %109

; <label>:84                                      ; preds = %77
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 0
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %94, !dx.controlflow.hints !32

; <label>:88                                      ; preds = %84
  %89 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %69, i32 %71, i32 %86, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = extractvalue %dx.types.ResRet.f32 %89, 1
  %92 = extractvalue %dx.types.ResRet.f32 %89, 2
  %93 = extractvalue %dx.types.ResRet.f32 %89, 3
  br label %109

; <label>:94                                      ; preds = %84
  %95 = extractvalue %dx.types.CBufRet.i32 %85, 1
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %103, !dx.controlflow.hints !33

; <label>:97                                      ; preds = %94
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %69, i32 %71, i32 %95, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = extractvalue %dx.types.ResRet.f32 %98, 1
  %101 = extractvalue %dx.types.ResRet.f32 %98, 2
  %102 = extractvalue %dx.types.ResRet.f32 %98, 3
  br label %109

; <label>:103                                     ; preds = %94
  %104 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %69, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = extractvalue %dx.types.ResRet.f32 %104, 1
  %107 = extractvalue %dx.types.ResRet.f32 %104, 2
  %108 = extractvalue %dx.types.ResRet.f32 %104, 3
  br label %109

; <label>:109                                     ; preds = %103, %97, %88, %78
  %110 = phi float [ %80, %78 ], [ %90, %88 ], [ %99, %97 ], [ %105, %103 ]
  %111 = phi float [ %81, %78 ], [ %91, %88 ], [ %100, %97 ], [ %106, %103 ]
  %112 = phi float [ %82, %78 ], [ %92, %88 ], [ %101, %97 ], [ %107, %103 ]
  %113 = phi float [ %83, %78 ], [ %93, %88 ], [ %102, %97 ], [ %108, %103 ]
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 0
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, float %75, float %110
  %118 = extractvalue %dx.types.CBufRet.i32 %114, 1
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, float %75, float %111
  %121 = extractvalue %dx.types.CBufRet.i32 %114, 2
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %122, float %75, float %112
  %124 = extractvalue %dx.types.CBufRet.i32 %114, 3
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %125, float 1.000000e+00, float %113
  br label %181

; <label>:127                                     ; preds = %64
  br i1 %18, label %128, label %134, !dx.controlflow.hints !34

; <label>:128                                     ; preds = %127
  %129 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 %17, i32 %69, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = extractvalue %dx.types.ResRet.i32 %129, 1
  %132 = extractvalue %dx.types.ResRet.i32 %129, 2
  %133 = extractvalue %dx.types.ResRet.i32 %129, 3
  br label %159

; <label>:134                                     ; preds = %127
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 0
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %138, label %144, !dx.controlflow.hints !35

; <label>:138                                     ; preds = %134
  %139 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %69, i32 %71, i32 %136, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = extractvalue %dx.types.ResRet.i32 %139, 1
  %142 = extractvalue %dx.types.ResRet.i32 %139, 2
  %143 = extractvalue %dx.types.ResRet.i32 %139, 3
  br label %159

; <label>:144                                     ; preds = %134
  %145 = extractvalue %dx.types.CBufRet.i32 %135, 1
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %153, !dx.controlflow.hints !36

; <label>:147                                     ; preds = %144
  %148 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %69, i32 %71, i32 %145, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = extractvalue %dx.types.ResRet.i32 %148, 2
  %152 = extractvalue %dx.types.ResRet.i32 %148, 3
  br label %159

; <label>:153                                     ; preds = %144
  %154 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %69, i32 %71, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %155 = extractvalue %dx.types.ResRet.i32 %154, 0
  %156 = extractvalue %dx.types.ResRet.i32 %154, 1
  %157 = extractvalue %dx.types.ResRet.i32 %154, 2
  %158 = extractvalue %dx.types.ResRet.i32 %154, 3
  br label %159

; <label>:159                                     ; preds = %153, %147, %138, %128
  %160 = phi i32 [ %130, %128 ], [ %140, %138 ], [ %149, %147 ], [ %155, %153 ]
  %161 = phi i32 [ %131, %128 ], [ %141, %138 ], [ %150, %147 ], [ %156, %153 ]
  %162 = phi i32 [ %132, %128 ], [ %142, %138 ], [ %151, %147 ], [ %157, %153 ]
  %163 = phi i32 [ %133, %128 ], [ %143, %138 ], [ %152, %147 ], [ %158, %153 ]
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 0
  %166 = icmp ne i32 %165, 0
  %167 = uitofp i32 %160 to float
  %168 = select i1 %166, float %75, float %167
  %169 = extractvalue %dx.types.CBufRet.i32 %164, 1
  %170 = icmp ne i32 %169, 0
  %171 = uitofp i32 %161 to float
  %172 = select i1 %170, float %75, float %171
  %173 = extractvalue %dx.types.CBufRet.i32 %164, 2
  %174 = icmp ne i32 %173, 0
  %175 = uitofp i32 %162 to float
  %176 = select i1 %174, float %75, float %175
  %177 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %178 = icmp ne i32 %177, 0
  %179 = uitofp i32 %163 to float
  %180 = select i1 %178, float 1.000000e+00, float %179
  br label %181

; <label>:181                                     ; preds = %159, %109
  %182 = phi float [ %117, %109 ], [ %168, %159 ]
  %183 = phi float [ %120, %109 ], [ %172, %159 ]
  %184 = phi float [ %123, %109 ], [ %176, %159 ]
  %185 = phi float [ %126, %109 ], [ %180, %159 ]
  %186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.i32 %186, 2
  %188 = extractvalue %dx.types.CBufRet.i32 %186, 3
  %189 = lshr i32 %188, 1
  %190 = add i32 %187, 32
  %191 = add i32 %190, %189
  %192 = udiv i32 %69, %191
  %193 = uitofp i32 %192 to float
  %194 = call float @dx.op.unary.f32(i32 27, float %193)  ; Round_ni(value)
  %195 = udiv i32 %71, %191
  %196 = uitofp i32 %195 to float
  %197 = call float @dx.op.unary.f32(i32 27, float %196)  ; Round_ni(value)
  %198 = fadd fast float %197, %194
  %199 = fmul fast float %198, 5.000000e-01
  %200 = call float @dx.op.unary.f32(i32 27, float %199)  ; Round_ni(value)
  %201 = fmul fast float %200, 2.000000e+00
  %202 = fsub fast float %198, %201
  %203 = fcmp fast oeq float %202, 0.000000e+00
  %204 = select i1 %203, float 0x3FD3333340000000, float %202
  %205 = fsub fast float %182, %204
  %206 = fsub fast float %183, %204
  %207 = fsub fast float %184, %204
  %208 = fmul fast float %205, %185
  %209 = fmul fast float %206, %185
  %210 = fmul fast float %207, %185
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = fsub fast float %204, %212
  %214 = fadd fast float %213, %208
  %215 = fadd fast float %213, %209
  %216 = fadd fast float %213, %210
  %217 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %218 = fsub fast float %217, %212
  %219 = fdiv fast float %214, %218
  %220 = fdiv fast float %215, %218
  %221 = fdiv fast float %216, %218
  %222 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %223 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %224 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %225 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %222)  ; IsNaN(value)
  %226 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %223)  ; IsNaN(value)
  %227 = call i1 @dx.op.isSpecialFloat.f32(i32 8, float %224)  ; IsNaN(value)
  %228 = or i1 %225, %226
  %229 = or i1 %228, %227
  br i1 %229, label %230, label %235, !dx.controlflow.hints !37

; <label>:230                                     ; preds = %181
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  br label %235

; <label>:235                                     ; preds = %230, %181
  %236 = phi float [ %232, %230 ], [ %222, %181 ]
  %237 = phi float [ %233, %230 ], [ %223, %181 ]
  %238 = phi float [ %234, %230 ], [ %224, %181 ]
  %239 = extractvalue %dx.types.CBufRet.i32 %186, 0
  %240 = icmp ne i32 %239, 0
  %241 = sub i32 %14, %11
  %242 = select i1 %240, i32 %241, i32 %11
  %243 = extractvalue %dx.types.CBufRet.i32 %186, 1
  %244 = icmp ne i32 %243, 0
  %245 = sub i32 %15, %12
  %246 = select i1 %244, i32 %245, i32 %12
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %242, i32 %246, i32 undef, float %236, float %237, float %238, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i1 @dx.op.isSpecialFloat.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !16, !18, null}
!5 = !{!6, !8, !10, !11, !12, !13, !14, !15}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 1, i32 1, i32 3, i32 0, !7}
!11 = !{i32 3, %"class.Texture2DMS<vector<unsigned int, 4>, 0>"* undef, !"", i32 0, i32 5, i32 1, i32 3, i32 0, !9}
!12 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!13 = !{i32 5, %"class.Texture2DArray<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 7, i32 0, !9}
!14 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 4, i32 0, !7}
!15 = !{i32 7, %"class.Texture3D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 4, i32 0, !9}
!16 = !{!17}
!17 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!18 = !{!19}
!19 = !{i32 0, %TaskGraphDebugUIConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!20 = !{void ()* @main, !"main", null, !4, !21}
!21 = !{i32 0, i64 256, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}

