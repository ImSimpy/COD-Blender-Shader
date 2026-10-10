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
; shader hash: e7d255b88cfb09b789af6755e5c6c5e8
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture     f32          2d      T0             t2     1
;                                   texture    byte         r/o      T1            t10     1
;                                   texture    byte         r/o      T2            t11     1
;                                       UAV     u32          2d      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 2> >" = type { <2 x i32> }
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

@"\01?tiledOffsets256@@3PAIA" = external addrspace(3) global [256 x i32], align 4

define void @cs_indices() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %11 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %12 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %7, i32 %8, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %13 = extractvalue %dx.types.ResRet.f32 %12, 0
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = fcmp fast ogt float %13, 9.843750e-01
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %126, label %19, !dx.controlflow.hints !19

; <label>:19                                      ; preds = %0
  %20 = sitofp i32 %8 to float
  %21 = fadd fast float %20, 5.000000e-01
  %22 = sitofp i32 %7 to float
  %23 = fadd fast float %22, 5.000000e-01
  %24 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %26 = select i1 %15, float %24, float %25
  %27 = select i1 %15, float 6.400000e+01, float 0x3FF0410420000000
  %28 = call float @dx.op.unary.f32(i32 7, float %13)  ; Saturate(value)
  %29 = fmul fast float %28, %27
  %30 = select i1 %15, float -6.300000e+01, float -0.000000e+00
  %31 = fadd fast float %29, %30
  %32 = call float @dx.op.binary.f32(i32 35, float %31, float 0x3E45798EE0000000)  ; FMax(a,b)
  %33 = fdiv fast float %26, %32
  %34 = fptoui float %23 to i32
  %35 = fptoui float %21 to i32
  %36 = lshr i32 %34, 4
  %37 = lshr i32 %35, 4
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 0
  %40 = call i32 @dx.op.tertiary.i32(i32 49, i32 %37, i32 %39, i32 %36)  ; UMad(a,b,c)
  %41 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.i32 %41, 0
  %43 = add nsw i32 %42, -1
  %44 = call i32 @dx.op.binary.i32(i32 37, i32 %43, i32 0)  ; IMax(a,b)
  %45 = call float @dx.op.binary.f32(i32 35, float %33, float 0.000000e+00)  ; FMax(a,b)
  %46 = fptoui float %45 to i32
  %47 = lshr i32 %46, 5
  %48 = call i32 @dx.op.binary.i32(i32 40, i32 %47, i32 8191)  ; UMin(a,b)
  %49 = shl i32 %48, 2
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = lshr i32 %51, 16
  %53 = and i32 %51, 65535
  %54 = lshr i32 %51, 21
  %55 = lshr i32 %53, 5
  %56 = call i32 @dx.op.binary.i32(i32 40, i32 %55, i32 %44)  ; UMin(a,b)
  %57 = icmp ugt i32 %54, %56
  br i1 %57, label %126, label %58

; <label>:58                                      ; preds = %19
  br label %59

; <label>:59                                      ; preds = %119, %58
  %60 = phi i32 [ %123, %119 ], [ %54, %58 ]
  %61 = phi i32 [ %120, %119 ], [ 0, %58 ]
  %62 = phi i32 [ %121, %119 ], [ 0, %58 ]
  %63 = phi i32 [ %122, %119 ], [ 0, %58 ]
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 0
  %66 = call i32 @dx.op.tertiary.i32(i32 49, i32 %40, i32 %65, i32 %60)  ; UMad(a,b,c)
  %67 = shl i32 %66, 2
  %68 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %67, i32 undef)  ; BufferLoad(srv,index,wot)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = shl i32 %60, 5
  %71 = sub nsw i32 %52, %70
  %72 = call i32 @dx.op.binary.i32(i32 37, i32 %71, i32 0)  ; IMax(a,b)
  %73 = call i32 @dx.op.binary.i32(i32 38, i32 %72, i32 31)  ; IMin(a,b)
  %74 = sub nsw i32 1, %52
  %75 = add nsw i32 %74, %53
  %76 = call i32 @dx.op.binary.i32(i32 37, i32 %75, i32 0)  ; IMax(a,b)
  %77 = call i32 @dx.op.binary.i32(i32 38, i32 %76, i32 32)  ; IMin(a,b)
  %78 = and i32 %77, 31
  %79 = shl i32 -1, %78
  %80 = xor i32 %79, -1
  %81 = and i32 %73, 31
  %82 = shl i32 %80, %81
  %83 = icmp eq i32 %77, 32
  %84 = select i1 %83, i32 -1, i32 %82
  %85 = and i32 %84, %69
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %119, label %87

; <label>:87                                      ; preds = %59
  br label %88

; <label>:88                                      ; preds = %113, %87
  %89 = phi i32 [ %97, %113 ], [ %85, %87 ]
  %90 = phi i32 [ %114, %113 ], [ %61, %87 ]
  %91 = phi i32 [ %115, %113 ], [ %62, %87 ]
  %92 = phi i32 [ %116, %113 ], [ %63, %87 ]
  %93 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %89)  ; FirstbitLo(value)
  %94 = add i32 %93, %70
  %95 = and i32 %93, 31
  %96 = shl i32 1, %95
  %97 = xor i32 %96, %89
  %98 = icmp ult i32 %92, 4
  br i1 %98, label %99, label %105, !dx.controlflow.hints !20

; <label>:99                                      ; preds = %88
  %100 = call i32 @dx.op.binary.i32(i32 40, i32 %94, i32 255)  ; UMin(a,b)
  %101 = shl i32 %92, 3
  %102 = and i32 %101, 24
  %103 = shl i32 %100, %102
  %104 = or i32 %103, %90
  br label %113

; <label>:105                                     ; preds = %88
  %106 = icmp ult i32 %92, 7
  br i1 %106, label %107, label %113, !dx.controlflow.hints !21

; <label>:107                                     ; preds = %105
  %108 = call i32 @dx.op.binary.i32(i32 40, i32 %94, i32 255)  ; UMin(a,b)
  %109 = shl i32 %92, 3
  %110 = and i32 %109, 24
  %111 = shl i32 %108, %110
  %112 = or i32 %111, %91
  br label %113

; <label>:113                                     ; preds = %107, %105, %99
  %114 = phi i32 [ %104, %99 ], [ %90, %107 ], [ %90, %105 ]
  %115 = phi i32 [ %91, %99 ], [ %112, %107 ], [ %91, %105 ]
  %116 = add i32 %92, 1
  %117 = icmp eq i32 %89, %96
  br i1 %117, label %118, label %88, !llvm.loop !22

; <label>:118                                     ; preds = %113
  br label %119

; <label>:119                                     ; preds = %118, %59
  %120 = phi i32 [ %61, %59 ], [ %114, %118 ]
  %121 = phi i32 [ %62, %59 ], [ %115, %118 ]
  %122 = phi i32 [ %63, %59 ], [ %116, %118 ]
  %123 = add i32 %60, 1
  %124 = icmp ugt i32 %123, %56
  br i1 %124, label %125, label %59

; <label>:125                                     ; preds = %119
  br label %126

; <label>:126                                     ; preds = %125, %19, %0
  %127 = phi i32 [ 0, %0 ], [ 0, %19 ], [ %120, %125 ]
  %128 = phi i32 [ 0, %0 ], [ 0, %19 ], [ %121, %125 ]
  %129 = phi i32 [ 0, %0 ], [ 0, %19 ], [ %122, %125 ]
  %130 = icmp ult i32 %129, 7
  br i1 %130, label %131, label %147

; <label>:131                                     ; preds = %126
  br label %132

; <label>:132                                     ; preds = %132, %131
  %133 = phi i32 [ %144, %132 ], [ %129, %131 ]
  %134 = phi i32 [ %141, %132 ], [ %127, %131 ]
  %135 = phi i32 [ %143, %132 ], [ %128, %131 ]
  %136 = icmp ult i32 %133, 4
  %137 = shl i32 %133, 3
  %138 = and i32 %137, 24
  %139 = shl i32 255, %138
  %140 = select i1 %136, i32 %139, i32 0
  %141 = or i32 %134, %140
  %142 = select i1 %136, i32 0, i32 %139
  %143 = or i32 %135, %142
  %144 = add nuw nsw i32 %133, 1
  %145 = icmp eq i32 %144, 7
  br i1 %145, label %146, label %132

; <label>:146                                     ; preds = %132
  br label %147

; <label>:147                                     ; preds = %146, %126
  %148 = phi i32 [ %127, %126 ], [ %141, %146 ]
  %149 = phi i32 [ %128, %126 ], [ %143, %146 ]
  %150 = shl i32 %9, 4
  %151 = shl i32 %10, 4
  %152 = or i32 %150, 15
  %153 = or i32 %151, 15
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = fptoui float %155 to i32
  %158 = fptoui float %156 to i32
  %159 = icmp ult i32 %152, %157
  %160 = icmp ult i32 %153, %158
  %161 = and i1 %159, %160
  br i1 %161, label %162, label %240, !dx.controlflow.hints !24

; <label>:162                                     ; preds = %147
  %163 = call i32 @dx.op.binary.i32(i32 40, i32 7, i32 %129)  ; UMin(a,b)
  %164 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %11
  store i32 %163, i32 addrspace(3)* %164, align 4, !tbaa !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %165 = and i32 %11, 255
  %166 = icmp ult i32 %165, 128
  br i1 %166, label %167, label %173, !dx.controlflow.hints !29

; <label>:167                                     ; preds = %162
  %168 = add i32 %11, 128
  %169 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %168
  %170 = load i32, i32 addrspace(3)* %169, align 4, !tbaa !25
  %171 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %172 = add i32 %171, %170
  store i32 %172, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %173

; <label>:173                                     ; preds = %167, %162
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %174 = icmp ult i32 %165, 64
  br i1 %174, label %175, label %181, !dx.controlflow.hints !30

; <label>:175                                     ; preds = %173
  %176 = add i32 %11, 64
  %177 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %176
  %178 = load i32, i32 addrspace(3)* %177, align 4, !tbaa !25
  %179 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %180 = add i32 %179, %178
  store i32 %180, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %181

; <label>:181                                     ; preds = %175, %173
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %182 = icmp ult i32 %165, 32
  br i1 %182, label %183, label %189, !dx.controlflow.hints !31

; <label>:183                                     ; preds = %181
  %184 = add i32 %11, 32
  %185 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %184
  %186 = load i32, i32 addrspace(3)* %185, align 4, !tbaa !25
  %187 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %188 = add i32 %187, %186
  store i32 %188, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %189

; <label>:189                                     ; preds = %183, %181
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %190 = icmp ult i32 %165, 16
  br i1 %190, label %191, label %197, !dx.controlflow.hints !32

; <label>:191                                     ; preds = %189
  %192 = add i32 %11, 16
  %193 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %192
  %194 = load i32, i32 addrspace(3)* %193, align 4, !tbaa !25
  %195 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %196 = add i32 %195, %194
  store i32 %196, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %197

; <label>:197                                     ; preds = %191, %189
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %198 = icmp ult i32 %165, 8
  br i1 %198, label %199, label %205, !dx.controlflow.hints !33

; <label>:199                                     ; preds = %197
  %200 = add i32 %11, 8
  %201 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %200
  %202 = load i32, i32 addrspace(3)* %201, align 4, !tbaa !25
  %203 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %204 = add i32 %203, %202
  store i32 %204, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %205

; <label>:205                                     ; preds = %199, %197
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %206 = icmp ult i32 %165, 4
  br i1 %206, label %207, label %213, !dx.controlflow.hints !34

; <label>:207                                     ; preds = %205
  %208 = add i32 %11, 4
  %209 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %208
  %210 = load i32, i32 addrspace(3)* %209, align 4, !tbaa !25
  %211 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %212 = add i32 %211, %210
  store i32 %212, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %213

; <label>:213                                     ; preds = %207, %205
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %214 = icmp ult i32 %165, 2
  br i1 %214, label %215, label %221, !dx.controlflow.hints !35

; <label>:215                                     ; preds = %213
  %216 = add i32 %11, 2
  %217 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %216
  %218 = load i32, i32 addrspace(3)* %217, align 4, !tbaa !25
  %219 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %220 = add i32 %219, %218
  store i32 %220, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %221

; <label>:221                                     ; preds = %215, %213
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %222 = icmp eq i32 %165, 0
  br i1 %222, label %223, label %229, !dx.controlflow.hints !36

; <label>:223                                     ; preds = %221
  %224 = add i32 %11, 1
  %225 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %224
  %226 = load i32, i32 addrspace(3)* %225, align 4, !tbaa !25
  %227 = load i32, i32 addrspace(3)* %164, align 4, !tbaa !25
  %228 = add i32 %227, %226
  store i32 %228, i32 addrspace(3)* %164, align 4, !tbaa !25
  br label %229

; <label>:229                                     ; preds = %223, %221
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %230 = icmp eq i32 %11, 0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %230, label %231, label %240, !dx.controlflow.hints !37

; <label>:231                                     ; preds = %229
  %232 = load i32, i32 addrspace(3)* getelementptr inbounds ([256 x i32], [256 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !25
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %235 = fptoui float %234 to i32
  %236 = lshr i32 %235, 4
  %237 = mul i32 %236, %10
  %238 = add i32 %237, %9
  %239 = shl i32 %238, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %239, i32 undef, i32 %232, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %240

; <label>:240                                     ; preds = %231, %229, %147
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %7, i32 %8, i32 undef, i32 %148, i32 %149, i32 %148, i32 %148, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !14, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!10 = !{!11, !13}
!11 = !{i32 0, %"class.RWTexture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{!15}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{void ()* @cs_indices, !"cs_indices", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 16, i32 16, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}

