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
; shader hash: 440699a42c207a583ab69a1fa6951464
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
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1             t2     1
;                                   textureunorm_f32     2darray      T2             t0     1
;                                   texture     u32          2d      T3             t3     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;                                       UAV     u32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @cs_update_msm_prepassed() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = alloca [4 x i32], align 4
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %12 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %13 = alloca [12 x float], align 4
  %14 = alloca [12 x float], align 4
  %15 = alloca [12 x float], align 4
  %16 = alloca [12 x float], align 4
  %17 = shl i32 %11, 2
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %17, i32 undef)  ; BufferLoad(srv,index,wot)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = and i32 %19, 65535
  %21 = lshr i32 %19, 16
  %22 = shl nuw nsw i32 %20, 3
  %23 = shl nuw nsw i32 %21, 3
  %24 = add i32 %22, %9
  %25 = add i32 %23, %10
  %26 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = bitcast i32 %29 to float
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = and i32 %32, 536870911
  %34 = uitofp i32 %33 to float
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = uitofp i32 %24 to float
  %39 = uitofp i32 %25 to float
  %40 = fadd fast float %38, 5.000000e-01
  %41 = fadd fast float %39, 5.000000e-01
  %42 = fmul fast float %37, %40
  %43 = fmul fast float %37, %41
  %44 = fmul fast float %30, 5.000000e-01
  %45 = fmul fast float %44, %36
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.i32 %46, 3
  %49 = and i32 %47, 31
  %50 = shl i32 1, %49
  %51 = uitofp i32 %47 to float
  %52 = fsub fast float -0.000000e+00, %51
  %53 = call float @dx.op.unary.f32(i32 21, float %52)  ; Exp(value)
  %54 = fmul fast float %53, %34
  %55 = icmp ugt i32 %47, %48
  br i1 %55, label %3814, label %56, !dx.controlflow.hints !20

; <label>:56                                      ; preds = %0
  %57 = lshr i32 %27, 1
  %58 = and i32 %57, 7
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %61 = and i32 %60, 31
  %62 = lshr i32 %50, %61
  %63 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %62)  ; UMax(a,b)
  %64 = mul i32 %63, %63
  %65 = lshr i32 %64, 2
  %66 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %65)  ; UMax(a,b)
  %67 = mul i32 %66, %58
  %68 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = and i32 %69, 14
  %71 = icmp eq i32 %70, 0
  %72 = icmp ult i32 %67, %64
  %73 = or i1 %72, %71
  %74 = select i1 %71, i32 0, i32 %67
  br i1 %73, label %81, label %75, !dx.controlflow.hints !21

; <label>:75                                      ; preds = %56
  %76 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = extractvalue %dx.types.ResRet.f32 %76, 1
  %79 = extractvalue %dx.types.ResRet.f32 %76, 2
  %80 = extractvalue %dx.types.ResRet.f32 %76, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 0, float %77, float %78, float %79, float %80, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %991

; <label>:81                                      ; preds = %56
  %82 = shl nuw nsw i32 %58, 1
  %83 = add nuw nsw i32 %82, 2
  %84 = and i32 %83, 14
  %85 = select i1 %71, i32 2, i32 %84
  %86 = and i32 %27, -15
  %87 = or i32 %85, %86
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 320)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = fmul fast float %54, %37
  %92 = fmul fast float %89, %91
  %93 = fmul fast float %90, %91
  %94 = fsub fast float %42, %92
  %95 = fsub fast float %43, %93
  %96 = call float @dx.op.unary.f32(i32 22, float %94)  ; Frc(value)
  %97 = call float @dx.op.unary.f32(i32 22, float %95)  ; Frc(value)
  %98 = uitofp i32 %50 to float
  %99 = fmul fast float %98, %45
  %100 = fmul fast float %96, 2.000000e+00
  %101 = fmul fast float %97, 2.000000e+00
  %102 = fadd fast float %100, -1.000000e+00
  %103 = fadd fast float %101, -1.000000e+00
  %104 = fmul fast float %102, %99
  %105 = fmul fast float %103, %99
  %106 = fadd fast float %104, %89
  %107 = fadd fast float %105, %90
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = extractvalue %dx.types.ResRet.f32 %108, 3
  %113 = icmp eq i32 %66, 0
  br i1 %113, label %986, label %114

; <label>:114                                     ; preds = %81
  br label %115

; <label>:115                                     ; preds = %949, %114
  %116 = phi float [ %979, %949 ], [ %109, %114 ]
  %117 = phi float [ %980, %949 ], [ %110, %114 ]
  %118 = phi float [ %981, %949 ], [ %111, %114 ]
  %119 = phi float [ %982, %949 ], [ %112, %114 ]
  %120 = phi i32 [ %983, %949 ], [ 0, %114 ]
  %121 = add i32 %120, %74
  %122 = urem i32 %121, %63
  %123 = uitofp i32 %122 to float
  %124 = udiv i32 %121, %63
  %125 = uitofp i32 %124 to float
  %126 = fadd fast float %123, 5.000000e-01
  %127 = fadd fast float %125, 5.000000e-01
  %128 = uitofp i32 %63 to float
  %129 = fdiv fast float %126, %128
  %130 = fdiv fast float %127, %128
  %131 = fmul fast float %99, %37
  %132 = fmul fast float %129, 2.000000e+00
  %133 = fmul fast float %130, 2.000000e+00
  %134 = fadd fast float %132, -1.000000e+00
  %135 = fadd fast float %133, -1.000000e+00
  %136 = fmul fast float %134, %131
  %137 = fmul fast float %135, %131
  %138 = fadd fast float %106, %136
  %139 = fadd fast float %107, %137
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %141, 536870911
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %143, %138
  %145 = fmul fast float %143, %139
  %146 = fptoui float %144 to i32
  %147 = fptoui float %145 to i32
  %148 = fcmp fast olt float %138, 0.000000e+00
  %149 = fcmp fast olt float %139, 0.000000e+00
  %150 = or i1 %148, %149
  %151 = fcmp fast oge float %138, 1.000000e+00
  %152 = fcmp fast oge float %139, 1.000000e+00
  %153 = or i1 %151, %152
  %154 = or i1 %150, %153
  br i1 %154, label %949, label %155, !dx.controlflow.hints !22

; <label>:155                                     ; preds = %115
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = and i32 %157, 31
  %159 = lshr i32 %146, %158
  %160 = lshr i32 %147, %158
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, 31
  %164 = shl i32 1, %163
  %165 = call i32 @dx.op.binary.i32(i32 40, i32 %164, i32 4)  ; UMin(a,b)
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = extractvalue %dx.types.ResRet.i32 %166, 1
  %169 = icmp eq i32 %165, 0
  br i1 %169, label %528, label %170

; <label>:170                                     ; preds = %155
  br label %171

; <label>:171                                     ; preds = %513, %170
  %172 = phi i32 [ %519, %513 ], [ 0, %170 ]
  %173 = phi i32 [ %518, %513 ], [ 0, %170 ]
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 31
  %178 = shl i32 %160, %177
  %179 = add i32 %178, %159
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 31
  %183 = shl i32 %179, %182
  %184 = add i32 %183, %172
  %185 = shl i32 %184, 2
  %186 = add i32 %185, 32
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %200, label %190, !dx.controlflow.hints !23

; <label>:190                                     ; preds = %171
  %191 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %172
  %192 = bitcast float* %191 to i32*
  store i32 %188, i32* %192, align 4
  %193 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %172
  %194 = bitcast float* %193 to i32*
  store i32 %188, i32* %194, align 4
  %195 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %172
  %196 = bitcast float* %195 to i32*
  store i32 %167, i32* %196, align 4
  %197 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %172
  %198 = bitcast float* %197 to i32*
  store i32 %168, i32* %198, align 4
  %199 = bitcast i32 %188 to float
  br label %513

; <label>:200                                     ; preds = %171
  %201 = shl i32 1, %158
  %202 = add i32 %201, -1
  %203 = and i32 %202, %146
  %204 = and i32 %202, %147
  %205 = and i32 %188, 1073741823
  %206 = add nuw nsw i32 %205, 4
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 29
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %422, label %211, !dx.controlflow.hints !24

; <label>:211                                     ; preds = %200
  %212 = icmp eq i32 %209, 1
  br i1 %212, label %344, label %213, !dx.controlflow.hints !25

; <label>:213                                     ; preds = %211
  %214 = icmp eq i32 %209, 2
  br i1 %214, label %215, label %483, !dx.controlflow.hints !26

; <label>:215                                     ; preds = %213
  %216 = and i32 %208, 536870911
  %217 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %216)  ; FirstbitHi(value)
  %218 = icmp eq i32 %217, -1
  %219 = add i32 %217, 1
  %220 = call i32 @dx.op.unary.i32(i32 30, i32 %203)  ; Bfrev(value)
  %221 = and i32 %219, 31
  %222 = select i1 %218, i32 1, i32 %221
  %223 = lshr i32 %220, %222
  %224 = call i32 @dx.op.unary.i32(i32 30, i32 %204)  ; Bfrev(value)
  %225 = lshr i32 %224, %222
  %226 = and i32 %223, 1
  %227 = shl i32 %225, 1
  %228 = and i32 %227, 2
  %229 = or i32 %228, %226
  %230 = mul nuw nsw i32 %229, 10
  %231 = add nuw nsw i32 %205, 32
  %232 = add nuw i32 %231, %230
  br label %233

; <label>:233                                     ; preds = %244, %215
  %234 = phi i32 [ 3, %215 ], [ %265, %244 ]
  %235 = phi i32 [ %223, %215 ], [ %245, %244 ]
  %236 = phi i32 [ %225, %215 ], [ %246, %244 ]
  %237 = phi i32 [ %232, %215 ], [ %279, %244 ]
  %238 = phi i32 [ 0, %215 ], [ %249, %244 ]
  %239 = phi i32 [ 0, %215 ], [ %240, %244 ]
  %240 = add nuw nsw i32 %239, 1
  %241 = icmp eq i32 %234, 2
  %242 = icmp ugt i32 %240, 9
  %243 = or i1 %241, %242
  br i1 %243, label %281, label %244, !dx.controlflow.hints !27

; <label>:244                                     ; preds = %233
  %245 = lshr i32 %235, 1
  %246 = lshr i32 %236, 1
  %247 = icmp eq i32 %234, 3
  %248 = add i32 %237, 4
  %249 = select i1 %247, i32 %248, i32 %238
  %250 = and i32 %237, -4
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = extractvalue %dx.types.ResRet.i32 %251, 1
  %254 = and i32 %237, 2
  %255 = icmp ne i32 %254, 0
  %256 = lshr i32 %252, 16
  %257 = shl i32 %253, 16
  %258 = or i32 %256, %257
  %259 = select i1 %255, i32 %258, i32 %252
  %260 = and i32 %245, 1
  %261 = and i32 %236, 2
  %262 = or i32 %260, %261
  %263 = shl nuw nsw i32 %262, 1
  %264 = lshr i32 %259, %263
  %265 = and i32 %264, 3
  %266 = lshr i32 %259, 8
  %267 = sub nsw i32 4, %262
  %268 = shl nuw nsw i32 %267, 1
  %269 = lshr i32 255, %268
  %270 = and i32 %259, %269
  %271 = and i32 %270, 85
  %272 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %271)  ; Countbits(value)
  %273 = shl i32 %272, 2
  %274 = and i32 %270, 170
  %275 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %274)  ; Countbits(value)
  %276 = mul i32 %275, 6
  %277 = add i32 %273, %237
  %278 = add i32 %277, %276
  %279 = add i32 %278, %266
  %280 = icmp eq i32 %265, 0
  br i1 %280, label %281, label %233

; <label>:281                                     ; preds = %244, %233
  %282 = phi i32 [ %237, %233 ], [ %249, %244 ]
  %283 = and i32 %282, -4
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = extractvalue %dx.types.ResRet.i32 %284, 1
  %287 = and i32 %282, 2
  %288 = icmp ne i32 %287, 0
  %289 = lshr i32 %285, 16
  %290 = shl i32 %286, 16
  %291 = or i32 %289, %290
  %292 = select i1 %288, i32 %291, i32 %285
  %293 = add i32 %282, 4
  %294 = and i32 %293, -4
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %293, 2
  %298 = icmp ne i32 %297, 0
  %299 = lshr i32 %296, 16
  %300 = and i32 %296, 65535
  %301 = select i1 %298, i32 %299, i32 %300
  %302 = and i32 %292, 65535
  %303 = lshr i32 %292, 16
  %304 = and i32 %303, 16383
  %305 = lshr i32 %292, 30
  %306 = uitofp i32 %304 to float
  %307 = fmul fast float %306, 0x3F10004000000000
  %308 = fsub fast float 1.000000e+00, %307
  %309 = uitofp i32 %302 to float
  %310 = fmul fast float %309, 0x3EF0001000000000
  %311 = uitofp i32 %301 to float
  %312 = fmul fast float %311, 0x3F10001000000000
  %313 = fadd fast float %312, -2.000000e+00
  %314 = fmul fast float %310, %310
  %315 = fsub fast float 1.000000e+00, %314
  %316 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %317 = and i32 %305, 1
  %318 = icmp ne i32 %317, 0
  %319 = fsub fast float -0.000000e+00, %307
  %320 = select i1 %318, float %319, float %307
  %321 = and i32 %305, 2
  %322 = icmp ne i32 %321, 0
  %323 = fsub fast float -0.000000e+00, %308
  %324 = select i1 %322, float %323, float %308
  %325 = call float @dx.op.dot2.f32(i32 54, float %320, float %324, float %320, float %324)  ; Dot2(ax,ay,bx,by)
  %326 = call float @dx.op.unary.f32(i32 25, float %325)  ; Rsqrt(value)
  %327 = fmul fast float %326, %316
  %328 = fmul fast float %327, %320
  %329 = fmul fast float %327, %324
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 31
  %334 = shl i32 1, %333
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, %138
  %337 = fmul fast float %335, %139
  %338 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %339 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %340 = call float @dx.op.dot2.f32(i32 54, float %328, float %329, float %338, float %339)  ; Dot2(ax,ay,bx,by)
  %341 = fsub fast float %313, %340
  %342 = fdiv fast float %341, %310
  %343 = call float @dx.op.unary.f32(i32 7, float %342)  ; Saturate(value)
  br label %483

; <label>:344                                     ; preds = %211
  %345 = and i32 %208, 536870911
  %346 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %345)  ; FirstbitHi(value)
  %347 = icmp eq i32 %346, -1
  %348 = add i32 %346, 1
  %349 = call i32 @dx.op.unary.i32(i32 30, i32 %203)  ; Bfrev(value)
  %350 = and i32 %348, 31
  %351 = select i1 %347, i32 1, i32 %350
  %352 = lshr i32 %349, %351
  %353 = call i32 @dx.op.unary.i32(i32 30, i32 %204)  ; Bfrev(value)
  %354 = lshr i32 %353, %351
  %355 = and i32 %352, 1
  %356 = shl i32 %354, 1
  %357 = and i32 %356, 2
  %358 = or i32 %357, %355
  %359 = shl nuw nsw i32 %358, 3
  %360 = or i32 %359, 32
  %361 = add nuw nsw i32 %360, %205
  br label %362

; <label>:362                                     ; preds = %373, %344
  %363 = phi i32 [ 3, %344 ], [ %394, %373 ]
  %364 = phi i32 [ %352, %344 ], [ %374, %373 ]
  %365 = phi i32 [ %354, %344 ], [ %375, %373 ]
  %366 = phi i32 [ %361, %344 ], [ %408, %373 ]
  %367 = phi i32 [ 0, %344 ], [ %378, %373 ]
  %368 = phi i32 [ 0, %344 ], [ %369, %373 ]
  %369 = add nuw nsw i32 %368, 1
  %370 = icmp eq i32 %363, 2
  %371 = icmp ugt i32 %369, 9
  %372 = or i1 %370, %371
  br i1 %372, label %410, label %373, !dx.controlflow.hints !28

; <label>:373                                     ; preds = %362
  %374 = lshr i32 %364, 1
  %375 = lshr i32 %365, 1
  %376 = icmp eq i32 %363, 3
  %377 = add i32 %366, 4
  %378 = select i1 %376, i32 %377, i32 %367
  %379 = and i32 %366, -4
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = extractvalue %dx.types.ResRet.i32 %380, 1
  %383 = and i32 %366, 2
  %384 = icmp ne i32 %383, 0
  %385 = lshr i32 %381, 16
  %386 = shl i32 %382, 16
  %387 = or i32 %385, %386
  %388 = select i1 %384, i32 %387, i32 %381
  %389 = and i32 %374, 1
  %390 = and i32 %365, 2
  %391 = or i32 %389, %390
  %392 = shl nuw nsw i32 %391, 1
  %393 = lshr i32 %388, %392
  %394 = and i32 %393, 3
  %395 = lshr i32 %388, 8
  %396 = sub nsw i32 4, %391
  %397 = shl nuw nsw i32 %396, 1
  %398 = lshr i32 255, %397
  %399 = and i32 %388, %398
  %400 = and i32 %399, 85
  %401 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %400)  ; Countbits(value)
  %402 = shl i32 %401, 2
  %403 = and i32 %399, 170
  %404 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %403)  ; Countbits(value)
  %405 = shl i32 %404, 1
  %406 = add i32 %402, %366
  %407 = add i32 %406, %405
  %408 = add i32 %407, %395
  %409 = icmp eq i32 %394, 0
  br i1 %409, label %410, label %362

; <label>:410                                     ; preds = %373, %362
  %411 = phi i32 [ %366, %362 ], [ %378, %373 ]
  %412 = and i32 %411, -4
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %411, 2
  %416 = icmp ne i32 %415, 0
  %417 = lshr i32 %414, 16
  %418 = and i32 %414, 65535
  %419 = select i1 %416, i32 %417, i32 %418
  %420 = uitofp i32 %419 to float
  %421 = fmul fast float %420, 0x3EF0001000000000
  br label %483

; <label>:422                                     ; preds = %200
  %423 = and i32 %208, 536870911
  %424 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %423)  ; FirstbitHi(value)
  %425 = icmp eq i32 %424, -1
  %426 = add i32 %424, 1
  %427 = call i32 @dx.op.unary.i32(i32 30, i32 %203)  ; Bfrev(value)
  %428 = and i32 %426, 31
  %429 = select i1 %425, i32 1, i32 %428
  %430 = lshr i32 %427, %429
  %431 = call i32 @dx.op.unary.i32(i32 30, i32 %204)  ; Bfrev(value)
  %432 = lshr i32 %431, %429
  %433 = and i32 %430, 1
  %434 = shl i32 %432, 1
  %435 = and i32 %434, 2
  %436 = or i32 %435, %433
  %437 = mul nuw nsw i32 %436, 12
  %438 = add nuw nsw i32 %205, 32
  %439 = add nuw i32 %438, %437
  br label %440

; <label>:440                                     ; preds = %451, %422
  %441 = phi i32 [ 2, %422 ], [ %464, %451 ]
  %442 = phi i32 [ %430, %422 ], [ %452, %451 ]
  %443 = phi i32 [ %432, %422 ], [ %453, %451 ]
  %444 = phi i32 [ %439, %422 ], [ %476, %451 ]
  %445 = phi i32 [ 0, %422 ], [ %456, %451 ]
  %446 = phi i32 [ 0, %422 ], [ %447, %451 ]
  %447 = add nuw nsw i32 %446, 1
  %448 = icmp eq i32 %441, 3
  %449 = icmp ugt i32 %447, 9
  %450 = or i1 %448, %449
  br i1 %450, label %478, label %451, !dx.controlflow.hints !29

; <label>:451                                     ; preds = %440
  %452 = lshr i32 %442, 1
  %453 = lshr i32 %443, 1
  %454 = icmp eq i32 %441, 2
  %455 = add i32 %444, 4
  %456 = select i1 %454, i32 %455, i32 %445
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %452, 1
  %460 = and i32 %443, 2
  %461 = or i32 %459, %460
  %462 = shl nuw nsw i32 %461, 1
  %463 = lshr i32 %458, %462
  %464 = and i32 %463, 3
  %465 = lshr i32 %458, 8
  %466 = sub nsw i32 4, %461
  %467 = shl nuw nsw i32 %466, 1
  %468 = lshr i32 255, %467
  %469 = and i32 %458, %468
  %470 = lshr i32 %469, 1
  %471 = and i32 %470, 85
  %472 = xor i32 %471, %469
  %473 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %472)  ; Countbits(value)
  %474 = shl i32 %473, 2
  %475 = add i32 %474, %444
  %476 = add i32 %475, %465
  %477 = icmp eq i32 %464, 0
  br i1 %477, label %478, label %440

; <label>:478                                     ; preds = %451, %440
  %479 = phi i32 [ %444, %440 ], [ %456, %451 ]
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = bitcast i32 %481 to float
  br label %483

; <label>:483                                     ; preds = %478, %410, %281, %213
  %484 = phi float [ %482, %478 ], [ %421, %410 ], [ %343, %281 ], [ 0.000000e+00, %213 ]
  %485 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %172
  store float %484, float* %485, align 4
  %486 = fcmp fast ogt float %484, 0.000000e+00
  %487 = add nuw nsw i32 %205, 20
  br i1 %486, label %488, label %503, !dx.controlflow.hints !30

; <label>:488                                     ; preds = %483
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = extractvalue %dx.types.ResRet.i32 %489, 1
  %492 = bitcast i32 %490 to float
  %493 = bitcast i32 %491 to float
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = extractvalue %dx.types.ResRet.i32 %494, 1
  %497 = bitcast i32 %495 to float
  %498 = bitcast i32 %496 to float
  %499 = fdiv fast float %484, %493
  %500 = fsub fast float %499, %492
  %501 = fadd fast float %500, %497
  %502 = fmul fast float %501, %498
  br label %503

; <label>:503                                     ; preds = %488, %483
  %504 = phi float [ %502, %488 ], [ %484, %483 ]
  %505 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %172
  store float %504, float* %505, align 4
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = extractvalue %dx.types.ResRet.i32 %506, 1
  %509 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %172
  %510 = bitcast float* %509 to i32*
  store i32 %507, i32* %510, align 4
  %511 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %172
  %512 = bitcast float* %511 to i32*
  store i32 %508, i32* %512, align 4
  br label %513

; <label>:513                                     ; preds = %503, %190
  %514 = phi float [ %504, %503 ], [ %199, %190 ]
  %515 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %173
  %516 = load float, float* %515, align 4
  %517 = fcmp fast ogt float %514, %516
  %518 = select i1 %517, i32 %172, i32 %173
  %519 = add nuw i32 %172, 1
  %520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.i32 %520, 2
  %522 = icmp eq i32 %521, 0
  %523 = icmp ugt i32 %188, -1073741825
  %524 = and i1 %523, %522
  %525 = icmp ult i32 %519, %165
  %526 = and i1 %524, %525
  br i1 %526, label %171, label %527, !dx.controlflow.hints !31

; <label>:527                                     ; preds = %513
  br label %528

; <label>:528                                     ; preds = %527, %155
  %529 = phi i32 [ 0, %155 ], [ %519, %527 ]
  %530 = phi i32 [ 0, %155 ], [ %518, %527 ]
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 2
  %533 = fptoui float %532 to i32
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %904, label %535

; <label>:535                                     ; preds = %528
  br label %536

; <label>:536                                     ; preds = %898, %535
  %537 = phi i32 [ %899, %898 ], [ %529, %535 ]
  %538 = phi i32 [ %900, %898 ], [ %530, %535 ]
  %539 = phi i32 [ %901, %898 ], [ 0, %535 ]
  %540 = lshr i32 %539, 2
  %541 = and i32 %539, 3
  %542 = add nuw nsw i32 %540, 83
  %543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %542)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.i32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.i32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.i32 %543, 2
  %547 = extractvalue %dx.types.CBufRet.i32 %543, 3
  %548 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 %544, i32* %548, align 4
  %549 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 %545, i32* %549, align 4
  %550 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 %546, i32* %550, align 4
  %551 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 %547, i32* %551, align 4
  %552 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 %541
  %553 = load i32, i32* %552, align 4, !tbaa !32
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = lshr i32 %555, 16
  %557 = and i32 %556, 31
  %558 = shl i32 %160, %557
  %559 = add i32 %558, %159
  %560 = shl i32 %559, 2
  %561 = add i32 %560, %553
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %898, label %565, !dx.controlflow.hints !36

; <label>:565                                     ; preds = %536
  %566 = icmp slt i32 %563, 0
  br i1 %566, label %577, label %567, !dx.controlflow.hints !37

; <label>:567                                     ; preds = %565
  %568 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %537
  %569 = bitcast float* %568 to i32*
  store i32 %563, i32* %569, align 4
  %570 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %537
  %571 = bitcast float* %570 to i32*
  store i32 %563, i32* %571, align 4
  %572 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %537
  %573 = bitcast float* %572 to i32*
  store i32 %167, i32* %573, align 4
  %574 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %537
  %575 = bitcast float* %574 to i32*
  store i32 %168, i32* %575, align 4
  %576 = bitcast i32 %563 to float
  br label %891

; <label>:577                                     ; preds = %565
  %578 = shl i32 1, %158
  %579 = add i32 %578, -1
  %580 = and i32 %579, %146
  %581 = and i32 %579, %147
  %582 = and i32 %563, 1073741823
  %583 = add i32 %582, %553
  %584 = add i32 %583, 4
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 29
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %800, label %589, !dx.controlflow.hints !24

; <label>:589                                     ; preds = %577
  %590 = icmp eq i32 %587, 1
  br i1 %590, label %722, label %591, !dx.controlflow.hints !25

; <label>:591                                     ; preds = %589
  %592 = icmp eq i32 %587, 2
  br i1 %592, label %593, label %861, !dx.controlflow.hints !26

; <label>:593                                     ; preds = %591
  %594 = and i32 %586, 536870911
  %595 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %594)  ; FirstbitHi(value)
  %596 = icmp eq i32 %595, -1
  %597 = add i32 %595, 1
  %598 = call i32 @dx.op.unary.i32(i32 30, i32 %580)  ; Bfrev(value)
  %599 = and i32 %597, 31
  %600 = select i1 %596, i32 1, i32 %599
  %601 = lshr i32 %598, %600
  %602 = call i32 @dx.op.unary.i32(i32 30, i32 %581)  ; Bfrev(value)
  %603 = lshr i32 %602, %600
  %604 = and i32 %601, 1
  %605 = shl i32 %603, 1
  %606 = and i32 %605, 2
  %607 = or i32 %606, %604
  %608 = mul nuw nsw i32 %607, 10
  %609 = add i32 %583, 32
  %610 = add i32 %609, %608
  br label %611

; <label>:611                                     ; preds = %622, %593
  %612 = phi i32 [ 3, %593 ], [ %643, %622 ]
  %613 = phi i32 [ %601, %593 ], [ %623, %622 ]
  %614 = phi i32 [ %603, %593 ], [ %624, %622 ]
  %615 = phi i32 [ %610, %593 ], [ %657, %622 ]
  %616 = phi i32 [ 0, %593 ], [ %627, %622 ]
  %617 = phi i32 [ 0, %593 ], [ %618, %622 ]
  %618 = add nuw nsw i32 %617, 1
  %619 = icmp eq i32 %612, 2
  %620 = icmp ugt i32 %618, 9
  %621 = or i1 %619, %620
  br i1 %621, label %659, label %622, !dx.controlflow.hints !27

; <label>:622                                     ; preds = %611
  %623 = lshr i32 %613, 1
  %624 = lshr i32 %614, 1
  %625 = icmp eq i32 %612, 3
  %626 = add i32 %615, 4
  %627 = select i1 %625, i32 %626, i32 %616
  %628 = and i32 %615, -4
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = extractvalue %dx.types.ResRet.i32 %629, 1
  %632 = and i32 %615, 2
  %633 = icmp ne i32 %632, 0
  %634 = lshr i32 %630, 16
  %635 = shl i32 %631, 16
  %636 = or i32 %634, %635
  %637 = select i1 %633, i32 %636, i32 %630
  %638 = and i32 %623, 1
  %639 = and i32 %614, 2
  %640 = or i32 %638, %639
  %641 = shl nuw nsw i32 %640, 1
  %642 = lshr i32 %637, %641
  %643 = and i32 %642, 3
  %644 = lshr i32 %637, 8
  %645 = sub nsw i32 4, %640
  %646 = shl nuw nsw i32 %645, 1
  %647 = lshr i32 255, %646
  %648 = and i32 %637, %647
  %649 = and i32 %648, 85
  %650 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %649)  ; Countbits(value)
  %651 = shl i32 %650, 2
  %652 = and i32 %648, 170
  %653 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %652)  ; Countbits(value)
  %654 = mul i32 %653, 6
  %655 = add i32 %651, %615
  %656 = add i32 %655, %654
  %657 = add i32 %656, %644
  %658 = icmp eq i32 %643, 0
  br i1 %658, label %659, label %611

; <label>:659                                     ; preds = %622, %611
  %660 = phi i32 [ %615, %611 ], [ %627, %622 ]
  %661 = and i32 %660, -4
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = extractvalue %dx.types.ResRet.i32 %662, 1
  %665 = and i32 %660, 2
  %666 = icmp ne i32 %665, 0
  %667 = lshr i32 %663, 16
  %668 = shl i32 %664, 16
  %669 = or i32 %667, %668
  %670 = select i1 %666, i32 %669, i32 %663
  %671 = add i32 %660, 4
  %672 = and i32 %671, -4
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %672, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %671, 2
  %676 = icmp ne i32 %675, 0
  %677 = lshr i32 %674, 16
  %678 = and i32 %674, 65535
  %679 = select i1 %676, i32 %677, i32 %678
  %680 = and i32 %670, 65535
  %681 = lshr i32 %670, 16
  %682 = and i32 %681, 16383
  %683 = lshr i32 %670, 30
  %684 = uitofp i32 %682 to float
  %685 = fmul fast float %684, 0x3F10004000000000
  %686 = fsub fast float 1.000000e+00, %685
  %687 = uitofp i32 %680 to float
  %688 = fmul fast float %687, 0x3EF0001000000000
  %689 = uitofp i32 %679 to float
  %690 = fmul fast float %689, 0x3F10001000000000
  %691 = fadd fast float %690, -2.000000e+00
  %692 = fmul fast float %688, %688
  %693 = fsub fast float 1.000000e+00, %692
  %694 = call float @dx.op.unary.f32(i32 24, float %693)  ; Sqrt(value)
  %695 = and i32 %683, 1
  %696 = icmp ne i32 %695, 0
  %697 = fsub fast float -0.000000e+00, %685
  %698 = select i1 %696, float %697, float %685
  %699 = and i32 %683, 2
  %700 = icmp ne i32 %699, 0
  %701 = fsub fast float -0.000000e+00, %686
  %702 = select i1 %700, float %701, float %686
  %703 = call float @dx.op.dot2.f32(i32 54, float %698, float %702, float %698, float %702)  ; Dot2(ax,ay,bx,by)
  %704 = call float @dx.op.unary.f32(i32 25, float %703)  ; Rsqrt(value)
  %705 = fmul fast float %704, %694
  %706 = fmul fast float %705, %698
  %707 = fmul fast float %705, %702
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = lshr i32 %709, 16
  %711 = and i32 %710, 31
  %712 = shl i32 1, %711
  %713 = uitofp i32 %712 to float
  %714 = fmul fast float %713, %138
  %715 = fmul fast float %713, %139
  %716 = call float @dx.op.unary.f32(i32 22, float %714)  ; Frc(value)
  %717 = call float @dx.op.unary.f32(i32 22, float %715)  ; Frc(value)
  %718 = call float @dx.op.dot2.f32(i32 54, float %706, float %707, float %716, float %717)  ; Dot2(ax,ay,bx,by)
  %719 = fsub fast float %691, %718
  %720 = fdiv fast float %719, %688
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  br label %861

; <label>:722                                     ; preds = %589
  %723 = and i32 %586, 536870911
  %724 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %723)  ; FirstbitHi(value)
  %725 = icmp eq i32 %724, -1
  %726 = add i32 %724, 1
  %727 = call i32 @dx.op.unary.i32(i32 30, i32 %580)  ; Bfrev(value)
  %728 = and i32 %726, 31
  %729 = select i1 %725, i32 1, i32 %728
  %730 = lshr i32 %727, %729
  %731 = call i32 @dx.op.unary.i32(i32 30, i32 %581)  ; Bfrev(value)
  %732 = lshr i32 %731, %729
  %733 = and i32 %730, 1
  %734 = shl i32 %732, 1
  %735 = and i32 %734, 2
  %736 = or i32 %735, %733
  %737 = shl nuw nsw i32 %736, 3
  %738 = or i32 %737, 32
  %739 = add i32 %738, %583
  br label %740

; <label>:740                                     ; preds = %751, %722
  %741 = phi i32 [ 3, %722 ], [ %772, %751 ]
  %742 = phi i32 [ %730, %722 ], [ %752, %751 ]
  %743 = phi i32 [ %732, %722 ], [ %753, %751 ]
  %744 = phi i32 [ %739, %722 ], [ %786, %751 ]
  %745 = phi i32 [ 0, %722 ], [ %756, %751 ]
  %746 = phi i32 [ 0, %722 ], [ %747, %751 ]
  %747 = add nuw nsw i32 %746, 1
  %748 = icmp eq i32 %741, 2
  %749 = icmp ugt i32 %747, 9
  %750 = or i1 %748, %749
  br i1 %750, label %788, label %751, !dx.controlflow.hints !28

; <label>:751                                     ; preds = %740
  %752 = lshr i32 %742, 1
  %753 = lshr i32 %743, 1
  %754 = icmp eq i32 %741, 3
  %755 = add i32 %744, 4
  %756 = select i1 %754, i32 %755, i32 %745
  %757 = and i32 %744, -4
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = extractvalue %dx.types.ResRet.i32 %758, 1
  %761 = and i32 %744, 2
  %762 = icmp ne i32 %761, 0
  %763 = lshr i32 %759, 16
  %764 = shl i32 %760, 16
  %765 = or i32 %763, %764
  %766 = select i1 %762, i32 %765, i32 %759
  %767 = and i32 %752, 1
  %768 = and i32 %743, 2
  %769 = or i32 %767, %768
  %770 = shl nuw nsw i32 %769, 1
  %771 = lshr i32 %766, %770
  %772 = and i32 %771, 3
  %773 = lshr i32 %766, 8
  %774 = sub nsw i32 4, %769
  %775 = shl nuw nsw i32 %774, 1
  %776 = lshr i32 255, %775
  %777 = and i32 %766, %776
  %778 = and i32 %777, 85
  %779 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %778)  ; Countbits(value)
  %780 = shl i32 %779, 2
  %781 = and i32 %777, 170
  %782 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %781)  ; Countbits(value)
  %783 = shl i32 %782, 1
  %784 = add i32 %780, %744
  %785 = add i32 %784, %783
  %786 = add i32 %785, %773
  %787 = icmp eq i32 %772, 0
  br i1 %787, label %788, label %740

; <label>:788                                     ; preds = %751, %740
  %789 = phi i32 [ %744, %740 ], [ %756, %751 ]
  %790 = and i32 %789, -4
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %789, 2
  %794 = icmp ne i32 %793, 0
  %795 = lshr i32 %792, 16
  %796 = and i32 %792, 65535
  %797 = select i1 %794, i32 %795, i32 %796
  %798 = uitofp i32 %797 to float
  %799 = fmul fast float %798, 0x3EF0001000000000
  br label %861

; <label>:800                                     ; preds = %577
  %801 = and i32 %586, 536870911
  %802 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %801)  ; FirstbitHi(value)
  %803 = icmp eq i32 %802, -1
  %804 = add i32 %802, 1
  %805 = call i32 @dx.op.unary.i32(i32 30, i32 %580)  ; Bfrev(value)
  %806 = and i32 %804, 31
  %807 = select i1 %803, i32 1, i32 %806
  %808 = lshr i32 %805, %807
  %809 = call i32 @dx.op.unary.i32(i32 30, i32 %581)  ; Bfrev(value)
  %810 = lshr i32 %809, %807
  %811 = and i32 %808, 1
  %812 = shl i32 %810, 1
  %813 = and i32 %812, 2
  %814 = or i32 %813, %811
  %815 = mul nuw nsw i32 %814, 12
  %816 = add i32 %583, 32
  %817 = add i32 %816, %815
  br label %818

; <label>:818                                     ; preds = %829, %800
  %819 = phi i32 [ 2, %800 ], [ %842, %829 ]
  %820 = phi i32 [ %808, %800 ], [ %830, %829 ]
  %821 = phi i32 [ %810, %800 ], [ %831, %829 ]
  %822 = phi i32 [ %817, %800 ], [ %854, %829 ]
  %823 = phi i32 [ 0, %800 ], [ %834, %829 ]
  %824 = phi i32 [ 0, %800 ], [ %825, %829 ]
  %825 = add nuw nsw i32 %824, 1
  %826 = icmp eq i32 %819, 3
  %827 = icmp ugt i32 %825, 9
  %828 = or i1 %826, %827
  br i1 %828, label %856, label %829, !dx.controlflow.hints !29

; <label>:829                                     ; preds = %818
  %830 = lshr i32 %820, 1
  %831 = lshr i32 %821, 1
  %832 = icmp eq i32 %819, 2
  %833 = add i32 %822, 4
  %834 = select i1 %832, i32 %833, i32 %823
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = and i32 %830, 1
  %838 = and i32 %821, 2
  %839 = or i32 %837, %838
  %840 = shl nuw nsw i32 %839, 1
  %841 = lshr i32 %836, %840
  %842 = and i32 %841, 3
  %843 = lshr i32 %836, 8
  %844 = sub nsw i32 4, %839
  %845 = shl nuw nsw i32 %844, 1
  %846 = lshr i32 255, %845
  %847 = and i32 %836, %846
  %848 = lshr i32 %847, 1
  %849 = and i32 %848, 85
  %850 = xor i32 %849, %847
  %851 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %850)  ; Countbits(value)
  %852 = shl i32 %851, 2
  %853 = add i32 %852, %822
  %854 = add i32 %853, %843
  %855 = icmp eq i32 %842, 0
  br i1 %855, label %856, label %818

; <label>:856                                     ; preds = %829, %818
  %857 = phi i32 [ %822, %818 ], [ %834, %829 ]
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = bitcast i32 %859 to float
  br label %861

; <label>:861                                     ; preds = %856, %788, %659, %591
  %862 = phi float [ %860, %856 ], [ %799, %788 ], [ %721, %659 ], [ 0.000000e+00, %591 ]
  %863 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %537
  store float %862, float* %863, align 4
  %864 = fcmp fast ogt float %862, 0.000000e+00
  %865 = add i32 %583, 20
  br i1 %864, label %866, label %881, !dx.controlflow.hints !30

; <label>:866                                     ; preds = %861
  %867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.i32 %867, 0
  %869 = extractvalue %dx.types.ResRet.i32 %867, 1
  %870 = bitcast i32 %868 to float
  %871 = bitcast i32 %869 to float
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = extractvalue %dx.types.ResRet.i32 %872, 1
  %875 = bitcast i32 %873 to float
  %876 = bitcast i32 %874 to float
  %877 = fdiv fast float %862, %871
  %878 = fsub fast float %877, %870
  %879 = fadd fast float %878, %875
  %880 = fmul fast float %879, %876
  br label %881

; <label>:881                                     ; preds = %866, %861
  %882 = phi float [ %880, %866 ], [ %862, %861 ]
  %883 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %537
  store float %882, float* %883, align 4
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = extractvalue %dx.types.ResRet.i32 %884, 1
  %887 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %537
  %888 = bitcast float* %887 to i32*
  store i32 %885, i32* %888, align 4
  %889 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %537
  %890 = bitcast float* %889 to i32*
  store i32 %886, i32* %890, align 4
  br label %891

; <label>:891                                     ; preds = %881, %567
  %892 = phi float [ %882, %881 ], [ %576, %567 ]
  %893 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %538
  %894 = load float, float* %893, align 4
  %895 = fcmp fast ogt float %892, %894
  %896 = select i1 %895, i32 %537, i32 %538
  %897 = add i32 %537, 1
  br label %898

; <label>:898                                     ; preds = %891, %536
  %899 = phi i32 [ %537, %536 ], [ %897, %891 ]
  %900 = phi i32 [ %538, %536 ], [ %896, %891 ]
  %901 = add nuw i32 %539, 1
  %902 = icmp eq i32 %901, %533
  br i1 %902, label %903, label %536

; <label>:903                                     ; preds = %898
  br label %904

; <label>:904                                     ; preds = %903, %528
  %905 = phi i32 [ %529, %528 ], [ %899, %903 ]
  %906 = phi i32 [ %530, %528 ], [ %900, %903 ]
  %907 = icmp eq i32 %905, 1
  br i1 %907, label %946, label %908, !dx.controlflow.hints !38

; <label>:908                                     ; preds = %904
  %909 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 0
  %910 = load float, float* %909, align 4
  %911 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 0
  %912 = load float, float* %911, align 4
  %913 = fdiv fast float 1.000000e+00, %912
  %914 = fsub fast float %910, %913
  %915 = icmp ugt i32 %905, 1
  br i1 %915, label %916, label %932

; <label>:916                                     ; preds = %908
  br label %917

; <label>:917                                     ; preds = %917, %916
  %918 = phi float [ %927, %917 ], [ %914, %916 ]
  %919 = phi float [ %928, %917 ], [ %910, %916 ]
  %920 = phi i32 [ %929, %917 ], [ 1, %916 ]
  %921 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %920
  %922 = load float, float* %921, align 4
  %923 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %920
  %924 = load float, float* %923, align 4
  %925 = fdiv fast float 1.000000e+00, %924
  %926 = fsub fast float %922, %925
  %927 = call float @dx.op.binary.f32(i32 36, float %918, float %926)  ; FMin(a,b)
  %928 = call float @dx.op.binary.f32(i32 35, float %919, float %922)  ; FMax(a,b)
  %929 = add nuw i32 %920, 1
  %930 = icmp eq i32 %929, %905
  br i1 %930, label %931, label %917

; <label>:931                                     ; preds = %917
  br label %932

; <label>:932                                     ; preds = %931, %908
  %933 = phi float [ %914, %908 ], [ %927, %931 ]
  %934 = phi float [ %910, %908 ], [ %928, %931 ]
  %935 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %906
  %936 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %906
  %937 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %906
  %938 = load float, float* %935, align 4
  %939 = load float, float* %936, align 4
  %940 = load float, float* %937, align 4
  %941 = fdiv fast float %938, %940
  %942 = fsub fast float %934, %939
  %943 = fadd fast float %942, %941
  %944 = fsub fast float %934, %933
  %945 = fdiv fast float %943, %944
  br label %949

; <label>:946                                     ; preds = %904
  %947 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %948 = load float, float* %947, align 4
  br label %949

; <label>:949                                     ; preds = %946, %932, %115
  %950 = phi float [ %948, %946 ], [ %945, %932 ], [ 0.000000e+00, %115 ]
  %951 = fmul fast float %950, 2.000000e+00
  %952 = fsub fast float 1.000000e+00, %951
  %953 = fmul fast float %952, %952
  %954 = fmul fast float %953, %952
  %955 = fmul fast float %953, %953
  %956 = add i32 %121, 1
  %957 = uitofp i32 %956 to float
  %958 = fdiv fast float 1.000000e+00, %957
  %959 = fmul fast float %950, 3.000000e+00
  %960 = fsub fast float 1.500000e+00, %959
  %961 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %954, float %960)  ; FMad(a,b,c)
  %962 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %953, float 0.000000e+00)  ; FMad(a,b,c)
  %963 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %955, float %962)  ; FMad(a,b,c)
  %964 = fmul fast float %950, 0x3FFBB67AE0000000
  %965 = fsub fast float 0x3FEBB67AE0000000, %964
  %966 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %954, float %965)  ; FMad(a,b,c)
  %967 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %953, float 0.000000e+00)  ; FMad(a,b,c)
  %968 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %955, float %967)  ; FMad(a,b,c)
  %969 = fsub fast float 5.000000e-01, %116
  %970 = fadd fast float %969, %961
  %971 = fsub fast float %963, %117
  %972 = fsub fast float 5.000000e-01, %118
  %973 = fadd fast float %972, %966
  %974 = fsub fast float %968, %119
  %975 = fmul fast float %970, %958
  %976 = fmul fast float %971, %958
  %977 = fmul fast float %973, %958
  %978 = fmul fast float %974, %958
  %979 = fadd fast float %975, %116
  %980 = fadd fast float %976, %117
  %981 = fadd fast float %977, %118
  %982 = fadd fast float %978, %119
  %983 = add nuw i32 %120, 1
  %984 = icmp eq i32 %983, %66
  br i1 %984, label %985, label %115, !llvm.loop !39

; <label>:985                                     ; preds = %949
  br label %986

; <label>:986                                     ; preds = %985, %81
  %987 = phi float [ %109, %81 ], [ %979, %985 ]
  %988 = phi float [ %110, %81 ], [ %980, %985 ]
  %989 = phi float [ %111, %81 ], [ %981, %985 ]
  %990 = phi float [ %112, %81 ], [ %982, %985 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 0, float %987, float %988, float %989, float %990, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %991

; <label>:991                                     ; preds = %986, %75
  %992 = phi i32 [ %87, %986 ], [ %27, %75 ]
  %993 = shl i32 %50, 1
  %994 = add i32 %47, 1
  %995 = icmp ugt i32 %994, %48
  br i1 %995, label %3814, label %996, !dx.controlflow.hints !20

; <label>:996                                     ; preds = %991
  %997 = lshr i32 %992, 4
  %998 = and i32 %997, 31
  %999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.i32 %999, 1
  %1001 = and i32 %1000, 31
  %1002 = lshr i32 %993, %1001
  %1003 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %1002)  ; UMax(a,b)
  %1004 = mul i32 %1003, %1003
  %1005 = lshr i32 %1004, 4
  %1006 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %1005)  ; UMax(a,b)
  %1007 = mul i32 %1006, %998
  %1008 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = and i32 %1009, 496
  %1011 = icmp eq i32 %1010, 0
  %1012 = icmp ult i32 %1007, %1004
  %1013 = or i1 %1012, %1011
  %1014 = select i1 %1011, i32 0, i32 %1007
  br i1 %1013, label %1021, label %1015, !dx.controlflow.hints !21

; <label>:1015                                    ; preds = %996
  %1016 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1020 = extractvalue %dx.types.ResRet.f32 %1016, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 1, float %1017, float %1018, float %1019, float %1020, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1932

; <label>:1021                                    ; preds = %996
  %1022 = shl nuw nsw i32 %998, 4
  %1023 = add nuw nsw i32 %1022, 16
  %1024 = and i32 %1023, 496
  %1025 = select i1 %1011, i32 16, i32 %1024
  %1026 = and i32 %992, -497
  %1027 = or i32 %1025, %1026
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 321)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1031 = fmul fast float %37, 5.000000e-01
  %1032 = fmul fast float %1031, %54
  %1033 = fmul fast float %1029, %1032
  %1034 = fmul fast float %1030, %1032
  %1035 = fsub fast float %42, %1033
  %1036 = fsub fast float %43, %1034
  %1037 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1038 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1039 = uitofp i32 %993 to float
  %1040 = fmul fast float %1039, %45
  %1041 = fmul fast float %1037, 2.000000e+00
  %1042 = fmul fast float %1038, 2.000000e+00
  %1043 = fadd fast float %1041, -1.000000e+00
  %1044 = fadd fast float %1042, -1.000000e+00
  %1045 = fmul fast float %1043, %1040
  %1046 = fmul fast float %1044, %1040
  %1047 = fadd fast float %1045, %1029
  %1048 = fadd fast float %1046, %1030
  %1049 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = icmp eq i32 %1006, 0
  br i1 %1054, label %1927, label %1055

; <label>:1055                                    ; preds = %1021
  br label %1056

; <label>:1056                                    ; preds = %1890, %1055
  %1057 = phi float [ %1920, %1890 ], [ %1050, %1055 ]
  %1058 = phi float [ %1921, %1890 ], [ %1051, %1055 ]
  %1059 = phi float [ %1922, %1890 ], [ %1052, %1055 ]
  %1060 = phi float [ %1923, %1890 ], [ %1053, %1055 ]
  %1061 = phi i32 [ %1924, %1890 ], [ 0, %1055 ]
  %1062 = add i32 %1061, %1014
  %1063 = urem i32 %1062, %1003
  %1064 = uitofp i32 %1063 to float
  %1065 = udiv i32 %1062, %1003
  %1066 = uitofp i32 %1065 to float
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1066, 5.000000e-01
  %1069 = uitofp i32 %1003 to float
  %1070 = fdiv fast float %1067, %1069
  %1071 = fdiv fast float %1068, %1069
  %1072 = fmul fast float %1040, %37
  %1073 = fmul fast float %1070, 2.000000e+00
  %1074 = fmul fast float %1071, 2.000000e+00
  %1075 = fadd fast float %1073, -1.000000e+00
  %1076 = fadd fast float %1074, -1.000000e+00
  %1077 = fmul fast float %1075, %1072
  %1078 = fmul fast float %1076, %1072
  %1079 = fadd fast float %1047, %1077
  %1080 = fadd fast float %1048, %1078
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 536870911
  %1084 = uitofp i32 %1083 to float
  %1085 = fmul fast float %1084, %1079
  %1086 = fmul fast float %1084, %1080
  %1087 = fptoui float %1085 to i32
  %1088 = fptoui float %1086 to i32
  %1089 = fcmp fast olt float %1079, 0.000000e+00
  %1090 = fcmp fast olt float %1080, 0.000000e+00
  %1091 = or i1 %1089, %1090
  %1092 = fcmp fast oge float %1079, 1.000000e+00
  %1093 = fcmp fast oge float %1080, 1.000000e+00
  %1094 = or i1 %1092, %1093
  %1095 = or i1 %1091, %1094
  br i1 %1095, label %1890, label %1096, !dx.controlflow.hints !22

; <label>:1096                                    ; preds = %1056
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 31
  %1100 = lshr i32 %1087, %1099
  %1101 = lshr i32 %1088, %1099
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %1103, 31
  %1105 = shl i32 1, %1104
  %1106 = call i32 @dx.op.binary.i32(i32 40, i32 %1105, i32 4)  ; UMin(a,b)
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.i32 %1107, 1
  %1110 = icmp eq i32 %1106, 0
  br i1 %1110, label %1469, label %1111

; <label>:1111                                    ; preds = %1096
  br label %1112

; <label>:1112                                    ; preds = %1454, %1111
  %1113 = phi i32 [ %1460, %1454 ], [ 0, %1111 ]
  %1114 = phi i32 [ %1459, %1454 ], [ 0, %1111 ]
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = lshr i32 %1116, 16
  %1118 = and i32 %1117, 31
  %1119 = shl i32 %1101, %1118
  %1120 = add i32 %1119, %1100
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = and i32 %1122, 31
  %1124 = shl i32 %1120, %1123
  %1125 = add i32 %1124, %1113
  %1126 = shl i32 %1125, 2
  %1127 = add i32 %1126, 32
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = icmp slt i32 %1129, 0
  br i1 %1130, label %1141, label %1131, !dx.controlflow.hints !23

; <label>:1131                                    ; preds = %1112
  %1132 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1113
  %1133 = bitcast float* %1132 to i32*
  store i32 %1129, i32* %1133, align 4
  %1134 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1113
  %1135 = bitcast float* %1134 to i32*
  store i32 %1129, i32* %1135, align 4
  %1136 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %1113
  %1137 = bitcast float* %1136 to i32*
  store i32 %1108, i32* %1137, align 4
  %1138 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %1113
  %1139 = bitcast float* %1138 to i32*
  store i32 %1109, i32* %1139, align 4
  %1140 = bitcast i32 %1129 to float
  br label %1454

; <label>:1141                                    ; preds = %1112
  %1142 = shl i32 1, %1099
  %1143 = add i32 %1142, -1
  %1144 = and i32 %1143, %1087
  %1145 = and i32 %1143, %1088
  %1146 = and i32 %1129, 1073741823
  %1147 = add nuw nsw i32 %1146, 4
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 29
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1363, label %1152, !dx.controlflow.hints !24

; <label>:1152                                    ; preds = %1141
  %1153 = icmp eq i32 %1150, 1
  br i1 %1153, label %1285, label %1154, !dx.controlflow.hints !25

; <label>:1154                                    ; preds = %1152
  %1155 = icmp eq i32 %1150, 2
  br i1 %1155, label %1156, label %1424, !dx.controlflow.hints !26

; <label>:1156                                    ; preds = %1154
  %1157 = and i32 %1149, 536870911
  %1158 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1157)  ; FirstbitHi(value)
  %1159 = icmp eq i32 %1158, -1
  %1160 = add i32 %1158, 1
  %1161 = call i32 @dx.op.unary.i32(i32 30, i32 %1144)  ; Bfrev(value)
  %1162 = and i32 %1160, 31
  %1163 = select i1 %1159, i32 1, i32 %1162
  %1164 = lshr i32 %1161, %1163
  %1165 = call i32 @dx.op.unary.i32(i32 30, i32 %1145)  ; Bfrev(value)
  %1166 = lshr i32 %1165, %1163
  %1167 = and i32 %1164, 1
  %1168 = shl i32 %1166, 1
  %1169 = and i32 %1168, 2
  %1170 = or i32 %1169, %1167
  %1171 = mul nuw nsw i32 %1170, 10
  %1172 = add nuw nsw i32 %1146, 32
  %1173 = add nuw i32 %1172, %1171
  br label %1174

; <label>:1174                                    ; preds = %1185, %1156
  %1175 = phi i32 [ 3, %1156 ], [ %1206, %1185 ]
  %1176 = phi i32 [ %1164, %1156 ], [ %1186, %1185 ]
  %1177 = phi i32 [ %1166, %1156 ], [ %1187, %1185 ]
  %1178 = phi i32 [ %1173, %1156 ], [ %1220, %1185 ]
  %1179 = phi i32 [ 0, %1156 ], [ %1190, %1185 ]
  %1180 = phi i32 [ 0, %1156 ], [ %1181, %1185 ]
  %1181 = add nuw nsw i32 %1180, 1
  %1182 = icmp eq i32 %1175, 2
  %1183 = icmp ugt i32 %1181, 9
  %1184 = or i1 %1182, %1183
  br i1 %1184, label %1222, label %1185, !dx.controlflow.hints !27

; <label>:1185                                    ; preds = %1174
  %1186 = lshr i32 %1176, 1
  %1187 = lshr i32 %1177, 1
  %1188 = icmp eq i32 %1175, 3
  %1189 = add i32 %1178, 4
  %1190 = select i1 %1188, i32 %1189, i32 %1179
  %1191 = and i32 %1178, -4
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.i32 %1192, 1
  %1195 = and i32 %1178, 2
  %1196 = icmp ne i32 %1195, 0
  %1197 = lshr i32 %1193, 16
  %1198 = shl i32 %1194, 16
  %1199 = or i32 %1197, %1198
  %1200 = select i1 %1196, i32 %1199, i32 %1193
  %1201 = and i32 %1186, 1
  %1202 = and i32 %1177, 2
  %1203 = or i32 %1201, %1202
  %1204 = shl nuw nsw i32 %1203, 1
  %1205 = lshr i32 %1200, %1204
  %1206 = and i32 %1205, 3
  %1207 = lshr i32 %1200, 8
  %1208 = sub nsw i32 4, %1203
  %1209 = shl nuw nsw i32 %1208, 1
  %1210 = lshr i32 255, %1209
  %1211 = and i32 %1200, %1210
  %1212 = and i32 %1211, 85
  %1213 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1212)  ; Countbits(value)
  %1214 = shl i32 %1213, 2
  %1215 = and i32 %1211, 170
  %1216 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1215)  ; Countbits(value)
  %1217 = mul i32 %1216, 6
  %1218 = add i32 %1214, %1178
  %1219 = add i32 %1218, %1217
  %1220 = add i32 %1219, %1207
  %1221 = icmp eq i32 %1206, 0
  br i1 %1221, label %1222, label %1174

; <label>:1222                                    ; preds = %1185, %1174
  %1223 = phi i32 [ %1178, %1174 ], [ %1190, %1185 ]
  %1224 = and i32 %1223, -4
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.i32 %1225, 1
  %1228 = and i32 %1223, 2
  %1229 = icmp ne i32 %1228, 0
  %1230 = lshr i32 %1226, 16
  %1231 = shl i32 %1227, 16
  %1232 = or i32 %1230, %1231
  %1233 = select i1 %1229, i32 %1232, i32 %1226
  %1234 = add i32 %1223, 4
  %1235 = and i32 %1234, -4
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1234, 2
  %1239 = icmp ne i32 %1238, 0
  %1240 = lshr i32 %1237, 16
  %1241 = and i32 %1237, 65535
  %1242 = select i1 %1239, i32 %1240, i32 %1241
  %1243 = and i32 %1233, 65535
  %1244 = lshr i32 %1233, 16
  %1245 = and i32 %1244, 16383
  %1246 = lshr i32 %1233, 30
  %1247 = uitofp i32 %1245 to float
  %1248 = fmul fast float %1247, 0x3F10004000000000
  %1249 = fsub fast float 1.000000e+00, %1248
  %1250 = uitofp i32 %1243 to float
  %1251 = fmul fast float %1250, 0x3EF0001000000000
  %1252 = uitofp i32 %1242 to float
  %1253 = fmul fast float %1252, 0x3F10001000000000
  %1254 = fadd fast float %1253, -2.000000e+00
  %1255 = fmul fast float %1251, %1251
  %1256 = fsub fast float 1.000000e+00, %1255
  %1257 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1258 = and i32 %1246, 1
  %1259 = icmp ne i32 %1258, 0
  %1260 = fsub fast float -0.000000e+00, %1248
  %1261 = select i1 %1259, float %1260, float %1248
  %1262 = and i32 %1246, 2
  %1263 = icmp ne i32 %1262, 0
  %1264 = fsub fast float -0.000000e+00, %1249
  %1265 = select i1 %1263, float %1264, float %1249
  %1266 = call float @dx.op.dot2.f32(i32 54, float %1261, float %1265, float %1261, float %1265)  ; Dot2(ax,ay,bx,by)
  %1267 = call float @dx.op.unary.f32(i32 25, float %1266)  ; Rsqrt(value)
  %1268 = fmul fast float %1267, %1257
  %1269 = fmul fast float %1268, %1261
  %1270 = fmul fast float %1268, %1265
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1272, 16
  %1274 = and i32 %1273, 31
  %1275 = shl i32 1, %1274
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, %1079
  %1278 = fmul fast float %1276, %1080
  %1279 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1280 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1281 = call float @dx.op.dot2.f32(i32 54, float %1269, float %1270, float %1279, float %1280)  ; Dot2(ax,ay,bx,by)
  %1282 = fsub fast float %1254, %1281
  %1283 = fdiv fast float %1282, %1251
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  br label %1424

; <label>:1285                                    ; preds = %1152
  %1286 = and i32 %1149, 536870911
  %1287 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1286)  ; FirstbitHi(value)
  %1288 = icmp eq i32 %1287, -1
  %1289 = add i32 %1287, 1
  %1290 = call i32 @dx.op.unary.i32(i32 30, i32 %1144)  ; Bfrev(value)
  %1291 = and i32 %1289, 31
  %1292 = select i1 %1288, i32 1, i32 %1291
  %1293 = lshr i32 %1290, %1292
  %1294 = call i32 @dx.op.unary.i32(i32 30, i32 %1145)  ; Bfrev(value)
  %1295 = lshr i32 %1294, %1292
  %1296 = and i32 %1293, 1
  %1297 = shl i32 %1295, 1
  %1298 = and i32 %1297, 2
  %1299 = or i32 %1298, %1296
  %1300 = shl nuw nsw i32 %1299, 3
  %1301 = or i32 %1300, 32
  %1302 = add nuw nsw i32 %1301, %1146
  br label %1303

; <label>:1303                                    ; preds = %1314, %1285
  %1304 = phi i32 [ 3, %1285 ], [ %1335, %1314 ]
  %1305 = phi i32 [ %1293, %1285 ], [ %1315, %1314 ]
  %1306 = phi i32 [ %1295, %1285 ], [ %1316, %1314 ]
  %1307 = phi i32 [ %1302, %1285 ], [ %1349, %1314 ]
  %1308 = phi i32 [ 0, %1285 ], [ %1319, %1314 ]
  %1309 = phi i32 [ 0, %1285 ], [ %1310, %1314 ]
  %1310 = add nuw nsw i32 %1309, 1
  %1311 = icmp eq i32 %1304, 2
  %1312 = icmp ugt i32 %1310, 9
  %1313 = or i1 %1311, %1312
  br i1 %1313, label %1351, label %1314, !dx.controlflow.hints !28

; <label>:1314                                    ; preds = %1303
  %1315 = lshr i32 %1305, 1
  %1316 = lshr i32 %1306, 1
  %1317 = icmp eq i32 %1304, 3
  %1318 = add i32 %1307, 4
  %1319 = select i1 %1317, i32 %1318, i32 %1308
  %1320 = and i32 %1307, -4
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.i32 %1321, 1
  %1324 = and i32 %1307, 2
  %1325 = icmp ne i32 %1324, 0
  %1326 = lshr i32 %1322, 16
  %1327 = shl i32 %1323, 16
  %1328 = or i32 %1326, %1327
  %1329 = select i1 %1325, i32 %1328, i32 %1322
  %1330 = and i32 %1315, 1
  %1331 = and i32 %1306, 2
  %1332 = or i32 %1330, %1331
  %1333 = shl nuw nsw i32 %1332, 1
  %1334 = lshr i32 %1329, %1333
  %1335 = and i32 %1334, 3
  %1336 = lshr i32 %1329, 8
  %1337 = sub nsw i32 4, %1332
  %1338 = shl nuw nsw i32 %1337, 1
  %1339 = lshr i32 255, %1338
  %1340 = and i32 %1329, %1339
  %1341 = and i32 %1340, 85
  %1342 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1341)  ; Countbits(value)
  %1343 = shl i32 %1342, 2
  %1344 = and i32 %1340, 170
  %1345 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1344)  ; Countbits(value)
  %1346 = shl i32 %1345, 1
  %1347 = add i32 %1343, %1307
  %1348 = add i32 %1347, %1346
  %1349 = add i32 %1348, %1336
  %1350 = icmp eq i32 %1335, 0
  br i1 %1350, label %1351, label %1303

; <label>:1351                                    ; preds = %1314, %1303
  %1352 = phi i32 [ %1307, %1303 ], [ %1319, %1314 ]
  %1353 = and i32 %1352, -4
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = and i32 %1352, 2
  %1357 = icmp ne i32 %1356, 0
  %1358 = lshr i32 %1355, 16
  %1359 = and i32 %1355, 65535
  %1360 = select i1 %1357, i32 %1358, i32 %1359
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1361, 0x3EF0001000000000
  br label %1424

; <label>:1363                                    ; preds = %1141
  %1364 = and i32 %1149, 536870911
  %1365 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1364)  ; FirstbitHi(value)
  %1366 = icmp eq i32 %1365, -1
  %1367 = add i32 %1365, 1
  %1368 = call i32 @dx.op.unary.i32(i32 30, i32 %1144)  ; Bfrev(value)
  %1369 = and i32 %1367, 31
  %1370 = select i1 %1366, i32 1, i32 %1369
  %1371 = lshr i32 %1368, %1370
  %1372 = call i32 @dx.op.unary.i32(i32 30, i32 %1145)  ; Bfrev(value)
  %1373 = lshr i32 %1372, %1370
  %1374 = and i32 %1371, 1
  %1375 = shl i32 %1373, 1
  %1376 = and i32 %1375, 2
  %1377 = or i32 %1376, %1374
  %1378 = mul nuw nsw i32 %1377, 12
  %1379 = add nuw nsw i32 %1146, 32
  %1380 = add nuw i32 %1379, %1378
  br label %1381

; <label>:1381                                    ; preds = %1392, %1363
  %1382 = phi i32 [ 2, %1363 ], [ %1405, %1392 ]
  %1383 = phi i32 [ %1371, %1363 ], [ %1393, %1392 ]
  %1384 = phi i32 [ %1373, %1363 ], [ %1394, %1392 ]
  %1385 = phi i32 [ %1380, %1363 ], [ %1417, %1392 ]
  %1386 = phi i32 [ 0, %1363 ], [ %1397, %1392 ]
  %1387 = phi i32 [ 0, %1363 ], [ %1388, %1392 ]
  %1388 = add nuw nsw i32 %1387, 1
  %1389 = icmp eq i32 %1382, 3
  %1390 = icmp ugt i32 %1388, 9
  %1391 = or i1 %1389, %1390
  br i1 %1391, label %1419, label %1392, !dx.controlflow.hints !29

; <label>:1392                                    ; preds = %1381
  %1393 = lshr i32 %1383, 1
  %1394 = lshr i32 %1384, 1
  %1395 = icmp eq i32 %1382, 2
  %1396 = add i32 %1385, 4
  %1397 = select i1 %1395, i32 %1396, i32 %1386
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1393, 1
  %1401 = and i32 %1384, 2
  %1402 = or i32 %1400, %1401
  %1403 = shl nuw nsw i32 %1402, 1
  %1404 = lshr i32 %1399, %1403
  %1405 = and i32 %1404, 3
  %1406 = lshr i32 %1399, 8
  %1407 = sub nsw i32 4, %1402
  %1408 = shl nuw nsw i32 %1407, 1
  %1409 = lshr i32 255, %1408
  %1410 = and i32 %1399, %1409
  %1411 = lshr i32 %1410, 1
  %1412 = and i32 %1411, 85
  %1413 = xor i32 %1412, %1410
  %1414 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1413)  ; Countbits(value)
  %1415 = shl i32 %1414, 2
  %1416 = add i32 %1415, %1385
  %1417 = add i32 %1416, %1406
  %1418 = icmp eq i32 %1405, 0
  br i1 %1418, label %1419, label %1381

; <label>:1419                                    ; preds = %1392, %1381
  %1420 = phi i32 [ %1385, %1381 ], [ %1397, %1392 ]
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = bitcast i32 %1422 to float
  br label %1424

; <label>:1424                                    ; preds = %1419, %1351, %1222, %1154
  %1425 = phi float [ %1423, %1419 ], [ %1362, %1351 ], [ %1284, %1222 ], [ 0.000000e+00, %1154 ]
  %1426 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1113
  store float %1425, float* %1426, align 4
  %1427 = fcmp fast ogt float %1425, 0.000000e+00
  %1428 = add nuw nsw i32 %1146, 20
  br i1 %1427, label %1429, label %1444, !dx.controlflow.hints !30

; <label>:1429                                    ; preds = %1424
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.i32 %1430, 1
  %1433 = bitcast i32 %1431 to float
  %1434 = bitcast i32 %1432 to float
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.i32 %1435, 1
  %1438 = bitcast i32 %1436 to float
  %1439 = bitcast i32 %1437 to float
  %1440 = fdiv fast float %1425, %1434
  %1441 = fsub fast float %1440, %1433
  %1442 = fadd fast float %1441, %1438
  %1443 = fmul fast float %1442, %1439
  br label %1444

; <label>:1444                                    ; preds = %1429, %1424
  %1445 = phi float [ %1443, %1429 ], [ %1425, %1424 ]
  %1446 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1113
  store float %1445, float* %1446, align 4
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = extractvalue %dx.types.ResRet.i32 %1447, 1
  %1450 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %1113
  %1451 = bitcast float* %1450 to i32*
  store i32 %1448, i32* %1451, align 4
  %1452 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %1113
  %1453 = bitcast float* %1452 to i32*
  store i32 %1449, i32* %1453, align 4
  br label %1454

; <label>:1454                                    ; preds = %1444, %1131
  %1455 = phi float [ %1445, %1444 ], [ %1140, %1131 ]
  %1456 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %1114
  %1457 = load float, float* %1456, align 4
  %1458 = fcmp fast ogt float %1455, %1457
  %1459 = select i1 %1458, i32 %1113, i32 %1114
  %1460 = add nuw i32 %1113, 1
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 2
  %1463 = icmp eq i32 %1462, 0
  %1464 = icmp ugt i32 %1129, -1073741825
  %1465 = and i1 %1464, %1463
  %1466 = icmp ult i32 %1460, %1106
  %1467 = and i1 %1465, %1466
  br i1 %1467, label %1112, label %1468, !dx.controlflow.hints !31

; <label>:1468                                    ; preds = %1454
  br label %1469

; <label>:1469                                    ; preds = %1468, %1096
  %1470 = phi i32 [ 0, %1096 ], [ %1460, %1468 ]
  %1471 = phi i32 [ 0, %1096 ], [ %1459, %1468 ]
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1474 = fptoui float %1473 to i32
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1845, label %1476

; <label>:1476                                    ; preds = %1469
  br label %1477

; <label>:1477                                    ; preds = %1839, %1476
  %1478 = phi i32 [ %1840, %1839 ], [ %1470, %1476 ]
  %1479 = phi i32 [ %1841, %1839 ], [ %1471, %1476 ]
  %1480 = phi i32 [ %1842, %1839 ], [ 0, %1476 ]
  %1481 = lshr i32 %1480, 2
  %1482 = and i32 %1480, 3
  %1483 = add nuw nsw i32 %1481, 83
  %1484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %1483)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.i32 %1484, 0
  %1486 = extractvalue %dx.types.CBufRet.i32 %1484, 1
  %1487 = extractvalue %dx.types.CBufRet.i32 %1484, 2
  %1488 = extractvalue %dx.types.CBufRet.i32 %1484, 3
  %1489 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 %1485, i32* %1489, align 4
  %1490 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 %1486, i32* %1490, align 4
  %1491 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 %1487, i32* %1491, align 4
  %1492 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 %1488, i32* %1492, align 4
  %1493 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 %1482
  %1494 = load i32, i32* %1493, align 4, !tbaa !32
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = lshr i32 %1496, 16
  %1498 = and i32 %1497, 31
  %1499 = shl i32 %1101, %1498
  %1500 = add i32 %1499, %1100
  %1501 = shl i32 %1500, 2
  %1502 = add i32 %1501, %1494
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1839, label %1506, !dx.controlflow.hints !36

; <label>:1506                                    ; preds = %1477
  %1507 = icmp slt i32 %1504, 0
  br i1 %1507, label %1518, label %1508, !dx.controlflow.hints !37

; <label>:1508                                    ; preds = %1506
  %1509 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1478
  %1510 = bitcast float* %1509 to i32*
  store i32 %1504, i32* %1510, align 4
  %1511 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1478
  %1512 = bitcast float* %1511 to i32*
  store i32 %1504, i32* %1512, align 4
  %1513 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %1478
  %1514 = bitcast float* %1513 to i32*
  store i32 %1108, i32* %1514, align 4
  %1515 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %1478
  %1516 = bitcast float* %1515 to i32*
  store i32 %1109, i32* %1516, align 4
  %1517 = bitcast i32 %1504 to float
  br label %1832

; <label>:1518                                    ; preds = %1506
  %1519 = shl i32 1, %1099
  %1520 = add i32 %1519, -1
  %1521 = and i32 %1520, %1087
  %1522 = and i32 %1520, %1088
  %1523 = and i32 %1504, 1073741823
  %1524 = add i32 %1523, %1494
  %1525 = add i32 %1524, 4
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = lshr i32 %1527, 29
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1741, label %1530, !dx.controlflow.hints !24

; <label>:1530                                    ; preds = %1518
  %1531 = icmp eq i32 %1528, 1
  br i1 %1531, label %1663, label %1532, !dx.controlflow.hints !25

; <label>:1532                                    ; preds = %1530
  %1533 = icmp eq i32 %1528, 2
  br i1 %1533, label %1534, label %1802, !dx.controlflow.hints !26

; <label>:1534                                    ; preds = %1532
  %1535 = and i32 %1527, 536870911
  %1536 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1535)  ; FirstbitHi(value)
  %1537 = icmp eq i32 %1536, -1
  %1538 = add i32 %1536, 1
  %1539 = call i32 @dx.op.unary.i32(i32 30, i32 %1521)  ; Bfrev(value)
  %1540 = and i32 %1538, 31
  %1541 = select i1 %1537, i32 1, i32 %1540
  %1542 = lshr i32 %1539, %1541
  %1543 = call i32 @dx.op.unary.i32(i32 30, i32 %1522)  ; Bfrev(value)
  %1544 = lshr i32 %1543, %1541
  %1545 = and i32 %1542, 1
  %1546 = shl i32 %1544, 1
  %1547 = and i32 %1546, 2
  %1548 = or i32 %1547, %1545
  %1549 = mul nuw nsw i32 %1548, 10
  %1550 = add i32 %1524, 32
  %1551 = add i32 %1550, %1549
  br label %1552

; <label>:1552                                    ; preds = %1563, %1534
  %1553 = phi i32 [ 3, %1534 ], [ %1584, %1563 ]
  %1554 = phi i32 [ %1542, %1534 ], [ %1564, %1563 ]
  %1555 = phi i32 [ %1544, %1534 ], [ %1565, %1563 ]
  %1556 = phi i32 [ %1551, %1534 ], [ %1598, %1563 ]
  %1557 = phi i32 [ 0, %1534 ], [ %1568, %1563 ]
  %1558 = phi i32 [ 0, %1534 ], [ %1559, %1563 ]
  %1559 = add nuw nsw i32 %1558, 1
  %1560 = icmp eq i32 %1553, 2
  %1561 = icmp ugt i32 %1559, 9
  %1562 = or i1 %1560, %1561
  br i1 %1562, label %1600, label %1563, !dx.controlflow.hints !27

; <label>:1563                                    ; preds = %1552
  %1564 = lshr i32 %1554, 1
  %1565 = lshr i32 %1555, 1
  %1566 = icmp eq i32 %1553, 3
  %1567 = add i32 %1556, 4
  %1568 = select i1 %1566, i32 %1567, i32 %1557
  %1569 = and i32 %1556, -4
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = extractvalue %dx.types.ResRet.i32 %1570, 1
  %1573 = and i32 %1556, 2
  %1574 = icmp ne i32 %1573, 0
  %1575 = lshr i32 %1571, 16
  %1576 = shl i32 %1572, 16
  %1577 = or i32 %1575, %1576
  %1578 = select i1 %1574, i32 %1577, i32 %1571
  %1579 = and i32 %1564, 1
  %1580 = and i32 %1555, 2
  %1581 = or i32 %1579, %1580
  %1582 = shl nuw nsw i32 %1581, 1
  %1583 = lshr i32 %1578, %1582
  %1584 = and i32 %1583, 3
  %1585 = lshr i32 %1578, 8
  %1586 = sub nsw i32 4, %1581
  %1587 = shl nuw nsw i32 %1586, 1
  %1588 = lshr i32 255, %1587
  %1589 = and i32 %1578, %1588
  %1590 = and i32 %1589, 85
  %1591 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1590)  ; Countbits(value)
  %1592 = shl i32 %1591, 2
  %1593 = and i32 %1589, 170
  %1594 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1593)  ; Countbits(value)
  %1595 = mul i32 %1594, 6
  %1596 = add i32 %1592, %1556
  %1597 = add i32 %1596, %1595
  %1598 = add i32 %1597, %1585
  %1599 = icmp eq i32 %1584, 0
  br i1 %1599, label %1600, label %1552

; <label>:1600                                    ; preds = %1563, %1552
  %1601 = phi i32 [ %1556, %1552 ], [ %1568, %1563 ]
  %1602 = and i32 %1601, -4
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = extractvalue %dx.types.ResRet.i32 %1603, 1
  %1606 = and i32 %1601, 2
  %1607 = icmp ne i32 %1606, 0
  %1608 = lshr i32 %1604, 16
  %1609 = shl i32 %1605, 16
  %1610 = or i32 %1608, %1609
  %1611 = select i1 %1607, i32 %1610, i32 %1604
  %1612 = add i32 %1601, 4
  %1613 = and i32 %1612, -4
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1612, 2
  %1617 = icmp ne i32 %1616, 0
  %1618 = lshr i32 %1615, 16
  %1619 = and i32 %1615, 65535
  %1620 = select i1 %1617, i32 %1618, i32 %1619
  %1621 = and i32 %1611, 65535
  %1622 = lshr i32 %1611, 16
  %1623 = and i32 %1622, 16383
  %1624 = lshr i32 %1611, 30
  %1625 = uitofp i32 %1623 to float
  %1626 = fmul fast float %1625, 0x3F10004000000000
  %1627 = fsub fast float 1.000000e+00, %1626
  %1628 = uitofp i32 %1621 to float
  %1629 = fmul fast float %1628, 0x3EF0001000000000
  %1630 = uitofp i32 %1620 to float
  %1631 = fmul fast float %1630, 0x3F10001000000000
  %1632 = fadd fast float %1631, -2.000000e+00
  %1633 = fmul fast float %1629, %1629
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = call float @dx.op.unary.f32(i32 24, float %1634)  ; Sqrt(value)
  %1636 = and i32 %1624, 1
  %1637 = icmp ne i32 %1636, 0
  %1638 = fsub fast float -0.000000e+00, %1626
  %1639 = select i1 %1637, float %1638, float %1626
  %1640 = and i32 %1624, 2
  %1641 = icmp ne i32 %1640, 0
  %1642 = fsub fast float -0.000000e+00, %1627
  %1643 = select i1 %1641, float %1642, float %1627
  %1644 = call float @dx.op.dot2.f32(i32 54, float %1639, float %1643, float %1639, float %1643)  ; Dot2(ax,ay,bx,by)
  %1645 = call float @dx.op.unary.f32(i32 25, float %1644)  ; Rsqrt(value)
  %1646 = fmul fast float %1645, %1635
  %1647 = fmul fast float %1646, %1639
  %1648 = fmul fast float %1646, %1643
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = lshr i32 %1650, 16
  %1652 = and i32 %1651, 31
  %1653 = shl i32 1, %1652
  %1654 = uitofp i32 %1653 to float
  %1655 = fmul fast float %1654, %1079
  %1656 = fmul fast float %1654, %1080
  %1657 = call float @dx.op.unary.f32(i32 22, float %1655)  ; Frc(value)
  %1658 = call float @dx.op.unary.f32(i32 22, float %1656)  ; Frc(value)
  %1659 = call float @dx.op.dot2.f32(i32 54, float %1647, float %1648, float %1657, float %1658)  ; Dot2(ax,ay,bx,by)
  %1660 = fsub fast float %1632, %1659
  %1661 = fdiv fast float %1660, %1629
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  br label %1802

; <label>:1663                                    ; preds = %1530
  %1664 = and i32 %1527, 536870911
  %1665 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1664)  ; FirstbitHi(value)
  %1666 = icmp eq i32 %1665, -1
  %1667 = add i32 %1665, 1
  %1668 = call i32 @dx.op.unary.i32(i32 30, i32 %1521)  ; Bfrev(value)
  %1669 = and i32 %1667, 31
  %1670 = select i1 %1666, i32 1, i32 %1669
  %1671 = lshr i32 %1668, %1670
  %1672 = call i32 @dx.op.unary.i32(i32 30, i32 %1522)  ; Bfrev(value)
  %1673 = lshr i32 %1672, %1670
  %1674 = and i32 %1671, 1
  %1675 = shl i32 %1673, 1
  %1676 = and i32 %1675, 2
  %1677 = or i32 %1676, %1674
  %1678 = shl nuw nsw i32 %1677, 3
  %1679 = or i32 %1678, 32
  %1680 = add i32 %1679, %1524
  br label %1681

; <label>:1681                                    ; preds = %1692, %1663
  %1682 = phi i32 [ 3, %1663 ], [ %1713, %1692 ]
  %1683 = phi i32 [ %1671, %1663 ], [ %1693, %1692 ]
  %1684 = phi i32 [ %1673, %1663 ], [ %1694, %1692 ]
  %1685 = phi i32 [ %1680, %1663 ], [ %1727, %1692 ]
  %1686 = phi i32 [ 0, %1663 ], [ %1697, %1692 ]
  %1687 = phi i32 [ 0, %1663 ], [ %1688, %1692 ]
  %1688 = add nuw nsw i32 %1687, 1
  %1689 = icmp eq i32 %1682, 2
  %1690 = icmp ugt i32 %1688, 9
  %1691 = or i1 %1689, %1690
  br i1 %1691, label %1729, label %1692, !dx.controlflow.hints !28

; <label>:1692                                    ; preds = %1681
  %1693 = lshr i32 %1683, 1
  %1694 = lshr i32 %1684, 1
  %1695 = icmp eq i32 %1682, 3
  %1696 = add i32 %1685, 4
  %1697 = select i1 %1695, i32 %1696, i32 %1686
  %1698 = and i32 %1685, -4
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1698, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = extractvalue %dx.types.ResRet.i32 %1699, 1
  %1702 = and i32 %1685, 2
  %1703 = icmp ne i32 %1702, 0
  %1704 = lshr i32 %1700, 16
  %1705 = shl i32 %1701, 16
  %1706 = or i32 %1704, %1705
  %1707 = select i1 %1703, i32 %1706, i32 %1700
  %1708 = and i32 %1693, 1
  %1709 = and i32 %1684, 2
  %1710 = or i32 %1708, %1709
  %1711 = shl nuw nsw i32 %1710, 1
  %1712 = lshr i32 %1707, %1711
  %1713 = and i32 %1712, 3
  %1714 = lshr i32 %1707, 8
  %1715 = sub nsw i32 4, %1710
  %1716 = shl nuw nsw i32 %1715, 1
  %1717 = lshr i32 255, %1716
  %1718 = and i32 %1707, %1717
  %1719 = and i32 %1718, 85
  %1720 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1719)  ; Countbits(value)
  %1721 = shl i32 %1720, 2
  %1722 = and i32 %1718, 170
  %1723 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1722)  ; Countbits(value)
  %1724 = shl i32 %1723, 1
  %1725 = add i32 %1721, %1685
  %1726 = add i32 %1725, %1724
  %1727 = add i32 %1726, %1714
  %1728 = icmp eq i32 %1713, 0
  br i1 %1728, label %1729, label %1681

; <label>:1729                                    ; preds = %1692, %1681
  %1730 = phi i32 [ %1685, %1681 ], [ %1697, %1692 ]
  %1731 = and i32 %1730, -4
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1730, 2
  %1735 = icmp ne i32 %1734, 0
  %1736 = lshr i32 %1733, 16
  %1737 = and i32 %1733, 65535
  %1738 = select i1 %1735, i32 %1736, i32 %1737
  %1739 = uitofp i32 %1738 to float
  %1740 = fmul fast float %1739, 0x3EF0001000000000
  br label %1802

; <label>:1741                                    ; preds = %1518
  %1742 = and i32 %1527, 536870911
  %1743 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1742)  ; FirstbitHi(value)
  %1744 = icmp eq i32 %1743, -1
  %1745 = add i32 %1743, 1
  %1746 = call i32 @dx.op.unary.i32(i32 30, i32 %1521)  ; Bfrev(value)
  %1747 = and i32 %1745, 31
  %1748 = select i1 %1744, i32 1, i32 %1747
  %1749 = lshr i32 %1746, %1748
  %1750 = call i32 @dx.op.unary.i32(i32 30, i32 %1522)  ; Bfrev(value)
  %1751 = lshr i32 %1750, %1748
  %1752 = and i32 %1749, 1
  %1753 = shl i32 %1751, 1
  %1754 = and i32 %1753, 2
  %1755 = or i32 %1754, %1752
  %1756 = mul nuw nsw i32 %1755, 12
  %1757 = add i32 %1524, 32
  %1758 = add i32 %1757, %1756
  br label %1759

; <label>:1759                                    ; preds = %1770, %1741
  %1760 = phi i32 [ 2, %1741 ], [ %1783, %1770 ]
  %1761 = phi i32 [ %1749, %1741 ], [ %1771, %1770 ]
  %1762 = phi i32 [ %1751, %1741 ], [ %1772, %1770 ]
  %1763 = phi i32 [ %1758, %1741 ], [ %1795, %1770 ]
  %1764 = phi i32 [ 0, %1741 ], [ %1775, %1770 ]
  %1765 = phi i32 [ 0, %1741 ], [ %1766, %1770 ]
  %1766 = add nuw nsw i32 %1765, 1
  %1767 = icmp eq i32 %1760, 3
  %1768 = icmp ugt i32 %1766, 9
  %1769 = or i1 %1767, %1768
  br i1 %1769, label %1797, label %1770, !dx.controlflow.hints !29

; <label>:1770                                    ; preds = %1759
  %1771 = lshr i32 %1761, 1
  %1772 = lshr i32 %1762, 1
  %1773 = icmp eq i32 %1760, 2
  %1774 = add i32 %1763, 4
  %1775 = select i1 %1773, i32 %1774, i32 %1764
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = and i32 %1771, 1
  %1779 = and i32 %1762, 2
  %1780 = or i32 %1778, %1779
  %1781 = shl nuw nsw i32 %1780, 1
  %1782 = lshr i32 %1777, %1781
  %1783 = and i32 %1782, 3
  %1784 = lshr i32 %1777, 8
  %1785 = sub nsw i32 4, %1780
  %1786 = shl nuw nsw i32 %1785, 1
  %1787 = lshr i32 255, %1786
  %1788 = and i32 %1777, %1787
  %1789 = lshr i32 %1788, 1
  %1790 = and i32 %1789, 85
  %1791 = xor i32 %1790, %1788
  %1792 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1791)  ; Countbits(value)
  %1793 = shl i32 %1792, 2
  %1794 = add i32 %1793, %1763
  %1795 = add i32 %1794, %1784
  %1796 = icmp eq i32 %1783, 0
  br i1 %1796, label %1797, label %1759

; <label>:1797                                    ; preds = %1770, %1759
  %1798 = phi i32 [ %1763, %1759 ], [ %1775, %1770 ]
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = bitcast i32 %1800 to float
  br label %1802

; <label>:1802                                    ; preds = %1797, %1729, %1600, %1532
  %1803 = phi float [ %1801, %1797 ], [ %1740, %1729 ], [ %1662, %1600 ], [ 0.000000e+00, %1532 ]
  %1804 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1478
  store float %1803, float* %1804, align 4
  %1805 = fcmp fast ogt float %1803, 0.000000e+00
  %1806 = add i32 %1524, 20
  br i1 %1805, label %1807, label %1822, !dx.controlflow.hints !30

; <label>:1807                                    ; preds = %1802
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = extractvalue %dx.types.ResRet.i32 %1808, 1
  %1811 = bitcast i32 %1809 to float
  %1812 = bitcast i32 %1810 to float
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = extractvalue %dx.types.ResRet.i32 %1813, 1
  %1816 = bitcast i32 %1814 to float
  %1817 = bitcast i32 %1815 to float
  %1818 = fdiv fast float %1803, %1812
  %1819 = fsub fast float %1818, %1811
  %1820 = fadd fast float %1819, %1816
  %1821 = fmul fast float %1820, %1817
  br label %1822

; <label>:1822                                    ; preds = %1807, %1802
  %1823 = phi float [ %1821, %1807 ], [ %1803, %1802 ]
  %1824 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1478
  store float %1823, float* %1824, align 4
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = extractvalue %dx.types.ResRet.i32 %1825, 1
  %1828 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %1478
  %1829 = bitcast float* %1828 to i32*
  store i32 %1826, i32* %1829, align 4
  %1830 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %1478
  %1831 = bitcast float* %1830 to i32*
  store i32 %1827, i32* %1831, align 4
  br label %1832

; <label>:1832                                    ; preds = %1822, %1508
  %1833 = phi float [ %1823, %1822 ], [ %1517, %1508 ]
  %1834 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %1479
  %1835 = load float, float* %1834, align 4
  %1836 = fcmp fast ogt float %1833, %1835
  %1837 = select i1 %1836, i32 %1478, i32 %1479
  %1838 = add i32 %1478, 1
  br label %1839

; <label>:1839                                    ; preds = %1832, %1477
  %1840 = phi i32 [ %1478, %1477 ], [ %1838, %1832 ]
  %1841 = phi i32 [ %1479, %1477 ], [ %1837, %1832 ]
  %1842 = add nuw i32 %1480, 1
  %1843 = icmp eq i32 %1842, %1474
  br i1 %1843, label %1844, label %1477

; <label>:1844                                    ; preds = %1839
  br label %1845

; <label>:1845                                    ; preds = %1844, %1469
  %1846 = phi i32 [ %1470, %1469 ], [ %1840, %1844 ]
  %1847 = phi i32 [ %1471, %1469 ], [ %1841, %1844 ]
  %1848 = icmp eq i32 %1846, 1
  br i1 %1848, label %1887, label %1849, !dx.controlflow.hints !38

; <label>:1849                                    ; preds = %1845
  %1850 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 0
  %1851 = load float, float* %1850, align 4
  %1852 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 0
  %1853 = load float, float* %1852, align 4
  %1854 = fdiv fast float 1.000000e+00, %1853
  %1855 = fsub fast float %1851, %1854
  %1856 = icmp ugt i32 %1846, 1
  br i1 %1856, label %1857, label %1873

; <label>:1857                                    ; preds = %1849
  br label %1858

; <label>:1858                                    ; preds = %1858, %1857
  %1859 = phi float [ %1868, %1858 ], [ %1855, %1857 ]
  %1860 = phi float [ %1869, %1858 ], [ %1851, %1857 ]
  %1861 = phi i32 [ %1870, %1858 ], [ 1, %1857 ]
  %1862 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %1861
  %1863 = load float, float* %1862, align 4
  %1864 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %1861
  %1865 = load float, float* %1864, align 4
  %1866 = fdiv fast float 1.000000e+00, %1865
  %1867 = fsub fast float %1863, %1866
  %1868 = call float @dx.op.binary.f32(i32 36, float %1859, float %1867)  ; FMin(a,b)
  %1869 = call float @dx.op.binary.f32(i32 35, float %1860, float %1863)  ; FMax(a,b)
  %1870 = add nuw i32 %1861, 1
  %1871 = icmp eq i32 %1870, %1846
  br i1 %1871, label %1872, label %1858

; <label>:1872                                    ; preds = %1858
  br label %1873

; <label>:1873                                    ; preds = %1872, %1849
  %1874 = phi float [ %1855, %1849 ], [ %1868, %1872 ]
  %1875 = phi float [ %1851, %1849 ], [ %1869, %1872 ]
  %1876 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %1847
  %1877 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %1847
  %1878 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %1847
  %1879 = load float, float* %1876, align 4
  %1880 = load float, float* %1877, align 4
  %1881 = load float, float* %1878, align 4
  %1882 = fdiv fast float %1879, %1881
  %1883 = fsub fast float %1875, %1880
  %1884 = fadd fast float %1883, %1882
  %1885 = fsub fast float %1875, %1874
  %1886 = fdiv fast float %1884, %1885
  br label %1890

; <label>:1887                                    ; preds = %1845
  %1888 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %1889 = load float, float* %1888, align 4
  br label %1890

; <label>:1890                                    ; preds = %1887, %1873, %1056
  %1891 = phi float [ %1889, %1887 ], [ %1886, %1873 ], [ 0.000000e+00, %1056 ]
  %1892 = fmul fast float %1891, 2.000000e+00
  %1893 = fsub fast float 1.000000e+00, %1892
  %1894 = fmul fast float %1893, %1893
  %1895 = fmul fast float %1894, %1893
  %1896 = fmul fast float %1894, %1894
  %1897 = add i32 %1062, 1
  %1898 = uitofp i32 %1897 to float
  %1899 = fdiv fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1891, 3.000000e+00
  %1901 = fsub fast float 1.500000e+00, %1900
  %1902 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1895, float %1901)  ; FMad(a,b,c)
  %1903 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1894, float 0.000000e+00)  ; FMad(a,b,c)
  %1904 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1896, float %1903)  ; FMad(a,b,c)
  %1905 = fmul fast float %1891, 0x3FFBB67AE0000000
  %1906 = fsub fast float 0x3FEBB67AE0000000, %1905
  %1907 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1895, float %1906)  ; FMad(a,b,c)
  %1908 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1894, float 0.000000e+00)  ; FMad(a,b,c)
  %1909 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1896, float %1908)  ; FMad(a,b,c)
  %1910 = fsub fast float 5.000000e-01, %1057
  %1911 = fadd fast float %1910, %1902
  %1912 = fsub fast float %1904, %1058
  %1913 = fsub fast float 5.000000e-01, %1059
  %1914 = fadd fast float %1913, %1907
  %1915 = fsub fast float %1909, %1060
  %1916 = fmul fast float %1911, %1899
  %1917 = fmul fast float %1912, %1899
  %1918 = fmul fast float %1914, %1899
  %1919 = fmul fast float %1915, %1899
  %1920 = fadd fast float %1916, %1057
  %1921 = fadd fast float %1917, %1058
  %1922 = fadd fast float %1918, %1059
  %1923 = fadd fast float %1919, %1060
  %1924 = add nuw i32 %1061, 1
  %1925 = icmp eq i32 %1924, %1006
  br i1 %1925, label %1926, label %1056, !llvm.loop !39

; <label>:1926                                    ; preds = %1890
  br label %1927

; <label>:1927                                    ; preds = %1926, %1021
  %1928 = phi float [ %1050, %1021 ], [ %1920, %1926 ]
  %1929 = phi float [ %1051, %1021 ], [ %1921, %1926 ]
  %1930 = phi float [ %1052, %1021 ], [ %1922, %1926 ]
  %1931 = phi float [ %1053, %1021 ], [ %1923, %1926 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 1, float %1928, float %1929, float %1930, float %1931, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1932

; <label>:1932                                    ; preds = %1927, %1015
  %1933 = phi i32 [ %1027, %1927 ], [ %992, %1015 ]
  %1934 = shl i32 %50, 2
  %1935 = add i32 %47, 2
  %1936 = icmp ugt i32 %1935, %48
  br i1 %1936, label %3814, label %1937, !dx.controlflow.hints !20

; <label>:1937                                    ; preds = %1932
  %1938 = lshr i32 %1933, 9
  %1939 = and i32 %1938, 127
  %1940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.i32 %1940, 1
  %1942 = and i32 %1941, 31
  %1943 = lshr i32 %1934, %1942
  %1944 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %1943)  ; UMax(a,b)
  %1945 = mul i32 %1944, %1944
  %1946 = lshr i32 %1945, 6
  %1947 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %1946)  ; UMax(a,b)
  %1948 = mul i32 %1947, %1939
  %1949 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 65024
  %1952 = icmp eq i32 %1951, 0
  %1953 = icmp ult i32 %1948, %1945
  %1954 = or i1 %1953, %1952
  %1955 = select i1 %1952, i32 0, i32 %1948
  br i1 %1954, label %1962, label %1956, !dx.controlflow.hints !21

; <label>:1956                                    ; preds = %1937
  %1957 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = extractvalue %dx.types.ResRet.f32 %1957, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 2, float %1958, float %1959, float %1960, float %1961, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2873

; <label>:1962                                    ; preds = %1937
  %1963 = shl nuw nsw i32 %1939, 9
  %1964 = add nuw nsw i32 %1963, 512
  %1965 = and i32 %1964, 65024
  %1966 = select i1 %1952, i32 512, i32 %1965
  %1967 = and i32 %1933, -65025
  %1968 = or i32 %1966, %1967
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 322)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = fmul fast float %37, 2.500000e-01
  %1973 = fmul fast float %1972, %54
  %1974 = fmul fast float %1970, %1973
  %1975 = fmul fast float %1971, %1973
  %1976 = fsub fast float %42, %1974
  %1977 = fsub fast float %43, %1975
  %1978 = call float @dx.op.unary.f32(i32 22, float %1976)  ; Frc(value)
  %1979 = call float @dx.op.unary.f32(i32 22, float %1977)  ; Frc(value)
  %1980 = uitofp i32 %1934 to float
  %1981 = fmul fast float %1980, %45
  %1982 = fmul fast float %1978, 2.000000e+00
  %1983 = fmul fast float %1979, 2.000000e+00
  %1984 = fadd fast float %1982, -1.000000e+00
  %1985 = fadd fast float %1983, -1.000000e+00
  %1986 = fmul fast float %1984, %1981
  %1987 = fmul fast float %1985, %1981
  %1988 = fadd fast float %1986, %1970
  %1989 = fadd fast float %1987, %1971
  %1990 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.ResRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.ResRet.f32 %1990, 2
  %1994 = extractvalue %dx.types.ResRet.f32 %1990, 3
  %1995 = icmp eq i32 %1947, 0
  br i1 %1995, label %2868, label %1996

; <label>:1996                                    ; preds = %1962
  br label %1997

; <label>:1997                                    ; preds = %2831, %1996
  %1998 = phi float [ %2861, %2831 ], [ %1991, %1996 ]
  %1999 = phi float [ %2862, %2831 ], [ %1992, %1996 ]
  %2000 = phi float [ %2863, %2831 ], [ %1993, %1996 ]
  %2001 = phi float [ %2864, %2831 ], [ %1994, %1996 ]
  %2002 = phi i32 [ %2865, %2831 ], [ 0, %1996 ]
  %2003 = add i32 %2002, %1955
  %2004 = urem i32 %2003, %1944
  %2005 = uitofp i32 %2004 to float
  %2006 = udiv i32 %2003, %1944
  %2007 = uitofp i32 %2006 to float
  %2008 = fadd fast float %2005, 5.000000e-01
  %2009 = fadd fast float %2007, 5.000000e-01
  %2010 = uitofp i32 %1944 to float
  %2011 = fdiv fast float %2008, %2010
  %2012 = fdiv fast float %2009, %2010
  %2013 = fmul fast float %1981, %37
  %2014 = fmul fast float %2011, 2.000000e+00
  %2015 = fmul fast float %2012, 2.000000e+00
  %2016 = fadd fast float %2014, -1.000000e+00
  %2017 = fadd fast float %2015, -1.000000e+00
  %2018 = fmul fast float %2016, %2013
  %2019 = fmul fast float %2017, %2013
  %2020 = fadd fast float %1988, %2018
  %2021 = fadd fast float %1989, %2019
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 536870911
  %2025 = uitofp i32 %2024 to float
  %2026 = fmul fast float %2025, %2020
  %2027 = fmul fast float %2025, %2021
  %2028 = fptoui float %2026 to i32
  %2029 = fptoui float %2027 to i32
  %2030 = fcmp fast olt float %2020, 0.000000e+00
  %2031 = fcmp fast olt float %2021, 0.000000e+00
  %2032 = or i1 %2030, %2031
  %2033 = fcmp fast oge float %2020, 1.000000e+00
  %2034 = fcmp fast oge float %2021, 1.000000e+00
  %2035 = or i1 %2033, %2034
  %2036 = or i1 %2032, %2035
  br i1 %2036, label %2831, label %2037, !dx.controlflow.hints !22

; <label>:2037                                    ; preds = %1997
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 31
  %2041 = lshr i32 %2028, %2040
  %2042 = lshr i32 %2029, %2040
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = and i32 %2044, 31
  %2046 = shl i32 1, %2045
  %2047 = call i32 @dx.op.binary.i32(i32 40, i32 %2046, i32 4)  ; UMin(a,b)
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.i32 %2048, 1
  %2051 = icmp eq i32 %2047, 0
  br i1 %2051, label %2410, label %2052

; <label>:2052                                    ; preds = %2037
  br label %2053

; <label>:2053                                    ; preds = %2395, %2052
  %2054 = phi i32 [ %2401, %2395 ], [ 0, %2052 ]
  %2055 = phi i32 [ %2400, %2395 ], [ 0, %2052 ]
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = lshr i32 %2057, 16
  %2059 = and i32 %2058, 31
  %2060 = shl i32 %2042, %2059
  %2061 = add i32 %2060, %2041
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 31
  %2065 = shl i32 %2061, %2064
  %2066 = add i32 %2065, %2054
  %2067 = shl i32 %2066, 2
  %2068 = add i32 %2067, 32
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = icmp slt i32 %2070, 0
  br i1 %2071, label %2082, label %2072, !dx.controlflow.hints !23

; <label>:2072                                    ; preds = %2053
  %2073 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2054
  %2074 = bitcast float* %2073 to i32*
  store i32 %2070, i32* %2074, align 4
  %2075 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2054
  %2076 = bitcast float* %2075 to i32*
  store i32 %2070, i32* %2076, align 4
  %2077 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %2054
  %2078 = bitcast float* %2077 to i32*
  store i32 %2049, i32* %2078, align 4
  %2079 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %2054
  %2080 = bitcast float* %2079 to i32*
  store i32 %2050, i32* %2080, align 4
  %2081 = bitcast i32 %2070 to float
  br label %2395

; <label>:2082                                    ; preds = %2053
  %2083 = shl i32 1, %2040
  %2084 = add i32 %2083, -1
  %2085 = and i32 %2084, %2028
  %2086 = and i32 %2084, %2029
  %2087 = and i32 %2070, 1073741823
  %2088 = add nuw nsw i32 %2087, 4
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = lshr i32 %2090, 29
  %2092 = icmp eq i32 %2091, 0
  br i1 %2092, label %2304, label %2093, !dx.controlflow.hints !24

; <label>:2093                                    ; preds = %2082
  %2094 = icmp eq i32 %2091, 1
  br i1 %2094, label %2226, label %2095, !dx.controlflow.hints !25

; <label>:2095                                    ; preds = %2093
  %2096 = icmp eq i32 %2091, 2
  br i1 %2096, label %2097, label %2365, !dx.controlflow.hints !26

; <label>:2097                                    ; preds = %2095
  %2098 = and i32 %2090, 536870911
  %2099 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2098)  ; FirstbitHi(value)
  %2100 = icmp eq i32 %2099, -1
  %2101 = add i32 %2099, 1
  %2102 = call i32 @dx.op.unary.i32(i32 30, i32 %2085)  ; Bfrev(value)
  %2103 = and i32 %2101, 31
  %2104 = select i1 %2100, i32 1, i32 %2103
  %2105 = lshr i32 %2102, %2104
  %2106 = call i32 @dx.op.unary.i32(i32 30, i32 %2086)  ; Bfrev(value)
  %2107 = lshr i32 %2106, %2104
  %2108 = and i32 %2105, 1
  %2109 = shl i32 %2107, 1
  %2110 = and i32 %2109, 2
  %2111 = or i32 %2110, %2108
  %2112 = mul nuw nsw i32 %2111, 10
  %2113 = add nuw nsw i32 %2087, 32
  %2114 = add nuw i32 %2113, %2112
  br label %2115

; <label>:2115                                    ; preds = %2126, %2097
  %2116 = phi i32 [ 3, %2097 ], [ %2147, %2126 ]
  %2117 = phi i32 [ %2105, %2097 ], [ %2127, %2126 ]
  %2118 = phi i32 [ %2107, %2097 ], [ %2128, %2126 ]
  %2119 = phi i32 [ %2114, %2097 ], [ %2161, %2126 ]
  %2120 = phi i32 [ 0, %2097 ], [ %2131, %2126 ]
  %2121 = phi i32 [ 0, %2097 ], [ %2122, %2126 ]
  %2122 = add nuw nsw i32 %2121, 1
  %2123 = icmp eq i32 %2116, 2
  %2124 = icmp ugt i32 %2122, 9
  %2125 = or i1 %2123, %2124
  br i1 %2125, label %2163, label %2126, !dx.controlflow.hints !27

; <label>:2126                                    ; preds = %2115
  %2127 = lshr i32 %2117, 1
  %2128 = lshr i32 %2118, 1
  %2129 = icmp eq i32 %2116, 3
  %2130 = add i32 %2119, 4
  %2131 = select i1 %2129, i32 %2130, i32 %2120
  %2132 = and i32 %2119, -4
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = extractvalue %dx.types.ResRet.i32 %2133, 1
  %2136 = and i32 %2119, 2
  %2137 = icmp ne i32 %2136, 0
  %2138 = lshr i32 %2134, 16
  %2139 = shl i32 %2135, 16
  %2140 = or i32 %2138, %2139
  %2141 = select i1 %2137, i32 %2140, i32 %2134
  %2142 = and i32 %2127, 1
  %2143 = and i32 %2118, 2
  %2144 = or i32 %2142, %2143
  %2145 = shl nuw nsw i32 %2144, 1
  %2146 = lshr i32 %2141, %2145
  %2147 = and i32 %2146, 3
  %2148 = lshr i32 %2141, 8
  %2149 = sub nsw i32 4, %2144
  %2150 = shl nuw nsw i32 %2149, 1
  %2151 = lshr i32 255, %2150
  %2152 = and i32 %2141, %2151
  %2153 = and i32 %2152, 85
  %2154 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2153)  ; Countbits(value)
  %2155 = shl i32 %2154, 2
  %2156 = and i32 %2152, 170
  %2157 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2156)  ; Countbits(value)
  %2158 = mul i32 %2157, 6
  %2159 = add i32 %2155, %2119
  %2160 = add i32 %2159, %2158
  %2161 = add i32 %2160, %2148
  %2162 = icmp eq i32 %2147, 0
  br i1 %2162, label %2163, label %2115

; <label>:2163                                    ; preds = %2126, %2115
  %2164 = phi i32 [ %2119, %2115 ], [ %2131, %2126 ]
  %2165 = and i32 %2164, -4
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.i32 %2166, 1
  %2169 = and i32 %2164, 2
  %2170 = icmp ne i32 %2169, 0
  %2171 = lshr i32 %2167, 16
  %2172 = shl i32 %2168, 16
  %2173 = or i32 %2171, %2172
  %2174 = select i1 %2170, i32 %2173, i32 %2167
  %2175 = add i32 %2164, 4
  %2176 = and i32 %2175, -4
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2175, 2
  %2180 = icmp ne i32 %2179, 0
  %2181 = lshr i32 %2178, 16
  %2182 = and i32 %2178, 65535
  %2183 = select i1 %2180, i32 %2181, i32 %2182
  %2184 = and i32 %2174, 65535
  %2185 = lshr i32 %2174, 16
  %2186 = and i32 %2185, 16383
  %2187 = lshr i32 %2174, 30
  %2188 = uitofp i32 %2186 to float
  %2189 = fmul fast float %2188, 0x3F10004000000000
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = uitofp i32 %2184 to float
  %2192 = fmul fast float %2191, 0x3EF0001000000000
  %2193 = uitofp i32 %2183 to float
  %2194 = fmul fast float %2193, 0x3F10001000000000
  %2195 = fadd fast float %2194, -2.000000e+00
  %2196 = fmul fast float %2192, %2192
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = call float @dx.op.unary.f32(i32 24, float %2197)  ; Sqrt(value)
  %2199 = and i32 %2187, 1
  %2200 = icmp ne i32 %2199, 0
  %2201 = fsub fast float -0.000000e+00, %2189
  %2202 = select i1 %2200, float %2201, float %2189
  %2203 = and i32 %2187, 2
  %2204 = icmp ne i32 %2203, 0
  %2205 = fsub fast float -0.000000e+00, %2190
  %2206 = select i1 %2204, float %2205, float %2190
  %2207 = call float @dx.op.dot2.f32(i32 54, float %2202, float %2206, float %2202, float %2206)  ; Dot2(ax,ay,bx,by)
  %2208 = call float @dx.op.unary.f32(i32 25, float %2207)  ; Rsqrt(value)
  %2209 = fmul fast float %2208, %2198
  %2210 = fmul fast float %2209, %2202
  %2211 = fmul fast float %2209, %2206
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = lshr i32 %2213, 16
  %2215 = and i32 %2214, 31
  %2216 = shl i32 1, %2215
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, %2020
  %2219 = fmul fast float %2217, %2021
  %2220 = call float @dx.op.unary.f32(i32 22, float %2218)  ; Frc(value)
  %2221 = call float @dx.op.unary.f32(i32 22, float %2219)  ; Frc(value)
  %2222 = call float @dx.op.dot2.f32(i32 54, float %2210, float %2211, float %2220, float %2221)  ; Dot2(ax,ay,bx,by)
  %2223 = fsub fast float %2195, %2222
  %2224 = fdiv fast float %2223, %2192
  %2225 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  br label %2365

; <label>:2226                                    ; preds = %2093
  %2227 = and i32 %2090, 536870911
  %2228 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2227)  ; FirstbitHi(value)
  %2229 = icmp eq i32 %2228, -1
  %2230 = add i32 %2228, 1
  %2231 = call i32 @dx.op.unary.i32(i32 30, i32 %2085)  ; Bfrev(value)
  %2232 = and i32 %2230, 31
  %2233 = select i1 %2229, i32 1, i32 %2232
  %2234 = lshr i32 %2231, %2233
  %2235 = call i32 @dx.op.unary.i32(i32 30, i32 %2086)  ; Bfrev(value)
  %2236 = lshr i32 %2235, %2233
  %2237 = and i32 %2234, 1
  %2238 = shl i32 %2236, 1
  %2239 = and i32 %2238, 2
  %2240 = or i32 %2239, %2237
  %2241 = shl nuw nsw i32 %2240, 3
  %2242 = or i32 %2241, 32
  %2243 = add nuw nsw i32 %2242, %2087
  br label %2244

; <label>:2244                                    ; preds = %2255, %2226
  %2245 = phi i32 [ 3, %2226 ], [ %2276, %2255 ]
  %2246 = phi i32 [ %2234, %2226 ], [ %2256, %2255 ]
  %2247 = phi i32 [ %2236, %2226 ], [ %2257, %2255 ]
  %2248 = phi i32 [ %2243, %2226 ], [ %2290, %2255 ]
  %2249 = phi i32 [ 0, %2226 ], [ %2260, %2255 ]
  %2250 = phi i32 [ 0, %2226 ], [ %2251, %2255 ]
  %2251 = add nuw nsw i32 %2250, 1
  %2252 = icmp eq i32 %2245, 2
  %2253 = icmp ugt i32 %2251, 9
  %2254 = or i1 %2252, %2253
  br i1 %2254, label %2292, label %2255, !dx.controlflow.hints !28

; <label>:2255                                    ; preds = %2244
  %2256 = lshr i32 %2246, 1
  %2257 = lshr i32 %2247, 1
  %2258 = icmp eq i32 %2245, 3
  %2259 = add i32 %2248, 4
  %2260 = select i1 %2258, i32 %2259, i32 %2249
  %2261 = and i32 %2248, -4
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = extractvalue %dx.types.ResRet.i32 %2262, 1
  %2265 = and i32 %2248, 2
  %2266 = icmp ne i32 %2265, 0
  %2267 = lshr i32 %2263, 16
  %2268 = shl i32 %2264, 16
  %2269 = or i32 %2267, %2268
  %2270 = select i1 %2266, i32 %2269, i32 %2263
  %2271 = and i32 %2256, 1
  %2272 = and i32 %2247, 2
  %2273 = or i32 %2271, %2272
  %2274 = shl nuw nsw i32 %2273, 1
  %2275 = lshr i32 %2270, %2274
  %2276 = and i32 %2275, 3
  %2277 = lshr i32 %2270, 8
  %2278 = sub nsw i32 4, %2273
  %2279 = shl nuw nsw i32 %2278, 1
  %2280 = lshr i32 255, %2279
  %2281 = and i32 %2270, %2280
  %2282 = and i32 %2281, 85
  %2283 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2282)  ; Countbits(value)
  %2284 = shl i32 %2283, 2
  %2285 = and i32 %2281, 170
  %2286 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2285)  ; Countbits(value)
  %2287 = shl i32 %2286, 1
  %2288 = add i32 %2284, %2248
  %2289 = add i32 %2288, %2287
  %2290 = add i32 %2289, %2277
  %2291 = icmp eq i32 %2276, 0
  br i1 %2291, label %2292, label %2244

; <label>:2292                                    ; preds = %2255, %2244
  %2293 = phi i32 [ %2248, %2244 ], [ %2260, %2255 ]
  %2294 = and i32 %2293, -4
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2293, 2
  %2298 = icmp ne i32 %2297, 0
  %2299 = lshr i32 %2296, 16
  %2300 = and i32 %2296, 65535
  %2301 = select i1 %2298, i32 %2299, i32 %2300
  %2302 = uitofp i32 %2301 to float
  %2303 = fmul fast float %2302, 0x3EF0001000000000
  br label %2365

; <label>:2304                                    ; preds = %2082
  %2305 = and i32 %2090, 536870911
  %2306 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2305)  ; FirstbitHi(value)
  %2307 = icmp eq i32 %2306, -1
  %2308 = add i32 %2306, 1
  %2309 = call i32 @dx.op.unary.i32(i32 30, i32 %2085)  ; Bfrev(value)
  %2310 = and i32 %2308, 31
  %2311 = select i1 %2307, i32 1, i32 %2310
  %2312 = lshr i32 %2309, %2311
  %2313 = call i32 @dx.op.unary.i32(i32 30, i32 %2086)  ; Bfrev(value)
  %2314 = lshr i32 %2313, %2311
  %2315 = and i32 %2312, 1
  %2316 = shl i32 %2314, 1
  %2317 = and i32 %2316, 2
  %2318 = or i32 %2317, %2315
  %2319 = mul nuw nsw i32 %2318, 12
  %2320 = add nuw nsw i32 %2087, 32
  %2321 = add nuw i32 %2320, %2319
  br label %2322

; <label>:2322                                    ; preds = %2333, %2304
  %2323 = phi i32 [ 2, %2304 ], [ %2346, %2333 ]
  %2324 = phi i32 [ %2312, %2304 ], [ %2334, %2333 ]
  %2325 = phi i32 [ %2314, %2304 ], [ %2335, %2333 ]
  %2326 = phi i32 [ %2321, %2304 ], [ %2358, %2333 ]
  %2327 = phi i32 [ 0, %2304 ], [ %2338, %2333 ]
  %2328 = phi i32 [ 0, %2304 ], [ %2329, %2333 ]
  %2329 = add nuw nsw i32 %2328, 1
  %2330 = icmp eq i32 %2323, 3
  %2331 = icmp ugt i32 %2329, 9
  %2332 = or i1 %2330, %2331
  br i1 %2332, label %2360, label %2333, !dx.controlflow.hints !29

; <label>:2333                                    ; preds = %2322
  %2334 = lshr i32 %2324, 1
  %2335 = lshr i32 %2325, 1
  %2336 = icmp eq i32 %2323, 2
  %2337 = add i32 %2326, 4
  %2338 = select i1 %2336, i32 %2337, i32 %2327
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2334, 1
  %2342 = and i32 %2325, 2
  %2343 = or i32 %2341, %2342
  %2344 = shl nuw nsw i32 %2343, 1
  %2345 = lshr i32 %2340, %2344
  %2346 = and i32 %2345, 3
  %2347 = lshr i32 %2340, 8
  %2348 = sub nsw i32 4, %2343
  %2349 = shl nuw nsw i32 %2348, 1
  %2350 = lshr i32 255, %2349
  %2351 = and i32 %2340, %2350
  %2352 = lshr i32 %2351, 1
  %2353 = and i32 %2352, 85
  %2354 = xor i32 %2353, %2351
  %2355 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2354)  ; Countbits(value)
  %2356 = shl i32 %2355, 2
  %2357 = add i32 %2356, %2326
  %2358 = add i32 %2357, %2347
  %2359 = icmp eq i32 %2346, 0
  br i1 %2359, label %2360, label %2322

; <label>:2360                                    ; preds = %2333, %2322
  %2361 = phi i32 [ %2326, %2322 ], [ %2338, %2333 ]
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = bitcast i32 %2363 to float
  br label %2365

; <label>:2365                                    ; preds = %2360, %2292, %2163, %2095
  %2366 = phi float [ %2364, %2360 ], [ %2303, %2292 ], [ %2225, %2163 ], [ 0.000000e+00, %2095 ]
  %2367 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2054
  store float %2366, float* %2367, align 4
  %2368 = fcmp fast ogt float %2366, 0.000000e+00
  %2369 = add nuw nsw i32 %2087, 20
  br i1 %2368, label %2370, label %2385, !dx.controlflow.hints !30

; <label>:2370                                    ; preds = %2365
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.i32 %2371, 1
  %2374 = bitcast i32 %2372 to float
  %2375 = bitcast i32 %2373 to float
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = extractvalue %dx.types.ResRet.i32 %2376, 1
  %2379 = bitcast i32 %2377 to float
  %2380 = bitcast i32 %2378 to float
  %2381 = fdiv fast float %2366, %2375
  %2382 = fsub fast float %2381, %2374
  %2383 = fadd fast float %2382, %2379
  %2384 = fmul fast float %2383, %2380
  br label %2385

; <label>:2385                                    ; preds = %2370, %2365
  %2386 = phi float [ %2384, %2370 ], [ %2366, %2365 ]
  %2387 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2054
  store float %2386, float* %2387, align 4
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = extractvalue %dx.types.ResRet.i32 %2388, 1
  %2391 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %2054
  %2392 = bitcast float* %2391 to i32*
  store i32 %2389, i32* %2392, align 4
  %2393 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %2054
  %2394 = bitcast float* %2393 to i32*
  store i32 %2390, i32* %2394, align 4
  br label %2395

; <label>:2395                                    ; preds = %2385, %2072
  %2396 = phi float [ %2386, %2385 ], [ %2081, %2072 ]
  %2397 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %2055
  %2398 = load float, float* %2397, align 4
  %2399 = fcmp fast ogt float %2396, %2398
  %2400 = select i1 %2399, i32 %2054, i32 %2055
  %2401 = add nuw i32 %2054, 1
  %2402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.i32 %2402, 2
  %2404 = icmp eq i32 %2403, 0
  %2405 = icmp ugt i32 %2070, -1073741825
  %2406 = and i1 %2405, %2404
  %2407 = icmp ult i32 %2401, %2047
  %2408 = and i1 %2406, %2407
  br i1 %2408, label %2053, label %2409, !dx.controlflow.hints !31

; <label>:2409                                    ; preds = %2395
  br label %2410

; <label>:2410                                    ; preds = %2409, %2037
  %2411 = phi i32 [ 0, %2037 ], [ %2401, %2409 ]
  %2412 = phi i32 [ 0, %2037 ], [ %2400, %2409 ]
  %2413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.f32 %2413, 2
  %2415 = fptoui float %2414 to i32
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2786, label %2417

; <label>:2417                                    ; preds = %2410
  br label %2418

; <label>:2418                                    ; preds = %2780, %2417
  %2419 = phi i32 [ %2781, %2780 ], [ %2411, %2417 ]
  %2420 = phi i32 [ %2782, %2780 ], [ %2412, %2417 ]
  %2421 = phi i32 [ %2783, %2780 ], [ 0, %2417 ]
  %2422 = lshr i32 %2421, 2
  %2423 = and i32 %2421, 3
  %2424 = add nuw nsw i32 %2422, 83
  %2425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %2424)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.i32 %2425, 0
  %2427 = extractvalue %dx.types.CBufRet.i32 %2425, 1
  %2428 = extractvalue %dx.types.CBufRet.i32 %2425, 2
  %2429 = extractvalue %dx.types.CBufRet.i32 %2425, 3
  %2430 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 %2426, i32* %2430, align 4
  %2431 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 %2427, i32* %2431, align 4
  %2432 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 %2428, i32* %2432, align 4
  %2433 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 %2429, i32* %2433, align 4
  %2434 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 %2423
  %2435 = load i32, i32* %2434, align 4, !tbaa !32
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = lshr i32 %2437, 16
  %2439 = and i32 %2438, 31
  %2440 = shl i32 %2042, %2439
  %2441 = add i32 %2440, %2041
  %2442 = shl i32 %2441, 2
  %2443 = add i32 %2442, %2435
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2780, label %2447, !dx.controlflow.hints !36

; <label>:2447                                    ; preds = %2418
  %2448 = icmp slt i32 %2445, 0
  br i1 %2448, label %2459, label %2449, !dx.controlflow.hints !37

; <label>:2449                                    ; preds = %2447
  %2450 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2419
  %2451 = bitcast float* %2450 to i32*
  store i32 %2445, i32* %2451, align 4
  %2452 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2419
  %2453 = bitcast float* %2452 to i32*
  store i32 %2445, i32* %2453, align 4
  %2454 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %2419
  %2455 = bitcast float* %2454 to i32*
  store i32 %2049, i32* %2455, align 4
  %2456 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %2419
  %2457 = bitcast float* %2456 to i32*
  store i32 %2050, i32* %2457, align 4
  %2458 = bitcast i32 %2445 to float
  br label %2773

; <label>:2459                                    ; preds = %2447
  %2460 = shl i32 1, %2040
  %2461 = add i32 %2460, -1
  %2462 = and i32 %2461, %2028
  %2463 = and i32 %2461, %2029
  %2464 = and i32 %2445, 1073741823
  %2465 = add i32 %2464, %2435
  %2466 = add i32 %2465, 4
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = lshr i32 %2468, 29
  %2470 = icmp eq i32 %2469, 0
  br i1 %2470, label %2682, label %2471, !dx.controlflow.hints !24

; <label>:2471                                    ; preds = %2459
  %2472 = icmp eq i32 %2469, 1
  br i1 %2472, label %2604, label %2473, !dx.controlflow.hints !25

; <label>:2473                                    ; preds = %2471
  %2474 = icmp eq i32 %2469, 2
  br i1 %2474, label %2475, label %2743, !dx.controlflow.hints !26

; <label>:2475                                    ; preds = %2473
  %2476 = and i32 %2468, 536870911
  %2477 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2476)  ; FirstbitHi(value)
  %2478 = icmp eq i32 %2477, -1
  %2479 = add i32 %2477, 1
  %2480 = call i32 @dx.op.unary.i32(i32 30, i32 %2462)  ; Bfrev(value)
  %2481 = and i32 %2479, 31
  %2482 = select i1 %2478, i32 1, i32 %2481
  %2483 = lshr i32 %2480, %2482
  %2484 = call i32 @dx.op.unary.i32(i32 30, i32 %2463)  ; Bfrev(value)
  %2485 = lshr i32 %2484, %2482
  %2486 = and i32 %2483, 1
  %2487 = shl i32 %2485, 1
  %2488 = and i32 %2487, 2
  %2489 = or i32 %2488, %2486
  %2490 = mul nuw nsw i32 %2489, 10
  %2491 = add i32 %2465, 32
  %2492 = add i32 %2491, %2490
  br label %2493

; <label>:2493                                    ; preds = %2504, %2475
  %2494 = phi i32 [ 3, %2475 ], [ %2525, %2504 ]
  %2495 = phi i32 [ %2483, %2475 ], [ %2505, %2504 ]
  %2496 = phi i32 [ %2485, %2475 ], [ %2506, %2504 ]
  %2497 = phi i32 [ %2492, %2475 ], [ %2539, %2504 ]
  %2498 = phi i32 [ 0, %2475 ], [ %2509, %2504 ]
  %2499 = phi i32 [ 0, %2475 ], [ %2500, %2504 ]
  %2500 = add nuw nsw i32 %2499, 1
  %2501 = icmp eq i32 %2494, 2
  %2502 = icmp ugt i32 %2500, 9
  %2503 = or i1 %2501, %2502
  br i1 %2503, label %2541, label %2504, !dx.controlflow.hints !27

; <label>:2504                                    ; preds = %2493
  %2505 = lshr i32 %2495, 1
  %2506 = lshr i32 %2496, 1
  %2507 = icmp eq i32 %2494, 3
  %2508 = add i32 %2497, 4
  %2509 = select i1 %2507, i32 %2508, i32 %2498
  %2510 = and i32 %2497, -4
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = extractvalue %dx.types.ResRet.i32 %2511, 1
  %2514 = and i32 %2497, 2
  %2515 = icmp ne i32 %2514, 0
  %2516 = lshr i32 %2512, 16
  %2517 = shl i32 %2513, 16
  %2518 = or i32 %2516, %2517
  %2519 = select i1 %2515, i32 %2518, i32 %2512
  %2520 = and i32 %2505, 1
  %2521 = and i32 %2496, 2
  %2522 = or i32 %2520, %2521
  %2523 = shl nuw nsw i32 %2522, 1
  %2524 = lshr i32 %2519, %2523
  %2525 = and i32 %2524, 3
  %2526 = lshr i32 %2519, 8
  %2527 = sub nsw i32 4, %2522
  %2528 = shl nuw nsw i32 %2527, 1
  %2529 = lshr i32 255, %2528
  %2530 = and i32 %2519, %2529
  %2531 = and i32 %2530, 85
  %2532 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2531)  ; Countbits(value)
  %2533 = shl i32 %2532, 2
  %2534 = and i32 %2530, 170
  %2535 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2534)  ; Countbits(value)
  %2536 = mul i32 %2535, 6
  %2537 = add i32 %2533, %2497
  %2538 = add i32 %2537, %2536
  %2539 = add i32 %2538, %2526
  %2540 = icmp eq i32 %2525, 0
  br i1 %2540, label %2541, label %2493

; <label>:2541                                    ; preds = %2504, %2493
  %2542 = phi i32 [ %2497, %2493 ], [ %2509, %2504 ]
  %2543 = and i32 %2542, -4
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = extractvalue %dx.types.ResRet.i32 %2544, 1
  %2547 = and i32 %2542, 2
  %2548 = icmp ne i32 %2547, 0
  %2549 = lshr i32 %2545, 16
  %2550 = shl i32 %2546, 16
  %2551 = or i32 %2549, %2550
  %2552 = select i1 %2548, i32 %2551, i32 %2545
  %2553 = add i32 %2542, 4
  %2554 = and i32 %2553, -4
  %2555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2554, i32 undef)  ; BufferLoad(srv,index,wot)
  %2556 = extractvalue %dx.types.ResRet.i32 %2555, 0
  %2557 = and i32 %2553, 2
  %2558 = icmp ne i32 %2557, 0
  %2559 = lshr i32 %2556, 16
  %2560 = and i32 %2556, 65535
  %2561 = select i1 %2558, i32 %2559, i32 %2560
  %2562 = and i32 %2552, 65535
  %2563 = lshr i32 %2552, 16
  %2564 = and i32 %2563, 16383
  %2565 = lshr i32 %2552, 30
  %2566 = uitofp i32 %2564 to float
  %2567 = fmul fast float %2566, 0x3F10004000000000
  %2568 = fsub fast float 1.000000e+00, %2567
  %2569 = uitofp i32 %2562 to float
  %2570 = fmul fast float %2569, 0x3EF0001000000000
  %2571 = uitofp i32 %2561 to float
  %2572 = fmul fast float %2571, 0x3F10001000000000
  %2573 = fadd fast float %2572, -2.000000e+00
  %2574 = fmul fast float %2570, %2570
  %2575 = fsub fast float 1.000000e+00, %2574
  %2576 = call float @dx.op.unary.f32(i32 24, float %2575)  ; Sqrt(value)
  %2577 = and i32 %2565, 1
  %2578 = icmp ne i32 %2577, 0
  %2579 = fsub fast float -0.000000e+00, %2567
  %2580 = select i1 %2578, float %2579, float %2567
  %2581 = and i32 %2565, 2
  %2582 = icmp ne i32 %2581, 0
  %2583 = fsub fast float -0.000000e+00, %2568
  %2584 = select i1 %2582, float %2583, float %2568
  %2585 = call float @dx.op.dot2.f32(i32 54, float %2580, float %2584, float %2580, float %2584)  ; Dot2(ax,ay,bx,by)
  %2586 = call float @dx.op.unary.f32(i32 25, float %2585)  ; Rsqrt(value)
  %2587 = fmul fast float %2586, %2576
  %2588 = fmul fast float %2587, %2580
  %2589 = fmul fast float %2587, %2584
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = lshr i32 %2591, 16
  %2593 = and i32 %2592, 31
  %2594 = shl i32 1, %2593
  %2595 = uitofp i32 %2594 to float
  %2596 = fmul fast float %2595, %2020
  %2597 = fmul fast float %2595, %2021
  %2598 = call float @dx.op.unary.f32(i32 22, float %2596)  ; Frc(value)
  %2599 = call float @dx.op.unary.f32(i32 22, float %2597)  ; Frc(value)
  %2600 = call float @dx.op.dot2.f32(i32 54, float %2588, float %2589, float %2598, float %2599)  ; Dot2(ax,ay,bx,by)
  %2601 = fsub fast float %2573, %2600
  %2602 = fdiv fast float %2601, %2570
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  br label %2743

; <label>:2604                                    ; preds = %2471
  %2605 = and i32 %2468, 536870911
  %2606 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2605)  ; FirstbitHi(value)
  %2607 = icmp eq i32 %2606, -1
  %2608 = add i32 %2606, 1
  %2609 = call i32 @dx.op.unary.i32(i32 30, i32 %2462)  ; Bfrev(value)
  %2610 = and i32 %2608, 31
  %2611 = select i1 %2607, i32 1, i32 %2610
  %2612 = lshr i32 %2609, %2611
  %2613 = call i32 @dx.op.unary.i32(i32 30, i32 %2463)  ; Bfrev(value)
  %2614 = lshr i32 %2613, %2611
  %2615 = and i32 %2612, 1
  %2616 = shl i32 %2614, 1
  %2617 = and i32 %2616, 2
  %2618 = or i32 %2617, %2615
  %2619 = shl nuw nsw i32 %2618, 3
  %2620 = or i32 %2619, 32
  %2621 = add i32 %2620, %2465
  br label %2622

; <label>:2622                                    ; preds = %2633, %2604
  %2623 = phi i32 [ 3, %2604 ], [ %2654, %2633 ]
  %2624 = phi i32 [ %2612, %2604 ], [ %2634, %2633 ]
  %2625 = phi i32 [ %2614, %2604 ], [ %2635, %2633 ]
  %2626 = phi i32 [ %2621, %2604 ], [ %2668, %2633 ]
  %2627 = phi i32 [ 0, %2604 ], [ %2638, %2633 ]
  %2628 = phi i32 [ 0, %2604 ], [ %2629, %2633 ]
  %2629 = add nuw nsw i32 %2628, 1
  %2630 = icmp eq i32 %2623, 2
  %2631 = icmp ugt i32 %2629, 9
  %2632 = or i1 %2630, %2631
  br i1 %2632, label %2670, label %2633, !dx.controlflow.hints !28

; <label>:2633                                    ; preds = %2622
  %2634 = lshr i32 %2624, 1
  %2635 = lshr i32 %2625, 1
  %2636 = icmp eq i32 %2623, 3
  %2637 = add i32 %2626, 4
  %2638 = select i1 %2636, i32 %2637, i32 %2627
  %2639 = and i32 %2626, -4
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = extractvalue %dx.types.ResRet.i32 %2640, 1
  %2643 = and i32 %2626, 2
  %2644 = icmp ne i32 %2643, 0
  %2645 = lshr i32 %2641, 16
  %2646 = shl i32 %2642, 16
  %2647 = or i32 %2645, %2646
  %2648 = select i1 %2644, i32 %2647, i32 %2641
  %2649 = and i32 %2634, 1
  %2650 = and i32 %2625, 2
  %2651 = or i32 %2649, %2650
  %2652 = shl nuw nsw i32 %2651, 1
  %2653 = lshr i32 %2648, %2652
  %2654 = and i32 %2653, 3
  %2655 = lshr i32 %2648, 8
  %2656 = sub nsw i32 4, %2651
  %2657 = shl nuw nsw i32 %2656, 1
  %2658 = lshr i32 255, %2657
  %2659 = and i32 %2648, %2658
  %2660 = and i32 %2659, 85
  %2661 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2660)  ; Countbits(value)
  %2662 = shl i32 %2661, 2
  %2663 = and i32 %2659, 170
  %2664 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2663)  ; Countbits(value)
  %2665 = shl i32 %2664, 1
  %2666 = add i32 %2662, %2626
  %2667 = add i32 %2666, %2665
  %2668 = add i32 %2667, %2655
  %2669 = icmp eq i32 %2654, 0
  br i1 %2669, label %2670, label %2622

; <label>:2670                                    ; preds = %2633, %2622
  %2671 = phi i32 [ %2626, %2622 ], [ %2638, %2633 ]
  %2672 = and i32 %2671, -4
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2671, 2
  %2676 = icmp ne i32 %2675, 0
  %2677 = lshr i32 %2674, 16
  %2678 = and i32 %2674, 65535
  %2679 = select i1 %2676, i32 %2677, i32 %2678
  %2680 = uitofp i32 %2679 to float
  %2681 = fmul fast float %2680, 0x3EF0001000000000
  br label %2743

; <label>:2682                                    ; preds = %2459
  %2683 = and i32 %2468, 536870911
  %2684 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2683)  ; FirstbitHi(value)
  %2685 = icmp eq i32 %2684, -1
  %2686 = add i32 %2684, 1
  %2687 = call i32 @dx.op.unary.i32(i32 30, i32 %2462)  ; Bfrev(value)
  %2688 = and i32 %2686, 31
  %2689 = select i1 %2685, i32 1, i32 %2688
  %2690 = lshr i32 %2687, %2689
  %2691 = call i32 @dx.op.unary.i32(i32 30, i32 %2463)  ; Bfrev(value)
  %2692 = lshr i32 %2691, %2689
  %2693 = and i32 %2690, 1
  %2694 = shl i32 %2692, 1
  %2695 = and i32 %2694, 2
  %2696 = or i32 %2695, %2693
  %2697 = mul nuw nsw i32 %2696, 12
  %2698 = add i32 %2465, 32
  %2699 = add i32 %2698, %2697
  br label %2700

; <label>:2700                                    ; preds = %2711, %2682
  %2701 = phi i32 [ 2, %2682 ], [ %2724, %2711 ]
  %2702 = phi i32 [ %2690, %2682 ], [ %2712, %2711 ]
  %2703 = phi i32 [ %2692, %2682 ], [ %2713, %2711 ]
  %2704 = phi i32 [ %2699, %2682 ], [ %2736, %2711 ]
  %2705 = phi i32 [ 0, %2682 ], [ %2716, %2711 ]
  %2706 = phi i32 [ 0, %2682 ], [ %2707, %2711 ]
  %2707 = add nuw nsw i32 %2706, 1
  %2708 = icmp eq i32 %2701, 3
  %2709 = icmp ugt i32 %2707, 9
  %2710 = or i1 %2708, %2709
  br i1 %2710, label %2738, label %2711, !dx.controlflow.hints !29

; <label>:2711                                    ; preds = %2700
  %2712 = lshr i32 %2702, 1
  %2713 = lshr i32 %2703, 1
  %2714 = icmp eq i32 %2701, 2
  %2715 = add i32 %2704, 4
  %2716 = select i1 %2714, i32 %2715, i32 %2705
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2712, 1
  %2720 = and i32 %2703, 2
  %2721 = or i32 %2719, %2720
  %2722 = shl nuw nsw i32 %2721, 1
  %2723 = lshr i32 %2718, %2722
  %2724 = and i32 %2723, 3
  %2725 = lshr i32 %2718, 8
  %2726 = sub nsw i32 4, %2721
  %2727 = shl nuw nsw i32 %2726, 1
  %2728 = lshr i32 255, %2727
  %2729 = and i32 %2718, %2728
  %2730 = lshr i32 %2729, 1
  %2731 = and i32 %2730, 85
  %2732 = xor i32 %2731, %2729
  %2733 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2732)  ; Countbits(value)
  %2734 = shl i32 %2733, 2
  %2735 = add i32 %2734, %2704
  %2736 = add i32 %2735, %2725
  %2737 = icmp eq i32 %2724, 0
  br i1 %2737, label %2738, label %2700

; <label>:2738                                    ; preds = %2711, %2700
  %2739 = phi i32 [ %2704, %2700 ], [ %2716, %2711 ]
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = bitcast i32 %2741 to float
  br label %2743

; <label>:2743                                    ; preds = %2738, %2670, %2541, %2473
  %2744 = phi float [ %2742, %2738 ], [ %2681, %2670 ], [ %2603, %2541 ], [ 0.000000e+00, %2473 ]
  %2745 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2419
  store float %2744, float* %2745, align 4
  %2746 = fcmp fast ogt float %2744, 0.000000e+00
  %2747 = add i32 %2465, 20
  br i1 %2746, label %2748, label %2763, !dx.controlflow.hints !30

; <label>:2748                                    ; preds = %2743
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = extractvalue %dx.types.ResRet.i32 %2749, 1
  %2752 = bitcast i32 %2750 to float
  %2753 = bitcast i32 %2751 to float
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = extractvalue %dx.types.ResRet.i32 %2754, 1
  %2757 = bitcast i32 %2755 to float
  %2758 = bitcast i32 %2756 to float
  %2759 = fdiv fast float %2744, %2753
  %2760 = fsub fast float %2759, %2752
  %2761 = fadd fast float %2760, %2757
  %2762 = fmul fast float %2761, %2758
  br label %2763

; <label>:2763                                    ; preds = %2748, %2743
  %2764 = phi float [ %2762, %2748 ], [ %2744, %2743 ]
  %2765 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2419
  store float %2764, float* %2765, align 4
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.i32 %2766, 1
  %2769 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %2419
  %2770 = bitcast float* %2769 to i32*
  store i32 %2767, i32* %2770, align 4
  %2771 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %2419
  %2772 = bitcast float* %2771 to i32*
  store i32 %2768, i32* %2772, align 4
  br label %2773

; <label>:2773                                    ; preds = %2763, %2449
  %2774 = phi float [ %2764, %2763 ], [ %2458, %2449 ]
  %2775 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %2420
  %2776 = load float, float* %2775, align 4
  %2777 = fcmp fast ogt float %2774, %2776
  %2778 = select i1 %2777, i32 %2419, i32 %2420
  %2779 = add i32 %2419, 1
  br label %2780

; <label>:2780                                    ; preds = %2773, %2418
  %2781 = phi i32 [ %2419, %2418 ], [ %2779, %2773 ]
  %2782 = phi i32 [ %2420, %2418 ], [ %2778, %2773 ]
  %2783 = add nuw i32 %2421, 1
  %2784 = icmp eq i32 %2783, %2415
  br i1 %2784, label %2785, label %2418

; <label>:2785                                    ; preds = %2780
  br label %2786

; <label>:2786                                    ; preds = %2785, %2410
  %2787 = phi i32 [ %2411, %2410 ], [ %2781, %2785 ]
  %2788 = phi i32 [ %2412, %2410 ], [ %2782, %2785 ]
  %2789 = icmp eq i32 %2787, 1
  br i1 %2789, label %2828, label %2790, !dx.controlflow.hints !38

; <label>:2790                                    ; preds = %2786
  %2791 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 0
  %2792 = load float, float* %2791, align 4
  %2793 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 0
  %2794 = load float, float* %2793, align 4
  %2795 = fdiv fast float 1.000000e+00, %2794
  %2796 = fsub fast float %2792, %2795
  %2797 = icmp ugt i32 %2787, 1
  br i1 %2797, label %2798, label %2814

; <label>:2798                                    ; preds = %2790
  br label %2799

; <label>:2799                                    ; preds = %2799, %2798
  %2800 = phi float [ %2809, %2799 ], [ %2796, %2798 ]
  %2801 = phi float [ %2810, %2799 ], [ %2792, %2798 ]
  %2802 = phi i32 [ %2811, %2799 ], [ 1, %2798 ]
  %2803 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %2802
  %2804 = load float, float* %2803, align 4
  %2805 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %2802
  %2806 = load float, float* %2805, align 4
  %2807 = fdiv fast float 1.000000e+00, %2806
  %2808 = fsub fast float %2804, %2807
  %2809 = call float @dx.op.binary.f32(i32 36, float %2800, float %2808)  ; FMin(a,b)
  %2810 = call float @dx.op.binary.f32(i32 35, float %2801, float %2804)  ; FMax(a,b)
  %2811 = add nuw i32 %2802, 1
  %2812 = icmp eq i32 %2811, %2787
  br i1 %2812, label %2813, label %2799

; <label>:2813                                    ; preds = %2799
  br label %2814

; <label>:2814                                    ; preds = %2813, %2790
  %2815 = phi float [ %2796, %2790 ], [ %2809, %2813 ]
  %2816 = phi float [ %2792, %2790 ], [ %2810, %2813 ]
  %2817 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %2788
  %2818 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %2788
  %2819 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %2788
  %2820 = load float, float* %2817, align 4
  %2821 = load float, float* %2818, align 4
  %2822 = load float, float* %2819, align 4
  %2823 = fdiv fast float %2820, %2822
  %2824 = fsub fast float %2816, %2821
  %2825 = fadd fast float %2824, %2823
  %2826 = fsub fast float %2816, %2815
  %2827 = fdiv fast float %2825, %2826
  br label %2831

; <label>:2828                                    ; preds = %2786
  %2829 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %2830 = load float, float* %2829, align 4
  br label %2831

; <label>:2831                                    ; preds = %2828, %2814, %1997
  %2832 = phi float [ %2830, %2828 ], [ %2827, %2814 ], [ 0.000000e+00, %1997 ]
  %2833 = fmul fast float %2832, 2.000000e+00
  %2834 = fsub fast float 1.000000e+00, %2833
  %2835 = fmul fast float %2834, %2834
  %2836 = fmul fast float %2835, %2834
  %2837 = fmul fast float %2835, %2835
  %2838 = add i32 %2003, 1
  %2839 = uitofp i32 %2838 to float
  %2840 = fdiv fast float 1.000000e+00, %2839
  %2841 = fmul fast float %2832, 3.000000e+00
  %2842 = fsub fast float 1.500000e+00, %2841
  %2843 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2836, float %2842)  ; FMad(a,b,c)
  %2844 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2835, float 0.000000e+00)  ; FMad(a,b,c)
  %2845 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2837, float %2844)  ; FMad(a,b,c)
  %2846 = fmul fast float %2832, 0x3FFBB67AE0000000
  %2847 = fsub fast float 0x3FEBB67AE0000000, %2846
  %2848 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2836, float %2847)  ; FMad(a,b,c)
  %2849 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2835, float 0.000000e+00)  ; FMad(a,b,c)
  %2850 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2837, float %2849)  ; FMad(a,b,c)
  %2851 = fsub fast float 5.000000e-01, %1998
  %2852 = fadd fast float %2851, %2843
  %2853 = fsub fast float %2845, %1999
  %2854 = fsub fast float 5.000000e-01, %2000
  %2855 = fadd fast float %2854, %2848
  %2856 = fsub fast float %2850, %2001
  %2857 = fmul fast float %2852, %2840
  %2858 = fmul fast float %2853, %2840
  %2859 = fmul fast float %2855, %2840
  %2860 = fmul fast float %2856, %2840
  %2861 = fadd fast float %2857, %1998
  %2862 = fadd fast float %2858, %1999
  %2863 = fadd fast float %2859, %2000
  %2864 = fadd fast float %2860, %2001
  %2865 = add nuw i32 %2002, 1
  %2866 = icmp eq i32 %2865, %1947
  br i1 %2866, label %2867, label %1997, !llvm.loop !39

; <label>:2867                                    ; preds = %2831
  br label %2868

; <label>:2868                                    ; preds = %2867, %1962
  %2869 = phi float [ %1991, %1962 ], [ %2861, %2867 ]
  %2870 = phi float [ %1992, %1962 ], [ %2862, %2867 ]
  %2871 = phi float [ %1993, %1962 ], [ %2863, %2867 ]
  %2872 = phi float [ %1994, %1962 ], [ %2864, %2867 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 2, float %2869, float %2870, float %2871, float %2872, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2873

; <label>:2873                                    ; preds = %2868, %1956
  %2874 = phi i32 [ %1968, %2868 ], [ %1933, %1956 ]
  %2875 = shl i32 %50, 3
  %2876 = add i32 %47, 3
  %2877 = icmp ugt i32 %2876, %48
  br i1 %2877, label %3814, label %2878, !dx.controlflow.hints !20

; <label>:2878                                    ; preds = %2873
  %2879 = lshr i32 %2874, 16
  %2880 = and i32 %2879, 511
  %2881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.i32 %2881, 1
  %2883 = and i32 %2882, 31
  %2884 = lshr i32 %2875, %2883
  %2885 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %2884)  ; UMax(a,b)
  %2886 = mul i32 %2885, %2885
  %2887 = lshr i32 %2886, 8
  %2888 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %2887)  ; UMax(a,b)
  %2889 = mul i32 %2888, %2880
  %2890 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %20, i32 %21, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 33488896
  %2893 = icmp eq i32 %2892, 0
  %2894 = icmp ult i32 %2889, %2886
  %2895 = or i1 %2894, %2893
  %2896 = select i1 %2893, i32 0, i32 %2889
  br i1 %2895, label %2903, label %2897, !dx.controlflow.hints !21

; <label>:2897                                    ; preds = %2878
  %2898 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.ResRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.ResRet.f32 %2898, 2
  %2902 = extractvalue %dx.types.ResRet.f32 %2898, 3
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 3, float %2899, float %2900, float %2901, float %2902, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3814

; <label>:2903                                    ; preds = %2878
  %2904 = shl nuw nsw i32 %2880, 16
  %2905 = add nuw nsw i32 %2904, 65536
  %2906 = and i32 %2905, 33488896
  %2907 = select i1 %2893, i32 65536, i32 %2906
  %2908 = and i32 %2874, -33488897
  %2909 = or i32 %2907, %2908
  %2910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 323)  ; CBufferLoadLegacy(handle,regIndex)
  %2911 = extractvalue %dx.types.CBufRet.f32 %2910, 0
  %2912 = extractvalue %dx.types.CBufRet.f32 %2910, 1
  %2913 = fmul fast float %37, 1.250000e-01
  %2914 = fmul fast float %2913, %54
  %2915 = fmul fast float %2911, %2914
  %2916 = fmul fast float %2912, %2914
  %2917 = fsub fast float %42, %2915
  %2918 = fsub fast float %43, %2916
  %2919 = call float @dx.op.unary.f32(i32 22, float %2917)  ; Frc(value)
  %2920 = call float @dx.op.unary.f32(i32 22, float %2918)  ; Frc(value)
  %2921 = uitofp i32 %2875 to float
  %2922 = fmul fast float %2921, %45
  %2923 = fmul fast float %2919, 2.000000e+00
  %2924 = fmul fast float %2920, 2.000000e+00
  %2925 = fadd fast float %2923, -1.000000e+00
  %2926 = fadd fast float %2924, -1.000000e+00
  %2927 = fmul fast float %2925, %2922
  %2928 = fmul fast float %2926, %2922
  %2929 = fadd fast float %2927, %2911
  %2930 = fadd fast float %2928, %2912
  %2931 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %24, i32 %25, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.ResRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.ResRet.f32 %2931, 2
  %2935 = extractvalue %dx.types.ResRet.f32 %2931, 3
  %2936 = icmp eq i32 %2888, 0
  br i1 %2936, label %3809, label %2937

; <label>:2937                                    ; preds = %2903
  br label %2938

; <label>:2938                                    ; preds = %3772, %2937
  %2939 = phi float [ %3802, %3772 ], [ %2932, %2937 ]
  %2940 = phi float [ %3803, %3772 ], [ %2933, %2937 ]
  %2941 = phi float [ %3804, %3772 ], [ %2934, %2937 ]
  %2942 = phi float [ %3805, %3772 ], [ %2935, %2937 ]
  %2943 = phi i32 [ %3806, %3772 ], [ 0, %2937 ]
  %2944 = add i32 %2943, %2896
  %2945 = urem i32 %2944, %2885
  %2946 = uitofp i32 %2945 to float
  %2947 = udiv i32 %2944, %2885
  %2948 = uitofp i32 %2947 to float
  %2949 = fadd fast float %2946, 5.000000e-01
  %2950 = fadd fast float %2948, 5.000000e-01
  %2951 = uitofp i32 %2885 to float
  %2952 = fdiv fast float %2949, %2951
  %2953 = fdiv fast float %2950, %2951
  %2954 = fmul fast float %2922, %37
  %2955 = fmul fast float %2952, 2.000000e+00
  %2956 = fmul fast float %2953, 2.000000e+00
  %2957 = fadd fast float %2955, -1.000000e+00
  %2958 = fadd fast float %2956, -1.000000e+00
  %2959 = fmul fast float %2957, %2954
  %2960 = fmul fast float %2958, %2954
  %2961 = fadd fast float %2929, %2959
  %2962 = fadd fast float %2930, %2960
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 536870911
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, %2961
  %2968 = fmul fast float %2966, %2962
  %2969 = fptoui float %2967 to i32
  %2970 = fptoui float %2968 to i32
  %2971 = fcmp fast olt float %2961, 0.000000e+00
  %2972 = fcmp fast olt float %2962, 0.000000e+00
  %2973 = or i1 %2971, %2972
  %2974 = fcmp fast oge float %2961, 1.000000e+00
  %2975 = fcmp fast oge float %2962, 1.000000e+00
  %2976 = or i1 %2974, %2975
  %2977 = or i1 %2973, %2976
  br i1 %2977, label %3772, label %2978, !dx.controlflow.hints !22

; <label>:2978                                    ; preds = %2938
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 31
  %2982 = lshr i32 %2969, %2981
  %2983 = lshr i32 %2970, %2981
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, 31
  %2987 = shl i32 1, %2986
  %2988 = call i32 @dx.op.binary.i32(i32 40, i32 %2987, i32 4)  ; UMin(a,b)
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.i32 %2989, 1
  %2992 = icmp eq i32 %2988, 0
  br i1 %2992, label %3351, label %2993

; <label>:2993                                    ; preds = %2978
  br label %2994

; <label>:2994                                    ; preds = %3336, %2993
  %2995 = phi i32 [ %3342, %3336 ], [ 0, %2993 ]
  %2996 = phi i32 [ %3341, %3336 ], [ 0, %2993 ]
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 16
  %3000 = and i32 %2999, 31
  %3001 = shl i32 %2983, %3000
  %3002 = add i32 %3001, %2982
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 31
  %3006 = shl i32 %3002, %3005
  %3007 = add i32 %3006, %2995
  %3008 = shl i32 %3007, 2
  %3009 = add i32 %3008, 32
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = icmp slt i32 %3011, 0
  br i1 %3012, label %3023, label %3013, !dx.controlflow.hints !23

; <label>:3013                                    ; preds = %2994
  %3014 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2995
  %3015 = bitcast float* %3014 to i32*
  store i32 %3011, i32* %3015, align 4
  %3016 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2995
  %3017 = bitcast float* %3016 to i32*
  store i32 %3011, i32* %3017, align 4
  %3018 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %2995
  %3019 = bitcast float* %3018 to i32*
  store i32 %2990, i32* %3019, align 4
  %3020 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %2995
  %3021 = bitcast float* %3020 to i32*
  store i32 %2991, i32* %3021, align 4
  %3022 = bitcast i32 %3011 to float
  br label %3336

; <label>:3023                                    ; preds = %2994
  %3024 = shl i32 1, %2981
  %3025 = add i32 %3024, -1
  %3026 = and i32 %3025, %2969
  %3027 = and i32 %3025, %2970
  %3028 = and i32 %3011, 1073741823
  %3029 = add nuw nsw i32 %3028, 4
  %3030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3029, i32 undef)  ; BufferLoad(srv,index,wot)
  %3031 = extractvalue %dx.types.ResRet.i32 %3030, 0
  %3032 = lshr i32 %3031, 29
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3245, label %3034, !dx.controlflow.hints !24

; <label>:3034                                    ; preds = %3023
  %3035 = icmp eq i32 %3032, 1
  br i1 %3035, label %3167, label %3036, !dx.controlflow.hints !25

; <label>:3036                                    ; preds = %3034
  %3037 = icmp eq i32 %3032, 2
  br i1 %3037, label %3038, label %3306, !dx.controlflow.hints !26

; <label>:3038                                    ; preds = %3036
  %3039 = and i32 %3031, 536870911
  %3040 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3039)  ; FirstbitHi(value)
  %3041 = icmp eq i32 %3040, -1
  %3042 = add i32 %3040, 1
  %3043 = call i32 @dx.op.unary.i32(i32 30, i32 %3026)  ; Bfrev(value)
  %3044 = and i32 %3042, 31
  %3045 = select i1 %3041, i32 1, i32 %3044
  %3046 = lshr i32 %3043, %3045
  %3047 = call i32 @dx.op.unary.i32(i32 30, i32 %3027)  ; Bfrev(value)
  %3048 = lshr i32 %3047, %3045
  %3049 = and i32 %3046, 1
  %3050 = shl i32 %3048, 1
  %3051 = and i32 %3050, 2
  %3052 = or i32 %3051, %3049
  %3053 = mul nuw nsw i32 %3052, 10
  %3054 = add nuw nsw i32 %3028, 32
  %3055 = add nuw i32 %3054, %3053
  br label %3056

; <label>:3056                                    ; preds = %3067, %3038
  %3057 = phi i32 [ 3, %3038 ], [ %3088, %3067 ]
  %3058 = phi i32 [ %3046, %3038 ], [ %3068, %3067 ]
  %3059 = phi i32 [ %3048, %3038 ], [ %3069, %3067 ]
  %3060 = phi i32 [ %3055, %3038 ], [ %3102, %3067 ]
  %3061 = phi i32 [ 0, %3038 ], [ %3072, %3067 ]
  %3062 = phi i32 [ 0, %3038 ], [ %3063, %3067 ]
  %3063 = add nuw nsw i32 %3062, 1
  %3064 = icmp eq i32 %3057, 2
  %3065 = icmp ugt i32 %3063, 9
  %3066 = or i1 %3064, %3065
  br i1 %3066, label %3104, label %3067, !dx.controlflow.hints !27

; <label>:3067                                    ; preds = %3056
  %3068 = lshr i32 %3058, 1
  %3069 = lshr i32 %3059, 1
  %3070 = icmp eq i32 %3057, 3
  %3071 = add i32 %3060, 4
  %3072 = select i1 %3070, i32 %3071, i32 %3061
  %3073 = and i32 %3060, -4
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = extractvalue %dx.types.ResRet.i32 %3074, 1
  %3077 = and i32 %3060, 2
  %3078 = icmp ne i32 %3077, 0
  %3079 = lshr i32 %3075, 16
  %3080 = shl i32 %3076, 16
  %3081 = or i32 %3079, %3080
  %3082 = select i1 %3078, i32 %3081, i32 %3075
  %3083 = and i32 %3068, 1
  %3084 = and i32 %3059, 2
  %3085 = or i32 %3083, %3084
  %3086 = shl nuw nsw i32 %3085, 1
  %3087 = lshr i32 %3082, %3086
  %3088 = and i32 %3087, 3
  %3089 = lshr i32 %3082, 8
  %3090 = sub nsw i32 4, %3085
  %3091 = shl nuw nsw i32 %3090, 1
  %3092 = lshr i32 255, %3091
  %3093 = and i32 %3082, %3092
  %3094 = and i32 %3093, 85
  %3095 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3094)  ; Countbits(value)
  %3096 = shl i32 %3095, 2
  %3097 = and i32 %3093, 170
  %3098 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3097)  ; Countbits(value)
  %3099 = mul i32 %3098, 6
  %3100 = add i32 %3096, %3060
  %3101 = add i32 %3100, %3099
  %3102 = add i32 %3101, %3089
  %3103 = icmp eq i32 %3088, 0
  br i1 %3103, label %3104, label %3056

; <label>:3104                                    ; preds = %3067, %3056
  %3105 = phi i32 [ %3060, %3056 ], [ %3072, %3067 ]
  %3106 = and i32 %3105, -4
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = extractvalue %dx.types.ResRet.i32 %3107, 1
  %3110 = and i32 %3105, 2
  %3111 = icmp ne i32 %3110, 0
  %3112 = lshr i32 %3108, 16
  %3113 = shl i32 %3109, 16
  %3114 = or i32 %3112, %3113
  %3115 = select i1 %3111, i32 %3114, i32 %3108
  %3116 = add i32 %3105, 4
  %3117 = and i32 %3116, -4
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3116, 2
  %3121 = icmp ne i32 %3120, 0
  %3122 = lshr i32 %3119, 16
  %3123 = and i32 %3119, 65535
  %3124 = select i1 %3121, i32 %3122, i32 %3123
  %3125 = and i32 %3115, 65535
  %3126 = lshr i32 %3115, 16
  %3127 = and i32 %3126, 16383
  %3128 = lshr i32 %3115, 30
  %3129 = uitofp i32 %3127 to float
  %3130 = fmul fast float %3129, 0x3F10004000000000
  %3131 = fsub fast float 1.000000e+00, %3130
  %3132 = uitofp i32 %3125 to float
  %3133 = fmul fast float %3132, 0x3EF0001000000000
  %3134 = uitofp i32 %3124 to float
  %3135 = fmul fast float %3134, 0x3F10001000000000
  %3136 = fadd fast float %3135, -2.000000e+00
  %3137 = fmul fast float %3133, %3133
  %3138 = fsub fast float 1.000000e+00, %3137
  %3139 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3140 = and i32 %3128, 1
  %3141 = icmp ne i32 %3140, 0
  %3142 = fsub fast float -0.000000e+00, %3130
  %3143 = select i1 %3141, float %3142, float %3130
  %3144 = and i32 %3128, 2
  %3145 = icmp ne i32 %3144, 0
  %3146 = fsub fast float -0.000000e+00, %3131
  %3147 = select i1 %3145, float %3146, float %3131
  %3148 = call float @dx.op.dot2.f32(i32 54, float %3143, float %3147, float %3143, float %3147)  ; Dot2(ax,ay,bx,by)
  %3149 = call float @dx.op.unary.f32(i32 25, float %3148)  ; Rsqrt(value)
  %3150 = fmul fast float %3149, %3139
  %3151 = fmul fast float %3150, %3143
  %3152 = fmul fast float %3150, %3147
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = lshr i32 %3154, 16
  %3156 = and i32 %3155, 31
  %3157 = shl i32 1, %3156
  %3158 = uitofp i32 %3157 to float
  %3159 = fmul fast float %3158, %2961
  %3160 = fmul fast float %3158, %2962
  %3161 = call float @dx.op.unary.f32(i32 22, float %3159)  ; Frc(value)
  %3162 = call float @dx.op.unary.f32(i32 22, float %3160)  ; Frc(value)
  %3163 = call float @dx.op.dot2.f32(i32 54, float %3151, float %3152, float %3161, float %3162)  ; Dot2(ax,ay,bx,by)
  %3164 = fsub fast float %3136, %3163
  %3165 = fdiv fast float %3164, %3133
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  br label %3306

; <label>:3167                                    ; preds = %3034
  %3168 = and i32 %3031, 536870911
  %3169 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3168)  ; FirstbitHi(value)
  %3170 = icmp eq i32 %3169, -1
  %3171 = add i32 %3169, 1
  %3172 = call i32 @dx.op.unary.i32(i32 30, i32 %3026)  ; Bfrev(value)
  %3173 = and i32 %3171, 31
  %3174 = select i1 %3170, i32 1, i32 %3173
  %3175 = lshr i32 %3172, %3174
  %3176 = call i32 @dx.op.unary.i32(i32 30, i32 %3027)  ; Bfrev(value)
  %3177 = lshr i32 %3176, %3174
  %3178 = and i32 %3175, 1
  %3179 = shl i32 %3177, 1
  %3180 = and i32 %3179, 2
  %3181 = or i32 %3180, %3178
  %3182 = shl nuw nsw i32 %3181, 3
  %3183 = or i32 %3182, 32
  %3184 = add nuw nsw i32 %3183, %3028
  br label %3185

; <label>:3185                                    ; preds = %3196, %3167
  %3186 = phi i32 [ 3, %3167 ], [ %3217, %3196 ]
  %3187 = phi i32 [ %3175, %3167 ], [ %3197, %3196 ]
  %3188 = phi i32 [ %3177, %3167 ], [ %3198, %3196 ]
  %3189 = phi i32 [ %3184, %3167 ], [ %3231, %3196 ]
  %3190 = phi i32 [ 0, %3167 ], [ %3201, %3196 ]
  %3191 = phi i32 [ 0, %3167 ], [ %3192, %3196 ]
  %3192 = add nuw nsw i32 %3191, 1
  %3193 = icmp eq i32 %3186, 2
  %3194 = icmp ugt i32 %3192, 9
  %3195 = or i1 %3193, %3194
  br i1 %3195, label %3233, label %3196, !dx.controlflow.hints !28

; <label>:3196                                    ; preds = %3185
  %3197 = lshr i32 %3187, 1
  %3198 = lshr i32 %3188, 1
  %3199 = icmp eq i32 %3186, 3
  %3200 = add i32 %3189, 4
  %3201 = select i1 %3199, i32 %3200, i32 %3190
  %3202 = and i32 %3189, -4
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = extractvalue %dx.types.ResRet.i32 %3203, 1
  %3206 = and i32 %3189, 2
  %3207 = icmp ne i32 %3206, 0
  %3208 = lshr i32 %3204, 16
  %3209 = shl i32 %3205, 16
  %3210 = or i32 %3208, %3209
  %3211 = select i1 %3207, i32 %3210, i32 %3204
  %3212 = and i32 %3197, 1
  %3213 = and i32 %3188, 2
  %3214 = or i32 %3212, %3213
  %3215 = shl nuw nsw i32 %3214, 1
  %3216 = lshr i32 %3211, %3215
  %3217 = and i32 %3216, 3
  %3218 = lshr i32 %3211, 8
  %3219 = sub nsw i32 4, %3214
  %3220 = shl nuw nsw i32 %3219, 1
  %3221 = lshr i32 255, %3220
  %3222 = and i32 %3211, %3221
  %3223 = and i32 %3222, 85
  %3224 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3223)  ; Countbits(value)
  %3225 = shl i32 %3224, 2
  %3226 = and i32 %3222, 170
  %3227 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3226)  ; Countbits(value)
  %3228 = shl i32 %3227, 1
  %3229 = add i32 %3225, %3189
  %3230 = add i32 %3229, %3228
  %3231 = add i32 %3230, %3218
  %3232 = icmp eq i32 %3217, 0
  br i1 %3232, label %3233, label %3185

; <label>:3233                                    ; preds = %3196, %3185
  %3234 = phi i32 [ %3189, %3185 ], [ %3201, %3196 ]
  %3235 = and i32 %3234, -4
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3234, 2
  %3239 = icmp ne i32 %3238, 0
  %3240 = lshr i32 %3237, 16
  %3241 = and i32 %3237, 65535
  %3242 = select i1 %3239, i32 %3240, i32 %3241
  %3243 = uitofp i32 %3242 to float
  %3244 = fmul fast float %3243, 0x3EF0001000000000
  br label %3306

; <label>:3245                                    ; preds = %3023
  %3246 = and i32 %3031, 536870911
  %3247 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3246)  ; FirstbitHi(value)
  %3248 = icmp eq i32 %3247, -1
  %3249 = add i32 %3247, 1
  %3250 = call i32 @dx.op.unary.i32(i32 30, i32 %3026)  ; Bfrev(value)
  %3251 = and i32 %3249, 31
  %3252 = select i1 %3248, i32 1, i32 %3251
  %3253 = lshr i32 %3250, %3252
  %3254 = call i32 @dx.op.unary.i32(i32 30, i32 %3027)  ; Bfrev(value)
  %3255 = lshr i32 %3254, %3252
  %3256 = and i32 %3253, 1
  %3257 = shl i32 %3255, 1
  %3258 = and i32 %3257, 2
  %3259 = or i32 %3258, %3256
  %3260 = mul nuw nsw i32 %3259, 12
  %3261 = add nuw nsw i32 %3028, 32
  %3262 = add nuw i32 %3261, %3260
  br label %3263

; <label>:3263                                    ; preds = %3274, %3245
  %3264 = phi i32 [ 2, %3245 ], [ %3287, %3274 ]
  %3265 = phi i32 [ %3253, %3245 ], [ %3275, %3274 ]
  %3266 = phi i32 [ %3255, %3245 ], [ %3276, %3274 ]
  %3267 = phi i32 [ %3262, %3245 ], [ %3299, %3274 ]
  %3268 = phi i32 [ 0, %3245 ], [ %3279, %3274 ]
  %3269 = phi i32 [ 0, %3245 ], [ %3270, %3274 ]
  %3270 = add nuw nsw i32 %3269, 1
  %3271 = icmp eq i32 %3264, 3
  %3272 = icmp ugt i32 %3270, 9
  %3273 = or i1 %3271, %3272
  br i1 %3273, label %3301, label %3274, !dx.controlflow.hints !29

; <label>:3274                                    ; preds = %3263
  %3275 = lshr i32 %3265, 1
  %3276 = lshr i32 %3266, 1
  %3277 = icmp eq i32 %3264, 2
  %3278 = add i32 %3267, 4
  %3279 = select i1 %3277, i32 %3278, i32 %3268
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3275, 1
  %3283 = and i32 %3266, 2
  %3284 = or i32 %3282, %3283
  %3285 = shl nuw nsw i32 %3284, 1
  %3286 = lshr i32 %3281, %3285
  %3287 = and i32 %3286, 3
  %3288 = lshr i32 %3281, 8
  %3289 = sub nsw i32 4, %3284
  %3290 = shl nuw nsw i32 %3289, 1
  %3291 = lshr i32 255, %3290
  %3292 = and i32 %3281, %3291
  %3293 = lshr i32 %3292, 1
  %3294 = and i32 %3293, 85
  %3295 = xor i32 %3294, %3292
  %3296 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3295)  ; Countbits(value)
  %3297 = shl i32 %3296, 2
  %3298 = add i32 %3297, %3267
  %3299 = add i32 %3298, %3288
  %3300 = icmp eq i32 %3287, 0
  br i1 %3300, label %3301, label %3263

; <label>:3301                                    ; preds = %3274, %3263
  %3302 = phi i32 [ %3267, %3263 ], [ %3279, %3274 ]
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = bitcast i32 %3304 to float
  br label %3306

; <label>:3306                                    ; preds = %3301, %3233, %3104, %3036
  %3307 = phi float [ %3305, %3301 ], [ %3244, %3233 ], [ %3166, %3104 ], [ 0.000000e+00, %3036 ]
  %3308 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2995
  store float %3307, float* %3308, align 4
  %3309 = fcmp fast ogt float %3307, 0.000000e+00
  %3310 = add nuw nsw i32 %3028, 20
  br i1 %3309, label %3311, label %3326, !dx.controlflow.hints !30

; <label>:3311                                    ; preds = %3306
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.i32 %3312, 1
  %3315 = bitcast i32 %3313 to float
  %3316 = bitcast i32 %3314 to float
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = extractvalue %dx.types.ResRet.i32 %3317, 1
  %3320 = bitcast i32 %3318 to float
  %3321 = bitcast i32 %3319 to float
  %3322 = fdiv fast float %3307, %3316
  %3323 = fsub fast float %3322, %3315
  %3324 = fadd fast float %3323, %3320
  %3325 = fmul fast float %3324, %3321
  br label %3326

; <label>:3326                                    ; preds = %3311, %3306
  %3327 = phi float [ %3325, %3311 ], [ %3307, %3306 ]
  %3328 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2995
  store float %3327, float* %3328, align 4
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = extractvalue %dx.types.ResRet.i32 %3329, 1
  %3332 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %2995
  %3333 = bitcast float* %3332 to i32*
  store i32 %3330, i32* %3333, align 4
  %3334 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %2995
  %3335 = bitcast float* %3334 to i32*
  store i32 %3331, i32* %3335, align 4
  br label %3336

; <label>:3336                                    ; preds = %3326, %3013
  %3337 = phi float [ %3327, %3326 ], [ %3022, %3013 ]
  %3338 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %2996
  %3339 = load float, float* %3338, align 4
  %3340 = fcmp fast ogt float %3337, %3339
  %3341 = select i1 %3340, i32 %2995, i32 %2996
  %3342 = add nuw i32 %2995, 1
  %3343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.i32 %3343, 2
  %3345 = icmp eq i32 %3344, 0
  %3346 = icmp ugt i32 %3011, -1073741825
  %3347 = and i1 %3346, %3345
  %3348 = icmp ult i32 %3342, %2988
  %3349 = and i1 %3347, %3348
  br i1 %3349, label %2994, label %3350, !dx.controlflow.hints !31

; <label>:3350                                    ; preds = %3336
  br label %3351

; <label>:3351                                    ; preds = %3350, %2978
  %3352 = phi i32 [ 0, %2978 ], [ %3342, %3350 ]
  %3353 = phi i32 [ 0, %2978 ], [ %3341, %3350 ]
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3356 = fptoui float %3355 to i32
  %3357 = icmp eq i32 %3356, 0
  br i1 %3357, label %3727, label %3358

; <label>:3358                                    ; preds = %3351
  br label %3359

; <label>:3359                                    ; preds = %3721, %3358
  %3360 = phi i32 [ %3722, %3721 ], [ %3352, %3358 ]
  %3361 = phi i32 [ %3723, %3721 ], [ %3353, %3358 ]
  %3362 = phi i32 [ %3724, %3721 ], [ 0, %3358 ]
  %3363 = lshr i32 %3362, 2
  %3364 = and i32 %3362, 3
  %3365 = add nuw nsw i32 %3363, 83
  %3366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 %3365)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.i32 %3366, 0
  %3368 = extractvalue %dx.types.CBufRet.i32 %3366, 1
  %3369 = extractvalue %dx.types.CBufRet.i32 %3366, 2
  %3370 = extractvalue %dx.types.CBufRet.i32 %3366, 3
  %3371 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 0
  store i32 %3367, i32* %3371, align 4
  %3372 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 1
  store i32 %3368, i32* %3372, align 4
  %3373 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 2
  store i32 %3369, i32* %3373, align 4
  %3374 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 3
  store i32 %3370, i32* %3374, align 4
  %3375 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i32 0, i32 %3364
  %3376 = load i32, i32* %3375, align 4, !tbaa !32
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = lshr i32 %3378, 16
  %3380 = and i32 %3379, 31
  %3381 = shl i32 %2983, %3380
  %3382 = add i32 %3381, %2982
  %3383 = shl i32 %3382, 2
  %3384 = add i32 %3383, %3376
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = icmp eq i32 %3386, 0
  br i1 %3387, label %3721, label %3388, !dx.controlflow.hints !36

; <label>:3388                                    ; preds = %3359
  %3389 = icmp slt i32 %3386, 0
  br i1 %3389, label %3400, label %3390, !dx.controlflow.hints !37

; <label>:3390                                    ; preds = %3388
  %3391 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %3360
  %3392 = bitcast float* %3391 to i32*
  store i32 %3386, i32* %3392, align 4
  %3393 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %3360
  %3394 = bitcast float* %3393 to i32*
  store i32 %3386, i32* %3394, align 4
  %3395 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %3360
  %3396 = bitcast float* %3395 to i32*
  store i32 %2990, i32* %3396, align 4
  %3397 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %3360
  %3398 = bitcast float* %3397 to i32*
  store i32 %2991, i32* %3398, align 4
  %3399 = bitcast i32 %3386 to float
  br label %3714

; <label>:3400                                    ; preds = %3388
  %3401 = shl i32 1, %2981
  %3402 = add i32 %3401, -1
  %3403 = and i32 %3402, %2969
  %3404 = and i32 %3402, %2970
  %3405 = and i32 %3386, 1073741823
  %3406 = add i32 %3405, %3376
  %3407 = add i32 %3406, 4
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = lshr i32 %3409, 29
  %3411 = icmp eq i32 %3410, 0
  br i1 %3411, label %3623, label %3412, !dx.controlflow.hints !24

; <label>:3412                                    ; preds = %3400
  %3413 = icmp eq i32 %3410, 1
  br i1 %3413, label %3545, label %3414, !dx.controlflow.hints !25

; <label>:3414                                    ; preds = %3412
  %3415 = icmp eq i32 %3410, 2
  br i1 %3415, label %3416, label %3684, !dx.controlflow.hints !26

; <label>:3416                                    ; preds = %3414
  %3417 = and i32 %3409, 536870911
  %3418 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3417)  ; FirstbitHi(value)
  %3419 = icmp eq i32 %3418, -1
  %3420 = add i32 %3418, 1
  %3421 = call i32 @dx.op.unary.i32(i32 30, i32 %3403)  ; Bfrev(value)
  %3422 = and i32 %3420, 31
  %3423 = select i1 %3419, i32 1, i32 %3422
  %3424 = lshr i32 %3421, %3423
  %3425 = call i32 @dx.op.unary.i32(i32 30, i32 %3404)  ; Bfrev(value)
  %3426 = lshr i32 %3425, %3423
  %3427 = and i32 %3424, 1
  %3428 = shl i32 %3426, 1
  %3429 = and i32 %3428, 2
  %3430 = or i32 %3429, %3427
  %3431 = mul nuw nsw i32 %3430, 10
  %3432 = add i32 %3406, 32
  %3433 = add i32 %3432, %3431
  br label %3434

; <label>:3434                                    ; preds = %3445, %3416
  %3435 = phi i32 [ 3, %3416 ], [ %3466, %3445 ]
  %3436 = phi i32 [ %3424, %3416 ], [ %3446, %3445 ]
  %3437 = phi i32 [ %3426, %3416 ], [ %3447, %3445 ]
  %3438 = phi i32 [ %3433, %3416 ], [ %3480, %3445 ]
  %3439 = phi i32 [ 0, %3416 ], [ %3450, %3445 ]
  %3440 = phi i32 [ 0, %3416 ], [ %3441, %3445 ]
  %3441 = add nuw nsw i32 %3440, 1
  %3442 = icmp eq i32 %3435, 2
  %3443 = icmp ugt i32 %3441, 9
  %3444 = or i1 %3442, %3443
  br i1 %3444, label %3482, label %3445, !dx.controlflow.hints !27

; <label>:3445                                    ; preds = %3434
  %3446 = lshr i32 %3436, 1
  %3447 = lshr i32 %3437, 1
  %3448 = icmp eq i32 %3435, 3
  %3449 = add i32 %3438, 4
  %3450 = select i1 %3448, i32 %3449, i32 %3439
  %3451 = and i32 %3438, -4
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = extractvalue %dx.types.ResRet.i32 %3452, 1
  %3455 = and i32 %3438, 2
  %3456 = icmp ne i32 %3455, 0
  %3457 = lshr i32 %3453, 16
  %3458 = shl i32 %3454, 16
  %3459 = or i32 %3457, %3458
  %3460 = select i1 %3456, i32 %3459, i32 %3453
  %3461 = and i32 %3446, 1
  %3462 = and i32 %3437, 2
  %3463 = or i32 %3461, %3462
  %3464 = shl nuw nsw i32 %3463, 1
  %3465 = lshr i32 %3460, %3464
  %3466 = and i32 %3465, 3
  %3467 = lshr i32 %3460, 8
  %3468 = sub nsw i32 4, %3463
  %3469 = shl nuw nsw i32 %3468, 1
  %3470 = lshr i32 255, %3469
  %3471 = and i32 %3460, %3470
  %3472 = and i32 %3471, 85
  %3473 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3472)  ; Countbits(value)
  %3474 = shl i32 %3473, 2
  %3475 = and i32 %3471, 170
  %3476 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3475)  ; Countbits(value)
  %3477 = mul i32 %3476, 6
  %3478 = add i32 %3474, %3438
  %3479 = add i32 %3478, %3477
  %3480 = add i32 %3479, %3467
  %3481 = icmp eq i32 %3466, 0
  br i1 %3481, label %3482, label %3434

; <label>:3482                                    ; preds = %3445, %3434
  %3483 = phi i32 [ %3438, %3434 ], [ %3450, %3445 ]
  %3484 = and i32 %3483, -4
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.i32 %3485, 1
  %3488 = and i32 %3483, 2
  %3489 = icmp ne i32 %3488, 0
  %3490 = lshr i32 %3486, 16
  %3491 = shl i32 %3487, 16
  %3492 = or i32 %3490, %3491
  %3493 = select i1 %3489, i32 %3492, i32 %3486
  %3494 = add i32 %3483, 4
  %3495 = and i32 %3494, -4
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3494, 2
  %3499 = icmp ne i32 %3498, 0
  %3500 = lshr i32 %3497, 16
  %3501 = and i32 %3497, 65535
  %3502 = select i1 %3499, i32 %3500, i32 %3501
  %3503 = and i32 %3493, 65535
  %3504 = lshr i32 %3493, 16
  %3505 = and i32 %3504, 16383
  %3506 = lshr i32 %3493, 30
  %3507 = uitofp i32 %3505 to float
  %3508 = fmul fast float %3507, 0x3F10004000000000
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = uitofp i32 %3503 to float
  %3511 = fmul fast float %3510, 0x3EF0001000000000
  %3512 = uitofp i32 %3502 to float
  %3513 = fmul fast float %3512, 0x3F10001000000000
  %3514 = fadd fast float %3513, -2.000000e+00
  %3515 = fmul fast float %3511, %3511
  %3516 = fsub fast float 1.000000e+00, %3515
  %3517 = call float @dx.op.unary.f32(i32 24, float %3516)  ; Sqrt(value)
  %3518 = and i32 %3506, 1
  %3519 = icmp ne i32 %3518, 0
  %3520 = fsub fast float -0.000000e+00, %3508
  %3521 = select i1 %3519, float %3520, float %3508
  %3522 = and i32 %3506, 2
  %3523 = icmp ne i32 %3522, 0
  %3524 = fsub fast float -0.000000e+00, %3509
  %3525 = select i1 %3523, float %3524, float %3509
  %3526 = call float @dx.op.dot2.f32(i32 54, float %3521, float %3525, float %3521, float %3525)  ; Dot2(ax,ay,bx,by)
  %3527 = call float @dx.op.unary.f32(i32 25, float %3526)  ; Rsqrt(value)
  %3528 = fmul fast float %3527, %3517
  %3529 = fmul fast float %3528, %3521
  %3530 = fmul fast float %3528, %3525
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = lshr i32 %3532, 16
  %3534 = and i32 %3533, 31
  %3535 = shl i32 1, %3534
  %3536 = uitofp i32 %3535 to float
  %3537 = fmul fast float %3536, %2961
  %3538 = fmul fast float %3536, %2962
  %3539 = call float @dx.op.unary.f32(i32 22, float %3537)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3538)  ; Frc(value)
  %3541 = call float @dx.op.dot2.f32(i32 54, float %3529, float %3530, float %3539, float %3540)  ; Dot2(ax,ay,bx,by)
  %3542 = fsub fast float %3514, %3541
  %3543 = fdiv fast float %3542, %3511
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  br label %3684

; <label>:3545                                    ; preds = %3412
  %3546 = and i32 %3409, 536870911
  %3547 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3546)  ; FirstbitHi(value)
  %3548 = icmp eq i32 %3547, -1
  %3549 = add i32 %3547, 1
  %3550 = call i32 @dx.op.unary.i32(i32 30, i32 %3403)  ; Bfrev(value)
  %3551 = and i32 %3549, 31
  %3552 = select i1 %3548, i32 1, i32 %3551
  %3553 = lshr i32 %3550, %3552
  %3554 = call i32 @dx.op.unary.i32(i32 30, i32 %3404)  ; Bfrev(value)
  %3555 = lshr i32 %3554, %3552
  %3556 = and i32 %3553, 1
  %3557 = shl i32 %3555, 1
  %3558 = and i32 %3557, 2
  %3559 = or i32 %3558, %3556
  %3560 = shl nuw nsw i32 %3559, 3
  %3561 = or i32 %3560, 32
  %3562 = add i32 %3561, %3406
  br label %3563

; <label>:3563                                    ; preds = %3574, %3545
  %3564 = phi i32 [ 3, %3545 ], [ %3595, %3574 ]
  %3565 = phi i32 [ %3553, %3545 ], [ %3575, %3574 ]
  %3566 = phi i32 [ %3555, %3545 ], [ %3576, %3574 ]
  %3567 = phi i32 [ %3562, %3545 ], [ %3609, %3574 ]
  %3568 = phi i32 [ 0, %3545 ], [ %3579, %3574 ]
  %3569 = phi i32 [ 0, %3545 ], [ %3570, %3574 ]
  %3570 = add nuw nsw i32 %3569, 1
  %3571 = icmp eq i32 %3564, 2
  %3572 = icmp ugt i32 %3570, 9
  %3573 = or i1 %3571, %3572
  br i1 %3573, label %3611, label %3574, !dx.controlflow.hints !28

; <label>:3574                                    ; preds = %3563
  %3575 = lshr i32 %3565, 1
  %3576 = lshr i32 %3566, 1
  %3577 = icmp eq i32 %3564, 3
  %3578 = add i32 %3567, 4
  %3579 = select i1 %3577, i32 %3578, i32 %3568
  %3580 = and i32 %3567, -4
  %3581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.i32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.i32 %3581, 1
  %3584 = and i32 %3567, 2
  %3585 = icmp ne i32 %3584, 0
  %3586 = lshr i32 %3582, 16
  %3587 = shl i32 %3583, 16
  %3588 = or i32 %3586, %3587
  %3589 = select i1 %3585, i32 %3588, i32 %3582
  %3590 = and i32 %3575, 1
  %3591 = and i32 %3566, 2
  %3592 = or i32 %3590, %3591
  %3593 = shl nuw nsw i32 %3592, 1
  %3594 = lshr i32 %3589, %3593
  %3595 = and i32 %3594, 3
  %3596 = lshr i32 %3589, 8
  %3597 = sub nsw i32 4, %3592
  %3598 = shl nuw nsw i32 %3597, 1
  %3599 = lshr i32 255, %3598
  %3600 = and i32 %3589, %3599
  %3601 = and i32 %3600, 85
  %3602 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3601)  ; Countbits(value)
  %3603 = shl i32 %3602, 2
  %3604 = and i32 %3600, 170
  %3605 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3604)  ; Countbits(value)
  %3606 = shl i32 %3605, 1
  %3607 = add i32 %3603, %3567
  %3608 = add i32 %3607, %3606
  %3609 = add i32 %3608, %3596
  %3610 = icmp eq i32 %3595, 0
  br i1 %3610, label %3611, label %3563

; <label>:3611                                    ; preds = %3574, %3563
  %3612 = phi i32 [ %3567, %3563 ], [ %3579, %3574 ]
  %3613 = and i32 %3612, -4
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = and i32 %3612, 2
  %3617 = icmp ne i32 %3616, 0
  %3618 = lshr i32 %3615, 16
  %3619 = and i32 %3615, 65535
  %3620 = select i1 %3617, i32 %3618, i32 %3619
  %3621 = uitofp i32 %3620 to float
  %3622 = fmul fast float %3621, 0x3EF0001000000000
  br label %3684

; <label>:3623                                    ; preds = %3400
  %3624 = and i32 %3409, 536870911
  %3625 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3624)  ; FirstbitHi(value)
  %3626 = icmp eq i32 %3625, -1
  %3627 = add i32 %3625, 1
  %3628 = call i32 @dx.op.unary.i32(i32 30, i32 %3403)  ; Bfrev(value)
  %3629 = and i32 %3627, 31
  %3630 = select i1 %3626, i32 1, i32 %3629
  %3631 = lshr i32 %3628, %3630
  %3632 = call i32 @dx.op.unary.i32(i32 30, i32 %3404)  ; Bfrev(value)
  %3633 = lshr i32 %3632, %3630
  %3634 = and i32 %3631, 1
  %3635 = shl i32 %3633, 1
  %3636 = and i32 %3635, 2
  %3637 = or i32 %3636, %3634
  %3638 = mul nuw nsw i32 %3637, 12
  %3639 = add i32 %3406, 32
  %3640 = add i32 %3639, %3638
  br label %3641

; <label>:3641                                    ; preds = %3652, %3623
  %3642 = phi i32 [ 2, %3623 ], [ %3665, %3652 ]
  %3643 = phi i32 [ %3631, %3623 ], [ %3653, %3652 ]
  %3644 = phi i32 [ %3633, %3623 ], [ %3654, %3652 ]
  %3645 = phi i32 [ %3640, %3623 ], [ %3677, %3652 ]
  %3646 = phi i32 [ 0, %3623 ], [ %3657, %3652 ]
  %3647 = phi i32 [ 0, %3623 ], [ %3648, %3652 ]
  %3648 = add nuw nsw i32 %3647, 1
  %3649 = icmp eq i32 %3642, 3
  %3650 = icmp ugt i32 %3648, 9
  %3651 = or i1 %3649, %3650
  br i1 %3651, label %3679, label %3652, !dx.controlflow.hints !29

; <label>:3652                                    ; preds = %3641
  %3653 = lshr i32 %3643, 1
  %3654 = lshr i32 %3644, 1
  %3655 = icmp eq i32 %3642, 2
  %3656 = add i32 %3645, 4
  %3657 = select i1 %3655, i32 %3656, i32 %3646
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = and i32 %3653, 1
  %3661 = and i32 %3644, 2
  %3662 = or i32 %3660, %3661
  %3663 = shl nuw nsw i32 %3662, 1
  %3664 = lshr i32 %3659, %3663
  %3665 = and i32 %3664, 3
  %3666 = lshr i32 %3659, 8
  %3667 = sub nsw i32 4, %3662
  %3668 = shl nuw nsw i32 %3667, 1
  %3669 = lshr i32 255, %3668
  %3670 = and i32 %3659, %3669
  %3671 = lshr i32 %3670, 1
  %3672 = and i32 %3671, 85
  %3673 = xor i32 %3672, %3670
  %3674 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3673)  ; Countbits(value)
  %3675 = shl i32 %3674, 2
  %3676 = add i32 %3675, %3645
  %3677 = add i32 %3676, %3666
  %3678 = icmp eq i32 %3665, 0
  br i1 %3678, label %3679, label %3641

; <label>:3679                                    ; preds = %3652, %3641
  %3680 = phi i32 [ %3645, %3641 ], [ %3657, %3652 ]
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = bitcast i32 %3682 to float
  br label %3684

; <label>:3684                                    ; preds = %3679, %3611, %3482, %3414
  %3685 = phi float [ %3683, %3679 ], [ %3622, %3611 ], [ %3544, %3482 ], [ 0.000000e+00, %3414 ]
  %3686 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %3360
  store float %3685, float* %3686, align 4
  %3687 = fcmp fast ogt float %3685, 0.000000e+00
  %3688 = add i32 %3406, 20
  br i1 %3687, label %3689, label %3704, !dx.controlflow.hints !30

; <label>:3689                                    ; preds = %3684
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.i32 %3690, 1
  %3693 = bitcast i32 %3691 to float
  %3694 = bitcast i32 %3692 to float
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = extractvalue %dx.types.ResRet.i32 %3695, 1
  %3698 = bitcast i32 %3696 to float
  %3699 = bitcast i32 %3697 to float
  %3700 = fdiv fast float %3685, %3694
  %3701 = fsub fast float %3700, %3693
  %3702 = fadd fast float %3701, %3698
  %3703 = fmul fast float %3702, %3699
  br label %3704

; <label>:3704                                    ; preds = %3689, %3684
  %3705 = phi float [ %3703, %3689 ], [ %3685, %3684 ]
  %3706 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %3360
  store float %3705, float* %3706, align 4
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = extractvalue %dx.types.ResRet.i32 %3707, 1
  %3710 = getelementptr inbounds [12 x float], [12 x float]* %15, i32 0, i32 %3360
  %3711 = bitcast float* %3710 to i32*
  store i32 %3708, i32* %3711, align 4
  %3712 = getelementptr inbounds [12 x float], [12 x float]* %16, i32 0, i32 %3360
  %3713 = bitcast float* %3712 to i32*
  store i32 %3709, i32* %3713, align 4
  br label %3714

; <label>:3714                                    ; preds = %3704, %3390
  %3715 = phi float [ %3705, %3704 ], [ %3399, %3390 ]
  %3716 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %3361
  %3717 = load float, float* %3716, align 4
  %3718 = fcmp fast ogt float %3715, %3717
  %3719 = select i1 %3718, i32 %3360, i32 %3361
  %3720 = add i32 %3360, 1
  br label %3721

; <label>:3721                                    ; preds = %3714, %3359
  %3722 = phi i32 [ %3360, %3359 ], [ %3720, %3714 ]
  %3723 = phi i32 [ %3361, %3359 ], [ %3719, %3714 ]
  %3724 = add nuw i32 %3362, 1
  %3725 = icmp eq i32 %3724, %3356
  br i1 %3725, label %3726, label %3359

; <label>:3726                                    ; preds = %3721
  br label %3727

; <label>:3727                                    ; preds = %3726, %3351
  %3728 = phi i32 [ %3352, %3351 ], [ %3722, %3726 ]
  %3729 = phi i32 [ %3353, %3351 ], [ %3723, %3726 ]
  %3730 = icmp eq i32 %3728, 1
  br i1 %3730, label %3769, label %3731, !dx.controlflow.hints !38

; <label>:3731                                    ; preds = %3727
  %3732 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 0
  %3733 = load float, float* %3732, align 4
  %3734 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 0
  %3735 = load float, float* %3734, align 4
  %3736 = fdiv fast float 1.000000e+00, %3735
  %3737 = fsub fast float %3733, %3736
  %3738 = icmp ugt i32 %3728, 1
  br i1 %3738, label %3739, label %3755

; <label>:3739                                    ; preds = %3731
  br label %3740

; <label>:3740                                    ; preds = %3740, %3739
  %3741 = phi float [ %3750, %3740 ], [ %3737, %3739 ]
  %3742 = phi float [ %3751, %3740 ], [ %3733, %3739 ]
  %3743 = phi i32 [ %3752, %3740 ], [ 1, %3739 ]
  %3744 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %3743
  %3745 = load float, float* %3744, align 4
  %3746 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %3743
  %3747 = load float, float* %3746, align 4
  %3748 = fdiv fast float 1.000000e+00, %3747
  %3749 = fsub fast float %3745, %3748
  %3750 = call float @dx.op.binary.f32(i32 36, float %3741, float %3749)  ; FMin(a,b)
  %3751 = call float @dx.op.binary.f32(i32 35, float %3742, float %3745)  ; FMax(a,b)
  %3752 = add nuw i32 %3743, 1
  %3753 = icmp eq i32 %3752, %3728
  br i1 %3753, label %3754, label %3740

; <label>:3754                                    ; preds = %3740
  br label %3755

; <label>:3755                                    ; preds = %3754, %3731
  %3756 = phi float [ %3737, %3731 ], [ %3750, %3754 ]
  %3757 = phi float [ %3733, %3731 ], [ %3751, %3754 ]
  %3758 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %3729
  %3759 = getelementptr [12 x float], [12 x float]* %15, i32 0, i32 %3729
  %3760 = getelementptr [12 x float], [12 x float]* %16, i32 0, i32 %3729
  %3761 = load float, float* %3758, align 4
  %3762 = load float, float* %3759, align 4
  %3763 = load float, float* %3760, align 4
  %3764 = fdiv fast float %3761, %3763
  %3765 = fsub fast float %3757, %3762
  %3766 = fadd fast float %3765, %3764
  %3767 = fsub fast float %3757, %3756
  %3768 = fdiv fast float %3766, %3767
  br label %3772

; <label>:3769                                    ; preds = %3727
  %3770 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %3771 = load float, float* %3770, align 4
  br label %3772

; <label>:3772                                    ; preds = %3769, %3755, %2938
  %3773 = phi float [ %3771, %3769 ], [ %3768, %3755 ], [ 0.000000e+00, %2938 ]
  %3774 = fmul fast float %3773, 2.000000e+00
  %3775 = fsub fast float 1.000000e+00, %3774
  %3776 = fmul fast float %3775, %3775
  %3777 = fmul fast float %3776, %3775
  %3778 = fmul fast float %3776, %3776
  %3779 = add i32 %2944, 1
  %3780 = uitofp i32 %3779 to float
  %3781 = fdiv fast float 1.000000e+00, %3780
  %3782 = fmul fast float %3773, 3.000000e+00
  %3783 = fsub fast float 1.500000e+00, %3782
  %3784 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %3777, float %3783)  ; FMad(a,b,c)
  %3785 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %3776, float 0.000000e+00)  ; FMad(a,b,c)
  %3786 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %3778, float %3785)  ; FMad(a,b,c)
  %3787 = fmul fast float %3773, 0x3FFBB67AE0000000
  %3788 = fsub fast float 0x3FEBB67AE0000000, %3787
  %3789 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %3777, float %3788)  ; FMad(a,b,c)
  %3790 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3776, float 0.000000e+00)  ; FMad(a,b,c)
  %3791 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3778, float %3790)  ; FMad(a,b,c)
  %3792 = fsub fast float 5.000000e-01, %2939
  %3793 = fadd fast float %3792, %3784
  %3794 = fsub fast float %3786, %2940
  %3795 = fsub fast float 5.000000e-01, %2941
  %3796 = fadd fast float %3795, %3789
  %3797 = fsub fast float %3791, %2942
  %3798 = fmul fast float %3793, %3781
  %3799 = fmul fast float %3794, %3781
  %3800 = fmul fast float %3796, %3781
  %3801 = fmul fast float %3797, %3781
  %3802 = fadd fast float %3798, %2939
  %3803 = fadd fast float %3799, %2940
  %3804 = fadd fast float %3800, %2941
  %3805 = fadd fast float %3801, %2942
  %3806 = add nuw i32 %2943, 1
  %3807 = icmp eq i32 %3806, %2888
  br i1 %3807, label %3808, label %2938, !llvm.loop !39

; <label>:3808                                    ; preds = %3772
  br label %3809

; <label>:3809                                    ; preds = %3808, %2903
  %3810 = phi float [ %2932, %2903 ], [ %3802, %3808 ]
  %3811 = phi float [ %2933, %2903 ], [ %3803, %3808 ]
  %3812 = phi float [ %2934, %2903 ], [ %3804, %3808 ]
  %3813 = phi float [ %2935, %2903 ], [ %3805, %3808 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %24, i32 %25, i32 3, float %3810, float %3811, float %3812, float %3813, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3814

; <label>:3814                                    ; preds = %3809, %2897, %2873, %1932, %991, %0
  %3815 = phi i32 [ %27, %0 ], [ %992, %991 ], [ %1933, %1932 ], [ %2874, %2873 ], [ %2909, %3809 ], [ %2874, %2897 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3816 = icmp eq i32 %12, 0
  br i1 %3816, label %3817, label %3818, !dx.controlflow.hints !41

; <label>:3817                                    ; preds = %3814
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %20, i32 %21, i32 undef, i32 %3815, i32 %3815, i32 %3815, i32 %3815, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3818

; <label>:3818                                    ; preds = %3817, %3814
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unary.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !15, null}
!5 = !{!6, !7, !8, !10}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !9}
!9 = !{i32 0, i32 14}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{!13, !14}
!13 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !9}
!14 = !{i32 1, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !11}
!15 = !{!16}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{void ()* @cs_update_msm_prepassed, !"cs_update_msm_prepassed", null, !4, !18}
!18 = !{i32 0, i64 272, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}

