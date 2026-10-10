;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; PACKED_TRI_DATA          0   xyzw        3     NONE    uint   x   
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
; shader hash: 4f5e05108a0e3907088c1c5512809854
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
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t0     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;                                   texture    byte         r/o      T8             t1     1
;
;
; ViewId state:
;
; Number of inputs: 16, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 8, 9, 12 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 8, 9, 12 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 8, 9, 12 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = fmul fast float %22, %17
  %24 = fmul fast float %22, %18
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 3
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 4
  %31 = icmp ne i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %44

; <label>:33                                      ; preds = %0
  %34 = extractvalue %dx.types.CBufRet.f32 %25, 3
  %35 = fmul fast float %24, %34
  %36 = extractvalue %dx.types.CBufRet.f32 %25, 2
  %37 = fmul fast float %23, %36
  %38 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %37, float %35, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %39 = extractvalue %dx.types.ResRet.f32 %38, 0
  %40 = fsub fast float 1.000000e+00, %39
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = fcmp fast olt float %40, %42
  br label %52

; <label>:44                                      ; preds = %0
  %45 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.i32 %45, 3
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 0
  %49 = and i32 %46, 4
  %50 = icmp eq i32 %49, 0
  %51 = and i1 %48, %50
  br label %52

; <label>:52                                      ; preds = %44, %33
  %53 = phi i1 [ %43, %33 ], [ %51, %44 ]
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %55, %23
  %58 = fmul fast float %56, %24
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = and i32 %60, 114688
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %62, float %57, float 0.000000e+00
  %64 = select i1 %62, float %58, float 0.000000e+00
  %65 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %10, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = fmul fast float %66, 2.550000e+02
  %68 = fptoui float %67 to i32
  %69 = select i1 %62, i32 %68, i32 0
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 0
  %72 = and i32 %71, 16
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %73, float 1.000000e+00, float %16
  %75 = fcmp fast ogt float %74, 0.000000e+00
  br i1 %75, label %77, label %76

; <label>:76                                      ; preds = %52
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %77

; <label>:77                                      ; preds = %76, %52
  %78 = call float @dx.op.unary.f32(i32 7, float %74)  ; Saturate(value)
  %79 = fmul fast float %23, 5.000000e-01
  %80 = fmul fast float %24, 5.000000e-01
  %81 = fptosi float %79 to i32
  %82 = fptosi float %80 to i32
  %83 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %81, i32 %82, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = lshr i32 %84, 18
  %86 = uitofp i32 %85 to float
  %87 = fmul fast float %86, 0x3F4C00EBA0000000
  %88 = call float @dx.op.unary.f32(i32 21, float %87)  ; Exp(value)
  %89 = fadd fast float %88, -1.000000e+00
  %90 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2, i32 0)  ; GetDimensions(handle,mipLevel)
  %91 = extractvalue %dx.types.Dimensions %90, 0
  %92 = sitofp i32 %91 to float
  %93 = extractvalue %dx.types.Dimensions %90, 1
  %94 = sitofp i32 %93 to float
  %95 = fcmp fast oge float %79, %92
  %96 = fcmp fast oge float %80, %94
  %97 = or i1 %95, %96
  %98 = select i1 %97, float 0x4197782600000000, float %89
  %99 = fsub fast float %98, %19
  %100 = fcmp fast ogt float %99, 0.000000e+00
  %101 = and i32 %69, -2
  %102 = icmp eq i32 %101, 2
  %103 = and i1 %102, %100
  %104 = xor i1 %100, true
  %105 = icmp eq i32 %69, 1
  %106 = and i1 %105, %104
  %107 = or i1 %103, %106
  %108 = and i32 %71, 262144
  %109 = icmp ne i32 %108, 0
  %110 = and i1 %109, %107
  %111 = xor i1 %107, true
  %112 = and i32 %71, 131072
  %113 = icmp ne i32 %112, 0
  %114 = and i1 %113, %111
  %115 = or i1 %110, %114
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %77
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %117

; <label>:117                                     ; preds = %116, %77
  %118 = add i32 %13, 88
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = extractvalue %dx.types.ResRet.i32 %119, 1
  %122 = extractvalue %dx.types.ResRet.i32 %119, 2
  %123 = extractvalue %dx.types.ResRet.i32 %119, 3
  %124 = bitcast i32 %120 to float
  %125 = bitcast i32 %121 to float
  %126 = bitcast i32 %122 to float
  %127 = bitcast i32 %123 to float
  %128 = add i32 %13, 104
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 2
  %131 = bitcast i32 %130 to float
  %132 = add i32 %13, 120
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = add i32 %13, 136
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %134, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 3
  %137 = bitcast i32 %136 to float
  %138 = add i32 %13, 76
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = and i32 %140, 2
  %142 = icmp ne i32 %141, 0
  %143 = and i32 %140, 1
  %144 = icmp eq i32 %143, 0
  %145 = and i32 %140, 8
  %146 = icmp eq i32 %145, 0
  %147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5, i32 0)  ; GetDimensions(handle,mipLevel)
  %148 = extractvalue %dx.types.Dimensions %147, 0
  %149 = sitofp i32 %148 to float
  %150 = extractvalue %dx.types.Dimensions %147, 1
  %151 = sitofp i32 %150 to float
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %155 = fmul fast float %153, %23
  %156 = fmul fast float %154, %24
  %157 = fmul fast float %155, %149
  %158 = fmul fast float %156, %151
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %161 = fsub fast float -0.000000e+00, %160
  %162 = fptoui float %161 to i32
  %163 = fptoui float %157 to i32
  %164 = fptoui float %158 to i32
  %165 = and i32 %162, 31
  %166 = lshr i32 %163, %165
  %167 = lshr i32 %164, %165
  %168 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 %162, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %169 = extractvalue %dx.types.ResRet.f32 %168, 0
  %170 = fcmp fast ogt float %169, -1.000000e+00
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %173 = select i1 %170, float %172, float 1.000000e+00
  %174 = fadd fast float %169, 1.000000e+00
  %175 = fmul fast float %173, %174
  %176 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %177 = extractvalue %dx.types.CBufRet.f32 %171, 3
  %178 = fcmp fast oge float %176, %177
  %179 = select i1 %178, float 0x4197782600000000, float %176
  %180 = fsub fast float %179, %19
  br i1 %146, label %224, label %181

; <label>:181                                     ; preds = %117
  %182 = extractvalue %dx.types.ResRet.i32 %129, 1
  %183 = bitcast i32 %182 to float
  %184 = extractvalue %dx.types.ResRet.i32 %133, 3
  %185 = bitcast i32 %184 to float
  %186 = extractvalue %dx.types.ResRet.i32 %129, 0
  %187 = bitcast i32 %186 to float
  %188 = fadd fast float %187, %19
  %189 = fcmp fast olt float %179, %19
  %190 = fcmp fast ogt float %179, %188
  %191 = or i1 %189, %190
  %192 = select i1 %191, float 0.000000e+00, float %180
  %193 = call float @dx.op.unary.f32(i32 83, float %179)  ; DerivCoarseX(value)
  %194 = call float @dx.op.unary.f32(i32 84, float %179)  ; DerivCoarseY(value)
  %195 = fmul fast float %193, %193
  %196 = fmul fast float %194, %194
  %197 = fadd fast float %196, %195
  %198 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 2
  %201 = fmul fast float %200, %198
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fmul fast float %202, %183
  %204 = fdiv fast float %180, %203
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fmul fast float %205, 2.000000e+00
  %207 = fsub fast float 3.000000e+00, %206
  %208 = fmul fast float %205, %205
  %209 = fmul fast float %208, %207
  %210 = fsub fast float %179, %188
  %211 = fadd fast float %210, %203
  %212 = fdiv fast float %211, %203
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = fmul fast float %213, 2.000000e+00
  %215 = fsub fast float 3.000000e+00, %214
  %216 = fmul fast float %213, %213
  %217 = fmul fast float %216, %215
  %218 = fsub fast float %209, %217
  %219 = fsub fast float %185, %137
  %220 = fmul fast float %218, %219
  %221 = fadd fast float %220, %137
  %222 = fmul fast float %192, %124
  %223 = call float @dx.op.unary.f32(i32 6, float %222)  ; FAbs(value)
  br label %263

; <label>:224                                     ; preds = %117
  %225 = and i32 %140, 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %238, label %227

; <label>:227                                     ; preds = %224
  %228 = select i1 %142, float 5.000000e+01, float 1.000000e+00
  %229 = fmul fast float %228, %124
  %230 = fmul fast float %14, 2.000000e+00
  %231 = fmul fast float %15, 2.000000e+00
  %232 = fadd fast float %230, -1.000000e+00
  %233 = fadd fast float %231, -1.000000e+00
  %234 = call float @dx.op.dot2.f32(i32 54, float %232, float %233, float %232, float %233)  ; Dot2(ax,ay,bx,by)
  %235 = fmul fast float %234, %131
  %236 = fsub fast float %180, %235
  %237 = fmul fast float %229, %236
  br label %263

; <label>:238                                     ; preds = %224
  br i1 %144, label %258, label %239

; <label>:239                                     ; preds = %238
  %240 = select i1 %142, float 0x3F947AE140000000, float 1.000000e+00
  %241 = fdiv fast float 1.000000e+00, %240
  %242 = fmul fast float %240, %125
  %243 = fmul fast float %240, %126
  %244 = fmul fast float %241, %127
  %245 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %246 = fcmp fast olt float %245, %242
  br i1 %246, label %247, label %251, !dx.controlflow.hints !43

; <label>:247                                     ; preds = %239
  %248 = fmul fast float %241, %124
  %249 = fmul fast float %248, %245
  %250 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  br label %263

; <label>:251                                     ; preds = %239
  %252 = fcmp fast ogt float %245, %243
  br i1 %252, label %253, label %263

; <label>:253                                     ; preds = %251
  %254 = fsub fast float %245, %243
  %255 = fmul fast float %244, %254
  %256 = call float @dx.op.unary.f32(i32 6, float %255)  ; FAbs(value)
  %257 = fsub fast float 1.000000e+00, %256
  br label %263

; <label>:258                                     ; preds = %238
  %259 = select i1 %142, float 5.000000e+01, float 1.000000e+00
  %260 = fmul fast float %259, %124
  %261 = call float @dx.op.binary.f32(i32 36, float %180, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %262 = fmul fast float %260, %261
  br label %263

; <label>:263                                     ; preds = %258, %253, %251, %247, %227, %181
  %264 = phi float [ %223, %181 ], [ %237, %227 ], [ %262, %258 ], [ %250, %247 ], [ %257, %253 ], [ %245, %251 ]
  %265 = phi float [ %221, %181 ], [ 1.000000e+00, %227 ], [ 1.000000e+00, %258 ], [ 1.000000e+00, %247 ], [ 1.000000e+00, %253 ], [ 1.000000e+00, %251 ]
  %266 = call float @dx.op.unary.f32(i32 7, float %264)  ; Saturate(value)
  %267 = fmul fast float %265, %78
  %268 = fmul fast float %267, %266
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = fptosi float %19 to i32
  %272 = sitofp i32 %271 to float
  %273 = fadd fast float %270, %272
  %274 = fmul fast float %273, 0x3FE3C6EF40000000
  %275 = frem fast float %23, 2.560000e+02
  %276 = frem fast float %24, 2.560000e+02
  %277 = fptoui float %275 to i32
  %278 = fptoui float %276 to i32
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %8, i32 0, i32 %277, i32 %278, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fadd fast float %280, %274
  %282 = call float @dx.op.unary.f32(i32 22, float %281)  ; Frc(value)
  %283 = add i32 %13, 152
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %287, %dx.types.Handle %20, float %14, float %15, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = add i32 %13, 44
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = shl i32 %294, 4
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %294, 7
  %299 = and i32 %298, 32752
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %294, 22
  %302 = shl nuw nsw i32 %301, 5
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = fmul fast float %297, %289
  %305 = fmul fast float %300, %290
  %306 = fmul fast float %303, %291
  %307 = add i32 %13, 48
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = lshr i32 %309, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = fmul fast float %312, %304
  %314 = select i1 %53, float %313, float %304
  %315 = call float @dx.op.dot3.f32(i32 55, float %314, float %305, float %306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = select i1 %53, float 0.000000e+00, float %304
  %317 = select i1 %53, float %315, float %305
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  br i1 %53, label %320, label %324

; <label>:320                                     ; preds = %263
  %321 = fadd fast float %317, %316
  %322 = fmul fast float %321, %268
  %323 = fmul fast float %322, %319
  br label %336

; <label>:324                                     ; preds = %263
  %325 = fmul fast float %316, %268
  %326 = fmul fast float %317, %268
  %327 = fmul fast float %306, %268
  %328 = fmul fast float %325, %319
  %329 = fmul fast float %326, %319
  %330 = fmul fast float %327, %319
  %331 = call float @dx.op.binary.f32(i32 35, float %329, float %330)  ; FMax(a,b)
  %332 = call float @dx.op.binary.f32(i32 35, float %328, float %331)  ; FMax(a,b)
  %333 = call float @dx.op.binary.f32(i32 35, float %332, float 0.000000e+00)  ; FMax(a,b)
  %334 = fcmp fast ugt float %333, 0x3F10000000000000
  br i1 %334, label %336, label %335

; <label>:335                                     ; preds = %324
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %336

; <label>:336                                     ; preds = %335, %324, %320
  %337 = phi float [ %323, %320 ], [ %328, %335 ], [ %328, %324 ]
  %338 = phi float [ 0.000000e+00, %320 ], [ %329, %335 ], [ %329, %324 ]
  %339 = phi float [ 0.000000e+00, %320 ], [ %330, %335 ], [ %330, %324 ]
  %340 = fadd fast float %282, 0x3FE3C6EF40000000
  %341 = call float @dx.op.unary.f32(i32 22, float %340)  ; Frc(value)
  %342 = call float @dx.op.unary.f32(i32 23, float %337)  ; Log(value)
  %343 = fadd fast float %342, -7.000000e+00
  %344 = call float @dx.op.unary.f32(i32 21, float %343)  ; Exp(value)
  %345 = fmul fast float %341, 2.000000e+00
  %346 = fadd fast float %345, -1.000000e+00
  %347 = fmul fast float %344, %346
  %348 = fcmp fast ogt float %337, 0.000000e+00
  %349 = select i1 %348, float %347, float 0.000000e+00
  %350 = fadd fast float %349, %337
  %351 = fadd fast float %282, 0x3FF3C6EF40000000
  %352 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %353 = call float @dx.op.unary.f32(i32 23, float %338)  ; Log(value)
  %354 = fadd fast float %353, -7.000000e+00
  %355 = call float @dx.op.unary.f32(i32 21, float %354)  ; Exp(value)
  %356 = fmul fast float %352, 2.000000e+00
  %357 = fadd fast float %356, -1.000000e+00
  %358 = fmul fast float %355, %357
  %359 = fcmp fast ogt float %338, 0.000000e+00
  %360 = select i1 %359, float %358, float 0.000000e+00
  %361 = fadd fast float %360, %338
  %362 = fadd fast float %282, 0x3FFDAA66E0000000
  %363 = call float @dx.op.unary.f32(i32 22, float %362)  ; Frc(value)
  %364 = call float @dx.op.unary.f32(i32 23, float %339)  ; Log(value)
  %365 = fadd fast float %364, -6.000000e+00
  %366 = call float @dx.op.unary.f32(i32 21, float %365)  ; Exp(value)
  %367 = fmul fast float %363, 2.000000e+00
  %368 = fadd fast float %367, -1.000000e+00
  %369 = fmul fast float %366, %368
  %370 = fcmp fast ogt float %339, 0.000000e+00
  %371 = select i1 %370, float %369, float 0.000000e+00
  %372 = fadd fast float %371, %339
  %373 = select i1 %53, float %338, float %361
  %374 = select i1 %53, float %339, float %372
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %375 = call float @dx.op.binary.f32(i32 36, float %350, float 3.225500e+04)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 36, float %373, float 3.225500e+04)  ; FMin(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %374, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %375)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!24}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !17, !20}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!20 = !{!21, !22, !23}
!21 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!22 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{[18 x i32] [i32 16, i32 8, i32 7, i32 7, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0]}
!25 = !{void ()* @ps_main, !"ps_main", !26, !4, !42}
!26 = !{!27, !37, null}
!27 = !{!28, !31, !33, !35, !36}
!28 = !{i32 0, !"SV_Position", i8 9, i8 3, !29, i8 4, i32 1, i8 4, i32 0, i8 0, !30}
!29 = !{i32 0}
!30 = !{i32 3, i32 11}
!31 = !{i32 1, !"COLOR", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 1, i8 0, !32}
!32 = !{i32 3, i32 1}
!33 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !29, i8 2, i32 1, i8 4, i32 2, i8 0, !34}
!34 = !{i32 3, i32 3}
!35 = !{i32 3, !"PACKED_TRI_DATA", i8 5, i8 0, !29, i8 1, i32 1, i8 4, i32 3, i8 0, !32}
!36 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !29, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!37 = !{!38, !40}
!38 = !{i32 0, !"SV_Target", i8 9, i8 16, !29, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 1}
!42 = !{i32 0, i64 24}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

