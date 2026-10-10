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
; shader hash: 9ba0e1d3707753d3c629b1a827f452e4
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
;   [256 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [36 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     u32          2d      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;                                       UAV    byte         r/w      U5             u5     1
;                                       UAV  struct         r/w      U6             u6     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<unsigned int, 2> >" = type { <2 x i32>, %"class.Texture2D<vector<unsigned int, 2> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 2> >::mips_type" = type { i32 }
%"class.RWTexture2D<float>" = type { float }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<sceneInfo>" = type { %struct.sceneInfo }
%struct.sceneInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.FloatZConsts = type { <4 x float>, <4 x float>, float, i32, i32, i32, [4 x <4 x float>], [4 x <4 x float>], [2 x <4 x i32>], <4 x i32>, <4 x i32>, <4 x i32> }

@"\01?gTileMaskBits@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [128 x float] undef, align 4

define void @cs_resolve_floatz_full() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %14 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %15 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %16 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %17 = shl i32 %12, 3
  %18 = shl i32 %13, 3
  %19 = or i32 %14, %17
  %20 = or i32 %15, %18
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %24 = fptoui float %22 to i32
  %25 = fptoui float %23 to i32
  %26 = icmp ult i32 %19, %24
  %27 = icmp ult i32 %20, %25
  %28 = and i1 %26, %27
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %19, i32 %20, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 1
  %33 = fcmp fast oeq float %30, 0.000000e+00
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %37 = fcmp fast ogt float %30, 9.843750e-01
  %38 = select i1 %37, float 6.400000e+01, float 0x3FF0410420000000
  %39 = select i1 %37, float -6.300000e+01, float -0.000000e+00
  %40 = select i1 %37, float %35, float %36
  %41 = call float @dx.op.unary.f32(i32 7, float %30)  ; Saturate(value)
  %42 = fmul fast float %41, %38
  %43 = fadd fast float %42, %39
  %44 = call float @dx.op.binary.f32(i32 35, float %43, float 0x3E45798EE0000000)  ; FMax(a,b)
  %45 = fdiv fast float %40, %44
  %46 = or i1 %33, %37
  %47 = fsub fast float -0.000000e+00, %45
  %48 = select i1 %37, float %47, float %45
  %49 = fcmp fast ogt float %48, 0.000000e+00
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = select i1 %49, float %51, float 1.000000e+00
  %53 = fmul fast float %52, %48
  %54 = fadd fast float %53, -1.000000e+00
  br i1 %28, label %55, label %56, !dx.controlflow.hints !25

; <label>:55                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %19, i32 %20, i32 undef, float %54, float %54, float %54, float %54, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %56

; <label>:56                                      ; preds = %55, %0
  %57 = select i1 %28, float %54, float 0.000000e+00
  %58 = select i1 %28, float %54, float 6.550000e+04
  %59 = and i1 %26, %27
  %60 = xor i1 %59, true
  %61 = or i1 %37, %60
  %62 = zext i1 %61 to i32
  %63 = and i1 %28, %37
  %64 = select i1 %63, i32 2, i32 0
  %65 = or i32 %62, %64
  %66 = xor i1 %46, true
  %67 = and i1 %28, %66
  %68 = select i1 %67, i32 4, i32 0
  %69 = and i1 %28, %33
  %70 = select i1 %69, i32 8, i32 0
  %71 = or i32 %65, %70
  %72 = or i32 %71, %68
  %73 = mul i32 %16, 2
  %74 = add i32 0, %73
  %75 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %74
  store float %57, float addrspace(3)* %75, align 4
  %76 = mul i32 %16, 2
  %77 = add i32 1, %76
  %78 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %77
  store float %58, float addrspace(3)* %78, align 4
  %79 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %16
  store i32 %72, i32 addrspace(3)* %79, align 4, !tbaa !26, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %80 = xor i32 %16, 1
  %81 = mul i32 %80, 2
  %82 = add i32 0, %81
  %83 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %82
  %84 = load float, float addrspace(3)* %83, align 4
  %85 = mul i32 %80, 2
  %86 = add i32 1, %85
  %87 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %86
  %88 = load float, float addrspace(3)* %87, align 4
  %89 = fcmp fast ole float %57, -1.000000e+00
  %90 = fcmp fast ole float %84, -1.000000e+00
  %91 = select i1 %89, float -1.000000e+00, float %57
  %92 = select i1 %90, float -1.000000e+00, float %84
  %93 = and i1 %89, %90
  %94 = call float @dx.op.binary.f32(i32 36, float %57, float %84)  ; FMin(a,b)
  %95 = call float @dx.op.binary.f32(i32 35, float %91, float %92)  ; FMax(a,b)
  %96 = select i1 %93, float %94, float %95
  %97 = fcmp fast ole float %58, -1.000000e+00
  %98 = fcmp fast ole float %88, -1.000000e+00
  %99 = select i1 %97, float 0x47EFFFFFE0000000, float %58
  %100 = select i1 %98, float 0x47EFFFFFE0000000, float %88
  %101 = and i1 %97, %98
  %102 = call float @dx.op.binary.f32(i32 35, float %58, float %88)  ; FMax(a,b)
  %103 = call float @dx.op.binary.f32(i32 36, float %99, float %100)  ; FMin(a,b)
  %104 = select i1 %101, float %102, float %103
  %105 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %80
  %106 = load i32, i32 addrspace(3)* %105, align 4, !tbaa !26, !noalias !30
  %107 = or i32 %106, 14
  %108 = and i32 %107, %72
  %109 = and i32 %106, 14
  %110 = or i32 %108, %109
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %96, float addrspace(3)* %75, align 4
  store float %104, float addrspace(3)* %78, align 4
  store i32 %110, i32 addrspace(3)* %79, align 4, !tbaa !26, !noalias !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %111 = xor i32 %16, 8
  %112 = mul i32 %111, 2
  %113 = add i32 0, %112
  %114 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %113
  %115 = load float, float addrspace(3)* %114, align 4
  %116 = mul i32 %111, 2
  %117 = add i32 1, %116
  %118 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %117
  %119 = load float, float addrspace(3)* %118, align 4
  %120 = fcmp fast ole float %96, -1.000000e+00
  %121 = fcmp fast ole float %115, -1.000000e+00
  %122 = select i1 %120, float -1.000000e+00, float %96
  %123 = select i1 %121, float -1.000000e+00, float %115
  %124 = and i1 %120, %121
  %125 = call float @dx.op.binary.f32(i32 36, float %96, float %115)  ; FMin(a,b)
  %126 = call float @dx.op.binary.f32(i32 35, float %122, float %123)  ; FMax(a,b)
  %127 = select i1 %124, float %125, float %126
  %128 = fcmp fast ole float %104, -1.000000e+00
  %129 = fcmp fast ole float %119, -1.000000e+00
  %130 = select i1 %128, float 0x47EFFFFFE0000000, float %104
  %131 = select i1 %129, float 0x47EFFFFFE0000000, float %119
  %132 = and i1 %128, %129
  %133 = call float @dx.op.binary.f32(i32 35, float %104, float %119)  ; FMax(a,b)
  %134 = call float @dx.op.binary.f32(i32 36, float %130, float %131)  ; FMin(a,b)
  %135 = select i1 %132, float %133, float %134
  %136 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %111
  %137 = load i32, i32 addrspace(3)* %136, align 4, !tbaa !26, !noalias !34
  %138 = or i32 %137, -2
  %139 = and i32 %138, %110
  %140 = and i32 %137, 14
  %141 = or i32 %139, %140
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %142 = or i32 %15, %14
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  %145 = and i1 %144, %28
  br i1 %145, label %146, label %149, !dx.controlflow.hints !38

; <label>:146                                     ; preds = %56
  %147 = lshr i32 %20, 1
  %148 = lshr i32 %19, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %148, i32 %147, i32 undef, float %127, float %127, float %127, float %127, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %149

; <label>:149                                     ; preds = %146, %56
  store float %127, float addrspace(3)* %75, align 4
  store float %135, float addrspace(3)* %78, align 4
  store i32 %141, i32 addrspace(3)* %79, align 4, !tbaa !26, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %150 = xor i32 %16, 2
  %151 = mul i32 %150, 2
  %152 = add i32 0, %151
  %153 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %152
  %154 = load float, float addrspace(3)* %153, align 4
  %155 = mul i32 %150, 2
  %156 = add i32 1, %155
  %157 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %156
  %158 = load float, float addrspace(3)* %157, align 4
  %159 = fcmp fast ole float %127, -1.000000e+00
  %160 = fcmp fast ole float %154, -1.000000e+00
  %161 = select i1 %159, float -1.000000e+00, float %127
  %162 = select i1 %160, float -1.000000e+00, float %154
  %163 = and i1 %159, %160
  %164 = call float @dx.op.binary.f32(i32 36, float %127, float %154)  ; FMin(a,b)
  %165 = call float @dx.op.binary.f32(i32 35, float %161, float %162)  ; FMax(a,b)
  %166 = select i1 %163, float %164, float %165
  %167 = fcmp fast ole float %135, -1.000000e+00
  %168 = fcmp fast ole float %158, -1.000000e+00
  %169 = select i1 %167, float 0x47EFFFFFE0000000, float %135
  %170 = select i1 %168, float 0x47EFFFFFE0000000, float %158
  %171 = and i1 %167, %168
  %172 = call float @dx.op.binary.f32(i32 35, float %135, float %158)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %169, float %170)  ; FMin(a,b)
  %174 = select i1 %171, float %172, float %173
  %175 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %150
  %176 = load i32, i32 addrspace(3)* %175, align 4, !tbaa !26, !noalias !39
  %177 = or i32 %176, -2
  %178 = and i32 %177, %141
  %179 = and i32 %176, 14
  %180 = or i32 %178, %179
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %166, float addrspace(3)* %75, align 4
  store float %174, float addrspace(3)* %78, align 4
  store i32 %180, i32 addrspace(3)* %79, align 4, !tbaa !26, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %181 = xor i32 %16, 16
  %182 = mul i32 %181, 2
  %183 = add i32 0, %182
  %184 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %183
  %185 = load float, float addrspace(3)* %184, align 4
  %186 = mul i32 %181, 2
  %187 = add i32 1, %186
  %188 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %187
  %189 = load float, float addrspace(3)* %188, align 4
  %190 = fcmp fast ole float %166, -1.000000e+00
  %191 = fcmp fast ole float %185, -1.000000e+00
  %192 = select i1 %190, float -1.000000e+00, float %166
  %193 = select i1 %191, float -1.000000e+00, float %185
  %194 = and i1 %190, %191
  %195 = call float @dx.op.binary.f32(i32 36, float %166, float %185)  ; FMin(a,b)
  %196 = call float @dx.op.binary.f32(i32 35, float %192, float %193)  ; FMax(a,b)
  %197 = select i1 %194, float %195, float %196
  %198 = fcmp fast ole float %174, -1.000000e+00
  %199 = fcmp fast ole float %189, -1.000000e+00
  %200 = select i1 %198, float 0x47EFFFFFE0000000, float %174
  %201 = select i1 %199, float 0x47EFFFFFE0000000, float %189
  %202 = and i1 %198, %199
  %203 = call float @dx.op.binary.f32(i32 35, float %174, float %189)  ; FMax(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %200, float %201)  ; FMin(a,b)
  %205 = select i1 %202, float %203, float %204
  %206 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %181
  %207 = load i32, i32 addrspace(3)* %206, align 4, !tbaa !26, !noalias !43
  %208 = or i32 %207, -2
  %209 = and i32 %208, %180
  %210 = and i32 %207, 14
  %211 = or i32 %209, %210
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %212 = and i32 %142, 3
  %213 = icmp eq i32 %212, 0
  %214 = and i1 %213, %28
  br i1 %214, label %215, label %218, !dx.controlflow.hints !47

; <label>:215                                     ; preds = %149
  %216 = lshr i32 %20, 2
  %217 = lshr i32 %19, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %217, i32 %216, i32 undef, float %197, float %197, float %197, float %197, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %218

; <label>:218                                     ; preds = %215, %149
  %219 = lshr i32 %19, 3
  %220 = lshr i32 %20, 3
  store float %197, float addrspace(3)* %75, align 4
  store float %205, float addrspace(3)* %78, align 4
  store i32 %211, i32 addrspace(3)* %79, align 4, !tbaa !26, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %221 = xor i32 %16, 4
  %222 = mul i32 %221, 2
  %223 = add i32 0, %222
  %224 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %223
  %225 = load float, float addrspace(3)* %224, align 4
  %226 = mul i32 %221, 2
  %227 = add i32 1, %226
  %228 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %227
  %229 = load float, float addrspace(3)* %228, align 4
  %230 = fcmp fast ole float %197, -1.000000e+00
  %231 = fcmp fast ole float %225, -1.000000e+00
  %232 = select i1 %230, float -1.000000e+00, float %197
  %233 = select i1 %231, float -1.000000e+00, float %225
  %234 = and i1 %230, %231
  %235 = call float @dx.op.binary.f32(i32 36, float %197, float %225)  ; FMin(a,b)
  %236 = call float @dx.op.binary.f32(i32 35, float %232, float %233)  ; FMax(a,b)
  %237 = select i1 %234, float %235, float %236
  %238 = fcmp fast ole float %205, -1.000000e+00
  %239 = fcmp fast ole float %229, -1.000000e+00
  %240 = select i1 %238, float 0x47EFFFFFE0000000, float %205
  %241 = select i1 %239, float 0x47EFFFFFE0000000, float %229
  %242 = and i1 %238, %239
  %243 = call float @dx.op.binary.f32(i32 35, float %205, float %229)  ; FMax(a,b)
  %244 = call float @dx.op.binary.f32(i32 36, float %240, float %241)  ; FMin(a,b)
  %245 = select i1 %242, float %243, float %244
  %246 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %221
  %247 = load i32, i32 addrspace(3)* %246, align 4, !tbaa !26, !noalias !48
  %248 = or i32 %247, -2
  %249 = and i32 %248, %211
  %250 = and i32 %247, 14
  %251 = or i32 %249, %250
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %237, float addrspace(3)* %75, align 4
  store float %245, float addrspace(3)* %78, align 4
  store i32 %251, i32 addrspace(3)* %79, align 4, !tbaa !26, !noalias !52
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %252 = xor i32 %16, 32
  %253 = mul i32 %252, 2
  %254 = add i32 0, %253
  %255 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %254
  %256 = load float, float addrspace(3)* %255, align 4
  %257 = mul i32 %252, 2
  %258 = add i32 1, %257
  %259 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %258
  %260 = load float, float addrspace(3)* %259, align 4
  %261 = fcmp fast ole float %237, -1.000000e+00
  %262 = fcmp fast ole float %256, -1.000000e+00
  %263 = select i1 %261, float -1.000000e+00, float %237
  %264 = select i1 %262, float -1.000000e+00, float %256
  %265 = and i1 %261, %262
  %266 = call float @dx.op.binary.f32(i32 36, float %237, float %256)  ; FMin(a,b)
  %267 = call float @dx.op.binary.f32(i32 35, float %263, float %264)  ; FMax(a,b)
  %268 = select i1 %265, float %266, float %267
  %269 = fcmp fast ole float %245, -1.000000e+00
  %270 = fcmp fast ole float %260, -1.000000e+00
  %271 = select i1 %269, float 0x47EFFFFFE0000000, float %245
  %272 = select i1 %270, float 0x47EFFFFFE0000000, float %260
  %273 = and i1 %269, %270
  %274 = call float @dx.op.binary.f32(i32 35, float %245, float %260)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %271, float %272)  ; FMin(a,b)
  %276 = select i1 %273, float %274, float %275
  %277 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %252
  %278 = load i32, i32 addrspace(3)* %277, align 4, !tbaa !26, !noalias !52
  %279 = or i32 %278, -2
  %280 = and i32 %279, %251
  %281 = and i32 %278, 14
  %282 = or i32 %280, %281
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %283 = and i32 %142, 7
  %284 = icmp eq i32 %283, 0
  %285 = and i1 %284, %28
  br i1 %285, label %286, label %287, !dx.controlflow.hints !56

; <label>:286                                     ; preds = %218
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %219, i32 %220, i32 undef, float %268, float %268, float %268, float %268, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %219, i32 %220, i32 undef, float %276, float %276, float %276, float %276, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %287

; <label>:287                                     ; preds = %286, %218
  br i1 %28, label %288, label %411, !dx.controlflow.hints !57

; <label>:288                                     ; preds = %287
  %289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.i32 %289, 1
  %291 = shl i32 %290, 2
  %292 = lshr i32 %20, 2
  %293 = extractvalue %dx.types.CBufRet.i32 %289, 2
  %294 = mul i32 %293, %292
  %295 = add i32 %291, %219
  %296 = add i32 %295, %294
  %297 = shl i32 %296, 2
  %298 = shl i32 %15, 3
  %299 = and i32 %298, 24
  %300 = and i32 %14, 7
  %301 = or i32 %299, %300
  %302 = shl i32 1, %301
  %303 = and i32 %32, 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305, !dx.controlflow.hints !58

; <label>:305                                     ; preds = %288
  %306 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %297, i32 undef, i32 undef, i32 %302)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %307

; <label>:307                                     ; preds = %305, %288
  %308 = and i32 %32, 2
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %316, label %310, !dx.controlflow.hints !59

; <label>:310                                     ; preds = %307
  %311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.i32 %311, 3
  %313 = shl i32 %312, 2
  %314 = add i32 %313, %297
  %315 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %314, i32 undef, i32 undef, i32 %302)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %316

; <label>:316                                     ; preds = %310, %307
  %317 = and i32 %32, 8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %340, label %319, !dx.controlflow.hints !60

; <label>:319                                     ; preds = %316
  %320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.i32 %320, 3
  %322 = shl i32 %321, 3
  %323 = add i32 %322, %297
  %324 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %323, i32 undef, i32 undef, i32 %302)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %325 = lshr i32 %13, 2
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 0
  %328 = mul i32 %327, %325
  %329 = lshr i32 %12, 3
  %330 = add i32 %328, %329
  %331 = shl i32 %330, 2
  %332 = and i32 %18, 24
  %333 = and i32 %12, 7
  %334 = or i32 %332, %333
  %335 = shl i32 1, %334
  %336 = extractvalue %dx.types.CBufRet.i32 %326, 1
  %337 = shl i32 %336, 3
  %338 = add i32 %331, %337
  %339 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %338, i32 undef, i32 undef, i32 %335)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %340

; <label>:340                                     ; preds = %319, %316
  %341 = and i32 %32, 16
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %349, label %343, !dx.controlflow.hints !61

; <label>:343                                     ; preds = %340
  %344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.i32 %344, 3
  %346 = mul i32 %345, 12
  %347 = add i32 %346, %297
  %348 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %347, i32 undef, i32 undef, i32 %302)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %349

; <label>:349                                     ; preds = %343, %340
  %350 = lshr i32 %13, 2
  %351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.i32 %351, 0
  %353 = mul i32 %352, %350
  %354 = lshr i32 %12, 3
  %355 = add i32 %353, %354
  %356 = shl i32 %355, 2
  %357 = and i32 %18, 24
  %358 = and i32 %12, 7
  %359 = or i32 %357, %358
  %360 = shl i32 1, %359
  %361 = icmp eq i32 %16, 0
  %362 = and i32 %282, 4
  %363 = icmp eq i32 %362, 0
  %364 = and i32 %282, 8
  %365 = icmp eq i32 %364, 0
  br i1 %361, label %366, label %411, !dx.controlflow.hints !62

; <label>:366                                     ; preds = %349
  %367 = and i32 %282, 2
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %371, label %369, !dx.controlflow.hints !63

; <label>:369                                     ; preds = %366
  %370 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %356, i32 undef, i32 undef, i32 %360)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %371

; <label>:371                                     ; preds = %369, %366
  br i1 %363, label %378, label %372, !dx.controlflow.hints !64

; <label>:372                                     ; preds = %371
  %373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.i32 %373, 1
  %375 = shl i32 %374, 2
  %376 = add i32 %375, %356
  %377 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %376, i32 undef, i32 undef, i32 %360)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %378

; <label>:378                                     ; preds = %372, %371
  br i1 %365, label %385, label %379, !dx.controlflow.hints !65

; <label>:379                                     ; preds = %378
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 1
  %382 = mul i32 %381, 12
  %383 = add i32 %382, %356
  %384 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %383, i32 undef, i32 undef, i32 %360)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %385

; <label>:385                                     ; preds = %379, %378
  %386 = and i32 %282, 10
  %387 = icmp eq i32 %386, 0
  %388 = fcmp fast ogt float %268, -1.000000e+00
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %391 = select i1 %388, float %390, float 1.000000e+00
  %392 = fadd fast float %268, 1.000000e+00
  %393 = fmul fast float %391, %392
  %394 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  %395 = fptoui float %394 to i32
  %396 = fcmp fast ogt float %394, 0.000000e+00
  %397 = call float @dx.op.unary.f32(i32 23, float %394)  ; Log(value)
  %398 = select i1 %396, float %397, float -3.200000e+01
  %399 = call float @dx.op.binary.f32(i32 35, float %398, float -3.200000e+01)  ; FMax(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %399, float 3.200000e+01)  ; FMin(a,b)
  %401 = fadd fast float %400, 3.200000e+01
  %402 = fmul fast float %401, 1.600000e+01
  %403 = fptoui float %402 to i32
  %404 = zext i1 %387 to i32
  %405 = select i1 %387, i32 %403, i32 0
  %406 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 24, i32 undef, i32 %404)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %407 = xor i32 %395, -1
  %408 = select i1 %387, i32 %407, i32 0
  %409 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 32, i32 undef, i32 %408)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %410 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 28, i32 undef, i32 %405)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %411

; <label>:411                                     ; preds = %385, %349, %287
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

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
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !19, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<unsigned int, 2> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{!11, !12, !13, !14, !15, !16, !17}
!11 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{i32 5, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{i32 6, %"class.RWStructuredBuffer<sceneInfo>"* undef, !"", i32 0, i32 6, i32 1, i32 12, i1 false, i1 false, i1 false, !18}
!18 = !{i32 1, i32 36}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %hostlayout.FloatZConsts* undef, !"", i32 0, i32 0, i32 1, i32 256, null}
!22 = !{void ()* @cs_resolve_floatz_full, !"cs_resolve_floatz_full", null, !4, !23}
!23 = !{i32 0, i64 272, i32 4, !24}
!24 = !{i32 8, i32 8, i32 1}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!32 = distinct !{!32, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!33 = distinct !{!33, !32, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!36 = distinct !{!36, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!37 = distinct !{!37, !36, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!41 = distinct !{!41, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!42 = distinct !{!42, !41, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!45 = distinct !{!45, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!46 = distinct !{!46, !45, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!50 = distinct !{!50, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!51 = distinct !{!51, !50, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!54 = distinct !{!54, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!55 = distinct !{!55, !54, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}

