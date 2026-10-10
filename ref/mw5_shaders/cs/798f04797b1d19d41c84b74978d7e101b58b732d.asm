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
; shader hash: 3769b78a8c44f75bd560e6eeda8a9ca1
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
;   [16 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<vector<unsigned int, 2> >" = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%ReflectionProbeSHCopyIndicesConstants = type { i32, i32, i32, i32 }

define void @cs_copy_indices_sh3() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 2
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %176, !dx.controlflow.hints !16

; <label>:9                                       ; preds = %0
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5, i32 0)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = extractvalue %dx.types.ResRet.i32 %10, 1
  %13 = mul i32 %11, 36
  %14 = mul i32 %12, 36
  %15 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %13, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.f32 %15, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %14, i32 undef, float %16, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %17 = add i32 %14, 4
  %18 = add i32 %13, 4
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %17, i32 undef, float %20, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %21 = add i32 %14, 8
  %22 = add i32 %13, 8
  %23 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.f32 %23, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %21, i32 undef, float %24, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %25 = add i32 %14, 12
  %26 = add i32 %13, 12
  %27 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %26, i32 undef)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.f32 %27, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %25, i32 undef, float %28, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %29 = add i32 %14, 16
  %30 = add i32 %13, 16
  %31 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %29, i32 undef, float %32, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %33 = add i32 %14, 20
  %34 = add i32 %13, 20
  %35 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %34, i32 undef)  ; BufferLoad(srv,index,wot)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %33, i32 undef, float %36, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %37 = add i32 %14, 24
  %38 = add i32 %13, 24
  %39 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %37, i32 undef, float %40, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %41 = add i32 %14, 28
  %42 = add i32 %13, 28
  %43 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %41, i32 undef, float %44, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %45 = add i32 %14, 32
  %46 = add i32 %13, 32
  %47 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %45, i32 undef, float %48, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %49 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.i32 %49, 1
  %51 = add i32 %50, %11
  %52 = extractvalue %dx.types.CBufRet.i32 %49, 0
  %53 = add i32 %52, %12
  %54 = mul i32 %51, 36
  %55 = mul i32 %53, 36
  %56 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %54, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %55, i32 undef, float %57, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %58 = add i32 %55, 4
  %59 = add i32 %54, 4
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %58, i32 undef, float %61, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %62 = add i32 %55, 8
  %63 = add i32 %54, 8
  %64 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %62, i32 undef, float %65, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %66 = add i32 %55, 12
  %67 = add i32 %54, 12
  %68 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %66, i32 undef, float %69, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %70 = add i32 %55, 16
  %71 = add i32 %54, 16
  %72 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %70, i32 undef, float %73, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %74 = add i32 %55, 20
  %75 = add i32 %54, 20
  %76 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %74, i32 undef, float %77, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %78 = add i32 %55, 24
  %79 = add i32 %54, 24
  %80 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %79, i32 undef)  ; BufferLoad(srv,index,wot)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %78, i32 undef, float %81, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %82 = add i32 %55, 28
  %83 = add i32 %54, 28
  %84 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %83, i32 undef)  ; BufferLoad(srv,index,wot)
  %85 = extractvalue %dx.types.ResRet.f32 %84, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %82, i32 undef, float %85, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %86 = add i32 %55, 32
  %87 = add i32 %54, 32
  %88 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %86, i32 undef, float %89, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 1
  %92 = shl i32 %91, 1
  %93 = add i32 %92, %11
  %94 = extractvalue %dx.types.CBufRet.i32 %90, 0
  %95 = shl i32 %94, 1
  %96 = add i32 %95, %12
  %97 = mul i32 %93, 36
  %98 = mul i32 %96, 36
  %99 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %98, i32 undef, float %100, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %101 = add i32 %98, 4
  %102 = add i32 %97, 4
  %103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %102, i32 undef)  ; BufferLoad(srv,index,wot)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %101, i32 undef, float %104, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %105 = add i32 %98, 8
  %106 = add i32 %97, 8
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %105, i32 undef, float %108, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %109 = add i32 %98, 12
  %110 = add i32 %97, 12
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %109, i32 undef, float %112, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %113 = add i32 %98, 16
  %114 = add i32 %97, 16
  %115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %114, i32 undef)  ; BufferLoad(srv,index,wot)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %113, i32 undef, float %116, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %117 = add i32 %98, 20
  %118 = add i32 %97, 20
  %119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %117, i32 undef, float %120, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %121 = add i32 %98, 24
  %122 = add i32 %97, 24
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %121, i32 undef, float %124, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %125 = add i32 %98, 28
  %126 = add i32 %97, 28
  %127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %125, i32 undef, float %128, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %129 = add i32 %98, 32
  %130 = add i32 %97, 32
  %131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %129, i32 undef, float %132, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 1
  %135 = mul i32 %134, 3
  %136 = add i32 %135, %11
  %137 = extractvalue %dx.types.CBufRet.i32 %133, 0
  %138 = mul i32 %137, 3
  %139 = add i32 %138, %12
  %140 = mul i32 %136, 36
  %141 = mul i32 %139, 36
  %142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %140, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %141, i32 undef, float %143, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %144 = add i32 %141, 4
  %145 = add i32 %140, 4
  %146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %145, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %144, i32 undef, float %147, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %148 = add i32 %141, 8
  %149 = add i32 %140, 8
  %150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %149, i32 undef)  ; BufferLoad(srv,index,wot)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %148, i32 undef, float %151, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %152 = add i32 %141, 12
  %153 = add i32 %140, 12
  %154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %153, i32 undef)  ; BufferLoad(srv,index,wot)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %152, i32 undef, float %155, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %156 = add i32 %141, 16
  %157 = add i32 %140, 16
  %158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %156, i32 undef, float %159, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %160 = add i32 %141, 20
  %161 = add i32 %140, 20
  %162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %160, i32 undef, float %163, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %164 = add i32 %141, 24
  %165 = add i32 %140, 24
  %166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %164, i32 undef, float %167, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %168 = add i32 %141, 28
  %169 = add i32 %140, 28
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %168, i32 undef, float %171, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %172 = add i32 %141, 32
  %173 = add i32 %140, 32
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %172, i32 undef, float %175, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %176

; <label>:176                                     ; preds = %9, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 8}
!9 = !{!10}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{!12}
!12 = !{i32 0, %ReflectionProbeSHCopyIndicesConstants* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!13 = !{void ()* @cs_copy_indices_sh3, !"cs_copy_indices_sh3", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 64, i32 1, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}

