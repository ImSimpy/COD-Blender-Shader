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
; shader hash: ac7a744ef1360712824c5ff76f8e89c9
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
;   [16 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t8     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     f32          2d      T2             t1     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5             t4     1
;                                   texture     f32          2d      T6             t5     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;                                       UAV    byte         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
%SunvisPrepassConstants = type { <4 x i32> }

define void @prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = extractvalue %dx.types.CBufRet.f32 %15, 1
  %18 = fptoui float %16 to i32
  %19 = fptoui float %17 to i32
  %20 = add i32 %18, 15
  %21 = add i32 %19, 15
  %22 = lshr i32 %20, 4
  %23 = lshr i32 %21, 4
  %24 = icmp ult i32 %13, %22
  %25 = icmp ult i32 %14, %23
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %1048, !dx.controlflow.hints !24

; <label>:27                                      ; preds = %0
  %28 = shl i32 %13, 1
  %29 = shl i32 %14, 4
  %30 = lshr i32 %14, 1
  %31 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %32 = extractvalue %dx.types.CBufRet.i32 %31, 0
  %33 = shl i32 %30, 2
  %34 = mul i32 %33, %32
  %35 = and i32 %13, 2147483644
  %36 = add i32 %34, %35
  %37 = and i32 %29, 16
  %38 = and i32 %28, 6
  %39 = or i32 %37, %38
  %40 = shl i32 1, %39
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.CBufRet.i32 %31, 1
  %44 = shl i32 %43, 2
  %45 = add i32 %44, %36
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = mul i32 %43, 12
  %49 = add i32 %48, %36
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = or i32 %39, 8
  %53 = shl i32 1, %52
  %54 = or i32 %53, %40
  %55 = or i32 %53, %40
  %56 = or i32 %53, %40
  %57 = or i32 %39, 1
  %58 = shl i32 1, %57
  %59 = or i32 %54, %58
  %60 = or i32 %55, %58
  %61 = or i32 %56, %58
  %62 = or i32 %39, 9
  %63 = shl i32 1, %62
  %64 = or i32 %59, %63
  %65 = and i32 %42, %64
  %66 = icmp ne i32 %65, 0
  %67 = or i32 %60, %63
  %68 = and i32 %47, %67
  %69 = icmp ne i32 %68, 0
  %70 = or i32 %61, %63
  %71 = and i32 %51, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73, !dx.controlflow.hints !25

; <label>:73                                      ; preds = %27
  %74 = select i1 %66, i32 12, i32 11
  %75 = select i1 %69, i32 14, i32 %74
  br label %1037

; <label>:76                                      ; preds = %27
  br i1 %66, label %767, label %77, !dx.controlflow.hints !26

; <label>:77                                      ; preds = %76
  %78 = fptosi float %16 to i32
  %79 = fptosi float %17 to i32
  %80 = ashr i32 %78, 4
  %81 = ashr i32 %79, 4
  %82 = add nsw i32 %80, -1
  %83 = add nsw i32 %81, -1
  %84 = shl i32 %13, 4
  %85 = uitofp i32 %84 to float
  %86 = uitofp i32 %29 to float
  %87 = call i32 @dx.op.binary.i32(i32 40, i32 %13, i32 %82)  ; UMin(a,b)
  %88 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 %83)  ; UMin(a,b)
  %89 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 4, i32 %87, i32 %88, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = fcmp fast ogt float %90, -1.000000e+00
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %94 = select i1 %91, float %93, float 1.000000e+00
  %95 = fadd fast float %90, 1.000000e+00
  %96 = fmul fast float %94, %95
  %97 = call float @dx.op.unary.f32(i32 6, float %96)  ; FAbs(value)
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 1, i32 %87, i32 %88, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fcmp fast ogt float %99, -1.000000e+00
  %101 = select i1 %100, float %93, float 1.000000e+00
  %102 = fadd fast float %99, 1.000000e+00
  %103 = fmul fast float %101, %102
  %104 = call float @dx.op.unary.f32(i32 6, float %103)  ; FAbs(value)
  br label %105

; <label>:105                                     ; preds = %250, %77
  %106 = phi float [ -6.550000e+04, %77 ], [ %242, %250 ]
  %107 = phi float [ -6.550000e+04, %77 ], [ %243, %250 ]
  %108 = phi float [ -6.550000e+04, %77 ], [ %244, %250 ]
  %109 = phi float [ 6.550000e+04, %77 ], [ %239, %250 ]
  %110 = phi float [ 6.550000e+04, %77 ], [ %240, %250 ]
  %111 = phi float [ 6.550000e+04, %77 ], [ %241, %250 ]
  %112 = phi i32 [ 0, %77 ], [ %251, %250 ]
  br label %113

; <label>:113                                     ; preds = %247, %105
  %114 = phi float [ %106, %105 ], [ %242, %247 ]
  %115 = phi float [ %107, %105 ], [ %243, %247 ]
  %116 = phi float [ %108, %105 ], [ %244, %247 ]
  %117 = phi float [ %109, %105 ], [ %239, %247 ]
  %118 = phi float [ %110, %105 ], [ %240, %247 ]
  %119 = phi float [ %111, %105 ], [ %241, %247 ]
  %120 = phi i32 [ 0, %105 ], [ %248, %247 ]
  %121 = uitofp i32 %112 to float
  %122 = uitofp i32 %120 to float
  %123 = fmul fast float %121, 1.600000e+01
  %124 = fmul fast float %122, 1.600000e+01
  %125 = fadd fast float %123, %85
  %126 = fadd fast float %124, %86
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 3
  %130 = fmul fast float %128, %125
  %131 = fmul fast float %126, %129
  %132 = call float @dx.op.unary.f32(i32 7, float %130)  ; Saturate(value)
  %133 = call float @dx.op.unary.f32(i32 7, float %131)  ; Saturate(value)
  br label %134

; <label>:134                                     ; preds = %208, %113
  %135 = phi float [ %114, %113 ], [ %242, %208 ]
  %136 = phi float [ %115, %113 ], [ %243, %208 ]
  %137 = phi float [ %116, %113 ], [ %244, %208 ]
  %138 = phi float [ %117, %113 ], [ %239, %208 ]
  %139 = phi float [ %118, %113 ], [ %240, %208 ]
  %140 = phi float [ %119, %113 ], [ %241, %208 ]
  %141 = phi i32 [ 0, %113 ], [ %245, %208 ]
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, float %104, float %97
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = fcmp fast oeq float %145, 0.000000e+00
  %147 = fmul fast float %132, 2.000000e+00
  %148 = fmul fast float %133, 2.000000e+00
  %149 = fsub fast float 1.000000e+00, %147
  %150 = fsub fast float 1.000000e+00, %148
  br i1 %146, label %151, label %180, !dx.controlflow.hints !27

; <label>:151                                     ; preds = %134
  %152 = fsub fast float -0.000000e+00, %149
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 107)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 108)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 109)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %168 = fmul fast float %154, %152
  %169 = call float @dx.op.tertiary.f32(i32 46, float %150, float %155, float %168)  ; FMad(a,b,c)
  %170 = call float @dx.op.tertiary.f32(i32 46, float %143, float %156, float %169)  ; FMad(a,b,c)
  %171 = fadd fast float %170, %157
  %172 = fmul fast float %159, %152
  %173 = call float @dx.op.tertiary.f32(i32 46, float %150, float %160, float %172)  ; FMad(a,b,c)
  %174 = call float @dx.op.tertiary.f32(i32 46, float %143, float %161, float %173)  ; FMad(a,b,c)
  %175 = fadd fast float %174, %162
  %176 = fmul fast float %164, %152
  %177 = call float @dx.op.tertiary.f32(i32 46, float %150, float %165, float %176)  ; FMad(a,b,c)
  %178 = call float @dx.op.tertiary.f32(i32 46, float %143, float %166, float %177)  ; FMad(a,b,c)
  %179 = fadd fast float %178, %167
  br label %208

; <label>:180                                     ; preds = %134
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = fmul fast float %182, %149
  %186 = fmul fast float %183, %149
  %187 = fmul fast float %184, %149
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 0
  %190 = extractvalue %dx.types.CBufRet.f32 %188, 1
  %191 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %192 = fmul fast float %189, %150
  %193 = fmul fast float %190, %150
  %194 = fmul fast float %191, %150
  %195 = fadd fast float %192, %185
  %196 = fadd fast float %193, %186
  %197 = fadd fast float %194, %187
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %202 = fadd fast float %195, %199
  %203 = fadd fast float %196, %200
  %204 = fadd fast float %197, %201
  %205 = fmul fast float %202, %143
  %206 = fmul fast float %203, %143
  %207 = fmul fast float %204, %143
  br label %208

; <label>:208                                     ; preds = %180, %151
  %209 = phi float [ %171, %151 ], [ %205, %180 ]
  %210 = phi float [ %175, %151 ], [ %206, %180 ]
  %211 = phi float [ %179, %151 ], [ %207, %180 ]
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %221 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %227 = fmul fast float %213, %209
  %228 = call float @dx.op.tertiary.f32(i32 46, float %210, float %214, float %227)  ; FMad(a,b,c)
  %229 = call float @dx.op.tertiary.f32(i32 46, float %211, float %215, float %228)  ; FMad(a,b,c)
  %230 = fadd fast float %229, %216
  %231 = fmul fast float %218, %209
  %232 = call float @dx.op.tertiary.f32(i32 46, float %210, float %219, float %231)  ; FMad(a,b,c)
  %233 = call float @dx.op.tertiary.f32(i32 46, float %211, float %220, float %232)  ; FMad(a,b,c)
  %234 = fadd fast float %233, %221
  %235 = fmul fast float %223, %209
  %236 = call float @dx.op.tertiary.f32(i32 46, float %210, float %224, float %235)  ; FMad(a,b,c)
  %237 = call float @dx.op.tertiary.f32(i32 46, float %211, float %225, float %236)  ; FMad(a,b,c)
  %238 = fadd fast float %237, %226
  %239 = call float @dx.op.binary.f32(i32 36, float %230, float %138)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %234, float %139)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 36, float %238, float %140)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %230, float %135)  ; FMax(a,b)
  %243 = call float @dx.op.binary.f32(i32 35, float %234, float %136)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %238, float %137)  ; FMax(a,b)
  %245 = add nuw nsw i32 %141, 1
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %134

; <label>:247                                     ; preds = %208
  %248 = add nuw nsw i32 %120, 1
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %250, label %113

; <label>:250                                     ; preds = %247
  %251 = add nuw nsw i32 %112, 1
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %253, label %105

; <label>:253                                     ; preds = %250
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %258 = call float @dx.op.binary.f32(i32 35, float %255, float %239)  ; FMax(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float %256, float %240)  ; FMax(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %257, float %241)  ; FMax(a,b)
  %261 = call float @dx.op.binary.f32(i32 36, float %258, float %242)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 36, float %259, float %243)  ; FMin(a,b)
  %263 = call float @dx.op.binary.f32(i32 36, float %260, float %244)  ; FMin(a,b)
  %264 = fsub fast float %239, %255
  %265 = fsub fast float %240, %256
  %266 = call float @dx.op.unary.f32(i32 6, float %264)  ; FAbs(value)
  %267 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %268 = fsub fast float %242, %255
  %269 = fsub fast float %243, %256
  %270 = call float @dx.op.unary.f32(i32 6, float %268)  ; FAbs(value)
  %271 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %272 = fcmp fast ogt float %266, %270
  %273 = fcmp fast ogt float %267, %271
  %274 = select i1 %272, float %239, float %242
  %275 = select i1 %273, float %240, float %243
  %276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.i32 %276, 0
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %281 = fmul fast float %279, %104
  %282 = fadd fast float %281, %280
  %283 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %284 = fsub fast float %261, %255
  %285 = fsub fast float %262, %256
  %286 = fcmp fast olt float %284, 0.000000e+00
  %287 = fcmp fast olt float %285, 0.000000e+00
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %291 = extractvalue %dx.types.CBufRet.f32 %288, 2
  %292 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %293 = select i1 %286, float %289, float %291
  %294 = select i1 %287, float %290, float %292
  %295 = fmul fast float %293, %284
  %296 = fmul fast float %294, %285
  %297 = call float @dx.op.unary.f32(i32 6, float %295)  ; FAbs(value)
  %298 = call float @dx.op.unary.f32(i32 6, float %296)  ; FAbs(value)
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = call float @dx.op.binary.f32(i32 35, float %297, float %298)  ; FMax(a,b)
  %302 = fsub fast float %300, %301
  %303 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %304 = call float @dx.op.binary.f32(i32 36, float %303, float %283)  ; FMin(a,b)
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %307 = fsub fast float %306, %263
  %308 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %309 = fmul fast float %307, %308
  %310 = fsub fast float 1.000000e+00, %309
  %311 = call float @dx.op.unary.f32(i32 7, float %310)  ; Saturate(value)
  %312 = fcmp fast oeq float %304, 1.000000e+00
  br i1 %312, label %313, label %319, !dx.controlflow.hints !28

; <label>:313                                     ; preds = %253
  %314 = fmul fast float %279, %97
  %315 = fadd fast float %314, %280
  %316 = call float @dx.op.unary.f32(i32 7, float %315)  ; Saturate(value)
  %317 = fcmp fast oeq float %316, 1.000000e+00
  %318 = select i1 %317, i32 0, i32 14
  br label %409

; <label>:319                                     ; preds = %253
  %320 = icmp eq i32 %277, 0
  br i1 %320, label %409, label %321, !dx.controlflow.hints !29

; <label>:321                                     ; preds = %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %326 = fmul fast float %325, %261
  %327 = fmul fast float %325, %262
  %328 = fadd fast float %326, %323
  %329 = fadd fast float %327, %324
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = fsub fast float %328, %331
  %334 = fsub fast float %329, %332
  %335 = fcmp fast olt float %333, 0.000000e+00
  %336 = fcmp fast olt float %334, 0.000000e+00
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %342 = select i1 %335, float %338, float %340
  %343 = select i1 %336, float %339, float %341
  %344 = fmul fast float %342, %333
  %345 = fmul fast float %343, %334
  %346 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %347 = call float @dx.op.unary.f32(i32 6, float %345)  ; FAbs(value)
  %348 = call float @dx.op.binary.f32(i32 35, float %346, float %347)  ; FMax(a,b)
  %349 = fsub fast float %300, %348
  %350 = call float @dx.op.unary.f32(i32 7, float %349)  ; Saturate(value)
  %351 = fsub fast float %350, %304
  %352 = call float @dx.op.binary.f32(i32 35, float %351, float 0.000000e+00)  ; FMax(a,b)
  %353 = fmul fast float %352, %311
  %354 = fcmp fast oeq float %353, 1.000000e+00
  br i1 %354, label %355, label %364, !dx.controlflow.hints !30

; <label>:355                                     ; preds = %321
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 86)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = fmul fast float %357, %97
  %360 = fadd fast float %359, %358
  %361 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %362 = fcmp fast oeq float %361, 1.000000e+00
  %363 = select i1 %362, i32 1, i32 14
  br label %409

; <label>:364                                     ; preds = %321
  %365 = icmp ugt i32 %277, 1
  br i1 %365, label %366, label %409, !dx.controlflow.hints !31

; <label>:366                                     ; preds = %364
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %371 = fmul fast float %370, %261
  %372 = fmul fast float %370, %262
  %373 = fadd fast float %371, %368
  %374 = fadd fast float %372, %369
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = fsub fast float %373, %376
  %379 = fsub fast float %374, %377
  %380 = fcmp fast olt float %378, 0.000000e+00
  %381 = fcmp fast olt float %379, 0.000000e+00
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = extractvalue %dx.types.CBufRet.f32 %382, 3
  %387 = select i1 %380, float %383, float %385
  %388 = select i1 %381, float %384, float %386
  %389 = fmul fast float %387, %378
  %390 = fmul fast float %388, %379
  %391 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %392 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %393 = call float @dx.op.binary.f32(i32 35, float %391, float %392)  ; FMax(a,b)
  %394 = fsub fast float %300, %393
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = fsub fast float %395, %353
  %397 = call float @dx.op.binary.f32(i32 35, float %396, float 0.000000e+00)  ; FMax(a,b)
  %398 = fmul fast float %397, %311
  %399 = fcmp fast oeq float %398, 1.000000e+00
  br i1 %399, label %400, label %409, !dx.controlflow.hints !32

; <label>:400                                     ; preds = %366
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 87)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = fmul fast float %402, %97
  %405 = fadd fast float %404, %403
  %406 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %407 = fcmp fast oeq float %406, 1.000000e+00
  %408 = select i1 %407, i32 2, i32 14
  br label %409

; <label>:409                                     ; preds = %400, %366, %364, %355, %319, %313
  %410 = phi i32 [ %318, %313 ], [ %363, %355 ], [ %408, %400 ], [ 14, %366 ], [ 14, %364 ], [ 14, %319 ]
  %411 = phi float [ 1.000000e+00, %313 ], [ 1.000000e+00, %355 ], [ 1.000000e+00, %400 ], [ %398, %366 ], [ %353, %364 ], [ %304, %319 ]
  %412 = fcmp fast oeq float %411, 0.000000e+00
  %413 = select i1 %412, i32 13, i32 %410
  %414 = icmp ugt i32 %413, %277
  br i1 %414, label %450, label %415, !dx.controlflow.hints !33

; <label>:415                                     ; preds = %409
  %416 = add nuw nsw i32 %413, 67
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %416)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 3
  %421 = fmul fast float %420, %274
  %422 = fmul fast float %420, %275
  %423 = fadd fast float %421, %418
  %424 = fadd fast float %422, %419
  %425 = add nuw nsw i32 %413, 71
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %425)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = fsub fast float %423, %427
  %430 = fsub fast float %424, %428
  %431 = fcmp fast olt float %429, 0.000000e+00
  %432 = fcmp fast olt float %430, 0.000000e+00
  %433 = add nuw nsw i32 %413, 75
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %433)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 0
  %436 = extractvalue %dx.types.CBufRet.f32 %434, 1
  %437 = extractvalue %dx.types.CBufRet.f32 %434, 2
  %438 = extractvalue %dx.types.CBufRet.f32 %434, 3
  %439 = select i1 %431, float %435, float %437
  %440 = select i1 %432, float %436, float %438
  %441 = fmul fast float %439, %429
  %442 = fmul fast float %440, %430
  %443 = call float @dx.op.unary.f32(i32 6, float %441)  ; FAbs(value)
  %444 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  %445 = call float @dx.op.binary.f32(i32 35, float %443, float %444)  ; FMax(a,b)
  %446 = fsub fast float %300, %445
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fcmp fast olt float %447, 1.000000e+00
  br i1 %448, label %449, label %450, !dx.controlflow.hints !34

; <label>:449                                     ; preds = %415
  br label %450

; <label>:450                                     ; preds = %449, %415, %409
  %451 = phi i32 [ 14, %449 ], [ %413, %415 ], [ %413, %409 ]
  %452 = icmp eq i32 %451, 13
  br i1 %452, label %453, label %459, !dx.controlflow.hints !35

; <label>:453                                     ; preds = %450
  %454 = fsub fast float %97, %104
  %455 = extractvalue %dx.types.CBufRet.i32 %276, 1
  %456 = bitcast i32 %455 to float
  %457 = fcmp fast ult float %454, %456
  br i1 %457, label %459, label %458, !dx.controlflow.hints !36

; <label>:458                                     ; preds = %453
  br label %459

; <label>:459                                     ; preds = %458, %453, %450
  %460 = phi i32 [ 14, %458 ], [ 13, %453 ], [ %451, %450 ]
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %555, !dx.controlflow.hints !37

; <label>:462                                     ; preds = %459
  %463 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = fmul fast float %465, %463
  %469 = fadd fast float %244, 0x3F10000000000000
  %470 = fadd fast float %469, %467
  %471 = fadd fast float %470, %468
  %472 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %473 = extractvalue %dx.types.CBufRet.i32 %276, 2
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %1037, label %475, !dx.controlflow.hints !38

; <label>:475                                     ; preds = %462
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %481 = fmul fast float %479, %477
  %482 = fmul fast float %480, %477
  %483 = call float @dx.op.unary.f32(i32 28, float %481)  ; Round_pi(value)
  %484 = call float @dx.op.unary.f32(i32 28, float %482)  ; Round_pi(value)
  %485 = fptosi float %483 to i32
  %486 = fptosi float %484 to i32
  %487 = sitofp i32 %485 to float
  %488 = sitofp i32 %486 to float
  %489 = fmul fast float %479, %239
  %490 = fmul fast float %480, %240
  %491 = fsub fast float -1.500000e+00, %487
  %492 = fadd fast float %491, %489
  %493 = fsub fast float -1.500000e+00, %488
  %494 = fadd fast float %493, %490
  %495 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %492)  ; FMax(a,b)
  %496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %494)  ; FMax(a,b)
  %497 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %498 = call float @dx.op.unary.f32(i32 27, float %496)  ; Round_ni(value)
  %499 = fptosi float %497 to i32
  %500 = fptosi float %498 to i32
  %501 = fmul fast float %479, %242
  %502 = fmul fast float %480, %243
  %503 = fadd fast float %487, 1.500000e+00
  %504 = fadd fast float %503, %501
  %505 = fadd fast float %488, 1.500000e+00
  %506 = fadd fast float %505, %502
  %507 = call float @dx.op.binary.f32(i32 36, float %479, float %504)  ; FMin(a,b)
  %508 = call float @dx.op.binary.f32(i32 36, float %480, float %506)  ; FMin(a,b)
  %509 = call float @dx.op.unary.f32(i32 28, float %507)  ; Round_pi(value)
  %510 = call float @dx.op.unary.f32(i32 28, float %508)  ; Round_pi(value)
  %511 = fptosi float %509 to i32
  %512 = fptosi float %510 to i32
  %513 = sub i32 %511, %499
  %514 = sub i32 %512, %500
  %515 = call i32 @dx.op.binary.i32(i32 38, i32 %513, i32 %514)  ; IMin(a,b)
  %516 = sitofp i32 %515 to float
  %517 = call float @dx.op.unary.f32(i32 23, float %516)  ; Log(value)
  %518 = call float @dx.op.unary.f32(i32 28, float %517)  ; Round_pi(value)
  %519 = fptosi float %518 to i32
  %520 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %519)  ; IMax(a,b)
  %521 = call i32 @dx.op.binary.i32(i32 38, i32 %520, i32 8)  ; IMin(a,b)
  %522 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %519)  ; IMin(a,b)
  %523 = call i32 @dx.op.binary.i32(i32 37, i32 %522, i32 %521)  ; IMax(a,b)
  %524 = add nsw i32 %523, -1
  %525 = and i32 %523, 31
  %526 = ashr i32 %499, %525
  %527 = ashr i32 %500, %525
  %528 = ashr i32 %511, %525
  %529 = ashr i32 %512, %525
  %530 = icmp sgt i32 %526, %528
  br i1 %530, label %551, label %531

; <label>:531                                     ; preds = %475
  br label %532

; <label>:532                                     ; preds = %546, %531
  %533 = phi float [ %547, %546 ], [ 1.000000e+00, %531 ]
  %534 = phi i32 [ %548, %546 ], [ %526, %531 ]
  %535 = icmp sgt i32 %527, %529
  br i1 %535, label %546, label %536

; <label>:536                                     ; preds = %532
  br label %537

; <label>:537                                     ; preds = %537, %536
  %538 = phi float [ %542, %537 ], [ %533, %536 ]
  %539 = phi i32 [ %543, %537 ], [ %527, %536 ]
  %540 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 %524, i32 %534, i32 %539, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = call float @dx.op.binary.f32(i32 36, float %538, float %541)  ; FMin(a,b)
  %543 = add nsw i32 %539, 1
  %544 = icmp slt i32 %539, %529
  br i1 %544, label %537, label %545

; <label>:545                                     ; preds = %537
  br label %546

; <label>:546                                     ; preds = %545, %532
  %547 = phi float [ %533, %532 ], [ %542, %545 ]
  %548 = add nsw i32 %534, 1
  %549 = icmp slt i32 %534, %528
  br i1 %549, label %532, label %550

; <label>:550                                     ; preds = %546
  br label %551

; <label>:551                                     ; preds = %550, %475
  %552 = phi float [ 1.000000e+00, %475 ], [ %547, %550 ]
  %553 = fcmp fast olt float %472, %552
  %554 = select i1 %553, i32 11, i32 0
  br label %1037

; <label>:555                                     ; preds = %459
  %556 = icmp eq i32 %460, 1
  br i1 %556, label %557, label %661, !dx.controlflow.hints !39

; <label>:557                                     ; preds = %555
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %564 = fmul fast float %561, %560
  %565 = fadd fast float %244, 0x3F10000000000000
  %566 = fadd fast float %565, %563
  %567 = fadd fast float %566, %564
  %568 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %569 = extractvalue %dx.types.CBufRet.i32 %276, 2
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %1037, label %571, !dx.controlflow.hints !38

; <label>:571                                     ; preds = %557
  %572 = fmul fast float %559, %243
  %573 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %574 = fadd fast float %572, %573
  %575 = fmul fast float %559, %242
  %576 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %577 = fadd fast float %575, %576
  %578 = fmul fast float %559, %240
  %579 = fadd fast float %578, %573
  %580 = fmul fast float %559, %239
  %581 = fadd fast float %580, %576
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 1
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 0
  %586 = extractvalue %dx.types.CBufRet.f32 %584, 1
  %587 = fmul fast float %585, %583
  %588 = fmul fast float %586, %583
  %589 = call float @dx.op.unary.f32(i32 28, float %587)  ; Round_pi(value)
  %590 = call float @dx.op.unary.f32(i32 28, float %588)  ; Round_pi(value)
  %591 = fptosi float %589 to i32
  %592 = fptosi float %590 to i32
  %593 = sitofp i32 %591 to float
  %594 = sitofp i32 %592 to float
  %595 = fmul fast float %585, %581
  %596 = fmul fast float %586, %579
  %597 = fsub fast float -1.500000e+00, %593
  %598 = fadd fast float %597, %595
  %599 = fsub fast float -1.500000e+00, %594
  %600 = fadd fast float %599, %596
  %601 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %598)  ; FMax(a,b)
  %602 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %600)  ; FMax(a,b)
  %603 = call float @dx.op.unary.f32(i32 27, float %601)  ; Round_ni(value)
  %604 = call float @dx.op.unary.f32(i32 27, float %602)  ; Round_ni(value)
  %605 = fptosi float %603 to i32
  %606 = fptosi float %604 to i32
  %607 = fmul fast float %585, %577
  %608 = fmul fast float %586, %574
  %609 = fadd fast float %593, 1.500000e+00
  %610 = fadd fast float %609, %607
  %611 = fadd fast float %594, 1.500000e+00
  %612 = fadd fast float %611, %608
  %613 = call float @dx.op.binary.f32(i32 36, float %585, float %610)  ; FMin(a,b)
  %614 = call float @dx.op.binary.f32(i32 36, float %586, float %612)  ; FMin(a,b)
  %615 = call float @dx.op.unary.f32(i32 28, float %613)  ; Round_pi(value)
  %616 = call float @dx.op.unary.f32(i32 28, float %614)  ; Round_pi(value)
  %617 = fptosi float %615 to i32
  %618 = fptosi float %616 to i32
  %619 = sub i32 %617, %605
  %620 = sub i32 %618, %606
  %621 = call i32 @dx.op.binary.i32(i32 38, i32 %619, i32 %620)  ; IMin(a,b)
  %622 = sitofp i32 %621 to float
  %623 = call float @dx.op.unary.f32(i32 23, float %622)  ; Log(value)
  %624 = call float @dx.op.unary.f32(i32 28, float %623)  ; Round_pi(value)
  %625 = fptosi float %624 to i32
  %626 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %625)  ; IMax(a,b)
  %627 = call i32 @dx.op.binary.i32(i32 38, i32 %626, i32 8)  ; IMin(a,b)
  %628 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %625)  ; IMin(a,b)
  %629 = call i32 @dx.op.binary.i32(i32 37, i32 %628, i32 %627)  ; IMax(a,b)
  %630 = add nsw i32 %629, -1
  %631 = and i32 %629, 31
  %632 = ashr i32 %605, %631
  %633 = ashr i32 %606, %631
  %634 = ashr i32 %617, %631
  %635 = ashr i32 %618, %631
  %636 = icmp sgt i32 %632, %634
  br i1 %636, label %657, label %637

; <label>:637                                     ; preds = %571
  br label %638

; <label>:638                                     ; preds = %652, %637
  %639 = phi float [ %653, %652 ], [ 1.000000e+00, %637 ]
  %640 = phi i32 [ %654, %652 ], [ %632, %637 ]
  %641 = icmp sgt i32 %633, %635
  br i1 %641, label %652, label %642

; <label>:642                                     ; preds = %638
  br label %643

; <label>:643                                     ; preds = %643, %642
  %644 = phi float [ %648, %643 ], [ %639, %642 ]
  %645 = phi i32 [ %649, %643 ], [ %633, %642 ]
  %646 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %630, i32 %640, i32 %645, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = call float @dx.op.binary.f32(i32 36, float %644, float %647)  ; FMin(a,b)
  %649 = add nsw i32 %645, 1
  %650 = icmp slt i32 %645, %635
  br i1 %650, label %643, label %651

; <label>:651                                     ; preds = %643
  br label %652

; <label>:652                                     ; preds = %651, %638
  %653 = phi float [ %639, %638 ], [ %648, %651 ]
  %654 = add nsw i32 %640, 1
  %655 = icmp slt i32 %640, %634
  br i1 %655, label %638, label %656

; <label>:656                                     ; preds = %652
  br label %657

; <label>:657                                     ; preds = %656, %571
  %658 = phi float [ 1.000000e+00, %571 ], [ %653, %656 ]
  %659 = fcmp fast olt float %568, %658
  %660 = select i1 %659, i32 11, i32 1
  br label %1037

; <label>:661                                     ; preds = %555
  %662 = icmp eq i32 %460, 2
  br i1 %662, label %663, label %1037, !dx.controlflow.hints !40

; <label>:663                                     ; preds = %661
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 3
  %666 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %670 = fmul fast float %667, %666
  %671 = fadd fast float %244, 0x3F10000000000000
  %672 = fadd fast float %671, %669
  %673 = fadd fast float %672, %670
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = extractvalue %dx.types.CBufRet.i32 %276, 2
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %1037, label %677, !dx.controlflow.hints !38

; <label>:677                                     ; preds = %663
  %678 = fmul fast float %665, %243
  %679 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %680 = fadd fast float %678, %679
  %681 = fmul fast float %665, %242
  %682 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %683 = fadd fast float %681, %682
  %684 = fmul fast float %665, %240
  %685 = fadd fast float %684, %679
  %686 = fmul fast float %665, %239
  %687 = fadd fast float %686, %682
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %693 = fmul fast float %691, %689
  %694 = fmul fast float %692, %689
  %695 = call float @dx.op.unary.f32(i32 28, float %693)  ; Round_pi(value)
  %696 = call float @dx.op.unary.f32(i32 28, float %694)  ; Round_pi(value)
  %697 = fptosi float %695 to i32
  %698 = fptosi float %696 to i32
  %699 = sitofp i32 %697 to float
  %700 = sitofp i32 %698 to float
  %701 = fmul fast float %691, %687
  %702 = fmul fast float %692, %685
  %703 = fsub fast float -1.500000e+00, %699
  %704 = fadd fast float %703, %701
  %705 = fsub fast float -1.500000e+00, %700
  %706 = fadd fast float %705, %702
  %707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %704)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %706)  ; FMax(a,b)
  %709 = call float @dx.op.unary.f32(i32 27, float %707)  ; Round_ni(value)
  %710 = call float @dx.op.unary.f32(i32 27, float %708)  ; Round_ni(value)
  %711 = fptosi float %709 to i32
  %712 = fptosi float %710 to i32
  %713 = fmul fast float %691, %683
  %714 = fmul fast float %692, %680
  %715 = fadd fast float %699, 1.500000e+00
  %716 = fadd fast float %715, %713
  %717 = fadd fast float %700, 1.500000e+00
  %718 = fadd fast float %717, %714
  %719 = call float @dx.op.binary.f32(i32 36, float %691, float %716)  ; FMin(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %692, float %718)  ; FMin(a,b)
  %721 = call float @dx.op.unary.f32(i32 28, float %719)  ; Round_pi(value)
  %722 = call float @dx.op.unary.f32(i32 28, float %720)  ; Round_pi(value)
  %723 = fptosi float %721 to i32
  %724 = fptosi float %722 to i32
  %725 = sub i32 %723, %711
  %726 = sub i32 %724, %712
  %727 = call i32 @dx.op.binary.i32(i32 38, i32 %725, i32 %726)  ; IMin(a,b)
  %728 = sitofp i32 %727 to float
  %729 = call float @dx.op.unary.f32(i32 23, float %728)  ; Log(value)
  %730 = call float @dx.op.unary.f32(i32 28, float %729)  ; Round_pi(value)
  %731 = fptosi float %730 to i32
  %732 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %731)  ; IMax(a,b)
  %733 = call i32 @dx.op.binary.i32(i32 38, i32 %732, i32 8)  ; IMin(a,b)
  %734 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %731)  ; IMin(a,b)
  %735 = call i32 @dx.op.binary.i32(i32 37, i32 %734, i32 %733)  ; IMax(a,b)
  %736 = add nsw i32 %735, -1
  %737 = and i32 %735, 31
  %738 = ashr i32 %711, %737
  %739 = ashr i32 %712, %737
  %740 = ashr i32 %723, %737
  %741 = ashr i32 %724, %737
  %742 = icmp sgt i32 %738, %740
  br i1 %742, label %763, label %743

; <label>:743                                     ; preds = %677
  br label %744

; <label>:744                                     ; preds = %758, %743
  %745 = phi float [ %759, %758 ], [ 1.000000e+00, %743 ]
  %746 = phi i32 [ %760, %758 ], [ %738, %743 ]
  %747 = icmp sgt i32 %739, %741
  br i1 %747, label %758, label %748

; <label>:748                                     ; preds = %744
  br label %749

; <label>:749                                     ; preds = %749, %748
  %750 = phi float [ %754, %749 ], [ %745, %748 ]
  %751 = phi i32 [ %755, %749 ], [ %739, %748 ]
  %752 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 %736, i32 %746, i32 %751, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = call float @dx.op.binary.f32(i32 36, float %750, float %753)  ; FMin(a,b)
  %755 = add nsw i32 %751, 1
  %756 = icmp slt i32 %751, %741
  br i1 %756, label %749, label %757

; <label>:757                                     ; preds = %749
  br label %758

; <label>:758                                     ; preds = %757, %744
  %759 = phi float [ %745, %744 ], [ %754, %757 ]
  %760 = add nsw i32 %746, 1
  %761 = icmp slt i32 %746, %740
  br i1 %761, label %744, label %762

; <label>:762                                     ; preds = %758
  br label %763

; <label>:763                                     ; preds = %762, %677
  %764 = phi float [ 1.000000e+00, %677 ], [ %759, %762 ]
  %765 = fcmp fast olt float %674, %764
  %766 = select i1 %765, i32 11, i32 2
  br label %1037

; <label>:767                                     ; preds = %76
  br i1 %69, label %1037, label %768, !dx.controlflow.hints !41

; <label>:768                                     ; preds = %767
  %769 = fptosi float %16 to i32
  %770 = fptosi float %17 to i32
  %771 = ashr i32 %769, 4
  %772 = ashr i32 %770, 4
  %773 = add nsw i32 %771, -1
  %774 = add nsw i32 %772, -1
  %775 = shl i32 %13, 4
  %776 = uitofp i32 %775 to float
  %777 = uitofp i32 %29 to float
  %778 = call i32 @dx.op.binary.i32(i32 40, i32 %13, i32 %773)  ; UMin(a,b)
  %779 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 %774)  ; UMin(a,b)
  %780 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 4, i32 %778, i32 %779, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = fcmp fast ogt float %781, -1.000000e+00
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %785 = select i1 %782, float %784, float 1.000000e+00
  %786 = fadd fast float %781, 1.000000e+00
  %787 = fmul fast float %785, %786
  %788 = call float @dx.op.unary.f32(i32 6, float %787)  ; FAbs(value)
  %789 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 1, i32 %778, i32 %779, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = fcmp fast ogt float %790, -1.000000e+00
  %792 = select i1 %791, float %784, float 1.000000e+00
  %793 = fadd fast float %790, 1.000000e+00
  %794 = fmul fast float %792, %793
  %795 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %796 = call float @dx.op.unary.f32(i32 6, float %788)  ; FAbs(value)
  %797 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  br label %798

; <label>:798                                     ; preds = %939, %768
  %799 = phi i32 [ 0, %768 ], [ %940, %939 ]
  %800 = phi float [ 6.550000e+04, %768 ], [ %929, %939 ]
  %801 = phi float [ 6.550000e+04, %768 ], [ %930, %939 ]
  %802 = phi float [ -6.550000e+04, %768 ], [ %931, %939 ]
  %803 = phi float [ -6.550000e+04, %768 ], [ %932, %939 ]
  %804 = phi float [ -6.550000e+04, %768 ], [ %933, %939 ]
  br label %805

; <label>:805                                     ; preds = %936, %798
  %806 = phi i32 [ 0, %798 ], [ %937, %936 ]
  %807 = phi float [ %800, %798 ], [ %929, %936 ]
  %808 = phi float [ %801, %798 ], [ %930, %936 ]
  %809 = phi float [ %802, %798 ], [ %931, %936 ]
  %810 = phi float [ %803, %798 ], [ %932, %936 ]
  %811 = phi float [ %804, %798 ], [ %933, %936 ]
  %812 = uitofp i32 %799 to float
  %813 = uitofp i32 %806 to float
  %814 = fmul fast float %812, 1.600000e+01
  %815 = fmul fast float %813, 1.600000e+01
  %816 = fadd fast float %814, %776
  %817 = fadd fast float %815, %777
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %820 = extractvalue %dx.types.CBufRet.f32 %818, 3
  %821 = fmul fast float %819, %816
  %822 = fmul fast float %820, %817
  %823 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %824 = call float @dx.op.unary.f32(i32 7, float %822)  ; Saturate(value)
  br label %825

; <label>:825                                     ; preds = %898, %805
  %826 = phi i32 [ 0, %805 ], [ %934, %898 ]
  %827 = phi float [ %807, %805 ], [ %929, %898 ]
  %828 = phi float [ %808, %805 ], [ %930, %898 ]
  %829 = phi float [ %809, %805 ], [ %931, %898 ]
  %830 = phi float [ %810, %805 ], [ %932, %898 ]
  %831 = phi float [ %811, %805 ], [ %933, %898 ]
  %832 = icmp eq i32 %826, 0
  %833 = select i1 %832, float %797, float %796
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %836 = fcmp fast oeq float %835, 0.000000e+00
  %837 = fmul fast float %823, 2.000000e+00
  %838 = fmul fast float %824, 2.000000e+00
  %839 = fsub fast float 1.000000e+00, %837
  %840 = fsub fast float 1.000000e+00, %838
  br i1 %836, label %841, label %870, !dx.controlflow.hints !27

; <label>:841                                     ; preds = %825
  %842 = fsub fast float -0.000000e+00, %839
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 107)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %847 = extractvalue %dx.types.CBufRet.f32 %843, 3
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 108)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %851 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %852 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 109)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = extractvalue %dx.types.CBufRet.f32 %853, 3
  %858 = fmul fast float %844, %842
  %859 = call float @dx.op.tertiary.f32(i32 46, float %840, float %845, float %858)  ; FMad(a,b,c)
  %860 = call float @dx.op.tertiary.f32(i32 46, float %833, float %846, float %859)  ; FMad(a,b,c)
  %861 = fadd fast float %860, %847
  %862 = fmul fast float %849, %842
  %863 = call float @dx.op.tertiary.f32(i32 46, float %840, float %850, float %862)  ; FMad(a,b,c)
  %864 = call float @dx.op.tertiary.f32(i32 46, float %833, float %851, float %863)  ; FMad(a,b,c)
  %865 = fadd fast float %864, %852
  %866 = fmul fast float %854, %842
  %867 = call float @dx.op.tertiary.f32(i32 46, float %840, float %855, float %866)  ; FMad(a,b,c)
  %868 = call float @dx.op.tertiary.f32(i32 46, float %833, float %856, float %867)  ; FMad(a,b,c)
  %869 = fadd fast float %868, %857
  br label %898

; <label>:870                                     ; preds = %825
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %875 = fmul fast float %872, %839
  %876 = fmul fast float %873, %839
  %877 = fmul fast float %874, %839
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 0
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 1
  %881 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %882 = fmul fast float %879, %840
  %883 = fmul fast float %880, %840
  %884 = fmul fast float %881, %840
  %885 = fadd fast float %882, %875
  %886 = fadd fast float %883, %876
  %887 = fadd fast float %884, %877
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = fadd fast float %885, %889
  %893 = fadd fast float %886, %890
  %894 = fadd fast float %887, %891
  %895 = fmul fast float %892, %833
  %896 = fmul fast float %893, %833
  %897 = fmul fast float %894, %833
  br label %898

; <label>:898                                     ; preds = %870, %841
  %899 = phi float [ %861, %841 ], [ %895, %870 ]
  %900 = phi float [ %865, %841 ], [ %896, %870 ]
  %901 = phi float [ %869, %841 ], [ %897, %870 ]
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = extractvalue %dx.types.CBufRet.f32 %902, 3
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %911 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %915 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %916 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %917 = fmul fast float %903, %899
  %918 = call float @dx.op.tertiary.f32(i32 46, float %900, float %904, float %917)  ; FMad(a,b,c)
  %919 = call float @dx.op.tertiary.f32(i32 46, float %901, float %905, float %918)  ; FMad(a,b,c)
  %920 = fadd fast float %919, %906
  %921 = fmul fast float %908, %899
  %922 = call float @dx.op.tertiary.f32(i32 46, float %900, float %909, float %921)  ; FMad(a,b,c)
  %923 = call float @dx.op.tertiary.f32(i32 46, float %901, float %910, float %922)  ; FMad(a,b,c)
  %924 = fadd fast float %923, %911
  %925 = fmul fast float %913, %899
  %926 = call float @dx.op.tertiary.f32(i32 46, float %900, float %914, float %925)  ; FMad(a,b,c)
  %927 = call float @dx.op.tertiary.f32(i32 46, float %901, float %915, float %926)  ; FMad(a,b,c)
  %928 = fadd fast float %927, %916
  %929 = call float @dx.op.binary.f32(i32 36, float %920, float %827)  ; FMin(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %924, float %828)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 35, float %920, float %829)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 35, float %924, float %830)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %928, float %831)  ; FMax(a,b)
  %934 = add nuw nsw i32 %826, 1
  %935 = icmp eq i32 %934, 2
  br i1 %935, label %936, label %825

; <label>:936                                     ; preds = %898
  %937 = add nuw nsw i32 %806, 1
  %938 = icmp eq i32 %937, 2
  br i1 %938, label %939, label %805

; <label>:939                                     ; preds = %936
  %940 = add nuw nsw i32 %799, 1
  %941 = icmp eq i32 %940, 2
  br i1 %941, label %942, label %798

; <label>:942                                     ; preds = %939
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = fmul fast float %946, %944
  %950 = fadd fast float %933, 0x3F10000000000000
  %951 = fadd fast float %950, %948
  %952 = fadd fast float %951, %949
  %953 = call float @dx.op.unary.f32(i32 7, float %952)  ; Saturate(value)
  %954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.i32 %954, 2
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %1037, label %957, !dx.controlflow.hints !38

; <label>:957                                     ; preds = %942
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = fmul fast float %961, %959
  %964 = fmul fast float %962, %959
  %965 = call float @dx.op.unary.f32(i32 28, float %963)  ; Round_pi(value)
  %966 = call float @dx.op.unary.f32(i32 28, float %964)  ; Round_pi(value)
  %967 = fptosi float %965 to i32
  %968 = fptosi float %966 to i32
  %969 = fmul fast float %961, %929
  %970 = fmul fast float %962, %930
  %971 = sitofp i32 %967 to float
  %972 = sitofp i32 %968 to float
  %973 = fsub fast float -1.500000e+00, %971
  %974 = fadd fast float %973, %969
  %975 = fsub fast float -1.500000e+00, %972
  %976 = fadd fast float %975, %970
  %977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %974)  ; FMax(a,b)
  %978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %976)  ; FMax(a,b)
  %979 = call float @dx.op.unary.f32(i32 27, float %977)  ; Round_ni(value)
  %980 = call float @dx.op.unary.f32(i32 27, float %978)  ; Round_ni(value)
  %981 = fptosi float %979 to i32
  %982 = fptosi float %980 to i32
  %983 = fmul fast float %961, %931
  %984 = fmul fast float %962, %932
  %985 = fadd fast float %971, 1.500000e+00
  %986 = fadd fast float %985, %983
  %987 = fadd fast float %972, 1.500000e+00
  %988 = fadd fast float %987, %984
  %989 = call float @dx.op.binary.f32(i32 36, float %961, float %986)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %962, float %988)  ; FMin(a,b)
  %991 = call float @dx.op.unary.f32(i32 28, float %989)  ; Round_pi(value)
  %992 = call float @dx.op.unary.f32(i32 28, float %990)  ; Round_pi(value)
  %993 = fptosi float %991 to i32
  %994 = fptosi float %992 to i32
  %995 = sub i32 %993, %981
  %996 = sub i32 %994, %982
  %997 = call i32 @dx.op.binary.i32(i32 38, i32 %995, i32 %996)  ; IMin(a,b)
  %998 = sitofp i32 %997 to float
  %999 = call float @dx.op.unary.f32(i32 23, float %998)  ; Log(value)
  %1000 = call float @dx.op.unary.f32(i32 28, float %999)  ; Round_pi(value)
  %1001 = fptosi float %1000 to i32
  %1002 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %1001)  ; IMax(a,b)
  %1003 = call i32 @dx.op.binary.i32(i32 38, i32 %1002, i32 8)  ; IMin(a,b)
  %1004 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %1001)  ; IMin(a,b)
  %1005 = call i32 @dx.op.binary.i32(i32 37, i32 %1004, i32 %1003)  ; IMax(a,b)
  %1006 = add nsw i32 %1005, -1
  %1007 = and i32 %1005, 31
  %1008 = ashr i32 %981, %1007
  %1009 = ashr i32 %982, %1007
  %1010 = ashr i32 %993, %1007
  %1011 = ashr i32 %994, %1007
  %1012 = icmp sgt i32 %1008, %1010
  br i1 %1012, label %1033, label %1013

; <label>:1013                                    ; preds = %957
  br label %1014

; <label>:1014                                    ; preds = %1028, %1013
  %1015 = phi i32 [ %1030, %1028 ], [ %1008, %1013 ]
  %1016 = phi float [ %1029, %1028 ], [ 1.000000e+00, %1013 ]
  %1017 = icmp sgt i32 %1009, %1011
  br i1 %1017, label %1028, label %1018

; <label>:1018                                    ; preds = %1014
  br label %1019

; <label>:1019                                    ; preds = %1019, %1018
  %1020 = phi i32 [ %1025, %1019 ], [ %1009, %1018 ]
  %1021 = phi float [ %1024, %1019 ], [ %1016, %1018 ]
  %1022 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %1006, i32 %1015, i32 %1020, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = call float @dx.op.binary.f32(i32 36, float %1021, float %1023)  ; FMin(a,b)
  %1025 = add nsw i32 %1020, 1
  %1026 = icmp slt i32 %1020, %1011
  br i1 %1026, label %1019, label %1027

; <label>:1027                                    ; preds = %1019
  br label %1028

; <label>:1028                                    ; preds = %1027, %1014
  %1029 = phi float [ %1016, %1014 ], [ %1024, %1027 ]
  %1030 = add nsw i32 %1015, 1
  %1031 = icmp slt i32 %1015, %1010
  br i1 %1031, label %1014, label %1032

; <label>:1032                                    ; preds = %1028
  br label %1033

; <label>:1033                                    ; preds = %1032, %957
  %1034 = phi float [ 1.000000e+00, %957 ], [ %1029, %1032 ]
  %1035 = fcmp fast olt float %953, %1034
  %1036 = select i1 %1035, i32 11, i32 12
  br label %1037

; <label>:1037                                    ; preds = %1033, %942, %767, %763, %663, %661, %657, %557, %551, %462, %73
  %1038 = phi i32 [ 14, %767 ], [ %460, %661 ], [ %75, %73 ], [ %554, %551 ], [ 0, %462 ], [ %660, %657 ], [ 1, %557 ], [ %766, %763 ], [ 2, %663 ], [ %1036, %1033 ], [ 12, %942 ]
  %1039 = shl i32 %1038, 28
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1042 = fptoui float %1041 to i32
  %1043 = add i32 %1042, 15
  %1044 = lshr i32 %1043, 4
  %1045 = mul i32 %1044, %14
  %1046 = add i32 %1045, %13
  %1047 = shl i32 %1046, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %1047, i32 undef, i32 %1039, i32 -268435456, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1048

; <label>:1048                                    ; preds = %1037, %0
  %1049 = phi i32 [ %1038, %1037 ], [ 14, %0 ]
  %1050 = icmp ne i32 %1049, 11
  %1051 = and i1 %26, %1050
  %1052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.i32 %1052, 3
  %1054 = icmp ne i32 %1053, 0
  %1055 = and i1 %1051, %1054
  br i1 %1055, label %1056, label %1062, !dx.controlflow.hints !42

; <label>:1056                                    ; preds = %1048
  %1057 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1058 = and i32 %13, 65535
  %1059 = shl i32 %14, 16
  %1060 = or i32 %1059, %1058
  %1061 = shl i32 %1057, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1061, i32 undef, i32 %1060, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1062

; <label>:1062                                    ; preds = %1056, %1048
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !18, null}
!5 = !{!6, !7, !9, !10, !11, !12, !13}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !8}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !8}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !8}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !8}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !8}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{!19, !20}
!19 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!20 = !{i32 1, %SunvisPrepassConstants* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!21 = !{void ()* @prepass, !"prepass", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 1}

