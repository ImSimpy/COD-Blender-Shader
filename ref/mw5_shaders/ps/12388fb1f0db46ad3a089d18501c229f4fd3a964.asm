;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xyzw        1     NONE   float   xyz 
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TRIID                    0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; CLIP_POS                 0   xyzw        4     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw        5     NONE   float   xy w
; PACKED_TRI_DATA          0   xyzw        6     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
; SV_Target                2   xyzw        2   TARGET   float   xyzw
;
; shader hash: 2e309e08a6df7ed20ae1060f93564e80
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TRIID                    0        nointerpolation       
; CLIP_POS                 0                 linear       
; PREV_CLIP_POS            0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
; SV_Target                2                              
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture     f32          2d      T2     t37,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 12 }
;   output 4 depends on inputs: { 8, 9, 10, 13 }
;   output 10 depends on inputs: { 16, 19, 20, 23 }
;   output 11 depends on inputs: { 17, 19, 21, 23 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = icmp ne i32 %5, 0
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 0
  %27 = fmul fast float %26, %21
  %28 = fmul fast float %26, %22
  %29 = select i1 %6, float 1.000000e+00, float -1.000000e+00
  %30 = call float @dx.op.dot3.f32(i32 55, float %15, float %16, float %17, float %15, float %16, float %17)  ; Dot3(ax,ay,az,bx,by,bz)
  %31 = bitcast float %30 to i32
  %32 = ashr i32 %31, 1
  %33 = sub nsw i32 1597250115, %32
  %34 = bitcast i32 %33 to float
  %35 = fmul fast float %15, %29
  %36 = fmul fast float %35, %34
  %37 = fmul fast float %16, %29
  %38 = fmul fast float %37, %34
  %39 = fmul fast float %17, %29
  %40 = fmul fast float %39, %34
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = fptosi float %23 to i32
  %44 = sitofp i32 %43 to float
  %45 = fadd fast float %42, %44
  %46 = fmul fast float %45, 0x3FE3C6EF40000000
  %47 = frem fast float %27, 2.560000e+02
  %48 = frem fast float %28, 2.560000e+02
  %49 = fptoui float %47 to i32
  %50 = fptoui float %48 to i32
  %51 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = fadd fast float %52, %46
  %54 = call float @dx.op.unary.f32(i32 22, float %53)  ; Frc(value)
  %55 = add i32 %7, 348
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = and i32 %57, 16384
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

; <label>:60                                      ; preds = %0
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %63 = fsub fast float %23, %62
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %63, %65
  %67 = call float @dx.op.unary.f32(i32 7, float %66)  ; Saturate(value)
  %68 = fmul fast float %67, %20
  br label %69

; <label>:69                                      ; preds = %60, %0
  %70 = phi float [ %68, %60 ], [ %20, %0 ]
  %71 = add i32 %7, 32
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = shl i32 %73, 4
  %75 = and i32 %74, 32752
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75)  ; LegacyF16ToF32(value)
  %77 = lshr i32 %73, 7
  %78 = and i32 %77, 32752
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78)  ; LegacyF16ToF32(value)
  %80 = add i32 %7, 36
  %81 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.i32 %81, 0
  %83 = and i32 %82, 65535
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %82, 16
  %86 = call float @dx.op.legacyF16ToF32(i32 131, i32 %85)  ; LegacyF16ToF32(value)
  %87 = lshr i32 %73, 22
  %88 = shl nuw nsw i32 %87, 5
  %89 = call float @dx.op.legacyF16ToF32(i32 131, i32 %88)  ; LegacyF16ToF32(value)
  %90 = call float @dx.op.unary.f32(i32 13, float %89)  ; Sin(value)
  %91 = call float @dx.op.unary.f32(i32 12, float %89)  ; Cos(value)
  %92 = fsub fast float -0.000000e+00, %90
  %93 = fmul fast float %76, %18
  %94 = fmul fast float %79, %19
  %95 = fmul fast float %91, %93
  %96 = call float @dx.op.tertiary.f32(i32 46, float %92, float %94, float %95)  ; FMad(a,b,c)
  %97 = fmul fast float %90, %93
  %98 = call float @dx.op.tertiary.f32(i32 46, float %91, float %94, float %97)  ; FMad(a,b,c)
  %99 = fadd fast float %96, %84
  %100 = fadd fast float %98, %86
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %103 = fcmp fast ogt float %102, 0.000000e+00
  %104 = select i1 %103, float %54, float 0x3FE0101020000000
  %105 = add i32 %7, 408
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = add i32 %107, 0
  %109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %109, %dx.types.Handle %24, float %99, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fmul fast float %111, %70
  %113 = fcmp fast ogt float %112, %104
  br i1 %113, label %115, label %114

; <label>:114                                     ; preds = %69
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %115

; <label>:115                                     ; preds = %114, %69
  %116 = fdiv fast float %11, %13
  %117 = fdiv fast float %12, %13
  %118 = fdiv fast float %8, %10
  %119 = fdiv fast float %9, %10
  %120 = fsub fast float %116, %118
  %121 = fsub fast float %117, %119
  %122 = fmul fast float %120, 5.000000e-01
  %123 = fmul fast float %121, -5.000000e-01
  %124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.i32 %124, 0
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %166

; <label>:127                                     ; preds = %115
  %128 = fmul fast float %120, 9.600000e+02
  %129 = fmul fast float %121, -5.400000e+02
  %130 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %129)  ; FAbs(value)
  %132 = fadd fast float %130, -3.000000e+00
  %133 = fadd fast float %131, -3.000000e+00
  %134 = fmul fast float %132, 0x3F8A98EF60000000
  %135 = fmul fast float %133, 0x3F8A98EF60000000
  %136 = call float @dx.op.unary.f32(i32 7, float %134)  ; Saturate(value)
  %137 = call float @dx.op.unary.f32(i32 7, float %135)  ; Saturate(value)
  %138 = fmul fast float %130, 0x3FD5555560000000
  %139 = fmul fast float %131, 0x3FD5555560000000
  %140 = call float @dx.op.unary.f32(i32 7, float %138)  ; Saturate(value)
  %141 = call float @dx.op.unary.f32(i32 7, float %139)  ; Saturate(value)
  %142 = call float @dx.op.unary.f32(i32 24, float %136)  ; Sqrt(value)
  %143 = call float @dx.op.unary.f32(i32 24, float %137)  ; Sqrt(value)
  %144 = fsub fast float %140, %142
  %145 = fsub fast float %141, %143
  %146 = fmul fast float %144, 5.000000e-01
  %147 = fmul fast float %145, 5.000000e-01
  %148 = fadd fast float %146, %142
  %149 = fadd fast float %147, %143
  %150 = fsub fast float -0.000000e+00, %148
  %151 = fsub fast float -0.000000e+00, %149
  %152 = fcmp fast olt float %128, 0.000000e+00
  %153 = fcmp fast olt float %129, 0.000000e+00
  %154 = select i1 %152, float 0.000000e+00, float 1.000000e+00
  %155 = select i1 %153, float 0.000000e+00, float 1.000000e+00
  %156 = fcmp fast une float %154, 0.000000e+00
  %157 = fcmp fast une float %155, 0.000000e+00
  %158 = select i1 %156, float %148, float %150
  %159 = select i1 %157, float %149, float %151
  %160 = fmul fast float %158, 5.000000e-01
  %161 = fmul fast float %159, 5.000000e-01
  %162 = fadd fast float %160, 0x3FE0101020000000
  %163 = fadd fast float %161, 0x3FE0101020000000
  %164 = call float @dx.op.unary.f32(i32 7, float %162)  ; Saturate(value)
  %165 = call float @dx.op.unary.f32(i32 7, float %163)  ; Saturate(value)
  br label %166

; <label>:166                                     ; preds = %127, %115
  %167 = phi float [ %164, %127 ], [ %122, %115 ]
  %168 = phi float [ %165, %127 ], [ %123, %115 ]
  %169 = call float @dx.op.unary.f32(i32 6, float %36)  ; FAbs(value)
  %170 = call float @dx.op.unary.f32(i32 6, float %38)  ; FAbs(value)
  %171 = fadd fast float %170, %169
  %172 = call float @dx.op.unary.f32(i32 6, float %40)  ; FAbs(value)
  %173 = fadd fast float %171, %172
  %174 = fdiv fast float %36, %173
  %175 = fdiv fast float %38, %173
  %176 = fdiv fast float %40, %173
  %177 = fcmp fast oge float %176, 0.000000e+00
  %178 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %179 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %180 = fsub fast float 1.000000e+00, %178
  %181 = fsub fast float 1.000000e+00, %179
  %182 = fcmp fast oge float %174, 0.000000e+00
  %183 = select i1 %182, float 1.000000e+00, float -1.000000e+00
  %184 = fcmp fast oge float %175, 0.000000e+00
  %185 = select i1 %184, float 1.000000e+00, float -1.000000e+00
  %186 = fmul fast float %180, %183
  %187 = fmul fast float %181, %185
  %188 = select i1 %177, float %174, float %186
  %189 = select i1 %177, float %175, float %187
  %190 = fmul fast float %188, 1.275000e+02
  %191 = fmul fast float %189, 1.275000e+02
  %192 = fadd fast float %190, 1.275000e+02
  %193 = fadd fast float %191, 1.275000e+02
  %194 = call float @dx.op.unary.f32(i32 26, float %192)  ; Round_ne(value)
  %195 = call float @dx.op.unary.f32(i32 26, float %193)  ; Round_ne(value)
  %196 = fptoui float %194 to i32
  %197 = fptoui float %195 to i32
  %198 = shl i32 %197, 8
  %199 = or i32 %198, %196
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %14)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %199)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %167)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %168)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !10, !13}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!13 = !{!14}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{[30 x i32] [i32 28, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !38}
!17 = !{!18, !31, null}
!18 = !{!19, !22, !24, !25, !27, !28, !29, !30}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 11}
!22 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 7}
!24 = !{i32 2, !"NORMAL", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 2, i8 0, !23}
!25 = !{i32 3, !"TRIID", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 3, i8 0, !26}
!26 = !{i32 3, i32 1}
!27 = !{i32 4, !"CLIP_POS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 4, i8 0, !21}
!28 = !{i32 5, !"PREV_CLIP_POS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 5, i8 0, !21}
!29 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !20, i8 1, i32 1, i8 4, i32 6, i8 0, !26}
!30 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !20, i8 1, i32 1, i8 1, i32 3, i8 1, !26}
!31 = !{!32, !33, !35}
!32 = !{i32 0, !"SV_Target", i8 5, i8 16, !20, i8 0, i32 1, i8 1, i32 0, i8 0, !26}
!33 = !{i32 1, !"SV_Target", i8 5, i8 16, !34, i8 0, i32 1, i8 1, i32 1, i8 0, !26}
!34 = !{i32 1}
!35 = !{i32 2, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 4, i32 2, i8 0, !37}
!36 = !{i32 2}
!37 = !{i32 3, i32 15}
!38 = !{i32 0, i64 16}

