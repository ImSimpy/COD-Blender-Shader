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
; shader hash: b16b7382aee6341a95c9ee79189876ff
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     u32          2d      T0             t3     1
;                                   texture     f32        2dMS      T1             t2     1
;                                   texture     f32          2d      T2             t4     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DMS<vector<float, 3>, 0>" = type { <3 x float>, %"class.Texture2DMS<vector<float, 3>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 3>, 0>::sample_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%DownsampleConstants_decl = type { %struct.DownsampleConstants }
%struct.DownsampleConstants = type { <4 x float>, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedDiffuse@@3PAY07$$CAIA.1dim" = addrspace(3) global [64 x i32] undef, align 4

define void @cs_diffuse_downsample_interior_init_vrs() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %15 = uitofp i32 %11 to float
  %16 = uitofp i32 %12 to float
  %17 = fmul fast float %15, 2.000000e+00
  %18 = fmul fast float %16, 2.000000e+00
  %19 = fadd fast float %17, 1.000000e+00
  %20 = fadd fast float %18, 1.000000e+00
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 2
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 3
  %24 = fmul fast float %22, %19
  %25 = fmul fast float %23, %20
  %26 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %8, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = bitcast float %27 to i32
  %29 = lshr i32 %28, 11
  %30 = and i32 %28, 2047
  %31 = and i32 %29, 2047
  %32 = uitofp i32 %30 to float
  %33 = uitofp i32 %31 to float
  %34 = fmul fast float %32, 0x3F50040100000000
  %35 = fmul fast float %33, 0x3F50040100000000
  %36 = fadd fast float %34, -1.000000e+00
  %37 = fadd fast float %35, -1.000000e+00
  %38 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %39 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %40 = fadd fast float %38, -5.000000e-01
  %41 = fadd fast float %39, -5.000000e-01
  %42 = fmul fast float %40, 2.000000e+00
  %43 = fmul fast float %41, 2.000000e+00
  %44 = call float @dx.op.unary.f32(i32 7, float %42)  ; Saturate(value)
  %45 = call float @dx.op.unary.f32(i32 7, float %43)  ; Saturate(value)
  %46 = fmul fast float %38, 2.000000e+00
  %47 = fmul fast float %39, 2.000000e+00
  %48 = call float @dx.op.unary.f32(i32 7, float %46)  ; Saturate(value)
  %49 = call float @dx.op.unary.f32(i32 7, float %47)  ; Saturate(value)
  %50 = fmul fast float %44, %44
  %51 = fmul fast float %50, 0x3FA48888A0000000
  %52 = fmul fast float %45, %45
  %53 = fmul fast float %52, 0x3FB2407960000000
  %54 = fmul fast float %48, 0x3F599999A0000000
  %55 = fmul fast float %49, 0x3F66C16C20000000
  %56 = fadd fast float %54, %51
  %57 = fadd fast float %55, %53
  %58 = fsub fast float -0.000000e+00, %56
  %59 = fsub fast float -0.000000e+00, %57
  %60 = fcmp fast olt float %36, 0.000000e+00
  %61 = fcmp fast olt float %37, 0.000000e+00
  %62 = select i1 %60, float 0.000000e+00, float 1.000000e+00
  %63 = select i1 %61, float 0.000000e+00, float 1.000000e+00
  %64 = fcmp fast une float %62, 0.000000e+00
  %65 = fcmp fast une float %63, 0.000000e+00
  %66 = select i1 %64, float %56, float %58
  %67 = select i1 %65, float %57, float %59
  %68 = fsub fast float %24, %66
  %69 = fsub fast float %25, %67
  %70 = call float @dx.op.unary.f32(i32 7, float %68)  ; Saturate(value)
  %71 = call float @dx.op.unary.f32(i32 7, float %69)  ; Saturate(value)
  %72 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %74 = fmul fast float %72, %70
  %75 = fmul fast float %73, %71
  %76 = fptosi float %74 to i32
  %77 = fptosi float %75 to i32
  %78 = ashr i32 %76, 1
  %79 = ashr i32 %77, 1
  %80 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %11, i32 %12, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.i32 %80, 0
  %82 = and i32 %81, 1
  %83 = shl i32 1, %82
  %84 = and i32 %81, 2
  %85 = shl i32 1, %84
  %86 = or i32 %83, %85
  %87 = and i32 %81, 3
  %88 = shl i32 1, %87
  %89 = or i32 %86, %88
  %90 = and i32 %89, -2
  %91 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %78, i32 %79, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = extractvalue %dx.types.ResRet.f32 %91, 1
  %94 = extractvalue %dx.types.ResRet.f32 %91, 2
  %95 = icmp eq i32 %90, 0
  br i1 %95, label %118, label %96

; <label>:96                                      ; preds = %0
  br label %97

; <label>:97                                      ; preds = %97, %96
  %98 = phi float [ %112, %97 ], [ %92, %96 ]
  %99 = phi float [ %113, %97 ], [ %93, %96 ]
  %100 = phi float [ %114, %97 ], [ %94, %96 ]
  %101 = phi i32 [ %107, %97 ], [ %90, %96 ]
  %102 = phi float [ %115, %97 ], [ 1.000000e+00, %96 ]
  %103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %101)  ; FirstbitLo(value)
  %104 = and i32 %103, 31
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %101, %106
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 %103, i32 %78, i32 %79, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = fadd fast float %109, %98
  %113 = fadd fast float %110, %99
  %114 = fadd fast float %111, %100
  %115 = fadd fast float %102, 1.000000e+00
  %116 = icmp eq i32 %107, 0
  br i1 %116, label %117, label %97

; <label>:117                                     ; preds = %97
  br label %118

; <label>:118                                     ; preds = %117, %0
  %119 = phi float [ %92, %0 ], [ %112, %117 ]
  %120 = phi float [ %93, %0 ], [ %113, %117 ]
  %121 = phi float [ %94, %0 ], [ %114, %117 ]
  %122 = phi float [ 1.000000e+00, %0 ], [ %115, %117 ]
  %123 = fdiv fast float 1.000000e+00, %122
  %124 = fmul fast float %123, %119
  %125 = fmul fast float %123, %120
  %126 = fmul fast float %123, %121
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = fmul fast float %128, %124
  %130 = fmul fast float %128, %125
  %131 = fmul fast float %128, %126
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 undef, float %129, float %130, float %131, float %129, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %132 = call i32 @dx.op.legacyF32ToF16(i32 130, float %124)  ; LegacyF32ToF16(value)
  %133 = call i32 @dx.op.legacyF32ToF16(i32 130, float %125)  ; LegacyF32ToF16(value)
  %134 = call i32 @dx.op.legacyF32ToF16(i32 130, float %126)  ; LegacyF32ToF16(value)
  %135 = lshr i32 %132, 4
  %136 = and i32 %135, 2047
  %137 = shl i32 %133, 7
  %138 = and i32 %137, 4192256
  %139 = or i32 %138, %136
  %140 = lshr i32 %134, 5
  %141 = shl i32 %140, 22
  %142 = or i32 %139, %141
  %143 = mul i32 %13, 8
  %144 = add i32 %14, %143
  %145 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %144
  store i32 %142, i32 addrspace(3)* %145, align 4, !tbaa !24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %146 = xor i32 %13, 1
  %147 = mul i32 %146, 8
  %148 = add i32 %14, %147
  %149 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %148
  %150 = load i32, i32 addrspace(3)* %149, align 4, !tbaa !24
  %151 = shl i32 %150, 4
  %152 = and i32 %151, 32752
  %153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %152)  ; LegacyF16ToF32(value)
  %154 = lshr i32 %150, 7
  %155 = and i32 %154, 32752
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = lshr i32 %150, 22
  %158 = shl nuw nsw i32 %157, 5
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = xor i32 %14, 1
  %161 = mul i32 %13, 8
  %162 = add i32 %160, %161
  %163 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %162
  %164 = load i32, i32 addrspace(3)* %163, align 4, !tbaa !24
  %165 = shl i32 %164, 4
  %166 = and i32 %165, 32752
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = lshr i32 %164, 7
  %169 = and i32 %168, 32752
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = lshr i32 %164, 22
  %172 = shl nuw nsw i32 %171, 5
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = mul i32 %146, 8
  %175 = add i32 %160, %174
  %176 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %175
  %177 = load i32, i32 addrspace(3)* %176, align 4, !tbaa !24
  %178 = shl i32 %177, 4
  %179 = and i32 %178, 32752
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = lshr i32 %177, 7
  %182 = and i32 %181, 32752
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %177, 22
  %185 = shl nuw nsw i32 %184, 5
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = fadd fast float %153, %124
  %188 = fadd fast float %187, %167
  %189 = fadd fast float %188, %180
  %190 = fadd fast float %156, %125
  %191 = fadd fast float %190, %170
  %192 = fadd fast float %191, %183
  %193 = fadd fast float %159, %126
  %194 = fadd fast float %193, %173
  %195 = fadd fast float %194, %186
  %196 = fmul fast float %189, 2.500000e-01
  %197 = fmul fast float %192, 2.500000e-01
  %198 = fmul fast float %195, 2.500000e-01
  %199 = lshr i32 %11, 1
  %200 = lshr i32 %12, 1
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 0
  %203 = fmul fast float %202, %196
  %204 = fmul fast float %197, %202
  %205 = fmul fast float %198, %202
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %199, i32 %200, i32 undef, float %203, float %204, float %205, float %203, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %206 = call i32 @dx.op.legacyF32ToF16(i32 130, float %196)  ; LegacyF32ToF16(value)
  %207 = call i32 @dx.op.legacyF32ToF16(i32 130, float %197)  ; LegacyF32ToF16(value)
  %208 = call i32 @dx.op.legacyF32ToF16(i32 130, float %198)  ; LegacyF32ToF16(value)
  %209 = lshr i32 %206, 4
  %210 = and i32 %209, 2047
  %211 = shl i32 %207, 7
  %212 = and i32 %211, 4192256
  %213 = or i32 %212, %210
  %214 = lshr i32 %208, 5
  %215 = shl i32 %214, 22
  %216 = or i32 %213, %215
  store i32 %216, i32 addrspace(3)* %145, align 4, !tbaa !24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %217 = xor i32 %13, 2
  %218 = mul i32 %217, 8
  %219 = add i32 %14, %218
  %220 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %219
  %221 = load i32, i32 addrspace(3)* %220, align 4, !tbaa !24
  %222 = shl i32 %221, 4
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %221, 7
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %221, 22
  %229 = shl nuw nsw i32 %228, 5
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = xor i32 %14, 2
  %232 = mul i32 %13, 8
  %233 = add i32 %231, %232
  %234 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %233
  %235 = load i32, i32 addrspace(3)* %234, align 4, !tbaa !24
  %236 = shl i32 %235, 4
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %235, 7
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %235, 22
  %243 = shl nuw nsw i32 %242, 5
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = mul i32 %217, 8
  %246 = add i32 %231, %245
  %247 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %246
  %248 = load i32, i32 addrspace(3)* %247, align 4, !tbaa !24
  %249 = shl i32 %248, 4
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %248, 7
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %248, 22
  %256 = shl nuw nsw i32 %255, 5
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fadd fast float %224, %196
  %259 = fadd fast float %258, %238
  %260 = fadd fast float %259, %251
  %261 = fadd fast float %227, %197
  %262 = fadd fast float %261, %241
  %263 = fadd fast float %262, %254
  %264 = fadd fast float %230, %198
  %265 = fadd fast float %264, %244
  %266 = fadd fast float %265, %257
  %267 = fmul fast float %260, 2.500000e-01
  %268 = fmul fast float %263, 2.500000e-01
  %269 = fmul fast float %266, 2.500000e-01
  %270 = lshr i32 %11, 2
  %271 = lshr i32 %12, 2
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fmul fast float %273, %267
  %275 = fmul fast float %268, %273
  %276 = fmul fast float %269, %273
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %270, i32 %271, i32 undef, float %274, float %275, float %276, float %274, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %277 = call i32 @dx.op.legacyF32ToF16(i32 130, float %267)  ; LegacyF32ToF16(value)
  %278 = call i32 @dx.op.legacyF32ToF16(i32 130, float %268)  ; LegacyF32ToF16(value)
  %279 = call i32 @dx.op.legacyF32ToF16(i32 130, float %269)  ; LegacyF32ToF16(value)
  %280 = lshr i32 %277, 4
  %281 = and i32 %280, 2047
  %282 = shl i32 %278, 7
  %283 = and i32 %282, 4192256
  %284 = or i32 %283, %281
  %285 = lshr i32 %279, 5
  %286 = shl i32 %285, 22
  %287 = or i32 %284, %286
  store i32 %287, i32 addrspace(3)* %145, align 4, !tbaa !24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %288 = xor i32 %13, 4
  %289 = mul i32 %288, 8
  %290 = add i32 %14, %289
  %291 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %290
  %292 = load i32, i32 addrspace(3)* %291, align 4, !tbaa !24
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %292, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %292, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = xor i32 %14, 4
  %303 = mul i32 %13, 8
  %304 = add i32 %302, %303
  %305 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %304
  %306 = load i32, i32 addrspace(3)* %305, align 4, !tbaa !24
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = mul i32 %288, 8
  %317 = add i32 %302, %316
  %318 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedDiffuse@@3PAY07$$CAIA.1dim", i32 0, i32 %317
  %319 = load i32, i32 addrspace(3)* %318, align 4, !tbaa !24
  %320 = shl i32 %319, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %319, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %319, 22
  %327 = shl nuw nsw i32 %326, 5
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fadd fast float %295, %267
  %330 = fadd fast float %329, %309
  %331 = fadd fast float %330, %322
  %332 = fadd fast float %298, %268
  %333 = fadd fast float %332, %312
  %334 = fadd fast float %333, %325
  %335 = fadd fast float %301, %269
  %336 = fadd fast float %335, %315
  %337 = fadd fast float %336, %328
  %338 = fmul fast float %331, 2.500000e-01
  %339 = fmul fast float %334, 2.500000e-01
  %340 = fmul fast float %337, 2.500000e-01
  %341 = lshr i32 %11, 3
  %342 = lshr i32 %12, 3
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = fmul fast float %338, %344
  %346 = fmul fast float %339, %344
  %347 = fmul fast float %340, %344
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %341, i32 %342, i32 undef, float %345, float %346, float %347, float %345, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

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
!4 = !{!5, !11, !16, !19}
!5 = !{!6, !8, !10}
!6 = !{i32 0, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 5}
!8 = !{i32 1, %"class.Texture2DMS<vector<float, 3>, 0>"* undef, !"", i32 0, i32 2, i32 1, i32 3, i32 0, !9}
!9 = !{i32 0, i32 9}
!10 = !{i32 2, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !9}
!11 = !{!12, !13, !14, !15}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!13 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!14 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!15 = !{i32 3, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %DownsampleConstants_decl* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!19 = !{!20}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{void ()* @cs_diffuse_downsample_interior_init_vrs, !"cs_diffuse_downsample_interior_init_vrs", null, !4, !22}
!22 = !{i32 0, i64 256, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}

