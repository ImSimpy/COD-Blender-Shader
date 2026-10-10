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
; shader hash: bc90ca4cf1adc7440cb19bd9cc5de754
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
;   [32 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb1     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   cbuffer      NA          NA     CB2            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t8     1
;                                   texture    byte         r/o      T5             t4     1
;                                   texture    byte         r/o      T6             t5     1
;                                   texture    byte         r/o      T7             t6     1
;                                   texture    byte         r/o      T8             t7     1
;                                   texture     f32          3d      T9            t14     1
;                                   texture     f32     2darray     T10            t50     1
;                                   texture     f32     2darray     T11            t21     1
;                                   texture     f32          2d     T12            t18     1
;                                   texture    byte         r/o     T13            t15     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAV     u32          3d      U1             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture3D<unsigned int>" = type { i32 }
%VolumetricLightGridConstants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%GfxLGBoundConsts = type { i32, i32, i32, i32 }
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

define void @cs_vol_sh_sample_lightgrid_isotropic() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %23 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %24 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x float], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x float], align 4
  %29 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.i32 %29, 0
  %31 = extractvalue %dx.types.CBufRet.i32 %29, 1
  %32 = extractvalue %dx.types.CBufRet.i32 %29, 2
  %33 = add i32 %30, 3
  %34 = add i32 %31, 3
  %35 = add i32 %32, 3
  %36 = lshr i32 %33, 2
  %37 = lshr i32 %34, 2
  %38 = lshr i32 %35, 2
  %39 = icmp uge i32 %22, %36
  %40 = icmp uge i32 %23, %37
  %41 = icmp uge i32 %24, %38
  %42 = or i1 %39, %40
  %43 = or i1 %41, %42
  br i1 %43, label %51, label %44, !dx.controlflow.hints !35

; <label>:44                                      ; preds = %0
  %45 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %22, i32 %23, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = fmul fast float %46, 2.550000e+02
  %48 = fadd fast float %47, 0x3F70101020000000
  %49 = fptoui float %48 to i32
  %50 = icmp ule i32 %24, %49
  br label %51

; <label>:51                                      ; preds = %44, %0
  %52 = phi i1 [ %50, %44 ], [ false, %0 ]
  br i1 %52, label %53, label %1096, !dx.controlflow.hints !36

; <label>:53                                      ; preds = %51
  %54 = uitofp i32 %22 to float
  %55 = uitofp i32 %23 to float
  %56 = uitofp i32 %24 to float
  %57 = fadd fast float %54, 5.000000e-01
  %58 = fadd fast float %55, 5.000000e-01
  %59 = fadd fast float %56, 5.000000e-01
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 395)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 3
  %62 = add i32 %61, %24
  %63 = and i32 %62, 7
  switch i32 %63, label %71 [
    i32 0, label %72
    i32 1, label %64
    i32 2, label %65
    i32 3, label %66
    i32 4, label %67
    i32 5, label %68
    i32 6, label %69
    i32 7, label %70
  ], !dx.controlflow.hints !37

; <label>:64                                      ; preds = %53
  br label %72

; <label>:65                                      ; preds = %53
  br label %72

; <label>:66                                      ; preds = %53
  br label %72

; <label>:67                                      ; preds = %53
  br label %72

; <label>:68                                      ; preds = %53
  br label %72

; <label>:69                                      ; preds = %53
  br label %72

; <label>:70                                      ; preds = %53
  br label %72

; <label>:71                                      ; preds = %53
  br label %72

; <label>:72                                      ; preds = %71, %70, %69, %68, %67, %66, %65, %64, %53
  %73 = phi float [ 0.000000e+00, %71 ], [ 0xBFAAFDA2C0000000, %70 ], [ 0xBFDC840460000000, %69 ], [ 0x3FAD325520000000, %68 ], [ 0xBFC0D2F360000000, %67 ], [ 0x3FD3DBFA80000000, %66 ], [ 0xBFD546BCA0000000, %65 ], [ 0x3FDD88B380000000, %64 ], [ 0xBF98669800000000, %53 ]
  %74 = phi float [ 0.000000e+00, %71 ], [ 0xBFB3D00D00000000, %70 ], [ 0xBFD1E41C40000000, %69 ], [ 0xBFCDD22A60000000, %68 ], [ 0x3FBD22CF20000000, %67 ], [ 0x3FBA443A80000000, %66 ], [ 0x3FDB80DE80000000, %65 ], [ 0xBFB1C6F4E0000000, %64 ], [ 0xBFDDE0E000000000, %53 ]
  %75 = phi float [ 0.000000e+00, %71 ], [ 0xBFD38FB280000000, %70 ], [ 0xBF8D0A4580000000, %69 ], [ 0x3FD36603C0000000, %68 ], [ 0x3FBA950300000000, %67 ], [ 0xBFC14853E0000000, %66 ], [ 0x3FDBE53FA0000000, %65 ], [ 0x3FD8D79020000000, %64 ], [ 0xBFC22590A0000000, %53 ]
  %76 = fadd fast float %57, %73
  %77 = fadd fast float %58, %74
  %78 = fadd fast float %59, %75
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = fmul fast float %78, 4.000000e+00
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = fmul fast float %82, %85
  %87 = call float @dx.op.unary.f32(i32 21, float %86)  ; Exp(value)
  %88 = fmul fast float %87, %84
  %89 = fsub fast float 4.000000e+00, %84
  %90 = fadd fast float %89, %88
  %91 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %22, i32 %23, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fcmp fast ogt float %92, -1.000000e+00
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %96 = select i1 %93, float %95, float 1.000000e+00
  %97 = fadd fast float %92, 1.000000e+00
  %98 = fmul fast float %96, %97
  %99 = call float @dx.op.binary.f32(i32 36, float %90, float %98)  ; FMin(a,b)
  %100 = fmul fast float %76, 8.000000e+00
  %101 = fmul fast float %100, %80
  %102 = fmul fast float %77, 8.000000e+00
  %103 = fmul fast float %102, %81
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %107, %104
  %111 = fmul fast float %108, %104
  %112 = fmul fast float %109, %104
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %114, %105
  %118 = fmul fast float %115, %105
  %119 = fmul fast float %116, %105
  %120 = fadd fast float %117, %110
  %121 = fadd fast float %118, %111
  %122 = fadd fast float %119, %112
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %122, %126
  %130 = fmul fast float %127, %99
  %131 = fmul fast float %128, %99
  %132 = fmul fast float %129, %99
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %132, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 3
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %246, label %145, !dx.controlflow.hints !38

; <label>:145                                     ; preds = %72
  %146 = fmul fast float %59, 4.000000e+00
  %147 = fmul fast float %146, %85
  %148 = call float @dx.op.unary.f32(i32 21, float %147)  ; Exp(value)
  %149 = fmul fast float %148, %84
  %150 = fadd fast float %89, %149
  %151 = fmul fast float %57, 8.000000e+00
  %152 = fmul fast float %151, %80
  %153 = fmul fast float %58, 8.000000e+00
  %154 = fmul fast float %153, %81
  %155 = fsub fast float 1.000000e+00, %152
  %156 = fsub fast float 1.000000e+00, %154
  %157 = fmul fast float %107, %155
  %158 = fmul fast float %108, %155
  %159 = fmul fast float %109, %155
  %160 = fmul fast float %114, %156
  %161 = fmul fast float %115, %156
  %162 = fmul fast float %116, %156
  %163 = fadd fast float %160, %157
  %164 = fadd fast float %161, %158
  %165 = fadd fast float %162, %159
  %166 = fadd fast float %163, %124
  %167 = fadd fast float %164, %125
  %168 = fadd fast float %165, %126
  %169 = fmul fast float %166, %150
  %170 = fmul fast float %167, %150
  %171 = fmul fast float %168, %150
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 1
  %187 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %188 = fmul fast float %169, %173
  %189 = call float @dx.op.tertiary.f32(i32 46, float %177, float %170, float %188)  ; FMad(a,b,c)
  %190 = call float @dx.op.tertiary.f32(i32 46, float %181, float %171, float %189)  ; FMad(a,b,c)
  %191 = fadd fast float %190, %185
  %192 = fmul fast float %169, %174
  %193 = call float @dx.op.tertiary.f32(i32 46, float %178, float %170, float %192)  ; FMad(a,b,c)
  %194 = call float @dx.op.tertiary.f32(i32 46, float %182, float %171, float %193)  ; FMad(a,b,c)
  %195 = fadd fast float %194, %186
  %196 = fmul fast float %169, %175
  %197 = call float @dx.op.tertiary.f32(i32 46, float %179, float %170, float %196)  ; FMad(a,b,c)
  %198 = call float @dx.op.tertiary.f32(i32 46, float %183, float %171, float %197)  ; FMad(a,b,c)
  %199 = fadd fast float %198, %187
  %200 = fmul fast float %191, 5.000000e-01
  %201 = fdiv fast float %200, %199
  %202 = fadd fast float %201, 5.000000e-01
  %203 = fmul fast float %195, -5.000000e-01
  %204 = fdiv fast float %203, %199
  %205 = fadd fast float %204, 5.000000e-01
  %206 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %207 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %208 = fadd fast float %199, -4.000000e+00
  %209 = call float @dx.op.binary.f32(i32 35, float %208, float 0.000000e+00)  ; FMax(a,b)
  %210 = fadd fast float %209, %84
  %211 = fmul fast float %210, %206
  %212 = call float @dx.op.unary.f32(i32 23, float %211)  ; Log(value)
  %213 = fmul fast float %212, %207
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %216 = fmul fast float %213, %215
  %217 = call float @dx.op.unary.f32(i32 27, float %202)  ; Round_ni(value)
  %218 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %219 = call float @dx.op.unary.f32(i32 27, float %205)  ; Round_ni(value)
  %220 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %221 = fadd fast float %220, %218
  %222 = call float @dx.op.unary.f32(i32 27, float %216)  ; Round_ni(value)
  %223 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  %224 = fadd fast float %221, %223
  %225 = fcmp fast oeq float %224, 0.000000e+00
  %226 = zext i1 %225 to i32
  br i1 %225, label %227, label %235, !dx.controlflow.hints !39

; <label>:227                                     ; preds = %145
  %228 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %22, i32 %23, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 0
  %230 = fmul fast float %229, 2.550000e+02
  %231 = fadd fast float %230, 0x3F70101020000000
  %232 = fptoui float %231 to i32
  %233 = icmp ule i32 %24, %232
  %234 = zext i1 %233 to i32
  br label %235

; <label>:235                                     ; preds = %227, %145
  %236 = phi i32 [ %234, %227 ], [ %226, %145 ]
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238, !dx.controlflow.hints !40

; <label>:238                                     ; preds = %235
  %239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 397)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.i32 %239, 2
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %246, !dx.controlflow.hints !41

; <label>:243                                     ; preds = %238
  %244 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %22, i32 %23, i32 %24, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  br label %246

; <label>:246                                     ; preds = %243, %238, %235, %72
  %247 = phi i32 [ -1, %235 ], [ -1, %72 ], [ %245, %243 ], [ -1, %238 ]
  %248 = phi float [ %202, %235 ], [ 0.000000e+00, %72 ], [ %202, %243 ], [ %202, %238 ]
  %249 = phi float [ %205, %235 ], [ 0.000000e+00, %72 ], [ %205, %243 ], [ %205, %238 ]
  %250 = phi float [ %216, %235 ], [ 0.000000e+00, %72 ], [ %216, %243 ], [ %216, %238 ]
  %251 = phi i32 [ 0, %235 ], [ 0, %72 ], [ %236, %243 ], [ %236, %238 ]
  %252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.i32 %252, 2
  %254 = extractvalue %dx.types.CBufRet.i32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.i32 %252, 0
  %256 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 0
  store float 0.000000e+00, float* %256, align 4
  %257 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 1
  store float 0.000000e+00, float* %257, align 4
  %258 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 2
  store float 0.000000e+00, float* %258, align 4
  %259 = getelementptr inbounds [4 x float], [4 x float]* %26, i32 0, i32 3
  store float 0.000000e+00, float* %259, align 4
  %260 = icmp eq i32 %247, -1
  br i1 %260, label %261, label %412, !dx.controlflow.hints !42

; <label>:261                                     ; preds = %246
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = extractvalue %dx.types.ResRet.i32 %264, 1
  %267 = extractvalue %dx.types.ResRet.i32 %264, 2
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = fsub fast float %137, %269
  %277 = fsub fast float %138, %270
  %278 = fsub fast float %139, %271
  %279 = fptoui float %276 to i32
  %280 = fptoui float %277 to i32
  %281 = fptoui float %278 to i32
  %282 = fcmp fast olt float %137, %269
  %283 = fcmp fast olt float %138, %270
  %284 = fcmp fast olt float %139, %271
  %285 = or i1 %282, %283
  %286 = or i1 %284, %285
  %287 = fcmp fast oge float %137, %273
  %288 = fcmp fast oge float %138, %274
  %289 = fcmp fast oge float %139, %275
  %290 = or i1 %287, %288
  %291 = or i1 %289, %290
  %292 = or i1 %286, %291
  %293 = and i32 %265, 31
  %294 = lshr i32 %279, %293
  %295 = lshr i32 %280, %293
  %296 = lshr i32 %281, %293
  %297 = mul i32 %295, %263
  %298 = add i32 %297, %294
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 0
  %301 = icmp ult i32 %298, %300
  br i1 %301, label %302, label %318, !dx.controlflow.hints !43

; <label>:302                                     ; preds = %261
  %303 = mul i32 %298, 12
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = add i32 %303, 4
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = add i32 %303, 8
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = icmp ult i32 %296, %308
  %313 = icmp ugt i32 %296, %311
  %314 = or i1 %312, %313
  %315 = add i32 %305, %296
  %316 = sub i32 %315, %308
  %317 = select i1 %314, i32 -2147483648, i32 %316
  br label %318

; <label>:318                                     ; preds = %302, %261
  %319 = phi i32 [ %317, %302 ], [ -2147483648, %261 ]
  %320 = select i1 %292, i32 -2147483648, i32 %319
  %321 = icmp sgt i32 %320, -1
  %322 = and i32 %266, 31
  %323 = lshr i32 %279, %322
  %324 = lshr i32 %280, %322
  %325 = lshr i32 %281, %322
  %326 = and i32 %323, 3
  %327 = and i32 %325, 3
  %328 = shl nuw nsw i32 %327, 4
  %329 = shl i32 %324, 2
  %330 = and i32 %329, 12
  %331 = and i32 %328, 16
  %332 = or i32 %330, %326
  %333 = or i32 %332, %331
  %334 = shl i32 1, %333
  %335 = extractvalue %dx.types.CBufRet.i32 %299, 1
  %336 = icmp ult i32 %320, %335
  br i1 %336, label %337, label %355, !dx.controlflow.hints !44

; <label>:337                                     ; preds = %318
  %338 = lshr i32 %327, 1
  %339 = shl i32 %320, 4
  %340 = shl nuw nsw i32 %338, 2
  %341 = or i32 %339, %340
  %342 = or i32 %341, 8
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, %334
  %346 = icmp eq i32 %345, 0
  %347 = add i32 %334, -1
  %348 = and i32 %344, %347
  %349 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %348)  ; Countbits(value)
  %350 = or i32 %339, %340
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = add i32 %352, %349
  %354 = select i1 %346, i32 -2147483648, i32 %353
  br label %355

; <label>:355                                     ; preds = %337, %318
  %356 = phi i32 [ %354, %337 ], [ -2147483648, %318 ]
  %357 = select i1 %321, i32 %356, i32 %320
  %358 = icmp sgt i32 %357, -1
  %359 = and i32 %267, 31
  %360 = lshr i32 %279, %359
  %361 = lshr i32 %280, %359
  %362 = lshr i32 %281, %359
  %363 = and i32 %360, 3
  %364 = and i32 %362, 3
  %365 = shl nuw nsw i32 %364, 4
  %366 = shl i32 %361, 2
  %367 = and i32 %366, 12
  %368 = and i32 %365, 16
  %369 = or i32 %367, %363
  %370 = or i32 %369, %368
  %371 = shl i32 1, %370
  %372 = icmp ult i32 %357, %335
  br i1 %372, label %373, label %391, !dx.controlflow.hints !44

; <label>:373                                     ; preds = %355
  %374 = lshr i32 %364, 1
  %375 = shl i32 %357, 4
  %376 = shl nuw nsw i32 %374, 2
  %377 = or i32 %375, %376
  %378 = or i32 %377, 8
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, %371
  %382 = icmp eq i32 %381, 0
  %383 = add i32 %371, -1
  %384 = and i32 %380, %383
  %385 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %384)  ; Countbits(value)
  %386 = or i32 %375, %376
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = add i32 %388, %385
  %390 = select i1 %382, i32 -2147483648, i32 %389
  br label %391

; <label>:391                                     ; preds = %373, %355
  %392 = phi i32 [ %390, %373 ], [ -2147483648, %355 ]
  %393 = select i1 %358, i32 %392, i32 %357
  br i1 %292, label %408, label %394, !dx.controlflow.hints !45

; <label>:394                                     ; preds = %391
  %395 = icmp eq i32 %393, -2147483648
  %396 = icmp eq i32 %357, -2147483648
  %397 = select i1 %396, i32 %320, i32 %357
  %398 = select i1 %395, i32 %397, i32 %393
  %399 = icmp sgt i32 %398, -1
  %400 = icmp ne i32 %253, -1
  %401 = and i1 %400, %399
  %402 = select i1 %401, i32 %253, i32 0
  %403 = add i32 %398, %254
  %404 = add i32 %403, %402
  %405 = shl i32 %404, 2
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  br label %408

; <label>:408                                     ; preds = %394, %391
  %409 = phi i32 [ %407, %394 ], [ -1, %391 ]
  %410 = icmp eq i32 %409, -1
  %411 = select i1 %410, i32 %255, i32 %409
  br label %412

; <label>:412                                     ; preds = %408, %246
  %413 = phi i32 [ %411, %408 ], [ %247, %246 ]
  %414 = icmp eq i32 %413, -1
  br i1 %414, label %563, label %415

; <label>:415                                     ; preds = %412
  br label %416

; <label>:416                                     ; preds = %554, %415
  %417 = phi i32 [ %555, %554 ], [ 0, %415 ]
  %418 = phi i32 [ %419, %554 ], [ -1, %415 ]
  %419 = phi i32 [ %550, %554 ], [ %413, %415 ]
  %420 = phi float [ %526, %554 ], [ 0.000000e+00, %415 ]
  %421 = phi float [ %527, %554 ], [ 0.000000e+00, %415 ]
  %422 = phi float [ %528, %554 ], [ 0.000000e+00, %415 ]
  %423 = phi float [ %531, %554 ], [ 0.000000e+00, %415 ]
  %424 = icmp ugt i32 %417, 50
  br i1 %424, label %557, label %425, !dx.controlflow.hints !46

; <label>:425                                     ; preds = %416
  %426 = shl i32 %419, 4
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = extractvalue %dx.types.ResRet.i32 %427, 1
  %430 = extractvalue %dx.types.ResRet.i32 %427, 2
  %431 = extractvalue %dx.types.ResRet.i32 %427, 3
  %432 = and i32 %428, 2147483647
  %433 = mul nsw i32 %432, 12
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = extractvalue %dx.types.ResRet.i32 %434, 1
  %437 = extractvalue %dx.types.ResRet.i32 %434, 2
  %438 = and i32 %429, 2147483647
  %439 = mul nsw i32 %438, 12
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = extractvalue %dx.types.ResRet.i32 %440, 1
  %443 = extractvalue %dx.types.ResRet.i32 %440, 2
  %444 = and i32 %430, 2147483647
  %445 = mul nsw i32 %444, 12
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = extractvalue %dx.types.ResRet.i32 %446, 1
  %449 = extractvalue %dx.types.ResRet.i32 %446, 2
  %450 = and i32 %431, 2147483647
  %451 = mul nsw i32 %450, 12
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = extractvalue %dx.types.ResRet.i32 %452, 1
  %455 = extractvalue %dx.types.ResRet.i32 %452, 2
  %456 = bitcast i32 %435 to float
  %457 = bitcast i32 %436 to float
  %458 = bitcast i32 %437 to float
  %459 = bitcast i32 %453 to float
  %460 = bitcast i32 %454 to float
  %461 = bitcast i32 %455 to float
  %462 = fsub fast float %456, %459
  %463 = fsub fast float %457, %460
  %464 = fsub fast float %458, %461
  %465 = bitcast i32 %441 to float
  %466 = bitcast i32 %442 to float
  %467 = bitcast i32 %443 to float
  %468 = fsub fast float %465, %459
  %469 = fsub fast float %466, %460
  %470 = fsub fast float %467, %461
  %471 = bitcast i32 %447 to float
  %472 = bitcast i32 %448 to float
  %473 = bitcast i32 %449 to float
  %474 = fsub fast float %471, %459
  %475 = fsub fast float %472, %460
  %476 = fsub fast float %473, %461
  %477 = fsub fast float %137, %459
  %478 = fsub fast float %138, %460
  %479 = fsub fast float %139, %461
  %480 = fmul fast float %469, %476
  %481 = fmul fast float %475, %470
  %482 = fsub fast float %480, %481
  %483 = fmul fast float %482, %462
  %484 = fmul fast float %468, %476
  %485 = fmul fast float %470, %474
  %486 = fsub fast float %484, %485
  %487 = fmul fast float %486, %463
  %488 = fsub fast float %483, %487
  %489 = fmul fast float %468, %475
  %490 = fmul fast float %469, %474
  %491 = fsub fast float %489, %490
  %492 = fmul fast float %491, %464
  %493 = fadd fast float %488, %492
  %494 = fdiv fast float 1.000000e+00, %493
  %495 = fmul fast float %482, %494
  %496 = fmul fast float %494, %486
  %497 = fsub fast float -0.000000e+00, %496
  %498 = fmul fast float %491, %494
  %499 = fmul fast float %463, %476
  %500 = fmul fast float %464, %475
  %501 = fsub fast float %499, %500
  %502 = fmul fast float %494, %501
  %503 = fsub fast float -0.000000e+00, %502
  %504 = fmul fast float %462, %476
  %505 = fmul fast float %474, %464
  %506 = fsub fast float %504, %505
  %507 = fmul fast float %506, %494
  %508 = fmul fast float %462, %475
  %509 = fmul fast float %463, %474
  %510 = fsub fast float %508, %509
  %511 = fmul fast float %494, %510
  %512 = fsub fast float -0.000000e+00, %511
  %513 = fmul fast float %463, %470
  %514 = fmul fast float %464, %469
  %515 = fsub fast float %513, %514
  %516 = fmul fast float %515, %494
  %517 = fmul fast float %462, %470
  %518 = fmul fast float %464, %468
  %519 = fsub fast float %517, %518
  %520 = fmul fast float %494, %519
  %521 = fsub fast float -0.000000e+00, %520
  %522 = fmul fast float %462, %469
  %523 = fmul fast float %463, %468
  %524 = fsub fast float %522, %523
  %525 = fmul fast float %524, %494
  %526 = call float @dx.op.dot3.f32(i32 55, float %495, float %497, float %498, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %527 = call float @dx.op.dot3.f32(i32 55, float %503, float %507, float %512, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = call float @dx.op.dot3.f32(i32 55, float %516, float %521, float %525, float %477, float %478, float %479)  ; Dot3(ax,ay,az,bx,by,bz)
  %529 = fsub fast float 1.000000e+00, %526
  %530 = fsub fast float %529, %527
  %531 = fsub fast float %530, %528
  %532 = call float @dx.op.binary.f32(i32 36, float %526, float %527)  ; FMin(a,b)
  %533 = call float @dx.op.binary.f32(i32 36, float %532, float %528)  ; FMin(a,b)
  %534 = call float @dx.op.binary.f32(i32 36, float %533, float %531)  ; FMin(a,b)
  %535 = call float @dx.op.binary.f32(i32 35, float %526, float %527)  ; FMax(a,b)
  %536 = call float @dx.op.binary.f32(i32 35, float %535, float %528)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 35, float %536, float %531)  ; FMax(a,b)
  %538 = fcmp fast oge float %534, 0xBF50624DE0000000
  %539 = fcmp fast olt float %537, 0x3FF00068E0000000
  %540 = and i1 %538, %539
  br i1 %540, label %557, label %541, !dx.controlflow.hints !47

; <label>:541                                     ; preds = %425
  %542 = fcmp fast oeq float %534, %526
  %543 = fcmp fast oeq float %534, %527
  %544 = fcmp fast oeq float %534, %528
  %545 = select i1 %544, i32 8, i32 12
  %546 = select i1 %543, i32 4, i32 %545
  %547 = select i1 %542, i32 0, i32 %546
  %548 = or i32 %547, %426
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = icmp ne i32 %418, -1
  %552 = icmp eq i32 %550, %418
  %553 = and i1 %551, %552
  br i1 %553, label %557, label %554, !dx.controlflow.hints !48

; <label>:554                                     ; preds = %541
  %555 = add nuw nsw i32 %417, 1
  %556 = icmp eq i32 %550, -1
  br i1 %556, label %557, label %416, !llvm.loop !49

; <label>:557                                     ; preds = %554, %541, %425, %416
  %558 = phi i32 [ %419, %541 ], [ %419, %425 ], [ -1, %554 ], [ -1, %416 ]
  %559 = phi float [ %526, %541 ], [ %526, %425 ], [ %526, %554 ], [ %420, %416 ]
  %560 = phi float [ %527, %541 ], [ %527, %425 ], [ %527, %554 ], [ %421, %416 ]
  %561 = phi float [ %528, %541 ], [ %528, %425 ], [ %528, %554 ], [ %422, %416 ]
  %562 = phi float [ %531, %541 ], [ %531, %425 ], [ %531, %554 ], [ %423, %416 ]
  br label %563

; <label>:563                                     ; preds = %557, %412
  %564 = phi i32 [ -1, %412 ], [ %558, %557 ]
  %565 = phi float [ 0.000000e+00, %412 ], [ %559, %557 ]
  %566 = phi float [ 0.000000e+00, %412 ], [ %560, %557 ]
  %567 = phi float [ 0.000000e+00, %412 ], [ %561, %557 ]
  %568 = phi float [ 0.000000e+00, %412 ], [ %562, %557 ]
  %569 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %565)  ; FMax(a,b)
  %570 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %566)  ; FMax(a,b)
  %571 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %567)  ; FMax(a,b)
  %572 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %568)  ; FMax(a,b)
  %573 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %569)  ; FMin(a,b)
  %574 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %570)  ; FMin(a,b)
  %575 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %571)  ; FMin(a,b)
  %576 = call float @dx.op.binary.f32(i32 36, float 0x3FEFF7CEE0000000, float %572)  ; FMin(a,b)
  store float %573, float* %256, align 4
  store float %574, float* %257, align 4
  store float %575, float* %258, align 4
  store float %576, float* %259, align 4
  %577 = icmp eq i32 %564, -1
  br i1 %577, label %578, label %591, !dx.controlflow.hints !51

; <label>:578                                     ; preds = %563
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 1
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %582, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = and i32 %580, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  br label %1038

; <label>:591                                     ; preds = %563
  %592 = shl nsw i32 %564, 4
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = extractvalue %dx.types.ResRet.i32 %593, 1
  %596 = extractvalue %dx.types.ResRet.i32 %593, 2
  %597 = extractvalue %dx.types.ResRet.i32 %593, 3
  %598 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %594, i32* %598, align 4
  %599 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %595, i32* %599, align 4
  %600 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %596, i32* %600, align 4
  %601 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %597, i32* %601, align 4
  %602 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  store float 0.000000e+00, float* %602, align 4
  %603 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  store float 0.000000e+00, float* %603, align 4
  %604 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  store float 0.000000e+00, float* %604, align 4
  %605 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  store float 0.000000e+00, float* %605, align 4
  %606 = icmp slt i32 %594, 0
  br i1 %606, label %607, label %697, !dx.controlflow.hints !52

; <label>:607                                     ; preds = %591
  %608 = fsub fast float 1.000000e+00, %573
  %609 = fdiv fast float 1.000000e+00, %608
  %610 = shl nsw i32 %564, 6
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = extractvalue %dx.types.ResRet.i32 %611, 1
  %614 = extractvalue %dx.types.ResRet.i32 %611, 2
  %615 = extractvalue %dx.types.ResRet.i32 %611, 3
  %616 = fmul fast float %609, %576
  %617 = fmul fast float %609, %574
  %618 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %612, i32* %618, align 4
  %619 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %613, i32* %619, align 4
  %620 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %614, i32* %620, align 4
  %621 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %615, i32* %621, align 4
  %622 = fmul fast float %617, 4.000000e+00
  %623 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %624 = fmul fast float %616, 4.000000e+00
  %625 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %626 = fsub fast float 1.100000e+01, %623
  %627 = fmul fast float %623, 5.000000e-01
  %628 = fmul fast float %627, %626
  %629 = fadd fast float %625, 5.000000e-01
  %630 = fadd fast float %629, %628
  %631 = fptosi float %630 to i32
  %632 = fptosi float %623 to i32
  %633 = sub nsw i32 5, %632
  %634 = fmul fast float %625, 2.500000e-01
  %635 = fmul fast float %623, 2.500000e-01
  %636 = add nsw i32 %631, 1
  %637 = add nsw i32 %631, %633
  %638 = fsub fast float %616, %634
  %639 = fmul fast float %638, 4.000000e+00
  %640 = fsub fast float %617, %635
  %641 = fmul fast float %640, 4.000000e+00
  %642 = fadd fast float %638, %640
  %643 = fmul fast float %642, 4.000000e+00
  %644 = fcmp fast ogt float %643, 1.000000e+00
  br i1 %644, label %645, label %651, !dx.controlflow.hints !53

; <label>:645                                     ; preds = %607
  %646 = add nsw i32 %637, 1
  %647 = fadd fast float %641, -1.000000e+00
  %648 = fsub fast float -0.000000e+00, %647
  %649 = fadd fast float %639, -1.000000e+00
  %650 = fsub fast float -0.000000e+00, %649
  br label %651

; <label>:651                                     ; preds = %645, %607
  %652 = phi i32 [ %646, %645 ], [ %631, %607 ]
  %653 = phi i32 [ %636, %645 ], [ %637, %607 ]
  %654 = phi i32 [ %637, %645 ], [ %636, %607 ]
  %655 = phi float [ %650, %645 ], [ %641, %607 ]
  %656 = phi float [ %648, %645 ], [ %639, %607 ]
  %657 = fsub fast float 1.000000e+00, %655
  %658 = fsub fast float %657, %656
  %659 = lshr i32 %654, 2
  %660 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %659
  %661 = load i32, i32* %660, align 4, !tbaa !54, !noalias !58
  %662 = shl i32 %654, 3
  %663 = and i32 %662, 24
  %664 = lshr i32 %661, %663
  %665 = and i32 %664, 255
  %666 = sitofp i32 %665 to float
  %667 = fmul fast float %656, 0x3F70101020000000
  %668 = fmul fast float %667, %666
  %669 = lshr i32 %653, 2
  %670 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %669
  %671 = load i32, i32* %670, align 4, !tbaa !54, !noalias !58
  %672 = shl i32 %653, 3
  %673 = and i32 %672, 24
  %674 = lshr i32 %671, %673
  %675 = and i32 %674, 255
  %676 = sitofp i32 %675 to float
  %677 = fmul fast float %655, 0x3F70101020000000
  %678 = fmul fast float %677, %676
  %679 = lshr i32 %652, 2
  %680 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %679
  %681 = load i32, i32* %680, align 4, !tbaa !54, !noalias !58
  %682 = shl i32 %652, 3
  %683 = and i32 %682, 24
  %684 = lshr i32 %681, %683
  %685 = and i32 %684, 255
  %686 = sitofp i32 %685 to float
  %687 = fmul fast float %658, 0x3F70101020000000
  %688 = fmul fast float %687, %686
  %689 = fsub fast float 1.000000e+00, %668
  %690 = fsub fast float %689, %678
  %691 = fsub fast float %690, %688
  %692 = fmul fast float %573, 2.000000e+01
  %693 = fadd fast float %692, 1.000000e+00
  %694 = fmul fast float %691, 2.000000e+01
  %695 = fsub fast float %693, %694
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  br label %697

; <label>:697                                     ; preds = %651, %591
  %698 = phi float [ %696, %651 ], [ 1.000000e+00, %591 ]
  store float %698, float* %602, align 4, !tbaa !72, !noalias !58
  %699 = icmp slt i32 %595, 0
  br i1 %699, label %700, label %791, !dx.controlflow.hints !52

; <label>:700                                     ; preds = %697
  %701 = fsub fast float 1.000000e+00, %574
  %702 = fdiv fast float 1.000000e+00, %701
  %703 = shl i32 %564, 6
  %704 = or i32 %703, 16
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = extractvalue %dx.types.ResRet.i32 %705, 1
  %708 = extractvalue %dx.types.ResRet.i32 %705, 2
  %709 = extractvalue %dx.types.ResRet.i32 %705, 3
  %710 = fmul fast float %702, %573
  %711 = fmul fast float %702, %576
  %712 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %706, i32* %712, align 4
  %713 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %707, i32* %713, align 4
  %714 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %708, i32* %714, align 4
  %715 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %709, i32* %715, align 4
  %716 = fmul fast float %711, 4.000000e+00
  %717 = call float @dx.op.unary.f32(i32 27, float %716)  ; Round_ni(value)
  %718 = fmul fast float %710, 4.000000e+00
  %719 = call float @dx.op.unary.f32(i32 27, float %718)  ; Round_ni(value)
  %720 = fsub fast float 1.100000e+01, %717
  %721 = fmul fast float %717, 5.000000e-01
  %722 = fmul fast float %721, %720
  %723 = fadd fast float %719, 5.000000e-01
  %724 = fadd fast float %723, %722
  %725 = fptosi float %724 to i32
  %726 = fptosi float %717 to i32
  %727 = sub nsw i32 5, %726
  %728 = fmul fast float %719, 2.500000e-01
  %729 = fmul fast float %717, 2.500000e-01
  %730 = add nsw i32 %725, 1
  %731 = add nsw i32 %725, %727
  %732 = fsub fast float %710, %728
  %733 = fmul fast float %732, 4.000000e+00
  %734 = fsub fast float %711, %729
  %735 = fmul fast float %734, 4.000000e+00
  %736 = fadd fast float %732, %734
  %737 = fmul fast float %736, 4.000000e+00
  %738 = fcmp fast ogt float %737, 1.000000e+00
  br i1 %738, label %739, label %745, !dx.controlflow.hints !53

; <label>:739                                     ; preds = %700
  %740 = add nsw i32 %731, 1
  %741 = fadd fast float %735, -1.000000e+00
  %742 = fsub fast float -0.000000e+00, %741
  %743 = fadd fast float %733, -1.000000e+00
  %744 = fsub fast float -0.000000e+00, %743
  br label %745

; <label>:745                                     ; preds = %739, %700
  %746 = phi i32 [ %740, %739 ], [ %725, %700 ]
  %747 = phi i32 [ %730, %739 ], [ %731, %700 ]
  %748 = phi i32 [ %731, %739 ], [ %730, %700 ]
  %749 = phi float [ %744, %739 ], [ %735, %700 ]
  %750 = phi float [ %742, %739 ], [ %733, %700 ]
  %751 = fsub fast float 1.000000e+00, %749
  %752 = fsub fast float %751, %750
  %753 = lshr i32 %748, 2
  %754 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %753
  %755 = load i32, i32* %754, align 4, !tbaa !54, !noalias !58
  %756 = shl i32 %748, 3
  %757 = and i32 %756, 24
  %758 = lshr i32 %755, %757
  %759 = and i32 %758, 255
  %760 = sitofp i32 %759 to float
  %761 = fmul fast float %750, 0x3F70101020000000
  %762 = fmul fast float %761, %760
  %763 = lshr i32 %747, 2
  %764 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %763
  %765 = load i32, i32* %764, align 4, !tbaa !54, !noalias !58
  %766 = shl i32 %747, 3
  %767 = and i32 %766, 24
  %768 = lshr i32 %765, %767
  %769 = and i32 %768, 255
  %770 = sitofp i32 %769 to float
  %771 = fmul fast float %749, 0x3F70101020000000
  %772 = fmul fast float %771, %770
  %773 = lshr i32 %746, 2
  %774 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %773
  %775 = load i32, i32* %774, align 4, !tbaa !54, !noalias !58
  %776 = shl i32 %746, 3
  %777 = and i32 %776, 24
  %778 = lshr i32 %775, %777
  %779 = and i32 %778, 255
  %780 = sitofp i32 %779 to float
  %781 = fmul fast float %752, 0x3F70101020000000
  %782 = fmul fast float %781, %780
  %783 = fsub fast float 1.000000e+00, %762
  %784 = fsub fast float %783, %772
  %785 = fsub fast float %784, %782
  %786 = fmul fast float %574, 2.000000e+01
  %787 = fadd fast float %786, 1.000000e+00
  %788 = fmul fast float %785, 2.000000e+01
  %789 = fsub fast float %787, %788
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  br label %791

; <label>:791                                     ; preds = %745, %697
  %792 = phi float [ %790, %745 ], [ 1.000000e+00, %697 ]
  store float %792, float* %603, align 4, !tbaa !72, !noalias !58
  %793 = fadd fast float %792, %698
  %794 = icmp slt i32 %596, 0
  br i1 %794, label %795, label %886, !dx.controlflow.hints !52

; <label>:795                                     ; preds = %791
  %796 = fsub fast float 1.000000e+00, %575
  %797 = fdiv fast float 1.000000e+00, %796
  %798 = shl i32 %564, 6
  %799 = or i32 %798, 32
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = extractvalue %dx.types.ResRet.i32 %800, 1
  %803 = extractvalue %dx.types.ResRet.i32 %800, 2
  %804 = extractvalue %dx.types.ResRet.i32 %800, 3
  %805 = fmul fast float %797, %573
  %806 = fmul fast float %797, %574
  %807 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %801, i32* %807, align 4
  %808 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %802, i32* %808, align 4
  %809 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %803, i32* %809, align 4
  %810 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %804, i32* %810, align 4
  %811 = fmul fast float %806, 4.000000e+00
  %812 = call float @dx.op.unary.f32(i32 27, float %811)  ; Round_ni(value)
  %813 = fmul fast float %805, 4.000000e+00
  %814 = call float @dx.op.unary.f32(i32 27, float %813)  ; Round_ni(value)
  %815 = fsub fast float 1.100000e+01, %812
  %816 = fmul fast float %812, 5.000000e-01
  %817 = fmul fast float %816, %815
  %818 = fadd fast float %814, 5.000000e-01
  %819 = fadd fast float %818, %817
  %820 = fptosi float %819 to i32
  %821 = fptosi float %812 to i32
  %822 = sub nsw i32 5, %821
  %823 = fmul fast float %814, 2.500000e-01
  %824 = fmul fast float %812, 2.500000e-01
  %825 = add nsw i32 %820, 1
  %826 = add nsw i32 %820, %822
  %827 = fsub fast float %805, %823
  %828 = fmul fast float %827, 4.000000e+00
  %829 = fsub fast float %806, %824
  %830 = fmul fast float %829, 4.000000e+00
  %831 = fadd fast float %827, %829
  %832 = fmul fast float %831, 4.000000e+00
  %833 = fcmp fast ogt float %832, 1.000000e+00
  br i1 %833, label %834, label %840, !dx.controlflow.hints !53

; <label>:834                                     ; preds = %795
  %835 = add nsw i32 %826, 1
  %836 = fadd fast float %830, -1.000000e+00
  %837 = fsub fast float -0.000000e+00, %836
  %838 = fadd fast float %828, -1.000000e+00
  %839 = fsub fast float -0.000000e+00, %838
  br label %840

; <label>:840                                     ; preds = %834, %795
  %841 = phi i32 [ %835, %834 ], [ %820, %795 ]
  %842 = phi i32 [ %825, %834 ], [ %826, %795 ]
  %843 = phi i32 [ %826, %834 ], [ %825, %795 ]
  %844 = phi float [ %839, %834 ], [ %830, %795 ]
  %845 = phi float [ %837, %834 ], [ %828, %795 ]
  %846 = fsub fast float 1.000000e+00, %844
  %847 = fsub fast float %846, %845
  %848 = lshr i32 %843, 2
  %849 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %848
  %850 = load i32, i32* %849, align 4, !tbaa !54, !noalias !58
  %851 = shl i32 %843, 3
  %852 = and i32 %851, 24
  %853 = lshr i32 %850, %852
  %854 = and i32 %853, 255
  %855 = sitofp i32 %854 to float
  %856 = fmul fast float %845, 0x3F70101020000000
  %857 = fmul fast float %856, %855
  %858 = lshr i32 %842, 2
  %859 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %858
  %860 = load i32, i32* %859, align 4, !tbaa !54, !noalias !58
  %861 = shl i32 %842, 3
  %862 = and i32 %861, 24
  %863 = lshr i32 %860, %862
  %864 = and i32 %863, 255
  %865 = sitofp i32 %864 to float
  %866 = fmul fast float %844, 0x3F70101020000000
  %867 = fmul fast float %866, %865
  %868 = lshr i32 %841, 2
  %869 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %868
  %870 = load i32, i32* %869, align 4, !tbaa !54, !noalias !58
  %871 = shl i32 %841, 3
  %872 = and i32 %871, 24
  %873 = lshr i32 %870, %872
  %874 = and i32 %873, 255
  %875 = sitofp i32 %874 to float
  %876 = fmul fast float %847, 0x3F70101020000000
  %877 = fmul fast float %876, %875
  %878 = fsub fast float 1.000000e+00, %857
  %879 = fsub fast float %878, %867
  %880 = fsub fast float %879, %877
  %881 = fmul fast float %575, 2.000000e+01
  %882 = fadd fast float %881, 1.000000e+00
  %883 = fmul fast float %880, 2.000000e+01
  %884 = fsub fast float %882, %883
  %885 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  br label %886

; <label>:886                                     ; preds = %840, %791
  %887 = phi float [ %885, %840 ], [ 1.000000e+00, %791 ]
  store float %887, float* %604, align 4, !tbaa !72, !noalias !58
  %888 = fadd fast float %793, %887
  %889 = icmp slt i32 %597, 0
  br i1 %889, label %890, label %981, !dx.controlflow.hints !52

; <label>:890                                     ; preds = %886
  %891 = fsub fast float 1.000000e+00, %576
  %892 = fdiv fast float 1.000000e+00, %891
  %893 = shl i32 %564, 6
  %894 = or i32 %893, 48
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = extractvalue %dx.types.ResRet.i32 %895, 1
  %898 = extractvalue %dx.types.ResRet.i32 %895, 2
  %899 = extractvalue %dx.types.ResRet.i32 %895, 3
  %900 = fmul fast float %892, %573
  %901 = fmul fast float %892, %574
  %902 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %896, i32* %902, align 4
  %903 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %897, i32* %903, align 4
  %904 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %898, i32* %904, align 4
  %905 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %899, i32* %905, align 4
  %906 = fmul fast float %901, 4.000000e+00
  %907 = call float @dx.op.unary.f32(i32 27, float %906)  ; Round_ni(value)
  %908 = fmul fast float %900, 4.000000e+00
  %909 = call float @dx.op.unary.f32(i32 27, float %908)  ; Round_ni(value)
  %910 = fsub fast float 1.100000e+01, %907
  %911 = fmul fast float %907, 5.000000e-01
  %912 = fmul fast float %911, %910
  %913 = fadd fast float %909, 5.000000e-01
  %914 = fadd fast float %913, %912
  %915 = fptosi float %914 to i32
  %916 = fptosi float %907 to i32
  %917 = sub nsw i32 5, %916
  %918 = fmul fast float %909, 2.500000e-01
  %919 = fmul fast float %907, 2.500000e-01
  %920 = add nsw i32 %915, 1
  %921 = add nsw i32 %915, %917
  %922 = fsub fast float %900, %918
  %923 = fmul fast float %922, 4.000000e+00
  %924 = fsub fast float %901, %919
  %925 = fmul fast float %924, 4.000000e+00
  %926 = fadd fast float %922, %924
  %927 = fmul fast float %926, 4.000000e+00
  %928 = fcmp fast ogt float %927, 1.000000e+00
  br i1 %928, label %929, label %935, !dx.controlflow.hints !53

; <label>:929                                     ; preds = %890
  %930 = add nsw i32 %921, 1
  %931 = fadd fast float %925, -1.000000e+00
  %932 = fsub fast float -0.000000e+00, %931
  %933 = fadd fast float %923, -1.000000e+00
  %934 = fsub fast float -0.000000e+00, %933
  br label %935

; <label>:935                                     ; preds = %929, %890
  %936 = phi i32 [ %930, %929 ], [ %915, %890 ]
  %937 = phi i32 [ %920, %929 ], [ %921, %890 ]
  %938 = phi i32 [ %921, %929 ], [ %920, %890 ]
  %939 = phi float [ %934, %929 ], [ %925, %890 ]
  %940 = phi float [ %932, %929 ], [ %923, %890 ]
  %941 = fsub fast float 1.000000e+00, %939
  %942 = fsub fast float %941, %940
  %943 = lshr i32 %938, 2
  %944 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %943
  %945 = load i32, i32* %944, align 4, !tbaa !54, !noalias !58
  %946 = shl i32 %938, 3
  %947 = and i32 %946, 24
  %948 = lshr i32 %945, %947
  %949 = and i32 %948, 255
  %950 = sitofp i32 %949 to float
  %951 = fmul fast float %940, 0x3F70101020000000
  %952 = fmul fast float %951, %950
  %953 = lshr i32 %937, 2
  %954 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %953
  %955 = load i32, i32* %954, align 4, !tbaa !54, !noalias !58
  %956 = shl i32 %937, 3
  %957 = and i32 %956, 24
  %958 = lshr i32 %955, %957
  %959 = and i32 %958, 255
  %960 = sitofp i32 %959 to float
  %961 = fmul fast float %939, 0x3F70101020000000
  %962 = fmul fast float %961, %960
  %963 = lshr i32 %936, 2
  %964 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %963
  %965 = load i32, i32* %964, align 4, !tbaa !54, !noalias !58
  %966 = shl i32 %936, 3
  %967 = and i32 %966, 24
  %968 = lshr i32 %965, %967
  %969 = and i32 %968, 255
  %970 = sitofp i32 %969 to float
  %971 = fmul fast float %942, 0x3F70101020000000
  %972 = fmul fast float %971, %970
  %973 = fsub fast float 1.000000e+00, %952
  %974 = fsub fast float %973, %962
  %975 = fsub fast float %974, %972
  %976 = fmul fast float %576, 2.000000e+01
  %977 = fadd fast float %976, 1.000000e+00
  %978 = fmul fast float %975, 2.000000e+01
  %979 = fsub fast float %977, %978
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  br label %981

; <label>:981                                     ; preds = %935, %886
  %982 = phi float [ %980, %935 ], [ 1.000000e+00, %886 ]
  store float %982, float* %605, align 4, !tbaa !72, !noalias !58
  %983 = fadd fast float %888, %982
  %984 = fcmp fast oeq float %983, 0.000000e+00
  br i1 %984, label %985, label %986, !dx.controlflow.hints !74

; <label>:985                                     ; preds = %981
  store float 2.500000e-01, float* %602, align 4
  store float 2.500000e-01, float* %603, align 4
  store float 2.500000e-01, float* %604, align 4
  store float 2.500000e-01, float* %605, align 4
  br label %986

; <label>:986                                     ; preds = %985, %981
  %987 = phi float [ 2.500000e-01, %985 ], [ %698, %981 ]
  br label %988

; <label>:988                                     ; preds = %1028, %986
  %989 = phi float [ %1030, %1028 ], [ %987, %986 ]
  %990 = phi float [ %1022, %1028 ], [ 0.000000e+00, %986 ]
  %991 = phi float [ %1023, %1028 ], [ 0.000000e+00, %986 ]
  %992 = phi float [ %1024, %1028 ], [ 0.000000e+00, %986 ]
  %993 = phi float [ %1025, %1028 ], [ 0.000000e+00, %986 ]
  %994 = phi i32 [ %1026, %1028 ], [ 0, %986 ]
  %995 = fcmp fast ogt float %989, 0.000000e+00
  br i1 %995, label %996, label %1021, !dx.controlflow.hints !75

; <label>:996                                     ; preds = %988
  %997 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 %994
  %998 = load float, float* %997, align 4, !tbaa !72, !noalias !58
  %999 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %994
  %1000 = load i32, i32* %999, align 4, !tbaa !54, !noalias !58
  %1001 = fmul fast float %998, %989
  %1002 = shl i32 %1000, 5
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = shl i32 %1004, 4
  %1006 = and i32 %1005, 32752
  %1007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1006)  ; LegacyF16ToF32(value)
  %1008 = lshr i32 %1004, 7
  %1009 = and i32 %1008, 32752
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = lshr i32 %1004, 22
  %1012 = shl nuw nsw i32 %1011, 5
  %1013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1012)  ; LegacyF16ToF32(value)
  %1014 = fmul fast float %1007, %1001
  %1015 = fadd fast float %1014, %990
  %1016 = fmul fast float %1010, %1001
  %1017 = fadd fast float %1016, %991
  %1018 = fmul fast float %1013, %1001
  %1019 = fadd fast float %1018, %992
  %1020 = fadd fast float %1001, %993
  br label %1021

; <label>:1021                                    ; preds = %996, %988
  %1022 = phi float [ %1015, %996 ], [ %990, %988 ]
  %1023 = phi float [ %1017, %996 ], [ %991, %988 ]
  %1024 = phi float [ %1019, %996 ], [ %992, %988 ]
  %1025 = phi float [ %1020, %996 ], [ %993, %988 ]
  %1026 = add nuw nsw i32 %994, 1
  %1027 = icmp eq i32 %1026, 4
  br i1 %1027, label %1031, label %1028

; <label>:1028                                    ; preds = %1021
  %1029 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 %1026
  %1030 = load float, float* %1029, align 4, !tbaa !72, !noalias !58
  br label %988

; <label>:1031                                    ; preds = %1021
  %1032 = fcmp fast ogt float %1025, 0.000000e+00
  %1033 = fdiv fast float 1.000000e+00, %1025
  %1034 = select i1 %1032, float %1033, float 1.000000e+00
  %1035 = fmul fast float %1034, %1022
  %1036 = fmul fast float %1034, %1023
  %1037 = fmul fast float %1034, %1024
  br label %1038

; <label>:1038                                    ; preds = %1031, %578
  %1039 = phi float [ %586, %578 ], [ %1035, %1031 ]
  %1040 = phi float [ %588, %578 ], [ %1036, %1031 ]
  %1041 = phi float [ %590, %578 ], [ %1037, %1031 ]
  %1042 = phi i32 [ -1, %578 ], [ %564, %1031 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 %24, i32 %1042, i32 %1042, i32 %1042, i32 %1042, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1043 = fmul fast float %1039, 0x3FD20DD760000000
  %1044 = fmul fast float %1040, 0x3FD20DD760000000
  %1045 = fmul fast float %1041, 0x3FD20DD760000000
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 3
  %1048 = fmul fast float %1043, %1047
  %1049 = fmul fast float %1044, %1047
  %1050 = fmul fast float %1045, %1047
  %1051 = icmp eq i32 %251, 0
  br i1 %1051, label %1088, label %1052, !dx.controlflow.hints !76

; <label>:1052                                    ; preds = %1038
  %1053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %248, float %249, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = call float @dx.op.binary.f32(i32 36, float %1055, float %1056)  ; FMin(a,b)
  %1059 = call float @dx.op.binary.f32(i32 36, float %1054, float %1058)  ; FMin(a,b)
  %1060 = call float @dx.op.binary.f32(i32 36, float %1059, float %1057)  ; FMin(a,b)
  %1061 = fmul fast float %1060, 2.550000e+02
  %1062 = fadd fast float %1061, 0x3F70101020000000
  %1063 = fptoui float %1062 to i32
  %1064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.i32 %1064, 1
  %1066 = uitofp i32 %1065 to float
  %1067 = fmul fast float %1066, %250
  %1068 = fptosi float %1067 to i32
  %1069 = icmp slt i32 %1068, %1063
  br i1 %1069, label %1070, label %1088, !dx.controlflow.hints !77

; <label>:1070                                    ; preds = %1052
  %1071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %248, float %249, float %250, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.CBufRet.f32 %1046, 2
  %1076 = fmul fast float %1075, %1072
  %1077 = fmul fast float %1075, %1073
  %1078 = fmul fast float %1075, %1074
  %1079 = fsub fast float %1076, %1048
  %1080 = fsub fast float %1077, %1049
  %1081 = fsub fast float %1078, %1050
  %1082 = fmul fast float %1079, %141
  %1083 = fmul fast float %1080, %141
  %1084 = fmul fast float %1081, %141
  %1085 = fadd fast float %1082, %1048
  %1086 = fadd fast float %1083, %1049
  %1087 = fadd fast float %1084, %1050
  br label %1088

; <label>:1088                                    ; preds = %1070, %1052, %1038
  %1089 = phi float [ %1048, %1038 ], [ %1085, %1070 ], [ %1048, %1052 ]
  %1090 = phi float [ %1049, %1038 ], [ %1086, %1070 ], [ %1049, %1052 ]
  %1091 = phi float [ %1050, %1038 ], [ %1087, %1070 ], [ %1050, %1052 ]
  %1092 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1093 = fmul fast float %1092, %1089
  %1094 = fmul fast float %1092, %1090
  %1095 = fmul fast float %1092, %1091
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 %24, float %1093, float %1094, float %1095, float %1093, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1096

; <label>:1096                                    ; preds = %1088, %51
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!32}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !21, !25, !29}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 8, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!14 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 7, i32 1, i32 11, i32 0, null}
!15 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 14, i32 1, i32 4, i32 0, !16}
!16 = !{i32 0, i32 9}
!17 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !16}
!18 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !16}
!19 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !16}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!21 = !{!22, !23}
!22 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !16}
!23 = !{i32 1, %"class.RWTexture3D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 4, i1 false, i1 false, i1 false, !24}
!24 = !{i32 0, i32 5}
!25 = !{!26, !27, !28}
!26 = !{i32 0, %VolumetricLightGridConstants* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!27 = !{i32 1, %GfxLGBoundConsts* undef, !"", i32 0, i32 4, i32 1, i32 16, null}
!28 = !{i32 2, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{!30, !31}
!30 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{void ()* @cs_vol_sh_sample_lightgrid_isotropic, !"cs_vol_sh_sample_lightgrid_isotropic", null, !4, !33}
!33 = !{i32 0, i64 272, i32 4, !34}
!34 = !{i32 4, i32 4, i32 4}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!59, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71}
!59 = distinct !{!59, !60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeR"}
!60 = distinct !{!60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z"}
!61 = distinct !{!61, !60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeG"}
!62 = distinct !{!62, !60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeB"}
!63 = distinct !{!63, !60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %probeA"}
!64 = distinct !{!64, !60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %primaryVisibility"}
!65 = distinct !{!65, !60, !"\01?LookupRawLightGrid@@YA_NV?$vector@M$02@@IIIIUGfxSHProbeFallback@@_NUSH3Vec@@33AIAM4AIAI@Z: %usedTet"}
!66 = distinct !{!66, !67, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %redSH"}
!67 = distinct !{!67, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z"}
!68 = distinct !{!68, !67, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %greenSH"}
!69 = distinct !{!69, !67, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %blueSH"}
!70 = distinct !{!70, !67, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %probeA"}
!71 = distinct !{!71, !67, !"\01?LookupLighting@@YA_NV?$vector@M$02@@USH3Vec@@11AIAMIAIAI_N@Z: %usedTet"}
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !56, i64 0}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

