;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; POS                      0   xyz         1     NONE   float       
; TEXCOORD                 8   xyz         2     NONE   float   xy  
; TEXCOORDS                0   xy          3     NONE   float       
; TEXCOORDS                6     zw        3     NONE   float       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: 19147cfb5ed236f0b1822ea333c707c1
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
; POS                      0                 linear       
; TEXCOORD                 8                 linear       
; TEXCOORDS                0                 linear       
; TEXCOORDS                6                 linear       
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
; cbuffer 
; {
;
;   [36 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     u32          2d      T1      t0,space5unbounded
;                                   texture    byte         r/o      T2     t41,space1     1
;                                   texture    byte         r/o      T3     t42,space1     1
;                                   texture    byte         r/o      T4     t36,space1     1
;
;
; ViewId state:
;
; Number of inputs: 16, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 4 depends on inputs: { 0, 1, 3 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<unsigned int, 4> >" = type { <4 x i32>, %"class.Texture2D<vector<unsigned int, 4> >::mips_type" }
%"class.Texture2D<vector<unsigned int, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%superterrainConstantBuffer = type { %struct.GfxTerrainInstanceData }
%struct.GfxTerrainInstanceData = type { %struct.GfxBaseInstanceData, i32 }
%struct.GfxBaseInstanceData = type { <4 x float>, <3 x i32>, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x i32], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x i32], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x float], align 4
  %28 = alloca [4 x float], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.f32 %34, 0
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %39 = fmul fast float %10, 2.000000e+00
  %40 = fmul fast float %39, %35
  %41 = fmul fast float %40, %37
  %42 = fmul fast float %11, 2.000000e+00
  %43 = fmul fast float %42, %35
  %44 = fmul fast float %43, %38
  %45 = fsub fast float 1.000000e+00, %41
  %46 = fsub fast float 1.000000e+00, %44
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = fmul fast float %45, %48
  %51 = fmul fast float %45, %49
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = fmul fast float %46, %53
  %56 = fmul fast float %46, %54
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = fadd fast float %55, %58
  %61 = fadd fast float %60, %50
  %62 = fadd fast float %56, %59
  %63 = fadd fast float %62, %51
  %64 = fmul fast float %61, %12
  %65 = fmul fast float %63, %12
  %66 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.i32 %66, 0
  %68 = mul i32 %67, 204
  %69 = add i32 %68, 160
  %70 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %69, i32 undef)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.i32 %70, 1
  %72 = bitcast i32 %71 to float
  %73 = extractvalue %dx.types.ResRet.i32 %70, 2
  %74 = bitcast i32 %73 to float
  %75 = extractvalue %dx.types.ResRet.i32 %70, 3
  %76 = bitcast i32 %75 to float
  %77 = add i32 %68, 176
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = bitcast i32 %79 to float
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %408, label %84, !dx.controlflow.hints !39

; <label>:84                                      ; preds = %0
  %85 = add i32 %68, 128
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 1
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = fadd fast float %89, %64
  %92 = fadd fast float %90, %65
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.i32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.i32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.i32 %101, 2
  %105 = extractvalue %dx.types.CBufRet.i32 %101, 3
  %106 = mul i32 %104, %104
  %107 = fadd fast float %94, 0xBF847AE140000000
  %108 = fadd fast float %95, 0xBF847AE140000000
  %109 = fsub fast float %91, %97
  %110 = fsub fast float %92, %98
  %111 = call float @dx.op.binary.f32(i32 35, float %109, float 0.000000e+00)  ; FMax(a,b)
  %112 = call float @dx.op.binary.f32(i32 35, float %110, float 0.000000e+00)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 36, float %111, float %107)  ; FMin(a,b)
  %114 = call float @dx.op.binary.f32(i32 36, float %112, float %108)  ; FMin(a,b)
  %115 = fdiv fast float %113, %99
  %116 = fdiv fast float %114, %100
  %117 = fptoui float %115 to i32
  %118 = fptoui float %116 to i32
  %119 = mul i32 %118, %102
  %120 = add i32 %119, %117
  %121 = lshr i32 %120, 1
  %122 = shl i32 %121, 2
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = shl i32 %120, 4
  %126 = and i32 %125, 16
  %127 = lshr i32 %124, %126
  %128 = and i32 %127, 255
  %129 = lshr i32 %127, 8
  %130 = and i32 %129, 31
  %131 = shl i32 1, %130
  %132 = uitofp i32 %131 to float
  %133 = fmul fast float %132, %113
  %134 = fdiv fast float %133, %94
  %135 = fmul fast float %132, %114
  %136 = fdiv fast float %135, %95
  %137 = call float @dx.op.unary.f32(i32 22, float %134)  ; Frc(value)
  %138 = call float @dx.op.unary.f32(i32 22, float %136)  ; Frc(value)
  %139 = uitofp i32 %103 to float
  %140 = fmul fast float %137, %139
  %141 = fmul fast float %138, %139
  %142 = uitofp i32 %105 to float
  %143 = fadd fast float %140, %142
  %144 = fadd fast float %141, %142
  %145 = mul i32 %106, %128
  %146 = fadd fast float %143, -1.000000e+00
  %147 = fadd fast float %144, -1.000000e+00
  %148 = call float @dx.op.unary.f32(i32 22, float %146)  ; Frc(value)
  %149 = fptoui float %146 to i32
  %150 = fptoui float %144 to i32
  %151 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  %152 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  store i32 %150, i32* %152, align 4
  %153 = add i32 %149, 1
  %154 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  %155 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %153, i32* %154, align 4
  store i32 %150, i32* %155, align 4
  %156 = add i32 %150, 1
  %157 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  %158 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %149, i32* %157, align 4
  store i32 %156, i32* %158, align 4
  %159 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  %160 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %153, i32* %159, align 4
  store i32 %156, i32* %160, align 4
  %161 = add i32 %104, -1
  br label %162

; <label>:162                                     ; preds = %185, %84
  %163 = phi i32 [ %150, %84 ], [ %189, %185 ]
  %164 = phi i32 [ %149, %84 ], [ %187, %185 ]
  %165 = phi i32 [ 0, %84 ], [ %183, %185 ]
  %166 = call i32 @dx.op.binary.i32(i32 40, i32 %164, i32 %161)  ; UMin(a,b)
  %167 = call i32 @dx.op.binary.i32(i32 40, i32 %163, i32 %161)  ; UMin(a,b)
  %168 = mul i32 %167, %104
  %169 = add i32 %166, %145
  %170 = add i32 %169, %168
  %171 = lshr i32 %170, 1
  %172 = shl i32 %171, 2
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = shl i32 %170, 4
  %176 = and i32 %175, 16
  %177 = lshr i32 %174, %176
  %178 = and i32 %177, 65535
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3EF0002000000000
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %165
  store float %181, float* %182, align 4, !tbaa !40, !noalias !44
  %183 = add nuw nsw i32 %165, 1
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %190, label %185

; <label>:185                                     ; preds = %162
  %186 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %183
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %183
  %189 = load i32, i32* %188, align 4
  br label %162

; <label>:190                                     ; preds = %162
  %191 = bitcast i32 %87 to float
  %192 = fadd fast float %143, 1.000000e+00
  %193 = fadd fast float %144, 1.000000e+00
  %194 = call float @dx.op.unary.f32(i32 22, float %144)  ; Frc(value)
  %195 = fsub fast float 1.000000e+00, %148
  %196 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  %197 = load float, float* %196, align 4, !tbaa !40, !noalias !44
  %198 = fmul fast float %197, %195
  %199 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  %200 = load float, float* %199, align 4, !tbaa !40, !noalias !44
  %201 = fmul fast float %200, %148
  %202 = fadd fast float %201, %198
  %203 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  %204 = load float, float* %203, align 4, !tbaa !40, !noalias !44
  %205 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  %206 = load float, float* %205, align 4, !tbaa !40, !noalias !44
  %207 = fmul fast float %206, %148
  %208 = fsub fast float 1.000000e+00, %194
  %209 = fmul fast float %202, %208
  %210 = call float @dx.op.unary.f32(i32 22, float %192)  ; Frc(value)
  %211 = fptoui float %192 to i32
  %212 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 0
  %213 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %211, i32* %212, align 4
  store i32 %150, i32* %213, align 4
  %214 = add i32 %211, 1
  %215 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 1
  %216 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %214, i32* %215, align 4
  store i32 %150, i32* %216, align 4
  %217 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 2
  %218 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %211, i32* %217, align 4
  store i32 %156, i32* %218, align 4
  %219 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 3
  %220 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %214, i32* %219, align 4
  store i32 %156, i32* %220, align 4
  br label %221

; <label>:221                                     ; preds = %244, %190
  %222 = phi i32 [ %150, %190 ], [ %248, %244 ]
  %223 = phi i32 [ %211, %190 ], [ %246, %244 ]
  %224 = phi i32 [ 0, %190 ], [ %242, %244 ]
  %225 = call i32 @dx.op.binary.i32(i32 40, i32 %223, i32 %161)  ; UMin(a,b)
  %226 = call i32 @dx.op.binary.i32(i32 40, i32 %222, i32 %161)  ; UMin(a,b)
  %227 = mul i32 %226, %104
  %228 = add i32 %225, %145
  %229 = add i32 %228, %227
  %230 = lshr i32 %229, 1
  %231 = shl i32 %230, 2
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = shl i32 %229, 4
  %235 = and i32 %234, 16
  %236 = lshr i32 %233, %235
  %237 = and i32 %236, 65535
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3EF0002000000000
  %240 = call float @dx.op.unary.f32(i32 7, float %239)  ; Saturate(value)
  %241 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 %224
  store float %240, float* %241, align 4, !tbaa !40, !noalias !44
  %242 = add nuw nsw i32 %224, 1
  %243 = icmp eq i32 %242, 4
  br i1 %243, label %249, label %244

; <label>:244                                     ; preds = %221
  %245 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %242
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %242
  %248 = load i32, i32* %247, align 4
  br label %221

; <label>:249                                     ; preds = %221
  %250 = fmul fast float %204, %195
  %251 = fadd fast float %207, %250
  %252 = fmul fast float %251, %194
  %253 = fsub fast float 1.000000e+00, %210
  %254 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  %255 = load float, float* %254, align 4, !tbaa !40, !noalias !44
  %256 = fmul fast float %255, %253
  %257 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  %258 = load float, float* %257, align 4, !tbaa !40, !noalias !44
  %259 = fmul fast float %258, %210
  %260 = fadd fast float %259, %256
  %261 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  %262 = load float, float* %261, align 4, !tbaa !40, !noalias !44
  %263 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  %264 = load float, float* %263, align 4, !tbaa !40, !noalias !44
  %265 = fmul fast float %264, %210
  %266 = fmul fast float %260, %208
  %267 = call float @dx.op.unary.f32(i32 22, float %143)  ; Frc(value)
  %268 = fptoui float %143 to i32
  %269 = fptoui float %147 to i32
  %270 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 0
  %271 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  store i32 %269, i32* %271, align 4
  %272 = add i32 %268, 1
  %273 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 1
  %274 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %272, i32* %273, align 4
  store i32 %269, i32* %274, align 4
  %275 = add i32 %269, 1
  %276 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 2
  %277 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %268, i32* %276, align 4
  store i32 %275, i32* %277, align 4
  %278 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 3
  %279 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %272, i32* %278, align 4
  store i32 %275, i32* %279, align 4
  br label %280

; <label>:280                                     ; preds = %303, %249
  %281 = phi i32 [ %269, %249 ], [ %307, %303 ]
  %282 = phi i32 [ %268, %249 ], [ %305, %303 ]
  %283 = phi i32 [ 0, %249 ], [ %301, %303 ]
  %284 = call i32 @dx.op.binary.i32(i32 40, i32 %282, i32 %161)  ; UMin(a,b)
  %285 = call i32 @dx.op.binary.i32(i32 40, i32 %281, i32 %161)  ; UMin(a,b)
  %286 = mul i32 %285, %104
  %287 = add i32 %284, %145
  %288 = add i32 %287, %286
  %289 = lshr i32 %288, 1
  %290 = shl i32 %289, 2
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %288, 4
  %294 = and i32 %293, 16
  %295 = lshr i32 %292, %294
  %296 = and i32 %295, 65535
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3EF0002000000000
  %299 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %300 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 %283
  store float %299, float* %300, align 4, !tbaa !40, !noalias !44
  %301 = add nuw nsw i32 %283, 1
  %302 = icmp eq i32 %301, 4
  br i1 %302, label %308, label %303

; <label>:303                                     ; preds = %280
  %304 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %301
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %301
  %307 = load i32, i32* %306, align 4
  br label %280

; <label>:308                                     ; preds = %280
  %309 = fmul fast float %262, %253
  %310 = fadd fast float %265, %309
  %311 = fmul fast float %310, %194
  %312 = call float @dx.op.unary.f32(i32 22, float %147)  ; Frc(value)
  %313 = fsub fast float 1.000000e+00, %267
  %314 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  %315 = load float, float* %314, align 4, !tbaa !40, !noalias !44
  %316 = fmul fast float %315, %313
  %317 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  %318 = load float, float* %317, align 4, !tbaa !40, !noalias !44
  %319 = fmul fast float %318, %267
  %320 = fadd fast float %319, %316
  %321 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  %322 = load float, float* %321, align 4, !tbaa !40, !noalias !44
  %323 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  %324 = load float, float* %323, align 4, !tbaa !40, !noalias !44
  %325 = fmul fast float %324, %267
  %326 = fsub fast float 1.000000e+00, %312
  %327 = fmul fast float %320, %326
  %328 = fptoui float %193 to i32
  %329 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  %330 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %268, i32* %329, align 4
  store i32 %328, i32* %330, align 4
  %331 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  %332 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %272, i32* %331, align 4
  store i32 %328, i32* %332, align 4
  %333 = add i32 %328, 1
  %334 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  %335 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %268, i32* %334, align 4
  store i32 %333, i32* %335, align 4
  %336 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  %337 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %272, i32* %336, align 4
  store i32 %333, i32* %337, align 4
  br label %338

; <label>:338                                     ; preds = %361, %308
  %339 = phi i32 [ %328, %308 ], [ %365, %361 ]
  %340 = phi i32 [ %268, %308 ], [ %363, %361 ]
  %341 = phi i32 [ 0, %308 ], [ %359, %361 ]
  %342 = call i32 @dx.op.binary.i32(i32 40, i32 %340, i32 %161)  ; UMin(a,b)
  %343 = call i32 @dx.op.binary.i32(i32 40, i32 %339, i32 %161)  ; UMin(a,b)
  %344 = mul i32 %343, %104
  %345 = add i32 %342, %145
  %346 = add i32 %345, %344
  %347 = lshr i32 %346, 1
  %348 = shl i32 %347, 2
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = shl i32 %346, 4
  %352 = and i32 %351, 16
  %353 = lshr i32 %350, %352
  %354 = and i32 %353, 65535
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3EF0002000000000
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 %341
  store float %357, float* %358, align 4, !tbaa !40, !noalias !44
  %359 = add nuw nsw i32 %341, 1
  %360 = icmp eq i32 %359, 4
  br i1 %360, label %366, label %361

; <label>:361                                     ; preds = %338
  %362 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %359
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %359
  %365 = load i32, i32* %364, align 4
  br label %338

; <label>:366                                     ; preds = %338
  %367 = fmul fast float %322, %313
  %368 = fadd fast float %325, %367
  %369 = fmul fast float %368, %312
  %370 = call float @dx.op.unary.f32(i32 22, float %193)  ; Frc(value)
  %371 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  %372 = load float, float* %371, align 4, !tbaa !40, !noalias !44
  %373 = fmul fast float %372, %313
  %374 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  %375 = load float, float* %374, align 4, !tbaa !40, !noalias !44
  %376 = fmul fast float %375, %267
  %377 = fadd fast float %376, %373
  %378 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  %379 = load float, float* %378, align 4, !tbaa !40, !noalias !44
  %380 = fmul fast float %379, %313
  %381 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  %382 = load float, float* %381, align 4, !tbaa !40, !noalias !44
  %383 = fmul fast float %382, %267
  %384 = fadd fast float %383, %380
  %385 = fsub fast float 1.000000e+00, %370
  %386 = fmul fast float %377, %385
  %387 = fmul fast float %384, %370
  %388 = fmul fast float %94, 2.000000e+00
  %389 = fmul fast float %132, %139
  %390 = fdiv fast float %388, %389
  %391 = fsub fast float -0.000000e+00, %209
  %392 = fsub fast float %391, %252
  %393 = fadd fast float %392, %266
  %394 = fadd fast float %393, %311
  %395 = fmul fast float %95, 2.000000e+00
  %396 = fdiv fast float %395, %389
  %397 = fsub fast float -0.000000e+00, %327
  %398 = fsub fast float %397, %369
  %399 = fadd fast float %398, %386
  %400 = fadd fast float %399, %387
  %401 = fmul fast float %191, %394
  %402 = fmul fast float %401, %396
  %403 = fsub fast float -0.000000e+00, %402
  %404 = fmul fast float %191, %390
  %405 = fmul fast float %404, %400
  %406 = fsub fast float -0.000000e+00, %405
  %407 = fmul fast float %396, %390
  br label %994

; <label>:408                                     ; preds = %0
  %409 = fsub fast float %64, %72
  %410 = fsub fast float %65, %74
  %411 = add i32 %68, 64
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = add i32 %68, 80
  %414 = add i32 %68, 96
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %78, 2
  %417 = lshr i32 %416, 24
  %418 = and i32 %417, 7
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 3
  %421 = bitcast i32 %420 to float
  %422 = extractvalue %dx.types.ResRet.i32 %415, 0
  %423 = bitcast i32 %422 to float
  %424 = extractvalue %dx.types.ResRet.i32 %415, 1
  %425 = bitcast i32 %424 to float
  %426 = call float @dx.op.dot3.f32(i32 55, float %409, float %410, float 1.000000e+00, float %421, float %423, float %425)  ; Dot3(ax,ay,az,bx,by,bz)
  %427 = extractvalue %dx.types.ResRet.i32 %412, 0
  %428 = bitcast i32 %427 to float
  %429 = extractvalue %dx.types.ResRet.i32 %412, 1
  %430 = bitcast i32 %429 to float
  %431 = extractvalue %dx.types.ResRet.i32 %412, 2
  %432 = bitcast i32 %431 to float
  %433 = call float @dx.op.dot3.f32(i32 55, float %409, float %410, float 1.000000e+00, float %428, float %430, float %432)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = add nuw nsw i32 %418, 282
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %434)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %438 = fdiv fast float 5.000000e-01, %436
  %439 = fmul fast float %438, 2.000000e+00
  %440 = fsub fast float 1.000000e+00, %439
  %441 = fmul fast float %440, %433
  %442 = fmul fast float %440, %426
  %443 = fadd fast float %441, %438
  %444 = fadd fast float %442, %438
  %445 = fmul fast float %443, %437
  %446 = fmul fast float %444, %437
  %447 = extractvalue %dx.types.ResRet.i32 %78, 1
  %448 = and i32 %447, 16777215
  %449 = add i32 %448, 0
  %450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %450, %dx.types.Handle %4, float %445, float %446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = add i32 %68, 128
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = bitcast i32 %455 to float
  %457 = extractvalue %dx.types.ResRet.i32 %454, 1
  %458 = bitcast i32 %457 to float
  %459 = fmul fast float %458, %452
  %460 = fadd fast float %72, %64
  %461 = fadd fast float %74, %65
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = bitcast i32 %463 to float
  %465 = extractvalue %dx.types.ResRet.i32 %462, 1
  %466 = bitcast i32 %465 to float
  %467 = extractvalue %dx.types.ResRet.i32 %462, 2
  %468 = bitcast i32 %467 to float
  %469 = call float @dx.op.dot3.f32(i32 55, float %460, float %461, float 1.000000e+00, float %464, float %466, float %468)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 3
  %472 = bitcast i32 %471 to float
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = bitcast i32 %474 to float
  %476 = extractvalue %dx.types.ResRet.i32 %473, 1
  %477 = bitcast i32 %476 to float
  %478 = call float @dx.op.dot3.f32(i32 55, float %460, float %461, float 1.000000e+00, float %472, float %475, float %477)  ; Dot3(ax,ay,az,bx,by,bz)
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 3
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %500, !dx.controlflow.hints !50

; <label>:483                                     ; preds = %408
  %484 = extractvalue %dx.types.ResRet.i32 %479, 2
  %485 = lshr i32 %484, 24
  %486 = and i32 %485, 7
  %487 = add nuw nsw i32 %486, 282
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %487)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %491 = fdiv fast float 5.000000e-01, %489
  %492 = fmul fast float %491, 2.000000e+00
  %493 = fsub fast float 1.000000e+00, %492
  %494 = fmul fast float %493, %469
  %495 = fmul fast float %493, %478
  %496 = fadd fast float %494, %491
  %497 = fadd fast float %495, %491
  %498 = fmul fast float %496, %490
  %499 = fmul fast float %497, %490
  br label %500

; <label>:500                                     ; preds = %483, %408
  %501 = phi float [ %498, %483 ], [ %469, %408 ]
  %502 = phi float [ %499, %483 ], [ %478, %408 ]
  br i1 %482, label %616, label %503, !dx.controlflow.hints !51

; <label>:503                                     ; preds = %500
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %506 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %507 = fmul fast float %505, %501
  %508 = fmul fast float %506, %502
  %509 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.i32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.i32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.i32 %511, 2
  %515 = extractvalue %dx.types.CBufRet.i32 %511, 3
  %516 = fadd fast float %505, 0xBF847AE140000000
  %517 = fadd fast float %506, 0xBF847AE140000000
  %518 = call float @dx.op.binary.f32(i32 35, float %507, float 0.000000e+00)  ; FMax(a,b)
  %519 = call float @dx.op.binary.f32(i32 35, float %508, float 0.000000e+00)  ; FMax(a,b)
  %520 = call float @dx.op.binary.f32(i32 36, float %518, float %516)  ; FMin(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %519, float %517)  ; FMin(a,b)
  %522 = fdiv fast float %520, %509
  %523 = fdiv fast float %521, %510
  %524 = fptoui float %522 to i32
  %525 = fptoui float %523 to i32
  %526 = mul i32 %525, %512
  %527 = add i32 %526, %524
  %528 = lshr i32 %527, 1
  %529 = shl i32 %528, 2
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = shl i32 %527, 4
  %533 = and i32 %532, 16
  %534 = lshr i32 %531, %533
  %535 = and i32 %534, 255
  %536 = lshr i32 %534, 8
  %537 = and i32 %536, 31
  %538 = shl i32 1, %537
  %539 = uitofp i32 %538 to float
  %540 = fmul fast float %539, %520
  %541 = fdiv fast float %540, %505
  %542 = fmul fast float %539, %521
  %543 = fdiv fast float %542, %506
  %544 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %545 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %546 = uitofp i32 %513 to float
  %547 = fmul fast float %544, %546
  %548 = fmul fast float %545, %546
  %549 = uitofp i32 %515 to float
  %550 = fadd fast float %547, %549
  %551 = fadd fast float %548, %549
  %552 = mul i32 %535, %514
  %553 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %554 = fptoui float %550 to i32
  %555 = fptoui float %551 to i32
  %556 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  %557 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %554, i32* %556, align 4
  store i32 %555, i32* %557, align 4
  %558 = add i32 %554, 1
  %559 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %560 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %558, i32* %559, align 4
  store i32 %555, i32* %560, align 4
  %561 = add i32 %555, 1
  %562 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %563 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %554, i32* %562, align 4
  store i32 %561, i32* %563, align 4
  %564 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %565 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %558, i32* %564, align 4
  store i32 %561, i32* %565, align 4
  br label %566

; <label>:566                                     ; preds = %590, %503
  %567 = phi i32 [ %555, %503 ], [ %594, %590 ]
  %568 = phi i32 [ %554, %503 ], [ %592, %590 ]
  %569 = phi i32 [ 0, %503 ], [ %588, %590 ]
  %570 = add i32 %514, -1
  %571 = call i32 @dx.op.binary.i32(i32 40, i32 %568, i32 %570)  ; UMin(a,b)
  %572 = call i32 @dx.op.binary.i32(i32 40, i32 %567, i32 %570)  ; UMin(a,b)
  %573 = add i32 %572, %552
  %574 = mul i32 %573, %514
  %575 = add i32 %574, %571
  %576 = lshr i32 %575, 1
  %577 = shl i32 %576, 2
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = shl i32 %575, 4
  %581 = and i32 %580, 16
  %582 = lshr i32 %579, %581
  %583 = and i32 %582, 65535
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3EF0002000000000
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  %587 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %569
  store float %586, float* %587, align 4, !tbaa !40, !noalias !52
  %588 = add nuw nsw i32 %569, 1
  %589 = icmp eq i32 %588, 4
  br i1 %589, label %595, label %590

; <label>:590                                     ; preds = %566
  %591 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %588
  %592 = load i32, i32* %591, align 4
  %593 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %588
  %594 = load i32, i32* %593, align 4
  br label %566

; <label>:595                                     ; preds = %566
  %596 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %597 = fsub fast float 1.000000e+00, %553
  %598 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %599 = load float, float* %598, align 4, !tbaa !40, !noalias !52
  %600 = fmul fast float %599, %597
  %601 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %602 = load float, float* %601, align 4, !tbaa !40, !noalias !52
  %603 = fmul fast float %602, %553
  %604 = fadd fast float %603, %600
  %605 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %606 = load float, float* %605, align 4, !tbaa !40, !noalias !52
  %607 = fmul fast float %606, %597
  %608 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %609 = load float, float* %608, align 4, !tbaa !40, !noalias !52
  %610 = fmul fast float %609, %553
  %611 = fadd fast float %610, %607
  %612 = fsub fast float 1.000000e+00, %596
  %613 = fmul fast float %604, %612
  %614 = fmul fast float %611, %596
  %615 = fadd fast float %614, %613
  br label %623

; <label>:616                                     ; preds = %500
  %617 = extractvalue %dx.types.ResRet.i32 %479, 1
  %618 = and i32 %617, 16777215
  %619 = add i32 %618, 0
  %620 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %619, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %620, %dx.types.Handle %4, float %501, float %502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  br label %623

; <label>:623                                     ; preds = %616, %595
  %624 = phi float [ %615, %595 ], [ %622, %616 ]
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = bitcast i32 %626 to float
  %628 = extractvalue %dx.types.ResRet.i32 %625, 1
  %629 = bitcast i32 %628 to float
  %630 = fmul fast float %629, %624
  %631 = fsub fast float %64, %76
  %632 = fsub fast float %65, %80
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = bitcast i32 %634 to float
  %636 = extractvalue %dx.types.ResRet.i32 %633, 1
  %637 = bitcast i32 %636 to float
  %638 = extractvalue %dx.types.ResRet.i32 %633, 2
  %639 = bitcast i32 %638 to float
  %640 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float 1.000000e+00, float %635, float %637, float %639)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 3
  %643 = bitcast i32 %642 to float
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = bitcast i32 %645 to float
  %647 = extractvalue %dx.types.ResRet.i32 %644, 1
  %648 = bitcast i32 %647 to float
  %649 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float 1.000000e+00, float %643, float %646, float %648)  ; Dot3(ax,ay,az,bx,by,bz)
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.i32 %651, 3
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %671, !dx.controlflow.hints !50

; <label>:654                                     ; preds = %623
  %655 = extractvalue %dx.types.ResRet.i32 %650, 2
  %656 = lshr i32 %655, 24
  %657 = and i32 %656, 7
  %658 = add nuw nsw i32 %657, 282
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %658)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %662 = fdiv fast float 5.000000e-01, %660
  %663 = fmul fast float %662, 2.000000e+00
  %664 = fsub fast float 1.000000e+00, %663
  %665 = fmul fast float %664, %640
  %666 = fmul fast float %664, %649
  %667 = fadd fast float %665, %662
  %668 = fadd fast float %666, %662
  %669 = fmul fast float %667, %661
  %670 = fmul fast float %668, %661
  br label %671

; <label>:671                                     ; preds = %654, %623
  %672 = phi float [ %669, %654 ], [ %640, %623 ]
  %673 = phi float [ %670, %654 ], [ %649, %623 ]
  br i1 %653, label %787, label %674, !dx.controlflow.hints !51

; <label>:674                                     ; preds = %671
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %678 = fmul fast float %676, %672
  %679 = fmul fast float %677, %673
  %680 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %681 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.i32 %682, 0
  %684 = extractvalue %dx.types.CBufRet.i32 %682, 1
  %685 = extractvalue %dx.types.CBufRet.i32 %682, 2
  %686 = extractvalue %dx.types.CBufRet.i32 %682, 3
  %687 = fadd fast float %676, 0xBF847AE140000000
  %688 = fadd fast float %677, 0xBF847AE140000000
  %689 = call float @dx.op.binary.f32(i32 35, float %678, float 0.000000e+00)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 35, float %679, float 0.000000e+00)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 36, float %689, float %687)  ; FMin(a,b)
  %692 = call float @dx.op.binary.f32(i32 36, float %690, float %688)  ; FMin(a,b)
  %693 = fdiv fast float %691, %680
  %694 = fdiv fast float %692, %681
  %695 = fptoui float %693 to i32
  %696 = fptoui float %694 to i32
  %697 = mul i32 %696, %683
  %698 = add i32 %697, %695
  %699 = lshr i32 %698, 1
  %700 = shl i32 %699, 2
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = shl i32 %698, 4
  %704 = and i32 %703, 16
  %705 = lshr i32 %702, %704
  %706 = and i32 %705, 255
  %707 = lshr i32 %705, 8
  %708 = and i32 %707, 31
  %709 = shl i32 1, %708
  %710 = uitofp i32 %709 to float
  %711 = fmul fast float %710, %691
  %712 = fdiv fast float %711, %676
  %713 = fmul fast float %710, %692
  %714 = fdiv fast float %713, %677
  %715 = call float @dx.op.unary.f32(i32 22, float %712)  ; Frc(value)
  %716 = call float @dx.op.unary.f32(i32 22, float %714)  ; Frc(value)
  %717 = uitofp i32 %684 to float
  %718 = fmul fast float %715, %717
  %719 = fmul fast float %716, %717
  %720 = uitofp i32 %686 to float
  %721 = fadd fast float %718, %720
  %722 = fadd fast float %719, %720
  %723 = mul i32 %706, %685
  %724 = call float @dx.op.unary.f32(i32 22, float %721)  ; Frc(value)
  %725 = fptoui float %721 to i32
  %726 = fptoui float %722 to i32
  %727 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 0
  %728 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %725, i32* %727, align 4
  store i32 %726, i32* %728, align 4
  %729 = add i32 %725, 1
  %730 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 1
  %731 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %729, i32* %730, align 4
  store i32 %726, i32* %731, align 4
  %732 = add i32 %726, 1
  %733 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 2
  %734 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %725, i32* %733, align 4
  store i32 %732, i32* %734, align 4
  %735 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 3
  %736 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %729, i32* %735, align 4
  store i32 %732, i32* %736, align 4
  br label %737

; <label>:737                                     ; preds = %761, %674
  %738 = phi i32 [ %726, %674 ], [ %765, %761 ]
  %739 = phi i32 [ %725, %674 ], [ %763, %761 ]
  %740 = phi i32 [ 0, %674 ], [ %759, %761 ]
  %741 = add i32 %685, -1
  %742 = call i32 @dx.op.binary.i32(i32 40, i32 %739, i32 %741)  ; UMin(a,b)
  %743 = call i32 @dx.op.binary.i32(i32 40, i32 %738, i32 %741)  ; UMin(a,b)
  %744 = add i32 %743, %723
  %745 = mul i32 %744, %685
  %746 = add i32 %745, %742
  %747 = lshr i32 %746, 1
  %748 = shl i32 %747, 2
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = shl i32 %746, 4
  %752 = and i32 %751, 16
  %753 = lshr i32 %750, %752
  %754 = and i32 %753, 65535
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3EF0002000000000
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 %740
  store float %757, float* %758, align 4, !tbaa !40, !noalias !52
  %759 = add nuw nsw i32 %740, 1
  %760 = icmp eq i32 %759, 4
  br i1 %760, label %766, label %761

; <label>:761                                     ; preds = %737
  %762 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %759
  %763 = load i32, i32* %762, align 4
  %764 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %759
  %765 = load i32, i32* %764, align 4
  br label %737

; <label>:766                                     ; preds = %737
  %767 = call float @dx.op.unary.f32(i32 22, float %722)  ; Frc(value)
  %768 = fsub fast float 1.000000e+00, %724
  %769 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 0
  %770 = load float, float* %769, align 4, !tbaa !40, !noalias !52
  %771 = fmul fast float %770, %768
  %772 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 1
  %773 = load float, float* %772, align 4, !tbaa !40, !noalias !52
  %774 = fmul fast float %773, %724
  %775 = fadd fast float %774, %771
  %776 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 2
  %777 = load float, float* %776, align 4, !tbaa !40, !noalias !52
  %778 = fmul fast float %777, %768
  %779 = getelementptr inbounds [4 x float], [4 x float]* %28, i32 0, i32 3
  %780 = load float, float* %779, align 4, !tbaa !40, !noalias !52
  %781 = fmul fast float %780, %724
  %782 = fadd fast float %781, %778
  %783 = fsub fast float 1.000000e+00, %767
  %784 = fmul fast float %775, %783
  %785 = fmul fast float %782, %767
  %786 = fadd fast float %785, %784
  br label %794

; <label>:787                                     ; preds = %671
  %788 = extractvalue %dx.types.ResRet.i32 %650, 1
  %789 = and i32 %788, 16777215
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %791, %dx.types.Handle %4, float %672, float %673, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  br label %794

; <label>:794                                     ; preds = %787, %766
  %795 = phi float [ %786, %766 ], [ %793, %787 ]
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = bitcast i32 %797 to float
  %799 = extractvalue %dx.types.ResRet.i32 %796, 1
  %800 = bitcast i32 %799 to float
  %801 = fmul fast float %800, %795
  %802 = fadd fast float %76, %64
  %803 = fadd fast float %80, %65
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = bitcast i32 %805 to float
  %807 = extractvalue %dx.types.ResRet.i32 %804, 1
  %808 = bitcast i32 %807 to float
  %809 = extractvalue %dx.types.ResRet.i32 %804, 2
  %810 = bitcast i32 %809 to float
  %811 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float 1.000000e+00, float %806, float %808, float %810)  ; Dot3(ax,ay,az,bx,by,bz)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 3
  %814 = bitcast i32 %813 to float
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = bitcast i32 %816 to float
  %818 = extractvalue %dx.types.ResRet.i32 %815, 1
  %819 = bitcast i32 %818 to float
  %820 = call float @dx.op.dot3.f32(i32 55, float %802, float %803, float 1.000000e+00, float %814, float %817, float %819)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.i32 %822, 3
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %825, label %842, !dx.controlflow.hints !50

; <label>:825                                     ; preds = %794
  %826 = extractvalue %dx.types.ResRet.i32 %821, 2
  %827 = lshr i32 %826, 24
  %828 = and i32 %827, 7
  %829 = add nuw nsw i32 %828, 282
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %829)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %833 = fdiv fast float 5.000000e-01, %831
  %834 = fmul fast float %833, 2.000000e+00
  %835 = fsub fast float 1.000000e+00, %834
  %836 = fmul fast float %835, %811
  %837 = fmul fast float %835, %820
  %838 = fadd fast float %836, %833
  %839 = fadd fast float %837, %833
  %840 = fmul fast float %838, %832
  %841 = fmul fast float %839, %832
  br label %842

; <label>:842                                     ; preds = %825, %794
  %843 = phi float [ %840, %825 ], [ %811, %794 ]
  %844 = phi float [ %841, %825 ], [ %820, %794 ]
  br i1 %824, label %958, label %845, !dx.controlflow.hints !51

; <label>:845                                     ; preds = %842
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %849 = fmul fast float %847, %843
  %850 = fmul fast float %848, %844
  %851 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %852 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.i32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.i32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.i32 %853, 2
  %857 = extractvalue %dx.types.CBufRet.i32 %853, 3
  %858 = fadd fast float %847, 0xBF847AE140000000
  %859 = fadd fast float %848, 0xBF847AE140000000
  %860 = call float @dx.op.binary.f32(i32 35, float %849, float 0.000000e+00)  ; FMax(a,b)
  %861 = call float @dx.op.binary.f32(i32 35, float %850, float 0.000000e+00)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 36, float %860, float %858)  ; FMin(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %861, float %859)  ; FMin(a,b)
  %864 = fdiv fast float %862, %851
  %865 = fdiv fast float %863, %852
  %866 = fptoui float %864 to i32
  %867 = fptoui float %865 to i32
  %868 = mul i32 %867, %854
  %869 = add i32 %868, %866
  %870 = lshr i32 %869, 1
  %871 = shl i32 %870, 2
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = shl i32 %869, 4
  %875 = and i32 %874, 16
  %876 = lshr i32 %873, %875
  %877 = and i32 %876, 255
  %878 = lshr i32 %876, 8
  %879 = and i32 %878, 31
  %880 = shl i32 1, %879
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, %862
  %883 = fdiv fast float %882, %847
  %884 = fmul fast float %881, %863
  %885 = fdiv fast float %884, %848
  %886 = call float @dx.op.unary.f32(i32 22, float %883)  ; Frc(value)
  %887 = call float @dx.op.unary.f32(i32 22, float %885)  ; Frc(value)
  %888 = uitofp i32 %855 to float
  %889 = fmul fast float %886, %888
  %890 = fmul fast float %887, %888
  %891 = uitofp i32 %857 to float
  %892 = fadd fast float %889, %891
  %893 = fadd fast float %890, %891
  %894 = mul i32 %877, %856
  %895 = call float @dx.op.unary.f32(i32 22, float %892)  ; Frc(value)
  %896 = fptoui float %892 to i32
  %897 = fptoui float %893 to i32
  %898 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  %899 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %896, i32* %898, align 4
  store i32 %897, i32* %899, align 4
  %900 = add i32 %896, 1
  %901 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  %902 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %900, i32* %901, align 4
  store i32 %897, i32* %902, align 4
  %903 = add i32 %897, 1
  %904 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  %905 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %896, i32* %904, align 4
  store i32 %903, i32* %905, align 4
  %906 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  %907 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %900, i32* %906, align 4
  store i32 %903, i32* %907, align 4
  br label %908

; <label>:908                                     ; preds = %932, %845
  %909 = phi i32 [ %897, %845 ], [ %936, %932 ]
  %910 = phi i32 [ %896, %845 ], [ %934, %932 ]
  %911 = phi i32 [ 0, %845 ], [ %930, %932 ]
  %912 = add i32 %856, -1
  %913 = call i32 @dx.op.binary.i32(i32 40, i32 %910, i32 %912)  ; UMin(a,b)
  %914 = call i32 @dx.op.binary.i32(i32 40, i32 %909, i32 %912)  ; UMin(a,b)
  %915 = add i32 %914, %894
  %916 = mul i32 %915, %856
  %917 = add i32 %916, %913
  %918 = lshr i32 %917, 1
  %919 = shl i32 %918, 2
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = shl i32 %917, 4
  %923 = and i32 %922, 16
  %924 = lshr i32 %921, %923
  %925 = and i32 %924, 65535
  %926 = uitofp i32 %925 to float
  %927 = fmul fast float %926, 0x3EF0002000000000
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 %911
  store float %928, float* %929, align 4, !tbaa !40, !noalias !52
  %930 = add nuw nsw i32 %911, 1
  %931 = icmp eq i32 %930, 4
  br i1 %931, label %937, label %932

; <label>:932                                     ; preds = %908
  %933 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %930
  %934 = load i32, i32* %933, align 4
  %935 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %930
  %936 = load i32, i32* %935, align 4
  br label %908

; <label>:937                                     ; preds = %908
  %938 = call float @dx.op.unary.f32(i32 22, float %893)  ; Frc(value)
  %939 = fsub fast float 1.000000e+00, %895
  %940 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 0
  %941 = load float, float* %940, align 4, !tbaa !40, !noalias !52
  %942 = fmul fast float %941, %939
  %943 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 1
  %944 = load float, float* %943, align 4, !tbaa !40, !noalias !52
  %945 = fmul fast float %944, %895
  %946 = fadd fast float %945, %942
  %947 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 2
  %948 = load float, float* %947, align 4, !tbaa !40, !noalias !52
  %949 = fmul fast float %948, %939
  %950 = getelementptr inbounds [4 x float], [4 x float]* %27, i32 0, i32 3
  %951 = load float, float* %950, align 4, !tbaa !40, !noalias !52
  %952 = fmul fast float %951, %895
  %953 = fadd fast float %952, %949
  %954 = fsub fast float 1.000000e+00, %938
  %955 = fmul fast float %946, %954
  %956 = fmul fast float %953, %938
  %957 = fadd fast float %956, %955
  br label %965

; <label>:958                                     ; preds = %842
  %959 = extractvalue %dx.types.ResRet.i32 %821, 1
  %960 = and i32 %959, 16777215
  %961 = add i32 %960, 0
  %962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %961, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %962, %dx.types.Handle %4, float %843, float %844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  br label %965

; <label>:965                                     ; preds = %958, %937
  %966 = phi float [ %957, %937 ], [ %964, %958 ]
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = bitcast i32 %968 to float
  %970 = extractvalue %dx.types.ResRet.i32 %967, 1
  %971 = bitcast i32 %970 to float
  %972 = fmul fast float %971, %966
  %973 = fmul fast float %76, 2.000000e+00
  %974 = fmul fast float %80, 2.000000e+00
  %975 = fsub fast float -0.000000e+00, %798
  %976 = fsub fast float %975, %801
  %977 = fadd fast float %976, %969
  %978 = fadd fast float %977, %972
  %979 = fmul fast float %72, 2.000000e+00
  %980 = fmul fast float %74, 2.000000e+00
  %981 = fsub fast float -0.000000e+00, %456
  %982 = fsub fast float %981, %459
  %983 = fadd fast float %982, %627
  %984 = fadd fast float %983, %630
  %985 = fmul fast float %978, %980
  %986 = fmul fast float %984, %974
  %987 = fsub fast float %985, %986
  %988 = fmul fast float %984, %973
  %989 = fmul fast float %978, %979
  %990 = fsub fast float %988, %989
  %991 = fmul fast float %974, %979
  %992 = fmul fast float %973, %980
  %993 = fsub fast float %991, %992
  br label %994

; <label>:994                                     ; preds = %965, %366
  %995 = phi float [ %403, %366 ], [ %987, %965 ]
  %996 = phi float [ %406, %366 ], [ %990, %965 ]
  %997 = phi float [ %407, %366 ], [ %993, %965 ]
  %998 = call float @dx.op.dot3.f32(i32 55, float %995, float %996, float %997, float %995, float %996, float %997)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = call float @dx.op.unary.f32(i32 25, float %998)  ; Rsqrt(value)
  %1000 = fmul fast float %999, %995
  %1001 = fmul fast float %999, %996
  %1002 = fmul fast float %999, %997
  %1003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.i32 %1003, 0
  %1005 = mul i32 %1004, 204
  %1006 = add i32 %1005, 176
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 2
  %1009 = and i32 %1008, 16777215
  %1010 = add i32 %1009, 0
  %1011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1012 = add i32 %1005, 64
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 3
  %1015 = bitcast i32 %1014 to float
  %1016 = add i32 %1005, 80
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = bitcast i32 %1018 to float
  %1020 = extractvalue %dx.types.ResRet.i32 %1017, 1
  %1021 = bitcast i32 %1020 to float
  %1022 = call float @dx.op.dot3.f32(i32 55, float %8, float %9, float 1.000000e+00, float %1015, float %1019, float %1021)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = add i32 %1005, 96
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 2
  %1026 = bitcast i32 %1025 to float
  %1027 = extractvalue %dx.types.ResRet.i32 %1024, 3
  %1028 = bitcast i32 %1027 to float
  %1029 = add i32 %1005, 112
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = bitcast i32 %1031 to float
  %1033 = call float @dx.op.dot3.f32(i32 55, float %8, float %9, float 1.000000e+00, float %1026, float %1028, float %1032)  ; Dot3(ax,ay,az,bx,by,bz)
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 2
  %1036 = lshr i32 %1035, 24
  %1037 = and i32 %1036, 7
  %1038 = add nuw nsw i32 %1037, 290
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 %1038)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1042 = fdiv fast float 5.000000e-01, %1040
  %1043 = fmul fast float %1042, 2.000000e+00
  %1044 = fsub fast float 1.000000e+00, %1043
  %1045 = fmul fast float %1044, %1022
  %1046 = fmul fast float %1044, %1033
  %1047 = fadd fast float %1045, %1042
  %1048 = fadd fast float %1046, %1042
  %1049 = fmul fast float %1040, %1041
  %1050 = fmul fast float %1049, %1047
  %1051 = fmul fast float %1049, %1048
  %1052 = fadd fast float %1050, -5.000000e-01
  %1053 = fadd fast float %1051, -5.000000e-01
  %1054 = fptoui float %1052 to i32
  %1055 = fptoui float %1053 to i32
  %1056 = lshr i32 %1054, 3
  %1057 = lshr i32 %1055, 2
  %1058 = shl nuw i32 %1056, 3
  %1059 = shl i32 %1055, 3
  %1060 = add i32 %1059, %1054
  %1061 = sub i32 %1060, %1058
  %1062 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1011, i32 0, i32 %1056, i32 %1057, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %1061, 31
  %1065 = shl i32 1, %1064
  %1066 = and i32 %1065, %1063
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1068, label %1069

; <label>:1068                                    ; preds = %994
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1069

; <label>:1069                                    ; preds = %1068, %994
  %1070 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1071 = call float @dx.op.unary.f32(i32 6, float %1001)  ; FAbs(value)
  %1072 = fadd fast float %1071, %1070
  %1073 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1074 = fadd fast float %1072, %1073
  %1075 = fdiv fast float %1000, %1074
  %1076 = fdiv fast float %1001, %1074
  %1077 = fdiv fast float %1002, %1074
  %1078 = fcmp fast oge float %1077, 0.000000e+00
  %1079 = call float @dx.op.unary.f32(i32 6, float %1076)  ; FAbs(value)
  %1080 = call float @dx.op.unary.f32(i32 6, float %1075)  ; FAbs(value)
  %1081 = fsub fast float 1.000000e+00, %1079
  %1082 = fsub fast float 1.000000e+00, %1080
  %1083 = fcmp fast oge float %1075, 0.000000e+00
  %1084 = select i1 %1083, float 1.000000e+00, float -1.000000e+00
  %1085 = fcmp fast oge float %1076, 0.000000e+00
  %1086 = select i1 %1085, float 1.000000e+00, float -1.000000e+00
  %1087 = fmul fast float %1081, %1084
  %1088 = fmul fast float %1082, %1086
  %1089 = select i1 %1078, float %1075, float %1087
  %1090 = select i1 %1078, float %1076, float %1088
  %1091 = fmul fast float %1089, 1.275000e+02
  %1092 = fmul fast float %1090, 1.275000e+02
  %1093 = fadd fast float %1091, 1.275000e+02
  %1094 = fadd fast float %1092, 1.275000e+02
  %1095 = call float @dx.op.unary.f32(i32 26, float %1093)  ; Round_ne(value)
  %1096 = call float @dx.op.unary.f32(i32 26, float %1094)  ; Round_ne(value)
  %1097 = fptoui float %1095 to i32
  %1098 = fptoui float %1096 to i32
  %1099 = shl i32 %1098, 8
  %1100 = or i32 %1099, %1097
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 -177342598)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %1100)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!19}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !13, !17}
!5 = !{!6, !8, !10, !11, !12}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<unsigned int, 4> >"]* undef, !"", i32 5, i32 0, i32 -1, i32 2, i32 0, !9}
!9 = !{i32 0, i32 5}
!10 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 41, i32 1, i32 11, i32 0, null}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 42, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 36, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15, !16}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!16 = !{i32 2, %superterrainConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 36, null}
!17 = !{!18}
!18 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{[18 x i32] [i32 16, i32 5, i32 16, i32 16, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!20 = !{void ()* @ps_main, !"ps_main", !21, !4, !38}
!21 = !{!22, !33, null}
!22 = !{!23, !26, !27, !30, !31}
!23 = !{i32 0, !"SV_Position", i8 9, i8 3, !24, i8 4, i32 1, i8 4, i32 0, i8 0, !25}
!24 = !{i32 0}
!25 = !{i32 3, i32 11}
!26 = !{i32 1, !"POS", i8 9, i8 0, !24, i8 2, i32 1, i8 3, i32 1, i8 0, null}
!27 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 3, i32 2, i8 0, !29}
!28 = !{i32 8}
!29 = !{i32 3, i32 3}
!30 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!31 = !{i32 4, !"TEXCOORDS", i8 9, i8 0, !32, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!32 = !{i32 6}
!33 = !{!34, !36}
!34 = !{i32 0, !"SV_Target", i8 5, i8 16, !24, i8 0, i32 1, i8 1, i32 0, i8 0, !35}
!35 = !{i32 3, i32 1}
!36 = !{i32 1, !"SV_Target", i8 5, i8 16, !37, i8 0, i32 1, i8 1, i32 1, i8 0, !35}
!37 = !{i32 1}
!38 = !{i32 0, i64 16}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !47, !48}
!45 = distinct !{!45, !46, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!46 = distinct !{!46, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!47 = distinct !{!47, !46, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!48 = distinct !{!48, !49, !"\01?GetUnpackedPixel@@YA?AUPixelInput@@UPackedPixelInput@@@Z: %agg.result"}
!49 = distinct !{!49, !"\01?GetUnpackedPixel@@YA?AUPixelInput@@UPackedPixelInput@@@Z"}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 1}
!52 = !{!48}

