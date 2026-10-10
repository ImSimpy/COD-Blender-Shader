;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: 0831ed2e3065bfa8721ee4524680ad49
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

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4

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
  %128 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %129 = udiv i32 %9, %128
  %130 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %125, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  %131 = icmp eq i32 %128, 64
  br i1 %131, label %158, label %132, !dx.controlflow.hints !27

; <label>:132                                     ; preds = %123
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %133 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %133, label %134, label %136, !dx.controlflow.hints !28

; <label>:134                                     ; preds = %132
  %135 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %129
  store i32 %130, i32 addrspace(3)* %135, align 4, !tbaa !29
  br label %136

; <label>:136                                     ; preds = %134, %132
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %137 = icmp eq i32 %128, 32
  br i1 %137, label %138, label %143, !dx.controlflow.hints !33

; <label>:138                                     ; preds = %136
  %139 = xor i32 %129, 1
  %140 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %139
  %141 = load i32, i32 addrspace(3)* %140, align 4, !tbaa !29
  %142 = call i32 @dx.op.binary.i32(i32 39, i32 %130, i32 %141)  ; UMax(a,b)
  br label %158

; <label>:143                                     ; preds = %136
  %144 = icmp eq i32 %128, 16
  br i1 %144, label %145, label %158, !dx.controlflow.hints !34

; <label>:145                                     ; preds = %143
  %146 = xor i32 %129, 3
  %147 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %146
  %148 = load i32, i32 addrspace(3)* %147, align 4, !tbaa !29
  %149 = xor i32 %129, 2
  %150 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %149
  %151 = load i32, i32 addrspace(3)* %150, align 4, !tbaa !29
  %152 = call i32 @dx.op.binary.i32(i32 39, i32 %151, i32 %148)  ; UMax(a,b)
  %153 = xor i32 %129, 1
  %154 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %153
  %155 = load i32, i32 addrspace(3)* %154, align 4, !tbaa !29
  %156 = call i32 @dx.op.binary.i32(i32 39, i32 %130, i32 %155)  ; UMax(a,b)
  %157 = call i32 @dx.op.binary.i32(i32 39, i32 %156, i32 %152)  ; UMax(a,b)
  br label %158

; <label>:158                                     ; preds = %145, %143, %138, %123
  %159 = phi i32 [ %142, %138 ], [ %157, %145 ], [ %130, %123 ], [ 0, %143 ]
  %160 = icmp ne i32 %159, 0
  %161 = and i1 %20, %160
  br i1 %161, label %162, label %200, !dx.controlflow.hints !35

; <label>:162                                     ; preds = %158
  br label %163

; <label>:163                                     ; preds = %196, %162
  %164 = phi i32 [ %197, %196 ], [ 0, %162 ]
  %165 = icmp ult i32 %164, %125
  br i1 %165, label %166, label %196, !dx.controlflow.hints !36

; <label>:166                                     ; preds = %163
  %167 = add i32 %164, %126
  %168 = add nsw i32 %125, -1
  %169 = icmp eq i32 %164, %168
  br i1 %169, label %170, label %179, !dx.controlflow.hints !37

; <label>:170                                     ; preds = %166
  %171 = icmp ne i32 %127, 0
  %172 = shl i32 %164, 6
  %173 = sub i32 %124, %172
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 2
  %176 = icmp ugt i32 %173, %175
  %177 = and i1 %171, %176
  %178 = zext i1 %177 to i32
  br label %179

; <label>:179                                     ; preds = %170, %166
  %180 = phi i32 [ %178, %170 ], [ %127, %166 ]
  %181 = icmp ne i32 %180, 0
  %182 = and i32 %164, 15
  %183 = zext i1 %181 to i32
  %184 = shl nuw nsw i32 %183, 4
  %185 = zext i1 %23 to i32
  %186 = shl nuw nsw i32 %185, 5
  %187 = zext i1 %21 to i32
  %188 = shl nuw nsw i32 %187, 6
  %189 = or i32 %186, %188
  %190 = or i32 %189, %182
  %191 = or i32 %190, %184
  %192 = and i32 %25, 65535
  %193 = shl nuw nsw i32 %191, 16
  %194 = or i32 %193, %192
  %195 = shl i32 %167, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %195, i32 undef, i32 %194, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %196

; <label>:196                                     ; preds = %179, %163
  %197 = add nuw i32 %164, 1
  %198 = icmp eq i32 %197, %159
  br i1 %198, label %199, label %163

; <label>:199                                     ; preds = %196
  br label %200

; <label>:200                                     ; preds = %199, %158
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

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
!16 = !{i32 0, i64 524560, i32 4, !17}
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
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}

