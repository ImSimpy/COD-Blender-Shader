;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
;
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
; shader hash: c871e7728182a6d782b8c4473f71ebdc
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
;                                       UAV     f32          2d      U0             u4     1
;                                       UAV     f32          2d      U1             u0     1
;                                       UAV     f32          2d      U2             u1     1
;                                       UAV     f32          2d      U3             u2     1
;                                       UAV     f32          2d      U4             u3     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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

@"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim" = addrspace(3) global [256 x i32] undef, align 4

define void @cs_diffuse_downsample_border() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.i32 %11, 2
  %13 = icmp ult i32 %10, %12
  %14 = extractvalue %dx.types.CBufRet.i32 %11, 0
  %15 = sub i32 %10, %12
  %16 = extractvalue %dx.types.CBufRet.i32 %11, 1
  %17 = select i1 %13, i32 %14, i32 %15
  %18 = select i1 %13, i32 %10, i32 %16
  %19 = shl i32 %17, 3
  %20 = shl i32 %18, 3
  %21 = add i32 %19, %8
  %22 = add i32 %20, %9
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = fptoui float %24 to i32
  %27 = fptoui float %25 to i32
  %28 = icmp ult i32 %18, %16
  %29 = fcmp ule float %25, 1.600000e+01
  %30 = or i1 %28, %29
  %31 = icmp ugt i32 %9, 7
  %32 = and i1 %31, %30
  %33 = icmp ult i32 %17, %14
  %34 = fcmp ule float %24, 1.600000e+01
  %35 = or i1 %33, %34
  %36 = icmp ugt i32 %8, 7
  %37 = and i1 %36, %35
  %38 = or i1 %32, %37
  %39 = xor i1 %38, true
  %40 = lshr i32 %26, 1
  %41 = lshr i32 %27, 1
  %42 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %40)  ; UMax(a,b)
  %43 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %41)  ; UMax(a,b)
  %44 = icmp ult i32 %21, %42
  %45 = icmp ult i32 %22, %43
  %46 = and i1 %44, %45
  %47 = and i1 %46, %39
  br i1 %47, label %48, label %90, !dx.controlflow.hints !18

; <label>:48                                      ; preds = %0
  %49 = shl i32 %21, 1
  %50 = shl i32 %22, 1
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = extractvalue %dx.types.ResRet.f32 %51, 1
  %54 = extractvalue %dx.types.ResRet.f32 %51, 2
  %55 = or i32 %49, 1
  %56 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %55, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = extractvalue %dx.types.ResRet.f32 %56, 1
  %59 = extractvalue %dx.types.ResRet.f32 %56, 2
  %60 = fadd fast float %57, %52
  %61 = fadd fast float %58, %53
  %62 = fadd fast float %59, %54
  %63 = or i32 %50, 1
  %64 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %55, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %65 = extractvalue %dx.types.ResRet.f32 %64, 0
  %66 = extractvalue %dx.types.ResRet.f32 %64, 1
  %67 = extractvalue %dx.types.ResRet.f32 %64, 2
  %68 = fadd fast float %60, %65
  %69 = fadd fast float %61, %66
  %70 = fadd fast float %62, %67
  %71 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %49, i32 %63, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = fadd fast float %68, %72
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %70, %74
  %78 = and i32 %26, 1
  %79 = icmp ne i32 %78, 0
  %80 = add i32 %26, -3
  %81 = icmp eq i32 %80, %49
  %82 = and i1 %79, %81
  %83 = zext i1 %82 to i32
  %84 = and i32 %27, 1
  %85 = icmp ne i32 %84, 0
  %86 = add i32 %27, -3
  %87 = icmp eq i32 %86, %50
  %88 = and i1 %85, %87
  %89 = zext i1 %88 to i32
  br label %90

; <label>:90                                      ; preds = %48, %0
  %91 = phi i32 [ %49, %48 ], [ %21, %0 ]
  %92 = phi i32 [ %50, %48 ], [ %22, %0 ]
  %93 = phi float [ %75, %48 ], [ 0.000000e+00, %0 ]
  %94 = phi float [ %76, %48 ], [ 0.000000e+00, %0 ]
  %95 = phi float [ %77, %48 ], [ 0.000000e+00, %0 ]
  %96 = phi i32 [ %83, %48 ], [ 0, %0 ]
  %97 = phi i32 [ %89, %48 ], [ 0, %0 ]
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %116, label %99, !dx.controlflow.hints !19

; <label>:99                                      ; preds = %90
  %100 = add i32 %91, 2
  %101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %100, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = add i32 %92, 1
  %106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %100, i32 %105, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = fadd fast float %102, %93
  %111 = fadd fast float %110, %107
  %112 = fadd fast float %103, %94
  %113 = fadd fast float %112, %108
  %114 = fadd fast float %104, %95
  %115 = fadd fast float %114, %109
  br label %116

; <label>:116                                     ; preds = %99, %90
  %117 = phi float [ %111, %99 ], [ %93, %90 ]
  %118 = phi float [ %113, %99 ], [ %94, %90 ]
  %119 = phi float [ %115, %99 ], [ %95, %90 ]
  %120 = phi float [ 0x3FC5555560000000, %99 ], [ 2.500000e-01, %90 ]
  %121 = icmp eq i32 %97, 0
  br i1 %121, label %139, label %122, !dx.controlflow.hints !20

; <label>:122                                     ; preds = %116
  %123 = add i32 %92, 2
  %124 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %91, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = extractvalue %dx.types.ResRet.f32 %124, 1
  %127 = extractvalue %dx.types.ResRet.f32 %124, 2
  %128 = add i32 %91, 1
  %129 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %128, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = extractvalue %dx.types.ResRet.f32 %129, 1
  %132 = extractvalue %dx.types.ResRet.f32 %129, 2
  %133 = fadd fast float %125, %117
  %134 = fadd fast float %133, %130
  %135 = fadd fast float %126, %118
  %136 = fadd fast float %135, %131
  %137 = fadd fast float %127, %119
  %138 = fadd fast float %137, %132
  br label %139

; <label>:139                                     ; preds = %122, %116
  %140 = phi float [ %134, %122 ], [ %117, %116 ]
  %141 = phi float [ %136, %122 ], [ %118, %116 ]
  %142 = phi float [ %138, %122 ], [ %119, %116 ]
  %143 = phi float [ 0x3FC5555560000000, %122 ], [ %120, %116 ]
  %144 = icmp ne i32 %96, 0
  %145 = icmp ne i32 %97, 0
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %157, !dx.controlflow.hints !21

; <label>:147                                     ; preds = %139
  %148 = add i32 %91, 2
  %149 = add i32 %92, 2
  %150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 undef, i32 %148, i32 %149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = extractvalue %dx.types.ResRet.f32 %150, 1
  %153 = extractvalue %dx.types.ResRet.f32 %150, 2
  %154 = fadd fast float %151, %140
  %155 = fadd fast float %152, %141
  %156 = fadd fast float %153, %142
  br label %157

; <label>:157                                     ; preds = %147, %139
  %158 = phi float [ %154, %147 ], [ %140, %139 ]
  %159 = phi float [ %155, %147 ], [ %141, %139 ]
  %160 = phi float [ %156, %147 ], [ %142, %139 ]
  %161 = phi float [ 0x3FBC71C720000000, %147 ], [ %143, %139 ]
  %162 = fmul fast float %161, %158
  %163 = fmul fast float %161, %159
  %164 = fmul fast float %161, %160
  br i1 %47, label %165, label %187, !dx.controlflow.hints !22

; <label>:165                                     ; preds = %157
  %166 = call i32 @dx.op.legacyF32ToF16(i32 130, float %162)  ; LegacyF32ToF16(value)
  %167 = call i32 @dx.op.legacyF32ToF16(i32 130, float %163)  ; LegacyF32ToF16(value)
  %168 = call i32 @dx.op.legacyF32ToF16(i32 130, float %164)  ; LegacyF32ToF16(value)
  %169 = lshr i32 %166, 4
  %170 = and i32 %169, 2047
  %171 = shl i32 %167, 7
  %172 = and i32 %171, 4192256
  %173 = or i32 %172, %170
  %174 = lshr i32 %168, 5
  %175 = shl i32 %174, 22
  %176 = or i32 %173, %175
  %177 = and i32 %22, 15
  %178 = and i32 %21, 15
  %179 = mul i32 %178, 16
  %180 = add i32 %177, %179
  %181 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %180
  store i32 %176, i32 addrspace(3)* %181, align 4, !tbaa !23
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fmul fast float %183, %162
  %185 = fmul fast float %183, %163
  %186 = fmul fast float %183, %164
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %21, i32 %22, i32 undef, float %184, float %185, float %186, float %184, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %187

; <label>:187                                     ; preds = %165, %157
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 3
  %190 = icmp ugt i32 %189, 1
  br i1 %190, label %191, label %437, !dx.controlflow.hints !27

; <label>:191                                     ; preds = %187
  %192 = lshr i32 %21, 1
  %193 = lshr i32 %22, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %194 = lshr i32 %42, 1
  %195 = lshr i32 %43, 1
  %196 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %194)  ; UMax(a,b)
  %197 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %195)  ; UMax(a,b)
  %198 = icmp ult i32 %192, %196
  %199 = icmp ult i32 %193, %197
  %200 = and i1 %198, %199
  %201 = and i1 %200, %39
  %202 = shl nuw i32 %192, 1
  %203 = shl nuw i32 %193, 1
  br i1 %201, label %204, label %293, !dx.controlflow.hints !28

; <label>:204                                     ; preds = %191
  %205 = or i32 %202, 1
  %206 = or i32 %203, 1
  %207 = add i32 %42, -1
  %208 = add i32 %43, -1
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %202, i32 %207)  ; UMin(a,b)
  %210 = call i32 @dx.op.binary.i32(i32 40, i32 %203, i32 %208)  ; UMin(a,b)
  %211 = call i32 @dx.op.binary.i32(i32 40, i32 %205, i32 %207)  ; UMin(a,b)
  %212 = call i32 @dx.op.binary.i32(i32 40, i32 %206, i32 %208)  ; UMin(a,b)
  %213 = and i32 %209, 15
  %214 = and i32 %210, 15
  %215 = and i32 %211, 15
  %216 = and i32 %212, 15
  %217 = mul i32 %213, 16
  %218 = add i32 %214, %217
  %219 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %218
  %220 = load i32, i32 addrspace(3)* %219, align 4, !tbaa !23
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = mul i32 %215, 16
  %231 = add i32 %214, %230
  %232 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %231
  %233 = load i32, i32 addrspace(3)* %232, align 4, !tbaa !23
  %234 = shl i32 %233, 4
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %233, 7
  %238 = and i32 %237, 32752
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %233, 22
  %241 = shl nuw nsw i32 %240, 5
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = mul i32 %213, 16
  %244 = add i32 %216, %243
  %245 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %244
  %246 = load i32, i32 addrspace(3)* %245, align 4, !tbaa !23
  %247 = shl i32 %246, 4
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %246, 7
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %246, 22
  %254 = shl nuw nsw i32 %253, 5
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = mul i32 %215, 16
  %257 = add i32 %216, %256
  %258 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %257
  %259 = load i32, i32 addrspace(3)* %258, align 4, !tbaa !23
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fadd fast float %236, %223
  %270 = fadd fast float %239, %226
  %271 = fadd fast float %242, %229
  %272 = fadd fast float %269, %249
  %273 = fadd fast float %270, %252
  %274 = fadd fast float %271, %255
  %275 = fadd fast float %272, %262
  %276 = fadd fast float %273, %265
  %277 = fadd fast float %274, %268
  %278 = icmp ugt i32 %42, 1
  %279 = and i32 %42, 1
  %280 = icmp ne i32 %279, 0
  %281 = and i1 %278, %280
  %282 = add i32 %42, -3
  %283 = icmp eq i32 %282, %202
  %284 = and i1 %283, %281
  %285 = icmp ugt i32 %43, 1
  %286 = and i32 %43, 1
  %287 = icmp ne i32 %286, 0
  %288 = and i1 %285, %287
  %289 = add i32 %43, -3
  %290 = icmp eq i32 %289, %203
  %291 = and i1 %290, %288
  %292 = zext i1 %291 to i32
  br label %293

; <label>:293                                     ; preds = %204, %191
  %294 = phi float [ %275, %204 ], [ 0.000000e+00, %191 ]
  %295 = phi float [ %276, %204 ], [ 0.000000e+00, %191 ]
  %296 = phi float [ %277, %204 ], [ 0.000000e+00, %191 ]
  %297 = phi i1 [ %284, %204 ], [ false, %191 ]
  %298 = phi i32 [ %292, %204 ], [ 0, %191 ]
  br i1 %297, label %299, label %336, !dx.controlflow.hints !29

; <label>:299                                     ; preds = %293
  %300 = and i32 %203, 14
  %301 = add i32 %202, 2
  %302 = and i32 %301, 14
  %303 = mul i32 %302, 16
  %304 = add i32 %300, %303
  %305 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %304
  %306 = load i32, i32 addrspace(3)* %305, align 4, !tbaa !23
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = or i32 %300, 1
  %317 = mul i32 %302, 16
  %318 = add i32 %316, %317
  %319 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %318
  %320 = load i32, i32 addrspace(3)* %319, align 4, !tbaa !23
  %321 = shl i32 %320, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %320, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %320, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fadd fast float %309, %294
  %331 = fadd fast float %330, %323
  %332 = fadd fast float %312, %295
  %333 = fadd fast float %332, %326
  %334 = fadd fast float %315, %296
  %335 = fadd fast float %334, %329
  br label %336

; <label>:336                                     ; preds = %299, %293
  %337 = phi float [ %331, %299 ], [ %294, %293 ]
  %338 = phi float [ %333, %299 ], [ %295, %293 ]
  %339 = phi float [ %335, %299 ], [ %296, %293 ]
  %340 = phi float [ 0x3FC5555560000000, %299 ], [ 2.500000e-01, %293 ]
  %341 = icmp eq i32 %298, 0
  br i1 %341, label %379, label %342, !dx.controlflow.hints !30

; <label>:342                                     ; preds = %336
  %343 = add i32 %203, 2
  %344 = and i32 %343, 14
  %345 = and i32 %202, 14
  %346 = mul i32 %345, 16
  %347 = add i32 %344, %346
  %348 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %347
  %349 = load i32, i32 addrspace(3)* %348, align 4, !tbaa !23
  %350 = shl i32 %349, 4
  %351 = and i32 %350, 32752
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %349, 7
  %354 = and i32 %353, 32752
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %349, 22
  %357 = shl nuw nsw i32 %356, 5
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = or i32 %345, 1
  %360 = mul i32 %359, 16
  %361 = add i32 %344, %360
  %362 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %361
  %363 = load i32, i32 addrspace(3)* %362, align 4, !tbaa !23
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fadd fast float %352, %337
  %374 = fadd fast float %373, %366
  %375 = fadd fast float %355, %338
  %376 = fadd fast float %375, %369
  %377 = fadd fast float %358, %339
  %378 = fadd fast float %377, %372
  br label %379

; <label>:379                                     ; preds = %342, %336
  %380 = phi float [ %374, %342 ], [ %337, %336 ]
  %381 = phi float [ %376, %342 ], [ %338, %336 ]
  %382 = phi float [ %378, %342 ], [ %339, %336 ]
  %383 = phi float [ 0x3FC5555560000000, %342 ], [ %340, %336 ]
  %384 = icmp ne i32 %298, 0
  %385 = and i1 %297, %384
  br i1 %385, label %386, label %407, !dx.controlflow.hints !31

; <label>:386                                     ; preds = %379
  %387 = add i32 %203, 2
  %388 = and i32 %387, 14
  %389 = add i32 %202, 2
  %390 = and i32 %389, 14
  %391 = mul i32 %390, 16
  %392 = add i32 %388, %391
  %393 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %392
  %394 = load i32, i32 addrspace(3)* %393, align 4, !tbaa !23
  %395 = shl i32 %394, 4
  %396 = and i32 %395, 32752
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %394, 7
  %399 = and i32 %398, 32752
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %394, 22
  %402 = shl nuw nsw i32 %401, 5
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = fadd fast float %397, %380
  %405 = fadd fast float %400, %381
  %406 = fadd fast float %403, %382
  br label %407

; <label>:407                                     ; preds = %386, %379
  %408 = phi float [ %404, %386 ], [ %380, %379 ]
  %409 = phi float [ %405, %386 ], [ %381, %379 ]
  %410 = phi float [ %406, %386 ], [ %382, %379 ]
  %411 = phi float [ 0x3FBC71C720000000, %386 ], [ %383, %379 ]
  %412 = fmul fast float %411, %408
  %413 = fmul fast float %411, %409
  %414 = fmul fast float %411, %410
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %201, label %415, label %437, !dx.controlflow.hints !32

; <label>:415                                     ; preds = %407
  %416 = call i32 @dx.op.legacyF32ToF16(i32 130, float %412)  ; LegacyF32ToF16(value)
  %417 = call i32 @dx.op.legacyF32ToF16(i32 130, float %413)  ; LegacyF32ToF16(value)
  %418 = call i32 @dx.op.legacyF32ToF16(i32 130, float %414)  ; LegacyF32ToF16(value)
  %419 = lshr i32 %416, 4
  %420 = and i32 %419, 2047
  %421 = shl i32 %417, 7
  %422 = and i32 %421, 4192256
  %423 = or i32 %422, %420
  %424 = lshr i32 %418, 5
  %425 = shl i32 %424, 22
  %426 = or i32 %423, %425
  %427 = and i32 %193, 15
  %428 = and i32 %192, 15
  %429 = mul i32 %428, 16
  %430 = add i32 %427, %429
  %431 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %430
  store i32 %426, i32 addrspace(3)* %431, align 4, !tbaa !23
  %432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.f32 %432, 0
  %434 = fmul fast float %433, %412
  %435 = fmul fast float %433, %413
  %436 = fmul fast float %433, %414
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %192, i32 %193, i32 undef, float %434, float %435, float %436, float %434, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %437

; <label>:437                                     ; preds = %415, %407, %187
  %438 = phi i32 [ %26, %187 ], [ %42, %415 ], [ %42, %407 ]
  %439 = phi i32 [ %27, %187 ], [ %43, %415 ], [ %43, %407 ]
  %440 = phi i32 [ %21, %187 ], [ %192, %415 ], [ %192, %407 ]
  %441 = phi i32 [ %22, %187 ], [ %193, %415 ], [ %193, %407 ]
  %442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %443 = extractvalue %dx.types.CBufRet.i32 %442, 3
  %444 = icmp ugt i32 %443, 2
  br i1 %444, label %445, label %695, !dx.controlflow.hints !33

; <label>:445                                     ; preds = %437
  %446 = lshr i32 %438, 1
  %447 = lshr i32 %439, 1
  %448 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %446)  ; UMax(a,b)
  %449 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %447)  ; UMax(a,b)
  %450 = lshr i32 %440, 1
  %451 = lshr i32 %441, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %452 = lshr i32 %448, 1
  %453 = lshr i32 %449, 1
  %454 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %452)  ; UMax(a,b)
  %455 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %453)  ; UMax(a,b)
  %456 = icmp ult i32 %450, %454
  %457 = icmp ult i32 %451, %455
  %458 = and i1 %456, %457
  %459 = and i1 %458, %39
  %460 = shl nuw i32 %450, 1
  %461 = shl nuw i32 %451, 1
  br i1 %459, label %462, label %551, !dx.controlflow.hints !28

; <label>:462                                     ; preds = %445
  %463 = or i32 %460, 1
  %464 = or i32 %461, 1
  %465 = add i32 %448, -1
  %466 = add i32 %449, -1
  %467 = call i32 @dx.op.binary.i32(i32 40, i32 %460, i32 %465)  ; UMin(a,b)
  %468 = call i32 @dx.op.binary.i32(i32 40, i32 %461, i32 %466)  ; UMin(a,b)
  %469 = call i32 @dx.op.binary.i32(i32 40, i32 %463, i32 %465)  ; UMin(a,b)
  %470 = call i32 @dx.op.binary.i32(i32 40, i32 %464, i32 %466)  ; UMin(a,b)
  %471 = and i32 %467, 15
  %472 = and i32 %468, 15
  %473 = and i32 %469, 15
  %474 = and i32 %470, 15
  %475 = mul i32 %471, 16
  %476 = add i32 %472, %475
  %477 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %476
  %478 = load i32, i32 addrspace(3)* %477, align 4, !tbaa !23
  %479 = shl i32 %478, 4
  %480 = and i32 %479, 32752
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %478, 7
  %483 = and i32 %482, 32752
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = lshr i32 %478, 22
  %486 = shl nuw nsw i32 %485, 5
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = mul i32 %473, 16
  %489 = add i32 %472, %488
  %490 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %489
  %491 = load i32, i32 addrspace(3)* %490, align 4, !tbaa !23
  %492 = shl i32 %491, 4
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %491, 7
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %491, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = mul i32 %471, 16
  %502 = add i32 %474, %501
  %503 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %502
  %504 = load i32, i32 addrspace(3)* %503, align 4, !tbaa !23
  %505 = shl i32 %504, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %504, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %504, 22
  %512 = shl nuw nsw i32 %511, 5
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = mul i32 %473, 16
  %515 = add i32 %474, %514
  %516 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %515
  %517 = load i32, i32 addrspace(3)* %516, align 4, !tbaa !23
  %518 = shl i32 %517, 4
  %519 = and i32 %518, 32752
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %517, 7
  %522 = and i32 %521, 32752
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %517, 22
  %525 = shl nuw nsw i32 %524, 5
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = fadd fast float %494, %481
  %528 = fadd fast float %497, %484
  %529 = fadd fast float %500, %487
  %530 = fadd fast float %527, %507
  %531 = fadd fast float %528, %510
  %532 = fadd fast float %529, %513
  %533 = fadd fast float %530, %520
  %534 = fadd fast float %531, %523
  %535 = fadd fast float %532, %526
  %536 = icmp ugt i32 %448, 1
  %537 = and i32 %448, 1
  %538 = icmp ne i32 %537, 0
  %539 = and i1 %536, %538
  %540 = add i32 %448, -3
  %541 = icmp eq i32 %540, %460
  %542 = and i1 %541, %539
  %543 = icmp ugt i32 %449, 1
  %544 = and i32 %449, 1
  %545 = icmp ne i32 %544, 0
  %546 = and i1 %543, %545
  %547 = add i32 %449, -3
  %548 = icmp eq i32 %547, %461
  %549 = and i1 %548, %546
  %550 = zext i1 %549 to i32
  br label %551

; <label>:551                                     ; preds = %462, %445
  %552 = phi float [ %533, %462 ], [ 0.000000e+00, %445 ]
  %553 = phi float [ %534, %462 ], [ 0.000000e+00, %445 ]
  %554 = phi float [ %535, %462 ], [ 0.000000e+00, %445 ]
  %555 = phi i1 [ %542, %462 ], [ false, %445 ]
  %556 = phi i32 [ %550, %462 ], [ 0, %445 ]
  br i1 %555, label %557, label %594, !dx.controlflow.hints !29

; <label>:557                                     ; preds = %551
  %558 = and i32 %461, 14
  %559 = add i32 %460, 2
  %560 = and i32 %559, 14
  %561 = mul i32 %560, 16
  %562 = add i32 %558, %561
  %563 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %562
  %564 = load i32, i32 addrspace(3)* %563, align 4, !tbaa !23
  %565 = shl i32 %564, 4
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %564, 7
  %569 = and i32 %568, 32752
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %564, 22
  %572 = shl nuw nsw i32 %571, 5
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = or i32 %558, 1
  %575 = mul i32 %560, 16
  %576 = add i32 %574, %575
  %577 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %576
  %578 = load i32, i32 addrspace(3)* %577, align 4, !tbaa !23
  %579 = shl i32 %578, 4
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %578, 7
  %583 = and i32 %582, 32752
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %578, 22
  %586 = shl nuw nsw i32 %585, 5
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = fadd fast float %567, %552
  %589 = fadd fast float %588, %581
  %590 = fadd fast float %570, %553
  %591 = fadd fast float %590, %584
  %592 = fadd fast float %573, %554
  %593 = fadd fast float %592, %587
  br label %594

; <label>:594                                     ; preds = %557, %551
  %595 = phi float [ %589, %557 ], [ %552, %551 ]
  %596 = phi float [ %591, %557 ], [ %553, %551 ]
  %597 = phi float [ %593, %557 ], [ %554, %551 ]
  %598 = phi float [ 0x3FC5555560000000, %557 ], [ 2.500000e-01, %551 ]
  %599 = icmp eq i32 %556, 0
  br i1 %599, label %637, label %600, !dx.controlflow.hints !30

; <label>:600                                     ; preds = %594
  %601 = add i32 %461, 2
  %602 = and i32 %601, 14
  %603 = and i32 %460, 14
  %604 = mul i32 %603, 16
  %605 = add i32 %602, %604
  %606 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %605
  %607 = load i32, i32 addrspace(3)* %606, align 4, !tbaa !23
  %608 = shl i32 %607, 4
  %609 = and i32 %608, 32752
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %607, 7
  %612 = and i32 %611, 32752
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = lshr i32 %607, 22
  %615 = shl nuw nsw i32 %614, 5
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = or i32 %603, 1
  %618 = mul i32 %617, 16
  %619 = add i32 %602, %618
  %620 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %619
  %621 = load i32, i32 addrspace(3)* %620, align 4, !tbaa !23
  %622 = shl i32 %621, 4
  %623 = and i32 %622, 32752
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %621, 7
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %621, 22
  %629 = shl nuw nsw i32 %628, 5
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = fadd fast float %610, %595
  %632 = fadd fast float %631, %624
  %633 = fadd fast float %613, %596
  %634 = fadd fast float %633, %627
  %635 = fadd fast float %616, %597
  %636 = fadd fast float %635, %630
  br label %637

; <label>:637                                     ; preds = %600, %594
  %638 = phi float [ %632, %600 ], [ %595, %594 ]
  %639 = phi float [ %634, %600 ], [ %596, %594 ]
  %640 = phi float [ %636, %600 ], [ %597, %594 ]
  %641 = phi float [ 0x3FC5555560000000, %600 ], [ %598, %594 ]
  %642 = icmp ne i32 %556, 0
  %643 = and i1 %555, %642
  br i1 %643, label %644, label %665, !dx.controlflow.hints !31

; <label>:644                                     ; preds = %637
  %645 = add i32 %461, 2
  %646 = and i32 %645, 14
  %647 = add i32 %460, 2
  %648 = and i32 %647, 14
  %649 = mul i32 %648, 16
  %650 = add i32 %646, %649
  %651 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %650
  %652 = load i32, i32 addrspace(3)* %651, align 4, !tbaa !23
  %653 = shl i32 %652, 4
  %654 = and i32 %653, 32752
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = lshr i32 %652, 7
  %657 = and i32 %656, 32752
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %652, 22
  %660 = shl nuw nsw i32 %659, 5
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = fadd fast float %655, %638
  %663 = fadd fast float %658, %639
  %664 = fadd fast float %661, %640
  br label %665

; <label>:665                                     ; preds = %644, %637
  %666 = phi float [ %662, %644 ], [ %638, %637 ]
  %667 = phi float [ %663, %644 ], [ %639, %637 ]
  %668 = phi float [ %664, %644 ], [ %640, %637 ]
  %669 = phi float [ 0x3FBC71C720000000, %644 ], [ %641, %637 ]
  %670 = fmul fast float %669, %666
  %671 = fmul fast float %669, %667
  %672 = fmul fast float %669, %668
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %459, label %673, label %695, !dx.controlflow.hints !32

; <label>:673                                     ; preds = %665
  %674 = call i32 @dx.op.legacyF32ToF16(i32 130, float %670)  ; LegacyF32ToF16(value)
  %675 = call i32 @dx.op.legacyF32ToF16(i32 130, float %671)  ; LegacyF32ToF16(value)
  %676 = call i32 @dx.op.legacyF32ToF16(i32 130, float %672)  ; LegacyF32ToF16(value)
  %677 = lshr i32 %674, 4
  %678 = and i32 %677, 2047
  %679 = shl i32 %675, 7
  %680 = and i32 %679, 4192256
  %681 = or i32 %680, %678
  %682 = lshr i32 %676, 5
  %683 = shl i32 %682, 22
  %684 = or i32 %681, %683
  %685 = and i32 %451, 15
  %686 = and i32 %450, 15
  %687 = mul i32 %686, 16
  %688 = add i32 %685, %687
  %689 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %688
  store i32 %684, i32 addrspace(3)* %689, align 4, !tbaa !23
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %692 = fmul fast float %691, %670
  %693 = fmul fast float %691, %671
  %694 = fmul fast float %691, %672
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %450, i32 %451, i32 undef, float %692, float %693, float %694, float %692, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %695

; <label>:695                                     ; preds = %673, %665, %437
  %696 = phi i32 [ %438, %437 ], [ %448, %673 ], [ %448, %665 ]
  %697 = phi i32 [ %439, %437 ], [ %449, %673 ], [ %449, %665 ]
  %698 = phi i32 [ %440, %437 ], [ %450, %673 ], [ %450, %665 ]
  %699 = phi i32 [ %441, %437 ], [ %451, %673 ], [ %451, %665 ]
  %700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.i32 %700, 3
  %702 = icmp ugt i32 %701, 3
  br i1 %702, label %703, label %953, !dx.controlflow.hints !34

; <label>:703                                     ; preds = %695
  %704 = lshr i32 %696, 1
  %705 = lshr i32 %697, 1
  %706 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %704)  ; UMax(a,b)
  %707 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %705)  ; UMax(a,b)
  %708 = lshr i32 %698, 1
  %709 = lshr i32 %699, 1
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %710 = lshr i32 %706, 1
  %711 = lshr i32 %707, 1
  %712 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %710)  ; UMax(a,b)
  %713 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %711)  ; UMax(a,b)
  %714 = icmp ult i32 %708, %712
  %715 = icmp ult i32 %709, %713
  %716 = and i1 %714, %715
  %717 = and i1 %716, %39
  %718 = shl nuw i32 %708, 1
  %719 = shl nuw i32 %709, 1
  br i1 %717, label %720, label %809, !dx.controlflow.hints !28

; <label>:720                                     ; preds = %703
  %721 = or i32 %718, 1
  %722 = or i32 %719, 1
  %723 = add i32 %706, -1
  %724 = add i32 %707, -1
  %725 = call i32 @dx.op.binary.i32(i32 40, i32 %718, i32 %723)  ; UMin(a,b)
  %726 = call i32 @dx.op.binary.i32(i32 40, i32 %719, i32 %724)  ; UMin(a,b)
  %727 = call i32 @dx.op.binary.i32(i32 40, i32 %721, i32 %723)  ; UMin(a,b)
  %728 = call i32 @dx.op.binary.i32(i32 40, i32 %722, i32 %724)  ; UMin(a,b)
  %729 = and i32 %725, 15
  %730 = and i32 %726, 15
  %731 = and i32 %727, 15
  %732 = and i32 %728, 15
  %733 = mul i32 %729, 16
  %734 = add i32 %730, %733
  %735 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %734
  %736 = load i32, i32 addrspace(3)* %735, align 4, !tbaa !23
  %737 = shl i32 %736, 4
  %738 = and i32 %737, 32752
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = lshr i32 %736, 7
  %741 = and i32 %740, 32752
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = lshr i32 %736, 22
  %744 = shl nuw nsw i32 %743, 5
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = mul i32 %731, 16
  %747 = add i32 %730, %746
  %748 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %747
  %749 = load i32, i32 addrspace(3)* %748, align 4, !tbaa !23
  %750 = shl i32 %749, 4
  %751 = and i32 %750, 32752
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %749, 7
  %754 = and i32 %753, 32752
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = lshr i32 %749, 22
  %757 = shl nuw nsw i32 %756, 5
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = mul i32 %729, 16
  %760 = add i32 %732, %759
  %761 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %760
  %762 = load i32, i32 addrspace(3)* %761, align 4, !tbaa !23
  %763 = shl i32 %762, 4
  %764 = and i32 %763, 32752
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = lshr i32 %762, 7
  %767 = and i32 %766, 32752
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = lshr i32 %762, 22
  %770 = shl nuw nsw i32 %769, 5
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = mul i32 %731, 16
  %773 = add i32 %732, %772
  %774 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %773
  %775 = load i32, i32 addrspace(3)* %774, align 4, !tbaa !23
  %776 = shl i32 %775, 4
  %777 = and i32 %776, 32752
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = lshr i32 %775, 7
  %780 = and i32 %779, 32752
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = lshr i32 %775, 22
  %783 = shl nuw nsw i32 %782, 5
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = fadd fast float %752, %739
  %786 = fadd fast float %755, %742
  %787 = fadd fast float %758, %745
  %788 = fadd fast float %785, %765
  %789 = fadd fast float %786, %768
  %790 = fadd fast float %787, %771
  %791 = fadd fast float %788, %778
  %792 = fadd fast float %789, %781
  %793 = fadd fast float %790, %784
  %794 = icmp ugt i32 %706, 1
  %795 = and i32 %706, 1
  %796 = icmp ne i32 %795, 0
  %797 = and i1 %794, %796
  %798 = add i32 %706, -3
  %799 = icmp eq i32 %798, %718
  %800 = and i1 %799, %797
  %801 = icmp ugt i32 %707, 1
  %802 = and i32 %707, 1
  %803 = icmp ne i32 %802, 0
  %804 = and i1 %801, %803
  %805 = add i32 %707, -3
  %806 = icmp eq i32 %805, %719
  %807 = and i1 %806, %804
  %808 = zext i1 %807 to i32
  br label %809

; <label>:809                                     ; preds = %720, %703
  %810 = phi i32 [ %808, %720 ], [ 0, %703 ]
  %811 = phi i1 [ %800, %720 ], [ false, %703 ]
  %812 = phi float [ %791, %720 ], [ 0.000000e+00, %703 ]
  %813 = phi float [ %792, %720 ], [ 0.000000e+00, %703 ]
  %814 = phi float [ %793, %720 ], [ 0.000000e+00, %703 ]
  br i1 %811, label %815, label %852, !dx.controlflow.hints !29

; <label>:815                                     ; preds = %809
  %816 = and i32 %719, 14
  %817 = add i32 %718, 2
  %818 = and i32 %817, 14
  %819 = mul i32 %818, 16
  %820 = add i32 %816, %819
  %821 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %820
  %822 = load i32, i32 addrspace(3)* %821, align 4, !tbaa !23
  %823 = shl i32 %822, 4
  %824 = and i32 %823, 32752
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = lshr i32 %822, 7
  %827 = and i32 %826, 32752
  %828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %827)  ; LegacyF16ToF32(value)
  %829 = lshr i32 %822, 22
  %830 = shl nuw nsw i32 %829, 5
  %831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %830)  ; LegacyF16ToF32(value)
  %832 = or i32 %816, 1
  %833 = mul i32 %818, 16
  %834 = add i32 %832, %833
  %835 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %834
  %836 = load i32, i32 addrspace(3)* %835, align 4, !tbaa !23
  %837 = shl i32 %836, 4
  %838 = and i32 %837, 32752
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = lshr i32 %836, 7
  %841 = and i32 %840, 32752
  %842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %841)  ; LegacyF16ToF32(value)
  %843 = lshr i32 %836, 22
  %844 = shl nuw nsw i32 %843, 5
  %845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %844)  ; LegacyF16ToF32(value)
  %846 = fadd fast float %825, %812
  %847 = fadd fast float %846, %839
  %848 = fadd fast float %828, %813
  %849 = fadd fast float %848, %842
  %850 = fadd fast float %831, %814
  %851 = fadd fast float %850, %845
  br label %852

; <label>:852                                     ; preds = %815, %809
  %853 = phi float [ 0x3FC5555560000000, %815 ], [ 2.500000e-01, %809 ]
  %854 = phi float [ %847, %815 ], [ %812, %809 ]
  %855 = phi float [ %849, %815 ], [ %813, %809 ]
  %856 = phi float [ %851, %815 ], [ %814, %809 ]
  %857 = icmp eq i32 %810, 0
  br i1 %857, label %895, label %858, !dx.controlflow.hints !30

; <label>:858                                     ; preds = %852
  %859 = add i32 %719, 2
  %860 = and i32 %859, 14
  %861 = and i32 %718, 14
  %862 = mul i32 %861, 16
  %863 = add i32 %860, %862
  %864 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %863
  %865 = load i32, i32 addrspace(3)* %864, align 4, !tbaa !23
  %866 = shl i32 %865, 4
  %867 = and i32 %866, 32752
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = lshr i32 %865, 7
  %870 = and i32 %869, 32752
  %871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %870)  ; LegacyF16ToF32(value)
  %872 = lshr i32 %865, 22
  %873 = shl nuw nsw i32 %872, 5
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = or i32 %861, 1
  %876 = mul i32 %875, 16
  %877 = add i32 %860, %876
  %878 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %877
  %879 = load i32, i32 addrspace(3)* %878, align 4, !tbaa !23
  %880 = shl i32 %879, 4
  %881 = and i32 %880, 32752
  %882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %881)  ; LegacyF16ToF32(value)
  %883 = lshr i32 %879, 7
  %884 = and i32 %883, 32752
  %885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %884)  ; LegacyF16ToF32(value)
  %886 = lshr i32 %879, 22
  %887 = shl nuw nsw i32 %886, 5
  %888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %887)  ; LegacyF16ToF32(value)
  %889 = fadd fast float %868, %854
  %890 = fadd fast float %889, %882
  %891 = fadd fast float %871, %855
  %892 = fadd fast float %891, %885
  %893 = fadd fast float %874, %856
  %894 = fadd fast float %893, %888
  br label %895

; <label>:895                                     ; preds = %858, %852
  %896 = phi float [ 0x3FC5555560000000, %858 ], [ %853, %852 ]
  %897 = phi float [ %890, %858 ], [ %854, %852 ]
  %898 = phi float [ %892, %858 ], [ %855, %852 ]
  %899 = phi float [ %894, %858 ], [ %856, %852 ]
  %900 = icmp ne i32 %810, 0
  %901 = and i1 %811, %900
  br i1 %901, label %902, label %923, !dx.controlflow.hints !31

; <label>:902                                     ; preds = %895
  %903 = add i32 %719, 2
  %904 = and i32 %903, 14
  %905 = add i32 %718, 2
  %906 = and i32 %905, 14
  %907 = mul i32 %906, 16
  %908 = add i32 %904, %907
  %909 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %908
  %910 = load i32, i32 addrspace(3)* %909, align 4, !tbaa !23
  %911 = shl i32 %910, 4
  %912 = and i32 %911, 32752
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %910, 7
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = lshr i32 %910, 22
  %918 = shl nuw nsw i32 %917, 5
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = fadd fast float %913, %897
  %921 = fadd fast float %916, %898
  %922 = fadd fast float %919, %899
  br label %923

; <label>:923                                     ; preds = %902, %895
  %924 = phi float [ 0x3FBC71C720000000, %902 ], [ %896, %895 ]
  %925 = phi float [ %920, %902 ], [ %897, %895 ]
  %926 = phi float [ %921, %902 ], [ %898, %895 ]
  %927 = phi float [ %922, %902 ], [ %899, %895 ]
  %928 = fmul fast float %925, %924
  %929 = fmul fast float %926, %924
  %930 = fmul fast float %927, %924
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %717, label %931, label %953, !dx.controlflow.hints !32

; <label>:931                                     ; preds = %923
  %932 = call i32 @dx.op.legacyF32ToF16(i32 130, float %928)  ; LegacyF32ToF16(value)
  %933 = call i32 @dx.op.legacyF32ToF16(i32 130, float %929)  ; LegacyF32ToF16(value)
  %934 = call i32 @dx.op.legacyF32ToF16(i32 130, float %930)  ; LegacyF32ToF16(value)
  %935 = lshr i32 %932, 4
  %936 = and i32 %935, 2047
  %937 = shl i32 %933, 7
  %938 = and i32 %937, 4192256
  %939 = or i32 %938, %936
  %940 = lshr i32 %934, 5
  %941 = shl i32 %940, 22
  %942 = or i32 %939, %941
  %943 = and i32 %709, 15
  %944 = and i32 %708, 15
  %945 = mul i32 %944, 16
  %946 = add i32 %943, %945
  %947 = getelementptr [256 x i32], [256 x i32] addrspace(3)* @"\01?diffuseValues@@3PAY0BA@$$CAIA.1dim", i32 0, i32 %946
  store i32 %942, i32 addrspace(3)* %947, align 4, !tbaa !23
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = fmul fast float %949, %928
  %951 = fmul fast float %949, %929
  %952 = fmul fast float %949, %930
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %708, i32 %709, i32 undef, float %950, float %951, float %952, float %950, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %953

; <label>:953                                     ; preds = %931, %923, %695
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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{null, !5, !12, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!9 = !{i32 2, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 3, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 4, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %DownsampleConstants_decl* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{void ()* @cs_diffuse_downsample_border, !"cs_diffuse_downsample_border", null, !4, !16}
!16 = !{i32 0, i64 8448, i32 4, !17}
!17 = !{i32 16, i32 16, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}

