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
; shader hash: fee1773758ead50d4551cdc9c847613f
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
; Resource bind info for 
; {
;
;   [256 x i8] (type annotation not present)
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
;                                       UAV  struct     r/w+cnt      U0   u0,space2001     1
;                                       UAV     u32          2d      U1             u0     1
;                                       UAV    byte         r/w      U2             u1     1
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
%"class.RWStructuredBuffer<NvShaderExtnStruct>" = type { %struct.NvShaderExtnStruct }
%struct.NvShaderExtnStruct = type { i32, i32, i32, <4 x i32>, [3 x <4 x i32>], <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>, i32, [28 x float] }
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

@"\01?tiledOffsets256@@3PAIA" = external addrspace(3) global [8 x i32], align 4

define void @cs_indices() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %12 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %13 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %8, i32 %9, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %14 = extractvalue %dx.types.ResRet.f32 %13, 0
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = fcmp fast ogt float %14, 9.843750e-01
  %17 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.i32 %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %127, label %20, !dx.controlflow.hints !21

; <label>:20                                      ; preds = %0
  %21 = sitofp i32 %9 to float
  %22 = fadd fast float %21, 5.000000e-01
  %23 = sitofp i32 %8 to float
  %24 = fadd fast float %23, 5.000000e-01
  %25 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %27 = select i1 %16, float %25, float %26
  %28 = select i1 %16, float 6.400000e+01, float 0x3FF0410420000000
  %29 = call float @dx.op.unary.f32(i32 7, float %14)  ; Saturate(value)
  %30 = fmul fast float %29, %28
  %31 = select i1 %16, float -6.300000e+01, float -0.000000e+00
  %32 = fadd fast float %30, %31
  %33 = call float @dx.op.binary.f32(i32 35, float %32, float 0x3E45798EE0000000)  ; FMax(a,b)
  %34 = fdiv fast float %27, %33
  %35 = fptoui float %24 to i32
  %36 = fptoui float %22 to i32
  %37 = lshr i32 %35, 4
  %38 = lshr i32 %36, 4
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 0
  %41 = call i32 @dx.op.tertiary.i32(i32 49, i32 %38, i32 %40, i32 %37)  ; UMad(a,b,c)
  %42 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.i32 %42, 0
  %44 = add nsw i32 %43, -1
  %45 = call i32 @dx.op.binary.i32(i32 37, i32 %44, i32 0)  ; IMax(a,b)
  %46 = call float @dx.op.binary.f32(i32 35, float %34, float 0.000000e+00)  ; FMax(a,b)
  %47 = fptoui float %46 to i32
  %48 = lshr i32 %47, 5
  %49 = call i32 @dx.op.binary.i32(i32 40, i32 %48, i32 8191)  ; UMin(a,b)
  %50 = shl i32 %49, 2
  %51 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = lshr i32 %52, 16
  %54 = and i32 %52, 65535
  %55 = lshr i32 %52, 21
  %56 = lshr i32 %54, 5
  %57 = call i32 @dx.op.binary.i32(i32 40, i32 %56, i32 %45)  ; UMin(a,b)
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %127, label %59

; <label>:59                                      ; preds = %20
  br label %60

; <label>:60                                      ; preds = %120, %59
  %61 = phi i32 [ %124, %120 ], [ %55, %59 ]
  %62 = phi i32 [ %121, %120 ], [ 0, %59 ]
  %63 = phi i32 [ %122, %120 ], [ 0, %59 ]
  %64 = phi i32 [ %123, %120 ], [ 0, %59 ]
  %65 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.i32 %65, 0
  %67 = call i32 @dx.op.tertiary.i32(i32 49, i32 %41, i32 %66, i32 %61)  ; UMad(a,b,c)
  %68 = shl i32 %67, 2
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = shl i32 %61, 5
  %72 = sub nsw i32 %53, %71
  %73 = call i32 @dx.op.binary.i32(i32 37, i32 %72, i32 0)  ; IMax(a,b)
  %74 = call i32 @dx.op.binary.i32(i32 38, i32 %73, i32 31)  ; IMin(a,b)
  %75 = sub nsw i32 1, %53
  %76 = add nsw i32 %75, %54
  %77 = call i32 @dx.op.binary.i32(i32 37, i32 %76, i32 0)  ; IMax(a,b)
  %78 = call i32 @dx.op.binary.i32(i32 38, i32 %77, i32 32)  ; IMin(a,b)
  %79 = and i32 %78, 31
  %80 = shl i32 -1, %79
  %81 = xor i32 %80, -1
  %82 = and i32 %74, 31
  %83 = shl i32 %81, %82
  %84 = icmp eq i32 %78, 32
  %85 = select i1 %84, i32 -1, i32 %83
  %86 = and i32 %85, %70
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %120, label %88

; <label>:88                                      ; preds = %60
  br label %89

; <label>:89                                      ; preds = %114, %88
  %90 = phi i32 [ %98, %114 ], [ %86, %88 ]
  %91 = phi i32 [ %115, %114 ], [ %62, %88 ]
  %92 = phi i32 [ %116, %114 ], [ %63, %88 ]
  %93 = phi i32 [ %117, %114 ], [ %64, %88 ]
  %94 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %90)  ; FirstbitLo(value)
  %95 = add i32 %94, %71
  %96 = and i32 %94, 31
  %97 = shl i32 1, %96
  %98 = xor i32 %97, %90
  %99 = icmp ult i32 %93, 4
  br i1 %99, label %100, label %106, !dx.controlflow.hints !22

; <label>:100                                     ; preds = %89
  %101 = call i32 @dx.op.binary.i32(i32 40, i32 %95, i32 255)  ; UMin(a,b)
  %102 = shl i32 %93, 3
  %103 = and i32 %102, 24
  %104 = shl i32 %101, %103
  %105 = or i32 %104, %91
  br label %114

; <label>:106                                     ; preds = %89
  %107 = icmp ult i32 %93, 7
  br i1 %107, label %108, label %114, !dx.controlflow.hints !23

; <label>:108                                     ; preds = %106
  %109 = call i32 @dx.op.binary.i32(i32 40, i32 %95, i32 255)  ; UMin(a,b)
  %110 = shl i32 %93, 3
  %111 = and i32 %110, 24
  %112 = shl i32 %109, %111
  %113 = or i32 %112, %92
  br label %114

; <label>:114                                     ; preds = %108, %106, %100
  %115 = phi i32 [ %105, %100 ], [ %91, %108 ], [ %91, %106 ]
  %116 = phi i32 [ %92, %100 ], [ %113, %108 ], [ %92, %106 ]
  %117 = add i32 %93, 1
  %118 = icmp eq i32 %90, %97
  br i1 %118, label %119, label %89, !llvm.loop !24

; <label>:119                                     ; preds = %114
  br label %120

; <label>:120                                     ; preds = %119, %60
  %121 = phi i32 [ %62, %60 ], [ %115, %119 ]
  %122 = phi i32 [ %63, %60 ], [ %116, %119 ]
  %123 = phi i32 [ %64, %60 ], [ %117, %119 ]
  %124 = add i32 %61, 1
  %125 = icmp ugt i32 %124, %57
  br i1 %125, label %126, label %60

; <label>:126                                     ; preds = %120
  br label %127

; <label>:127                                     ; preds = %126, %20, %0
  %128 = phi i32 [ 0, %0 ], [ 0, %20 ], [ %121, %126 ]
  %129 = phi i32 [ 0, %0 ], [ 0, %20 ], [ %122, %126 ]
  %130 = phi i32 [ 0, %0 ], [ 0, %20 ], [ %123, %126 ]
  %131 = icmp ult i32 %130, 7
  br i1 %131, label %132, label %148

; <label>:132                                     ; preds = %127
  br label %133

; <label>:133                                     ; preds = %133, %132
  %134 = phi i32 [ %145, %133 ], [ %130, %132 ]
  %135 = phi i32 [ %142, %133 ], [ %128, %132 ]
  %136 = phi i32 [ %144, %133 ], [ %129, %132 ]
  %137 = icmp ult i32 %134, 4
  %138 = shl i32 %134, 3
  %139 = and i32 %138, 24
  %140 = shl i32 255, %139
  %141 = select i1 %137, i32 %140, i32 0
  %142 = or i32 %135, %141
  %143 = select i1 %137, i32 0, i32 %140
  %144 = or i32 %136, %143
  %145 = add nuw nsw i32 %134, 1
  %146 = icmp eq i32 %145, 7
  br i1 %146, label %147, label %133

; <label>:147                                     ; preds = %133
  br label %148

; <label>:148                                     ; preds = %147, %127
  %149 = phi i32 [ %128, %127 ], [ %142, %147 ]
  %150 = phi i32 [ %129, %127 ], [ %144, %147 ]
  %151 = shl i32 %10, 4
  %152 = shl i32 %11, 4
  %153 = or i32 %151, 15
  %154 = or i32 %152, 15
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = fptoui float %156 to i32
  %159 = fptoui float %157 to i32
  %160 = icmp ult i32 %153, %158
  %161 = icmp ult i32 %154, %159
  %162 = and i1 %160, %161
  br i1 %162, label %163, label %214, !dx.controlflow.hints !26

; <label>:163                                     ; preds = %148
  %164 = call i32 @dx.op.binary.i32(i32 40, i32 7, i32 %130)  ; UMin(a,b)
  %165 = and i32 %12, 31
  %166 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %166, i32 76, i32 %164, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %166, i32 80, i32 16, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %166, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %166, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %167 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %168 = add i32 %167, %164
  %169 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %169, i32 76, i32 %168, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %169, i32 80, i32 8, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %169, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %169, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %170 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %171 = add i32 %170, %168
  %172 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %172, i32 76, i32 %171, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %172, i32 80, i32 4, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %172, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %172, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %173 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %174 = add i32 %173, %171
  %175 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %175, i32 76, i32 %174, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %175, i32 80, i32 2, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %175, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %175, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %176 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %177 = add i32 %176, %174
  %178 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %178, i32 76, i32 %177, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %178, i32 80, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %178, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %178, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %179 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %180 = icmp eq i32 %165, 0
  br i1 %180, label %181, label %185, !dx.controlflow.hints !27

; <label>:181                                     ; preds = %163
  %182 = add i32 %179, %177
  %183 = lshr i32 %12, 5
  %184 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %183
  store i32 %182, i32 addrspace(3)* %184, align 4, !tbaa !28
  br label %185

; <label>:185                                     ; preds = %181, %163
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %186 = icmp ult i32 %12, 8
  br i1 %186, label %187, label %199, !dx.controlflow.hints !32

; <label>:187                                     ; preds = %185
  %188 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 %12
  %189 = load i32, i32 addrspace(3)* %188, align 4, !tbaa !28
  %190 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %190, i32 76, i32 %189, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %190, i32 80, i32 4, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %190, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %190, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %191 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %192 = add i32 %191, %189
  %193 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %193, i32 76, i32 %192, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %193, i32 80, i32 2, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %193, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %193, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %194 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %195 = add i32 %194, %192
  %196 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %196, i32 76, i32 %195, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %196, i32 80, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %196, i32 84, i32 31, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %196, i32 0, i32 3, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %197 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %3, i8 1)  ; BufferUpdateCounter(uav,inc)
  %198 = add i32 %197, %195
  br label %199

; <label>:199                                     ; preds = %187, %185
  %200 = phi i32 [ %198, %187 ], [ 0, %185 ]
  %201 = icmp eq i32 %12, 0
  br i1 %201, label %202, label %203, !dx.controlflow.hints !33

; <label>:202                                     ; preds = %199
  store i32 %200, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !28
  br label %203

; <label>:203                                     ; preds = %202, %199
  %204 = phi i1 [ %201, %202 ], [ false, %199 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %204, label %205, label %214, !dx.controlflow.hints !34

; <label>:205                                     ; preds = %203
  %206 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?tiledOffsets256@@3PAIA", i32 0, i32 0), align 4, !tbaa !28
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fptoui float %208 to i32
  %210 = lshr i32 %209, 4
  %211 = mul i32 %210, %11
  %212 = add i32 %211, %10
  %213 = shl i32 %212, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %213, i32 undef, i32 %206, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %214

; <label>:214                                     ; preds = %205, %203, %148
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %8, i32 %9, i32 undef, i32 %149, i32 %150, i32 %149, i32 %149, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
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

; Function Attrs: nounwind
declare i32 @dx.op.bufferUpdateCounter(i32, %dx.types.Handle, i8) #3

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !16, null}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 10, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!10 = !{!11, !13, !15}
!11 = !{i32 0, %"class.RWStructuredBuffer<NvShaderExtnStruct>"* undef, !"", i32 2001, i32 0, i32 1, i32 12, i1 false, i1 true, i1 false, !12}
!12 = !{i32 1, i32 256}
!13 = !{i32 1, %"class.RWTexture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 5}
!15 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{void ()* @cs_indices, !"cs_indices", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 16, i32 16, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}

