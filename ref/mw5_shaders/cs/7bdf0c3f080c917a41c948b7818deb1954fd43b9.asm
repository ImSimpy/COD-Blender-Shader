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
; shader hash: 76b460b3f34a0a3b16f75d9e9270ef42
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
;   [32 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb6     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t10     1
;                                   texture    byte         r/o      T2            t11     1
;                                   texture    byte         r/o      T3            t12     1
;                                       UAV    byte         r/w      U0             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPSurfPassConsts = type { <3 x float>, i32, i32, i32, i32, i32 }
%GPCullConsts = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @submesh_workgroup_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = shl i32 %8, 6
  %11 = add i32 %10, %9
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 3
  %16 = add i32 %15, %13
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 1
  %19 = add i32 %16, %18
  %20 = icmp ult i32 %11, %19
  %21 = icmp uge i32 %11, %16
  %22 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i32 %16, i32 0
  %25 = sub i32 %11, %24
  br i1 %20, label %26, label %123, !dx.controlflow.hints !18

; <label>:26                                      ; preds = %0
  br i1 %21, label %27, label %39, !dx.controlflow.hints !19

; <label>:27                                      ; preds = %26
  %28 = shl i32 %25, 3
  %29 = add i32 %28, 5242880
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %29, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = extractvalue %dx.types.ResRet.i32 %30, 1
  %33 = and i32 %31, 65535
  %34 = lshr i32 %31, 16
  %35 = lshr i32 %32, 24
  %36 = lshr i32 %32, 25
  %37 = and i32 %36, 2
  %38 = xor i32 %37, 3
  br label %49

; <label>:39                                      ; preds = %26
  %40 = mul i32 %25, 12
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 1
  %43 = extractvalue %dx.types.ResRet.i32 %41, 2
  %44 = lshr i32 %42, 16
  %45 = and i32 %43, 15
  %46 = lshr i32 %43, 4
  %47 = and i32 %46, 15
  %48 = lshr i32 %43, 8
  br label %49

; <label>:49                                      ; preds = %39, %27
  %50 = phi i32 [ %33, %27 ], [ %44, %39 ]
  %51 = phi i32 [ %38, %27 ], [ %45, %39 ]
  %52 = phi i32 [ %35, %27 ], [ %47, %39 ]
  %53 = phi i32 [ %34, %27 ], [ %48, %39 ]
  br i1 %21, label %54, label %59, !dx.controlflow.hints !20

; <label>:54                                      ; preds = %49
  %55 = shl i32 %25, 4
  %56 = add i32 %55, 5767168
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  br label %65

; <label>:59                                      ; preds = %49
  %60 = mul i32 %25, 12
  %61 = add i32 %60, 1572864
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 1
  %64 = lshr i32 %63, 16
  br label %65

; <label>:65                                      ; preds = %59, %54
  %66 = phi i32 [ %58, %54 ], [ %64, %59 ]
  %67 = icmp eq i32 %66, 16384
  br i1 %67, label %78, label %68, !dx.controlflow.hints !21

; <label>:68                                      ; preds = %65
  %69 = add nuw nsw i32 %50, 63
  %70 = lshr i32 %69, 6
  %71 = shl i32 %66, 2
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = shl i32 %11, 2
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = add i32 %76, %73
  br label %78

; <label>:78                                      ; preds = %68, %65
  %79 = phi i32 [ %50, %68 ], [ 0, %65 ]
  %80 = phi i32 [ %70, %68 ], [ 0, %65 ]
  %81 = phi i32 [ %77, %68 ], [ 0, %65 ]
  %82 = icmp eq i32 %51, 2
  br i1 %82, label %83, label %88, !dx.controlflow.hints !22

; <label>:83                                      ; preds = %78
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 0
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  br label %116

; <label>:88                                      ; preds = %78
  %89 = icmp eq i32 %51, 0
  br i1 %89, label %90, label %102, !dx.controlflow.hints !23

; <label>:90                                      ; preds = %88
  %91 = and i32 %52, 1
  %92 = icmp eq i32 %91, 0
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  br i1 %92, label %98, label %94, !dx.controlflow.hints !24

; <label>:94                                      ; preds = %90
  %95 = extractvalue %dx.types.CBufRet.i32 %93, 2
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  br label %116

; <label>:98                                      ; preds = %90
  %99 = extractvalue %dx.types.CBufRet.i32 %93, 1
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  br label %116

; <label>:102                                     ; preds = %88
  %103 = icmp eq i32 %51, 3
  br i1 %103, label %104, label %109, !dx.controlflow.hints !25

; <label>:104                                     ; preds = %102
  %105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.i32 %105, 3
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  br label %116

; <label>:109                                     ; preds = %102
  %110 = icmp eq i32 %51, 1
  br i1 %110, label %111, label %116, !dx.controlflow.hints !26

; <label>:111                                     ; preds = %109
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 0
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  br label %116

; <label>:116                                     ; preds = %111, %109, %104, %98, %94, %83
  %117 = phi i32 [ %87, %83 ], [ %97, %94 ], [ %101, %98 ], [ %108, %104 ], [ %115, %111 ], [ 0, %109 ]
  %118 = icmp ne i32 %117, 0
  %119 = and i32 %53, 16
  %120 = icmp ne i32 %119, 0
  %121 = and i1 %120, %118
  %122 = zext i1 %121 to i32
  br label %123

; <label>:123                                     ; preds = %116, %0
  %124 = phi i32 [ %79, %116 ], [ 0, %0 ]
  %125 = phi i32 [ %80, %116 ], [ 0, %0 ]
  %126 = phi i32 [ %81, %116 ], [ 0, %0 ]
  %127 = phi i32 [ %122, %116 ], [ 0, %0 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %128 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %125, i32 addrspace(3)* %128, align 4, !tbaa !27
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %129 = and i32 %9, 63
  %130 = icmp ult i32 %129, 32
  br i1 %130, label %131, label %137, !dx.controlflow.hints !31

; <label>:131                                     ; preds = %123
  %132 = add i32 %9, 32
  %133 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %132
  %134 = load i32, i32 addrspace(3)* %133, align 4, !tbaa !27
  %135 = load i32, i32 addrspace(3)* %128, align 4, !tbaa !27
  %136 = call i32 @dx.op.binary.i32(i32 39, i32 %135, i32 %134)  ; UMax(a,b)
  store i32 %136, i32 addrspace(3)* %128, align 4, !tbaa !27
  br label %137

; <label>:137                                     ; preds = %131, %123
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %138 = icmp ult i32 %129, 16
  br i1 %138, label %139, label %145, !dx.controlflow.hints !32

; <label>:139                                     ; preds = %137
  %140 = add i32 %9, 16
  %141 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %140
  %142 = load i32, i32 addrspace(3)* %141, align 4, !tbaa !27
  %143 = load i32, i32 addrspace(3)* %128, align 4, !tbaa !27
  %144 = call i32 @dx.op.binary.i32(i32 39, i32 %143, i32 %142)  ; UMax(a,b)
  store i32 %144, i32 addrspace(3)* %128, align 4, !tbaa !27
  br label %145

; <label>:145                                     ; preds = %139, %137
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %146 = icmp ult i32 %129, 8
  br i1 %146, label %147, label %153, !dx.controlflow.hints !33

; <label>:147                                     ; preds = %145
  %148 = add i32 %9, 8
  %149 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %148
  %150 = load i32, i32 addrspace(3)* %149, align 4, !tbaa !27
  %151 = load i32, i32 addrspace(3)* %128, align 4, !tbaa !27
  %152 = call i32 @dx.op.binary.i32(i32 39, i32 %151, i32 %150)  ; UMax(a,b)
  store i32 %152, i32 addrspace(3)* %128, align 4, !tbaa !27
  br label %153

; <label>:153                                     ; preds = %147, %145
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %154 = icmp ult i32 %129, 4
  br i1 %154, label %155, label %161, !dx.controlflow.hints !34

; <label>:155                                     ; preds = %153
  %156 = add i32 %9, 4
  %157 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %156
  %158 = load i32, i32 addrspace(3)* %157, align 4, !tbaa !27
  %159 = load i32, i32 addrspace(3)* %128, align 4, !tbaa !27
  %160 = call i32 @dx.op.binary.i32(i32 39, i32 %159, i32 %158)  ; UMax(a,b)
  store i32 %160, i32 addrspace(3)* %128, align 4, !tbaa !27
  br label %161

; <label>:161                                     ; preds = %155, %153
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %162 = icmp ult i32 %129, 2
  br i1 %162, label %163, label %169, !dx.controlflow.hints !35

; <label>:163                                     ; preds = %161
  %164 = add i32 %9, 2
  %165 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %164
  %166 = load i32, i32 addrspace(3)* %165, align 4, !tbaa !27
  %167 = load i32, i32 addrspace(3)* %128, align 4, !tbaa !27
  %168 = call i32 @dx.op.binary.i32(i32 39, i32 %167, i32 %166)  ; UMax(a,b)
  store i32 %168, i32 addrspace(3)* %128, align 4, !tbaa !27
  br label %169

; <label>:169                                     ; preds = %163, %161
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %170 = icmp eq i32 %129, 0
  br i1 %170, label %171, label %177, !dx.controlflow.hints !36

; <label>:171                                     ; preds = %169
  %172 = add i32 %9, 1
  %173 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %172
  %174 = load i32, i32 addrspace(3)* %173, align 4, !tbaa !27
  %175 = load i32, i32 addrspace(3)* %128, align 4, !tbaa !27
  %176 = call i32 @dx.op.binary.i32(i32 39, i32 %175, i32 %174)  ; UMax(a,b)
  store i32 %176, i32 addrspace(3)* %128, align 4, !tbaa !27
  br label %177

; <label>:177                                     ; preds = %171, %169
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %178 = and i32 %9, -64
  %179 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %178
  %180 = load i32, i32 addrspace(3)* %179, align 4, !tbaa !27
  %181 = icmp ne i32 %180, 0
  %182 = and i1 %20, %181
  br i1 %182, label %183, label %221, !dx.controlflow.hints !37

; <label>:183                                     ; preds = %177
  br label %184

; <label>:184                                     ; preds = %217, %183
  %185 = phi i32 [ %218, %217 ], [ 0, %183 ]
  %186 = icmp ult i32 %185, %125
  br i1 %186, label %187, label %217, !dx.controlflow.hints !38

; <label>:187                                     ; preds = %184
  %188 = add i32 %185, %126
  %189 = add nsw i32 %125, -1
  %190 = icmp eq i32 %185, %189
  br i1 %190, label %191, label %200, !dx.controlflow.hints !39

; <label>:191                                     ; preds = %187
  %192 = icmp ne i32 %127, 0
  %193 = shl i32 %185, 6
  %194 = sub i32 %124, %193
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 2
  %197 = icmp ugt i32 %194, %196
  %198 = and i1 %192, %197
  %199 = zext i1 %198 to i32
  br label %200

; <label>:200                                     ; preds = %191, %187
  %201 = phi i32 [ %199, %191 ], [ %127, %187 ]
  %202 = icmp ne i32 %201, 0
  %203 = and i32 %185, 15
  %204 = zext i1 %202 to i32
  %205 = shl nuw nsw i32 %204, 4
  %206 = zext i1 %23 to i32
  %207 = shl nuw nsw i32 %206, 5
  %208 = zext i1 %21 to i32
  %209 = shl nuw nsw i32 %208, 6
  %210 = or i32 %207, %209
  %211 = or i32 %210, %203
  %212 = or i32 %211, %205
  %213 = and i32 %25, 65535
  %214 = shl nuw nsw i32 %212, 16
  %215 = or i32 %214, %213
  %216 = shl i32 %188, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %216, i32 undef, i32 %215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %217

; <label>:217                                     ; preds = %200, %184
  %218 = add nuw i32 %185, 1
  %219 = icmp eq i32 %218, %180
  br i1 %219, label %220, label %184

; <label>:220                                     ; preds = %217
  br label %221

; <label>:221                                     ; preds = %220, %177
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, null}
!5 = !{!6, !7, !8, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{!13, !14}
!13 = !{i32 0, %GPSurfPassConsts* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{i32 1, %GPCullConsts* undef, !"", i32 0, i32 6, i32 1, i32 32, null}
!15 = !{void ()* @submesh_workgroup_gen_pass, !"submesh_workgroup_gen_pass", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 64, i32 1, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

