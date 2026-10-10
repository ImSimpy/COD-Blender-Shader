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
; shader hash: 72ba5ee99eda5aa9e1b54adbf4706c1e
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
  br i1 %26, label %27, label %974, !dx.controlflow.hints !24

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
  br label %963

; <label>:76                                      ; preds = %27
  br i1 %66, label %730, label %77, !dx.controlflow.hints !26

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

; <label>:105                                     ; preds = %213, %77
  %106 = phi float [ -6.550000e+04, %77 ], [ %205, %213 ]
  %107 = phi float [ -6.550000e+04, %77 ], [ %206, %213 ]
  %108 = phi float [ -6.550000e+04, %77 ], [ %207, %213 ]
  %109 = phi float [ 6.550000e+04, %77 ], [ %202, %213 ]
  %110 = phi float [ 6.550000e+04, %77 ], [ %203, %213 ]
  %111 = phi float [ 6.550000e+04, %77 ], [ %204, %213 ]
  %112 = phi i32 [ 0, %77 ], [ %214, %213 ]
  br label %113

; <label>:113                                     ; preds = %210, %105
  %114 = phi float [ %106, %105 ], [ %205, %210 ]
  %115 = phi float [ %107, %105 ], [ %206, %210 ]
  %116 = phi float [ %108, %105 ], [ %207, %210 ]
  %117 = phi float [ %109, %105 ], [ %202, %210 ]
  %118 = phi float [ %110, %105 ], [ %203, %210 ]
  %119 = phi float [ %111, %105 ], [ %204, %210 ]
  %120 = phi i32 [ 0, %105 ], [ %211, %210 ]
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

; <label>:134                                     ; preds = %134, %113
  %135 = phi float [ %114, %113 ], [ %205, %134 ]
  %136 = phi float [ %115, %113 ], [ %206, %134 ]
  %137 = phi float [ %116, %113 ], [ %207, %134 ]
  %138 = phi float [ %117, %113 ], [ %202, %134 ]
  %139 = phi float [ %118, %113 ], [ %203, %134 ]
  %140 = phi float [ %119, %113 ], [ %204, %134 ]
  %141 = phi i32 [ 0, %113 ], [ %208, %134 ]
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, float %104, float %97
  %144 = fmul fast float %132, 2.000000e+00
  %145 = fmul fast float %133, 2.000000e+00
  %146 = fsub fast float 1.000000e+00, %144
  %147 = fsub fast float 1.000000e+00, %145
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fmul fast float %149, %146
  %153 = fmul fast float %150, %146
  %154 = fmul fast float %151, %146
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fmul fast float %156, %147
  %160 = fmul fast float %157, %147
  %161 = fmul fast float %158, %147
  %162 = fadd fast float %159, %152
  %163 = fadd fast float %160, %153
  %164 = fadd fast float %161, %154
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = fadd fast float %162, %166
  %170 = fadd fast float %163, %167
  %171 = fadd fast float %164, %168
  %172 = fmul fast float %169, %143
  %173 = fmul fast float %170, %143
  %174 = fmul fast float %171, %143
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %178 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %190 = fmul fast float %172, %176
  %191 = call float @dx.op.tertiary.f32(i32 46, float %173, float %177, float %190)  ; FMad(a,b,c)
  %192 = call float @dx.op.tertiary.f32(i32 46, float %174, float %178, float %191)  ; FMad(a,b,c)
  %193 = fadd fast float %192, %179
  %194 = fmul fast float %172, %181
  %195 = call float @dx.op.tertiary.f32(i32 46, float %173, float %182, float %194)  ; FMad(a,b,c)
  %196 = call float @dx.op.tertiary.f32(i32 46, float %174, float %183, float %195)  ; FMad(a,b,c)
  %197 = fadd fast float %196, %184
  %198 = fmul fast float %172, %186
  %199 = call float @dx.op.tertiary.f32(i32 46, float %173, float %187, float %198)  ; FMad(a,b,c)
  %200 = call float @dx.op.tertiary.f32(i32 46, float %174, float %188, float %199)  ; FMad(a,b,c)
  %201 = fadd fast float %200, %189
  %202 = call float @dx.op.binary.f32(i32 36, float %193, float %138)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %197, float %139)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %201, float %140)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %193, float %135)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %197, float %136)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %201, float %137)  ; FMax(a,b)
  %208 = add nuw nsw i32 %141, 1
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %134

; <label>:210                                     ; preds = %134
  %211 = add nuw nsw i32 %120, 1
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %113

; <label>:213                                     ; preds = %210
  %214 = add nuw nsw i32 %112, 1
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %105

; <label>:216                                     ; preds = %213
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %221 = call float @dx.op.binary.f32(i32 35, float %218, float %202)  ; FMax(a,b)
  %222 = call float @dx.op.binary.f32(i32 35, float %219, float %203)  ; FMax(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %220, float %204)  ; FMax(a,b)
  %224 = call float @dx.op.binary.f32(i32 36, float %221, float %205)  ; FMin(a,b)
  %225 = call float @dx.op.binary.f32(i32 36, float %222, float %206)  ; FMin(a,b)
  %226 = call float @dx.op.binary.f32(i32 36, float %223, float %207)  ; FMin(a,b)
  %227 = fsub fast float %202, %218
  %228 = fsub fast float %203, %219
  %229 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %230 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %231 = fsub fast float %205, %218
  %232 = fsub fast float %206, %219
  %233 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %234 = call float @dx.op.unary.f32(i32 6, float %232)  ; FAbs(value)
  %235 = fcmp fast ogt float %229, %233
  %236 = fcmp fast ogt float %230, %234
  %237 = select i1 %235, float %202, float %205
  %238 = select i1 %236, float %203, float %206
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 0
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = fmul fast float %242, %104
  %245 = fadd fast float %244, %243
  %246 = call float @dx.op.unary.f32(i32 7, float %245)  ; Saturate(value)
  %247 = fsub fast float %224, %218
  %248 = fsub fast float %225, %219
  %249 = fcmp fast olt float %247, 0.000000e+00
  %250 = fcmp fast olt float %248, 0.000000e+00
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 1
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %255 = extractvalue %dx.types.CBufRet.f32 %251, 3
  %256 = select i1 %249, float %252, float %254
  %257 = select i1 %250, float %253, float %255
  %258 = fmul fast float %256, %247
  %259 = fmul fast float %257, %248
  %260 = call float @dx.op.unary.f32(i32 6, float %258)  ; FAbs(value)
  %261 = call float @dx.op.unary.f32(i32 6, float %259)  ; FAbs(value)
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 0
  %264 = call float @dx.op.binary.f32(i32 35, float %260, float %261)  ; FMax(a,b)
  %265 = fsub fast float %263, %264
  %266 = call float @dx.op.unary.f32(i32 7, float %265)  ; Saturate(value)
  %267 = call float @dx.op.binary.f32(i32 36, float %266, float %246)  ; FMin(a,b)
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %270 = fsub fast float %269, %226
  %271 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %272 = fmul fast float %270, %271
  %273 = fsub fast float 1.000000e+00, %272
  %274 = call float @dx.op.unary.f32(i32 7, float %273)  ; Saturate(value)
  %275 = fcmp fast oeq float %267, 1.000000e+00
  br i1 %275, label %276, label %282, !dx.controlflow.hints !27

; <label>:276                                     ; preds = %216
  %277 = fmul fast float %242, %97
  %278 = fadd fast float %277, %243
  %279 = call float @dx.op.unary.f32(i32 7, float %278)  ; Saturate(value)
  %280 = fcmp fast oeq float %279, 1.000000e+00
  %281 = select i1 %280, i32 0, i32 14
  br label %372

; <label>:282                                     ; preds = %216
  %283 = icmp eq i32 %240, 0
  br i1 %283, label %372, label %284, !dx.controlflow.hints !28

; <label>:284                                     ; preds = %282
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %288 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %289 = fmul fast float %288, %224
  %290 = fmul fast float %288, %225
  %291 = fadd fast float %289, %286
  %292 = fadd fast float %290, %287
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %296 = fsub fast float %291, %294
  %297 = fsub fast float %292, %295
  %298 = fcmp fast olt float %296, 0.000000e+00
  %299 = fcmp fast olt float %297, 0.000000e+00
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = extractvalue %dx.types.CBufRet.f32 %300, 3
  %305 = select i1 %298, float %301, float %303
  %306 = select i1 %299, float %302, float %304
  %307 = fmul fast float %305, %296
  %308 = fmul fast float %306, %297
  %309 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %310 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %311 = call float @dx.op.binary.f32(i32 35, float %309, float %310)  ; FMax(a,b)
  %312 = fsub fast float %263, %311
  %313 = call float @dx.op.unary.f32(i32 7, float %312)  ; Saturate(value)
  %314 = fsub fast float %313, %267
  %315 = call float @dx.op.binary.f32(i32 35, float %314, float 0.000000e+00)  ; FMax(a,b)
  %316 = fmul fast float %315, %274
  %317 = fcmp fast oeq float %316, 1.000000e+00
  br i1 %317, label %318, label %327, !dx.controlflow.hints !29

; <label>:318                                     ; preds = %284
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 86)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = fmul fast float %320, %97
  %323 = fadd fast float %322, %321
  %324 = call float @dx.op.unary.f32(i32 7, float %323)  ; Saturate(value)
  %325 = fcmp fast oeq float %324, 1.000000e+00
  %326 = select i1 %325, i32 1, i32 14
  br label %372

; <label>:327                                     ; preds = %284
  %328 = icmp ugt i32 %240, 1
  br i1 %328, label %329, label %372, !dx.controlflow.hints !30

; <label>:329                                     ; preds = %327
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %334 = fmul fast float %333, %224
  %335 = fmul fast float %333, %225
  %336 = fadd fast float %334, %331
  %337 = fadd fast float %335, %332
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = fsub fast float %336, %339
  %342 = fsub fast float %337, %340
  %343 = fcmp fast olt float %341, 0.000000e+00
  %344 = fcmp fast olt float %342, 0.000000e+00
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %350 = select i1 %343, float %346, float %348
  %351 = select i1 %344, float %347, float %349
  %352 = fmul fast float %350, %341
  %353 = fmul fast float %351, %342
  %354 = call float @dx.op.unary.f32(i32 6, float %352)  ; FAbs(value)
  %355 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %356 = call float @dx.op.binary.f32(i32 35, float %354, float %355)  ; FMax(a,b)
  %357 = fsub fast float %263, %356
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = fsub fast float %358, %316
  %360 = call float @dx.op.binary.f32(i32 35, float %359, float 0.000000e+00)  ; FMax(a,b)
  %361 = fmul fast float %360, %274
  %362 = fcmp fast oeq float %361, 1.000000e+00
  br i1 %362, label %363, label %372, !dx.controlflow.hints !31

; <label>:363                                     ; preds = %329
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 87)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = fmul fast float %365, %97
  %368 = fadd fast float %367, %366
  %369 = call float @dx.op.unary.f32(i32 7, float %368)  ; Saturate(value)
  %370 = fcmp fast oeq float %369, 1.000000e+00
  %371 = select i1 %370, i32 2, i32 14
  br label %372

; <label>:372                                     ; preds = %363, %329, %327, %318, %282, %276
  %373 = phi i32 [ %281, %276 ], [ %326, %318 ], [ %371, %363 ], [ 14, %329 ], [ 14, %327 ], [ 14, %282 ]
  %374 = phi float [ 1.000000e+00, %276 ], [ 1.000000e+00, %318 ], [ 1.000000e+00, %363 ], [ %361, %329 ], [ %316, %327 ], [ %267, %282 ]
  %375 = fcmp fast oeq float %374, 0.000000e+00
  %376 = select i1 %375, i32 13, i32 %373
  %377 = icmp ugt i32 %376, %240
  br i1 %377, label %413, label %378, !dx.controlflow.hints !32

; <label>:378                                     ; preds = %372
  %379 = add nuw nsw i32 %376, 67
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %379)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 0
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 1
  %383 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %384 = fmul fast float %383, %237
  %385 = fmul fast float %383, %238
  %386 = fadd fast float %384, %381
  %387 = fadd fast float %385, %382
  %388 = add nuw nsw i32 %376, 71
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %388)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %392 = fsub fast float %386, %390
  %393 = fsub fast float %387, %391
  %394 = fcmp fast olt float %392, 0.000000e+00
  %395 = fcmp fast olt float %393, 0.000000e+00
  %396 = add nuw nsw i32 %376, 75
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 %396)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %402 = select i1 %394, float %398, float %400
  %403 = select i1 %395, float %399, float %401
  %404 = fmul fast float %402, %392
  %405 = fmul fast float %403, %393
  %406 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %407 = call float @dx.op.unary.f32(i32 6, float %405)  ; FAbs(value)
  %408 = call float @dx.op.binary.f32(i32 35, float %406, float %407)  ; FMax(a,b)
  %409 = fsub fast float %263, %408
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fcmp fast olt float %410, 1.000000e+00
  br i1 %411, label %412, label %413, !dx.controlflow.hints !33

; <label>:412                                     ; preds = %378
  br label %413

; <label>:413                                     ; preds = %412, %378, %372
  %414 = phi i32 [ 14, %412 ], [ %376, %378 ], [ %376, %372 ]
  %415 = icmp eq i32 %414, 13
  br i1 %415, label %416, label %422, !dx.controlflow.hints !34

; <label>:416                                     ; preds = %413
  %417 = fsub fast float %97, %104
  %418 = extractvalue %dx.types.CBufRet.i32 %239, 1
  %419 = bitcast i32 %418 to float
  %420 = fcmp fast ult float %417, %419
  br i1 %420, label %422, label %421, !dx.controlflow.hints !35

; <label>:421                                     ; preds = %416
  br label %422

; <label>:422                                     ; preds = %421, %416, %413
  %423 = phi i32 [ 14, %421 ], [ 13, %416 ], [ %414, %413 ]
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %518, !dx.controlflow.hints !36

; <label>:425                                     ; preds = %422
  %426 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = fmul fast float %428, %426
  %432 = fadd fast float %207, 0x3F10000000000000
  %433 = fadd fast float %432, %430
  %434 = fadd fast float %433, %431
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = extractvalue %dx.types.CBufRet.i32 %239, 2
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %963, label %438, !dx.controlflow.hints !37

; <label>:438                                     ; preds = %425
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 0
  %443 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %444 = fmul fast float %442, %440
  %445 = fmul fast float %443, %440
  %446 = call float @dx.op.unary.f32(i32 28, float %444)  ; Round_pi(value)
  %447 = call float @dx.op.unary.f32(i32 28, float %445)  ; Round_pi(value)
  %448 = fptosi float %446 to i32
  %449 = fptosi float %447 to i32
  %450 = sitofp i32 %448 to float
  %451 = sitofp i32 %449 to float
  %452 = fmul fast float %442, %202
  %453 = fmul fast float %443, %203
  %454 = fsub fast float -1.500000e+00, %450
  %455 = fadd fast float %454, %452
  %456 = fsub fast float -1.500000e+00, %451
  %457 = fadd fast float %456, %453
  %458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %455)  ; FMax(a,b)
  %459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %457)  ; FMax(a,b)
  %460 = call float @dx.op.unary.f32(i32 27, float %458)  ; Round_ni(value)
  %461 = call float @dx.op.unary.f32(i32 27, float %459)  ; Round_ni(value)
  %462 = fptosi float %460 to i32
  %463 = fptosi float %461 to i32
  %464 = fmul fast float %442, %205
  %465 = fmul fast float %443, %206
  %466 = fadd fast float %450, 1.500000e+00
  %467 = fadd fast float %466, %464
  %468 = fadd fast float %451, 1.500000e+00
  %469 = fadd fast float %468, %465
  %470 = call float @dx.op.binary.f32(i32 36, float %442, float %467)  ; FMin(a,b)
  %471 = call float @dx.op.binary.f32(i32 36, float %443, float %469)  ; FMin(a,b)
  %472 = call float @dx.op.unary.f32(i32 28, float %470)  ; Round_pi(value)
  %473 = call float @dx.op.unary.f32(i32 28, float %471)  ; Round_pi(value)
  %474 = fptosi float %472 to i32
  %475 = fptosi float %473 to i32
  %476 = sub i32 %474, %462
  %477 = sub i32 %475, %463
  %478 = call i32 @dx.op.binary.i32(i32 38, i32 %476, i32 %477)  ; IMin(a,b)
  %479 = sitofp i32 %478 to float
  %480 = call float @dx.op.unary.f32(i32 23, float %479)  ; Log(value)
  %481 = call float @dx.op.unary.f32(i32 28, float %480)  ; Round_pi(value)
  %482 = fptosi float %481 to i32
  %483 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %482)  ; IMax(a,b)
  %484 = call i32 @dx.op.binary.i32(i32 38, i32 %483, i32 8)  ; IMin(a,b)
  %485 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %482)  ; IMin(a,b)
  %486 = call i32 @dx.op.binary.i32(i32 37, i32 %485, i32 %484)  ; IMax(a,b)
  %487 = add nsw i32 %486, -1
  %488 = and i32 %486, 31
  %489 = ashr i32 %462, %488
  %490 = ashr i32 %463, %488
  %491 = ashr i32 %474, %488
  %492 = ashr i32 %475, %488
  %493 = icmp sgt i32 %489, %491
  br i1 %493, label %514, label %494

; <label>:494                                     ; preds = %438
  br label %495

; <label>:495                                     ; preds = %509, %494
  %496 = phi float [ %510, %509 ], [ 1.000000e+00, %494 ]
  %497 = phi i32 [ %511, %509 ], [ %489, %494 ]
  %498 = icmp sgt i32 %490, %492
  br i1 %498, label %509, label %499

; <label>:499                                     ; preds = %495
  br label %500

; <label>:500                                     ; preds = %500, %499
  %501 = phi float [ %505, %500 ], [ %496, %499 ]
  %502 = phi i32 [ %506, %500 ], [ %490, %499 ]
  %503 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 %487, i32 %497, i32 %502, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = call float @dx.op.binary.f32(i32 36, float %501, float %504)  ; FMin(a,b)
  %506 = add nsw i32 %502, 1
  %507 = icmp slt i32 %502, %492
  br i1 %507, label %500, label %508

; <label>:508                                     ; preds = %500
  br label %509

; <label>:509                                     ; preds = %508, %495
  %510 = phi float [ %496, %495 ], [ %505, %508 ]
  %511 = add nsw i32 %497, 1
  %512 = icmp slt i32 %497, %491
  br i1 %512, label %495, label %513

; <label>:513                                     ; preds = %509
  br label %514

; <label>:514                                     ; preds = %513, %438
  %515 = phi float [ 1.000000e+00, %438 ], [ %510, %513 ]
  %516 = fcmp fast olt float %435, %515
  %517 = select i1 %516, i32 11, i32 0
  br label %963

; <label>:518                                     ; preds = %422
  %519 = icmp eq i32 %423, 1
  br i1 %519, label %520, label %624, !dx.controlflow.hints !38

; <label>:520                                     ; preds = %518
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %523 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %524 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %527 = fmul fast float %524, %523
  %528 = fadd fast float %207, 0x3F10000000000000
  %529 = fadd fast float %528, %526
  %530 = fadd fast float %529, %527
  %531 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  %532 = extractvalue %dx.types.CBufRet.i32 %239, 2
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %963, label %534, !dx.controlflow.hints !37

; <label>:534                                     ; preds = %520
  %535 = fmul fast float %522, %206
  %536 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %537 = fadd fast float %535, %536
  %538 = fmul fast float %522, %205
  %539 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %540 = fadd fast float %538, %539
  %541 = fmul fast float %522, %203
  %542 = fadd fast float %541, %536
  %543 = fmul fast float %522, %202
  %544 = fadd fast float %543, %539
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = fmul fast float %548, %546
  %551 = fmul fast float %549, %546
  %552 = call float @dx.op.unary.f32(i32 28, float %550)  ; Round_pi(value)
  %553 = call float @dx.op.unary.f32(i32 28, float %551)  ; Round_pi(value)
  %554 = fptosi float %552 to i32
  %555 = fptosi float %553 to i32
  %556 = sitofp i32 %554 to float
  %557 = sitofp i32 %555 to float
  %558 = fmul fast float %548, %544
  %559 = fmul fast float %549, %542
  %560 = fsub fast float -1.500000e+00, %556
  %561 = fadd fast float %560, %558
  %562 = fsub fast float -1.500000e+00, %557
  %563 = fadd fast float %562, %559
  %564 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %561)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %563)  ; FMax(a,b)
  %566 = call float @dx.op.unary.f32(i32 27, float %564)  ; Round_ni(value)
  %567 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %568 = fptosi float %566 to i32
  %569 = fptosi float %567 to i32
  %570 = fmul fast float %548, %540
  %571 = fmul fast float %549, %537
  %572 = fadd fast float %556, 1.500000e+00
  %573 = fadd fast float %572, %570
  %574 = fadd fast float %557, 1.500000e+00
  %575 = fadd fast float %574, %571
  %576 = call float @dx.op.binary.f32(i32 36, float %548, float %573)  ; FMin(a,b)
  %577 = call float @dx.op.binary.f32(i32 36, float %549, float %575)  ; FMin(a,b)
  %578 = call float @dx.op.unary.f32(i32 28, float %576)  ; Round_pi(value)
  %579 = call float @dx.op.unary.f32(i32 28, float %577)  ; Round_pi(value)
  %580 = fptosi float %578 to i32
  %581 = fptosi float %579 to i32
  %582 = sub i32 %580, %568
  %583 = sub i32 %581, %569
  %584 = call i32 @dx.op.binary.i32(i32 38, i32 %582, i32 %583)  ; IMin(a,b)
  %585 = sitofp i32 %584 to float
  %586 = call float @dx.op.unary.f32(i32 23, float %585)  ; Log(value)
  %587 = call float @dx.op.unary.f32(i32 28, float %586)  ; Round_pi(value)
  %588 = fptosi float %587 to i32
  %589 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %588)  ; IMax(a,b)
  %590 = call i32 @dx.op.binary.i32(i32 38, i32 %589, i32 8)  ; IMin(a,b)
  %591 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %588)  ; IMin(a,b)
  %592 = call i32 @dx.op.binary.i32(i32 37, i32 %591, i32 %590)  ; IMax(a,b)
  %593 = add nsw i32 %592, -1
  %594 = and i32 %592, 31
  %595 = ashr i32 %568, %594
  %596 = ashr i32 %569, %594
  %597 = ashr i32 %580, %594
  %598 = ashr i32 %581, %594
  %599 = icmp sgt i32 %595, %597
  br i1 %599, label %620, label %600

; <label>:600                                     ; preds = %534
  br label %601

; <label>:601                                     ; preds = %615, %600
  %602 = phi float [ %616, %615 ], [ 1.000000e+00, %600 ]
  %603 = phi i32 [ %617, %615 ], [ %595, %600 ]
  %604 = icmp sgt i32 %596, %598
  br i1 %604, label %615, label %605

; <label>:605                                     ; preds = %601
  br label %606

; <label>:606                                     ; preds = %606, %605
  %607 = phi float [ %611, %606 ], [ %602, %605 ]
  %608 = phi i32 [ %612, %606 ], [ %596, %605 ]
  %609 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %593, i32 %603, i32 %608, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = call float @dx.op.binary.f32(i32 36, float %607, float %610)  ; FMin(a,b)
  %612 = add nsw i32 %608, 1
  %613 = icmp slt i32 %608, %598
  br i1 %613, label %606, label %614

; <label>:614                                     ; preds = %606
  br label %615

; <label>:615                                     ; preds = %614, %601
  %616 = phi float [ %602, %601 ], [ %611, %614 ]
  %617 = add nsw i32 %603, 1
  %618 = icmp slt i32 %603, %597
  br i1 %618, label %601, label %619

; <label>:619                                     ; preds = %615
  br label %620

; <label>:620                                     ; preds = %619, %534
  %621 = phi float [ 1.000000e+00, %534 ], [ %616, %619 ]
  %622 = fcmp fast olt float %531, %621
  %623 = select i1 %622, i32 11, i32 1
  br label %963

; <label>:624                                     ; preds = %518
  %625 = icmp eq i32 %423, 2
  br i1 %625, label %626, label %963, !dx.controlflow.hints !39

; <label>:626                                     ; preds = %624
  %627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %628 = extractvalue %dx.types.CBufRet.f32 %627, 3
  %629 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %630 = extractvalue %dx.types.CBufRet.f32 %627, 2
  %631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.f32 %631, 2
  %633 = fmul fast float %630, %629
  %634 = fadd fast float %207, 0x3F10000000000000
  %635 = fadd fast float %634, %632
  %636 = fadd fast float %635, %633
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = extractvalue %dx.types.CBufRet.i32 %239, 2
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %963, label %640, !dx.controlflow.hints !37

; <label>:640                                     ; preds = %626
  %641 = fmul fast float %628, %206
  %642 = extractvalue %dx.types.CBufRet.f32 %627, 1
  %643 = fadd fast float %641, %642
  %644 = fmul fast float %628, %205
  %645 = extractvalue %dx.types.CBufRet.f32 %627, 0
  %646 = fadd fast float %644, %645
  %647 = fmul fast float %628, %203
  %648 = fadd fast float %647, %642
  %649 = fmul fast float %628, %202
  %650 = fadd fast float %649, %645
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 2
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = fmul fast float %654, %652
  %657 = fmul fast float %655, %652
  %658 = call float @dx.op.unary.f32(i32 28, float %656)  ; Round_pi(value)
  %659 = call float @dx.op.unary.f32(i32 28, float %657)  ; Round_pi(value)
  %660 = fptosi float %658 to i32
  %661 = fptosi float %659 to i32
  %662 = sitofp i32 %660 to float
  %663 = sitofp i32 %661 to float
  %664 = fmul fast float %654, %650
  %665 = fmul fast float %655, %648
  %666 = fsub fast float -1.500000e+00, %662
  %667 = fadd fast float %666, %664
  %668 = fsub fast float -1.500000e+00, %663
  %669 = fadd fast float %668, %665
  %670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %667)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %669)  ; FMax(a,b)
  %672 = call float @dx.op.unary.f32(i32 27, float %670)  ; Round_ni(value)
  %673 = call float @dx.op.unary.f32(i32 27, float %671)  ; Round_ni(value)
  %674 = fptosi float %672 to i32
  %675 = fptosi float %673 to i32
  %676 = fmul fast float %654, %646
  %677 = fmul fast float %655, %643
  %678 = fadd fast float %662, 1.500000e+00
  %679 = fadd fast float %678, %676
  %680 = fadd fast float %663, 1.500000e+00
  %681 = fadd fast float %680, %677
  %682 = call float @dx.op.binary.f32(i32 36, float %654, float %679)  ; FMin(a,b)
  %683 = call float @dx.op.binary.f32(i32 36, float %655, float %681)  ; FMin(a,b)
  %684 = call float @dx.op.unary.f32(i32 28, float %682)  ; Round_pi(value)
  %685 = call float @dx.op.unary.f32(i32 28, float %683)  ; Round_pi(value)
  %686 = fptosi float %684 to i32
  %687 = fptosi float %685 to i32
  %688 = sub i32 %686, %674
  %689 = sub i32 %687, %675
  %690 = call i32 @dx.op.binary.i32(i32 38, i32 %688, i32 %689)  ; IMin(a,b)
  %691 = sitofp i32 %690 to float
  %692 = call float @dx.op.unary.f32(i32 23, float %691)  ; Log(value)
  %693 = call float @dx.op.unary.f32(i32 28, float %692)  ; Round_pi(value)
  %694 = fptosi float %693 to i32
  %695 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %694)  ; IMax(a,b)
  %696 = call i32 @dx.op.binary.i32(i32 38, i32 %695, i32 8)  ; IMin(a,b)
  %697 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %694)  ; IMin(a,b)
  %698 = call i32 @dx.op.binary.i32(i32 37, i32 %697, i32 %696)  ; IMax(a,b)
  %699 = add nsw i32 %698, -1
  %700 = and i32 %698, 31
  %701 = ashr i32 %674, %700
  %702 = ashr i32 %675, %700
  %703 = ashr i32 %686, %700
  %704 = ashr i32 %687, %700
  %705 = icmp sgt i32 %701, %703
  br i1 %705, label %726, label %706

; <label>:706                                     ; preds = %640
  br label %707

; <label>:707                                     ; preds = %721, %706
  %708 = phi float [ %722, %721 ], [ 1.000000e+00, %706 ]
  %709 = phi i32 [ %723, %721 ], [ %701, %706 ]
  %710 = icmp sgt i32 %702, %704
  br i1 %710, label %721, label %711

; <label>:711                                     ; preds = %707
  br label %712

; <label>:712                                     ; preds = %712, %711
  %713 = phi float [ %717, %712 ], [ %708, %711 ]
  %714 = phi i32 [ %718, %712 ], [ %702, %711 ]
  %715 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 %699, i32 %709, i32 %714, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = call float @dx.op.binary.f32(i32 36, float %713, float %716)  ; FMin(a,b)
  %718 = add nsw i32 %714, 1
  %719 = icmp slt i32 %714, %704
  br i1 %719, label %712, label %720

; <label>:720                                     ; preds = %712
  br label %721

; <label>:721                                     ; preds = %720, %707
  %722 = phi float [ %708, %707 ], [ %717, %720 ]
  %723 = add nsw i32 %709, 1
  %724 = icmp slt i32 %709, %703
  br i1 %724, label %707, label %725

; <label>:725                                     ; preds = %721
  br label %726

; <label>:726                                     ; preds = %725, %640
  %727 = phi float [ 1.000000e+00, %640 ], [ %722, %725 ]
  %728 = fcmp fast olt float %637, %727
  %729 = select i1 %728, i32 11, i32 2
  br label %963

; <label>:730                                     ; preds = %76
  br i1 %69, label %963, label %731, !dx.controlflow.hints !40

; <label>:731                                     ; preds = %730
  %732 = fptosi float %16 to i32
  %733 = fptosi float %17 to i32
  %734 = ashr i32 %732, 4
  %735 = ashr i32 %733, 4
  %736 = add nsw i32 %734, -1
  %737 = add nsw i32 %735, -1
  %738 = shl i32 %13, 4
  %739 = uitofp i32 %738 to float
  %740 = uitofp i32 %29 to float
  %741 = call i32 @dx.op.binary.i32(i32 40, i32 %13, i32 %736)  ; UMin(a,b)
  %742 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 %737)  ; UMin(a,b)
  %743 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 4, i32 %741, i32 %742, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = fcmp fast ogt float %744, -1.000000e+00
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %748 = select i1 %745, float %747, float 1.000000e+00
  %749 = fadd fast float %744, 1.000000e+00
  %750 = fmul fast float %748, %749
  %751 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %752 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 1, i32 %741, i32 %742, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = fcmp fast ogt float %753, -1.000000e+00
  %755 = select i1 %754, float %747, float 1.000000e+00
  %756 = fadd fast float %753, 1.000000e+00
  %757 = fmul fast float %755, %756
  %758 = call float @dx.op.unary.f32(i32 6, float %757)  ; FAbs(value)
  %759 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %760 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  br label %761

; <label>:761                                     ; preds = %865, %731
  %762 = phi i32 [ 0, %731 ], [ %866, %865 ]
  %763 = phi float [ 6.550000e+04, %731 ], [ %855, %865 ]
  %764 = phi float [ 6.550000e+04, %731 ], [ %856, %865 ]
  %765 = phi float [ -6.550000e+04, %731 ], [ %857, %865 ]
  %766 = phi float [ -6.550000e+04, %731 ], [ %858, %865 ]
  %767 = phi float [ -6.550000e+04, %731 ], [ %859, %865 ]
  br label %768

; <label>:768                                     ; preds = %862, %761
  %769 = phi i32 [ 0, %761 ], [ %863, %862 ]
  %770 = phi float [ %763, %761 ], [ %855, %862 ]
  %771 = phi float [ %764, %761 ], [ %856, %862 ]
  %772 = phi float [ %765, %761 ], [ %857, %862 ]
  %773 = phi float [ %766, %761 ], [ %858, %862 ]
  %774 = phi float [ %767, %761 ], [ %859, %862 ]
  %775 = uitofp i32 %762 to float
  %776 = uitofp i32 %769 to float
  %777 = fmul fast float %775, 1.600000e+01
  %778 = fmul fast float %776, 1.600000e+01
  %779 = fadd fast float %777, %739
  %780 = fadd fast float %778, %740
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 3
  %784 = fmul fast float %782, %779
  %785 = fmul fast float %783, %780
  %786 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %787 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  br label %788

; <label>:788                                     ; preds = %788, %768
  %789 = phi i32 [ 0, %768 ], [ %860, %788 ]
  %790 = phi float [ %770, %768 ], [ %855, %788 ]
  %791 = phi float [ %771, %768 ], [ %856, %788 ]
  %792 = phi float [ %772, %768 ], [ %857, %788 ]
  %793 = phi float [ %773, %768 ], [ %858, %788 ]
  %794 = phi float [ %774, %768 ], [ %859, %788 ]
  %795 = icmp eq i32 %789, 0
  %796 = select i1 %795, float %760, float %759
  %797 = fmul fast float %786, 2.000000e+00
  %798 = fmul fast float %787, 2.000000e+00
  %799 = fsub fast float 1.000000e+00, %797
  %800 = fsub fast float 1.000000e+00, %798
  %801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %802 = extractvalue %dx.types.CBufRet.f32 %801, 0
  %803 = extractvalue %dx.types.CBufRet.f32 %801, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %801, 2
  %805 = fmul fast float %802, %799
  %806 = fmul fast float %803, %799
  %807 = fmul fast float %804, %799
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fmul fast float %809, %800
  %813 = fmul fast float %810, %800
  %814 = fmul fast float %811, %800
  %815 = fadd fast float %812, %805
  %816 = fadd fast float %813, %806
  %817 = fadd fast float %814, %807
  %818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.f32 %818, 0
  %820 = extractvalue %dx.types.CBufRet.f32 %818, 1
  %821 = extractvalue %dx.types.CBufRet.f32 %818, 2
  %822 = fadd fast float %815, %819
  %823 = fadd fast float %816, %820
  %824 = fadd fast float %817, %821
  %825 = fmul fast float %822, %796
  %826 = fmul fast float %823, %796
  %827 = fmul fast float %824, %796
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %837 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %843 = fmul fast float %825, %829
  %844 = call float @dx.op.tertiary.f32(i32 46, float %826, float %830, float %843)  ; FMad(a,b,c)
  %845 = call float @dx.op.tertiary.f32(i32 46, float %827, float %831, float %844)  ; FMad(a,b,c)
  %846 = fadd fast float %845, %832
  %847 = fmul fast float %825, %834
  %848 = call float @dx.op.tertiary.f32(i32 46, float %826, float %835, float %847)  ; FMad(a,b,c)
  %849 = call float @dx.op.tertiary.f32(i32 46, float %827, float %836, float %848)  ; FMad(a,b,c)
  %850 = fadd fast float %849, %837
  %851 = fmul fast float %825, %839
  %852 = call float @dx.op.tertiary.f32(i32 46, float %826, float %840, float %851)  ; FMad(a,b,c)
  %853 = call float @dx.op.tertiary.f32(i32 46, float %827, float %841, float %852)  ; FMad(a,b,c)
  %854 = fadd fast float %853, %842
  %855 = call float @dx.op.binary.f32(i32 36, float %846, float %790)  ; FMin(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %850, float %791)  ; FMin(a,b)
  %857 = call float @dx.op.binary.f32(i32 35, float %846, float %792)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 35, float %850, float %793)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 35, float %854, float %794)  ; FMax(a,b)
  %860 = add nuw nsw i32 %789, 1
  %861 = icmp eq i32 %860, 2
  br i1 %861, label %862, label %788

; <label>:862                                     ; preds = %788
  %863 = add nuw nsw i32 %769, 1
  %864 = icmp eq i32 %863, 2
  br i1 %864, label %865, label %768

; <label>:865                                     ; preds = %862
  %866 = add nuw nsw i32 %762, 1
  %867 = icmp eq i32 %866, 2
  br i1 %867, label %868, label %761

; <label>:868                                     ; preds = %865
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = fmul fast float %872, %870
  %876 = fadd fast float %859, 0x3F10000000000000
  %877 = fadd fast float %876, %874
  %878 = fadd fast float %877, %875
  %879 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.i32 %880, 2
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %963, label %883, !dx.controlflow.hints !37

; <label>:883                                     ; preds = %868
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = fmul fast float %887, %885
  %890 = fmul fast float %888, %885
  %891 = call float @dx.op.unary.f32(i32 28, float %889)  ; Round_pi(value)
  %892 = call float @dx.op.unary.f32(i32 28, float %890)  ; Round_pi(value)
  %893 = fptosi float %891 to i32
  %894 = fptosi float %892 to i32
  %895 = fmul fast float %887, %855
  %896 = fmul fast float %888, %856
  %897 = sitofp i32 %893 to float
  %898 = sitofp i32 %894 to float
  %899 = fsub fast float -1.500000e+00, %897
  %900 = fadd fast float %899, %895
  %901 = fsub fast float -1.500000e+00, %898
  %902 = fadd fast float %901, %896
  %903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %900)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %902)  ; FMax(a,b)
  %905 = call float @dx.op.unary.f32(i32 27, float %903)  ; Round_ni(value)
  %906 = call float @dx.op.unary.f32(i32 27, float %904)  ; Round_ni(value)
  %907 = fptosi float %905 to i32
  %908 = fptosi float %906 to i32
  %909 = fmul fast float %887, %857
  %910 = fmul fast float %888, %858
  %911 = fadd fast float %897, 1.500000e+00
  %912 = fadd fast float %911, %909
  %913 = fadd fast float %898, 1.500000e+00
  %914 = fadd fast float %913, %910
  %915 = call float @dx.op.binary.f32(i32 36, float %887, float %912)  ; FMin(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %888, float %914)  ; FMin(a,b)
  %917 = call float @dx.op.unary.f32(i32 28, float %915)  ; Round_pi(value)
  %918 = call float @dx.op.unary.f32(i32 28, float %916)  ; Round_pi(value)
  %919 = fptosi float %917 to i32
  %920 = fptosi float %918 to i32
  %921 = sub i32 %919, %907
  %922 = sub i32 %920, %908
  %923 = call i32 @dx.op.binary.i32(i32 38, i32 %921, i32 %922)  ; IMin(a,b)
  %924 = sitofp i32 %923 to float
  %925 = call float @dx.op.unary.f32(i32 23, float %924)  ; Log(value)
  %926 = call float @dx.op.unary.f32(i32 28, float %925)  ; Round_pi(value)
  %927 = fptosi float %926 to i32
  %928 = call i32 @dx.op.binary.i32(i32 37, i32 1, i32 %927)  ; IMax(a,b)
  %929 = call i32 @dx.op.binary.i32(i32 38, i32 %928, i32 8)  ; IMin(a,b)
  %930 = call i32 @dx.op.binary.i32(i32 38, i32 1, i32 %927)  ; IMin(a,b)
  %931 = call i32 @dx.op.binary.i32(i32 37, i32 %930, i32 %929)  ; IMax(a,b)
  %932 = add nsw i32 %931, -1
  %933 = and i32 %931, 31
  %934 = ashr i32 %907, %933
  %935 = ashr i32 %908, %933
  %936 = ashr i32 %919, %933
  %937 = ashr i32 %920, %933
  %938 = icmp sgt i32 %934, %936
  br i1 %938, label %959, label %939

; <label>:939                                     ; preds = %883
  br label %940

; <label>:940                                     ; preds = %954, %939
  %941 = phi i32 [ %956, %954 ], [ %934, %939 ]
  %942 = phi float [ %955, %954 ], [ 1.000000e+00, %939 ]
  %943 = icmp sgt i32 %935, %937
  br i1 %943, label %954, label %944

; <label>:944                                     ; preds = %940
  br label %945

; <label>:945                                     ; preds = %945, %944
  %946 = phi i32 [ %951, %945 ], [ %935, %944 ]
  %947 = phi float [ %950, %945 ], [ %942, %944 ]
  %948 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 %932, i32 %941, i32 %946, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %949 = extractvalue %dx.types.ResRet.f32 %948, 0
  %950 = call float @dx.op.binary.f32(i32 36, float %947, float %949)  ; FMin(a,b)
  %951 = add nsw i32 %946, 1
  %952 = icmp slt i32 %946, %937
  br i1 %952, label %945, label %953

; <label>:953                                     ; preds = %945
  br label %954

; <label>:954                                     ; preds = %953, %940
  %955 = phi float [ %942, %940 ], [ %950, %953 ]
  %956 = add nsw i32 %941, 1
  %957 = icmp slt i32 %941, %936
  br i1 %957, label %940, label %958

; <label>:958                                     ; preds = %954
  br label %959

; <label>:959                                     ; preds = %958, %883
  %960 = phi float [ 1.000000e+00, %883 ], [ %955, %958 ]
  %961 = fcmp fast olt float %879, %960
  %962 = select i1 %961, i32 11, i32 12
  br label %963

; <label>:963                                     ; preds = %959, %868, %730, %726, %626, %624, %620, %520, %514, %425, %73
  %964 = phi i32 [ 14, %730 ], [ %423, %624 ], [ %75, %73 ], [ %517, %514 ], [ 0, %425 ], [ %623, %620 ], [ 1, %520 ], [ %729, %726 ], [ 2, %626 ], [ %962, %959 ], [ 12, %868 ]
  %965 = shl i32 %964, 28
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = fptoui float %967 to i32
  %969 = add i32 %968, 15
  %970 = lshr i32 %969, 4
  %971 = mul i32 %970, %14
  %972 = add i32 %971, %13
  %973 = shl i32 %972, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %3, i32 %973, i32 undef, i32 %965, i32 -268435456, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %974

; <label>:974                                     ; preds = %963, %0
  %975 = phi i32 [ %964, %963 ], [ 14, %0 ]
  %976 = icmp ne i32 %975, 11
  %977 = and i1 %26, %976
  %978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.i32 %978, 3
  %980 = icmp ne i32 %979, 0
  %981 = and i1 %977, %980
  br i1 %981, label %982, label %988, !dx.controlflow.hints !41

; <label>:982                                     ; preds = %974
  %983 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %984 = and i32 %13, 65535
  %985 = shl i32 %14, 16
  %986 = or i32 %985, %984
  %987 = shl i32 %983, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %987, i32 undef, i32 %986, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %988

; <label>:988                                     ; preds = %982, %974
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
!41 = distinct !{!41, !"dx.controlflow.hints", i32 1}

