;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xyzw        1     NONE   float       
; NORMAL                   0   xyz         2     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        2     NONE   float       
; TRIID                    0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; CARD_BARY_AND_TILE       1   xyzw        4     NONE   float   xyzw
; CARD_TILE2_AND_TILE      3   xyzw        5     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     1   xyzw        6     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     2   xyzw        7     NONE   float   xyzw
; CARD_TEXCOORDS_AND_RAY     3   xyzw        8     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw        9     NONE   float   xyz 
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: ca33bf077f183d50c76d71db6bc9d307
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
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
; CARD_TILE2_AND_TILE      3        nointerpolation       
; CARD_TEXCOORDS_AND_RAY     1          noperspective       
; CARD_TEXCOORDS_AND_RAY     2          noperspective       
; CARD_TEXCOORDS_AND_RAY     3          noperspective       
; CARD_DEPTH_AND_SCALE     0          noperspective       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 12 }
;   output 4 depends on inputs: { 8, 9, 10, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = icmp ne i32 %4, 0
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = select i1 %5, float 1.000000e+00, float -1.000000e+00
  %42 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %43 = bitcast float %42 to i32
  %44 = ashr i32 %43, 1
  %45 = sub nsw i32 1597250115, %44
  %46 = fmul fast float %30, %41
  %47 = fmul fast float %31, %41
  %48 = fmul fast float %32, %41
  %49 = add i32 %6, 60
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = add i32 %51, 0
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %55 = extractvalue %dx.types.Dimensions %54, 0
  %56 = sitofp i32 %55 to float
  %57 = extractvalue %dx.types.Dimensions %54, 1
  %58 = sitofp i32 %57 to float
  %59 = add i32 %6, 24
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 2
  %62 = bitcast i32 %61 to float
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 0
  store float %26, float* %67, align 4, !noalias !41
  %68 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 1
  store float %27, float* %68, align 4, !noalias !41
  %69 = fsub fast float 1.000000e+00, %26
  %70 = fsub fast float %69, %27
  %71 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 2
  store float %70, float* %71, align 4, !noalias !41
  %72 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 0
  %73 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 0
  store float %28, float* %72, align 4
  store float %29, float* %73, align 4
  %74 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 1
  %75 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 1
  store float %22, float* %74, align 4
  store float %23, float* %75, align 4
  %76 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 2
  %77 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 2
  store float %24, float* %76, align 4
  store float %25, float* %77, align 4
  %78 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float %7, float* %78, align 4, !tbaa !59, !noalias !41
  %79 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float %8, float* %79, align 4, !tbaa !59, !noalias !41
  %80 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float %9, float* %80, align 4, !tbaa !59, !noalias !41
  %81 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 0
  %82 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 0
  store float %20, float* %81, align 4
  store float %21, float* %82, align 4
  %83 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 1
  %84 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 1
  store float %16, float* %83, align 4
  store float %17, float* %84, align 4
  %85 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 2
  %86 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 2
  store float %12, float* %85, align 4
  store float %13, float* %86, align 4
  %87 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 0
  %88 = getelementptr [3 x float], [3 x float]* %34, i32 0, i32 0
  store float %18, float* %87, align 4
  store float %19, float* %88, align 4
  %89 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 1
  %90 = getelementptr [3 x float], [3 x float]* %34, i32 0, i32 1
  store float %14, float* %89, align 4
  store float %15, float* %90, align 4
  %91 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 2
  %92 = getelementptr [3 x float], [3 x float]* %34, i32 0, i32 2
  store float %10, float* %91, align 4
  store float %11, float* %92, align 4
  br label %93

; <label>:93                                      ; preds = %211, %0
  %94 = phi float [ %213, %211 ], [ %26, %0 ]
  %95 = phi float [ %207, %211 ], [ 0.000000e+00, %0 ]
  %96 = phi float [ %208, %211 ], [ 1.000000e+00, %0 ]
  %97 = phi i32 [ %209, %211 ], [ 0, %0 ]
  %98 = fcmp fast ogt float %94, 0x3EB0C6F7A0000000
  br i1 %98, label %99, label %206

; <label>:99                                      ; preds = %93
  %100 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 %97
  %101 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 %97
  %102 = load float, float* %100, align 4
  %103 = load float, float* %101, align 4
  %104 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %97
  %105 = load float, float* %104, align 4, !tbaa !59, !noalias !41
  %106 = fdiv fast float 1.000000e+00, %105
  %107 = getelementptr [3 x float], [3 x float]* %33, i32 0, i32 %97
  %108 = getelementptr [3 x float], [3 x float]* %34, i32 0, i32 %97
  %109 = load float, float* %107, align 4
  %110 = load float, float* %108, align 4
  %111 = fmul fast float %109, %106
  %112 = fmul fast float %110, %106
  %113 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 %97
  %114 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 %97
  %115 = load float, float* %113, align 4
  %116 = load float, float* %114, align 4
  %117 = fmul fast float %115, %106
  %118 = fmul fast float %116, %106
  %119 = fmul fast float %111, %56
  %120 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %121 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %122 = fmul fast float %112, %58
  %123 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %125 = fmul fast float %123, %123
  %126 = fmul fast float %124, %124
  %127 = fadd fast float %126, %125
  %128 = fmul fast float %123, %120
  %129 = fmul fast float %124, %121
  %130 = fadd fast float %129, %128
  %131 = fmul fast float %120, %120
  %132 = fmul fast float %121, %121
  %133 = fadd fast float %132, %131
  %134 = fmul fast float %127, %133
  %135 = fmul fast float %130, %130
  %136 = fsub fast float %134, %135
  %137 = bitcast float %136 to i32
  %138 = fadd fast float %127, %133
  %139 = bitcast float %138 to i32
  %140 = sub i32 8388608, %139
  %141 = add i32 %140, %137
  %142 = ashr i32 %141, 24
  %143 = sitofp i32 %142 to float
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 3
  %146 = bitcast i32 %145 to float
  %147 = fdiv fast float 1.000000e+00, %146
  %148 = fptosi float %143 to i32
  %149 = shl i32 %148, 23
  %150 = add i32 %149, 2130706432
  %151 = bitcast float %56 to i32
  %152 = bitcast float %58 to i32
  %153 = sub i32 %150, %151
  %154 = sub i32 %150, %152
  %155 = bitcast i32 %153 to float
  %156 = bitcast i32 %154 to float
  %157 = fadd fast float %102, 5.000000e-01
  %158 = fadd fast float %103, 5.000000e-01
  %159 = fmul fast float %147, %157
  %160 = fmul fast float %147, %158
  %161 = add i32 %6, 72
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = add i32 %163, 0
  %165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %165, %dx.types.Handle %2, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float %143)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fmul fast float %167, 2.000000e+00
  %169 = fadd fast float %168, -1.000000e+00
  %170 = fmul fast float %169, %62
  %171 = fmul fast float %117, %170
  %172 = fmul fast float %118, %170
  %173 = fadd fast float %171, %111
  %174 = fadd fast float %172, %112
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = add i32 %176, 0
  %178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %178, %dx.types.Handle %2, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float %143)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 2
  %183 = extractvalue %dx.types.ResRet.f32 %179, 3
  %184 = fmul fast float %180, 2.000000e+00
  %185 = fmul fast float %181, 2.000000e+00
  %186 = fmul fast float %182, 2.000000e+00
  %187 = fadd fast float %184, -1.000000e+00
  %188 = fadd fast float %185, -1.000000e+00
  %189 = fadd fast float %186, -1.000000e+00
  %190 = fsub fast float %173, %159
  %191 = call float @dx.op.unary.f32(i32 6, float %190)  ; FAbs(value)
  %192 = fmul fast float %147, 5.000000e-01
  %193 = fsub fast float %192, %155
  %194 = fcmp fast ogt float %191, %193
  %195 = fsub fast float %174, %160
  %196 = call float @dx.op.unary.f32(i32 6, float %195)  ; FAbs(value)
  %197 = fsub fast float %192, %156
  %198 = fcmp fast ogt float %196, %197
  %199 = or i1 %194, %198
  %200 = select i1 %199, float 0.000000e+00, float %183
  %201 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %187, float %188, float %189)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = fmul fast float %201, %94
  %203 = fmul fast float %202, %200
  %204 = fcmp fast olt float %203, %96
  br i1 %204, label %205, label %206

; <label>:205                                     ; preds = %99
  br label %206

; <label>:206                                     ; preds = %205, %99, %93
  %207 = phi float [ %95, %99 ], [ %200, %205 ], [ %95, %93 ]
  %208 = phi float [ %96, %99 ], [ %203, %205 ], [ %96, %93 ]
  %209 = add nuw nsw i32 %97, 1
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %214, label %211

; <label>:211                                     ; preds = %206
  %212 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 %209
  %213 = load float, float* %212, align 4, !tbaa !59, !noalias !41
  br label %93

; <label>:214                                     ; preds = %206
  %215 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %216 = bitcast i32 %45 to float
  %217 = fmul fast float %46, %216
  %218 = fmul fast float %47, %216
  %219 = fmul fast float %48, %216
  %220 = fcmp fast olt float %207, 0x3FE0101020000000
  br i1 %220, label %221, label %222

; <label>:221                                     ; preds = %214
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %222

; <label>:222                                     ; preds = %221, %214
  %223 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %224 = call float @dx.op.unary.f32(i32 6, float %218)  ; FAbs(value)
  %225 = fadd fast float %224, %223
  %226 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %227 = fadd fast float %225, %226
  %228 = fdiv fast float %217, %227
  %229 = fdiv fast float %218, %227
  %230 = fdiv fast float %219, %227
  %231 = fcmp fast oge float %230, 0.000000e+00
  %232 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %233 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %234 = fsub fast float 1.000000e+00, %232
  %235 = fsub fast float 1.000000e+00, %233
  %236 = fcmp fast oge float %228, 0.000000e+00
  %237 = select i1 %236, float 1.000000e+00, float -1.000000e+00
  %238 = fcmp fast oge float %229, 0.000000e+00
  %239 = select i1 %238, float 1.000000e+00, float -1.000000e+00
  %240 = fmul fast float %234, %237
  %241 = fmul fast float %235, %239
  %242 = select i1 %231, float %228, float %240
  %243 = select i1 %231, float %229, float %241
  %244 = fmul fast float %242, 1.275000e+02
  %245 = fmul fast float %243, 1.275000e+02
  %246 = fadd fast float %244, 1.275000e+02
  %247 = fadd fast float %245, 1.275000e+02
  %248 = call float @dx.op.unary.f32(i32 26, float %246)  ; Round_ne(value)
  %249 = call float @dx.op.unary.f32(i32 26, float %247)  ; Round_ne(value)
  %250 = fptoui float %248 to i32
  %251 = fptoui float %249 to i32
  %252 = shl i32 %251, 8
  %253 = or i32 %252, %250
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %215)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %253)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!13}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !11}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[46 x i32] [i32 44, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, !40}
!15 = !{!16, !37, null}
!16 = !{!17, !19, !20, !22, !24, !25, !28, !30, !31, !33, !34, !35, !36}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!20 = !{i32 2, !"NORMAL", i8 9, i8 0, !18, i8 2, i32 1, i8 3, i32 2, i8 0, !21}
!21 = !{i32 3, i32 7}
!22 = !{i32 3, !"TRIID", i8 5, i8 0, !18, i8 1, i32 1, i8 1, i32 3, i8 0, !23}
!23 = !{i32 3, i32 1}
!24 = !{i32 4, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !18, i8 2, i32 1, i8 1, i32 2, i8 3, null}
!25 = !{i32 5, !"CARD_BARY_AND_TILE", i8 9, i8 0, !26, i8 1, i32 1, i8 4, i32 4, i8 0, !27}
!26 = !{i32 1}
!27 = !{i32 3, i32 15}
!28 = !{i32 6, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !29, i8 1, i32 1, i8 4, i32 5, i8 0, !27}
!29 = !{i32 3}
!30 = !{i32 7, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !26, i8 4, i32 1, i8 4, i32 6, i8 0, !27}
!31 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !32, i8 4, i32 1, i8 4, i32 7, i8 0, !27}
!32 = !{i32 2}
!33 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !29, i8 4, i32 1, i8 4, i32 8, i8 0, !27}
!34 = !{i32 10, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !18, i8 4, i32 1, i8 4, i32 9, i8 0, !21}
!35 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !18, i8 1, i32 1, i8 4, i32 10, i8 0, !23}
!36 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !18, i8 1, i32 1, i8 1, i32 3, i8 1, !23}
!37 = !{!38, !39}
!38 = !{i32 0, !"SV_Target", i8 5, i8 16, !18, i8 0, i32 1, i8 1, i32 0, i8 0, !23}
!39 = !{i32 1, !"SV_Target", i8 5, i8 16, !26, i8 0, i32 1, i8 1, i32 1, i8 0, !23}
!40 = !{i32 0, i64 16}
!41 = !{!42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57}
!42 = distinct !{!42, !43, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!43 = distinct !{!43, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!44 = distinct !{!44, !43, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!45 = distinct !{!45, !43, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!46 = distinct !{!46, !43, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!47 = distinct !{!47, !48, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!48 = distinct !{!48, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!49 = distinct !{!49, !48, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!50 = distinct !{!50, !48, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!51 = distinct !{!51, !48, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!52 = distinct !{!52, !53, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outTexCoords"}
!53 = distinct !{!53, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z"}
!54 = distinct !{!54, !53, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outNormal"}
!55 = distinct !{!55, !53, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outMipLevel"}
!56 = distinct !{!56, !53, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outCoverage"}
!57 = distinct !{!57, !58, !"\01?ps_main_internal@@YA?AUPixelOutput@@UPixelInput@@@Z: %agg.result"}
!58 = distinct !{!58, !"\01?ps_main_internal@@YA?AUPixelOutput@@UPixelInput@@@Z"}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}

