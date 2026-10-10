;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 0   xyz         1     NONE   float   xyz 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 0d84bf3efbb32f9d6f61575afea6a406
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORD                 0                 linear       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [128 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture     f32          2d      T2     t69,space2     1
;                                       UAV     f32          2d      U0             u7     1
;
;
; ViewId state:
;
; Number of inputs: 7, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5, 6 }
;   output 1 depends on inputs: { 0, 1, 4, 5, 6 }
;   output 2 depends on inputs: { 0, 1, 4, 5, 6 }
;   output 4 depends on inputs: { 0, 1, 4, 5, 6 }
;   output 5 depends on inputs: { 0, 1, 4, 5, 6 }
;   output 6 depends on inputs: { 0, 1, 4, 5, 6 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 2> >" = type { <2 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 0
  %14 = fmul fast float %13, %10
  %15 = fmul fast float %13, %11
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 1
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  %20 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.i32 %20, 0
  %22 = add i32 %21, 0
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  br i1 %19, label %24, label %26

; <label>:24                                      ; preds = %0
  %25 = call float @dx.op.unary.f32(i32 6, float %9)  ; FAbs(value)
  br label %26

; <label>:26                                      ; preds = %24, %0
  %27 = phi float [ %25, %24 ], [ %9, %0 ]
  %28 = call float @dx.op.unary.f32(i32 6, float %7)  ; FAbs(value)
  %29 = call float @dx.op.unary.f32(i32 6, float %8)  ; FAbs(value)
  %30 = fadd fast float %29, %28
  %31 = call float @dx.op.unary.f32(i32 6, float %27)  ; FAbs(value)
  %32 = fadd fast float %30, %31
  %33 = fdiv fast float 1.000000e+00, %32
  %34 = fmul fast float %33, %27
  %35 = fcmp fast oge float %34, 0.000000e+00
  %36 = fsub fast float %8, %7
  %37 = fmul fast float %33, %36
  %38 = fadd fast float %37, -1.000000e+00
  %39 = fsub fast float %7, %8
  %40 = fmul fast float %33, %39
  %41 = fadd fast float %40, 1.000000e+00
  %42 = select i1 %35, float %38, float %41
  %43 = fadd fast float %8, %7
  %44 = fmul fast float %42, 5.000000e-01
  %45 = fadd fast float %44, 1.000000e+00
  %46 = fmul fast float %43, 5.000000e-01
  %47 = fmul fast float %46, %33
  %48 = fadd fast float %47, 5.000000e-01
  br i1 %19, label %67, label %49

; <label>:49                                      ; preds = %26
  %50 = fmul fast float %42, 2.500000e-01
  %51 = fadd fast float %50, 5.000000e-01
  %52 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %53 = extractvalue %dx.types.Dimensions %52, 0
  %54 = sitofp i32 %53 to float
  %55 = extractvalue %dx.types.Dimensions %52, 1
  %56 = sitofp i32 %55 to float
  %57 = fdiv fast float 8.000000e+00, %54
  %58 = fdiv fast float 4.000000e+00, %56
  %59 = fmul fast float %57, 2.000000e+00
  %60 = fmul fast float %58, 2.000000e+00
  %61 = fsub fast float 1.000000e+00, %59
  %62 = fsub fast float 1.000000e+00, %60
  %63 = fmul fast float %61, %51
  %64 = fmul fast float %62, %48
  %65 = fadd fast float %63, %57
  %66 = fadd fast float %64, %58
  br label %67

; <label>:67                                      ; preds = %49, %26
  %68 = phi float [ %45, %26 ], [ %65, %49 ]
  %69 = phi float [ %48, %26 ], [ %66, %49 ]
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %4, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = extractvalue %dx.types.ResRet.f32 %70, 1
  %73 = extractvalue %dx.types.ResRet.f32 %70, 2
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = bitcast i32 %75 to float
  %77 = fmul fast float %76, %72
  %78 = fmul fast float %76, %73
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  %83 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = add i32 %84, 0
  %86 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  br i1 %82, label %87, label %89

; <label>:87                                      ; preds = %67
  %88 = call float @dx.op.unary.f32(i32 6, float %9)  ; FAbs(value)
  br label %89

; <label>:89                                      ; preds = %87, %67
  %90 = phi float [ %88, %87 ], [ %9, %67 ]
  %91 = call float @dx.op.unary.f32(i32 6, float %90)  ; FAbs(value)
  %92 = fadd fast float %30, %91
  %93 = fdiv fast float 1.000000e+00, %92
  %94 = fmul fast float %93, %90
  %95 = fcmp fast oge float %94, 0.000000e+00
  %96 = fmul fast float %93, %36
  %97 = fadd fast float %96, -1.000000e+00
  %98 = fmul fast float %93, %39
  %99 = fadd fast float %98, 1.000000e+00
  %100 = select i1 %95, float %97, float %99
  %101 = fmul fast float %100, 5.000000e-01
  %102 = fadd fast float %101, 1.000000e+00
  %103 = fmul fast float %46, %93
  %104 = fadd fast float %103, 5.000000e-01
  br i1 %82, label %123, label %105

; <label>:105                                     ; preds = %89
  %106 = fmul fast float %100, 2.500000e-01
  %107 = fadd fast float %106, 5.000000e-01
  %108 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %86, i32 0)  ; GetDimensions(handle,mipLevel)
  %109 = extractvalue %dx.types.Dimensions %108, 0
  %110 = sitofp i32 %109 to float
  %111 = extractvalue %dx.types.Dimensions %108, 1
  %112 = sitofp i32 %111 to float
  %113 = fdiv fast float 8.000000e+00, %110
  %114 = fdiv fast float 4.000000e+00, %112
  %115 = fmul fast float %113, 2.000000e+00
  %116 = fmul fast float %114, 2.000000e+00
  %117 = fsub fast float 1.000000e+00, %115
  %118 = fsub fast float 1.000000e+00, %116
  %119 = fmul fast float %117, %107
  %120 = fmul fast float %118, %104
  %121 = fadd fast float %119, %113
  %122 = fadd fast float %120, %114
  br label %123

; <label>:123                                     ; preds = %105, %89
  %124 = phi float [ %102, %89 ], [ %121, %105 ]
  %125 = phi float [ %104, %89 ], [ %122, %105 ]
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %86, %dx.types.Handle %4, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = fdiv fast float 1.000000e+00, %129
  %131 = fmul fast float %130, %127
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.i32 %133, 3
  %135 = and i32 %134, 3
  %136 = icmp ne i32 %135, 0
  %137 = and i32 %134, 4
  %138 = icmp ne i32 %137, 0
  %139 = and i1 %136, %138
  br i1 %139, label %140, label %151

; <label>:140                                     ; preds = %123
  %141 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %142 = fmul fast float %141, %15
  %143 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %144 = fmul fast float %143, %14
  %145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %4, float %144, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %146 = extractvalue %dx.types.ResRet.f32 %145, 0
  %147 = fsub fast float 1.000000e+00, %146
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = fcmp fast olt float %147, %149
  br label %154

; <label>:151                                     ; preds = %123
  %152 = icmp eq i32 %137, 0
  %153 = and i1 %136, %152
  br label %154

; <label>:154                                     ; preds = %151, %140
  %155 = phi i1 [ %150, %140 ], [ %153, %151 ]
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  br i1 %155, label %158, label %162

; <label>:158                                     ; preds = %154
  %159 = fadd fast float %71, %72
  %160 = fmul fast float %131, %129
  %161 = call float @dx.op.unary.f32(i32 7, float %160)  ; Saturate(value)
  br label %165

; <label>:162                                     ; preds = %154
  %163 = fmul fast float %77, %157
  %164 = fmul fast float %78, %157
  br label %165

; <label>:165                                     ; preds = %162, %158
  %166 = phi float [ %159, %158 ], [ %71, %162 ]
  %167 = phi float [ %161, %158 ], [ %163, %162 ]
  %168 = phi float [ 1.000000e+00, %158 ], [ %164, %162 ]
  %169 = fmul float %76, %166
  %170 = fmul float %169, %157
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 2
  %173 = fmul fast float %172, 0x3FE3C6EF40000000
  %174 = call float @dx.op.dot2.f32(i32 54, float %14, float %15, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %175 = call float @dx.op.unary.f32(i32 13, float %174)  ; Sin(value)
  %176 = fmul fast float %175, 0x40E55DD180000000
  %177 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %178 = fadd fast float %177, %173
  %179 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %180 = fadd fast float %179, 0x3FE3C6EF40000000
  %181 = call float @dx.op.unary.f32(i32 22, float %180)  ; Frc(value)
  %182 = call float @dx.op.unary.f32(i32 23, float %170)  ; Log(value)
  %183 = fadd fast float %182, -7.000000e+00
  %184 = call float @dx.op.unary.f32(i32 21, float %183)  ; Exp(value)
  %185 = fmul fast float %181, 2.000000e+00
  %186 = fadd fast float %185, -1.000000e+00
  %187 = fmul fast float %184, %186
  %188 = fcmp fast ogt float %170, 0.000000e+00
  %189 = select i1 %188, float %187, float 0.000000e+00
  %190 = fadd fast float %189, %170
  %191 = fadd fast float %179, 0x3FF3C6EF40000000
  %192 = call float @dx.op.unary.f32(i32 22, float %191)  ; Frc(value)
  %193 = call float @dx.op.unary.f32(i32 23, float %167)  ; Log(value)
  %194 = fadd fast float %193, -7.000000e+00
  %195 = call float @dx.op.unary.f32(i32 21, float %194)  ; Exp(value)
  %196 = fmul fast float %192, 2.000000e+00
  %197 = fadd fast float %196, -1.000000e+00
  %198 = fmul fast float %195, %197
  %199 = fcmp fast ogt float %167, 0.000000e+00
  %200 = select i1 %199, float %198, float 0.000000e+00
  %201 = fadd fast float %200, %167
  %202 = fadd fast float %179, 0x3FFDAA66E0000000
  %203 = call float @dx.op.unary.f32(i32 22, float %202)  ; Frc(value)
  %204 = call float @dx.op.unary.f32(i32 23, float %168)  ; Log(value)
  %205 = fadd fast float %204, -6.000000e+00
  %206 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %207 = fmul fast float %203, 2.000000e+00
  %208 = fadd fast float %207, -1.000000e+00
  %209 = fmul fast float %206, %208
  %210 = fcmp fast ogt float %168, 0.000000e+00
  %211 = select i1 %210, float %209, float 0.000000e+00
  %212 = fadd fast float %211, %168
  %213 = fptoui float %14 to i32
  %214 = fptoui float %15 to i32
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %213, i32 %214, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %215 = select i1 %155, float 0.000000e+00, float %201
  %216 = select i1 %155, float 0.000000e+00, float %212
  %217 = select i1 %155, float %190, float 0.000000e+00
  %218 = select i1 %155, float %201, float 0.000000e+00
  %219 = select i1 %155, float %212, float 0.000000e+00
  %220 = call float @dx.op.binary.f32(i32 36, float %217, float 3.225500e+04)  ; FMin(a,b)
  %221 = call float @dx.op.binary.f32(i32 36, float %218, float 3.225500e+04)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 36, float %219, float 3.225500e+04)  ; FMin(a,b)
  %223 = call float @dx.op.binary.f32(i32 36, float %190, float 3.225500e+04)  ; FMin(a,b)
  %224 = call float @dx.op.binary.f32(i32 36, float %215, float 3.225500e+04)  ; FMin(a,b)
  %225 = call float @dx.op.binary.f32(i32 36, float %216, float 3.225500e+04)  ; FMin(a,b)
  %226 = select i1 %155, float %221, float %224
  %227 = select i1 %155, float %222, float %225
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %223)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %226)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %227)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %221)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %222)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!dx.viewIdState = !{!17}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !10, !12, !15}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!15 = !{!16}
!16 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!17 = !{[9 x i32] [i32 7, i32 8, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119]}
!18 = !{void ()* @ps_main, !"ps_main", !19, !4, !32}
!19 = !{!20, !27, null}
!20 = !{!21, !24, !26}
!21 = !{i32 0, !"SV_Position", i8 9, i8 3, !22, i8 4, i32 1, i8 4, i32 0, i8 0, !23}
!22 = !{i32 0}
!23 = !{i32 3, i32 3}
!24 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !22, i8 2, i32 1, i8 3, i32 1, i8 0, !25}
!25 = !{i32 3, i32 7}
!26 = !{i32 2, !"SV_SampleIndex", i8 5, i8 12, !22, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!27 = !{!28, !30}
!28 = !{i32 0, !"SV_Target", i8 9, i8 16, !22, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!29 = !{i32 3, i32 15}
!30 = !{i32 1, !"SV_Target", i8 9, i8 16, !31, i8 0, i32 1, i8 4, i32 1, i8 0, !29}
!31 = !{i32 1}
!32 = !{i32 0, i64 24}

