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
; shader hash: af7b526df25ed3ebd94e0988990e9117
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

define void @cs_vol_sh_sample_lightgrid_aniso() {
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
  br i1 %52, label %53, label %1520, !dx.controlflow.hints !36

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
  br i1 %577, label %578, label %651, !dx.controlflow.hints !51

; <label>:578                                     ; preds = %563
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = extractvalue %dx.types.ResRet.i32 %579, 1
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = extractvalue %dx.types.ResRet.i32 %582, 1
  %585 = extractvalue %dx.types.ResRet.i32 %582, 2
  %586 = extractvalue %dx.types.ResRet.i32 %582, 3
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = extractvalue %dx.types.ResRet.i32 %587, 1
  %590 = extractvalue %dx.types.ResRet.i32 %587, 2
  %591 = extractvalue %dx.types.ResRet.i32 %587, 3
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = extractvalue %dx.types.ResRet.i32 %592, 1
  %595 = extractvalue %dx.types.ResRet.i32 %592, 2
  %596 = extractvalue %dx.types.ResRet.i32 %592, 3
  %597 = and i32 %593, 65535
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %593, 16
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = and i32 %594, 65535
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %594, 16
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = and i32 %595, 65535
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = lshr i32 %595, 16
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = and i32 %596, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %596, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = and i32 %588, 65535
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %588, 16
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = and i32 %589, 65535
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = lshr i32 %589, 16
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = and i32 %590, 65535
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = lshr i32 %590, 16
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = and i32 %591, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %591, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = and i32 %583, 65535
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = lshr i32 %583, 16
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = and i32 %584, 65535
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %584, 16
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = and i32 %585, 65535
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %585, 16
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = and i32 %586, 65535
  %642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %641)  ; LegacyF16ToF32(value)
  %643 = lshr i32 %586, 16
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = and i32 %580, 65535
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = lshr i32 %580, 16
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = and i32 %581, 65535
  %650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %649)  ; LegacyF16ToF32(value)
  br label %1346

; <label>:651                                     ; preds = %563
  %652 = shl nsw i32 %564, 4
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = extractvalue %dx.types.ResRet.i32 %653, 1
  %656 = extractvalue %dx.types.ResRet.i32 %653, 2
  %657 = extractvalue %dx.types.ResRet.i32 %653, 3
  %658 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 0
  store i32 %654, i32* %658, align 4
  %659 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 1
  store i32 %655, i32* %659, align 4
  %660 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 2
  store i32 %656, i32* %660, align 4
  %661 = getelementptr inbounds [4 x i32], [4 x i32]* %27, i32 0, i32 3
  store i32 %657, i32* %661, align 4
  %662 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  store float 0.000000e+00, float* %662, align 4
  %663 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  store float 0.000000e+00, float* %663, align 4
  %664 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  store float 0.000000e+00, float* %664, align 4
  %665 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  store float 0.000000e+00, float* %665, align 4
  %666 = icmp slt i32 %654, 0
  br i1 %666, label %667, label %757, !dx.controlflow.hints !52

; <label>:667                                     ; preds = %651
  %668 = fsub fast float 1.000000e+00, %573
  %669 = fdiv fast float 1.000000e+00, %668
  %670 = shl nsw i32 %564, 6
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = extractvalue %dx.types.ResRet.i32 %671, 1
  %674 = extractvalue %dx.types.ResRet.i32 %671, 2
  %675 = extractvalue %dx.types.ResRet.i32 %671, 3
  %676 = fmul fast float %669, %576
  %677 = fmul fast float %669, %574
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %672, i32* %678, align 4
  %679 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %673, i32* %679, align 4
  %680 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %674, i32* %680, align 4
  %681 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %675, i32* %681, align 4
  %682 = fmul fast float %677, 4.000000e+00
  %683 = call float @dx.op.unary.f32(i32 27, float %682)  ; Round_ni(value)
  %684 = fmul fast float %676, 4.000000e+00
  %685 = call float @dx.op.unary.f32(i32 27, float %684)  ; Round_ni(value)
  %686 = fsub fast float 1.100000e+01, %683
  %687 = fmul fast float %683, 5.000000e-01
  %688 = fmul fast float %687, %686
  %689 = fadd fast float %685, 5.000000e-01
  %690 = fadd fast float %689, %688
  %691 = fptosi float %690 to i32
  %692 = fptosi float %683 to i32
  %693 = sub nsw i32 5, %692
  %694 = fmul fast float %685, 2.500000e-01
  %695 = fmul fast float %683, 2.500000e-01
  %696 = add nsw i32 %691, 1
  %697 = add nsw i32 %691, %693
  %698 = fsub fast float %676, %694
  %699 = fmul fast float %698, 4.000000e+00
  %700 = fsub fast float %677, %695
  %701 = fmul fast float %700, 4.000000e+00
  %702 = fadd fast float %698, %700
  %703 = fmul fast float %702, 4.000000e+00
  %704 = fcmp fast ogt float %703, 1.000000e+00
  br i1 %704, label %705, label %711, !dx.controlflow.hints !53

; <label>:705                                     ; preds = %667
  %706 = add nsw i32 %697, 1
  %707 = fadd fast float %701, -1.000000e+00
  %708 = fsub fast float -0.000000e+00, %707
  %709 = fadd fast float %699, -1.000000e+00
  %710 = fsub fast float -0.000000e+00, %709
  br label %711

; <label>:711                                     ; preds = %705, %667
  %712 = phi i32 [ %706, %705 ], [ %691, %667 ]
  %713 = phi i32 [ %696, %705 ], [ %697, %667 ]
  %714 = phi i32 [ %697, %705 ], [ %696, %667 ]
  %715 = phi float [ %710, %705 ], [ %701, %667 ]
  %716 = phi float [ %708, %705 ], [ %699, %667 ]
  %717 = fsub fast float 1.000000e+00, %715
  %718 = fsub fast float %717, %716
  %719 = lshr i32 %714, 2
  %720 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %719
  %721 = load i32, i32* %720, align 4, !tbaa !54, !noalias !58
  %722 = shl i32 %714, 3
  %723 = and i32 %722, 24
  %724 = lshr i32 %721, %723
  %725 = and i32 %724, 255
  %726 = sitofp i32 %725 to float
  %727 = fmul fast float %716, 0x3F70101020000000
  %728 = fmul fast float %727, %726
  %729 = lshr i32 %713, 2
  %730 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %729
  %731 = load i32, i32* %730, align 4, !tbaa !54, !noalias !58
  %732 = shl i32 %713, 3
  %733 = and i32 %732, 24
  %734 = lshr i32 %731, %733
  %735 = and i32 %734, 255
  %736 = sitofp i32 %735 to float
  %737 = fmul fast float %715, 0x3F70101020000000
  %738 = fmul fast float %737, %736
  %739 = lshr i32 %712, 2
  %740 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %739
  %741 = load i32, i32* %740, align 4, !tbaa !54, !noalias !58
  %742 = shl i32 %712, 3
  %743 = and i32 %742, 24
  %744 = lshr i32 %741, %743
  %745 = and i32 %744, 255
  %746 = sitofp i32 %745 to float
  %747 = fmul fast float %718, 0x3F70101020000000
  %748 = fmul fast float %747, %746
  %749 = fsub fast float 1.000000e+00, %728
  %750 = fsub fast float %749, %738
  %751 = fsub fast float %750, %748
  %752 = fmul fast float %573, 2.000000e+01
  %753 = fadd fast float %752, 1.000000e+00
  %754 = fmul fast float %751, 2.000000e+01
  %755 = fsub fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  br label %757

; <label>:757                                     ; preds = %711, %651
  %758 = phi float [ %756, %711 ], [ 1.000000e+00, %651 ]
  store float %758, float* %662, align 4, !tbaa !72, !noalias !58
  %759 = icmp slt i32 %655, 0
  br i1 %759, label %760, label %851, !dx.controlflow.hints !52

; <label>:760                                     ; preds = %757
  %761 = fsub fast float 1.000000e+00, %574
  %762 = fdiv fast float 1.000000e+00, %761
  %763 = shl i32 %564, 6
  %764 = or i32 %763, 16
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = extractvalue %dx.types.ResRet.i32 %765, 1
  %768 = extractvalue %dx.types.ResRet.i32 %765, 2
  %769 = extractvalue %dx.types.ResRet.i32 %765, 3
  %770 = fmul fast float %762, %573
  %771 = fmul fast float %762, %576
  %772 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %766, i32* %772, align 4
  %773 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %767, i32* %773, align 4
  %774 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %768, i32* %774, align 4
  %775 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %769, i32* %775, align 4
  %776 = fmul fast float %771, 4.000000e+00
  %777 = call float @dx.op.unary.f32(i32 27, float %776)  ; Round_ni(value)
  %778 = fmul fast float %770, 4.000000e+00
  %779 = call float @dx.op.unary.f32(i32 27, float %778)  ; Round_ni(value)
  %780 = fsub fast float 1.100000e+01, %777
  %781 = fmul fast float %777, 5.000000e-01
  %782 = fmul fast float %781, %780
  %783 = fadd fast float %779, 5.000000e-01
  %784 = fadd fast float %783, %782
  %785 = fptosi float %784 to i32
  %786 = fptosi float %777 to i32
  %787 = sub nsw i32 5, %786
  %788 = fmul fast float %779, 2.500000e-01
  %789 = fmul fast float %777, 2.500000e-01
  %790 = add nsw i32 %785, 1
  %791 = add nsw i32 %785, %787
  %792 = fsub fast float %770, %788
  %793 = fmul fast float %792, 4.000000e+00
  %794 = fsub fast float %771, %789
  %795 = fmul fast float %794, 4.000000e+00
  %796 = fadd fast float %792, %794
  %797 = fmul fast float %796, 4.000000e+00
  %798 = fcmp fast ogt float %797, 1.000000e+00
  br i1 %798, label %799, label %805, !dx.controlflow.hints !53

; <label>:799                                     ; preds = %760
  %800 = add nsw i32 %791, 1
  %801 = fadd fast float %795, -1.000000e+00
  %802 = fsub fast float -0.000000e+00, %801
  %803 = fadd fast float %793, -1.000000e+00
  %804 = fsub fast float -0.000000e+00, %803
  br label %805

; <label>:805                                     ; preds = %799, %760
  %806 = phi i32 [ %800, %799 ], [ %785, %760 ]
  %807 = phi i32 [ %790, %799 ], [ %791, %760 ]
  %808 = phi i32 [ %791, %799 ], [ %790, %760 ]
  %809 = phi float [ %804, %799 ], [ %795, %760 ]
  %810 = phi float [ %802, %799 ], [ %793, %760 ]
  %811 = fsub fast float 1.000000e+00, %809
  %812 = fsub fast float %811, %810
  %813 = lshr i32 %808, 2
  %814 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %813
  %815 = load i32, i32* %814, align 4, !tbaa !54, !noalias !58
  %816 = shl i32 %808, 3
  %817 = and i32 %816, 24
  %818 = lshr i32 %815, %817
  %819 = and i32 %818, 255
  %820 = sitofp i32 %819 to float
  %821 = fmul fast float %810, 0x3F70101020000000
  %822 = fmul fast float %821, %820
  %823 = lshr i32 %807, 2
  %824 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %823
  %825 = load i32, i32* %824, align 4, !tbaa !54, !noalias !58
  %826 = shl i32 %807, 3
  %827 = and i32 %826, 24
  %828 = lshr i32 %825, %827
  %829 = and i32 %828, 255
  %830 = sitofp i32 %829 to float
  %831 = fmul fast float %809, 0x3F70101020000000
  %832 = fmul fast float %831, %830
  %833 = lshr i32 %806, 2
  %834 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %833
  %835 = load i32, i32* %834, align 4, !tbaa !54, !noalias !58
  %836 = shl i32 %806, 3
  %837 = and i32 %836, 24
  %838 = lshr i32 %835, %837
  %839 = and i32 %838, 255
  %840 = sitofp i32 %839 to float
  %841 = fmul fast float %812, 0x3F70101020000000
  %842 = fmul fast float %841, %840
  %843 = fsub fast float 1.000000e+00, %822
  %844 = fsub fast float %843, %832
  %845 = fsub fast float %844, %842
  %846 = fmul fast float %574, 2.000000e+01
  %847 = fadd fast float %846, 1.000000e+00
  %848 = fmul fast float %845, 2.000000e+01
  %849 = fsub fast float %847, %848
  %850 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  br label %851

; <label>:851                                     ; preds = %805, %757
  %852 = phi float [ %850, %805 ], [ 1.000000e+00, %757 ]
  store float %852, float* %663, align 4, !tbaa !72, !noalias !58
  %853 = fadd fast float %852, %758
  %854 = icmp slt i32 %656, 0
  br i1 %854, label %855, label %946, !dx.controlflow.hints !52

; <label>:855                                     ; preds = %851
  %856 = fsub fast float 1.000000e+00, %575
  %857 = fdiv fast float 1.000000e+00, %856
  %858 = shl i32 %564, 6
  %859 = or i32 %858, 32
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = extractvalue %dx.types.ResRet.i32 %860, 1
  %863 = extractvalue %dx.types.ResRet.i32 %860, 2
  %864 = extractvalue %dx.types.ResRet.i32 %860, 3
  %865 = fmul fast float %857, %573
  %866 = fmul fast float %857, %574
  %867 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %861, i32* %867, align 4
  %868 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %862, i32* %868, align 4
  %869 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %863, i32* %869, align 4
  %870 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %864, i32* %870, align 4
  %871 = fmul fast float %866, 4.000000e+00
  %872 = call float @dx.op.unary.f32(i32 27, float %871)  ; Round_ni(value)
  %873 = fmul fast float %865, 4.000000e+00
  %874 = call float @dx.op.unary.f32(i32 27, float %873)  ; Round_ni(value)
  %875 = fsub fast float 1.100000e+01, %872
  %876 = fmul fast float %872, 5.000000e-01
  %877 = fmul fast float %876, %875
  %878 = fadd fast float %874, 5.000000e-01
  %879 = fadd fast float %878, %877
  %880 = fptosi float %879 to i32
  %881 = fptosi float %872 to i32
  %882 = sub nsw i32 5, %881
  %883 = fmul fast float %874, 2.500000e-01
  %884 = fmul fast float %872, 2.500000e-01
  %885 = add nsw i32 %880, 1
  %886 = add nsw i32 %880, %882
  %887 = fsub fast float %865, %883
  %888 = fmul fast float %887, 4.000000e+00
  %889 = fsub fast float %866, %884
  %890 = fmul fast float %889, 4.000000e+00
  %891 = fadd fast float %887, %889
  %892 = fmul fast float %891, 4.000000e+00
  %893 = fcmp fast ogt float %892, 1.000000e+00
  br i1 %893, label %894, label %900, !dx.controlflow.hints !53

; <label>:894                                     ; preds = %855
  %895 = add nsw i32 %886, 1
  %896 = fadd fast float %890, -1.000000e+00
  %897 = fsub fast float -0.000000e+00, %896
  %898 = fadd fast float %888, -1.000000e+00
  %899 = fsub fast float -0.000000e+00, %898
  br label %900

; <label>:900                                     ; preds = %894, %855
  %901 = phi i32 [ %895, %894 ], [ %880, %855 ]
  %902 = phi i32 [ %885, %894 ], [ %886, %855 ]
  %903 = phi i32 [ %886, %894 ], [ %885, %855 ]
  %904 = phi float [ %899, %894 ], [ %890, %855 ]
  %905 = phi float [ %897, %894 ], [ %888, %855 ]
  %906 = fsub fast float 1.000000e+00, %904
  %907 = fsub fast float %906, %905
  %908 = lshr i32 %903, 2
  %909 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %908
  %910 = load i32, i32* %909, align 4, !tbaa !54, !noalias !58
  %911 = shl i32 %903, 3
  %912 = and i32 %911, 24
  %913 = lshr i32 %910, %912
  %914 = and i32 %913, 255
  %915 = sitofp i32 %914 to float
  %916 = fmul fast float %905, 0x3F70101020000000
  %917 = fmul fast float %916, %915
  %918 = lshr i32 %902, 2
  %919 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %918
  %920 = load i32, i32* %919, align 4, !tbaa !54, !noalias !58
  %921 = shl i32 %902, 3
  %922 = and i32 %921, 24
  %923 = lshr i32 %920, %922
  %924 = and i32 %923, 255
  %925 = sitofp i32 %924 to float
  %926 = fmul fast float %904, 0x3F70101020000000
  %927 = fmul fast float %926, %925
  %928 = lshr i32 %901, 2
  %929 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %928
  %930 = load i32, i32* %929, align 4, !tbaa !54, !noalias !58
  %931 = shl i32 %901, 3
  %932 = and i32 %931, 24
  %933 = lshr i32 %930, %932
  %934 = and i32 %933, 255
  %935 = sitofp i32 %934 to float
  %936 = fmul fast float %907, 0x3F70101020000000
  %937 = fmul fast float %936, %935
  %938 = fsub fast float 1.000000e+00, %917
  %939 = fsub fast float %938, %927
  %940 = fsub fast float %939, %937
  %941 = fmul fast float %575, 2.000000e+01
  %942 = fadd fast float %941, 1.000000e+00
  %943 = fmul fast float %940, 2.000000e+01
  %944 = fsub fast float %942, %943
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  br label %946

; <label>:946                                     ; preds = %900, %851
  %947 = phi float [ %945, %900 ], [ 1.000000e+00, %851 ]
  store float %947, float* %664, align 4, !tbaa !72, !noalias !58
  %948 = fadd fast float %853, %947
  %949 = icmp slt i32 %657, 0
  br i1 %949, label %950, label %1041, !dx.controlflow.hints !52

; <label>:950                                     ; preds = %946
  %951 = fsub fast float 1.000000e+00, %576
  %952 = fdiv fast float 1.000000e+00, %951
  %953 = shl i32 %564, 6
  %954 = or i32 %953, 48
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = extractvalue %dx.types.ResRet.i32 %955, 1
  %958 = extractvalue %dx.types.ResRet.i32 %955, 2
  %959 = extractvalue %dx.types.ResRet.i32 %955, 3
  %960 = fmul fast float %952, %573
  %961 = fmul fast float %952, %574
  %962 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 0
  store i32 %956, i32* %962, align 4
  %963 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 1
  store i32 %957, i32* %963, align 4
  %964 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 2
  store i32 %958, i32* %964, align 4
  %965 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i32 0, i32 3
  store i32 %959, i32* %965, align 4
  %966 = fmul fast float %961, 4.000000e+00
  %967 = call float @dx.op.unary.f32(i32 27, float %966)  ; Round_ni(value)
  %968 = fmul fast float %960, 4.000000e+00
  %969 = call float @dx.op.unary.f32(i32 27, float %968)  ; Round_ni(value)
  %970 = fsub fast float 1.100000e+01, %967
  %971 = fmul fast float %967, 5.000000e-01
  %972 = fmul fast float %971, %970
  %973 = fadd fast float %969, 5.000000e-01
  %974 = fadd fast float %973, %972
  %975 = fptosi float %974 to i32
  %976 = fptosi float %967 to i32
  %977 = sub nsw i32 5, %976
  %978 = fmul fast float %969, 2.500000e-01
  %979 = fmul fast float %967, 2.500000e-01
  %980 = add nsw i32 %975, 1
  %981 = add nsw i32 %975, %977
  %982 = fsub fast float %960, %978
  %983 = fmul fast float %982, 4.000000e+00
  %984 = fsub fast float %961, %979
  %985 = fmul fast float %984, 4.000000e+00
  %986 = fadd fast float %982, %984
  %987 = fmul fast float %986, 4.000000e+00
  %988 = fcmp fast ogt float %987, 1.000000e+00
  br i1 %988, label %989, label %995, !dx.controlflow.hints !53

; <label>:989                                     ; preds = %950
  %990 = add nsw i32 %981, 1
  %991 = fadd fast float %985, -1.000000e+00
  %992 = fsub fast float -0.000000e+00, %991
  %993 = fadd fast float %983, -1.000000e+00
  %994 = fsub fast float -0.000000e+00, %993
  br label %995

; <label>:995                                     ; preds = %989, %950
  %996 = phi i32 [ %990, %989 ], [ %975, %950 ]
  %997 = phi i32 [ %980, %989 ], [ %981, %950 ]
  %998 = phi i32 [ %981, %989 ], [ %980, %950 ]
  %999 = phi float [ %994, %989 ], [ %985, %950 ]
  %1000 = phi float [ %992, %989 ], [ %983, %950 ]
  %1001 = fsub fast float 1.000000e+00, %999
  %1002 = fsub fast float %1001, %1000
  %1003 = lshr i32 %998, 2
  %1004 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %1003
  %1005 = load i32, i32* %1004, align 4, !tbaa !54, !noalias !58
  %1006 = shl i32 %998, 3
  %1007 = and i32 %1006, 24
  %1008 = lshr i32 %1005, %1007
  %1009 = and i32 %1008, 255
  %1010 = sitofp i32 %1009 to float
  %1011 = fmul fast float %1000, 0x3F70101020000000
  %1012 = fmul fast float %1011, %1010
  %1013 = lshr i32 %997, 2
  %1014 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %1013
  %1015 = load i32, i32* %1014, align 4, !tbaa !54, !noalias !58
  %1016 = shl i32 %997, 3
  %1017 = and i32 %1016, 24
  %1018 = lshr i32 %1015, %1017
  %1019 = and i32 %1018, 255
  %1020 = sitofp i32 %1019 to float
  %1021 = fmul fast float %999, 0x3F70101020000000
  %1022 = fmul fast float %1021, %1020
  %1023 = lshr i32 %996, 2
  %1024 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %1023
  %1025 = load i32, i32* %1024, align 4, !tbaa !54, !noalias !58
  %1026 = shl i32 %996, 3
  %1027 = and i32 %1026, 24
  %1028 = lshr i32 %1025, %1027
  %1029 = and i32 %1028, 255
  %1030 = sitofp i32 %1029 to float
  %1031 = fmul fast float %1002, 0x3F70101020000000
  %1032 = fmul fast float %1031, %1030
  %1033 = fsub fast float 1.000000e+00, %1012
  %1034 = fsub fast float %1033, %1022
  %1035 = fsub fast float %1034, %1032
  %1036 = fmul fast float %576, 2.000000e+01
  %1037 = fadd fast float %1036, 1.000000e+00
  %1038 = fmul fast float %1035, 2.000000e+01
  %1039 = fsub fast float %1037, %1038
  %1040 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  br label %1041

; <label>:1041                                    ; preds = %995, %946
  %1042 = phi float [ %1040, %995 ], [ 1.000000e+00, %946 ]
  store float %1042, float* %665, align 4, !tbaa !72, !noalias !58
  %1043 = fadd fast float %948, %1042
  %1044 = fcmp fast oeq float %1043, 0.000000e+00
  br i1 %1044, label %1045, label %1046, !dx.controlflow.hints !74

; <label>:1045                                    ; preds = %1041
  store float 2.500000e-01, float* %662, align 4
  store float 2.500000e-01, float* %663, align 4
  store float 2.500000e-01, float* %664, align 4
  store float 2.500000e-01, float* %665, align 4
  br label %1046

; <label>:1046                                    ; preds = %1045, %1041
  %1047 = phi float [ 2.500000e-01, %1045 ], [ %758, %1041 ]
  br label %1048

; <label>:1048                                    ; preds = %1312, %1046
  %1049 = phi float [ %1314, %1312 ], [ %1047, %1046 ]
  %1050 = phi float [ %1282, %1312 ], [ 0.000000e+00, %1046 ]
  %1051 = phi float [ %1283, %1312 ], [ 0.000000e+00, %1046 ]
  %1052 = phi float [ %1284, %1312 ], [ 0.000000e+00, %1046 ]
  %1053 = phi float [ %1285, %1312 ], [ 0.000000e+00, %1046 ]
  %1054 = phi float [ %1286, %1312 ], [ 0.000000e+00, %1046 ]
  %1055 = phi float [ %1287, %1312 ], [ 0.000000e+00, %1046 ]
  %1056 = phi float [ %1288, %1312 ], [ 0.000000e+00, %1046 ]
  %1057 = phi float [ %1289, %1312 ], [ 0.000000e+00, %1046 ]
  %1058 = phi float [ %1290, %1312 ], [ 0.000000e+00, %1046 ]
  %1059 = phi float [ %1291, %1312 ], [ 0.000000e+00, %1046 ]
  %1060 = phi float [ %1292, %1312 ], [ 0.000000e+00, %1046 ]
  %1061 = phi float [ %1293, %1312 ], [ 0.000000e+00, %1046 ]
  %1062 = phi float [ %1294, %1312 ], [ 0.000000e+00, %1046 ]
  %1063 = phi float [ %1295, %1312 ], [ 0.000000e+00, %1046 ]
  %1064 = phi float [ %1296, %1312 ], [ 0.000000e+00, %1046 ]
  %1065 = phi float [ %1297, %1312 ], [ 0.000000e+00, %1046 ]
  %1066 = phi float [ %1298, %1312 ], [ 0.000000e+00, %1046 ]
  %1067 = phi float [ %1299, %1312 ], [ 0.000000e+00, %1046 ]
  %1068 = phi float [ %1300, %1312 ], [ 0.000000e+00, %1046 ]
  %1069 = phi float [ %1301, %1312 ], [ 0.000000e+00, %1046 ]
  %1070 = phi float [ %1302, %1312 ], [ 0.000000e+00, %1046 ]
  %1071 = phi float [ %1303, %1312 ], [ 0.000000e+00, %1046 ]
  %1072 = phi float [ %1304, %1312 ], [ 0.000000e+00, %1046 ]
  %1073 = phi float [ %1305, %1312 ], [ 0.000000e+00, %1046 ]
  %1074 = phi float [ %1306, %1312 ], [ 0.000000e+00, %1046 ]
  %1075 = phi float [ %1307, %1312 ], [ 0.000000e+00, %1046 ]
  %1076 = phi float [ %1308, %1312 ], [ 0.000000e+00, %1046 ]
  %1077 = phi float [ %1309, %1312 ], [ 0.000000e+00, %1046 ]
  %1078 = phi i32 [ %1310, %1312 ], [ 0, %1046 ]
  %1079 = fcmp fast ogt float %1049, 0.000000e+00
  br i1 %1079, label %1080, label %1281, !dx.controlflow.hints !75

; <label>:1080                                    ; preds = %1048
  %1081 = getelementptr [4 x float], [4 x float]* %26, i32 0, i32 %1078
  %1082 = load float, float* %1081, align 4, !tbaa !72, !noalias !58
  %1083 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %1078
  %1084 = load i32, i32* %1083, align 4, !tbaa !54, !noalias !58
  %1085 = fmul fast float %1082, %1049
  %1086 = shl i32 %1084, 5
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.i32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.i32 %1087, 2
  %1091 = extractvalue %dx.types.ResRet.i32 %1087, 3
  %1092 = or i32 %1086, 16
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.i32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.i32 %1093, 2
  %1097 = shl i32 %1088, 4
  %1098 = and i32 %1097, 32752
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = lshr i32 %1088, 7
  %1101 = and i32 %1100, 32752
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = lshr i32 %1088, 22
  %1104 = shl nuw nsw i32 %1103, 5
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = and i32 %1089, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = fmul fast float %1107, 0x3F80204080000000
  %1109 = fadd fast float %1108, -1.000000e+00
  %1110 = lshr i32 %1089, 8
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F80204080000000
  %1114 = fadd fast float %1113, -1.000000e+00
  %1115 = lshr i32 %1089, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F80204080000000
  %1119 = fadd fast float %1118, -1.000000e+00
  %1120 = lshr i32 %1089, 24
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F80204080000000
  %1123 = fadd fast float %1122, -1.000000e+00
  %1124 = and i32 %1090, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = fmul fast float %1125, 0x3F80204080000000
  %1127 = fadd fast float %1126, -1.000000e+00
  %1128 = lshr i32 %1090, 8
  %1129 = and i32 %1128, 255
  %1130 = uitofp i32 %1129 to float
  %1131 = fmul fast float %1130, 0x3F80204080000000
  %1132 = fadd fast float %1131, -1.000000e+00
  %1133 = lshr i32 %1090, 16
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F80204080000000
  %1137 = fadd fast float %1136, -1.000000e+00
  %1138 = lshr i32 %1090, 24
  %1139 = uitofp i32 %1138 to float
  %1140 = fmul fast float %1139, 0x3F80204080000000
  %1141 = fadd fast float %1140, -1.000000e+00
  %1142 = and i32 %1091, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = fmul fast float %1143, 0x3F80204080000000
  %1145 = fadd fast float %1144, -1.000000e+00
  %1146 = lshr i32 %1091, 8
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F80204080000000
  %1150 = fadd fast float %1149, -1.000000e+00
  %1151 = lshr i32 %1091, 16
  %1152 = and i32 %1151, 255
  %1153 = uitofp i32 %1152 to float
  %1154 = fmul fast float %1153, 0x3F80204080000000
  %1155 = fadd fast float %1154, -1.000000e+00
  %1156 = lshr i32 %1091, 24
  %1157 = uitofp i32 %1156 to float
  %1158 = fmul fast float %1157, 0x3F80204080000000
  %1159 = fadd fast float %1158, -1.000000e+00
  %1160 = and i32 %1094, 255
  %1161 = uitofp i32 %1160 to float
  %1162 = fmul fast float %1161, 0x3F80204080000000
  %1163 = fadd fast float %1162, -1.000000e+00
  %1164 = lshr i32 %1094, 8
  %1165 = and i32 %1164, 255
  %1166 = uitofp i32 %1165 to float
  %1167 = fmul fast float %1166, 0x3F80204080000000
  %1168 = fadd fast float %1167, -1.000000e+00
  %1169 = lshr i32 %1094, 16
  %1170 = and i32 %1169, 255
  %1171 = uitofp i32 %1170 to float
  %1172 = fmul fast float %1171, 0x3F80204080000000
  %1173 = fadd fast float %1172, -1.000000e+00
  %1174 = lshr i32 %1094, 24
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1175, 0x3F80204080000000
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = and i32 %1095, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = fmul fast float %1179, 0x3F80204080000000
  %1181 = fadd fast float %1180, -1.000000e+00
  %1182 = lshr i32 %1095, 8
  %1183 = and i32 %1182, 255
  %1184 = uitofp i32 %1183 to float
  %1185 = fmul fast float %1184, 0x3F80204080000000
  %1186 = fadd fast float %1185, -1.000000e+00
  %1187 = lshr i32 %1095, 16
  %1188 = and i32 %1187, 255
  %1189 = uitofp i32 %1188 to float
  %1190 = fmul fast float %1189, 0x3F80204080000000
  %1191 = fadd fast float %1190, -1.000000e+00
  %1192 = lshr i32 %1095, 24
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1193, 0x3F80204080000000
  %1195 = fadd fast float %1194, -1.000000e+00
  %1196 = and i32 %1096, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1197, 0x3F80204080000000
  %1199 = fadd fast float %1198, -1.000000e+00
  %1200 = lshr i32 %1096, 8
  %1201 = and i32 %1200, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = fmul fast float %1202, 0x3F80204080000000
  %1204 = fadd fast float %1203, -1.000000e+00
  %1205 = lshr i32 %1096, 16
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1207, 0x3F80204080000000
  %1209 = fadd fast float %1208, -1.000000e+00
  %1210 = lshr i32 %1096, 24
  %1211 = uitofp i32 %1210 to float
  %1212 = fmul fast float %1211, 0x3F80204080000000
  %1213 = fadd fast float %1212, -1.000000e+00
  %1214 = fmul fast float %1099, %1085
  %1215 = fadd fast float %1214, %1058
  %1216 = fmul fast float %1085, 0x3FFBB67AE0000000
  %1217 = fmul fast float %1216, %1099
  %1218 = fmul fast float %1217, %1109
  %1219 = fadd fast float %1218, %1057
  %1220 = fmul fast float %1217, %1114
  %1221 = fadd fast float %1220, %1056
  %1222 = fmul fast float %1217, %1119
  %1223 = fadd fast float %1222, %1055
  %1224 = fmul fast float %1085, 0x3FFEFBDEC0000000
  %1225 = fmul fast float %1224, %1099
  %1226 = fmul fast float %1225, %1123
  %1227 = fadd fast float %1226, %1054
  %1228 = fmul fast float %1225, %1127
  %1229 = fadd fast float %1228, %1053
  %1230 = fmul fast float %1085, 0x4001E377A0000000
  %1231 = fmul fast float %1230, %1099
  %1232 = fmul fast float %1231, %1132
  %1233 = fadd fast float %1232, %1052
  %1234 = fmul fast float %1225, %1137
  %1235 = fadd fast float %1234, %1051
  %1236 = fmul fast float %1225, %1141
  %1237 = fadd fast float %1236, %1050
  %1238 = fmul fast float %1102, %1085
  %1239 = fadd fast float %1238, %1067
  %1240 = fmul fast float %1216, %1102
  %1241 = fmul fast float %1240, %1145
  %1242 = fadd fast float %1241, %1066
  %1243 = fmul fast float %1240, %1150
  %1244 = fadd fast float %1243, %1065
  %1245 = fmul fast float %1240, %1155
  %1246 = fadd fast float %1245, %1064
  %1247 = fmul fast float %1224, %1102
  %1248 = fmul fast float %1247, %1159
  %1249 = fadd fast float %1248, %1063
  %1250 = fmul fast float %1247, %1163
  %1251 = fadd fast float %1250, %1062
  %1252 = fmul fast float %1230, %1102
  %1253 = fmul fast float %1252, %1168
  %1254 = fadd fast float %1253, %1061
  %1255 = fmul fast float %1247, %1173
  %1256 = fadd fast float %1255, %1060
  %1257 = fmul fast float %1247, %1177
  %1258 = fadd fast float %1257, %1059
  %1259 = fmul fast float %1105, %1085
  %1260 = fadd fast float %1259, %1076
  %1261 = fmul fast float %1216, %1105
  %1262 = fmul fast float %1261, %1181
  %1263 = fadd fast float %1262, %1075
  %1264 = fmul fast float %1261, %1186
  %1265 = fadd fast float %1264, %1074
  %1266 = fmul fast float %1261, %1191
  %1267 = fadd fast float %1266, %1073
  %1268 = fmul fast float %1224, %1105
  %1269 = fmul fast float %1268, %1195
  %1270 = fadd fast float %1269, %1072
  %1271 = fmul fast float %1268, %1199
  %1272 = fadd fast float %1271, %1071
  %1273 = fmul fast float %1230, %1105
  %1274 = fmul fast float %1273, %1204
  %1275 = fadd fast float %1274, %1070
  %1276 = fmul fast float %1268, %1209
  %1277 = fadd fast float %1276, %1069
  %1278 = fmul fast float %1268, %1213
  %1279 = fadd fast float %1278, %1068
  %1280 = fadd fast float %1085, %1077
  br label %1281

; <label>:1281                                    ; preds = %1080, %1048
  %1282 = phi float [ %1237, %1080 ], [ %1050, %1048 ]
  %1283 = phi float [ %1235, %1080 ], [ %1051, %1048 ]
  %1284 = phi float [ %1233, %1080 ], [ %1052, %1048 ]
  %1285 = phi float [ %1229, %1080 ], [ %1053, %1048 ]
  %1286 = phi float [ %1227, %1080 ], [ %1054, %1048 ]
  %1287 = phi float [ %1223, %1080 ], [ %1055, %1048 ]
  %1288 = phi float [ %1221, %1080 ], [ %1056, %1048 ]
  %1289 = phi float [ %1219, %1080 ], [ %1057, %1048 ]
  %1290 = phi float [ %1215, %1080 ], [ %1058, %1048 ]
  %1291 = phi float [ %1258, %1080 ], [ %1059, %1048 ]
  %1292 = phi float [ %1256, %1080 ], [ %1060, %1048 ]
  %1293 = phi float [ %1254, %1080 ], [ %1061, %1048 ]
  %1294 = phi float [ %1251, %1080 ], [ %1062, %1048 ]
  %1295 = phi float [ %1249, %1080 ], [ %1063, %1048 ]
  %1296 = phi float [ %1246, %1080 ], [ %1064, %1048 ]
  %1297 = phi float [ %1244, %1080 ], [ %1065, %1048 ]
  %1298 = phi float [ %1242, %1080 ], [ %1066, %1048 ]
  %1299 = phi float [ %1239, %1080 ], [ %1067, %1048 ]
  %1300 = phi float [ %1279, %1080 ], [ %1068, %1048 ]
  %1301 = phi float [ %1277, %1080 ], [ %1069, %1048 ]
  %1302 = phi float [ %1275, %1080 ], [ %1070, %1048 ]
  %1303 = phi float [ %1272, %1080 ], [ %1071, %1048 ]
  %1304 = phi float [ %1270, %1080 ], [ %1072, %1048 ]
  %1305 = phi float [ %1267, %1080 ], [ %1073, %1048 ]
  %1306 = phi float [ %1265, %1080 ], [ %1074, %1048 ]
  %1307 = phi float [ %1263, %1080 ], [ %1075, %1048 ]
  %1308 = phi float [ %1260, %1080 ], [ %1076, %1048 ]
  %1309 = phi float [ %1280, %1080 ], [ %1077, %1048 ]
  %1310 = add nuw nsw i32 %1078, 1
  %1311 = icmp eq i32 %1310, 4
  br i1 %1311, label %1315, label %1312

; <label>:1312                                    ; preds = %1281
  %1313 = getelementptr [4 x float], [4 x float]* %28, i32 0, i32 %1310
  %1314 = load float, float* %1313, align 4, !tbaa !72, !noalias !58
  br label %1048

; <label>:1315                                    ; preds = %1281
  %1316 = fcmp fast ogt float %1309, 0.000000e+00
  %1317 = fdiv fast float 1.000000e+00, %1309
  %1318 = select i1 %1316, float %1317, float 1.000000e+00
  %1319 = fmul fast float %1318, %1290
  %1320 = fmul fast float %1318, %1289
  %1321 = fmul fast float %1318, %1288
  %1322 = fmul fast float %1318, %1287
  %1323 = fmul fast float %1318, %1286
  %1324 = fmul fast float %1318, %1285
  %1325 = fmul fast float %1318, %1284
  %1326 = fmul fast float %1318, %1283
  %1327 = fmul fast float %1318, %1282
  %1328 = fmul fast float %1318, %1299
  %1329 = fmul fast float %1318, %1298
  %1330 = fmul fast float %1318, %1297
  %1331 = fmul fast float %1318, %1296
  %1332 = fmul fast float %1318, %1295
  %1333 = fmul fast float %1318, %1294
  %1334 = fmul fast float %1318, %1293
  %1335 = fmul fast float %1318, %1292
  %1336 = fmul fast float %1318, %1291
  %1337 = fmul fast float %1318, %1308
  %1338 = fmul fast float %1318, %1307
  %1339 = fmul fast float %1318, %1306
  %1340 = fmul fast float %1318, %1305
  %1341 = fmul fast float %1318, %1304
  %1342 = fmul fast float %1318, %1303
  %1343 = fmul fast float %1318, %1302
  %1344 = fmul fast float %1318, %1301
  %1345 = fmul fast float %1318, %1300
  br label %1346

; <label>:1346                                    ; preds = %1315, %578
  %1347 = phi float [ %614, %578 ], [ %1327, %1315 ]
  %1348 = phi float [ %612, %578 ], [ %1326, %1315 ]
  %1349 = phi float [ %610, %578 ], [ %1325, %1315 ]
  %1350 = phi float [ %608, %578 ], [ %1324, %1315 ]
  %1351 = phi float [ %606, %578 ], [ %1323, %1315 ]
  %1352 = phi float [ %604, %578 ], [ %1322, %1315 ]
  %1353 = phi float [ %602, %578 ], [ %1321, %1315 ]
  %1354 = phi float [ %600, %578 ], [ %1320, %1315 ]
  %1355 = phi float [ %598, %578 ], [ %1319, %1315 ]
  %1356 = phi float [ %632, %578 ], [ %1336, %1315 ]
  %1357 = phi float [ %630, %578 ], [ %1335, %1315 ]
  %1358 = phi float [ %628, %578 ], [ %1334, %1315 ]
  %1359 = phi float [ %626, %578 ], [ %1333, %1315 ]
  %1360 = phi float [ %624, %578 ], [ %1332, %1315 ]
  %1361 = phi float [ %622, %578 ], [ %1331, %1315 ]
  %1362 = phi float [ %620, %578 ], [ %1330, %1315 ]
  %1363 = phi float [ %618, %578 ], [ %1329, %1315 ]
  %1364 = phi float [ %616, %578 ], [ %1328, %1315 ]
  %1365 = phi float [ %650, %578 ], [ %1345, %1315 ]
  %1366 = phi float [ %648, %578 ], [ %1344, %1315 ]
  %1367 = phi float [ %646, %578 ], [ %1343, %1315 ]
  %1368 = phi float [ %644, %578 ], [ %1342, %1315 ]
  %1369 = phi float [ %642, %578 ], [ %1341, %1315 ]
  %1370 = phi float [ %640, %578 ], [ %1340, %1315 ]
  %1371 = phi float [ %638, %578 ], [ %1339, %1315 ]
  %1372 = phi float [ %636, %578 ], [ %1338, %1315 ]
  %1373 = phi float [ %634, %578 ], [ %1337, %1315 ]
  %1374 = phi i32 [ -1, %578 ], [ %564, %1315 ]
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %22, i32 %23, i32 %24, i32 %1374, i32 %1374, i32 %1374, i32 %1374, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 396)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1377 = fmul fast float %1376, %1376
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1378, 2
  %1382 = fmul fast float %1355, 0x3FD20DD760000000
  %1383 = fmul fast float %1381, %1353
  %1384 = fmul fast float %1381, %1381
  %1385 = fmul fast float %1384, 0x3FEE471020000000
  %1386 = fadd fast float %1385, 0xBFD42F6020000000
  %1387 = fmul fast float %1386, %1349
  %1388 = fmul fast float %1379, %1352
  %1389 = fmul fast float %1380, %1354
  %1390 = fmul fast float %1381, 0x3FF17B1420000000
  %1391 = fmul fast float %1377, %1348
  %1392 = fmul fast float %1391, %1379
  %1393 = fmul fast float %1392, %1390
  %1394 = fmul fast float %1377, %1350
  %1395 = fmul fast float %1394, %1380
  %1396 = fmul fast float %1395, %1390
  %1397 = fmul fast float %1379, %1379
  %1398 = fmul fast float %1380, %1380
  %1399 = fsub fast float %1397, %1398
  %1400 = fmul fast float %1347, 0x3FE17B1420000000
  %1401 = fmul fast float %1400, %1399
  %1402 = fmul fast float %1351, 0x3FF17B1420000000
  %1403 = fmul fast float %1402, %1380
  %1404 = fmul fast float %1403, %1379
  %1405 = fadd fast float %1401, %1404
  %1406 = fadd fast float %1405, %1387
  %1407 = fmul fast float %1406, %1377
  %1408 = fsub fast float %1389, %1383
  %1409 = fadd fast float %1408, %1388
  %1410 = fmul fast float %1409, 0x3FDF454380000000
  %1411 = fmul fast float %1410, %1376
  %1412 = fsub fast float %1382, %1393
  %1413 = fsub fast float %1412, %1396
  %1414 = fadd fast float %1413, %1407
  %1415 = fadd fast float %1414, %1411
  %1416 = fmul fast float %1364, 0x3FD20DD760000000
  %1417 = fmul fast float %1381, %1362
  %1418 = fmul fast float %1386, %1358
  %1419 = fmul fast float %1379, %1361
  %1420 = fmul fast float %1380, %1363
  %1421 = fmul fast float %1377, %1357
  %1422 = fmul fast float %1421, %1379
  %1423 = fmul fast float %1422, %1390
  %1424 = fmul fast float %1377, %1359
  %1425 = fmul fast float %1424, %1380
  %1426 = fmul fast float %1425, %1390
  %1427 = fmul fast float %1356, 0x3FE17B1420000000
  %1428 = fmul fast float %1427, %1399
  %1429 = fmul fast float %1360, 0x3FF17B1420000000
  %1430 = fmul fast float %1429, %1380
  %1431 = fmul fast float %1430, %1379
  %1432 = fadd fast float %1428, %1431
  %1433 = fadd fast float %1432, %1418
  %1434 = fmul fast float %1433, %1377
  %1435 = fsub fast float %1420, %1417
  %1436 = fadd fast float %1435, %1419
  %1437 = fmul fast float %1436, 0x3FDF454380000000
  %1438 = fmul fast float %1437, %1376
  %1439 = fsub fast float %1416, %1423
  %1440 = fsub fast float %1439, %1426
  %1441 = fadd fast float %1440, %1434
  %1442 = fadd fast float %1441, %1438
  %1443 = fmul fast float %1373, 0x3FD20DD760000000
  %1444 = fmul fast float %1381, %1371
  %1445 = fmul fast float %1386, %1367
  %1446 = fmul fast float %1379, %1370
  %1447 = fmul fast float %1380, %1372
  %1448 = fmul fast float %1377, %1366
  %1449 = fmul fast float %1448, %1379
  %1450 = fmul fast float %1449, %1390
  %1451 = fmul fast float %1377, %1368
  %1452 = fmul fast float %1451, %1380
  %1453 = fmul fast float %1452, %1390
  %1454 = fmul fast float %1365, 0x3FE17B1420000000
  %1455 = fmul fast float %1454, %1399
  %1456 = fmul fast float %1369, 0x3FF17B1420000000
  %1457 = fmul fast float %1456, %1380
  %1458 = fmul fast float %1457, %1379
  %1459 = fadd fast float %1455, %1458
  %1460 = fadd fast float %1459, %1445
  %1461 = fmul fast float %1460, %1377
  %1462 = fsub fast float %1447, %1444
  %1463 = fadd fast float %1462, %1446
  %1464 = fmul fast float %1463, 0x3FDF454380000000
  %1465 = fmul fast float %1464, %1376
  %1466 = fsub fast float %1443, %1450
  %1467 = fsub fast float %1466, %1453
  %1468 = fadd fast float %1467, %1461
  %1469 = fadd fast float %1468, %1465
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1472 = fmul fast float %1415, %1471
  %1473 = fmul fast float %1442, %1471
  %1474 = fmul fast float %1469, %1471
  %1475 = icmp eq i32 %251, 0
  br i1 %1475, label %1512, label %1476, !dx.controlflow.hints !76

; <label>:1476                                    ; preds = %1346
  %1477 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %248, float %249, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.ResRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.ResRet.f32 %1477, 2
  %1481 = extractvalue %dx.types.ResRet.f32 %1477, 3
  %1482 = call float @dx.op.binary.f32(i32 36, float %1479, float %1480)  ; FMin(a,b)
  %1483 = call float @dx.op.binary.f32(i32 36, float %1478, float %1482)  ; FMin(a,b)
  %1484 = call float @dx.op.binary.f32(i32 36, float %1483, float %1481)  ; FMin(a,b)
  %1485 = fmul fast float %1484, 2.550000e+02
  %1486 = fadd fast float %1485, 0x3F70101020000000
  %1487 = fptoui float %1486 to i32
  %1488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.i32 %1488, 1
  %1490 = uitofp i32 %1489 to float
  %1491 = fmul fast float %1490, %250
  %1492 = fptosi float %1491 to i32
  %1493 = icmp slt i32 %1492, %1487
  br i1 %1493, label %1494, label %1512, !dx.controlflow.hints !77

; <label>:1494                                    ; preds = %1476
  %1495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %248, float %249, float %250, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1500 = fmul fast float %1499, %1496
  %1501 = fmul fast float %1499, %1497
  %1502 = fmul fast float %1499, %1498
  %1503 = fsub fast float %1500, %1472
  %1504 = fsub fast float %1501, %1473
  %1505 = fsub fast float %1502, %1474
  %1506 = fmul fast float %1503, %141
  %1507 = fmul fast float %1504, %141
  %1508 = fmul fast float %1505, %141
  %1509 = fadd fast float %1506, %1472
  %1510 = fadd fast float %1507, %1473
  %1511 = fadd fast float %1508, %1474
  br label %1512

; <label>:1512                                    ; preds = %1494, %1476, %1346
  %1513 = phi float [ %1472, %1346 ], [ %1509, %1494 ], [ %1472, %1476 ]
  %1514 = phi float [ %1473, %1346 ], [ %1510, %1494 ], [ %1473, %1476 ]
  %1515 = phi float [ %1474, %1346 ], [ %1511, %1494 ], [ %1474, %1476 ]
  %1516 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1517 = fmul fast float %1516, %1513
  %1518 = fmul fast float %1516, %1514
  %1519 = fmul fast float %1516, %1515
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 %24, float %1517, float %1518, float %1519, float %1517, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1520

; <label>:1520                                    ; preds = %1512, %51
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
!32 = !{void ()* @cs_vol_sh_sample_lightgrid_aniso, !"cs_vol_sh_sample_lightgrid_aniso", null, !4, !33}
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

