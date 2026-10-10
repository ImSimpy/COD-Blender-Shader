;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 7     zw        2     NONE   float     zw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 68b9cbe61e2d71a4006ae5bb94349b3d
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
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 7                 linear       
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
;   [240 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   cbuffer      NA          NA     CB2            cb1     1
;                                   cbuffer      NA          NA     CB3            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s3     1
;                                   texture     f32          3d      T0     t74,space2     1
;                                   texture    byte         r/o      T1     t15,space1     1
;                                   texture     f32          2d      T2     t76,space2     1
;                                   texture     f32          2d      T3             t0     1
;                                   texture     f32          3d      T4     t71,space2     1
;
;
; ViewId state:
;
; Number of inputs: 12, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8, 9, 10, 11 }
;   output 3 depends on inputs: { 7, 8, 9 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 71, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 0
  %25 = extractvalue %dx.types.CBufRet.f32 %23, 1
  %26 = fsub fast float %21, %24
  %27 = fsub fast float %22, %25
  %28 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %23, 3
  %30 = fmul fast float %26, %28
  %31 = fmul fast float %27, %29
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %35 = fmul fast float %30, %33
  %36 = fmul fast float %31, %34
  %37 = fptoui float %35 to i32
  %38 = fptoui float %36 to i32
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %12, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = shl i32 %40, 2
  %42 = extractvalue %dx.types.CBufRet.i32 %39, 3
  %43 = add i32 %41, %42
  %44 = lshr i32 %38, 2
  %45 = extractvalue %dx.types.CBufRet.i32 %39, 2
  %46 = mul i32 %44, %45
  %47 = lshr i32 %37, 3
  %48 = add i32 %43, %47
  %49 = add i32 %48, %46
  %50 = shl i32 %49, 2
  %51 = shl i32 %38, 3
  %52 = and i32 %51, 24
  %53 = and i32 %37, 7
  %54 = or i32 %52, %53
  %55 = shl i32 1, %54
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61, !dx.controlflow.hints !36

; <label>:60                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %61

; <label>:61                                      ; preds = %60, %0
  %62 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %8, float %15, float %16, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %63 = extractvalue %dx.types.ResRet.f32 %62, 3
  %64 = fmul fast float %63, %20
  %65 = fcmp fast ole float %17, 0x3FA4B5DCC0000000
  %66 = fmul fast float %17, 0x3FB3D07220000000
  %67 = fadd fast float %17, 0x3FAC28F5C0000000
  %68 = fmul fast float %67, 0x3FEE54EDE0000000
  %69 = call float @dx.op.unary.f32(i32 23, float %68)  ; Log(value)
  %70 = fmul fast float %69, 0x4003333340000000
  %71 = call float @dx.op.unary.f32(i32 21, float %70)  ; Exp(value)
  %72 = select i1 %65, float %66, float %71
  %73 = fcmp fast ole float %18, 0x3FA4B5DCC0000000
  %74 = fmul fast float %18, 0x3FB3D07220000000
  %75 = fadd fast float %18, 0x3FAC28F5C0000000
  %76 = fmul fast float %75, 0x3FEE54EDE0000000
  %77 = call float @dx.op.unary.f32(i32 23, float %76)  ; Log(value)
  %78 = fmul fast float %77, 0x4003333340000000
  %79 = call float @dx.op.unary.f32(i32 21, float %78)  ; Exp(value)
  %80 = select i1 %73, float %74, float %79
  %81 = fcmp fast ole float %19, 0x3FA4B5DCC0000000
  %82 = fmul fast float %19, 0x3FB3D07220000000
  %83 = fadd fast float %19, 0x3FAC28F5C0000000
  %84 = fmul fast float %83, 0x3FEE54EDE0000000
  %85 = call float @dx.op.unary.f32(i32 23, float %84)  ; Log(value)
  %86 = fmul fast float %85, 0x4003333340000000
  %87 = call float @dx.op.unary.f32(i32 21, float %86)  ; Exp(value)
  %88 = select i1 %81, float %82, float %87
  %89 = call float @dx.op.binary.f32(i32 35, float %64, float 0.000000e+00)  ; FMax(a,b)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %92 = bitcast float %91 to i32
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp eq i32 %95, 0
  br i1 %94, label %170, label %97, !dx.controlflow.hints !37

; <label>:97                                      ; preds = %61
  %98 = and i32 %92, 2
  %99 = icmp eq i32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %103 = fmul fast float %100, %72
  %104 = fmul fast float %101, %80
  %105 = fmul fast float %102, %88
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fmul fast float %107, %103
  %109 = fmul fast float %107, %104
  %110 = fmul fast float %107, %105
  br i1 %99, label %170, label %111, !dx.controlflow.hints !38

; <label>:111                                     ; preds = %97
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = call float @dx.op.dot3.f32(i32 55, float %108, float %109, float %110, float %125, float %126, float %127)  ; Dot3(ax,ay,az,bx,by,bz)
  %129 = fmul fast float %118, %113
  %130 = fmul fast float %123, %113
  %131 = fmul fast float %128, %113
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = fmul fast float %129, %133
  %135 = fmul fast float %130, %133
  %136 = fmul fast float %131, %133
  %137 = fadd fast float %134, 9.765625e-04
  %138 = fadd fast float %135, 9.765625e-04
  %139 = fadd fast float %136, 9.765625e-04
  %140 = call float @dx.op.unary.f32(i32 23, float %137)  ; Log(value)
  %141 = call float @dx.op.unary.f32(i32 23, float %138)  ; Log(value)
  %142 = call float @dx.op.unary.f32(i32 23, float %139)  ; Log(value)
  %143 = fadd fast float %140, 1.000000e+01
  %144 = fadd fast float %141, 1.000000e+01
  %145 = fadd fast float %142, 1.000000e+01
  %146 = fmul fast float %143, 0x3FA99999A0000000
  %147 = fmul fast float %144, 0x3FA99999A0000000
  %148 = fmul fast float %145, 0x3FA99999A0000000
  %149 = call float @dx.op.unary.f32(i32 7, float %146)  ; Saturate(value)
  %150 = call float @dx.op.unary.f32(i32 7, float %147)  ; Saturate(value)
  %151 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = fmul fast float %153, %149
  %157 = fmul fast float %154, %150
  %158 = fmul fast float %155, %151
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %158, %162
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %7, float %163, float %164, float %165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = extractvalue %dx.types.ResRet.f32 %166, 1
  %169 = extractvalue %dx.types.ResRet.f32 %166, 2
  br label %170

; <label>:170                                     ; preds = %111, %97, %61
  %171 = phi float [ %167, %111 ], [ %72, %61 ], [ %108, %97 ]
  %172 = phi float [ %168, %111 ], [ %80, %61 ], [ %109, %97 ]
  %173 = phi float [ %169, %111 ], [ %88, %61 ], [ %110, %97 ]
  %174 = fcmp fast oeq float %89, 0.000000e+00
  br i1 %174, label %175, label %176, !dx.controlflow.hints !39

; <label>:175                                     ; preds = %170
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %176

; <label>:176                                     ; preds = %175, %170
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2, %dx.types.Handle %6, float %13, float %14, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %181 = bitcast float %180 to i32
  %182 = and i32 %181, 65535
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = fcmp fast une float %183, 0.000000e+00
  %185 = select i1 %184, float 0.000000e+00, float 1.000000e+00
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fmul fast float %187, %178
  %189 = fmul fast float %188, %185
  %190 = fsub fast float 1.000000e+00, %189
  %191 = fmul fast float %190, %171
  %192 = fmul fast float %190, %172
  %193 = fmul fast float %190, %173
  %194 = extractvalue %dx.types.CBufRet.f32 %186, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %186, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %197 = fmul fast float %194, %188
  %198 = fmul fast float %195, %188
  %199 = fmul fast float %196, %188
  %200 = fadd fast float %191, %197
  %201 = fadd fast float %192, %198
  %202 = fadd fast float %193, %199
  br i1 %96, label %203, label %510, !dx.controlflow.hints !40

; <label>:203                                     ; preds = %176
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = bitcast float %205 to i32
  %207 = and i32 %206, 128
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %223, label %209

; <label>:209                                     ; preds = %203
  %210 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %211 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %212 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %213 = fmul fast float %210, 9.687500e-01
  %214 = fmul fast float %211, 9.687500e-01
  %215 = fmul fast float %212, 9.687500e-01
  %216 = fadd fast float %213, 1.562500e-02
  %217 = fadd fast float %214, 1.562500e-02
  %218 = fadd fast float %215, 1.562500e-02
  %219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %7, float %216, float %217, float %218, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %220 = extractvalue %dx.types.ResRet.f32 %219, 0
  %221 = extractvalue %dx.types.ResRet.f32 %219, 1
  %222 = extractvalue %dx.types.ResRet.f32 %219, 2
  br label %510

; <label>:223                                     ; preds = %203
  %224 = and i32 %206, 127
  switch i32 %224, label %510 [
    i32 1, label %225
    i32 2, label %225
    i32 0, label %225
    i32 3, label %255
    i32 4, label %376
  ]

; <label>:225                                     ; preds = %223, %223, %223
  %226 = call float @dx.op.unary.f32(i32 7, float %200)  ; Saturate(value)
  %227 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %228 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %229 = call float @dx.op.unary.f32(i32 23, float %226)  ; Log(value)
  %230 = call float @dx.op.unary.f32(i32 23, float %227)  ; Log(value)
  %231 = call float @dx.op.unary.f32(i32 23, float %228)  ; Log(value)
  %232 = fmul fast float %229, 0x3FDAAAAAA0000000
  %233 = fmul fast float %230, 0x3FDAAAAAA0000000
  %234 = fmul fast float %231, 0x3FDAAAAAA0000000
  %235 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %236 = call float @dx.op.unary.f32(i32 21, float %233)  ; Exp(value)
  %237 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %238 = fmul fast float %235, 0x3FF0E147A0000000
  %239 = fmul fast float %236, 0x3FF0E147A0000000
  %240 = fmul fast float %237, 0x3FF0E147A0000000
  %241 = fadd fast float %238, 0xBFAC28F5C0000000
  %242 = fadd fast float %239, 0xBFAC28F5C0000000
  %243 = fadd fast float %240, 0xBFAC28F5C0000000
  %244 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %245 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %246 = call float @dx.op.unary.f32(i32 7, float %243)  ; Saturate(value)
  %247 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %248 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %249 = fmul fast float %247, %244
  %250 = fmul fast float %247, %245
  %251 = fmul fast float %247, %246
  %252 = fadd fast float %249, %248
  %253 = fadd fast float %250, %248
  %254 = fadd fast float %251, %248
  br label %510

; <label>:255                                     ; preds = %223
  %256 = fmul fast float %200, 0x4163D57C00000000
  %257 = fmul fast float %201, 0x4163D57C00000000
  %258 = fmul fast float %202, 0x4163D57C00000000
  %259 = fadd fast float %256, 9.999980e+05
  %260 = fadd fast float %257, 9.999980e+05
  %261 = fadd fast float %258, 9.999980e+05
  %262 = fmul fast float %259, %200
  %263 = fmul fast float %260, %201
  %264 = fmul fast float %261, %202
  %265 = fadd fast float %262, 0xC0AFE17A60000000
  %266 = fadd fast float %263, 0xC0AFE17A60000000
  %267 = fadd fast float %264, 0xC0AFE17A60000000
  %268 = fmul fast float %265, %200
  %269 = fmul fast float %266, %201
  %270 = fmul fast float %267, %202
  %271 = fmul fast float %200, 0x40F753C340000000
  %272 = fmul fast float %201, 0x40F753C340000000
  %273 = fmul fast float %202, 0x40F753C340000000
  %274 = fsub fast float 9.999990e+06, %271
  %275 = fsub fast float 9.999990e+06, %272
  %276 = fsub fast float 9.999990e+06, %273
  %277 = fmul fast float %274, %200
  %278 = fmul fast float %275, %201
  %279 = fmul fast float %276, %202
  %280 = fadd fast float %277, 0x4136D1DD80000000
  %281 = fadd fast float %278, 0x4136D1DD80000000
  %282 = fadd fast float %279, 0x4136D1DD80000000
  %283 = fmul fast float %280, %200
  %284 = fmul fast float %281, %201
  %285 = fmul fast float %282, %202
  %286 = fadd fast float %283, 1.000000e+00
  %287 = fadd fast float %284, 1.000000e+00
  %288 = fadd fast float %285, 1.000000e+00
  %289 = fdiv fast float %268, %286
  %290 = fdiv fast float %269, %287
  %291 = fdiv fast float %270, %288
  %292 = call float @dx.op.unary.f32(i32 7, float %289)  ; Saturate(value)
  %293 = call float @dx.op.unary.f32(i32 7, float %290)  ; Saturate(value)
  %294 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %295 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %296 = fmul fast float %292, 0x3FE413A920000000
  %297 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %293, float %296)  ; FMad(a,b,c)
  %298 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %294, float %297)  ; FMad(a,b,c)
  %299 = fmul fast float %292, 0x3FB1B089A0000000
  %300 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %293, float %299)  ; FMad(a,b,c)
  %301 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %294, float %300)  ; FMad(a,b,c)
  %302 = fmul fast float %292, 0x3F90CB2960000000
  %303 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %293, float %302)  ; FMad(a,b,c)
  %304 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %294, float %303)  ; FMad(a,b,c)
  %305 = fmul fast float %298, %295
  %306 = fmul fast float %301, %295
  %307 = fmul fast float %304, %295
  %308 = fmul fast float %305, 0x3F847AE140000000
  %309 = fmul fast float %306, 0x3F847AE140000000
  %310 = fmul fast float %307, 0x3F847AE140000000
  %311 = fmul fast float %305, 0x40B4D2F520000000
  %312 = fmul fast float %306, 0x40B4D2F520000000
  %313 = fmul fast float %307, 0x40B4D2F520000000
  %314 = fadd fast float %311, 0x41869ECF20000000
  %315 = fadd fast float %312, 0x41869ECF20000000
  %316 = fadd fast float %313, 0x41869ECF20000000
  %317 = fmul fast float %314, %308
  %318 = fmul fast float %315, %309
  %319 = fmul fast float %316, %310
  %320 = fadd fast float %317, 0x417BB79C60000000
  %321 = fadd fast float %318, 0x417BB79C60000000
  %322 = fadd fast float %319, 0x417BB79C60000000
  %323 = fmul fast float %320, %308
  %324 = fmul fast float %321, %309
  %325 = fmul fast float %322, %310
  %326 = fadd fast float %323, 0x41218DE180000000
  %327 = fadd fast float %324, 0x41218DE180000000
  %328 = fadd fast float %325, 0x41218DE180000000
  %329 = fmul fast float %326, %308
  %330 = fmul fast float %327, %309
  %331 = fmul fast float %328, %310
  %332 = fadd fast float %329, 0x4077F174E0000000
  %333 = fadd fast float %330, 0x4077F174E0000000
  %334 = fadd fast float %331, 0x4077F174E0000000
  %335 = fmul fast float %332, %308
  %336 = fmul fast float %333, %309
  %337 = fmul fast float %334, %310
  %338 = fadd fast float %335, 0x3F3FF79B80000000
  %339 = fadd fast float %336, 0x3F3FF79B80000000
  %340 = fadd fast float %337, 0x3F3FF79B80000000
  %341 = fmul fast float %305, 0x412442D320000000
  %342 = fmul fast float %306, 0x412442D320000000
  %343 = fmul fast float %307, 0x412442D320000000
  %344 = fadd fast float %341, 0x419385D5C0000000
  %345 = fadd fast float %342, 0x419385D5C0000000
  %346 = fadd fast float %343, 0x419385D5C0000000
  %347 = fmul fast float %344, %308
  %348 = fmul fast float %345, %309
  %349 = fmul fast float %346, %310
  %350 = fadd fast float %347, 4.182885e+06
  %351 = fadd fast float %348, 4.182885e+06
  %352 = fadd fast float %349, 4.182885e+06
  %353 = fmul fast float %350, %308
  %354 = fmul fast float %351, %309
  %355 = fmul fast float %352, %310
  %356 = fadd fast float %353, 0x40C4D633C0000000
  %357 = fadd fast float %354, 0x40C4D633C0000000
  %358 = fadd fast float %355, 0x40C4D633C0000000
  %359 = fmul fast float %356, %308
  %360 = fmul fast float %357, %309
  %361 = fmul fast float %358, %310
  %362 = fadd fast float %359, 1.000000e+00
  %363 = fadd fast float %360, 1.000000e+00
  %364 = fadd fast float %361, 1.000000e+00
  %365 = fdiv fast float %338, %362
  %366 = fdiv fast float %339, %363
  %367 = fdiv fast float %340, %364
  %368 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %369 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %370 = fmul fast float %368, %365
  %371 = fmul fast float %368, %366
  %372 = fmul fast float %368, %367
  %373 = fadd fast float %370, %369
  %374 = fadd fast float %371, %369
  %375 = fadd fast float %372, %369
  br label %510

; <label>:376                                     ; preds = %223
  %377 = fmul fast float %200, 0x4163D57C00000000
  %378 = fmul fast float %201, 0x4163D57C00000000
  %379 = fmul fast float %202, 0x4163D57C00000000
  %380 = fadd fast float %377, 9.999980e+05
  %381 = fadd fast float %378, 9.999980e+05
  %382 = fadd fast float %379, 9.999980e+05
  %383 = fmul fast float %380, %200
  %384 = fmul fast float %381, %201
  %385 = fmul fast float %382, %202
  %386 = fadd fast float %383, 0xC0AFE17A60000000
  %387 = fadd fast float %384, 0xC0AFE17A60000000
  %388 = fadd fast float %385, 0xC0AFE17A60000000
  %389 = fmul fast float %386, %200
  %390 = fmul fast float %387, %201
  %391 = fmul fast float %388, %202
  %392 = fmul fast float %200, 0x40F753C340000000
  %393 = fmul fast float %201, 0x40F753C340000000
  %394 = fmul fast float %202, 0x40F753C340000000
  %395 = fsub fast float 9.999990e+06, %392
  %396 = fsub fast float 9.999990e+06, %393
  %397 = fsub fast float 9.999990e+06, %394
  %398 = fmul fast float %395, %200
  %399 = fmul fast float %396, %201
  %400 = fmul fast float %397, %202
  %401 = fadd fast float %398, 0x4136D1DD80000000
  %402 = fadd fast float %399, 0x4136D1DD80000000
  %403 = fadd fast float %400, 0x4136D1DD80000000
  %404 = fmul fast float %401, %200
  %405 = fmul fast float %402, %201
  %406 = fmul fast float %403, %202
  %407 = fadd fast float %404, 1.000000e+00
  %408 = fadd fast float %405, 1.000000e+00
  %409 = fadd fast float %406, 1.000000e+00
  %410 = fdiv fast float %389, %407
  %411 = fdiv fast float %390, %408
  %412 = fdiv fast float %391, %409
  %413 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %414 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %415 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %416 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %417 = fmul fast float %413, 0x3FEA519BC0000000
  %418 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %414, float %417)  ; FMad(a,b,c)
  %419 = fmul fast float %413, 0x3FA0FED480000000
  %420 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %414, float %419)  ; FMad(a,b,c)
  %421 = fmul fast float %413, 0x3F917E1C00000000
  %422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %414, float %421)  ; FMad(a,b,c)
  %423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %415, float %422)  ; FMad(a,b,c)
  %424 = call float @dx.op.binary.f32(i32 35, float %413, float %414)  ; FMax(a,b)
  %425 = call float @dx.op.binary.f32(i32 35, float %424, float %415)  ; FMax(a,b)
  %426 = fadd fast float %425, -1.000000e+00
  %427 = fmul fast float %426, 2.500000e-01
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fsub fast float 1.000000e+00, %428
  %430 = fmul fast float %429, %418
  %431 = fmul fast float %429, %420
  %432 = fmul fast float %429, %423
  %433 = fmul fast float %428, %413
  %434 = fmul fast float %428, %414
  %435 = fmul fast float %428, %415
  %436 = fadd fast float %430, %433
  %437 = fadd fast float %431, %434
  %438 = fadd fast float %432, %435
  %439 = fmul fast float %436, %416
  %440 = fmul fast float %437, %416
  %441 = fmul fast float %438, %416
  %442 = fmul fast float %439, 0x3F847AE140000000
  %443 = fmul fast float %440, 0x3F847AE140000000
  %444 = fmul fast float %441, 0x3F847AE140000000
  %445 = fmul fast float %439, 0x40B4D2F520000000
  %446 = fmul fast float %440, 0x40B4D2F520000000
  %447 = fmul fast float %441, 0x40B4D2F520000000
  %448 = fadd fast float %445, 0x41869ECF20000000
  %449 = fadd fast float %446, 0x41869ECF20000000
  %450 = fadd fast float %447, 0x41869ECF20000000
  %451 = fmul fast float %448, %442
  %452 = fmul fast float %449, %443
  %453 = fmul fast float %450, %444
  %454 = fadd fast float %451, 0x417BB79C60000000
  %455 = fadd fast float %452, 0x417BB79C60000000
  %456 = fadd fast float %453, 0x417BB79C60000000
  %457 = fmul fast float %454, %442
  %458 = fmul fast float %455, %443
  %459 = fmul fast float %456, %444
  %460 = fadd fast float %457, 0x41218DE180000000
  %461 = fadd fast float %458, 0x41218DE180000000
  %462 = fadd fast float %459, 0x41218DE180000000
  %463 = fmul fast float %460, %442
  %464 = fmul fast float %461, %443
  %465 = fmul fast float %462, %444
  %466 = fadd fast float %463, 0x4077F174E0000000
  %467 = fadd fast float %464, 0x4077F174E0000000
  %468 = fadd fast float %465, 0x4077F174E0000000
  %469 = fmul fast float %466, %442
  %470 = fmul fast float %467, %443
  %471 = fmul fast float %468, %444
  %472 = fadd fast float %469, 0x3F3FF79B80000000
  %473 = fadd fast float %470, 0x3F3FF79B80000000
  %474 = fadd fast float %471, 0x3F3FF79B80000000
  %475 = fmul fast float %439, 0x412442D320000000
  %476 = fmul fast float %440, 0x412442D320000000
  %477 = fmul fast float %441, 0x412442D320000000
  %478 = fadd fast float %475, 0x419385D5C0000000
  %479 = fadd fast float %476, 0x419385D5C0000000
  %480 = fadd fast float %477, 0x419385D5C0000000
  %481 = fmul fast float %478, %442
  %482 = fmul fast float %479, %443
  %483 = fmul fast float %480, %444
  %484 = fadd fast float %481, 4.182885e+06
  %485 = fadd fast float %482, 4.182885e+06
  %486 = fadd fast float %483, 4.182885e+06
  %487 = fmul fast float %484, %442
  %488 = fmul fast float %485, %443
  %489 = fmul fast float %486, %444
  %490 = fadd fast float %487, 0x40C4D633C0000000
  %491 = fadd fast float %488, 0x40C4D633C0000000
  %492 = fadd fast float %489, 0x40C4D633C0000000
  %493 = fmul fast float %490, %442
  %494 = fmul fast float %491, %443
  %495 = fmul fast float %492, %444
  %496 = fadd fast float %493, 1.000000e+00
  %497 = fadd fast float %494, 1.000000e+00
  %498 = fadd fast float %495, 1.000000e+00
  %499 = fdiv fast float %472, %496
  %500 = fdiv fast float %473, %497
  %501 = fdiv fast float %474, %498
  %502 = extractvalue %dx.types.CBufRet.f32 %204, 2
  %503 = extractvalue %dx.types.CBufRet.f32 %204, 3
  %504 = fmul fast float %502, %499
  %505 = fmul fast float %502, %500
  %506 = fmul fast float %502, %501
  %507 = fadd fast float %504, %503
  %508 = fadd fast float %505, %503
  %509 = fadd fast float %506, %503
  br label %510

; <label>:510                                     ; preds = %376, %255, %225, %223, %209, %176
  %511 = phi float [ %200, %176 ], [ %220, %209 ], [ %200, %223 ], [ %507, %376 ], [ %373, %255 ], [ %252, %225 ]
  %512 = phi float [ %201, %176 ], [ %221, %209 ], [ %201, %223 ], [ %508, %376 ], [ %374, %255 ], [ %253, %225 ]
  %513 = phi float [ %202, %176 ], [ %222, %209 ], [ %202, %223 ], [ %509, %376 ], [ %375, %255 ], [ %254, %225 ]
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %12, i32 234)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 0
  %516 = extractvalue %dx.types.CBufRet.f32 %514, 2
  %517 = call float @dx.op.unary.f32(i32 23, float %89)  ; Log(value)
  %518 = fmul fast float %517, %516
  %519 = call float @dx.op.unary.f32(i32 21, float %518)  ; Exp(value)
  %520 = fmul fast float %519, %515
  %521 = extractvalue %dx.types.CBufRet.f32 %514, 1
  %522 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %523 = fmul fast float %517, %522
  %524 = call float @dx.op.unary.f32(i32 21, float %523)  ; Exp(value)
  %525 = fmul fast float %524, %521
  %526 = fadd fast float %525, %520
  %527 = fmul fast float %526, %511
  %528 = fmul fast float %526, %512
  %529 = fmul fast float %526, %513
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %527)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %526)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!4 = !{!5, null, !12, !17}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 76, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 71, i32 1, i32 4, i32 0, !7}
!12 = !{!13, !14, !15, !16}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 240, null}
!15 = !{i32 2, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 64, null}
!16 = !{i32 3, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!19 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!21 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 15, i32 15, i32 15, i32 7, i32 7]}
!22 = !{void ()* @ps_main, !"ps_main", !23, !4, !35}
!23 = !{!24, !33, null}
!24 = !{!25, !28, !30, !31}
!25 = !{i32 0, !"SV_Position", i8 9, i8 3, !26, i8 4, i32 1, i8 4, i32 0, i8 0, !27}
!26 = !{i32 0}
!27 = !{i32 3, i32 3}
!28 = !{i32 1, !"COLOR", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 1, i8 0, !29}
!29 = !{i32 3, i32 15}
!30 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 0, !27}
!31 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 2, i8 2, !27}
!32 = !{i32 7}
!33 = !{!34}
!34 = !{i32 0, !"SV_Target", i8 9, i8 16, !26, i8 0, i32 1, i8 4, i32 0, i8 0, !29}
!35 = !{i32 0, i64 16}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 1}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}

