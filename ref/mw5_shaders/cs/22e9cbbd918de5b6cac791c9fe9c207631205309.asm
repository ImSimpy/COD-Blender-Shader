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
; shader hash: 405cf905c82fcbf5dc78954f77222f8c
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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

@"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_diffuse_downsample_border() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 2
  %14 = icmp ult i32 %11, %13
  %15 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %16 = sub i32 %11, %13
  %17 = extractvalue %dx.types.CBufRet.i32 %12, 1
  %18 = select i1 %14, i32 %15, i32 %16
  %19 = select i1 %14, i32 %11, i32 %17
  %20 = shl i32 %18, 3
  %21 = shl i32 %19, 3
  %22 = add i32 %20, %9
  %23 = add i32 %21, %10
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fptoui float %25 to i32
  %28 = fptoui float %26 to i32
  %29 = icmp ult i32 %19, %17
  %30 = fcmp ule float %26, 1.600000e+01
  %31 = or i1 %29, %30
  %32 = icmp ugt i32 %10, 7
  %33 = and i1 %32, %31
  %34 = icmp ult i32 %18, %15
  %35 = fcmp ule float %25, 1.600000e+01
  %36 = or i1 %34, %35
  %37 = icmp ugt i32 %9, 7
  %38 = and i1 %37, %36
  %39 = or i1 %33, %38
  %40 = xor i1 %39, true
  %41 = lshr i32 %27, 1
  %42 = lshr i32 %28, 1
  %43 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %41)  ; UMax(a,b)
  %44 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %42)  ; UMax(a,b)
  %45 = icmp ult i32 %22, %43
  %46 = icmp ult i32 %23, %44
  %47 = and i1 %45, %46
  %48 = and i1 %47, %40
  br i1 %48, label %49, label %80, !dx.controlflow.hints !21

; <label>:49                                      ; preds = %0
  %50 = shl i32 %22, 1
  %51 = shl i32 %23, 1
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = uitofp i32 %50 to float
  %56 = uitofp i32 %51 to float
  %57 = fadd fast float %55, 1.000000e+00
  %58 = fadd fast float %56, 1.000000e+00
  %59 = fmul fast float %53, %57
  %60 = fmul fast float %54, %58
  %61 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = extractvalue %dx.types.ResRet.f32 %61, 1
  %64 = extractvalue %dx.types.ResRet.f32 %61, 2
  %65 = fmul fast float %62, 4.000000e+00
  %66 = fmul fast float %63, 4.000000e+00
  %67 = fmul fast float %64, 4.000000e+00
  %68 = and i32 %27, 1
  %69 = icmp ne i32 %68, 0
  %70 = add i32 %27, -3
  %71 = icmp eq i32 %70, %50
  %72 = and i1 %69, %71
  %73 = zext i1 %72 to i32
  %74 = and i32 %28, 1
  %75 = icmp ne i32 %74, 0
  %76 = add i32 %28, -3
  %77 = icmp eq i32 %76, %51
  %78 = and i1 %75, %77
  %79 = zext i1 %78 to i32
  br label %80

; <label>:80                                      ; preds = %49, %0
  %81 = phi i32 [ %50, %49 ], [ %22, %0 ]
  %82 = phi i32 [ %51, %49 ], [ %23, %0 ]
  %83 = phi float [ %65, %49 ], [ 0.000000e+00, %0 ]
  %84 = phi float [ %66, %49 ], [ 0.000000e+00, %0 ]
  %85 = phi float [ %67, %49 ], [ 0.000000e+00, %0 ]
  %86 = phi i32 [ %73, %49 ], [ 0, %0 ]
  %87 = phi i32 [ %79, %49 ], [ 0, %0 ]
  %88 = icmp eq i32 %86, 0
  br i1 %88, label %106, label %89, !dx.controlflow.hints !22

; <label>:89                                      ; preds = %80
  %90 = add i32 %81, 2
  %91 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %90, i32 %82, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = extractvalue %dx.types.ResRet.f32 %91, 1
  %94 = extractvalue %dx.types.ResRet.f32 %91, 2
  %95 = add i32 %82, 1
  %96 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %90, i32 %95, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = fadd fast float %92, %83
  %101 = fadd fast float %100, %97
  %102 = fadd fast float %93, %84
  %103 = fadd fast float %102, %98
  %104 = fadd fast float %94, %85
  %105 = fadd fast float %104, %99
  br label %106

; <label>:106                                     ; preds = %89, %80
  %107 = phi float [ %101, %89 ], [ %83, %80 ]
  %108 = phi float [ %103, %89 ], [ %84, %80 ]
  %109 = phi float [ %105, %89 ], [ %85, %80 ]
  %110 = phi float [ 0x3FC5555560000000, %89 ], [ 2.500000e-01, %80 ]
  %111 = icmp eq i32 %87, 0
  br i1 %111, label %129, label %112, !dx.controlflow.hints !23

; <label>:112                                     ; preds = %106
  %113 = add i32 %82, 2
  %114 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %81, i32 %113, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = add i32 %81, 1
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %118, i32 %113, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = extractvalue %dx.types.ResRet.f32 %119, 1
  %122 = extractvalue %dx.types.ResRet.f32 %119, 2
  %123 = fadd fast float %115, %107
  %124 = fadd fast float %123, %120
  %125 = fadd fast float %116, %108
  %126 = fadd fast float %125, %121
  %127 = fadd fast float %117, %109
  %128 = fadd fast float %127, %122
  br label %129

; <label>:129                                     ; preds = %112, %106
  %130 = phi float [ %124, %112 ], [ %107, %106 ]
  %131 = phi float [ %126, %112 ], [ %108, %106 ]
  %132 = phi float [ %128, %112 ], [ %109, %106 ]
  %133 = phi float [ 0x3FC5555560000000, %112 ], [ %110, %106 ]
  %134 = icmp ne i32 %86, 0
  %135 = icmp ne i32 %87, 0
  %136 = and i1 %134, %135
  br i1 %136, label %137, label %147, !dx.controlflow.hints !24

; <label>:137                                     ; preds = %129
  %138 = add i32 %81, 2
  %139 = add i32 %82, 2
  %140 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = extractvalue %dx.types.ResRet.f32 %140, 1
  %143 = extractvalue %dx.types.ResRet.f32 %140, 2
  %144 = fadd fast float %141, %130
  %145 = fadd fast float %142, %131
  %146 = fadd fast float %143, %132
  br label %147

; <label>:147                                     ; preds = %137, %129
  %148 = phi float [ %144, %137 ], [ %130, %129 ]
  %149 = phi float [ %145, %137 ], [ %131, %129 ]
  %150 = phi float [ %146, %137 ], [ %132, %129 ]
  %151 = phi float [ 0x3FBC71C720000000, %137 ], [ %133, %129 ]
  %152 = fmul fast float %151, %148
  %153 = fmul fast float %151, %149
  %154 = fmul fast float %151, %150
  br i1 %48, label %155, label %177, !dx.controlflow.hints !25

; <label>:155                                     ; preds = %147
  %156 = call i32 @dx.op.legacyF32ToF16(i32 130, float %152)  ; LegacyF32ToF16(value)
  %157 = call i32 @dx.op.legacyF32ToF16(i32 130, float %153)  ; LegacyF32ToF16(value)
  %158 = call i32 @dx.op.legacyF32ToF16(i32 130, float %154)  ; LegacyF32ToF16(value)
  %159 = lshr i32 %156, 4
  %160 = and i32 %159, 2047
  %161 = shl i32 %157, 7
  %162 = and i32 %161, 4192256
  %163 = or i32 %162, %160
  %164 = lshr i32 %158, 5
  %165 = shl i32 %164, 22
  %166 = or i32 %163, %165
  %167 = and i32 %23, 15
  %168 = and i32 %22, 15
  %169 = mul i32 %168, 16
  %170 = add i32 %167, %169
  %171 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %170
  store i32 %166, i32 addrspace(3)* %171, align 4, !tbaa !26
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = fmul fast float %173, %152
  %175 = fmul fast float %173, %153
  %176 = fmul fast float %173, %154
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %22, i32 %23, i32 undef, float %174, float %175, float %176, float %174, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %177

; <label>:177                                     ; preds = %155, %147
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 3
  %180 = icmp ugt i32 %179, 1
  br i1 %180, label %181, label %427, !dx.controlflow.hints !30

; <label>:181                                     ; preds = %177
  %182 = lshr i32 %22, 1
  %183 = lshr i32 %23, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %184 = lshr i32 %43, 1
  %185 = lshr i32 %44, 1
  %186 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %184)  ; UMax(a,b)
  %187 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %185)  ; UMax(a,b)
  %188 = icmp ult i32 %182, %186
  %189 = icmp ult i32 %183, %187
  %190 = and i1 %188, %189
  %191 = and i1 %190, %40
  %192 = shl nuw i32 %182, 1
  %193 = shl nuw i32 %183, 1
  br i1 %191, label %194, label %283, !dx.controlflow.hints !31

; <label>:194                                     ; preds = %181
  %195 = or i32 %192, 1
  %196 = or i32 %193, 1
  %197 = add i32 %43, -1
  %198 = add i32 %44, -1
  %199 = call i32 @dx.op.binary.i32(i32 40, i32 %192, i32 %197)  ; UMin(a,b)
  %200 = call i32 @dx.op.binary.i32(i32 40, i32 %193, i32 %198)  ; UMin(a,b)
  %201 = call i32 @dx.op.binary.i32(i32 40, i32 %195, i32 %197)  ; UMin(a,b)
  %202 = call i32 @dx.op.binary.i32(i32 40, i32 %196, i32 %198)  ; UMin(a,b)
  %203 = and i32 %199, 15
  %204 = and i32 %200, 15
  %205 = and i32 %201, 15
  %206 = and i32 %202, 15
  %207 = mul i32 %203, 16
  %208 = add i32 %204, %207
  %209 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %208
  %210 = load i32, i32 addrspace(3)* %209, align 4, !tbaa !26
  %211 = shl i32 %210, 4
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %210, 7
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = lshr i32 %210, 22
  %218 = shl nuw nsw i32 %217, 5
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = mul i32 %205, 16
  %221 = add i32 %204, %220
  %222 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %221
  %223 = load i32, i32 addrspace(3)* %222, align 4, !tbaa !26
  %224 = shl i32 %223, 4
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %223, 7
  %228 = and i32 %227, 32752
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %223, 22
  %231 = shl nuw nsw i32 %230, 5
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = mul i32 %203, 16
  %234 = add i32 %206, %233
  %235 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %234
  %236 = load i32, i32 addrspace(3)* %235, align 4, !tbaa !26
  %237 = shl i32 %236, 4
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %236, 7
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %236, 22
  %244 = shl nuw nsw i32 %243, 5
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = mul i32 %205, 16
  %247 = add i32 %206, %246
  %248 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %247
  %249 = load i32, i32 addrspace(3)* %248, align 4, !tbaa !26
  %250 = shl i32 %249, 4
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %249, 7
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fadd fast float %226, %213
  %260 = fadd fast float %229, %216
  %261 = fadd fast float %232, %219
  %262 = fadd fast float %259, %239
  %263 = fadd fast float %260, %242
  %264 = fadd fast float %261, %245
  %265 = fadd fast float %262, %252
  %266 = fadd fast float %263, %255
  %267 = fadd fast float %264, %258
  %268 = icmp ugt i32 %43, 1
  %269 = and i32 %43, 1
  %270 = icmp ne i32 %269, 0
  %271 = and i1 %268, %270
  %272 = add i32 %43, -3
  %273 = icmp eq i32 %272, %192
  %274 = and i1 %273, %271
  %275 = icmp ugt i32 %44, 1
  %276 = and i32 %44, 1
  %277 = icmp ne i32 %276, 0
  %278 = and i1 %275, %277
  %279 = add i32 %44, -3
  %280 = icmp eq i32 %279, %193
  %281 = and i1 %280, %278
  %282 = zext i1 %281 to i32
  br label %283

; <label>:283                                     ; preds = %194, %181
  %284 = phi float [ %265, %194 ], [ 0.000000e+00, %181 ]
  %285 = phi float [ %266, %194 ], [ 0.000000e+00, %181 ]
  %286 = phi float [ %267, %194 ], [ 0.000000e+00, %181 ]
  %287 = phi i1 [ %274, %194 ], [ false, %181 ]
  %288 = phi i32 [ %282, %194 ], [ 0, %181 ]
  br i1 %287, label %289, label %326, !dx.controlflow.hints !32

; <label>:289                                     ; preds = %283
  %290 = and i32 %193, 14
  %291 = add i32 %192, 2
  %292 = and i32 %291, 14
  %293 = mul i32 %292, 16
  %294 = add i32 %290, %293
  %295 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %294
  %296 = load i32, i32 addrspace(3)* %295, align 4, !tbaa !26
  %297 = shl i32 %296, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %296, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %296, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = or i32 %290, 1
  %307 = mul i32 %292, 16
  %308 = add i32 %306, %307
  %309 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %308
  %310 = load i32, i32 addrspace(3)* %309, align 4, !tbaa !26
  %311 = shl i32 %310, 4
  %312 = and i32 %311, 32752
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %310, 7
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 22
  %318 = shl nuw nsw i32 %317, 5
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fadd fast float %299, %284
  %321 = fadd fast float %320, %313
  %322 = fadd fast float %302, %285
  %323 = fadd fast float %322, %316
  %324 = fadd fast float %305, %286
  %325 = fadd fast float %324, %319
  br label %326

; <label>:326                                     ; preds = %289, %283
  %327 = phi float [ %321, %289 ], [ %284, %283 ]
  %328 = phi float [ %323, %289 ], [ %285, %283 ]
  %329 = phi float [ %325, %289 ], [ %286, %283 ]
  %330 = phi float [ 0x3FC5555560000000, %289 ], [ 2.500000e-01, %283 ]
  %331 = icmp eq i32 %288, 0
  br i1 %331, label %369, label %332, !dx.controlflow.hints !33

; <label>:332                                     ; preds = %326
  %333 = add i32 %193, 2
  %334 = and i32 %333, 14
  %335 = and i32 %192, 14
  %336 = mul i32 %335, 16
  %337 = add i32 %334, %336
  %338 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %337
  %339 = load i32, i32 addrspace(3)* %338, align 4, !tbaa !26
  %340 = shl i32 %339, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %339, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 22
  %347 = shl nuw nsw i32 %346, 5
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = or i32 %335, 1
  %350 = mul i32 %349, 16
  %351 = add i32 %334, %350
  %352 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %351
  %353 = load i32, i32 addrspace(3)* %352, align 4, !tbaa !26
  %354 = shl i32 %353, 4
  %355 = and i32 %354, 32752
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %353, 7
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %353, 22
  %361 = shl nuw nsw i32 %360, 5
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fadd fast float %342, %327
  %364 = fadd fast float %363, %356
  %365 = fadd fast float %345, %328
  %366 = fadd fast float %365, %359
  %367 = fadd fast float %348, %329
  %368 = fadd fast float %367, %362
  br label %369

; <label>:369                                     ; preds = %332, %326
  %370 = phi float [ %364, %332 ], [ %327, %326 ]
  %371 = phi float [ %366, %332 ], [ %328, %326 ]
  %372 = phi float [ %368, %332 ], [ %329, %326 ]
  %373 = phi float [ 0x3FC5555560000000, %332 ], [ %330, %326 ]
  %374 = icmp ne i32 %288, 0
  %375 = and i1 %287, %374
  br i1 %375, label %376, label %397, !dx.controlflow.hints !34

; <label>:376                                     ; preds = %369
  %377 = add i32 %193, 2
  %378 = and i32 %377, 14
  %379 = add i32 %192, 2
  %380 = and i32 %379, 14
  %381 = mul i32 %380, 16
  %382 = add i32 %378, %381
  %383 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %382
  %384 = load i32, i32 addrspace(3)* %383, align 4, !tbaa !26
  %385 = shl i32 %384, 4
  %386 = and i32 %385, 32752
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = lshr i32 %384, 7
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %384, 22
  %392 = shl nuw nsw i32 %391, 5
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = fadd fast float %387, %370
  %395 = fadd fast float %390, %371
  %396 = fadd fast float %393, %372
  br label %397

; <label>:397                                     ; preds = %376, %369
  %398 = phi float [ %394, %376 ], [ %370, %369 ]
  %399 = phi float [ %395, %376 ], [ %371, %369 ]
  %400 = phi float [ %396, %376 ], [ %372, %369 ]
  %401 = phi float [ 0x3FBC71C720000000, %376 ], [ %373, %369 ]
  %402 = fmul fast float %401, %398
  %403 = fmul fast float %401, %399
  %404 = fmul fast float %401, %400
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %191, label %405, label %427, !dx.controlflow.hints !35

; <label>:405                                     ; preds = %397
  %406 = call i32 @dx.op.legacyF32ToF16(i32 130, float %402)  ; LegacyF32ToF16(value)
  %407 = call i32 @dx.op.legacyF32ToF16(i32 130, float %403)  ; LegacyF32ToF16(value)
  %408 = call i32 @dx.op.legacyF32ToF16(i32 130, float %404)  ; LegacyF32ToF16(value)
  %409 = lshr i32 %406, 4
  %410 = and i32 %409, 2047
  %411 = shl i32 %407, 7
  %412 = and i32 %411, 4192256
  %413 = or i32 %412, %410
  %414 = lshr i32 %408, 5
  %415 = shl i32 %414, 22
  %416 = or i32 %413, %415
  %417 = and i32 %183, 15
  %418 = and i32 %182, 15
  %419 = mul i32 %418, 16
  %420 = add i32 %417, %419
  %421 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %420
  store i32 %416, i32 addrspace(3)* %421, align 4, !tbaa !26
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = fmul fast float %423, %402
  %425 = fmul fast float %423, %403
  %426 = fmul fast float %423, %404
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %182, i32 %183, i32 undef, float %424, float %425, float %426, float %424, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %427

; <label>:427                                     ; preds = %405, %397, %177
  %428 = phi i32 [ %27, %177 ], [ %43, %405 ], [ %43, %397 ]
  %429 = phi i32 [ %28, %177 ], [ %44, %405 ], [ %44, %397 ]
  %430 = phi i32 [ %22, %177 ], [ %182, %405 ], [ %182, %397 ]
  %431 = phi i32 [ %23, %177 ], [ %183, %405 ], [ %183, %397 ]
  %432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.i32 %432, 3
  %434 = icmp ugt i32 %433, 2
  br i1 %434, label %435, label %685, !dx.controlflow.hints !36

; <label>:435                                     ; preds = %427
  %436 = lshr i32 %428, 1
  %437 = lshr i32 %429, 1
  %438 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %436)  ; UMax(a,b)
  %439 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %437)  ; UMax(a,b)
  %440 = lshr i32 %430, 1
  %441 = lshr i32 %431, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %442 = lshr i32 %438, 1
  %443 = lshr i32 %439, 1
  %444 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %442)  ; UMax(a,b)
  %445 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %443)  ; UMax(a,b)
  %446 = icmp ult i32 %440, %444
  %447 = icmp ult i32 %441, %445
  %448 = and i1 %446, %447
  %449 = and i1 %448, %40
  %450 = shl nuw i32 %440, 1
  %451 = shl nuw i32 %441, 1
  br i1 %449, label %452, label %541, !dx.controlflow.hints !31

; <label>:452                                     ; preds = %435
  %453 = or i32 %450, 1
  %454 = or i32 %451, 1
  %455 = add i32 %438, -1
  %456 = add i32 %439, -1
  %457 = call i32 @dx.op.binary.i32(i32 40, i32 %450, i32 %455)  ; UMin(a,b)
  %458 = call i32 @dx.op.binary.i32(i32 40, i32 %451, i32 %456)  ; UMin(a,b)
  %459 = call i32 @dx.op.binary.i32(i32 40, i32 %453, i32 %455)  ; UMin(a,b)
  %460 = call i32 @dx.op.binary.i32(i32 40, i32 %454, i32 %456)  ; UMin(a,b)
  %461 = and i32 %457, 15
  %462 = and i32 %458, 15
  %463 = and i32 %459, 15
  %464 = and i32 %460, 15
  %465 = mul i32 %461, 16
  %466 = add i32 %462, %465
  %467 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %466
  %468 = load i32, i32 addrspace(3)* %467, align 4, !tbaa !26
  %469 = shl i32 %468, 4
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %468, 7
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %468, 22
  %476 = shl nuw nsw i32 %475, 5
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = mul i32 %463, 16
  %479 = add i32 %462, %478
  %480 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %479
  %481 = load i32, i32 addrspace(3)* %480, align 4, !tbaa !26
  %482 = shl i32 %481, 4
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %481, 7
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %481, 22
  %489 = shl nuw nsw i32 %488, 5
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = mul i32 %461, 16
  %492 = add i32 %464, %491
  %493 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %492
  %494 = load i32, i32 addrspace(3)* %493, align 4, !tbaa !26
  %495 = shl i32 %494, 4
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %494, 7
  %499 = and i32 %498, 32752
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %494, 22
  %502 = shl nuw nsw i32 %501, 5
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = mul i32 %463, 16
  %505 = add i32 %464, %504
  %506 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %505
  %507 = load i32, i32 addrspace(3)* %506, align 4, !tbaa !26
  %508 = shl i32 %507, 4
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %507, 7
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %507, 22
  %515 = shl nuw nsw i32 %514, 5
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fadd fast float %484, %471
  %518 = fadd fast float %487, %474
  %519 = fadd fast float %490, %477
  %520 = fadd fast float %517, %497
  %521 = fadd fast float %518, %500
  %522 = fadd fast float %519, %503
  %523 = fadd fast float %520, %510
  %524 = fadd fast float %521, %513
  %525 = fadd fast float %522, %516
  %526 = icmp ugt i32 %438, 1
  %527 = and i32 %438, 1
  %528 = icmp ne i32 %527, 0
  %529 = and i1 %526, %528
  %530 = add i32 %438, -3
  %531 = icmp eq i32 %530, %450
  %532 = and i1 %531, %529
  %533 = icmp ugt i32 %439, 1
  %534 = and i32 %439, 1
  %535 = icmp ne i32 %534, 0
  %536 = and i1 %533, %535
  %537 = add i32 %439, -3
  %538 = icmp eq i32 %537, %451
  %539 = and i1 %538, %536
  %540 = zext i1 %539 to i32
  br label %541

; <label>:541                                     ; preds = %452, %435
  %542 = phi float [ %523, %452 ], [ 0.000000e+00, %435 ]
  %543 = phi float [ %524, %452 ], [ 0.000000e+00, %435 ]
  %544 = phi float [ %525, %452 ], [ 0.000000e+00, %435 ]
  %545 = phi i1 [ %532, %452 ], [ false, %435 ]
  %546 = phi i32 [ %540, %452 ], [ 0, %435 ]
  br i1 %545, label %547, label %584, !dx.controlflow.hints !32

; <label>:547                                     ; preds = %541
  %548 = and i32 %451, 14
  %549 = add i32 %450, 2
  %550 = and i32 %549, 14
  %551 = mul i32 %550, 16
  %552 = add i32 %548, %551
  %553 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %552
  %554 = load i32, i32 addrspace(3)* %553, align 4, !tbaa !26
  %555 = shl i32 %554, 4
  %556 = and i32 %555, 32752
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %554, 7
  %559 = and i32 %558, 32752
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %554, 22
  %562 = shl nuw nsw i32 %561, 5
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = or i32 %548, 1
  %565 = mul i32 %550, 16
  %566 = add i32 %564, %565
  %567 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %566
  %568 = load i32, i32 addrspace(3)* %567, align 4, !tbaa !26
  %569 = shl i32 %568, 4
  %570 = and i32 %569, 32752
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = lshr i32 %568, 7
  %573 = and i32 %572, 32752
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %568, 22
  %576 = shl nuw nsw i32 %575, 5
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = fadd fast float %557, %542
  %579 = fadd fast float %578, %571
  %580 = fadd fast float %560, %543
  %581 = fadd fast float %580, %574
  %582 = fadd fast float %563, %544
  %583 = fadd fast float %582, %577
  br label %584

; <label>:584                                     ; preds = %547, %541
  %585 = phi float [ %579, %547 ], [ %542, %541 ]
  %586 = phi float [ %581, %547 ], [ %543, %541 ]
  %587 = phi float [ %583, %547 ], [ %544, %541 ]
  %588 = phi float [ 0x3FC5555560000000, %547 ], [ 2.500000e-01, %541 ]
  %589 = icmp eq i32 %546, 0
  br i1 %589, label %627, label %590, !dx.controlflow.hints !33

; <label>:590                                     ; preds = %584
  %591 = add i32 %451, 2
  %592 = and i32 %591, 14
  %593 = and i32 %450, 14
  %594 = mul i32 %593, 16
  %595 = add i32 %592, %594
  %596 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %595
  %597 = load i32, i32 addrspace(3)* %596, align 4, !tbaa !26
  %598 = shl i32 %597, 4
  %599 = and i32 %598, 32752
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %597, 7
  %602 = and i32 %601, 32752
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = lshr i32 %597, 22
  %605 = shl nuw nsw i32 %604, 5
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = or i32 %593, 1
  %608 = mul i32 %607, 16
  %609 = add i32 %592, %608
  %610 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %609
  %611 = load i32, i32 addrspace(3)* %610, align 4, !tbaa !26
  %612 = shl i32 %611, 4
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %611, 7
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = lshr i32 %611, 22
  %619 = shl nuw nsw i32 %618, 5
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fadd fast float %600, %585
  %622 = fadd fast float %621, %614
  %623 = fadd fast float %603, %586
  %624 = fadd fast float %623, %617
  %625 = fadd fast float %606, %587
  %626 = fadd fast float %625, %620
  br label %627

; <label>:627                                     ; preds = %590, %584
  %628 = phi float [ %622, %590 ], [ %585, %584 ]
  %629 = phi float [ %624, %590 ], [ %586, %584 ]
  %630 = phi float [ %626, %590 ], [ %587, %584 ]
  %631 = phi float [ 0x3FC5555560000000, %590 ], [ %588, %584 ]
  %632 = icmp ne i32 %546, 0
  %633 = and i1 %545, %632
  br i1 %633, label %634, label %655, !dx.controlflow.hints !34

; <label>:634                                     ; preds = %627
  %635 = add i32 %451, 2
  %636 = and i32 %635, 14
  %637 = add i32 %450, 2
  %638 = and i32 %637, 14
  %639 = mul i32 %638, 16
  %640 = add i32 %636, %639
  %641 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %640
  %642 = load i32, i32 addrspace(3)* %641, align 4, !tbaa !26
  %643 = shl i32 %642, 4
  %644 = and i32 %643, 32752
  %645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %644)  ; LegacyF16ToF32(value)
  %646 = lshr i32 %642, 7
  %647 = and i32 %646, 32752
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = lshr i32 %642, 22
  %650 = shl nuw nsw i32 %649, 5
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = fadd fast float %645, %628
  %653 = fadd fast float %648, %629
  %654 = fadd fast float %651, %630
  br label %655

; <label>:655                                     ; preds = %634, %627
  %656 = phi float [ %652, %634 ], [ %628, %627 ]
  %657 = phi float [ %653, %634 ], [ %629, %627 ]
  %658 = phi float [ %654, %634 ], [ %630, %627 ]
  %659 = phi float [ 0x3FBC71C720000000, %634 ], [ %631, %627 ]
  %660 = fmul fast float %659, %656
  %661 = fmul fast float %659, %657
  %662 = fmul fast float %659, %658
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %449, label %663, label %685, !dx.controlflow.hints !35

; <label>:663                                     ; preds = %655
  %664 = call i32 @dx.op.legacyF32ToF16(i32 130, float %660)  ; LegacyF32ToF16(value)
  %665 = call i32 @dx.op.legacyF32ToF16(i32 130, float %661)  ; LegacyF32ToF16(value)
  %666 = call i32 @dx.op.legacyF32ToF16(i32 130, float %662)  ; LegacyF32ToF16(value)
  %667 = lshr i32 %664, 4
  %668 = and i32 %667, 2047
  %669 = shl i32 %665, 7
  %670 = and i32 %669, 4192256
  %671 = or i32 %670, %668
  %672 = lshr i32 %666, 5
  %673 = shl i32 %672, 22
  %674 = or i32 %671, %673
  %675 = and i32 %441, 15
  %676 = and i32 %440, 15
  %677 = mul i32 %676, 16
  %678 = add i32 %675, %677
  %679 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %678
  store i32 %674, i32 addrspace(3)* %679, align 4, !tbaa !26
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 0
  %682 = fmul fast float %681, %660
  %683 = fmul fast float %681, %661
  %684 = fmul fast float %681, %662
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %440, i32 %441, i32 undef, float %682, float %683, float %684, float %682, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %685

; <label>:685                                     ; preds = %663, %655, %427
  %686 = phi i32 [ %428, %427 ], [ %438, %663 ], [ %438, %655 ]
  %687 = phi i32 [ %429, %427 ], [ %439, %663 ], [ %439, %655 ]
  %688 = phi i32 [ %430, %427 ], [ %440, %663 ], [ %440, %655 ]
  %689 = phi i32 [ %431, %427 ], [ %441, %663 ], [ %441, %655 ]
  %690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.i32 %690, 3
  %692 = icmp ugt i32 %691, 3
  br i1 %692, label %693, label %943, !dx.controlflow.hints !37

; <label>:693                                     ; preds = %685
  %694 = lshr i32 %686, 1
  %695 = lshr i32 %687, 1
  %696 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %694)  ; UMax(a,b)
  %697 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %695)  ; UMax(a,b)
  %698 = lshr i32 %688, 1
  %699 = lshr i32 %689, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %700 = lshr i32 %696, 1
  %701 = lshr i32 %697, 1
  %702 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %700)  ; UMax(a,b)
  %703 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %701)  ; UMax(a,b)
  %704 = icmp ult i32 %698, %702
  %705 = icmp ult i32 %699, %703
  %706 = and i1 %704, %705
  %707 = and i1 %706, %40
  %708 = shl nuw i32 %698, 1
  %709 = shl nuw i32 %699, 1
  br i1 %707, label %710, label %799, !dx.controlflow.hints !31

; <label>:710                                     ; preds = %693
  %711 = or i32 %708, 1
  %712 = or i32 %709, 1
  %713 = add i32 %696, -1
  %714 = add i32 %697, -1
  %715 = call i32 @dx.op.binary.i32(i32 40, i32 %708, i32 %713)  ; UMin(a,b)
  %716 = call i32 @dx.op.binary.i32(i32 40, i32 %709, i32 %714)  ; UMin(a,b)
  %717 = call i32 @dx.op.binary.i32(i32 40, i32 %711, i32 %713)  ; UMin(a,b)
  %718 = call i32 @dx.op.binary.i32(i32 40, i32 %712, i32 %714)  ; UMin(a,b)
  %719 = and i32 %715, 15
  %720 = and i32 %716, 15
  %721 = and i32 %717, 15
  %722 = and i32 %718, 15
  %723 = mul i32 %719, 16
  %724 = add i32 %720, %723
  %725 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %724
  %726 = load i32, i32 addrspace(3)* %725, align 4, !tbaa !26
  %727 = shl i32 %726, 4
  %728 = and i32 %727, 32752
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = lshr i32 %726, 7
  %731 = and i32 %730, 32752
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %726, 22
  %734 = shl nuw nsw i32 %733, 5
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = mul i32 %721, 16
  %737 = add i32 %720, %736
  %738 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %737
  %739 = load i32, i32 addrspace(3)* %738, align 4, !tbaa !26
  %740 = shl i32 %739, 4
  %741 = and i32 %740, 32752
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = lshr i32 %739, 7
  %744 = and i32 %743, 32752
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %739, 22
  %747 = shl nuw nsw i32 %746, 5
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = mul i32 %719, 16
  %750 = add i32 %722, %749
  %751 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %750
  %752 = load i32, i32 addrspace(3)* %751, align 4, !tbaa !26
  %753 = shl i32 %752, 4
  %754 = and i32 %753, 32752
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = lshr i32 %752, 7
  %757 = and i32 %756, 32752
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = lshr i32 %752, 22
  %760 = shl nuw nsw i32 %759, 5
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = mul i32 %721, 16
  %763 = add i32 %722, %762
  %764 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %763
  %765 = load i32, i32 addrspace(3)* %764, align 4, !tbaa !26
  %766 = shl i32 %765, 4
  %767 = and i32 %766, 32752
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %765, 7
  %770 = and i32 %769, 32752
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = lshr i32 %765, 22
  %773 = shl nuw nsw i32 %772, 5
  %774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %773)  ; LegacyF16ToF32(value)
  %775 = fadd fast float %742, %729
  %776 = fadd fast float %745, %732
  %777 = fadd fast float %748, %735
  %778 = fadd fast float %775, %755
  %779 = fadd fast float %776, %758
  %780 = fadd fast float %777, %761
  %781 = fadd fast float %778, %768
  %782 = fadd fast float %779, %771
  %783 = fadd fast float %780, %774
  %784 = icmp ugt i32 %696, 1
  %785 = and i32 %696, 1
  %786 = icmp ne i32 %785, 0
  %787 = and i1 %784, %786
  %788 = add i32 %696, -3
  %789 = icmp eq i32 %788, %708
  %790 = and i1 %789, %787
  %791 = icmp ugt i32 %697, 1
  %792 = and i32 %697, 1
  %793 = icmp ne i32 %792, 0
  %794 = and i1 %791, %793
  %795 = add i32 %697, -3
  %796 = icmp eq i32 %795, %709
  %797 = and i1 %796, %794
  %798 = zext i1 %797 to i32
  br label %799

; <label>:799                                     ; preds = %710, %693
  %800 = phi i32 [ %798, %710 ], [ 0, %693 ]
  %801 = phi i1 [ %790, %710 ], [ false, %693 ]
  %802 = phi float [ %781, %710 ], [ 0.000000e+00, %693 ]
  %803 = phi float [ %782, %710 ], [ 0.000000e+00, %693 ]
  %804 = phi float [ %783, %710 ], [ 0.000000e+00, %693 ]
  br i1 %801, label %805, label %842, !dx.controlflow.hints !32

; <label>:805                                     ; preds = %799
  %806 = and i32 %709, 14
  %807 = add i32 %708, 2
  %808 = and i32 %807, 14
  %809 = mul i32 %808, 16
  %810 = add i32 %806, %809
  %811 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %810
  %812 = load i32, i32 addrspace(3)* %811, align 4, !tbaa !26
  %813 = shl i32 %812, 4
  %814 = and i32 %813, 32752
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %812, 7
  %817 = and i32 %816, 32752
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 22
  %820 = shl nuw nsw i32 %819, 5
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = or i32 %806, 1
  %823 = mul i32 %808, 16
  %824 = add i32 %822, %823
  %825 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %824
  %826 = load i32, i32 addrspace(3)* %825, align 4, !tbaa !26
  %827 = shl i32 %826, 4
  %828 = and i32 %827, 32752
  %829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %828)  ; LegacyF16ToF32(value)
  %830 = lshr i32 %826, 7
  %831 = and i32 %830, 32752
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %826, 22
  %834 = shl nuw nsw i32 %833, 5
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = fadd fast float %815, %802
  %837 = fadd fast float %836, %829
  %838 = fadd fast float %818, %803
  %839 = fadd fast float %838, %832
  %840 = fadd fast float %821, %804
  %841 = fadd fast float %840, %835
  br label %842

; <label>:842                                     ; preds = %805, %799
  %843 = phi float [ 0x3FC5555560000000, %805 ], [ 2.500000e-01, %799 ]
  %844 = phi float [ %837, %805 ], [ %802, %799 ]
  %845 = phi float [ %839, %805 ], [ %803, %799 ]
  %846 = phi float [ %841, %805 ], [ %804, %799 ]
  %847 = icmp eq i32 %800, 0
  br i1 %847, label %885, label %848, !dx.controlflow.hints !33

; <label>:848                                     ; preds = %842
  %849 = add i32 %709, 2
  %850 = and i32 %849, 14
  %851 = and i32 %708, 14
  %852 = mul i32 %851, 16
  %853 = add i32 %850, %852
  %854 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %853
  %855 = load i32, i32 addrspace(3)* %854, align 4, !tbaa !26
  %856 = shl i32 %855, 4
  %857 = and i32 %856, 32752
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = lshr i32 %855, 7
  %860 = and i32 %859, 32752
  %861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %860)  ; LegacyF16ToF32(value)
  %862 = lshr i32 %855, 22
  %863 = shl nuw nsw i32 %862, 5
  %864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %863)  ; LegacyF16ToF32(value)
  %865 = or i32 %851, 1
  %866 = mul i32 %865, 16
  %867 = add i32 %850, %866
  %868 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %867
  %869 = load i32, i32 addrspace(3)* %868, align 4, !tbaa !26
  %870 = shl i32 %869, 4
  %871 = and i32 %870, 32752
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = lshr i32 %869, 7
  %874 = and i32 %873, 32752
  %875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %874)  ; LegacyF16ToF32(value)
  %876 = lshr i32 %869, 22
  %877 = shl nuw nsw i32 %876, 5
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  %879 = fadd fast float %858, %844
  %880 = fadd fast float %879, %872
  %881 = fadd fast float %861, %845
  %882 = fadd fast float %881, %875
  %883 = fadd fast float %864, %846
  %884 = fadd fast float %883, %878
  br label %885

; <label>:885                                     ; preds = %848, %842
  %886 = phi float [ 0x3FC5555560000000, %848 ], [ %843, %842 ]
  %887 = phi float [ %880, %848 ], [ %844, %842 ]
  %888 = phi float [ %882, %848 ], [ %845, %842 ]
  %889 = phi float [ %884, %848 ], [ %846, %842 ]
  %890 = icmp ne i32 %800, 0
  %891 = and i1 %801, %890
  br i1 %891, label %892, label %913, !dx.controlflow.hints !34

; <label>:892                                     ; preds = %885
  %893 = add i32 %709, 2
  %894 = and i32 %893, 14
  %895 = add i32 %708, 2
  %896 = and i32 %895, 14
  %897 = mul i32 %896, 16
  %898 = add i32 %894, %897
  %899 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %898
  %900 = load i32, i32 addrspace(3)* %899, align 4, !tbaa !26
  %901 = shl i32 %900, 4
  %902 = and i32 %901, 32752
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = lshr i32 %900, 7
  %905 = and i32 %904, 32752
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = lshr i32 %900, 22
  %908 = shl nuw nsw i32 %907, 5
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = fadd fast float %903, %887
  %911 = fadd fast float %906, %888
  %912 = fadd fast float %909, %889
  br label %913

; <label>:913                                     ; preds = %892, %885
  %914 = phi float [ 0x3FBC71C720000000, %892 ], [ %886, %885 ]
  %915 = phi float [ %910, %892 ], [ %887, %885 ]
  %916 = phi float [ %911, %892 ], [ %888, %885 ]
  %917 = phi float [ %912, %892 ], [ %889, %885 ]
  %918 = fmul fast float %915, %914
  %919 = fmul fast float %916, %914
  %920 = fmul fast float %917, %914
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %707, label %921, label %943, !dx.controlflow.hints !35

; <label>:921                                     ; preds = %913
  %922 = call i32 @dx.op.legacyF32ToF16(i32 130, float %918)  ; LegacyF32ToF16(value)
  %923 = call i32 @dx.op.legacyF32ToF16(i32 130, float %919)  ; LegacyF32ToF16(value)
  %924 = call i32 @dx.op.legacyF32ToF16(i32 130, float %920)  ; LegacyF32ToF16(value)
  %925 = lshr i32 %922, 4
  %926 = and i32 %925, 2047
  %927 = shl i32 %923, 7
  %928 = and i32 %927, 4192256
  %929 = or i32 %928, %926
  %930 = lshr i32 %924, 5
  %931 = shl i32 %930, 22
  %932 = or i32 %929, %931
  %933 = and i32 %699, 15
  %934 = and i32 %698, 15
  %935 = mul i32 %934, 16
  %936 = add i32 %933, %935
  %937 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %936
  store i32 %932, i32 addrspace(3)* %937, align 4, !tbaa !26
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = fmul fast float %939, %918
  %941 = fmul fast float %939, %919
  %942 = fmul fast float %939, %920
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %698, i32 %699, i32 undef, float %940, float %941, float %942, float %940, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %943

; <label>:943                                     ; preds = %921, %913, %685
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
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
!4 = !{!5, !8, !13, !16}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12}
!9 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %DownsampleConstants_decl* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_diffuse_downsample_border, !"cs_diffuse_downsample_border", null, !4, !19}
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 16, i32 16, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}

