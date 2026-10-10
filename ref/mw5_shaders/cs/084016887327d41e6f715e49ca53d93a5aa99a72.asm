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
; shader hash: 019f6a8eb625b7f17e22ff2c58a8d5ed
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %14 = icmp ult i32 %9, %12
  %15 = icmp ult i32 %10, %13
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %175, !dx.controlflow.hints !21

; <label>:17                                      ; preds = %0
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %175, label %21

; <label>:21                                      ; preds = %17
  br label %22

; <label>:22                                      ; preds = %171, %21
  %23 = phi i32 [ %76, %171 ], [ 0, %21 ]
  %24 = phi i32 [ %172, %171 ], [ 0, %21 ]
  br label %25

; <label>:25                                      ; preds = %22
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 0
  %28 = add i32 %27, -1
  %29 = shl i32 %9, 1
  %30 = call i32 @dx.op.binary.i32(i32 40, i32 %29, i32 %28)  ; UMin(a,b)
  %31 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %32 = add i32 %31, -1
  %33 = shl i32 %10, 1
  %34 = call i32 @dx.op.binary.i32(i32 40, i32 %33, i32 %32)  ; UMin(a,b)
  %35 = call i32 @dx.op.tertiary.i32(i32 49, i32 %34, i32 %27, i32 %30)  ; UMad(a,b,c)
  %36 = mul i32 %35, %19
  %37 = add i32 %36, %24
  %38 = shl i32 %37, 2
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %38, i32 undef)  ; BufferLoad(srv,index,wot)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = or i32 %33, 1
  %42 = call i32 @dx.op.binary.i32(i32 40, i32 %41, i32 %32)  ; UMin(a,b)
  %43 = call i32 @dx.op.tertiary.i32(i32 49, i32 %42, i32 %27, i32 %30)  ; UMad(a,b,c)
  %44 = mul i32 %43, %19
  %45 = add i32 %44, %24
  %46 = shl i32 %45, 2
  %47 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %46, i32 undef)  ; BufferLoad(srv,index,wot)
  %48 = extractvalue %dx.types.ResRet.i32 %47, 0
  %49 = or i32 %40, %48
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 0
  %52 = add i32 %51, -1
  %53 = shl i32 %9, 1
  %54 = or i32 %53, 1
  %55 = call i32 @dx.op.binary.i32(i32 40, i32 %54, i32 %52)  ; UMin(a,b)
  %56 = extractvalue %dx.types.CBufRet.i32 %50, 1
  %57 = add i32 %56, -1
  %58 = shl i32 %10, 1
  %59 = call i32 @dx.op.binary.i32(i32 40, i32 %58, i32 %57)  ; UMin(a,b)
  %60 = call i32 @dx.op.tertiary.i32(i32 49, i32 %59, i32 %51, i32 %55)  ; UMad(a,b,c)
  %61 = mul i32 %60, %19
  %62 = add i32 %61, %24
  %63 = shl i32 %62, 2
  %64 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %63, i32 undef)  ; BufferLoad(srv,index,wot)
  %65 = extractvalue %dx.types.ResRet.i32 %64, 0
  %66 = or i32 %65, %49
  %67 = or i32 %58, 1
  %68 = call i32 @dx.op.binary.i32(i32 40, i32 %67, i32 %57)  ; UMin(a,b)
  %69 = call i32 @dx.op.tertiary.i32(i32 49, i32 %68, i32 %51, i32 %55)  ; UMad(a,b,c)
  %70 = mul i32 %69, %19
  %71 = add i32 %70, %24
  %72 = shl i32 %71, 2
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = or i32 %66, %74
  %76 = add i32 %23, 16
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %171, label %78

; <label>:78                                      ; preds = %25
  br label %79

; <label>:79                                      ; preds = %99, %78
  %80 = phi i32 [ %85, %99 ], [ %75, %78 ]
  %81 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %80)  ; FirstbitLo(value)
  %82 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %24, i32 %81)  ; UMad(a,b,c)
  %83 = and i32 %81, 31
  %84 = shl i32 1, %83
  %85 = xor i32 %84, %80
  %86 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %9, i32 %10, i32 %82, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89, !dx.controlflow.hints !22

; <label>:89                                      ; preds = %79
  %90 = lshr i32 %87, 16
  %91 = and i32 %87, 65535
  %92 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %87)  ; Countbits(value)
  %93 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %90)  ; Countbits(value)
  %94 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 undef, i32 %9, i32 %10, i32 %82, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = icmp eq i32 %93, %76
  br i1 %96, label %97, label %101, !dx.controlflow.hints !23

; <label>:97                                      ; preds = %89
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %9, i32 %10, i32 %82, i32 2, i32 2, i32 2, i32 2, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %99

; <label>:98                                      ; preds = %158
  br label %99

; <label>:99                                      ; preds = %154, %105, %104, %98, %97, %79
  %100 = icmp eq i32 %80, %84
  br i1 %100, label %170, label %79

; <label>:101                                     ; preds = %89
  %102 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %91)  ; Countbits(value)
  %103 = icmp eq i32 %102, %76
  br i1 %103, label %104, label %105, !dx.controlflow.hints !24

; <label>:104                                     ; preds = %101
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %9, i32 %10, i32 %82, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %99

; <label>:105                                     ; preds = %101
  %106 = icmp eq i32 %92, 0
  br i1 %106, label %99, label %107, !dx.controlflow.hints !25

; <label>:107                                     ; preds = %105
  %108 = and i32 %95, 3
  %109 = icmp eq i32 %108, 3
  br i1 %109, label %130, label %110, !dx.controlflow.hints !26

; <label>:110                                     ; preds = %107
  %111 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 3
  %114 = call i32 @dx.op.binary.i32(i32 40, i32 %113, i32 %111)  ; UMin(a,b)
  %115 = extractvalue %dx.types.CBufRet.i32 %112, 2
  %116 = udiv i32 %114, %115
  %117 = urem i32 %114, %115
  %118 = extractvalue %dx.types.CBufRet.i32 %112, 1
  %119 = urem i32 %117, %118
  %120 = udiv i32 %117, %118
  %121 = shl i32 %119, 6
  %122 = and i32 %121, 32704
  %123 = shl i32 %120, 15
  %124 = and i32 %123, 8355840
  %125 = shl i32 %116, 23
  %126 = and i32 %125, 2139095040
  %127 = or i32 %126, %122
  %128 = or i32 %127, %124
  %129 = or i32 %128, 3
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %9, i32 %10, i32 %82, i32 %129, i32 %129, i32 %129, i32 %129, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %130

; <label>:130                                     ; preds = %110, %107
  %131 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 %92)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %132 = shl i32 %9, 6
  %133 = and i32 %132, 32704
  %134 = shl i32 %10, 15
  %135 = and i32 %134, 8355840
  %136 = or i32 %135, %133
  %137 = shl i32 %82, 23
  %138 = and i32 %137, 2139095040
  %139 = or i32 %136, %138
  %140 = icmp eq i32 %90, 0
  br i1 %140, label %154, label %141

; <label>:141                                     ; preds = %130
  br label %142

; <label>:142                                     ; preds = %142, %141
  %143 = phi i32 [ %151, %142 ], [ 0, %141 ]
  %144 = phi i32 [ %148, %142 ], [ %90, %141 ]
  %145 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %144)  ; FirstbitLo(value)
  %146 = and i32 %145, 31
  %147 = shl i32 1, %146
  %148 = xor i32 %147, %144
  %149 = or i32 %146, %139
  %150 = add i32 %143, %131
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %150, i32 0, i32 %149, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %151 = add i32 %143, 1
  %152 = icmp eq i32 %144, %147
  br i1 %152, label %153, label %142

; <label>:153                                     ; preds = %142
  br label %154

; <label>:154                                     ; preds = %153, %130
  %155 = phi i32 [ 0, %130 ], [ %151, %153 ]
  %156 = icmp eq i32 %91, 0
  br i1 %156, label %99, label %157

; <label>:157                                     ; preds = %154
  br label %158

; <label>:158                                     ; preds = %158, %157
  %159 = phi i32 [ %168, %158 ], [ %155, %157 ]
  %160 = phi i32 [ %164, %158 ], [ %91, %157 ]
  %161 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %160)  ; FirstbitLo(value)
  %162 = and i32 %161, 31
  %163 = shl i32 1, %162
  %164 = xor i32 %163, %160
  %165 = or i32 %139, %162
  %166 = or i32 %165, 32
  %167 = add i32 %159, %131
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %167, i32 0, i32 %166, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %168 = add i32 %159, 1
  %169 = icmp eq i32 %160, %163
  br i1 %169, label %98, label %158

; <label>:170                                     ; preds = %99
  br label %171

; <label>:171                                     ; preds = %170, %25
  %172 = add nuw i32 %24, 1
  %173 = icmp eq i32 %172, %19
  br i1 %173, label %174, label %22, !llvm.loop !27

; <label>:174                                     ; preds = %171
  br label %175

; <label>:175                                     ; preds = %174, %17, %0
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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !15, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !13, !14}
!10 = !{i32 0, %"class.RWTexture2DArray<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!11 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!12 = !{i32 1, i32 4}
!13 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{i32 3, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !12}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %ConstantBufferAllocateVTFromTileMask* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!18 = !{void ()* @cs_spotvis_clearvt_clear_mask, !"cs_spotvis_clearvt_clear_mask", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}

