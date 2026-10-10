;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 054abd0709034d7fa64870b441261d59
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
;   [112 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture    byte         r/o      T1     t15,space1     1
;                                   texture     f32          2d      T2             t1     1
;                                   texture     u32          2d      T3             t2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5     t48,space2     1
;                                   texture     f32          2d      T6     t49,space2     1
;                                   texture     f32          2d      T7     t50,space2     1
;                                   texture     f32          2d      T8             t3     1
;                                   texture     f32          2d      T9             t4     1
;                                   texture     u32          2d     T10             t5     1
;                                   texture     u32          2d     T11             t6     1
;                                   texture    byte         r/o     T12     t68,space1     1
;                                   texture     f32          2d     T13             t7     1
;                                   texture     f32          2d     T14             t8     1
;                                   texture     f32          2d     T15             t9     1
;
;
; ViewId state:
;
; Number of inputs: 4, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1 }
;   output 1 depends on inputs: { 0, 1 }
;   output 2 depends on inputs: { 0, 1 }
;   output 3 depends on inputs: { 0, 1 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = alloca [64 x i32], align 4
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 244)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = bitcast float %25 to i32
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %28 = bitcast float %27 to i32
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %32 = fmul fast float %30, %21
  %33 = fmul fast float %31, %22
  %34 = uitofp i32 %28 to float
  %35 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float %34)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = fcmp fast ogt float %36, -1.000000e+00
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %40 = select i1 %37, float %39, float 1.000000e+00
  %41 = fadd fast float %36, 1.000000e+00
  %42 = fmul fast float %40, %41
  %43 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %44 = extractvalue %dx.types.CBufRet.f32 %38, 3
  %45 = fcmp fast oge float %43, %44
  %46 = extractvalue %dx.types.CBufRet.f32 %24, 3
  %47 = icmp eq i32 %26, 1
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %0
  %49 = fmul fast float %43, 3.906250e-03
  %50 = fmul fast float %43, 9.765625e-04
  %51 = fmul fast float %43, 0x3F30000000000000
  br label %554

; <label>:52                                      ; preds = %0
  %53 = icmp eq i32 %26, 2
  br i1 %53, label %54, label %65

; <label>:54                                      ; preds = %52
  %55 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float %34)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = fcmp fast ogt float %56, -1.000000e+00
  %58 = select i1 %57, float %39, float 1.000000e+00
  %59 = fadd fast float %56, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = fmul fast float %61, 3.906250e-03
  %63 = fmul fast float %61, 9.765625e-04
  %64 = fmul fast float %61, 0x3F30000000000000
  br label %554

; <label>:65                                      ; preds = %52
  %66 = icmp eq i32 %26, 3
  br i1 %66, label %67, label %98

; <label>:67                                      ; preds = %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = fmul fast float %69, %32
  %72 = fmul fast float %70, %33
  %73 = fptoui float %71 to i32
  %74 = fptoui float %72 to i32
  %75 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.i32 %75, 1
  %77 = shl i32 %76, 2
  %78 = lshr i32 %74, 2
  %79 = extractvalue %dx.types.CBufRet.i32 %75, 2
  %80 = mul i32 %78, %79
  %81 = lshr i32 %73, 3
  %82 = add i32 %81, %77
  %83 = add i32 %82, %80
  %84 = shl i32 %83, 2
  %85 = shl i32 %74, 3
  %86 = and i32 %85, 24
  %87 = and i32 %73, 7
  %88 = or i32 %86, %87
  %89 = shl i32 1, %88
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %84, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = and i32 %89, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %554, label %94

; <label>:94                                      ; preds = %67
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %73, i32 %74, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 2
  %97 = extractvalue %dx.types.ResRet.f32 %95, 3
  br label %554

; <label>:98                                      ; preds = %65
  %99 = icmp eq i32 %26, 4
  br i1 %99, label %100, label %153

; <label>:100                                     ; preds = %98
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = fmul fast float %102, %32
  %105 = fmul fast float %103, %33
  %106 = fptoui float %104 to i32
  %107 = fptoui float %105 to i32
  %108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.i32 %108, 1
  %110 = shl i32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.i32 %108, 3
  %112 = shl i32 %111, 1
  %113 = add i32 %112, %110
  %114 = lshr i32 %107, 2
  %115 = extractvalue %dx.types.CBufRet.i32 %108, 2
  %116 = mul i32 %114, %115
  %117 = lshr i32 %106, 3
  %118 = add i32 %113, %117
  %119 = add i32 %118, %116
  %120 = shl i32 %119, 2
  %121 = shl i32 %107, 3
  %122 = and i32 %121, 24
  %123 = and i32 %106, 7
  %124 = or i32 %122, %123
  %125 = shl i32 1, %124
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %127, %125
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %554, label %130

; <label>:130                                     ; preds = %100
  %131 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %106, i32 %107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = extractvalue %dx.types.ResRet.f32 %131, 1
  %134 = fadd fast float %133, 0x3F40000000000000
  %135 = fmul fast float %134, 2.550000e+02
  %136 = fadd fast float %132, 0x3F40000000000000
  %137 = fmul fast float %136, 2.550000e+02
  %138 = fptoui float %135 to i32
  %139 = shl i32 %138, 8
  %140 = fptoui float %137 to i32
  %141 = and i32 %140, 255
  %142 = or i32 %139, %141
  %143 = urem i32 %142, 9
  switch i32 %143, label %554 [
    i32 0, label %144
    i32 1, label %145
    i32 2, label %146
    i32 3, label %147
    i32 4, label %148
    i32 5, label %149
    i32 6, label %150
    i32 7, label %151
    i32 8, label %152
  ]

; <label>:144                                     ; preds = %130
  br label %554

; <label>:145                                     ; preds = %130
  br label %554

; <label>:146                                     ; preds = %130
  br label %554

; <label>:147                                     ; preds = %130
  br label %554

; <label>:148                                     ; preds = %130
  br label %554

; <label>:149                                     ; preds = %130
  br label %554

; <label>:150                                     ; preds = %130
  br label %554

; <label>:151                                     ; preds = %130
  br label %554

; <label>:152                                     ; preds = %130
  br label %554

; <label>:153                                     ; preds = %98
  %154 = icmp eq i32 %26, 5
  br i1 %154, label %155, label %198

; <label>:155                                     ; preds = %153
  br i1 %45, label %554, label %156

; <label>:156                                     ; preds = %155
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = fmul fast float %158, %32
  %161 = fmul fast float %159, %33
  %162 = fptoui float %160 to i32
  %163 = fptoui float %161 to i32
  %164 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %162, i32 %163, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = lshr i32 %165, 8
  %167 = and i32 %165, 255
  %168 = and i32 %166, 255
  %169 = uitofp i32 %167 to float
  %170 = uitofp i32 %168 to float
  %171 = fmul fast float %169, 0x3F80101020000000
  %172 = fmul fast float %170, 0x3F80101020000000
  %173 = fadd fast float %171, -1.000000e+00
  %174 = fadd fast float %172, -1.000000e+00
  %175 = call float @dx.op.unary.f32(i32 6, float %173)  ; FAbs(value)
  %176 = fsub fast float 1.000000e+00, %175
  %177 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %178 = fsub fast float %176, %177
  %179 = fsub fast float -0.000000e+00, %178
  %180 = call float @dx.op.binary.f32(i32 35, float %179, float 0.000000e+00)  ; FMax(a,b)
  %181 = fcmp fast ogt float %173, 0.000000e+00
  %182 = fsub fast float -0.000000e+00, %180
  %183 = select i1 %181, float %182, float %180
  %184 = fadd fast float %183, %173
  %185 = fcmp fast ogt float %174, 0.000000e+00
  %186 = select i1 %185, float %182, float %180
  %187 = fadd fast float %186, %174
  %188 = call float @dx.op.dot3.f32(i32 55, float %184, float %187, float %178, float %184, float %187, float %178)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.unary.f32(i32 25, float %188)  ; Rsqrt(value)
  %190 = fmul fast float %189, 5.000000e-01
  %191 = fmul fast float %190, %184
  %192 = fmul fast float %190, %187
  %193 = fmul fast float %178, 5.000000e-01
  %194 = fmul fast float %193, %189
  %195 = fadd fast float %191, 5.000000e-01
  %196 = fadd fast float %192, 5.000000e-01
  %197 = fadd fast float %194, 5.000000e-01
  br label %554

; <label>:198                                     ; preds = %153
  %199 = icmp eq i32 %26, 6
  br i1 %199, label %200, label %202

; <label>:200                                     ; preds = %198
  br i1 %45, label %554, label %201

; <label>:201                                     ; preds = %200
  br label %554

; <label>:202                                     ; preds = %198
  %203 = icmp eq i32 %26, 7
  br i1 %203, label %204, label %206

; <label>:204                                     ; preds = %202
  br i1 %45, label %554, label %205

; <label>:205                                     ; preds = %204
  br label %554

; <label>:206                                     ; preds = %202
  %207 = icmp eq i32 %26, 8
  br i1 %207, label %208, label %261

; <label>:208                                     ; preds = %206
  %209 = icmp ult i32 %28, 4
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = extractvalue %dx.types.CBufRet.f32 %210, 1
  %213 = fmul fast float %211, %32
  %214 = fmul fast float %212, %33
  %215 = fptoui float %213 to i32
  %216 = fptoui float %214 to i32
  %217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.i32 %217, 1
  %219 = lshr i32 %215, 3
  br i1 %209, label %220, label %236

; <label>:220                                     ; preds = %208
  %221 = mul i32 %218, %28
  %222 = lshr i32 %216, 5
  %223 = extractvalue %dx.types.CBufRet.i32 %217, 0
  %224 = mul i32 %222, %223
  %225 = lshr i32 %215, 6
  %226 = add i32 %225, %221
  %227 = add i32 %226, %224
  %228 = shl i32 %227, 2
  %229 = and i32 %216, 24
  %230 = and i32 %219, 7
  %231 = or i32 %230, %229
  %232 = shl i32 1, %231
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %232, %234
  br label %256

; <label>:236                                     ; preds = %208
  %237 = add i32 %28, -4
  %238 = shl i32 %218, 2
  %239 = extractvalue %dx.types.CBufRet.i32 %217, 3
  %240 = mul i32 %239, %237
  %241 = add i32 %240, %238
  %242 = lshr i32 %216, 2
  %243 = extractvalue %dx.types.CBufRet.i32 %217, 2
  %244 = mul i32 %242, %243
  %245 = add i32 %241, %219
  %246 = add i32 %245, %244
  %247 = shl i32 %246, 2
  %248 = shl i32 %216, 3
  %249 = and i32 %248, 24
  %250 = and i32 %215, 7
  %251 = or i32 %249, %250
  %252 = shl i32 1, %251
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, %252
  br label %256

; <label>:256                                     ; preds = %236, %220
  %257 = phi i32 [ %235, %220 ], [ %255, %236 ]
  %258 = icmp ne i32 %257, 0
  %259 = select i1 %258, float 1.000000e+00, float 0.000000e+00
  %260 = fmul fast float %259, %46
  br label %554

; <label>:261                                     ; preds = %206
  %262 = icmp eq i32 %26, 9
  br i1 %262, label %263, label %289

; <label>:263                                     ; preds = %261
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = fmul fast float %265, %32
  %268 = fmul fast float %266, %33
  %269 = fptoui float %267 to i32
  %270 = fptoui float %268 to i32
  %271 = uitofp i32 %269 to float
  %272 = uitofp i32 %270 to float
  %273 = fptoui float %271 to i32
  %274 = fptoui float %272 to i32
  %275 = lshr i32 %273, 4
  %276 = lshr i32 %274, 4
  %277 = fptoui float %265 to i32
  %278 = add i32 %277, 15
  %279 = lshr i32 %278, 4
  %280 = mul i32 %276, %279
  %281 = add i32 %280, %275
  %282 = shl i32 %281, 3
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = lshr i32 %284, 28
  %286 = icmp eq i32 %285, %28
  %287 = select i1 %286, float 1.000000e+00, float 0.000000e+00
  %288 = fmul fast float %287, %46
  br label %554

; <label>:289                                     ; preds = %261
  %290 = icmp eq i32 %26, 10
  br i1 %290, label %291, label %295

; <label>:291                                     ; preds = %289
  %292 = select i1 %45, float 0.000000e+00, float %46
  %293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %294 = extractvalue %dx.types.ResRet.f32 %293, 0
  br label %554

; <label>:295                                     ; preds = %289
  %296 = icmp eq i32 %26, 21
  br i1 %296, label %297, label %302

; <label>:297                                     ; preds = %295
  %298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  br label %554

; <label>:302                                     ; preds = %295
  %303 = icmp eq i32 %26, 11
  br i1 %303, label %304, label %321

; <label>:304                                     ; preds = %302
  %305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fcmp fast une float %306, 0xFFF0000000000000
  %308 = fcmp fast une float %306, 0x7FF0000000000000
  %309 = and i1 %307, %308
  %310 = fcmp fast olt float %306, 0.000000e+00
  %311 = select i1 %310, float 0.000000e+00, float 1.000000e+00
  %312 = and i1 %310, %309
  %313 = select i1 %312, float 0.000000e+00, float 1.000000e+00
  %314 = select i1 %309, float 1.000000e+00, float 0.000000e+00
  %315 = select i1 %309, float %311, float 0.000000e+00
  %316 = call float @dx.op.unary.f32(i32 6, float %306)  ; FAbs(value)
  %317 = fsub fast float 1.000000e+00, %316
  %318 = fmul fast float %313, %317
  %319 = fmul fast float %314, %317
  %320 = fmul fast float %315, %317
  br label %554

; <label>:321                                     ; preds = %302
  %322 = icmp eq i32 %26, 12
  br i1 %322, label %323, label %340

; <label>:323                                     ; preds = %321
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fcmp fast une float %325, 0xFFF0000000000000
  %327 = fcmp fast une float %325, 0x7FF0000000000000
  %328 = and i1 %326, %327
  %329 = fcmp fast olt float %325, 0.000000e+00
  %330 = select i1 %329, float 0.000000e+00, float 1.000000e+00
  %331 = and i1 %329, %328
  %332 = select i1 %331, float 0.000000e+00, float 1.000000e+00
  %333 = select i1 %328, float 1.000000e+00, float 0.000000e+00
  %334 = select i1 %328, float %330, float 0.000000e+00
  %335 = call float @dx.op.unary.f32(i32 6, float %325)  ; FAbs(value)
  %336 = fsub fast float 1.000000e+00, %335
  %337 = fmul fast float %332, %336
  %338 = fmul fast float %333, %336
  %339 = fmul fast float %334, %336
  br label %554

; <label>:340                                     ; preds = %321
  %341 = icmp eq i32 %26, 13
  br i1 %341, label %342, label %349

; <label>:342                                     ; preds = %340
  %343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = fcmp fast ogt float %345, 0.000000e+00
  %347 = select i1 %346, float 1.000000e+00, float 0.000000e+00
  %348 = fmul fast float %347, %46
  br label %554

; <label>:349                                     ; preds = %340
  %350 = icmp eq i32 %26, 17
  br i1 %350, label %351, label %356

; <label>:351                                     ; preds = %349
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  br label %554

; <label>:356                                     ; preds = %349
  %357 = icmp eq i32 %26, 18
  br i1 %357, label %358, label %363

; <label>:358                                     ; preds = %356
  %359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  br label %554

; <label>:363                                     ; preds = %356
  %364 = icmp eq i32 %26, 19
  br i1 %364, label %365, label %392

; <label>:365                                     ; preds = %363
  %366 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %367 = extractvalue %dx.types.Dimensions %366, 0
  %368 = extractvalue %dx.types.Dimensions %366, 1
  %369 = uitofp i32 %367 to float
  %370 = fmul fast float %369, %32
  %371 = fptoui float %370 to i32
  %372 = uitofp i32 %368 to float
  %373 = fmul fast float %372, %33
  %374 = fptoui float %373 to i32
  %375 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %13, i32 0, i32 %371, i32 %374, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = shl i32 1, %377
  %379 = and i32 %376, 2
  %380 = shl i32 1, %379
  %381 = or i32 %378, %380
  %382 = and i32 %376, 3
  %383 = shl i32 1, %382
  %384 = or i32 %381, %383
  %385 = and i32 %384, 14
  %386 = or i32 %385, 1
  %387 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %386)  ; Countbits(value)
  switch i32 %387, label %554 [
    i32 1, label %388
    i32 2, label %389
    i32 3, label %390
    i32 4, label %391
  ]

; <label>:388                                     ; preds = %365
  br label %554

; <label>:389                                     ; preds = %365
  br label %554

; <label>:390                                     ; preds = %365
  br label %554

; <label>:391                                     ; preds = %365
  br label %554

; <label>:392                                     ; preds = %363
  %393 = icmp eq i32 %26, 20
  br i1 %393, label %394, label %400

; <label>:394                                     ; preds = %392
  %395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  br label %554

; <label>:400                                     ; preds = %392
  %401 = icmp eq i32 %26, 14
  br i1 %401, label %402, label %424

; <label>:402                                     ; preds = %400
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = fmul fast float %404, %32
  %407 = fmul fast float %405, %33
  %408 = fptoui float %406 to i32
  %409 = fptoui float %407 to i32
  %410 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %408, i32 %409, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = mul i32 %411, 15485863
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 3.906250e-03
  %416 = lshr i32 %412, 8
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 3.906250e-03
  %420 = lshr i32 %412, 16
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 3.906250e-03
  br label %554

; <label>:424                                     ; preds = %400
  %425 = icmp eq i32 %26, 16
  br i1 %425, label %426, label %450

; <label>:426                                     ; preds = %424
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = fmul fast float %428, %32
  %431 = fmul fast float %429, %33
  %432 = fptoui float %430 to i32
  %433 = fptoui float %431 to i32
  %434 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %432, i32 %433, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = lshr i32 %435, 9
  %437 = and i32 %436, 262143
  %438 = mul i32 %437, 15485863
  %439 = and i32 %438, 255
  %440 = uitofp i32 %439 to float
  %441 = fmul fast float %440, 3.906250e-03
  %442 = lshr i32 %438, 8
  %443 = and i32 %442, 255
  %444 = uitofp i32 %443 to float
  %445 = fmul fast float %444, 3.906250e-03
  %446 = lshr i32 %438, 16
  %447 = and i32 %446, 255
  %448 = uitofp i32 %447 to float
  %449 = fmul fast float %448, 3.906250e-03
  br label %554

; <label>:450                                     ; preds = %424
  %451 = icmp eq i32 %26, 15
  br i1 %451, label %452, label %554

; <label>:452                                     ; preds = %450
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 245)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %459 = fmul fast float %454, 0x3F7767DCE0000000
  %460 = fmul fast float %459, %457
  %461 = fmul fast float %459, %458
  %462 = call float @dx.op.binary.f32(i32 35, float 2.000000e+00, float %460)  ; FMax(a,b)
  %463 = call float @dx.op.binary.f32(i32 35, float 2.000000e+00, float %461)  ; FMax(a,b)
  %464 = fptoui float %462 to i32
  %465 = fptoui float %463 to i32
  %466 = fmul fast float %457, %32
  %467 = fmul fast float %458, %33
  %468 = fptoui float %466 to i32
  %469 = fptoui float %467 to i32
  %470 = call i32 @dx.op.binary.i32(i32 40, i32 %468, i32 %464)  ; UMin(a,b)
  %471 = call i32 @dx.op.binary.i32(i32 40, i32 %469, i32 %465)  ; UMin(a,b)
  %472 = sub i32 %468, %470
  %473 = sub i32 %469, %471
  %474 = and i32 %464, 2147483647
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %534, label %476

; <label>:476                                     ; preds = %452
  br label %477

; <label>:477                                     ; preds = %528, %476
  %478 = phi i32 [ %529, %528 ], [ 0, %476 ]
  %479 = phi i32 [ %530, %528 ], [ 0, %476 ]
  %480 = and i32 %465, 2147483647
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %528, label %482

; <label>:482                                     ; preds = %477
  br label %483

; <label>:483                                     ; preds = %521, %482
  %484 = phi i32 [ %522, %521 ], [ %478, %482 ]
  %485 = phi i32 [ %523, %521 ], [ 0, %482 ]
  %486 = icmp ugt i32 %484, 63
  br i1 %486, label %526, label %487

; <label>:487                                     ; preds = %483
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = add i32 %472, %479
  %492 = add i32 %473, %485
  %493 = uitofp i32 %491 to float
  %494 = uitofp i32 %492 to float
  %495 = call float @dx.op.binary.f32(i32 36, float %493, float %489)  ; FMin(a,b)
  %496 = call float @dx.op.binary.f32(i32 36, float %494, float %490)  ; FMin(a,b)
  %497 = fptoui float %495 to i32
  %498 = fptoui float %496 to i32
  %499 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %6, i32 0, i32 %497, i32 %498, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 3
  %502 = icmp eq i32 %501, 1
  br i1 %502, label %503, label %521

; <label>:503                                     ; preds = %487
  %504 = icmp eq i32 %484, 0
  br i1 %504, label %516, label %505

; <label>:505                                     ; preds = %503
  br label %506

; <label>:506                                     ; preds = %511, %505
  %507 = phi i32 [ %512, %511 ], [ 0, %505 ]
  %508 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i32 0, i32 %507
  %509 = load i32, i32* %508, align 4, !tbaa !41
  %510 = icmp eq i32 %509, %500
  br i1 %510, label %514, label %511

; <label>:511                                     ; preds = %506
  %512 = add nuw i32 %507, 1
  %513 = icmp ult i32 %512, %484
  br i1 %513, label %506, label %514

; <label>:514                                     ; preds = %511, %506
  %515 = phi i1 [ true, %511 ], [ false, %506 ]
  br label %516

; <label>:516                                     ; preds = %514, %503
  %517 = phi i1 [ true, %503 ], [ %515, %514 ]
  br i1 %517, label %518, label %521

; <label>:518                                     ; preds = %516
  %519 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i32 0, i32 %484
  store i32 %500, i32* %519, align 4, !tbaa !41
  %520 = add i32 %484, 1
  br label %521

; <label>:521                                     ; preds = %518, %516, %487
  %522 = phi i32 [ %520, %518 ], [ %484, %516 ], [ %484, %487 ]
  %523 = add nuw i32 %485, 1
  %524 = shl i32 %465, 1
  %525 = icmp ult i32 %523, %524
  br i1 %525, label %483, label %526

; <label>:526                                     ; preds = %521, %483
  %527 = phi i32 [ %522, %521 ], [ %484, %483 ]
  br label %528

; <label>:528                                     ; preds = %526, %477
  %529 = phi i32 [ %478, %477 ], [ %527, %526 ]
  %530 = add nuw i32 %479, 1
  %531 = shl i32 %464, 1
  %532 = icmp ult i32 %530, %531
  br i1 %532, label %477, label %533

; <label>:533                                     ; preds = %528
  br label %534

; <label>:534                                     ; preds = %533, %452
  %535 = phi i32 [ 0, %452 ], [ %529, %533 ]
  %536 = icmp eq i32 %535, 0
  %537 = select i1 %536, float 0.000000e+00, float %46
  %538 = shl i32 %464, 2
  %539 = mul i32 %538, %465
  %540 = call i32 @dx.op.binary.i32(i32 40, i32 %539, i32 64)  ; UMin(a,b)
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, %455
  %543 = fptoui float %542 to i32
  %544 = uitofp i32 %535 to float
  %545 = uitofp i32 %543 to float
  %546 = fdiv fast float %544, %545
  %547 = fcmp fast olt float %546, 5.000000e-01
  br i1 %547, label %548, label %550

; <label>:548                                     ; preds = %534
  %549 = fmul fast float %546, 2.000000e+00
  br label %554

; <label>:550                                     ; preds = %534
  %551 = fadd fast float %546, -5.000000e-01
  %552 = fmul fast float %551, 2.000000e+00
  %553 = fsub fast float 0x3FE3333340000000, %552
  br label %554

; <label>:554                                     ; preds = %550, %548, %450, %426, %402, %394, %391, %390, %389, %388, %365, %358, %351, %342, %323, %304, %297, %291, %263, %256, %205, %204, %201, %200, %156, %155, %152, %151, %150, %149, %148, %147, %146, %145, %144, %130, %100, %94, %67, %54, %48
  %555 = phi float [ %49, %48 ], [ %62, %54 ], [ %96, %94 ], [ 0.000000e+00, %130 ], [ 1.000000e+00, %152 ], [ 0x3FBD1D1D20000000, %151 ], [ 1.000000e+00, %150 ], [ 0.000000e+00, %149 ], [ 1.000000e+00, %148 ], [ 1.000000e+00, %147 ], [ 0.000000e+00, %146 ], [ 0.000000e+00, %145 ], [ 1.000000e+00, %144 ], [ %195, %156 ], [ 0.000000e+00, %201 ], [ 0.000000e+00, %205 ], [ %259, %256 ], [ %287, %263 ], [ %294, %291 ], [ %299, %297 ], [ %318, %304 ], [ %337, %323 ], [ %345, %342 ], [ %353, %351 ], [ %360, %358 ], [ 0.000000e+00, %365 ], [ 1.000000e+00, %391 ], [ 1.000000e+00, %390 ], [ 1.000000e+00, %389 ], [ 0.000000e+00, %388 ], [ %396, %394 ], [ %415, %402 ], [ %441, %426 ], [ %549, %548 ], [ 1.000000e+00, %550 ], [ 0.000000e+00, %67 ], [ 0.000000e+00, %100 ], [ 0.000000e+00, %155 ], [ 0.000000e+00, %200 ], [ 0.000000e+00, %204 ], [ 0.000000e+00, %450 ]
  %556 = phi float [ %50, %48 ], [ %63, %54 ], [ %97, %94 ], [ 0.000000e+00, %130 ], [ 0x3FE6666660000000, %152 ], [ 1.000000e+00, %151 ], [ 1.000000e+00, %150 ], [ 1.000000e+00, %149 ], [ 0.000000e+00, %148 ], [ 1.000000e+00, %147 ], [ 0.000000e+00, %146 ], [ 1.000000e+00, %145 ], [ 0.000000e+00, %144 ], [ %196, %156 ], [ 0.000000e+00, %201 ], [ 0.000000e+00, %205 ], [ 0.000000e+00, %256 ], [ 0.000000e+00, %263 ], [ %294, %291 ], [ %300, %297 ], [ %319, %304 ], [ %338, %323 ], [ 0.000000e+00, %342 ], [ %354, %351 ], [ %361, %358 ], [ 0.000000e+00, %365 ], [ 0.000000e+00, %391 ], [ 0.000000e+00, %390 ], [ 1.000000e+00, %389 ], [ 1.000000e+00, %388 ], [ %397, %394 ], [ %419, %402 ], [ %445, %426 ], [ 0x3FE3333340000000, %548 ], [ %553, %550 ], [ 0.000000e+00, %67 ], [ 0.000000e+00, %100 ], [ 0.000000e+00, %155 ], [ 0.000000e+00, %200 ], [ 0.000000e+00, %204 ], [ 0.000000e+00, %450 ]
  %557 = phi float [ %51, %48 ], [ %64, %54 ], [ 0.000000e+00, %94 ], [ 0.000000e+00, %130 ], [ 0.000000e+00, %152 ], [ 0x3FDD5D5D60000000, %151 ], [ 1.000000e+00, %150 ], [ 1.000000e+00, %149 ], [ 1.000000e+00, %148 ], [ 0.000000e+00, %147 ], [ 1.000000e+00, %146 ], [ 0.000000e+00, %145 ], [ 0.000000e+00, %144 ], [ %197, %156 ], [ 0.000000e+00, %201 ], [ 0.000000e+00, %205 ], [ 0.000000e+00, %256 ], [ 0.000000e+00, %263 ], [ %294, %291 ], [ %301, %297 ], [ %320, %304 ], [ %339, %323 ], [ 0.000000e+00, %342 ], [ %355, %351 ], [ %362, %358 ], [ 0.000000e+00, %365 ], [ 0.000000e+00, %391 ], [ 1.000000e+00, %390 ], [ 0.000000e+00, %389 ], [ 0.000000e+00, %388 ], [ %398, %394 ], [ %423, %402 ], [ %449, %426 ], [ 0.000000e+00, %548 ], [ 0.000000e+00, %550 ], [ 0.000000e+00, %67 ], [ 0.000000e+00, %100 ], [ 0.000000e+00, %155 ], [ 0.000000e+00, %200 ], [ 0.000000e+00, %204 ], [ 0.000000e+00, %450 ]
  %558 = phi float [ %46, %48 ], [ %46, %54 ], [ %46, %94 ], [ %46, %130 ], [ %46, %152 ], [ %46, %151 ], [ %46, %150 ], [ %46, %149 ], [ %46, %148 ], [ %46, %147 ], [ %46, %146 ], [ %46, %145 ], [ %46, %144 ], [ %46, %156 ], [ %46, %201 ], [ %46, %205 ], [ %260, %256 ], [ %288, %263 ], [ %292, %291 ], [ %46, %297 ], [ %46, %304 ], [ %46, %323 ], [ %348, %342 ], [ %46, %351 ], [ %46, %358 ], [ %46, %365 ], [ %46, %391 ], [ %46, %390 ], [ %46, %389 ], [ %46, %388 ], [ %399, %394 ], [ %46, %402 ], [ %46, %426 ], [ %537, %548 ], [ %537, %550 ], [ 0.000000e+00, %67 ], [ 0.000000e+00, %100 ], [ 0.000000e+00, %155 ], [ 0.000000e+00, %200 ], [ 0.000000e+00, %204 ], [ 0.000000e+00, %450 ]
  %559 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %560 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %561 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 23, float %559)  ; Log(value)
  %563 = call float @dx.op.unary.f32(i32 23, float %560)  ; Log(value)
  %564 = call float @dx.op.unary.f32(i32 23, float %561)  ; Log(value)
  %565 = fmul fast float %562, 0x3FDAAAAAA0000000
  %566 = fmul fast float %563, 0x3FDAAAAAA0000000
  %567 = fmul fast float %564, 0x3FDAAAAAA0000000
  %568 = call float @dx.op.unary.f32(i32 21, float %565)  ; Exp(value)
  %569 = call float @dx.op.unary.f32(i32 21, float %566)  ; Exp(value)
  %570 = call float @dx.op.unary.f32(i32 21, float %567)  ; Exp(value)
  %571 = fmul fast float %568, 0x3FF0E147A0000000
  %572 = fmul fast float %569, 0x3FF0E147A0000000
  %573 = fmul fast float %570, 0x3FF0E147A0000000
  %574 = fadd fast float %571, 0xBFAC28F5C0000000
  %575 = fadd fast float %572, 0xBFAC28F5C0000000
  %576 = fadd fast float %573, 0xBFAC28F5C0000000
  %577 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %578 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  %579 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %577)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %578)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %579)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %558)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!30}
!dx.entryPoints = !{!31}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 50, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !11}
!19 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !11}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!27 = !{!28, !29}
!28 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!30 = !{[6 x i32] [i32 4, i32 4, i32 15, i32 15, i32 0, i32 0]}
!31 = !{void ()* @ps_main, !"ps_main", !32, !4, !40}
!32 = !{!33, !37, null}
!33 = !{!34}
!34 = !{i32 0, !"SV_Position", i8 9, i8 3, !35, i8 4, i32 1, i8 4, i32 0, i8 0, !36}
!35 = !{i32 0}
!36 = !{i32 3, i32 3}
!37 = !{!38}
!38 = !{i32 0, !"SV_Target", i8 9, i8 16, !35, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!39 = !{i32 3, i32 15}
!40 = !{i32 0, i64 16}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}

