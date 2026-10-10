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
; shader hash: 4db11feeb20d663ad0de44ffba92024b
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV    byte         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%ReflectionProbeSHConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }

define void @cs_copy_sh3() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %5 = extractvalue %dx.types.CBufRet.i32 %4, 2
  %6 = mul i32 %5, 36
  %7 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %8 = extractvalue %dx.types.ResRet.f32 %7, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %6, i32 undef, float %8, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %9 = add i32 %6, 4
  %10 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %11 = extractvalue %dx.types.ResRet.f32 %10, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %9, i32 undef, float %11, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %12 = add i32 %6, 8
  %13 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %12, i32 undef, float %14, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %15 = add i32 %6, 12
  %16 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.f32 %16, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %15, i32 undef, float %17, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %18 = add i32 %6, 16
  %19 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %18, i32 undef, float %20, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %21 = add i32 %6, 20
  %22 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %21, i32 undef, float %23, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %24 = add i32 %6, 24
  %25 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.f32 %25, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %24, i32 undef, float %26, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %27 = add i32 %6, 28
  %28 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %27, i32 undef, float %29, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %30 = add i32 %6, 32
  %31 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %30, i32 undef, float %32, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %35 = extractvalue %dx.types.CBufRet.i32 %33, 2
  %36 = add i32 %35, %34
  %37 = mul i32 %36, 36
  %38 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %37, i32 undef, float %39, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %40 = add i32 %37, 4
  %41 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %40, i32 undef, float %42, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %43 = add i32 %37, 8
  %44 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.f32 %44, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %43, i32 undef, float %45, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %46 = add i32 %37, 12
  %47 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.f32 %47, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %46, i32 undef, float %48, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %49 = add i32 %37, 16
  %50 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %49, i32 undef, float %51, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %52 = add i32 %37, 20
  %53 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.f32 %53, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %52, i32 undef, float %54, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %55 = add i32 %37, 24
  %56 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %55, i32 undef, float %57, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %58 = add i32 %37, 28
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %58, i32 undef, float %60, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %61 = add i32 %37, 32
  %62 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 68, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %61, i32 undef, float %63, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 1
  %66 = shl i32 %65, 1
  %67 = extractvalue %dx.types.CBufRet.i32 %64, 2
  %68 = add i32 %66, %67
  %69 = mul i32 %68, 36
  %70 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %69, i32 undef, float %71, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %72 = add i32 %69, 4
  %73 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.f32 %73, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %72, i32 undef, float %74, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %75 = add i32 %69, 8
  %76 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %75, i32 undef, float %77, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %78 = add i32 %69, 12
  %79 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %78, i32 undef, float %80, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %81 = add i32 %69, 16
  %82 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %81, i32 undef, float %83, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %84 = add i32 %69, 20
  %85 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %84, i32 undef, float %86, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %87 = add i32 %69, 24
  %88 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %87, i32 undef, float %89, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %90 = add i32 %69, 28
  %91 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %90, i32 undef, float %92, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %93 = add i32 %69, 32
  %94 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %93, i32 undef, float %95, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %96 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.i32 %96, 1
  %98 = mul i32 %97, 3
  %99 = extractvalue %dx.types.CBufRet.i32 %96, 2
  %100 = add i32 %98, %99
  %101 = mul i32 %100, 36
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %101, i32 undef, float %103, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %104 = add i32 %101, 4
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %104, i32 undef, float %106, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %107 = add i32 %101, 8
  %108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %107, i32 undef, float %109, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %110 = add i32 %101, 12
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %110, i32 undef, float %112, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %113 = add i32 %101, 16
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %113, i32 undef, float %115, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %116 = add i32 %101, 20
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %116, i32 undef, float %118, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %119 = add i32 %101, 24
  %120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %119, i32 undef, float %121, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %122 = add i32 %101, 28
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %122, i32 undef, float %124, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %125 = add i32 %101, 32
  %126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %125, i32 undef, float %127, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readonly }
attributes #1 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !7, !9, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!9 = !{!10}
!10 = !{i32 0, %ReflectionProbeSHConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!11 = !{void ()* @cs_copy_sh3, !"cs_copy_sh3", null, !4, !12}
!12 = !{i32 0, i64 272, i32 4, !13}
!13 = !{i32 1, i32 1, i32 1}

