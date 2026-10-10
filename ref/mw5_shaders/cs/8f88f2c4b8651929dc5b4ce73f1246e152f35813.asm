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
; shader hash: f578196ef0bed9926017e71440d95837
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
;   [48 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1            t12     1
;                                   texture    byte         r/o      T2            t13     1
;                                   texture    byte         r/o      T3            t16     1
;                                   texture  struct         r/o      T4            t17     1
;                                   texture    byte         r/o      T5            t18     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledTriCluster>" = type { %struct.GPCulledTriCluster }
%struct.GPCulledTriCluster = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%GPBatchConsts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%TriCullIndirectArgs = type { i32, i32, i32, i32 }

define void @triangle_expand_indexed_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = and i32 %11, 15
  %13 = shl i32 %10, 3
  %14 = lshr i32 %11, 4
  %15 = add i32 %14, %13
  %16 = shl i32 %15, 2
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %16, i32 undef)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = and i32 %18, 65535
  %20 = lshr i32 %18, 16
  %21 = and i32 %20, 1023
  %22 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.i32 %22, 0
  %24 = icmp ult i32 %15, %23
  br i1 %24, label %25, label %232, !dx.controlflow.hints !21

; <label>:25                                      ; preds = %0
  %26 = and i32 %18, 536870912
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28, !dx.controlflow.hints !22

; <label>:28                                      ; preds = %25
  %29 = shl nuw nsw i32 %19, 4
  %30 = add nuw nsw i32 %29, 5767168
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = extractvalue %dx.types.ResRet.i32 %31, 2
  br label %41

; <label>:34                                      ; preds = %25
  %35 = mul nuw nsw i32 %19, 12
  %36 = add nuw nsw i32 %35, 1572864
  %37 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.i32 %37, 1
  %39 = extractvalue %dx.types.ResRet.i32 %37, 2
  %40 = lshr i32 %38, 16
  br label %41

; <label>:41                                      ; preds = %34, %28
  %42 = phi i32 [ %33, %28 ], [ %39, %34 ]
  %43 = phi i32 [ %32, %28 ], [ %40, %34 ]
  %44 = icmp eq i32 %43, 16384
  br i1 %44, label %232, label %45, !dx.controlflow.hints !23

; <label>:45                                      ; preds = %41
  %46 = add i32 %42, %21
  %47 = shl i32 %18, 16
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = extractvalue %dx.types.ResRet.i32 %48, 1
  %51 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %49)  ; Countbits(value)
  %52 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %50)  ; Countbits(value)
  %53 = sub i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %232, label %55, !dx.controlflow.hints !24

; <label>:55                                      ; preds = %45
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %16, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  %59 = extractvalue %dx.types.ResRet.i32 %58, 0
  %60 = shl i32 1, %12
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  %63 = add i32 %60, -1
  br i1 %62, label %98, label %64, !dx.controlflow.hints !25

; <label>:64                                      ; preds = %55
  %65 = and i32 %49, %63
  %66 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %65)  ; Countbits(value)
  %67 = shl i32 %46, 2
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = shl i32 %69, 6
  %71 = or i32 %70, %12
  %72 = mul i32 %71, 3
  %73 = mul i32 %71, 6
  %74 = and i32 %73, -4
  %75 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.i32 %75, 0
  %77 = extractvalue %dx.types.ResRet.i32 %75, 1
  %78 = and i32 %72, 1
  %79 = icmp eq i32 %78, 0
  %80 = lshr i32 %76, 16
  %81 = and i32 %77, 65535
  %82 = add i32 %66, %57
  %83 = mul i32 %82, 12
  %84 = add i32 %83, 12
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 1
  %87 = shl i32 %86, 2
  %88 = icmp ugt i32 %84, %87
  br i1 %88, label %98, label %89, !dx.controlflow.hints !26

; <label>:89                                      ; preds = %64
  %90 = lshr i32 %77, 16
  %91 = select i1 %79, i32 %81, i32 %90
  %92 = select i1 %79, i32 %80, i32 %81
  %93 = and i32 %76, 65535
  %94 = select i1 %79, i32 %93, i32 %80
  %95 = or i32 %91, %47
  %96 = or i32 %92, %47
  %97 = or i32 %94, %47
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %83, i32 undef, i32 %97, i32 %96, i32 %95, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %98

; <label>:98                                      ; preds = %89, %64, %55
  %99 = or i32 %12, 16
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = shl i32 1, %99
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  %105 = add i32 %102, -1
  br i1 %104, label %142, label %106, !dx.controlflow.hints !25

; <label>:106                                     ; preds = %98
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = and i32 %108, %105
  %110 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %109)  ; Countbits(value)
  %111 = shl i32 %46, 2
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = shl i32 %113, 6
  %115 = or i32 %114, %99
  %116 = mul i32 %115, 3
  %117 = mul i32 %115, 6
  %118 = and i32 %117, -4
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = extractvalue %dx.types.ResRet.i32 %119, 1
  %122 = and i32 %116, 1
  %123 = icmp eq i32 %122, 0
  %124 = lshr i32 %120, 16
  %125 = and i32 %121, 65535
  %126 = add i32 %110, %57
  %127 = mul i32 %126, 12
  %128 = add i32 %127, 12
  %129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.i32 %129, 1
  %131 = shl i32 %130, 2
  %132 = icmp ugt i32 %128, %131
  br i1 %132, label %142, label %133, !dx.controlflow.hints !26

; <label>:133                                     ; preds = %106
  %134 = lshr i32 %121, 16
  %135 = select i1 %123, i32 %125, i32 %134
  %136 = select i1 %123, i32 %124, i32 %125
  %137 = and i32 %120, 65535
  %138 = select i1 %123, i32 %137, i32 %124
  %139 = or i32 %135, %47
  %140 = or i32 %136, %47
  %141 = or i32 %138, %47
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %127, i32 undef, i32 %141, i32 %140, i32 %139, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %142

; <label>:142                                     ; preds = %133, %106, %98
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 4)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = and i32 %144, %60
  %146 = icmp eq i32 %145, 0
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  br i1 %146, label %187, label %148, !dx.controlflow.hints !25

; <label>:148                                     ; preds = %142
  %149 = extractvalue %dx.types.ResRet.i32 %147, 1
  %150 = and i32 %149, %63
  %151 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %150)  ; Countbits(value)
  %152 = extractvalue %dx.types.ResRet.i32 %147, 0
  %153 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %152)  ; Countbits(value)
  %154 = add nuw nsw i32 %99, 16
  %155 = shl i32 %46, 2
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = shl i32 %157, 6
  %159 = or i32 %158, %154
  %160 = mul i32 %159, 3
  %161 = mul i32 %159, 6
  %162 = and i32 %161, -4
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = extractvalue %dx.types.ResRet.i32 %163, 1
  %166 = and i32 %160, 1
  %167 = icmp eq i32 %166, 0
  %168 = lshr i32 %164, 16
  %169 = and i32 %165, 65535
  %170 = add i32 %153, %57
  %171 = add i32 %170, %151
  %172 = mul i32 %171, 12
  %173 = add i32 %172, 12
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 1
  %176 = shl i32 %175, 2
  %177 = icmp ugt i32 %173, %176
  br i1 %177, label %187, label %178, !dx.controlflow.hints !26

; <label>:178                                     ; preds = %148
  %179 = lshr i32 %165, 16
  %180 = select i1 %167, i32 %169, i32 %179
  %181 = select i1 %167, i32 %168, i32 %169
  %182 = and i32 %164, 65535
  %183 = select i1 %167, i32 %182, i32 %168
  %184 = or i32 %180, %47
  %185 = or i32 %181, %47
  %186 = or i32 %183, %47
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %172, i32 undef, i32 %186, i32 %185, i32 %184, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %187

; <label>:187                                     ; preds = %178, %148, %142
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 4)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, %102
  %191 = icmp eq i32 %190, 0
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 0)  ; BufferLoad(srv,index,wot)
  br i1 %191, label %232, label %193, !dx.controlflow.hints !25

; <label>:193                                     ; preds = %187
  %194 = extractvalue %dx.types.ResRet.i32 %192, 1
  %195 = and i32 %194, %105
  %196 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %195)  ; Countbits(value)
  %197 = extractvalue %dx.types.ResRet.i32 %192, 0
  %198 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %197)  ; Countbits(value)
  %199 = shl i32 %46, 2
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = shl i32 %201, 6
  %203 = or i32 %12, %202
  %204 = or i32 %203, 48
  %205 = mul i32 %204, 3
  %206 = mul i32 %204, 6
  %207 = and i32 %206, -4
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = extractvalue %dx.types.ResRet.i32 %208, 1
  %211 = and i32 %205, 1
  %212 = icmp eq i32 %211, 0
  %213 = lshr i32 %209, 16
  %214 = and i32 %210, 65535
  %215 = add i32 %198, %57
  %216 = add i32 %215, %196
  %217 = mul i32 %216, 12
  %218 = add i32 %217, 12
  %219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.i32 %219, 1
  %221 = shl i32 %220, 2
  %222 = icmp ugt i32 %218, %221
  br i1 %222, label %232, label %223, !dx.controlflow.hints !26

; <label>:223                                     ; preds = %193
  %224 = lshr i32 %210, 16
  %225 = select i1 %212, i32 %214, i32 %224
  %226 = select i1 %212, i32 %213, i32 %214
  %227 = and i32 %209, 65535
  %228 = select i1 %212, i32 %227, i32 %213
  %229 = or i32 %225, %47
  %230 = or i32 %226, %47
  %231 = or i32 %228, %47
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %217, i32 undef, i32 %231, i32 %230, i32 %229, i32 undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %232

; <label>:232                                     ; preds = %223, %193, %187, %45, %41, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

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
!4 = !{!5, !13, !15, null}
!5 = !{!6, !7, !8, !9, !10, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %"class.StructuredBuffer<GPCulledTriCluster>"* undef, !"", i32 0, i32 17, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 8}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 18, i32 1, i32 11, i32 0, null}
!13 = !{!14}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16, !17}
!16 = !{i32 0, %GPBatchConsts* undef, !"", i32 0, i32 5, i32 1, i32 48, null}
!17 = !{i32 1, %TriCullIndirectArgs* undef, !"", i32 0, i32 2, i32 1, i32 16, null}
!18 = !{void ()* @triangle_expand_indexed_pass, !"triangle_expand_indexed_pass", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 128, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 1}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}

