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
; shader hash: d8fbd085e983ad0a57856a9664705433
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
  %35 = fcmp fast ogt float %30, 9.843750e-01
  %36 = select i1 %35, float 6.400000e+01, float 0x3FF0410420000000
  %37 = select i1 %35, float -6.300000e+01, float -0.000000e+00
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 2
  %40 = fcmp fast oeq float %39, 0.000000e+00
  %41 = call float @dx.op.unary.f32(i32 7, float %30)  ; Saturate(value)
  %42 = fmul fast float %41, %36
  %43 = fadd fast float %42, %37
  %44 = call float @dx.op.binary.f32(i32 35, float %43, float 0x3E45798EE0000000)  ; FMax(a,b)
  br i1 %40, label %50, label %45, !dx.controlflow.hints !25

; <label>:45                                      ; preds = %0
  %46 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %34, 2
  %48 = select i1 %35, float %46, float %47
  %49 = fdiv fast float %48, %44
  br label %50

; <label>:50                                      ; preds = %45, %0
  %51 = phi float [ %49, %45 ], [ %44, %0 ]
  %52 = or i1 %33, %35
  %53 = fsub fast float -0.000000e+00, %51
  %54 = select i1 %35, float %53, float %51
  %55 = fcmp fast ogt float %54, 0.000000e+00
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = select i1 %55, float %57, float 1.000000e+00
  %59 = fmul fast float %58, %54
  %60 = fadd fast float %59, -1.000000e+00
  br i1 %28, label %61, label %62, !dx.controlflow.hints !26

; <label>:61                                      ; preds = %50
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %19, i32 %20, i32 undef, float %60, float %60, float %60, float %60, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %62

; <label>:62                                      ; preds = %61, %50
  %63 = select i1 %28, float %60, float 0.000000e+00
  %64 = select i1 %28, float %60, float 6.550000e+04
  %65 = and i1 %26, %27
  %66 = xor i1 %65, true
  %67 = or i1 %35, %66
  %68 = zext i1 %67 to i32
  %69 = and i1 %28, %35
  %70 = select i1 %69, i32 2, i32 0
  %71 = or i32 %68, %70
  %72 = xor i1 %52, true
  %73 = and i1 %28, %72
  %74 = select i1 %73, i32 4, i32 0
  %75 = and i1 %28, %33
  %76 = select i1 %75, i32 8, i32 0
  %77 = or i32 %71, %76
  %78 = or i32 %77, %74
  %79 = mul i32 %16, 2
  %80 = add i32 0, %79
  %81 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %80
  store float %63, float addrspace(3)* %81, align 4
  %82 = mul i32 %16, 2
  %83 = add i32 1, %82
  %84 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %83
  store float %64, float addrspace(3)* %84, align 4
  %85 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %16
  store i32 %78, i32 addrspace(3)* %85, align 4, !tbaa !27, !noalias !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %86 = xor i32 %16, 1
  %87 = mul i32 %86, 2
  %88 = add i32 0, %87
  %89 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %88
  %90 = load float, float addrspace(3)* %89, align 4
  %91 = mul i32 %86, 2
  %92 = add i32 1, %91
  %93 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %92
  %94 = load float, float addrspace(3)* %93, align 4
  %95 = fcmp fast ole float %63, -1.000000e+00
  %96 = fcmp fast ole float %90, -1.000000e+00
  %97 = select i1 %95, float -1.000000e+00, float %63
  %98 = select i1 %96, float -1.000000e+00, float %90
  %99 = and i1 %95, %96
  %100 = call float @dx.op.binary.f32(i32 36, float %63, float %90)  ; FMin(a,b)
  %101 = call float @dx.op.binary.f32(i32 35, float %97, float %98)  ; FMax(a,b)
  %102 = select i1 %99, float %100, float %101
  %103 = fcmp fast ole float %64, -1.000000e+00
  %104 = fcmp fast ole float %94, -1.000000e+00
  %105 = select i1 %103, float 0x47EFFFFFE0000000, float %64
  %106 = select i1 %104, float 0x47EFFFFFE0000000, float %94
  %107 = and i1 %103, %104
  %108 = call float @dx.op.binary.f32(i32 35, float %64, float %94)  ; FMax(a,b)
  %109 = call float @dx.op.binary.f32(i32 36, float %105, float %106)  ; FMin(a,b)
  %110 = select i1 %107, float %108, float %109
  %111 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %86
  %112 = load i32, i32 addrspace(3)* %111, align 4, !tbaa !27, !noalias !31
  %113 = or i32 %112, 14
  %114 = and i32 %113, %78
  %115 = and i32 %112, 14
  %116 = or i32 %114, %115
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %102, float addrspace(3)* %81, align 4
  store float %110, float addrspace(3)* %84, align 4
  store i32 %116, i32 addrspace(3)* %85, align 4, !tbaa !27, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %117 = xor i32 %16, 8
  %118 = mul i32 %117, 2
  %119 = add i32 0, %118
  %120 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %119
  %121 = load float, float addrspace(3)* %120, align 4
  %122 = mul i32 %117, 2
  %123 = add i32 1, %122
  %124 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %123
  %125 = load float, float addrspace(3)* %124, align 4
  %126 = fcmp fast ole float %102, -1.000000e+00
  %127 = fcmp fast ole float %121, -1.000000e+00
  %128 = select i1 %126, float -1.000000e+00, float %102
  %129 = select i1 %127, float -1.000000e+00, float %121
  %130 = and i1 %126, %127
  %131 = call float @dx.op.binary.f32(i32 36, float %102, float %121)  ; FMin(a,b)
  %132 = call float @dx.op.binary.f32(i32 35, float %128, float %129)  ; FMax(a,b)
  %133 = select i1 %130, float %131, float %132
  %134 = fcmp fast ole float %110, -1.000000e+00
  %135 = fcmp fast ole float %125, -1.000000e+00
  %136 = select i1 %134, float 0x47EFFFFFE0000000, float %110
  %137 = select i1 %135, float 0x47EFFFFFE0000000, float %125
  %138 = and i1 %134, %135
  %139 = call float @dx.op.binary.f32(i32 35, float %110, float %125)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 36, float %136, float %137)  ; FMin(a,b)
  %141 = select i1 %138, float %139, float %140
  %142 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %117
  %143 = load i32, i32 addrspace(3)* %142, align 4, !tbaa !27, !noalias !35
  %144 = or i32 %143, -2
  %145 = and i32 %144, %116
  %146 = and i32 %143, 14
  %147 = or i32 %145, %146
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = or i32 %15, %14
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  %151 = and i1 %150, %28
  br i1 %151, label %152, label %155, !dx.controlflow.hints !39

; <label>:152                                     ; preds = %62
  %153 = lshr i32 %20, 1
  %154 = lshr i32 %19, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %154, i32 %153, i32 undef, float %133, float %133, float %133, float %133, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %155

; <label>:155                                     ; preds = %152, %62
  store float %133, float addrspace(3)* %81, align 4
  store float %141, float addrspace(3)* %84, align 4
  store i32 %147, i32 addrspace(3)* %85, align 4, !tbaa !27, !noalias !40
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %156 = xor i32 %16, 2
  %157 = mul i32 %156, 2
  %158 = add i32 0, %157
  %159 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %158
  %160 = load float, float addrspace(3)* %159, align 4
  %161 = mul i32 %156, 2
  %162 = add i32 1, %161
  %163 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %162
  %164 = load float, float addrspace(3)* %163, align 4
  %165 = fcmp fast ole float %133, -1.000000e+00
  %166 = fcmp fast ole float %160, -1.000000e+00
  %167 = select i1 %165, float -1.000000e+00, float %133
  %168 = select i1 %166, float -1.000000e+00, float %160
  %169 = and i1 %165, %166
  %170 = call float @dx.op.binary.f32(i32 36, float %133, float %160)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %167, float %168)  ; FMax(a,b)
  %172 = select i1 %169, float %170, float %171
  %173 = fcmp fast ole float %141, -1.000000e+00
  %174 = fcmp fast ole float %164, -1.000000e+00
  %175 = select i1 %173, float 0x47EFFFFFE0000000, float %141
  %176 = select i1 %174, float 0x47EFFFFFE0000000, float %164
  %177 = and i1 %173, %174
  %178 = call float @dx.op.binary.f32(i32 35, float %141, float %164)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 36, float %175, float %176)  ; FMin(a,b)
  %180 = select i1 %177, float %178, float %179
  %181 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %156
  %182 = load i32, i32 addrspace(3)* %181, align 4, !tbaa !27, !noalias !40
  %183 = or i32 %182, -2
  %184 = and i32 %183, %147
  %185 = and i32 %182, 14
  %186 = or i32 %184, %185
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %172, float addrspace(3)* %81, align 4
  store float %180, float addrspace(3)* %84, align 4
  store i32 %186, i32 addrspace(3)* %85, align 4, !tbaa !27, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %187 = xor i32 %16, 16
  %188 = mul i32 %187, 2
  %189 = add i32 0, %188
  %190 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %189
  %191 = load float, float addrspace(3)* %190, align 4
  %192 = mul i32 %187, 2
  %193 = add i32 1, %192
  %194 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %193
  %195 = load float, float addrspace(3)* %194, align 4
  %196 = fcmp fast ole float %172, -1.000000e+00
  %197 = fcmp fast ole float %191, -1.000000e+00
  %198 = select i1 %196, float -1.000000e+00, float %172
  %199 = select i1 %197, float -1.000000e+00, float %191
  %200 = and i1 %196, %197
  %201 = call float @dx.op.binary.f32(i32 36, float %172, float %191)  ; FMin(a,b)
  %202 = call float @dx.op.binary.f32(i32 35, float %198, float %199)  ; FMax(a,b)
  %203 = select i1 %200, float %201, float %202
  %204 = fcmp fast ole float %180, -1.000000e+00
  %205 = fcmp fast ole float %195, -1.000000e+00
  %206 = select i1 %204, float 0x47EFFFFFE0000000, float %180
  %207 = select i1 %205, float 0x47EFFFFFE0000000, float %195
  %208 = and i1 %204, %205
  %209 = call float @dx.op.binary.f32(i32 35, float %180, float %195)  ; FMax(a,b)
  %210 = call float @dx.op.binary.f32(i32 36, float %206, float %207)  ; FMin(a,b)
  %211 = select i1 %208, float %209, float %210
  %212 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %187
  %213 = load i32, i32 addrspace(3)* %212, align 4, !tbaa !27, !noalias !44
  %214 = or i32 %213, -2
  %215 = and i32 %214, %186
  %216 = and i32 %213, 14
  %217 = or i32 %215, %216
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %218 = and i32 %148, 3
  %219 = icmp eq i32 %218, 0
  %220 = and i1 %219, %28
  br i1 %220, label %221, label %224, !dx.controlflow.hints !48

; <label>:221                                     ; preds = %155
  %222 = lshr i32 %20, 2
  %223 = lshr i32 %19, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %223, i32 %222, i32 undef, float %203, float %203, float %203, float %203, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %224

; <label>:224                                     ; preds = %221, %155
  %225 = lshr i32 %19, 3
  %226 = lshr i32 %20, 3
  store float %203, float addrspace(3)* %81, align 4
  store float %211, float addrspace(3)* %84, align 4
  store i32 %217, i32 addrspace(3)* %85, align 4, !tbaa !27, !noalias !49
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %227 = xor i32 %16, 4
  %228 = mul i32 %227, 2
  %229 = add i32 0, %228
  %230 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4
  %232 = mul i32 %227, 2
  %233 = add i32 1, %232
  %234 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %233
  %235 = load float, float addrspace(3)* %234, align 4
  %236 = fcmp fast ole float %203, -1.000000e+00
  %237 = fcmp fast ole float %231, -1.000000e+00
  %238 = select i1 %236, float -1.000000e+00, float %203
  %239 = select i1 %237, float -1.000000e+00, float %231
  %240 = and i1 %236, %237
  %241 = call float @dx.op.binary.f32(i32 36, float %203, float %231)  ; FMin(a,b)
  %242 = call float @dx.op.binary.f32(i32 35, float %238, float %239)  ; FMax(a,b)
  %243 = select i1 %240, float %241, float %242
  %244 = fcmp fast ole float %211, -1.000000e+00
  %245 = fcmp fast ole float %235, -1.000000e+00
  %246 = select i1 %244, float 0x47EFFFFFE0000000, float %211
  %247 = select i1 %245, float 0x47EFFFFFE0000000, float %235
  %248 = and i1 %244, %245
  %249 = call float @dx.op.binary.f32(i32 35, float %211, float %235)  ; FMax(a,b)
  %250 = call float @dx.op.binary.f32(i32 36, float %246, float %247)  ; FMin(a,b)
  %251 = select i1 %248, float %249, float %250
  %252 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %227
  %253 = load i32, i32 addrspace(3)* %252, align 4, !tbaa !27, !noalias !49
  %254 = or i32 %253, -2
  %255 = and i32 %254, %217
  %256 = and i32 %253, 14
  %257 = or i32 %255, %256
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %243, float addrspace(3)* %81, align 4
  store float %251, float addrspace(3)* %84, align 4
  store i32 %257, i32 addrspace(3)* %85, align 4, !tbaa !27, !noalias !53
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %258 = xor i32 %16, 32
  %259 = mul i32 %258, 2
  %260 = add i32 0, %259
  %261 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %260
  %262 = load float, float addrspace(3)* %261, align 4
  %263 = mul i32 %258, 2
  %264 = add i32 1, %263
  %265 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %264
  %266 = load float, float addrspace(3)* %265, align 4
  %267 = fcmp fast ole float %243, -1.000000e+00
  %268 = fcmp fast ole float %262, -1.000000e+00
  %269 = select i1 %267, float -1.000000e+00, float %243
  %270 = select i1 %268, float -1.000000e+00, float %262
  %271 = and i1 %267, %268
  %272 = call float @dx.op.binary.f32(i32 36, float %243, float %262)  ; FMin(a,b)
  %273 = call float @dx.op.binary.f32(i32 35, float %269, float %270)  ; FMax(a,b)
  %274 = select i1 %271, float %272, float %273
  %275 = fcmp fast ole float %251, -1.000000e+00
  %276 = fcmp fast ole float %266, -1.000000e+00
  %277 = select i1 %275, float 0x47EFFFFFE0000000, float %251
  %278 = select i1 %276, float 0x47EFFFFFE0000000, float %266
  %279 = and i1 %275, %276
  %280 = call float @dx.op.binary.f32(i32 35, float %251, float %266)  ; FMax(a,b)
  %281 = call float @dx.op.binary.f32(i32 36, float %277, float %278)  ; FMin(a,b)
  %282 = select i1 %279, float %280, float %281
  %283 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %258
  %284 = load i32, i32 addrspace(3)* %283, align 4, !tbaa !27, !noalias !53
  %285 = or i32 %284, -2
  %286 = and i32 %285, %257
  %287 = and i32 %284, 14
  %288 = or i32 %286, %287
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %289 = and i32 %148, 7
  %290 = icmp eq i32 %289, 0
  %291 = and i1 %290, %28
  br i1 %291, label %292, label %293, !dx.controlflow.hints !57

; <label>:292                                     ; preds = %224
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %225, i32 %226, i32 undef, float %274, float %274, float %274, float %274, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %225, i32 %226, i32 undef, float %282, float %282, float %282, float %282, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %293

; <label>:293                                     ; preds = %292, %224
  br i1 %28, label %294, label %417, !dx.controlflow.hints !58

; <label>:294                                     ; preds = %293
  %295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.i32 %295, 1
  %297 = shl i32 %296, 2
  %298 = lshr i32 %20, 2
  %299 = extractvalue %dx.types.CBufRet.i32 %295, 2
  %300 = mul i32 %299, %298
  %301 = add i32 %297, %225
  %302 = add i32 %301, %300
  %303 = shl i32 %302, 2
  %304 = shl i32 %15, 3
  %305 = and i32 %304, 24
  %306 = and i32 %14, 7
  %307 = or i32 %305, %306
  %308 = shl i32 1, %307
  %309 = and i32 %32, 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311, !dx.controlflow.hints !59

; <label>:311                                     ; preds = %294
  %312 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %303, i32 undef, i32 undef, i32 %308)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %313

; <label>:313                                     ; preds = %311, %294
  %314 = and i32 %32, 2
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %322, label %316, !dx.controlflow.hints !60

; <label>:316                                     ; preds = %313
  %317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.i32 %317, 3
  %319 = shl i32 %318, 2
  %320 = add i32 %319, %303
  %321 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %320, i32 undef, i32 undef, i32 %308)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %322

; <label>:322                                     ; preds = %316, %313
  %323 = and i32 %32, 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %346, label %325, !dx.controlflow.hints !61

; <label>:325                                     ; preds = %322
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 3
  %328 = shl i32 %327, 3
  %329 = add i32 %328, %303
  %330 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %329, i32 undef, i32 undef, i32 %308)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %331 = lshr i32 %13, 2
  %332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.i32 %332, 0
  %334 = mul i32 %333, %331
  %335 = lshr i32 %12, 3
  %336 = add i32 %334, %335
  %337 = shl i32 %336, 2
  %338 = and i32 %18, 24
  %339 = and i32 %12, 7
  %340 = or i32 %338, %339
  %341 = shl i32 1, %340
  %342 = extractvalue %dx.types.CBufRet.i32 %332, 1
  %343 = shl i32 %342, 3
  %344 = add i32 %337, %343
  %345 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %344, i32 undef, i32 undef, i32 %341)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %346

; <label>:346                                     ; preds = %325, %322
  %347 = and i32 %32, 16
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %355, label %349, !dx.controlflow.hints !62

; <label>:349                                     ; preds = %346
  %350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.i32 %350, 3
  %352 = mul i32 %351, 12
  %353 = add i32 %352, %303
  %354 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %353, i32 undef, i32 undef, i32 %308)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %355

; <label>:355                                     ; preds = %349, %346
  %356 = lshr i32 %13, 2
  %357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.i32 %357, 0
  %359 = mul i32 %358, %356
  %360 = lshr i32 %12, 3
  %361 = add i32 %359, %360
  %362 = shl i32 %361, 2
  %363 = and i32 %18, 24
  %364 = and i32 %12, 7
  %365 = or i32 %363, %364
  %366 = shl i32 1, %365
  %367 = icmp eq i32 %16, 0
  %368 = and i32 %288, 4
  %369 = icmp eq i32 %368, 0
  %370 = and i32 %288, 8
  %371 = icmp eq i32 %370, 0
  br i1 %367, label %372, label %417, !dx.controlflow.hints !63

; <label>:372                                     ; preds = %355
  %373 = and i32 %288, 2
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %377, label %375, !dx.controlflow.hints !64

; <label>:375                                     ; preds = %372
  %376 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %362, i32 undef, i32 undef, i32 %366)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %377

; <label>:377                                     ; preds = %375, %372
  br i1 %369, label %384, label %378, !dx.controlflow.hints !65

; <label>:378                                     ; preds = %377
  %379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.i32 %379, 1
  %381 = shl i32 %380, 2
  %382 = add i32 %381, %362
  %383 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %382, i32 undef, i32 undef, i32 %366)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %384

; <label>:384                                     ; preds = %378, %377
  br i1 %371, label %391, label %385, !dx.controlflow.hints !66

; <label>:385                                     ; preds = %384
  %386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.i32 %386, 1
  %388 = mul i32 %387, 12
  %389 = add i32 %388, %362
  %390 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %389, i32 undef, i32 undef, i32 %366)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %391

; <label>:391                                     ; preds = %385, %384
  %392 = and i32 %288, 10
  %393 = icmp eq i32 %392, 0
  %394 = fcmp fast ogt float %274, -1.000000e+00
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %397 = select i1 %394, float %396, float 1.000000e+00
  %398 = fadd fast float %274, 1.000000e+00
  %399 = fmul fast float %397, %398
  %400 = call float @dx.op.unary.f32(i32 6, float %399)  ; FAbs(value)
  %401 = fptoui float %400 to i32
  %402 = fcmp fast ogt float %400, 0.000000e+00
  %403 = call float @dx.op.unary.f32(i32 23, float %400)  ; Log(value)
  %404 = select i1 %402, float %403, float -3.200000e+01
  %405 = call float @dx.op.binary.f32(i32 35, float %404, float -3.200000e+01)  ; FMax(a,b)
  %406 = call float @dx.op.binary.f32(i32 36, float %405, float 3.200000e+01)  ; FMin(a,b)
  %407 = fadd fast float %406, 3.200000e+01
  %408 = fmul fast float %407, 1.600000e+01
  %409 = fptoui float %408 to i32
  %410 = zext i1 %393 to i32
  %411 = select i1 %393, i32 %409, i32 0
  %412 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 24, i32 undef, i32 %410)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %413 = xor i32 %401, -1
  %414 = select i1 %393, i32 %413, i32 0
  %415 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 7, i32 0, i32 32, i32 undef, i32 %414)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %416 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 0, i32 0, i32 28, i32 undef, i32 %411)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %417

; <label>:417                                     ; preds = %391, %355, %293
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
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!33 = distinct !{!33, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!34 = distinct !{!34, !33, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!37 = distinct !{!37, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!38 = distinct !{!38, !37, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!42 = distinct !{!42, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!43 = distinct !{!43, !42, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!46 = distinct !{!46, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!47 = distinct !{!47, !46, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!51 = distinct !{!51, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!52 = distinct !{!52, !51, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!53 = !{!54, !56}
!54 = distinct !{!54, !55, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!55 = distinct !{!55, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!56 = distinct !{!56, !55, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}

