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
; shader hash: ec0bb3cececee247841730889b6ea68f
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     u32          2d      T0             t0     1
;                                   texture     u32          2d      T1             t1     1
;                                   texture     u32          2d      T2             t5     1
;                                   texture     u32          2d      T3             t6     1
;                                   texture     f32          2d      T4             t7     1
;                                   texture     f32          2d      T5             t8     1
;                                       UAV     u32          2d      U0             u0     1
;                                       UAV     u32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<unsigned int, 2> >" = type { <2 x i32>, %"class.Texture2D<vector<unsigned int, 2> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 2> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<unsigned int, 4> >" = type { <4 x i32> }
%"class.RWTexture2D<vector<unsigned int, 2> >" = type { <2 x i32> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_temporal() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = alloca [4 x float], align 4
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 2
  %17 = lshr i32 %16, 5
  %18 = and i32 %17, 1
  %19 = and i32 %16, 96
  %20 = icmp eq i32 %19, 96
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %12, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %23 = extractvalue %dx.types.ResRet.i32 %22, 0
  %24 = extractvalue %dx.types.ResRet.i32 %22, 1
  %25 = extractvalue %dx.types.ResRet.i32 %22, 2
  %26 = extractvalue %dx.types.ResRet.i32 %22, 3
  %27 = lshr i32 %25, 29
  %28 = and i32 %24, 255
  %29 = lshr i32 %24, 8
  %30 = and i32 %29, 255
  %31 = lshr i32 %24, 16
  %32 = and i32 %31, 255
  %33 = lshr i32 %24, 24
  %34 = bitcast i32 %26 to float
  %35 = lshr i32 %26, 16
  %36 = and i32 %35, 63
  %37 = uitofp i32 %36 to float
  %38 = fmul fast float %37, 0x3FA0410420000000
  %39 = fadd fast float %38, -1.000000e+00
  %40 = lshr i32 %26, 22
  %41 = and i32 %40, 63
  %42 = uitofp i32 %41 to float
  %43 = fmul fast float %42, 0x3FA0410420000000
  %44 = fadd fast float %43, -1.000000e+00
  %45 = fmul fast float %39, %39
  %46 = fmul fast float %44, %44
  %47 = fsub fast float 1.000000e+00, %46
  %48 = fsub fast float %47, %45
  %49 = call float @dx.op.unary.f32(i32 7, float %48)  ; Saturate(value)
  %50 = call float @dx.op.unary.f32(i32 24, float %49)  ; Sqrt(value)
  %51 = and i32 %26, 268435456
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %52, float -1.000000e+00, float 1.000000e+00
  %54 = fmul fast float %53, %50
  %55 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %12, i32 %13, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.i32 %55, 0
  %57 = extractvalue %dx.types.ResRet.i32 %55, 1
  %58 = and i32 %57, 1023
  %59 = lshr i32 %57, 10
  %60 = and i32 %59, 1023
  %61 = lshr i32 %57, 20
  %62 = and i32 %61, 1023
  %63 = lshr i32 %56, 14
  %64 = and i32 %63, 1020
  %65 = lshr i32 %57, 30
  %66 = or i32 %64, %65
  %67 = lshr i32 %56, 30
  %68 = uitofp i32 %67 to float
  %69 = fmul fast float %68, 0x3FD5555560000000
  %70 = icmp ne i32 %28, 255
  %71 = zext i1 %70 to i32
  %72 = and i32 %24, 65280
  %73 = icmp ne i32 %72, 65280
  %74 = zext i1 %73 to i32
  %75 = and i32 %24, 16711680
  %76 = icmp ne i32 %75, 16711680
  %77 = zext i1 %76 to i32
  %78 = icmp ult i32 %24, -16777216
  %79 = zext i1 %78 to i32
  %80 = add nuw nsw i32 %74, %79
  %81 = add nuw nsw i32 %80, %71
  %82 = add nuw nsw i32 %81, %77
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %1329, label %84, !dx.controlflow.hints !25

; <label>:84                                      ; preds = %0
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = shl i32 %13, %18
  %87 = extractvalue %dx.types.CBufRet.i32 %85, 2
  %88 = lshr i32 %87, 1
  %89 = and i32 %88, 1
  %90 = select i1 %20, i32 %89, i32 0
  %91 = add i32 %90, %86
  %92 = sitofp i32 %91 to float
  %93 = fadd fast float %92, 5.000000e-01
  %94 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %95 = fmul fast float %93, %94
  %96 = shl i32 %12, %18
  %97 = and i32 %87, 1
  %98 = xor i32 %97, 1
  %99 = select i1 %20, i32 %98, i32 0
  %100 = add i32 %99, %96
  %101 = sitofp i32 %100 to float
  %102 = fadd fast float %101, 5.000000e-01
  %103 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %104 = fmul fast float %102, %103
  %105 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %106 = extractvalue %dx.types.Dimensions %105, 0
  %107 = extractvalue %dx.types.Dimensions %105, 1
  %108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 138)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.i32 %108, 2
  %110 = and i32 %109, 32
  %111 = icmp ne i32 %110, 0
  %112 = sitofp i32 %12 to float
  %113 = sitofp i32 %13 to float
  %114 = fmul fast float %112, 2.000000e+00
  %115 = fmul fast float %113, 2.000000e+00
  %116 = fadd fast float %114, 1.000000e+00
  %117 = fadd fast float %115, 1.000000e+00
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %121 = fmul fast float %119, %116
  %122 = fmul fast float %120, %117
  %123 = select i1 %111, float %121, float %104
  %124 = select i1 %111, float %122, float %95
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = bitcast float %126 to i32
  %128 = lshr i32 %127, 11
  %129 = and i32 %127, 2047
  %130 = and i32 %128, 2047
  %131 = uitofp i32 %129 to float
  %132 = uitofp i32 %130 to float
  %133 = fmul fast float %131, 0x3F50040100000000
  %134 = fmul fast float %132, 0x3F50040100000000
  %135 = fadd fast float %133, -1.000000e+00
  %136 = fadd fast float %134, -1.000000e+00
  %137 = lshr i32 %127, 22
  %138 = shl nuw nsw i32 %137, 5
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = call float @dx.op.unary.f32(i32 6, float %135)  ; FAbs(value)
  %141 = call float @dx.op.unary.f32(i32 6, float %136)  ; FAbs(value)
  %142 = fadd fast float %140, -5.000000e-01
  %143 = fadd fast float %141, -5.000000e-01
  %144 = fmul fast float %142, 2.000000e+00
  %145 = fmul fast float %143, 2.000000e+00
  %146 = call float @dx.op.unary.f32(i32 7, float %144)  ; Saturate(value)
  %147 = call float @dx.op.unary.f32(i32 7, float %145)  ; Saturate(value)
  %148 = fmul fast float %140, 2.000000e+00
  %149 = fmul fast float %141, 2.000000e+00
  %150 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %151 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %152 = fmul fast float %146, %146
  %153 = fmul fast float %152, 0x3FA48888A0000000
  %154 = fmul fast float %147, %147
  %155 = fmul fast float %154, 0x3FB2407960000000
  %156 = fmul fast float %150, 0x3F599999A0000000
  %157 = fmul fast float %151, 0x3F66C16C20000000
  %158 = fadd fast float %156, %153
  %159 = fadd fast float %157, %155
  %160 = fsub fast float -0.000000e+00, %158
  %161 = fsub fast float -0.000000e+00, %159
  %162 = fcmp fast olt float %135, 0.000000e+00
  %163 = fcmp fast olt float %136, 0.000000e+00
  %164 = select i1 %162, float 0.000000e+00, float 1.000000e+00
  %165 = select i1 %163, float 0.000000e+00, float 1.000000e+00
  %166 = fcmp fast une float %164, 0.000000e+00
  %167 = fcmp fast une float %165, 0.000000e+00
  %168 = select i1 %166, float %158, float %160
  %169 = select i1 %167, float %159, float %161
  %170 = fsub fast float %123, %168
  %171 = fsub fast float %124, %169
  %172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %3, %dx.types.Handle %9, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = extractvalue %dx.types.ResRet.f32 %172, 1
  %175 = extractvalue %dx.types.ResRet.f32 %172, 2
  %176 = extractvalue %dx.types.ResRet.f32 %172, 3
  %177 = bitcast float %173 to i32
  %178 = bitcast float %174 to i32
  %179 = bitcast float %175 to i32
  %180 = bitcast float %176 to i32
  %181 = call i32 @dx.op.binary.i32(i32 40, i32 %179, i32 %180)  ; UMin(a,b)
  %182 = call i32 @dx.op.binary.i32(i32 40, i32 %178, i32 %181)  ; UMin(a,b)
  %183 = call i32 @dx.op.binary.i32(i32 40, i32 %177, i32 %182)  ; UMin(a,b)
  %184 = lshr i32 %183, 11
  %185 = and i32 %183, 2047
  %186 = and i32 %184, 2047
  %187 = uitofp i32 %185 to float
  %188 = uitofp i32 %186 to float
  %189 = fmul fast float %187, 0x3F50040100000000
  %190 = fmul fast float %188, 0x3F50040100000000
  %191 = fadd fast float %189, -1.000000e+00
  %192 = fadd fast float %190, -1.000000e+00
  %193 = lshr i32 %183, 22
  %194 = shl nuw nsw i32 %193, 5
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %197 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %198 = fadd fast float %196, -5.000000e-01
  %199 = fadd fast float %197, -5.000000e-01
  %200 = fmul fast float %198, 2.000000e+00
  %201 = fmul fast float %199, 2.000000e+00
  %202 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %203 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %204 = fmul fast float %196, 2.000000e+00
  %205 = fmul fast float %197, 2.000000e+00
  %206 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %207 = call float @dx.op.unary.f32(i32 7, float %205)  ; Saturate(value)
  %208 = fmul fast float %202, %202
  %209 = fmul fast float %208, 0x3FA48888A0000000
  %210 = fmul fast float %203, %203
  %211 = fmul fast float %210, 0x3FB2407960000000
  %212 = fmul fast float %206, 0x3F599999A0000000
  %213 = fmul fast float %207, 0x3F66C16C20000000
  %214 = fadd fast float %212, %209
  %215 = fadd fast float %213, %211
  %216 = fsub fast float -0.000000e+00, %214
  %217 = fsub fast float -0.000000e+00, %215
  %218 = fcmp fast olt float %191, 0.000000e+00
  %219 = fcmp fast olt float %192, 0.000000e+00
  %220 = select i1 %218, float 0.000000e+00, float 1.000000e+00
  %221 = select i1 %219, float 0.000000e+00, float 1.000000e+00
  %222 = fcmp fast une float %220, 0.000000e+00
  %223 = fcmp fast une float %221, 0.000000e+00
  %224 = select i1 %222, float %214, float %216
  %225 = select i1 %223, float %215, float %217
  %226 = uitofp i32 %106 to float
  %227 = uitofp i32 %107 to float
  %228 = fmul fast float %170, %226
  %229 = fmul fast float %171, %227
  %230 = fadd fast float %228, 0xBFDFE00000000000
  %231 = fadd fast float %229, 0xBFDFE00000000000
  %232 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %233 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %234 = fsub fast float 1.000000e+00, %232
  %235 = fsub fast float 1.000000e+00, %233
  %236 = fmul fast float %233, %234
  %237 = fmul fast float %233, %232
  %238 = fmul fast float %232, %235
  %239 = fmul fast float %235, %234
  %240 = fptosi float %230 to i32
  %241 = fptosi float %231 to i32
  %242 = add nsw i32 %241, 1
  %243 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %240, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = extractvalue %dx.types.ResRet.i32 %243, 2
  %246 = extractvalue %dx.types.ResRet.i32 %243, 3
  %247 = add nsw i32 %240, 1
  %248 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %247, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = extractvalue %dx.types.ResRet.i32 %248, 2
  %251 = extractvalue %dx.types.ResRet.i32 %248, 3
  %252 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %247, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = extractvalue %dx.types.ResRet.i32 %252, 2
  %255 = extractvalue %dx.types.ResRet.i32 %252, 3
  %256 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = extractvalue %dx.types.ResRet.i32 %256, 2
  %259 = extractvalue %dx.types.ResRet.i32 %256, 3
  %260 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %240, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = extractvalue %dx.types.ResRet.i32 %260, 1
  %263 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %247, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = extractvalue %dx.types.ResRet.i32 %263, 1
  %266 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %247, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = extractvalue %dx.types.ResRet.i32 %266, 1
  %269 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %240, i32 %241, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = extractvalue %dx.types.ResRet.i32 %269, 1
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 361)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 2
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 -1, i32 9999
  %276 = and i32 %245, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 0
  store float %278, float* %279, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %280 = lshr i32 %245, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 1
  store float %283, float* %284, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %285 = bitcast i32 %246 to float
  %286 = lshr i32 %246, 16
  %287 = and i32 %286, 63
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3FA0410420000000
  %290 = fadd fast float %289, -1.000000e+00
  %291 = lshr i32 %246, 22
  %292 = and i32 %291, 63
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3FA0410420000000
  %295 = fadd fast float %294, -1.000000e+00
  %296 = fmul fast float %290, %290
  %297 = fmul fast float %295, %295
  %298 = fsub fast float 1.000000e+00, %297
  %299 = fsub fast float %298, %296
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %302 = and i32 %246, 268435456
  %303 = icmp ne i32 %302, 0
  %304 = select i1 %303, float -1.000000e+00, float 1.000000e+00
  %305 = fmul fast float %301, %304
  %306 = and i32 %261, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 2
  store float %308, float* %309, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %310 = lshr i32 %261, 8
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 3
  store float %313, float* %314, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %315 = and i32 %262, 1023
  %316 = lshr i32 %262, 10
  %317 = and i32 %316, 1023
  %318 = lshr i32 %262, 20
  %319 = and i32 %318, 1023
  %320 = lshr i32 %261, 14
  %321 = and i32 %320, 1020
  %322 = lshr i32 %262, 30
  %323 = or i32 %321, %322
  %324 = lshr i32 %261, 24
  %325 = and i32 %324, 63
  %326 = lshr i32 %261, 30
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3FD5555560000000
  %329 = call i32 @dx.op.binary.i32(i32 38, i32 %275, i32 %325)  ; IMin(a,b)
  %330 = select i1 %274, i32 -1, i32 %329
  %331 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %328)  ; FMax(a,b)
  %332 = fcmp fast ogt float %34, 0.000000e+00
  %333 = fcmp fast olt float %34, 0.000000e+00
  %334 = zext i1 %332 to i32
  %335 = zext i1 %333 to i32
  %336 = sub nsw i32 %334, %335
  %337 = fcmp fast ogt float %285, 0.000000e+00
  %338 = fcmp fast olt float %285, 0.000000e+00
  %339 = zext i1 %337 to i32
  %340 = zext i1 %338 to i32
  %341 = sub nsw i32 %339, %340
  %342 = icmp eq i32 %336, %341
  %343 = uitofp i1 %342 to float
  %344 = call float @dx.op.dot3.f32(i32 55, float %39, float %44, float %54, float %290, float %295, float %305)  ; Dot3(ax,ay,az,bx,by,bz)
  %345 = call float @dx.op.unary.f32(i32 6, float %344)  ; FAbs(value)
  %346 = call float @dx.op.unary.f32(i32 7, float %345)  ; Saturate(value)
  %347 = fmul fast float %236, %343
  %348 = fmul fast float %347, %346
  %349 = icmp eq i32 %58, 1023
  %350 = icmp ne i32 %58, %315
  %351 = or i1 %349, %350
  %352 = sext i1 %351 to i32
  %353 = icmp ne i32 %58, 1023
  %354 = icmp eq i32 %58, %317
  %355 = and i1 %353, %354
  %356 = select i1 %355, i32 1, i32 %352
  %357 = icmp eq i32 %58, %319
  %358 = and i1 %353, %357
  %359 = select i1 %358, i32 2, i32 %356
  %360 = icmp eq i32 %58, %323
  %361 = and i1 %353, %360
  %362 = select i1 %361, i32 3, i32 %359
  %363 = icmp sgt i32 %362, -1
  br i1 %363, label %364, label %388, !dx.controlflow.hints !45

; <label>:364                                     ; preds = %84
  %365 = shl nsw i32 %362, 3
  %366 = and i32 %365, 24
  %367 = lshr i32 %244, %366
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = fmul fast float %370, %370
  %372 = fmul fast float %371, %348
  %373 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %362
  %374 = load float, float* %373, align 4, !tbaa !26
  %375 = fmul fast float %374, %348
  br label %388

; <label>:376                                     ; preds = %388
  %377 = shl nsw i32 %405, 3
  %378 = and i32 %377, 24
  %379 = lshr i32 %244, %378
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = fmul fast float %382, %382
  %384 = fmul fast float %383, %348
  %385 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %405
  %386 = load float, float* %385, align 4, !tbaa !26
  %387 = fmul fast float %386, %348
  br label %421

; <label>:388                                     ; preds = %364, %84
  %389 = phi float [ %372, %364 ], [ 0.000000e+00, %84 ]
  %390 = phi float [ %375, %364 ], [ 0.000000e+00, %84 ]
  %391 = phi float [ %348, %364 ], [ 0.000000e+00, %84 ]
  %392 = icmp eq i32 %60, 1023
  %393 = icmp ne i32 %60, %315
  %394 = or i1 %392, %393
  %395 = sext i1 %394 to i32
  %396 = icmp ne i32 %60, 1023
  %397 = icmp eq i32 %60, %317
  %398 = and i1 %396, %397
  %399 = select i1 %398, i32 1, i32 %395
  %400 = icmp eq i32 %60, %319
  %401 = and i1 %396, %400
  %402 = select i1 %401, i32 2, i32 %399
  %403 = icmp eq i32 %60, %323
  %404 = and i1 %396, %403
  %405 = select i1 %404, i32 3, i32 %402
  %406 = icmp sgt i32 %405, -1
  %407 = icmp ugt i32 %82, 1
  %408 = and i1 %407, %406
  br i1 %408, label %376, label %421, !dx.controlflow.hints !45

; <label>:409                                     ; preds = %421
  %410 = shl nsw i32 %438, 3
  %411 = and i32 %410, 24
  %412 = lshr i32 %244, %411
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = fmul fast float %415, %415
  %417 = fmul fast float %416, %348
  %418 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %438
  %419 = load float, float* %418, align 4, !tbaa !26
  %420 = fmul fast float %419, %348
  br label %454

; <label>:421                                     ; preds = %388, %376
  %422 = phi float [ %384, %376 ], [ 0.000000e+00, %388 ]
  %423 = phi float [ %387, %376 ], [ 0.000000e+00, %388 ]
  %424 = phi float [ %348, %376 ], [ 0.000000e+00, %388 ]
  %425 = icmp eq i32 %62, 1023
  %426 = icmp ne i32 %62, %315
  %427 = or i1 %425, %426
  %428 = sext i1 %427 to i32
  %429 = icmp ne i32 %62, 1023
  %430 = icmp eq i32 %62, %317
  %431 = and i1 %429, %430
  %432 = select i1 %431, i32 1, i32 %428
  %433 = icmp eq i32 %62, %319
  %434 = and i1 %429, %433
  %435 = select i1 %434, i32 2, i32 %432
  %436 = icmp eq i32 %62, %323
  %437 = and i1 %429, %436
  %438 = select i1 %437, i32 3, i32 %435
  %439 = icmp sgt i32 %438, -1
  %440 = icmp ugt i32 %82, 2
  %441 = and i1 %440, %439
  br i1 %441, label %409, label %454, !dx.controlflow.hints !45

; <label>:442                                     ; preds = %454
  %443 = shl nsw i32 %471, 3
  %444 = and i32 %443, 24
  %445 = lshr i32 %244, %444
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = fmul fast float %448, %448
  %450 = fmul fast float %449, %348
  %451 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %471
  %452 = load float, float* %451, align 4, !tbaa !26
  %453 = fmul fast float %452, %348
  br label %475

; <label>:454                                     ; preds = %421, %409
  %455 = phi float [ 0.000000e+00, %421 ], [ %417, %409 ]
  %456 = phi float [ 0.000000e+00, %421 ], [ %420, %409 ]
  %457 = phi float [ 0.000000e+00, %421 ], [ %348, %409 ]
  %458 = icmp eq i32 %66, 1023
  %459 = icmp ne i32 %66, %315
  %460 = or i1 %458, %459
  %461 = sext i1 %460 to i32
  %462 = icmp ne i32 %66, 1023
  %463 = icmp eq i32 %66, %317
  %464 = and i1 %462, %463
  %465 = select i1 %464, i32 1, i32 %461
  %466 = icmp eq i32 %66, %319
  %467 = and i1 %462, %466
  %468 = select i1 %467, i32 2, i32 %465
  %469 = icmp eq i32 %66, %323
  %470 = and i1 %462, %469
  %471 = select i1 %470, i32 3, i32 %468
  %472 = icmp sgt i32 %471, -1
  %473 = icmp ugt i32 %82, 3
  %474 = and i1 %473, %472
  br i1 %474, label %442, label %475, !dx.controlflow.hints !45

; <label>:475                                     ; preds = %454, %442
  %476 = phi float [ 0.000000e+00, %454 ], [ %450, %442 ]
  %477 = phi float [ 0.000000e+00, %454 ], [ %453, %442 ]
  %478 = phi float [ 0.000000e+00, %454 ], [ %348, %442 ]
  %479 = and i32 %250, 255
  %480 = uitofp i32 %479 to float
  %481 = fmul fast float %480, 0x3F70101020000000
  store float %481, float* %279, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %482 = lshr i32 %250, 8
  %483 = and i32 %482, 255
  %484 = uitofp i32 %483 to float
  %485 = fmul fast float %484, 0x3F70101020000000
  store float %485, float* %284, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %486 = bitcast i32 %251 to float
  %487 = lshr i32 %251, 16
  %488 = and i32 %487, 63
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3FA0410420000000
  %491 = fadd fast float %490, -1.000000e+00
  %492 = lshr i32 %251, 22
  %493 = and i32 %492, 63
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %494, 0x3FA0410420000000
  %496 = fadd fast float %495, -1.000000e+00
  %497 = fmul fast float %491, %491
  %498 = fmul fast float %496, %496
  %499 = fsub fast float 1.000000e+00, %498
  %500 = fsub fast float %499, %497
  %501 = call float @dx.op.unary.f32(i32 7, float %500)  ; Saturate(value)
  %502 = call float @dx.op.unary.f32(i32 24, float %501)  ; Sqrt(value)
  %503 = and i32 %251, 268435456
  %504 = icmp ne i32 %503, 0
  %505 = select i1 %504, float -1.000000e+00, float 1.000000e+00
  %506 = fmul fast float %502, %505
  %507 = and i32 %264, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  store float %509, float* %309, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %510 = lshr i32 %264, 8
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  store float %513, float* %314, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %514 = and i32 %265, 1023
  %515 = lshr i32 %265, 10
  %516 = and i32 %515, 1023
  %517 = lshr i32 %265, 20
  %518 = and i32 %517, 1023
  %519 = lshr i32 %264, 14
  %520 = and i32 %519, 1020
  %521 = lshr i32 %265, 30
  %522 = or i32 %520, %521
  %523 = lshr i32 %264, 24
  %524 = and i32 %523, 63
  %525 = lshr i32 %264, 30
  %526 = uitofp i32 %525 to float
  %527 = fmul fast float %526, 0x3FD5555560000000
  %528 = icmp sgt i32 %330, -1
  %529 = call i32 @dx.op.binary.i32(i32 38, i32 %330, i32 %524)  ; IMin(a,b)
  %530 = select i1 %528, i32 %529, i32 %330
  %531 = call float @dx.op.binary.f32(i32 35, float %331, float %527)  ; FMax(a,b)
  %532 = fcmp fast ogt float %486, 0.000000e+00
  %533 = fcmp fast olt float %486, 0.000000e+00
  %534 = zext i1 %532 to i32
  %535 = zext i1 %533 to i32
  %536 = sub nsw i32 %534, %535
  %537 = icmp eq i32 %336, %536
  %538 = uitofp i1 %537 to float
  %539 = call float @dx.op.dot3.f32(i32 55, float %39, float %44, float %54, float %491, float %496, float %506)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = call float @dx.op.unary.f32(i32 6, float %539)  ; FAbs(value)
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %542 = fmul fast float %237, %538
  %543 = fmul fast float %542, %541
  %544 = icmp ne i32 %58, %514
  %545 = or i1 %349, %544
  %546 = sext i1 %545 to i32
  %547 = icmp eq i32 %58, %516
  %548 = and i1 %353, %547
  %549 = select i1 %548, i32 1, i32 %546
  %550 = icmp eq i32 %58, %518
  %551 = and i1 %353, %550
  %552 = select i1 %551, i32 2, i32 %549
  %553 = icmp eq i32 %58, %522
  %554 = and i1 %353, %553
  %555 = select i1 %554, i32 3, i32 %552
  %556 = icmp sgt i32 %555, -1
  br i1 %556, label %557, label %587, !dx.controlflow.hints !45

; <label>:557                                     ; preds = %475
  %558 = shl nsw i32 %555, 3
  %559 = and i32 %558, 24
  %560 = lshr i32 %249, %559
  %561 = and i32 %560, 255
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = fmul fast float %563, %563
  %565 = fmul fast float %564, %543
  %566 = fadd fast float %565, %389
  %567 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %555
  %568 = load float, float* %567, align 4, !tbaa !26
  %569 = fmul fast float %568, %543
  %570 = fadd fast float %569, %390
  %571 = fadd fast float %543, %391
  br label %587

; <label>:572                                     ; preds = %587
  %573 = shl nsw i32 %602, 3
  %574 = and i32 %573, 24
  %575 = lshr i32 %249, %574
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = fmul fast float %578, %578
  %580 = fmul fast float %579, %543
  %581 = fadd fast float %580, %422
  %582 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %602
  %583 = load float, float* %582, align 4, !tbaa !26
  %584 = fmul fast float %583, %543
  %585 = fadd fast float %584, %423
  %586 = fadd fast float %543, %424
  br label %620

; <label>:587                                     ; preds = %557, %475
  %588 = phi float [ %566, %557 ], [ %389, %475 ]
  %589 = phi float [ %570, %557 ], [ %390, %475 ]
  %590 = phi float [ %571, %557 ], [ %391, %475 ]
  %591 = icmp ne i32 %60, %514
  %592 = or i1 %392, %591
  %593 = sext i1 %592 to i32
  %594 = icmp eq i32 %60, %516
  %595 = and i1 %396, %594
  %596 = select i1 %595, i32 1, i32 %593
  %597 = icmp eq i32 %60, %518
  %598 = and i1 %396, %597
  %599 = select i1 %598, i32 2, i32 %596
  %600 = icmp eq i32 %60, %522
  %601 = and i1 %396, %600
  %602 = select i1 %601, i32 3, i32 %599
  %603 = icmp sgt i32 %602, -1
  %604 = and i1 %407, %603
  br i1 %604, label %572, label %620, !dx.controlflow.hints !45

; <label>:605                                     ; preds = %620
  %606 = shl nsw i32 %635, 3
  %607 = and i32 %606, 24
  %608 = lshr i32 %249, %607
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = fmul fast float %611, %611
  %613 = fmul fast float %612, %543
  %614 = fadd fast float %613, %455
  %615 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %635
  %616 = load float, float* %615, align 4, !tbaa !26
  %617 = fmul fast float %616, %543
  %618 = fadd fast float %617, %456
  %619 = fadd fast float %543, %457
  br label %653

; <label>:620                                     ; preds = %587, %572
  %621 = phi float [ %581, %572 ], [ %422, %587 ]
  %622 = phi float [ %585, %572 ], [ %423, %587 ]
  %623 = phi float [ %586, %572 ], [ %424, %587 ]
  %624 = icmp ne i32 %62, %514
  %625 = or i1 %425, %624
  %626 = sext i1 %625 to i32
  %627 = icmp eq i32 %62, %516
  %628 = and i1 %429, %627
  %629 = select i1 %628, i32 1, i32 %626
  %630 = icmp eq i32 %62, %518
  %631 = and i1 %429, %630
  %632 = select i1 %631, i32 2, i32 %629
  %633 = icmp eq i32 %62, %522
  %634 = and i1 %429, %633
  %635 = select i1 %634, i32 3, i32 %632
  %636 = icmp sgt i32 %635, -1
  %637 = and i1 %440, %636
  br i1 %637, label %605, label %653, !dx.controlflow.hints !45

; <label>:638                                     ; preds = %653
  %639 = shl nsw i32 %668, 3
  %640 = and i32 %639, 24
  %641 = lshr i32 %249, %640
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = fmul fast float %644, %644
  %646 = fmul fast float %645, %543
  %647 = fadd fast float %646, %476
  %648 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %668
  %649 = load float, float* %648, align 4, !tbaa !26
  %650 = fmul fast float %649, %543
  %651 = fadd fast float %650, %477
  %652 = fadd fast float %543, %478
  br label %671

; <label>:653                                     ; preds = %620, %605
  %654 = phi float [ %455, %620 ], [ %614, %605 ]
  %655 = phi float [ %456, %620 ], [ %618, %605 ]
  %656 = phi float [ %457, %620 ], [ %619, %605 ]
  %657 = icmp ne i32 %66, %514
  %658 = or i1 %458, %657
  %659 = sext i1 %658 to i32
  %660 = icmp eq i32 %66, %516
  %661 = and i1 %462, %660
  %662 = select i1 %661, i32 1, i32 %659
  %663 = icmp eq i32 %66, %518
  %664 = and i1 %462, %663
  %665 = select i1 %664, i32 2, i32 %662
  %666 = icmp eq i32 %66, %522
  %667 = and i1 %462, %666
  %668 = select i1 %667, i32 3, i32 %665
  %669 = icmp sgt i32 %668, -1
  %670 = and i1 %473, %669
  br i1 %670, label %638, label %671, !dx.controlflow.hints !45

; <label>:671                                     ; preds = %653, %638
  %672 = phi float [ %476, %653 ], [ %647, %638 ]
  %673 = phi float [ %477, %653 ], [ %651, %638 ]
  %674 = phi float [ %478, %653 ], [ %652, %638 ]
  %675 = and i32 %254, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  store float %677, float* %279, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %678 = lshr i32 %254, 8
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  store float %681, float* %284, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %682 = bitcast i32 %255 to float
  %683 = lshr i32 %255, 16
  %684 = and i32 %683, 63
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3FA0410420000000
  %687 = fadd fast float %686, -1.000000e+00
  %688 = lshr i32 %255, 22
  %689 = and i32 %688, 63
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, 0x3FA0410420000000
  %692 = fadd fast float %691, -1.000000e+00
  %693 = fmul fast float %687, %687
  %694 = fmul fast float %692, %692
  %695 = fsub fast float 1.000000e+00, %694
  %696 = fsub fast float %695, %693
  %697 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %699 = and i32 %255, 268435456
  %700 = icmp ne i32 %699, 0
  %701 = select i1 %700, float -1.000000e+00, float 1.000000e+00
  %702 = fmul fast float %698, %701
  %703 = and i32 %267, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101020000000
  store float %705, float* %309, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %706 = lshr i32 %267, 8
  %707 = and i32 %706, 255
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %708, 0x3F70101020000000
  store float %709, float* %314, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %710 = and i32 %268, 1023
  %711 = lshr i32 %268, 10
  %712 = and i32 %711, 1023
  %713 = lshr i32 %268, 20
  %714 = and i32 %713, 1023
  %715 = lshr i32 %267, 14
  %716 = and i32 %715, 1020
  %717 = lshr i32 %268, 30
  %718 = or i32 %716, %717
  %719 = lshr i32 %267, 24
  %720 = and i32 %719, 63
  %721 = lshr i32 %267, 30
  %722 = uitofp i32 %721 to float
  %723 = fmul fast float %722, 0x3FD5555560000000
  %724 = icmp sgt i32 %530, -1
  %725 = call i32 @dx.op.binary.i32(i32 38, i32 %530, i32 %720)  ; IMin(a,b)
  %726 = select i1 %724, i32 %725, i32 %530
  %727 = call float @dx.op.binary.f32(i32 35, float %531, float %723)  ; FMax(a,b)
  %728 = fcmp fast ogt float %682, 0.000000e+00
  %729 = fcmp fast olt float %682, 0.000000e+00
  %730 = zext i1 %728 to i32
  %731 = zext i1 %729 to i32
  %732 = sub nsw i32 %730, %731
  %733 = icmp eq i32 %336, %732
  %734 = uitofp i1 %733 to float
  %735 = call float @dx.op.dot3.f32(i32 55, float %39, float %44, float %54, float %687, float %692, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %736 = call float @dx.op.unary.f32(i32 6, float %735)  ; FAbs(value)
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %738 = fmul fast float %238, %734
  %739 = fmul fast float %738, %737
  %740 = icmp ne i32 %58, %710
  %741 = or i1 %349, %740
  %742 = sext i1 %741 to i32
  %743 = icmp eq i32 %58, %712
  %744 = and i1 %353, %743
  %745 = select i1 %744, i32 1, i32 %742
  %746 = icmp eq i32 %58, %714
  %747 = and i1 %353, %746
  %748 = select i1 %747, i32 2, i32 %745
  %749 = icmp eq i32 %58, %718
  %750 = and i1 %353, %749
  %751 = select i1 %750, i32 3, i32 %748
  %752 = icmp sgt i32 %751, -1
  br i1 %752, label %753, label %783, !dx.controlflow.hints !45

; <label>:753                                     ; preds = %671
  %754 = shl nsw i32 %751, 3
  %755 = and i32 %754, 24
  %756 = lshr i32 %253, %755
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = fmul fast float %759, %759
  %761 = fmul fast float %760, %739
  %762 = fadd fast float %761, %588
  %763 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %751
  %764 = load float, float* %763, align 4, !tbaa !26
  %765 = fmul fast float %764, %739
  %766 = fadd fast float %765, %589
  %767 = fadd fast float %739, %590
  br label %783

; <label>:768                                     ; preds = %783
  %769 = shl nsw i32 %798, 3
  %770 = and i32 %769, 24
  %771 = lshr i32 %253, %770
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = fmul fast float %773, 0x3F70101020000000
  %775 = fmul fast float %774, %774
  %776 = fmul fast float %775, %739
  %777 = fadd fast float %776, %621
  %778 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %798
  %779 = load float, float* %778, align 4, !tbaa !26
  %780 = fmul fast float %779, %739
  %781 = fadd fast float %780, %622
  %782 = fadd fast float %739, %623
  br label %816

; <label>:783                                     ; preds = %753, %671
  %784 = phi float [ %762, %753 ], [ %588, %671 ]
  %785 = phi float [ %766, %753 ], [ %589, %671 ]
  %786 = phi float [ %767, %753 ], [ %590, %671 ]
  %787 = icmp ne i32 %60, %710
  %788 = or i1 %392, %787
  %789 = sext i1 %788 to i32
  %790 = icmp eq i32 %60, %712
  %791 = and i1 %396, %790
  %792 = select i1 %791, i32 1, i32 %789
  %793 = icmp eq i32 %60, %714
  %794 = and i1 %396, %793
  %795 = select i1 %794, i32 2, i32 %792
  %796 = icmp eq i32 %60, %718
  %797 = and i1 %396, %796
  %798 = select i1 %797, i32 3, i32 %795
  %799 = icmp sgt i32 %798, -1
  %800 = and i1 %407, %799
  br i1 %800, label %768, label %816, !dx.controlflow.hints !45

; <label>:801                                     ; preds = %816
  %802 = shl nsw i32 %831, 3
  %803 = and i32 %802, 24
  %804 = lshr i32 %253, %803
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = fmul fast float %806, 0x3F70101020000000
  %808 = fmul fast float %807, %807
  %809 = fmul fast float %808, %739
  %810 = fadd fast float %809, %654
  %811 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %831
  %812 = load float, float* %811, align 4, !tbaa !26
  %813 = fmul fast float %812, %739
  %814 = fadd fast float %813, %655
  %815 = fadd fast float %739, %656
  br label %849

; <label>:816                                     ; preds = %783, %768
  %817 = phi float [ %777, %768 ], [ %621, %783 ]
  %818 = phi float [ %781, %768 ], [ %622, %783 ]
  %819 = phi float [ %782, %768 ], [ %623, %783 ]
  %820 = icmp ne i32 %62, %710
  %821 = or i1 %425, %820
  %822 = sext i1 %821 to i32
  %823 = icmp eq i32 %62, %712
  %824 = and i1 %429, %823
  %825 = select i1 %824, i32 1, i32 %822
  %826 = icmp eq i32 %62, %714
  %827 = and i1 %429, %826
  %828 = select i1 %827, i32 2, i32 %825
  %829 = icmp eq i32 %62, %718
  %830 = and i1 %429, %829
  %831 = select i1 %830, i32 3, i32 %828
  %832 = icmp sgt i32 %831, -1
  %833 = and i1 %440, %832
  br i1 %833, label %801, label %849, !dx.controlflow.hints !45

; <label>:834                                     ; preds = %849
  %835 = shl nsw i32 %864, 3
  %836 = and i32 %835, 24
  %837 = lshr i32 %253, %836
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = fmul fast float %840, %840
  %842 = fmul fast float %841, %739
  %843 = fadd fast float %842, %672
  %844 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %864
  %845 = load float, float* %844, align 4, !tbaa !26
  %846 = fmul fast float %845, %739
  %847 = fadd fast float %846, %673
  %848 = fadd fast float %739, %674
  br label %867

; <label>:849                                     ; preds = %816, %801
  %850 = phi float [ %654, %816 ], [ %810, %801 ]
  %851 = phi float [ %655, %816 ], [ %814, %801 ]
  %852 = phi float [ %656, %816 ], [ %815, %801 ]
  %853 = icmp ne i32 %66, %710
  %854 = or i1 %458, %853
  %855 = sext i1 %854 to i32
  %856 = icmp eq i32 %66, %712
  %857 = and i1 %462, %856
  %858 = select i1 %857, i32 1, i32 %855
  %859 = icmp eq i32 %66, %714
  %860 = and i1 %462, %859
  %861 = select i1 %860, i32 2, i32 %858
  %862 = icmp eq i32 %66, %718
  %863 = and i1 %462, %862
  %864 = select i1 %863, i32 3, i32 %861
  %865 = icmp sgt i32 %864, -1
  %866 = and i1 %473, %865
  br i1 %866, label %834, label %867, !dx.controlflow.hints !45

; <label>:867                                     ; preds = %849, %834
  %868 = phi float [ %672, %849 ], [ %843, %834 ]
  %869 = phi float [ %673, %849 ], [ %847, %834 ]
  %870 = phi float [ %674, %849 ], [ %848, %834 ]
  %871 = and i32 %258, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F70101020000000
  store float %873, float* %279, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %874 = lshr i32 %258, 8
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  store float %877, float* %284, align 4, !tbaa !26, !alias.scope !30, !noalias !33
  %878 = bitcast i32 %259 to float
  %879 = lshr i32 %259, 16
  %880 = and i32 %879, 63
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3FA0410420000000
  %883 = fadd fast float %882, -1.000000e+00
  %884 = lshr i32 %259, 22
  %885 = and i32 %884, 63
  %886 = uitofp i32 %885 to float
  %887 = fmul fast float %886, 0x3FA0410420000000
  %888 = fadd fast float %887, -1.000000e+00
  %889 = fmul fast float %883, %883
  %890 = fmul fast float %888, %888
  %891 = fsub fast float 1.000000e+00, %890
  %892 = fsub fast float %891, %889
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = call float @dx.op.unary.f32(i32 24, float %893)  ; Sqrt(value)
  %895 = and i32 %259, 268435456
  %896 = icmp ne i32 %895, 0
  %897 = select i1 %896, float -1.000000e+00, float 1.000000e+00
  %898 = fmul fast float %894, %897
  %899 = and i32 %270, 255
  %900 = uitofp i32 %899 to float
  %901 = fmul fast float %900, 0x3F70101020000000
  store float %901, float* %309, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %902 = lshr i32 %270, 8
  %903 = and i32 %902, 255
  %904 = uitofp i32 %903 to float
  %905 = fmul fast float %904, 0x3F70101020000000
  store float %905, float* %314, align 4, !tbaa !26, !alias.scope !38, !noalias !41
  %906 = and i32 %271, 1023
  %907 = lshr i32 %271, 10
  %908 = and i32 %907, 1023
  %909 = lshr i32 %271, 20
  %910 = and i32 %909, 1023
  %911 = lshr i32 %270, 14
  %912 = and i32 %911, 1020
  %913 = lshr i32 %271, 30
  %914 = or i32 %912, %913
  %915 = lshr i32 %270, 24
  %916 = and i32 %915, 63
  %917 = lshr i32 %270, 30
  %918 = uitofp i32 %917 to float
  %919 = fmul fast float %918, 0x3FD5555560000000
  %920 = icmp sgt i32 %726, -1
  %921 = call i32 @dx.op.binary.i32(i32 38, i32 %726, i32 %916)  ; IMin(a,b)
  %922 = select i1 %920, i32 %921, i32 %726
  %923 = call float @dx.op.binary.f32(i32 35, float %727, float %919)  ; FMax(a,b)
  %924 = fcmp fast ogt float %878, 0.000000e+00
  %925 = fcmp fast olt float %878, 0.000000e+00
  %926 = zext i1 %924 to i32
  %927 = zext i1 %925 to i32
  %928 = sub nsw i32 %926, %927
  %929 = icmp eq i32 %336, %928
  %930 = uitofp i1 %929 to float
  %931 = call float @dx.op.dot3.f32(i32 55, float %39, float %44, float %54, float %883, float %888, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = call float @dx.op.unary.f32(i32 6, float %931)  ; FAbs(value)
  %933 = call float @dx.op.unary.f32(i32 7, float %932)  ; Saturate(value)
  %934 = fmul fast float %239, %930
  %935 = fmul fast float %934, %933
  %936 = icmp ne i32 %58, %906
  %937 = or i1 %349, %936
  %938 = sext i1 %937 to i32
  %939 = icmp eq i32 %58, %908
  %940 = and i1 %353, %939
  %941 = select i1 %940, i32 1, i32 %938
  %942 = icmp eq i32 %58, %910
  %943 = and i1 %353, %942
  %944 = select i1 %943, i32 2, i32 %941
  %945 = icmp eq i32 %58, %914
  %946 = and i1 %353, %945
  %947 = select i1 %946, i32 3, i32 %944
  %948 = icmp sgt i32 %947, -1
  br i1 %948, label %949, label %979, !dx.controlflow.hints !45

; <label>:949                                     ; preds = %867
  %950 = shl nsw i32 %947, 3
  %951 = and i32 %950, 24
  %952 = lshr i32 %257, %951
  %953 = and i32 %952, 255
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = fmul fast float %955, %955
  %957 = fmul fast float %956, %935
  %958 = fadd fast float %957, %784
  %959 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %947
  %960 = load float, float* %959, align 4, !tbaa !26
  %961 = fmul fast float %960, %935
  %962 = fadd fast float %961, %785
  %963 = fadd fast float %935, %786
  br label %979

; <label>:964                                     ; preds = %979
  %965 = shl nsw i32 %994, 3
  %966 = and i32 %965, 24
  %967 = lshr i32 %257, %966
  %968 = and i32 %967, 255
  %969 = uitofp i32 %968 to float
  %970 = fmul fast float %969, 0x3F70101020000000
  %971 = fmul fast float %970, %970
  %972 = fmul fast float %971, %935
  %973 = fadd fast float %972, %817
  %974 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %994
  %975 = load float, float* %974, align 4, !tbaa !26
  %976 = fmul fast float %975, %935
  %977 = fadd fast float %976, %818
  %978 = fadd fast float %935, %819
  br label %1012

; <label>:979                                     ; preds = %949, %867
  %980 = phi float [ %958, %949 ], [ %784, %867 ]
  %981 = phi float [ %962, %949 ], [ %785, %867 ]
  %982 = phi float [ %963, %949 ], [ %786, %867 ]
  %983 = icmp ne i32 %60, %906
  %984 = or i1 %392, %983
  %985 = sext i1 %984 to i32
  %986 = icmp eq i32 %60, %908
  %987 = and i1 %396, %986
  %988 = select i1 %987, i32 1, i32 %985
  %989 = icmp eq i32 %60, %910
  %990 = and i1 %396, %989
  %991 = select i1 %990, i32 2, i32 %988
  %992 = icmp eq i32 %60, %914
  %993 = and i1 %396, %992
  %994 = select i1 %993, i32 3, i32 %991
  %995 = icmp sgt i32 %994, -1
  %996 = and i1 %407, %995
  br i1 %996, label %964, label %1012, !dx.controlflow.hints !45

; <label>:997                                     ; preds = %1012
  %998 = shl nsw i32 %1027, 3
  %999 = and i32 %998, 24
  %1000 = lshr i32 %257, %999
  %1001 = and i32 %1000, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3F70101020000000
  %1004 = fmul fast float %1003, %1003
  %1005 = fmul fast float %1004, %935
  %1006 = fadd fast float %1005, %850
  %1007 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %1027
  %1008 = load float, float* %1007, align 4, !tbaa !26
  %1009 = fmul fast float %1008, %935
  %1010 = fadd fast float %1009, %851
  %1011 = fadd fast float %935, %852
  br label %1045

; <label>:1012                                    ; preds = %979, %964
  %1013 = phi float [ %973, %964 ], [ %817, %979 ]
  %1014 = phi float [ %977, %964 ], [ %818, %979 ]
  %1015 = phi float [ %978, %964 ], [ %819, %979 ]
  %1016 = icmp ne i32 %62, %906
  %1017 = or i1 %425, %1016
  %1018 = sext i1 %1017 to i32
  %1019 = icmp eq i32 %62, %908
  %1020 = and i1 %429, %1019
  %1021 = select i1 %1020, i32 1, i32 %1018
  %1022 = icmp eq i32 %62, %910
  %1023 = and i1 %429, %1022
  %1024 = select i1 %1023, i32 2, i32 %1021
  %1025 = icmp eq i32 %62, %914
  %1026 = and i1 %429, %1025
  %1027 = select i1 %1026, i32 3, i32 %1024
  %1028 = icmp sgt i32 %1027, -1
  %1029 = and i1 %440, %1028
  br i1 %1029, label %997, label %1045, !dx.controlflow.hints !45

; <label>:1030                                    ; preds = %1045
  %1031 = shl nsw i32 %1060, 3
  %1032 = and i32 %1031, 24
  %1033 = lshr i32 %257, %1032
  %1034 = and i32 %1033, 255
  %1035 = uitofp i32 %1034 to float
  %1036 = fmul fast float %1035, 0x3F70101020000000
  %1037 = fmul fast float %1036, %1036
  %1038 = fmul fast float %1037, %935
  %1039 = fadd fast float %1038, %868
  %1040 = getelementptr inbounds [4 x float], [4 x float]* %14, i32 0, i32 %1060
  %1041 = load float, float* %1040, align 4, !tbaa !26
  %1042 = fmul fast float %1041, %935
  %1043 = fadd fast float %1042, %869
  %1044 = fadd fast float %935, %870
  br label %1063

; <label>:1045                                    ; preds = %1012, %997
  %1046 = phi float [ %850, %1012 ], [ %1006, %997 ]
  %1047 = phi float [ %851, %1012 ], [ %1010, %997 ]
  %1048 = phi float [ %852, %1012 ], [ %1011, %997 ]
  %1049 = icmp ne i32 %66, %906
  %1050 = or i1 %458, %1049
  %1051 = sext i1 %1050 to i32
  %1052 = icmp eq i32 %66, %908
  %1053 = and i1 %462, %1052
  %1054 = select i1 %1053, i32 1, i32 %1051
  %1055 = icmp eq i32 %66, %910
  %1056 = and i1 %462, %1055
  %1057 = select i1 %1056, i32 2, i32 %1054
  %1058 = icmp eq i32 %66, %914
  %1059 = and i1 %462, %1058
  %1060 = select i1 %1059, i32 3, i32 %1057
  %1061 = icmp sgt i32 %1060, -1
  %1062 = and i1 %473, %1061
  br i1 %1062, label %1030, label %1063, !dx.controlflow.hints !45

; <label>:1063                                    ; preds = %1045, %1030
  %1064 = phi float [ %868, %1045 ], [ %1039, %1030 ]
  %1065 = phi float [ %869, %1045 ], [ %1043, %1030 ]
  %1066 = phi float [ %870, %1045 ], [ %1044, %1030 ]
  %1067 = fmul fast float %139, 0x3FA99999A0000000
  %1068 = fadd fast float %195, %1067
  %1069 = fcmp fast olt float %139, %1068
  %1070 = fsub fast float %168, %224
  %1071 = fsub fast float %169, %225
  %1072 = fmul fast float %1070, 1.920000e+03
  %1073 = fmul fast float %1071, 1.080000e+03
  %1074 = call float @dx.op.dot2.f32(i32 54, float %1072, float %1073, float %1072, float %1073)  ; Dot2(ax,ay,bx,by)
  %1075 = bitcast float %1074 to i32
  %1076 = ashr i32 %1075, 1
  %1077 = add nsw i32 %1076, 532487669
  %1078 = bitcast i32 %1077 to float
  %1079 = fmul fast float %1078, 2.000000e+00
  %1080 = fsub fast float 1.000000e+00, %1079
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = select i1 %1069, float 1.000000e+00, float %1081
  %1083 = fmul fast float %168, 1.920000e+03
  %1084 = fmul fast float %169, 1.080000e+03
  %1085 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1086 = call float @dx.op.unary.f32(i32 6, float %1084)  ; FAbs(value)
  %1087 = call float @dx.op.binary.f32(i32 35, float %1085, float %1086)  ; FMax(a,b)
  %1088 = fmul fast float %1087, 0x3FBC71C720000000
  %1089 = fsub fast float 0x40218E38E0000000, %1088
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = fmul fast float %1090, %1082
  %1092 = fadd fast float %170, -5.000000e-01
  %1093 = fadd fast float %171, -5.000000e-01
  %1094 = call float @dx.op.unary.f32(i32 6, float %1092)  ; FAbs(value)
  %1095 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1096 = fadd fast float %1094, -5.000000e-01
  %1097 = fadd fast float %1095, -5.000000e-01
  %1098 = call float @dx.op.binary.f32(i32 35, float %1096, float %1097)  ; FMax(a,b)
  %1099 = fcmp fast olt float %1098, 0.000000e+00
  %1100 = select i1 %1099, float 1.000000e+00, float 0.000000e+00
  %1101 = fmul fast float %1091, %1100
  %1102 = sitofp i32 %922 to float
  %1103 = fadd fast float %1102, 2.000000e+00
  %1104 = fmul fast float %1103, 7.780480e+05
  %1105 = fsub fast float 0x41CFBF8940000000, %1104
  %1106 = fptosi float %1105 to i32
  %1107 = bitcast i32 %1106 to float
  %1108 = fsub fast float 1.000000e+00, %1107
  %1109 = fdiv fast float 0x3FA9999A00000000, %1108
  %1110 = fsub fast float 1.000000e+00, %1109
  %1111 = fmul fast float %1101, %1110
  %1112 = call float @dx.op.binary.f32(i32 35, float %69, float %923)  ; FMax(a,b)
  %1113 = fsub fast float 1.000000e+00, %1112
  %1114 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  %1115 = fmul fast float %1111, %1114
  %1116 = fadd fast float %1115, 0xBFEE666660000000
  %1117 = fadd fast float %1115, -1.000000e+00
  %1118 = fdiv fast float %1116, %1117
  %1119 = call float @dx.op.unary.f32(i32 23, float %1118)  ; Log(value)
  %1120 = fmul fast float %1119, 0x402B06DCE0000000
  %1121 = fsub fast float -2.000000e+00, %1120
  %1122 = fptosi float %1121 to i32
  %1123 = add nsw i32 %1122, 1
  %1124 = call i32 @dx.op.binary.i32(i32 37, i32 %1123, i32 0)  ; IMax(a,b)
  %1125 = call i32 @dx.op.binary.i32(i32 38, i32 %1124, i32 63)  ; IMin(a,b)
  %1126 = fcmp fast ogt float %982, 0.000000e+00
  %1127 = fdiv fast float 1.000000e+00, %982
  %1128 = and i32 %23, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = fmul fast float %1130, %1130
  %1132 = fmul fast float %1127, %980
  %1133 = select i1 %1126, float %1132, float %1131
  %1134 = fsub fast float %1133, %1131
  %1135 = fmul fast float %1134, %1115
  %1136 = fadd fast float %1135, %1131
  %1137 = call float @dx.op.unary.f32(i32 24, float %1136)  ; Sqrt(value)
  %1138 = fadd fast float %1137, 0x3F60101020000000
  %1139 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1140 = fmul fast float %1139, 2.550000e+02
  %1141 = fptoui float %1140 to i32
  %1142 = fcmp fast ogt float %1136, %1133
  %1143 = icmp ult i32 %1141, 255
  %1144 = and i1 %1143, %1142
  %1145 = zext i1 %1144 to i32
  %1146 = add i32 %1145, %1141
  %1147 = fcmp fast olt float %1136, %1133
  %1148 = icmp ne i32 %1146, 0
  %1149 = and i1 %1147, %1148
  %1150 = sext i1 %1149 to i32
  %1151 = add i32 %1150, %1146
  %1152 = fmul fast float %1131, %1131
  %1153 = fmul fast float %1127, %981
  %1154 = select i1 %1126, float %1153, float %1152
  %1155 = fsub fast float %1154, %1152
  %1156 = fmul fast float %1155, %1115
  %1157 = fadd fast float %1156, %1152
  %1158 = fcmp fast ogt float %1015, 0.000000e+00
  %1159 = fdiv fast float 1.000000e+00, %1015
  %1160 = lshr i32 %23, 8
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = fmul fast float %1163, %1163
  %1165 = fmul fast float %1159, %1013
  %1166 = select i1 %1158, float %1165, float %1164
  %1167 = fsub fast float %1166, %1164
  %1168 = fmul fast float %1167, %1115
  %1169 = fadd fast float %1168, %1164
  %1170 = call float @dx.op.unary.f32(i32 24, float %1169)  ; Sqrt(value)
  %1171 = fadd fast float %1170, 0x3F60101020000000
  %1172 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1173 = fmul fast float %1172, 2.550000e+02
  %1174 = fptoui float %1173 to i32
  %1175 = fcmp fast ogt float %1169, %1166
  %1176 = icmp ult i32 %1174, 255
  %1177 = and i1 %1176, %1175
  %1178 = zext i1 %1177 to i32
  %1179 = add i32 %1178, %1174
  %1180 = fcmp fast olt float %1169, %1166
  %1181 = icmp ne i32 %1179, 0
  %1182 = and i1 %1180, %1181
  %1183 = sext i1 %1182 to i32
  %1184 = add i32 %1183, %1179
  %1185 = shl i32 %1184, 8
  %1186 = or i32 %1185, %1151
  %1187 = fmul fast float %1164, %1164
  %1188 = fmul fast float %1159, %1014
  %1189 = select i1 %1158, float %1188, float %1187
  %1190 = fsub fast float %1189, %1187
  %1191 = fmul fast float %1190, %1115
  %1192 = fadd fast float %1191, %1187
  %1193 = fcmp fast ogt float %1048, 0.000000e+00
  %1194 = fdiv fast float 1.000000e+00, %1048
  %1195 = lshr i32 %23, 16
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F70101020000000
  %1199 = fmul fast float %1198, %1198
  %1200 = fmul fast float %1194, %1046
  %1201 = select i1 %1193, float %1200, float %1199
  %1202 = fsub fast float %1201, %1199
  %1203 = fmul fast float %1202, %1115
  %1204 = fadd fast float %1203, %1199
  %1205 = call float @dx.op.unary.f32(i32 24, float %1204)  ; Sqrt(value)
  %1206 = fadd fast float %1205, 0x3F60101020000000
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fmul fast float %1207, 2.550000e+02
  %1209 = fptoui float %1208 to i32
  %1210 = fcmp fast ogt float %1204, %1201
  %1211 = icmp ult i32 %1209, 255
  %1212 = and i1 %1211, %1210
  %1213 = zext i1 %1212 to i32
  %1214 = add i32 %1213, %1209
  %1215 = fcmp fast olt float %1204, %1201
  %1216 = icmp ne i32 %1214, 0
  %1217 = and i1 %1215, %1216
  %1218 = sext i1 %1217 to i32
  %1219 = add i32 %1218, %1214
  %1220 = shl i32 %1219, 16
  %1221 = or i32 %1186, %1220
  %1222 = fmul fast float %1199, %1199
  %1223 = fmul fast float %1194, %1047
  %1224 = select i1 %1193, float %1223, float %1222
  %1225 = fsub fast float %1224, %1222
  %1226 = fmul fast float %1225, %1115
  %1227 = fadd fast float %1226, %1222
  %1228 = fcmp fast ogt float %1066, 0.000000e+00
  %1229 = fdiv fast float 1.000000e+00, %1066
  %1230 = lshr i32 %23, 24
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = fmul fast float %1232, %1232
  %1234 = fmul fast float %1229, %1064
  %1235 = select i1 %1228, float %1234, float %1233
  %1236 = fsub fast float %1235, %1233
  %1237 = fmul fast float %1236, %1115
  %1238 = fadd fast float %1237, %1233
  %1239 = call float @dx.op.unary.f32(i32 24, float %1238)  ; Sqrt(value)
  %1240 = fadd fast float %1239, 0x3F60101020000000
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1242 = fmul fast float %1241, 2.550000e+02
  %1243 = fptoui float %1242 to i32
  %1244 = fcmp fast ogt float %1238, %1235
  %1245 = icmp ult i32 %1243, 255
  %1246 = and i1 %1245, %1244
  %1247 = zext i1 %1246 to i32
  %1248 = add i32 %1247, %1243
  %1249 = fcmp fast olt float %1238, %1235
  %1250 = icmp ne i32 %1248, 0
  %1251 = and i1 %1249, %1250
  %1252 = sext i1 %1251 to i32
  %1253 = add i32 %1252, %1248
  %1254 = shl i32 %1253, 24
  %1255 = or i32 %1221, %1254
  %1256 = fmul fast float %1233, %1233
  %1257 = fmul fast float %1229, %1065
  %1258 = select i1 %1228, float %1257, float %1256
  %1259 = fsub fast float %1258, %1256
  %1260 = fmul fast float %1259, %1115
  %1261 = fadd fast float %1260, %1256
  %1262 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 255)  ; UMin(a,b)
  %1263 = call i32 @dx.op.binary.i32(i32 40, i32 %30, i32 255)  ; UMin(a,b)
  %1264 = shl i32 %1263, 8
  %1265 = or i32 %1264, %1262
  %1266 = call i32 @dx.op.binary.i32(i32 40, i32 %32, i32 255)  ; UMin(a,b)
  %1267 = shl i32 %1266, 16
  %1268 = or i32 %1265, %1267
  %1269 = call i32 @dx.op.binary.i32(i32 40, i32 %33, i32 255)  ; UMin(a,b)
  %1270 = shl i32 %1269, 24
  %1271 = or i32 %1268, %1270
  %1272 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1273 = fmul fast float %1272, 2.550000e+02
  %1274 = fptosi float %1273 to i32
  %1275 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1276 = fmul fast float %1275, 2.550000e+02
  %1277 = fptosi float %1276 to i32
  %1278 = shl i32 %1277, 8
  %1279 = fmul fast float %37, 0x3F90410420000000
  %1280 = fmul fast float %42, 0x3F90410420000000
  %1281 = fmul fast float %54, 5.000000e-01
  %1282 = fadd fast float %1281, 5.000000e-01
  %1283 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1285 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1286 = fmul fast float %1283, 6.300000e+01
  %1287 = fptoui float %1286 to i32
  %1288 = shl i32 %1287, 16
  %1289 = fmul fast float %1284, 6.300000e+01
  %1290 = fptoui float %1289 to i32
  %1291 = shl i32 %1290, 22
  %1292 = fcmp fast olt float %1285, 0.000000e+00
  %1293 = zext i1 %1292 to i32
  %1294 = shl nuw nsw i32 %1293, 28
  %1295 = shl nuw i32 %27, 29
  %1296 = or i32 %1274, %1295
  %1297 = or i32 %1296, %1278
  %1298 = or i32 %1297, %1288
  %1299 = or i32 %1298, %1291
  %1300 = or i32 %1299, %1294
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %12, i32 %13, i32 undef, i32 %1255, i32 %1271, i32 %1300, i32 %26, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1302 = fmul fast float %1301, 2.550000e+02
  %1303 = fptosi float %1302 to i32
  %1304 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1305 = fmul fast float %1304, 2.550000e+02
  %1306 = fptosi float %1305 to i32
  %1307 = shl i32 %1306, 8
  %1308 = shl nuw nsw i32 %64, 14
  %1309 = call i32 @dx.op.binary.i32(i32 40, i32 63, i32 %1125)  ; UMin(a,b)
  %1310 = shl i32 %1309, 24
  %1311 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %1312 = fmul fast float %1311, 3.000000e+00
  %1313 = fptosi float %1312 to i32
  %1314 = shl i32 %1313, 30
  %1315 = or i32 %1303, %1308
  %1316 = or i32 %1315, %1310
  %1317 = or i32 %1316, %1307
  %1318 = or i32 %1317, %1314
  %1319 = call i32 @dx.op.binary.i32(i32 40, i32 %58, i32 1023)  ; UMin(a,b)
  %1320 = call i32 @dx.op.binary.i32(i32 40, i32 %60, i32 1023)  ; UMin(a,b)
  %1321 = shl i32 %1320, 10
  %1322 = or i32 %1321, %1319
  %1323 = call i32 @dx.op.binary.i32(i32 40, i32 %62, i32 1023)  ; UMin(a,b)
  %1324 = shl i32 %1323, 20
  %1325 = or i32 %1322, %1324
  %1326 = call i32 @dx.op.binary.i32(i32 40, i32 %66, i32 1023)  ; UMin(a,b)
  %1327 = shl i32 %1326, 30
  %1328 = or i32 %1325, %1327
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, i32 %1318, i32 %1328, i32 %1318, i32 %1318, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1376

; <label>:1329                                    ; preds = %0
  %1330 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 255)  ; UMin(a,b)
  %1331 = call i32 @dx.op.binary.i32(i32 40, i32 %30, i32 255)  ; UMin(a,b)
  %1332 = shl i32 %1331, 8
  %1333 = or i32 %1332, %1330
  %1334 = call i32 @dx.op.binary.i32(i32 40, i32 %32, i32 255)  ; UMin(a,b)
  %1335 = shl i32 %1334, 16
  %1336 = or i32 %1333, %1335
  %1337 = call i32 @dx.op.binary.i32(i32 40, i32 %33, i32 255)  ; UMin(a,b)
  %1338 = shl i32 %1337, 24
  %1339 = or i32 %1336, %1338
  %1340 = fmul fast float %37, 0x3F90410420000000
  %1341 = fmul fast float %42, 0x3F90410420000000
  %1342 = fmul fast float %54, 5.000000e-01
  %1343 = fadd fast float %1342, 5.000000e-01
  %1344 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1345 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1346 = call float @dx.op.unary.f32(i32 7, float %1343)  ; Saturate(value)
  %1347 = fmul fast float %1344, 6.300000e+01
  %1348 = fptoui float %1347 to i32
  %1349 = shl i32 %1348, 16
  %1350 = fmul fast float %1345, 6.300000e+01
  %1351 = fptoui float %1350 to i32
  %1352 = shl i32 %1351, 22
  %1353 = fcmp fast olt float %1346, 0.000000e+00
  %1354 = zext i1 %1353 to i32
  %1355 = shl nuw nsw i32 %1354, 28
  %1356 = shl nuw i32 %27, 29
  %1357 = or i32 %1349, %1356
  %1358 = or i32 %1357, %1352
  %1359 = or i32 %1358, %1355
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %2, i32 %12, i32 %13, i32 undef, i32 %23, i32 %1339, i32 %1359, i32 %26, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1360 = shl nuw nsw i32 %64, 14
  %1361 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %1362 = fmul fast float %1361, 3.000000e+00
  %1363 = fptosi float %1362 to i32
  %1364 = shl i32 %1363, 30
  %1365 = or i32 %1364, %1360
  %1366 = call i32 @dx.op.binary.i32(i32 40, i32 %58, i32 1023)  ; UMin(a,b)
  %1367 = call i32 @dx.op.binary.i32(i32 40, i32 %60, i32 1023)  ; UMin(a,b)
  %1368 = shl i32 %1367, 10
  %1369 = or i32 %1368, %1366
  %1370 = call i32 @dx.op.binary.i32(i32 40, i32 %62, i32 1023)  ; UMin(a,b)
  %1371 = shl i32 %1370, 20
  %1372 = or i32 %1369, %1371
  %1373 = call i32 @dx.op.binary.i32(i32 40, i32 %66, i32 1023)  ; UMin(a,b)
  %1374 = shl i32 %1373, 30
  %1375 = or i32 %1372, %1374
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %12, i32 %13, i32 undef, i32 %1365, i32 %1375, i32 %1365, i32 %1365, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1376

; <label>:1376                                    ; preds = %1329, %1063
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !14, !17, !19}
!5 = !{!6, !8, !9, !10, !11, !13}
!6 = !{i32 0, %"class.Texture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 9}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !12}
!14 = !{!15, !16}
!15 = !{i32 0, %"class.RWTexture2D<vector<unsigned int, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 1, %"class.RWTexture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!17 = !{!18}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!22 = !{void ()* @cs_temporal, !"cs_temporal", null, !4, !23}
!23 = !{i32 0, i64 256, i32 4, !24}
!24 = !{i32 16, i32 16, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"\01?Spotshadow_LoadSpatialParams@@YAXV?$vector@I$03@@AIAV?$vector@I$01@@Y03$$CAMY03$$CAIAIAV?$vector@M$02@@AIAM@Z: %moments"}
!32 = distinct !{!32, !"\01?Spotshadow_LoadSpatialParams@@YAXV?$vector@I$03@@AIAV?$vector@I$01@@Y03$$CAMY03$$CAIAIAV?$vector@M$02@@AIAM@Z"}
!33 = !{!34, !35, !36, !37}
!34 = distinct !{!34, !32, !"\01?Spotshadow_LoadSpatialParams@@YAXV?$vector@I$03@@AIAV?$vector@I$01@@Y03$$CAMY03$$CAIAIAV?$vector@M$02@@AIAM@Z: %packedVisibility"}
!35 = distinct !{!35, !32, !"\01?Spotshadow_LoadSpatialParams@@YAXV?$vector@I$03@@AIAV?$vector@I$01@@Y03$$CAMY03$$CAIAIAV?$vector@M$02@@AIAM@Z: %frustumIndices"}
!36 = distinct !{!36, !32, !"\01?Spotshadow_LoadSpatialParams@@YAXV?$vector@I$03@@AIAV?$vector@I$01@@Y03$$CAMY03$$CAIAIAV?$vector@M$02@@AIAM@Z: %normal"}
!37 = distinct !{!37, !32, !"\01?Spotshadow_LoadSpatialParams@@YAXV?$vector@I$03@@AIAV?$vector@I$01@@Y03$$CAMY03$$CAIAIAV?$vector@M$02@@AIAM@Z: %depth"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"\01?Spotshadow_LoadTemporalParams@@YAXV?$vector@I$01@@Y03$$CAMY03$$CAIAIAIAIAM@Z: %moments"}
!40 = distinct !{!40, !"\01?Spotshadow_LoadTemporalParams@@YAXV?$vector@I$01@@Y03$$CAMY03$$CAIAIAIAIAM@Z"}
!41 = !{!42, !43, !44}
!42 = distinct !{!42, !40, !"\01?Spotshadow_LoadTemporalParams@@YAXV?$vector@I$01@@Y03$$CAMY03$$CAIAIAIAIAM@Z: %temporalIndices"}
!43 = distinct !{!43, !40, !"\01?Spotshadow_LoadTemporalParams@@YAXV?$vector@I$01@@Y03$$CAMY03$$CAIAIAIAIAM@Z: %frameCount"}
!44 = distinct !{!44, !40, !"\01?Spotshadow_LoadTemporalParams@@YAXV?$vector@I$01@@Y03$$CAMY03$$CAIAIAIAIAM@Z: %velocity"}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}

