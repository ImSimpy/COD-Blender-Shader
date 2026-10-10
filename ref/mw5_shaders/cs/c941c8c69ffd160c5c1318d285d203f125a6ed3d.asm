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
; shader hash: 529d3b49333817edcb21bbb896a3e672
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
;   [11728 x i8] (type annotation not present)
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
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
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   texture     u32     2darray      T0            t11     1
;                                   texture    byte         r/o      T1             t6     1
;                                   texture     u32     2darray      T2            t14     1
;                                       UAV     u32     2darray      U0             u1     1
;                                       UAV  struct         r/w      U1             u3     1
;                                       UAV    byte         r/w      U2             u4     1
;                                       UAV  struct         r/w      U3             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferAllocateVTFromTileMask = type { <2 x i32>, <2 x i32>, <2 x i32>, i32, i32 }

define void @cs_spotvis_clearvt_clear_mask() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %15 = icmp ult i32 %10, %13
  %16 = icmp ult i32 %11, %14
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %185, !dx.controlflow.hints !22

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %185, label %22

; <label>:22                                      ; preds = %18
  br label %23

; <label>:23                                      ; preds = %181, %22
  %24 = phi i32 [ %77, %181 ], [ 0, %22 ]
  %25 = phi i32 [ %182, %181 ], [ 0, %22 ]
  br label %26

; <label>:26                                      ; preds = %23
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 0
  %29 = add i32 %28, -1
  %30 = shl i32 %10, 1
  %31 = call i32 @dx.op.binary.i32(i32 40, i32 %30, i32 %29)  ; UMin(a,b)
  %32 = extractvalue %dx.types.CBufRet.i32 %27, 1
  %33 = add i32 %32, -1
  %34 = shl i32 %11, 1
  %35 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 %33)  ; UMin(a,b)
  %36 = call i32 @dx.op.tertiary.i32(i32 49, i32 %35, i32 %28, i32 %31)  ; UMad(a,b,c)
  %37 = mul i32 %36, %20
  %38 = add i32 %37, %25
  %39 = shl i32 %38, 2
  %40 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = or i32 %34, 1
  %43 = call i32 @dx.op.binary.i32(i32 40, i32 %42, i32 %33)  ; UMin(a,b)
  %44 = call i32 @dx.op.tertiary.i32(i32 49, i32 %43, i32 %28, i32 %31)  ; UMad(a,b,c)
  %45 = mul i32 %44, %20
  %46 = add i32 %45, %25
  %47 = shl i32 %46, 2
  %48 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %47, i32 undef)  ; BufferLoad(srv,index,wot)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = or i32 %41, %49
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 0
  %53 = add i32 %52, -1
  %54 = shl i32 %10, 1
  %55 = or i32 %54, 1
  %56 = call i32 @dx.op.binary.i32(i32 40, i32 %55, i32 %53)  ; UMin(a,b)
  %57 = extractvalue %dx.types.CBufRet.i32 %51, 1
  %58 = add i32 %57, -1
  %59 = shl i32 %11, 1
  %60 = call i32 @dx.op.binary.i32(i32 40, i32 %59, i32 %58)  ; UMin(a,b)
  %61 = call i32 @dx.op.tertiary.i32(i32 49, i32 %60, i32 %52, i32 %56)  ; UMad(a,b,c)
  %62 = mul i32 %61, %20
  %63 = add i32 %62, %25
  %64 = shl i32 %63, 2
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = or i32 %66, %50
  %68 = or i32 %59, 1
  %69 = call i32 @dx.op.binary.i32(i32 40, i32 %68, i32 %58)  ; UMin(a,b)
  %70 = call i32 @dx.op.tertiary.i32(i32 49, i32 %69, i32 %52, i32 %56)  ; UMad(a,b,c)
  %71 = mul i32 %70, %20
  %72 = add i32 %71, %25
  %73 = shl i32 %72, 2
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = or i32 %67, %75
  %77 = add i32 %24, 32
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %181, label %79

; <label>:79                                      ; preds = %26
  br label %80

; <label>:80                                      ; preds = %109, %79
  %81 = phi i32 [ %86, %109 ], [ %76, %79 ]
  %82 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %81)  ; FirstbitLo(value)
  %83 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %25, i32 %82)  ; UMad(a,b,c)
  %84 = and i32 %82, 31
  %85 = shl i32 1, %84
  %86 = xor i32 %85, %81
  %87 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %10, i32 %11, i32 %83, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %10, i32 %11, i32 %83, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = or i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93, !dx.controlflow.hints !23

; <label>:93                                      ; preds = %80
  %94 = lshr i32 %88, 16
  %95 = and i32 %90, -65536
  %96 = or i32 %95, %94
  %97 = and i32 %88, 65535
  %98 = shl i32 %90, 16
  %99 = or i32 %98, %97
  %100 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %88)  ; Countbits(value)
  %101 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %90)  ; Countbits(value)
  %102 = add i32 %101, %100
  %103 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %96)  ; Countbits(value)
  %104 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 undef, i32 %10, i32 %11, i32 %83, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = icmp eq i32 %103, %77
  br i1 %106, label %107, label %111, !dx.controlflow.hints !24

; <label>:107                                     ; preds = %93
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 %83, i32 2, i32 2, i32 2, i32 2, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %109

; <label>:108                                     ; preds = %168
  br label %109

; <label>:109                                     ; preds = %164, %115, %114, %108, %107, %80
  %110 = icmp eq i32 %81, %85
  br i1 %110, label %180, label %80

; <label>:111                                     ; preds = %93
  %112 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %99)  ; Countbits(value)
  %113 = icmp eq i32 %112, %77
  br i1 %113, label %114, label %115, !dx.controlflow.hints !25

; <label>:114                                     ; preds = %111
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 %83, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %109

; <label>:115                                     ; preds = %111
  %116 = icmp eq i32 %102, 0
  br i1 %116, label %109, label %117, !dx.controlflow.hints !26

; <label>:117                                     ; preds = %115
  %118 = and i32 %105, 3
  %119 = icmp eq i32 %118, 3
  br i1 %119, label %140, label %120, !dx.controlflow.hints !27

; <label>:120                                     ; preds = %117
  %121 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.i32 %122, 3
  %124 = call i32 @dx.op.binary.i32(i32 40, i32 %123, i32 %121)  ; UMin(a,b)
  %125 = extractvalue %dx.types.CBufRet.i32 %122, 2
  %126 = udiv i32 %124, %125
  %127 = urem i32 %124, %125
  %128 = extractvalue %dx.types.CBufRet.i32 %122, 1
  %129 = urem i32 %127, %128
  %130 = udiv i32 %127, %128
  %131 = shl i32 %129, 6
  %132 = and i32 %131, 32704
  %133 = shl i32 %130, 15
  %134 = and i32 %133, 8355840
  %135 = shl i32 %126, 23
  %136 = and i32 %135, 2139095040
  %137 = or i32 %136, %132
  %138 = or i32 %137, %134
  %139 = or i32 %138, 3
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 %83, i32 %139, i32 %139, i32 %139, i32 %139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %140

; <label>:140                                     ; preds = %120, %117
  %141 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 %102)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %142 = shl i32 %10, 6
  %143 = and i32 %142, 32704
  %144 = shl i32 %11, 15
  %145 = and i32 %144, 8355840
  %146 = or i32 %145, %143
  %147 = shl i32 %83, 23
  %148 = and i32 %147, 2139095040
  %149 = or i32 %146, %148
  %150 = icmp eq i32 %96, 0
  br i1 %150, label %164, label %151

; <label>:151                                     ; preds = %140
  br label %152

; <label>:152                                     ; preds = %152, %151
  %153 = phi i32 [ %161, %152 ], [ 0, %151 ]
  %154 = phi i32 [ %158, %152 ], [ %96, %151 ]
  %155 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %154)  ; FirstbitLo(value)
  %156 = and i32 %155, 31
  %157 = shl i32 1, %156
  %158 = xor i32 %157, %154
  %159 = or i32 %156, %149
  %160 = add i32 %153, %141
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %160, i32 0, i32 %159, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %161 = add i32 %153, 1
  %162 = icmp eq i32 %154, %157
  br i1 %162, label %163, label %152

; <label>:163                                     ; preds = %152
  br label %164

; <label>:164                                     ; preds = %163, %140
  %165 = phi i32 [ 0, %140 ], [ %161, %163 ]
  %166 = icmp eq i32 %99, 0
  br i1 %166, label %109, label %167

; <label>:167                                     ; preds = %164
  br label %168

; <label>:168                                     ; preds = %168, %167
  %169 = phi i32 [ %178, %168 ], [ %165, %167 ]
  %170 = phi i32 [ %174, %168 ], [ %99, %167 ]
  %171 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %170)  ; FirstbitLo(value)
  %172 = and i32 %171, 31
  %173 = shl i32 1, %172
  %174 = xor i32 %173, %170
  %175 = or i32 %149, %172
  %176 = or i32 %175, 32
  %177 = add i32 %169, %141
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %177, i32 0, i32 %176, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %178 = add i32 %169, 1
  %179 = icmp eq i32 %170, %173
  br i1 %179, label %108, label %168

; <label>:180                                     ; preds = %109
  br label %181

; <label>:181                                     ; preds = %180, %26
  %182 = add nuw i32 %25, 1
  %183 = icmp eq i32 %182, %20
  br i1 %183, label %184, label %23, !llvm.loop !28

; <label>:184                                     ; preds = %181
  br label %185

; <label>:185                                     ; preds = %184, %18, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !16, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 14, i32 1, i32 7, i32 0, !7}
!10 = !{!11, !12, !14, !15}
!11 = !{i32 0, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!12 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !13}
!13 = !{i32 1, i32 4}
!14 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !13}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %ConstantBufferAllocateVTFromTileMask* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!19 = !{void ()* @cs_spotvis_clearvt_clear_mask, !"cs_spotvis_clearvt_clear_mask", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 8, i32 8, i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}

