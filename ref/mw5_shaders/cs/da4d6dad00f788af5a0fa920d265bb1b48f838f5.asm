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
; shader hash: 4e84428b196ac90ddd8039846e26f036
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
;                                   texture     u32          2d      T0             t5     1
;                                   texture     u32     2darray      T1            t11     1
;                                   texture    byte         r/o      T2             t6     1
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
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  br i1 %17, label %18, label %177, !dx.controlflow.hints !22

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %177, label %22

; <label>:22                                      ; preds = %18
  br label %23

; <label>:23                                      ; preds = %173, %22
  %24 = phi i32 [ %75, %173 ], [ 0, %22 ]
  %25 = phi i32 [ %174, %173 ], [ 0, %22 ]
  br label %26

; <label>:26                                      ; preds = %30, %23
  %27 = phi i32 [ %24, %23 ], [ %75, %30 ]
  %28 = phi i32 [ 0, %23 ], [ %70, %30 ]
  %29 = phi i32 [ 0, %23 ], [ %76, %30 ]
  br label %30

; <label>:30                                      ; preds = %26
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = add i32 %32, -1
  %34 = shl i32 %10, 1
  %35 = add nsw i32 %29, %34
  %36 = call i32 @dx.op.binary.i32(i32 40, i32 %35, i32 %33)  ; UMin(a,b)
  %37 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %38 = add i32 %37, -1
  %39 = shl i32 %11, 1
  %40 = call i32 @dx.op.binary.i32(i32 40, i32 %39, i32 %38)  ; UMin(a,b)
  %41 = call i32 @dx.op.tertiary.i32(i32 49, i32 %40, i32 %32, i32 %36)  ; UMad(a,b,c)
  %42 = mul i32 %41, %20
  %43 = add i32 %42, %25
  %44 = shl i32 %43, 2
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %44, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = or i32 %46, %28
  %48 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %36, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.i32 %48, 0
  %50 = and i32 %49, 3
  %51 = add i32 %27, 1
  %52 = add i32 %51, %50
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 0
  %55 = add i32 %54, -1
  %56 = shl i32 %10, 1
  %57 = add nsw i32 %29, %56
  %58 = call i32 @dx.op.binary.i32(i32 40, i32 %57, i32 %55)  ; UMin(a,b)
  %59 = extractvalue %dx.types.CBufRet.i32 %53, 1
  %60 = add i32 %59, -1
  %61 = shl i32 %11, 1
  %62 = or i32 %61, 1
  %63 = call i32 @dx.op.binary.i32(i32 40, i32 %62, i32 %60)  ; UMin(a,b)
  %64 = call i32 @dx.op.tertiary.i32(i32 49, i32 %63, i32 %54, i32 %58)  ; UMad(a,b,c)
  %65 = mul i32 %64, %20
  %66 = add i32 %65, %25
  %67 = shl i32 %66, 2
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = or i32 %69, %47
  %71 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %58, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %72 = extractvalue %dx.types.ResRet.i32 %71, 0
  %73 = and i32 %72, 3
  %74 = add i32 %52, 1
  %75 = add i32 %74, %73
  %76 = add nuw nsw i32 %29, 1
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %26

; <label>:78                                      ; preds = %30
  %79 = icmp eq i32 %70, 0
  br i1 %79, label %173, label %80

; <label>:80                                      ; preds = %78
  br label %81

; <label>:81                                      ; preds = %101, %80
  %82 = phi i32 [ %87, %101 ], [ %70, %80 ]
  %83 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %82)  ; FirstbitLo(value)
  %84 = call i32 @dx.op.tertiary.i32(i32 49, i32 32, i32 %25, i32 %83)  ; UMad(a,b,c)
  %85 = and i32 %83, 31
  %86 = shl i32 1, %85
  %87 = xor i32 %86, %82
  %88 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %10, i32 %11, i32 %84, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91, !dx.controlflow.hints !23

; <label>:91                                      ; preds = %81
  %92 = lshr i32 %89, 16
  %93 = and i32 %89, 65535
  %94 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %89)  ; Countbits(value)
  %95 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %92)  ; Countbits(value)
  %96 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 undef, i32 %10, i32 %11, i32 %84, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.i32 %96, 0
  %98 = icmp eq i32 %95, %75
  br i1 %98, label %99, label %103, !dx.controlflow.hints !24

; <label>:99                                      ; preds = %91
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 %84, i32 2, i32 2, i32 2, i32 2, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %101

; <label>:100                                     ; preds = %160
  br label %101

; <label>:101                                     ; preds = %156, %107, %106, %100, %99, %81
  %102 = icmp eq i32 %82, %86
  br i1 %102, label %172, label %81

; <label>:103                                     ; preds = %91
  %104 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %93)  ; Countbits(value)
  %105 = icmp eq i32 %104, %75
  br i1 %105, label %106, label %107, !dx.controlflow.hints !25

; <label>:106                                     ; preds = %103
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 %84, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %101

; <label>:107                                     ; preds = %103
  %108 = icmp eq i32 %94, 0
  br i1 %108, label %101, label %109, !dx.controlflow.hints !26

; <label>:109                                     ; preds = %107
  %110 = and i32 %97, 3
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %132, label %112, !dx.controlflow.hints !27

; <label>:112                                     ; preds = %109
  %113 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 3
  %116 = call i32 @dx.op.binary.i32(i32 40, i32 %115, i32 %113)  ; UMin(a,b)
  %117 = extractvalue %dx.types.CBufRet.i32 %114, 2
  %118 = udiv i32 %116, %117
  %119 = urem i32 %116, %117
  %120 = extractvalue %dx.types.CBufRet.i32 %114, 1
  %121 = urem i32 %119, %120
  %122 = udiv i32 %119, %120
  %123 = shl i32 %121, 6
  %124 = and i32 %123, 32704
  %125 = shl i32 %122, 15
  %126 = and i32 %125, 8355840
  %127 = shl i32 %118, 23
  %128 = and i32 %127, 2139095040
  %129 = or i32 %128, %124
  %130 = or i32 %129, %126
  %131 = or i32 %130, 3
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 %84, i32 %131, i32 %131, i32 %131, i32 %131, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %132

; <label>:132                                     ; preds = %112, %109
  %133 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 %94)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %134 = shl i32 %10, 6
  %135 = and i32 %134, 32704
  %136 = shl i32 %11, 15
  %137 = and i32 %136, 8355840
  %138 = or i32 %137, %135
  %139 = shl i32 %84, 23
  %140 = and i32 %139, 2139095040
  %141 = or i32 %138, %140
  %142 = icmp eq i32 %92, 0
  br i1 %142, label %156, label %143

; <label>:143                                     ; preds = %132
  br label %144

; <label>:144                                     ; preds = %144, %143
  %145 = phi i32 [ %153, %144 ], [ 0, %143 ]
  %146 = phi i32 [ %150, %144 ], [ %92, %143 ]
  %147 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %146)  ; FirstbitLo(value)
  %148 = and i32 %147, 31
  %149 = shl i32 1, %148
  %150 = xor i32 %149, %146
  %151 = or i32 %148, %141
  %152 = add i32 %145, %133
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %152, i32 0, i32 %151, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %153 = add i32 %145, 1
  %154 = icmp eq i32 %146, %149
  br i1 %154, label %155, label %144

; <label>:155                                     ; preds = %144
  br label %156

; <label>:156                                     ; preds = %155, %132
  %157 = phi i32 [ 0, %132 ], [ %153, %155 ]
  %158 = icmp eq i32 %93, 0
  br i1 %158, label %101, label %159

; <label>:159                                     ; preds = %156
  br label %160

; <label>:160                                     ; preds = %160, %159
  %161 = phi i32 [ %170, %160 ], [ %157, %159 ]
  %162 = phi i32 [ %166, %160 ], [ %93, %159 ]
  %163 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %162)  ; FirstbitLo(value)
  %164 = and i32 %163, 31
  %165 = shl i32 1, %164
  %166 = xor i32 %165, %162
  %167 = or i32 %141, %164
  %168 = or i32 %167, 32
  %169 = add i32 %161, %133
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %169, i32 0, i32 %168, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %170 = add i32 %161, 1
  %171 = icmp eq i32 %162, %165
  br i1 %171, label %100, label %160

; <label>:172                                     ; preds = %101
  br label %173

; <label>:173                                     ; preds = %172, %78
  %174 = add nuw i32 %25, 1
  %175 = icmp eq i32 %174, %20
  br i1 %175, label %176, label %23, !llvm.loop !28

; <label>:176                                     ; preds = %173
  br label %177

; <label>:177                                     ; preds = %176, %18, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
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

