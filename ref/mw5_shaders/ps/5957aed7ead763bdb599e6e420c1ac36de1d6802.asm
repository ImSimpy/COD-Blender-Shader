;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: f0bb266460d2988ad0d68a26566b7917
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORD                 0                 linear       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
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
;   [224 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4     t73,space2     1
;                                   texture     f32          2d      T5             t3     1
;                                   texture    byte         r/o      T6     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

@Gx.v.v = internal unnamed_addr constant [9 x float] [float -1.000000e+00, float -2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00]
@Gy.v.v = internal unnamed_addr constant [9 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 0.000000e+00, float 2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00]

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = alloca [3 x i32], align 4
  %16 = alloca [3 x i32], align 4
  %17 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %18 = extractvalue %dx.types.CBufRet.f32 %17, 0
  %19 = extractvalue %dx.types.CBufRet.f32 %17, 1
  %20 = extractvalue %dx.types.CBufRet.f32 %17, 2
  %21 = extractvalue %dx.types.CBufRet.f32 %17, 3
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %25 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %35 = fcmp fast une float %28, 0.000000e+00
  %36 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %37 = extractvalue %dx.types.ResRet.f32 %36, 0
  %38 = extractvalue %dx.types.ResRet.f32 %36, 1
  %39 = extractvalue %dx.types.ResRet.f32 %36, 2
  %40 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %8, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = fsub fast float 1.000000e+00, %41
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = fcmp fast olt float %42, %44
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fcmp fast oge float %38, %47
  br i1 %35, label %49, label %227

; <label>:49                                      ; preds = %0
  %50 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.i32 %50, 3
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %51, 4
  %55 = icmp eq i32 %54, 0
  %56 = and i1 %53, %55
  %57 = and i1 %48, %56
  br i1 %57, label %58, label %90

; <label>:58                                      ; preds = %49
  %59 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %60 = fmul fast float %59, 0x3FDAAAAAA0000000
  %61 = call float @dx.op.unary.f32(i32 21, float %60)  ; Exp(value)
  %62 = fsub fast float 1.000000e+00, %61
  %63 = call float @dx.op.unary.f32(i32 23, float %62)  ; Log(value)
  %64 = fmul fast float %63, 0x4003333340000000
  %65 = call float @dx.op.unary.f32(i32 21, float %64)  ; Exp(value)
  %66 = fdiv fast float %61, %62
  %67 = fadd fast float %66, %37
  %68 = fadd fast float %66, %38
  %69 = fadd fast float %66, %39
  %70 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %71 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %72 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %73 = call float @dx.op.unary.f32(i32 23, float %70)  ; Log(value)
  %74 = call float @dx.op.unary.f32(i32 23, float %71)  ; Log(value)
  %75 = call float @dx.op.unary.f32(i32 23, float %72)  ; Log(value)
  %76 = fmul fast float %73, 0x4003333340000000
  %77 = fmul fast float %74, 0x4003333340000000
  %78 = fmul fast float %75, 0x4003333340000000
  %79 = call float @dx.op.unary.f32(i32 21, float %76)  ; Exp(value)
  %80 = call float @dx.op.unary.f32(i32 21, float %77)  ; Exp(value)
  %81 = call float @dx.op.unary.f32(i32 21, float %78)  ; Exp(value)
  %82 = fmul fast float %79, %65
  %83 = fmul fast float %80, %65
  %84 = fmul fast float %81, %65
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %87 = fmul fast float %82, %86
  %88 = fmul fast float %83, %86
  %89 = fmul fast float %84, %86
  br label %186

; <label>:90                                      ; preds = %49
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = fcmp fast ugt float %92, 0.000000e+00
  br i1 %99, label %100, label %150

; <label>:100                                     ; preds = %90
  %101 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %102 = fcmp fast ogt float %101, 0.000000e+00
  %103 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %107 = fadd fast float %13, -5.000000e-01
  %108 = fadd fast float %14, -5.000000e-01
  %109 = fmul fast float %106, %107
  %110 = fmul fast float %105, %108
  %111 = fadd fast float %109, %104
  %112 = fadd fast float %110, %103
  br i1 %102, label %113, label %120

; <label>:113                                     ; preds = %100
  %114 = fmul fast float %111, 5.000000e-01
  %115 = fmul fast float %112, 5.000000e-01
  %116 = fadd fast float %114, 5.000000e-01
  %117 = fadd fast float %115, 5.000000e-01
  %118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %116, float %117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  br label %133

; <label>:120                                     ; preds = %100
  %121 = fsub fast float -0.000000e+00, %94
  %122 = fsub fast float -0.000000e+00, %95
  %123 = call float @dx.op.binary.f32(i32 35, float %111, float %121)  ; FMax(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %112, float %122)  ; FMax(a,b)
  %125 = call float @dx.op.binary.f32(i32 36, float %123, float %94)  ; FMin(a,b)
  %126 = call float @dx.op.binary.f32(i32 36, float %124, float %95)  ; FMin(a,b)
  %127 = fsub fast float %111, %125
  %128 = fsub fast float %112, %126
  %129 = fmul fast float %127, %127
  %130 = fmul fast float %128, %128
  %131 = fadd fast float %130, %129
  %132 = call float @dx.op.unary.f32(i32 24, float %131)  ; Sqrt(value)
  br label %133

; <label>:133                                     ; preds = %120, %113
  %134 = phi float [ %119, %113 ], [ %132, %120 ]
  %135 = fmul fast float %134, %97
  %136 = fadd fast float %135, %98
  %137 = call float @dx.op.unary.f32(i32 7, float %136)  ; Saturate(value)
  %138 = fmul fast float %137, %137
  %139 = fmul fast float %137, 2.000000e+00
  %140 = fsub fast float 3.000000e+00, %139
  %141 = fmul fast float %138, %140
  %142 = fsub fast float %141, %137
  %143 = fmul fast float %142, 0x3FE3333340000000
  %144 = fadd fast float %143, %137
  %145 = fmul fast float %144, %92
  %146 = fsub fast float 1.000000e+00, %145
  %147 = fmul fast float %146, %37
  %148 = fmul fast float %146, %38
  %149 = fmul fast float %146, %39
  br label %150

; <label>:150                                     ; preds = %133, %90
  %151 = phi float [ %147, %133 ], [ %37, %90 ]
  %152 = phi float [ %148, %133 ], [ %38, %90 ]
  %153 = phi float [ %149, %133 ], [ %39, %90 ]
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %160, float %161, float %162)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.f32 %164, 0
  %166 = extractvalue %dx.types.CBufRet.f32 %164, 1
  %167 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %168 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fmul fast float %170, %158
  %172 = fmul fast float %170, %163
  %173 = fmul fast float %170, %168
  br i1 %45, label %174, label %180

; <label>:174                                     ; preds = %150
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 1
  %177 = fmul fast float %171, %176
  %178 = fmul fast float %172, %176
  %179 = fmul fast float %173, %176
  br label %186

; <label>:180                                     ; preds = %150
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %183 = fmul fast float %171, %182
  %184 = fmul fast float %172, %182
  %185 = fmul fast float %173, %182
  br label %186

; <label>:186                                     ; preds = %180, %174, %58
  %187 = phi float [ %87, %58 ], [ %177, %174 ], [ %183, %180 ]
  %188 = phi float [ %88, %58 ], [ %178, %174 ], [ %184, %180 ]
  %189 = phi float [ %89, %58 ], [ %179, %174 ], [ %185, %180 ]
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = bitcast float %191 to i32
  %193 = icmp eq i32 %192, 4
  br i1 %193, label %194, label %217

; <label>:194                                     ; preds = %186
  %195 = fmul fast float %187, 0x3FEA519BC0000000
  %196 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %188, float %195)  ; FMad(a,b,c)
  %197 = fmul fast float %187, 0x3FA0FED480000000
  %198 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %188, float %197)  ; FMad(a,b,c)
  %199 = fmul fast float %187, 0x3F917E1C00000000
  %200 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %188, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %189, float %200)  ; FMad(a,b,c)
  %202 = call float @dx.op.binary.f32(i32 35, float %187, float %188)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %202, float %189)  ; FMax(a,b)
  %204 = fadd fast float %203, -1.000000e+00
  %205 = fmul fast float %204, 2.500000e-01
  %206 = call float @dx.op.unary.f32(i32 7, float %205)  ; Saturate(value)
  %207 = fsub fast float 1.000000e+00, %206
  %208 = fmul fast float %207, %196
  %209 = fmul fast float %207, %198
  %210 = fmul fast float %207, %201
  %211 = fmul fast float %206, %187
  %212 = fmul fast float %206, %188
  %213 = fmul fast float %206, %189
  %214 = fadd fast float %208, %211
  %215 = fadd fast float %209, %212
  %216 = fadd fast float %210, %213
  br label %227

; <label>:217                                     ; preds = %186
  %218 = fmul fast float %187, 0x3FE413A920000000
  %219 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %188, float %218)  ; FMad(a,b,c)
  %220 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %189, float %219)  ; FMad(a,b,c)
  %221 = fmul fast float %187, 0x3FB1B089A0000000
  %222 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %188, float %221)  ; FMad(a,b,c)
  %223 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %189, float %222)  ; FMad(a,b,c)
  %224 = fmul fast float %187, 0x3F90CB2960000000
  %225 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %188, float %224)  ; FMad(a,b,c)
  %226 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %189, float %225)  ; FMad(a,b,c)
  br label %227

; <label>:227                                     ; preds = %217, %194, %0
  %228 = phi float [ %214, %194 ], [ %220, %217 ], [ %37, %0 ]
  %229 = phi float [ %215, %194 ], [ %223, %217 ], [ %38, %0 ]
  %230 = phi float [ %216, %194 ], [ %226, %217 ], [ %39, %0 ]
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = fcmp fast ogt float %232, 0.000000e+00
  br i1 %233, label %234, label %278

; <label>:234                                     ; preds = %227
  %235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %236 = extractvalue %dx.types.CBufRet.f32 %235, 0
  %237 = extractvalue %dx.types.CBufRet.f32 %235, 1
  %238 = fmul fast float %236, %13
  %239 = fmul fast float %237, %14
  %240 = fptoui float %238 to i32
  %241 = fptoui float %239 to i32
  %242 = lshr i32 %240, 3
  %243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.i32 %243, 1
  %245 = shl i32 %244, 1
  %246 = lshr i32 %241, 5
  %247 = extractvalue %dx.types.CBufRet.i32 %243, 0
  %248 = mul i32 %246, %247
  %249 = lshr i32 %240, 6
  %250 = add i32 %249, %245
  %251 = add i32 %250, %248
  %252 = shl i32 %251, 2
  %253 = and i32 %241, 24
  %254 = and i32 %242, 7
  %255 = or i32 %254, %253
  %256 = shl i32 1, %255
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %256, %258
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %278, label %261

; <label>:261                                     ; preds = %234
  %262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = fcmp fast oeq float %263, 0.000000e+00
  br i1 %264, label %265, label %278

; <label>:265                                     ; preds = %261
  %266 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = fsub fast float 1.000000e+00, %270
  %272 = fmul fast float %271, %228
  %273 = fmul fast float %271, %229
  %274 = fmul fast float %271, %230
  %275 = fadd fast float %272, %267
  %276 = fadd fast float %273, %268
  %277 = fadd fast float %274, %269
  br label %278

; <label>:278                                     ; preds = %265, %261, %234, %227
  %279 = phi float [ %275, %265 ], [ %228, %261 ], [ %228, %234 ], [ %228, %227 ]
  %280 = phi float [ %276, %265 ], [ %229, %261 ], [ %229, %234 ], [ %229, %227 ]
  %281 = phi float [ %277, %265 ], [ %230, %261 ], [ %230, %234 ], [ %230, %227 ]
  %282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.i32 %282, 3
  %284 = and i32 %283, 8
  %285 = icmp ne i32 %284, 0
  %286 = or i1 %45, %285
  br i1 %286, label %287, label %480

; <label>:287                                     ; preds = %278
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 3
  br label %293

; <label>:293                                     ; preds = %431, %287
  %294 = phi float [ 0.000000e+00, %287 ], [ %419, %431 ]
  %295 = phi float [ 0.000000e+00, %287 ], [ %428, %431 ]
  %296 = phi i32 [ 0, %287 ], [ %432, %431 ]
  br label %297

; <label>:297                                     ; preds = %407, %293
  %298 = phi float [ %294, %293 ], [ %419, %407 ]
  %299 = phi float [ %295, %293 ], [ %428, %407 ]
  %300 = phi i32 [ 0, %293 ], [ %429, %407 ]
  %301 = add nsw i32 %296, -1
  %302 = sitofp i32 %301 to float
  %303 = add nsw i32 %300, -1
  %304 = sitofp i32 %303 to float
  %305 = fmul fast float %302, %291
  %306 = fmul fast float %304, %292
  %307 = fadd fast float %305, %13
  %308 = fadd fast float %306, %14
  %309 = icmp eq i32 %296, 1
  %310 = icmp eq i32 %300, 1
  %311 = and i1 %309, %310
  %312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %8, float %307, float %308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = extractvalue %dx.types.ResRet.f32 %312, 1
  %315 = select i1 %311, float %37, float %313
  %316 = select i1 %311, float %38, float %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = fcmp fast ult float %316, %318
  br i1 %319, label %337, label %320

; <label>:320                                     ; preds = %297
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %316, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = extractvalue %dx.types.ResRet.f32 %323, 1
  %326 = extractvalue %dx.types.ResRet.f32 %323, 2
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = fcmp fast ogt float %328, 1.500000e+00
  %330 = select i1 %329, float %324, float %325
  %331 = select i1 %329, float %324, float %326
  %332 = fmul fast float %322, %30
  %333 = fmul fast float %332, %324
  %334 = fmul fast float %332, %330
  %335 = fmul fast float %332, %331
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %407

; <label>:337                                     ; preds = %297
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = fcmp fast ugt float %339, 0.000000e+00
  br i1 %346, label %347, label %395

; <label>:347                                     ; preds = %337
  %348 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %349 = fcmp fast ogt float %348, 0.000000e+00
  %350 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %354 = fadd fast float %307, -5.000000e-01
  %355 = fadd fast float %308, -5.000000e-01
  %356 = fmul fast float %353, %354
  %357 = fmul fast float %352, %355
  %358 = fadd fast float %356, %351
  %359 = fadd fast float %357, %350
  br i1 %349, label %360, label %367

; <label>:360                                     ; preds = %347
  %361 = fmul fast float %358, 5.000000e-01
  %362 = fmul fast float %359, 5.000000e-01
  %363 = fadd fast float %361, 5.000000e-01
  %364 = fadd fast float %362, 5.000000e-01
  %365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %8, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  br label %380

; <label>:367                                     ; preds = %347
  %368 = fsub fast float -0.000000e+00, %341
  %369 = fsub fast float -0.000000e+00, %342
  %370 = call float @dx.op.binary.f32(i32 35, float %358, float %368)  ; FMax(a,b)
  %371 = call float @dx.op.binary.f32(i32 35, float %359, float %369)  ; FMax(a,b)
  %372 = call float @dx.op.binary.f32(i32 36, float %370, float %341)  ; FMin(a,b)
  %373 = call float @dx.op.binary.f32(i32 36, float %371, float %342)  ; FMin(a,b)
  %374 = fsub fast float %358, %372
  %375 = fsub fast float %359, %373
  %376 = fmul fast float %374, %374
  %377 = fmul fast float %375, %375
  %378 = fadd fast float %377, %376
  %379 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  br label %380

; <label>:380                                     ; preds = %367, %360
  %381 = phi float [ %366, %360 ], [ %379, %367 ]
  %382 = fmul fast float %381, %344
  %383 = fadd fast float %382, %345
  %384 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %385 = fmul fast float %384, %384
  %386 = fmul fast float %384, 2.000000e+00
  %387 = fsub fast float 3.000000e+00, %386
  %388 = fmul fast float %385, %387
  %389 = fsub fast float %388, %384
  %390 = fmul fast float %389, 0x3FE3333340000000
  %391 = fadd fast float %390, %384
  %392 = fmul fast float %391, %339
  %393 = fsub fast float 1.000000e+00, %392
  %394 = fmul fast float %393, %315
  br label %395

; <label>:395                                     ; preds = %380, %337
  %396 = phi float [ %394, %380 ], [ %315, %337 ]
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = call float @dx.op.dot3.f32(i32 55, float %396, float %396, float %396, float %398, float %399, float %400)  ; Dot3(ax,ay,az,bx,by,bz)
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %404 = fmul fast float %289, %29
  %405 = fmul fast float %404, %401
  %406 = fmul fast float %405, %403
  br label %407

; <label>:407                                     ; preds = %395, %320
  %408 = phi float [ %336, %320 ], [ %406, %395 ]
  %409 = add nuw nsw i32 %296, 3
  %410 = add nuw nsw i32 %296, 6
  %411 = getelementptr [3 x i32], [3 x i32]* %16, i32 0, i32 0
  store i32 %296, i32* %411, align 4
  %412 = getelementptr [3 x i32], [3 x i32]* %16, i32 0, i32 1
  store i32 %409, i32* %412, align 4
  %413 = getelementptr [3 x i32], [3 x i32]* %16, i32 0, i32 2
  store i32 %410, i32* %413, align 4
  %414 = getelementptr [3 x i32], [3 x i32]* %16, i32 0, i32 %300
  %415 = load i32, i32* %414, align 4
  %416 = getelementptr [9 x float], [9 x float]* @Gx.v.v, i32 0, i32 %415
  %417 = load float, float* %416, align 4, !tbaa !33
  %418 = fmul fast float %417, %408
  %419 = fadd fast float %418, %298
  %420 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 0
  store i32 %296, i32* %420, align 4
  %421 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 1
  store i32 %409, i32* %421, align 4
  %422 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 2
  store i32 %410, i32* %422, align 4
  %423 = getelementptr [3 x i32], [3 x i32]* %15, i32 0, i32 %300
  %424 = load i32, i32* %423, align 4
  %425 = getelementptr [9 x float], [9 x float]* @Gy.v.v, i32 0, i32 %424
  %426 = load float, float* %425, align 4, !tbaa !33
  %427 = fmul fast float %426, %408
  %428 = fadd fast float %427, %299
  %429 = add nuw nsw i32 %300, 1
  %430 = icmp eq i32 %429, 3
  br i1 %430, label %431, label %297

; <label>:431                                     ; preds = %407
  %432 = add nuw nsw i32 %296, 1
  %433 = icmp eq i32 %432, 3
  br i1 %433, label %434, label %293

; <label>:434                                     ; preds = %431
  %435 = call float @dx.op.unary.f32(i32 7, float %37)  ; Saturate(value)
  %436 = fmul fast float %419, %419
  %437 = fmul fast float %428, %428
  %438 = fadd fast float %437, %436
  %439 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %438)  ; FMax(a,b)
  %440 = call float @dx.op.unary.f32(i32 24, float %439)  ; Sqrt(value)
  %441 = fmul fast float %435, %26
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = fmul fast float %279, %28
  %444 = fmul fast float %280, %28
  %445 = fmul fast float %281, %28
  %446 = select i1 %35, float %443, float %442
  %447 = select i1 %35, float %444, float %442
  %448 = select i1 %35, float %445, float %442
  %449 = fsub fast float %23, %446
  %450 = fsub fast float %24, %447
  %451 = fsub fast float %25, %448
  %452 = fmul fast float %449, %442
  %453 = fmul fast float %450, %442
  %454 = fmul fast float %451, %442
  %455 = fadd fast float %452, %446
  %456 = fadd fast float %453, %447
  %457 = fadd fast float %454, %448
  %458 = fmul fast float %435, %21
  %459 = fsub fast float 1.000000e+00, %458
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  br i1 %48, label %461, label %464

; <label>:461                                     ; preds = %434
  %462 = fmul fast float %440, %33
  %463 = fmul fast float %462, %460
  br label %468

; <label>:464                                     ; preds = %434
  %465 = fmul fast float %440, %31
  %466 = fmul fast float %465, %460
  %467 = call float @dx.op.unary.f32(i32 7, float %466)  ; Saturate(value)
  br label %468

; <label>:468                                     ; preds = %464, %461
  %469 = phi float [ %463, %461 ], [ %467, %464 ]
  %470 = fmul fast float %469, %34
  %471 = fsub fast float %18, %455
  %472 = fsub fast float %19, %456
  %473 = fsub fast float %20, %457
  %474 = fmul fast float %470, %471
  %475 = fmul fast float %470, %472
  %476 = fmul fast float %470, %473
  %477 = fadd fast float %474, %455
  %478 = fadd fast float %475, %456
  %479 = fadd fast float %476, %457
  br label %480

; <label>:480                                     ; preds = %468, %278
  %481 = phi float [ %477, %468 ], [ %279, %278 ]
  %482 = phi float [ %478, %468 ], [ %280, %278 ]
  %483 = phi float [ %479, %468 ], [ %281, %278 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %481)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %482)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %483)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.viewIdState = !{!21}
!dx.entryPoints = !{!22}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, !18}
!5 = !{!6, !8, !9, !10, !11, !12, !13}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!17 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!18 = !{!19, !20}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!21 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, !32}
!23 = !{!24, !29, null}
!24 = !{!25, !27}
!25 = !{i32 0, !"SV_Position", i8 9, i8 3, !26, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!26 = !{i32 0}
!27 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 1, i8 0, !28}
!28 = !{i32 3, i32 3}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 0, i64 16}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}

