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
; CLIP_POS                 0   xyzw       10     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw       11     NONE   float   xy w
; PACKED_TRI_DATA          0   xyzw       12     NONE    uint   x   
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
; shader hash: c215017ced2c60e224311ad94b27b3f1
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
; Number of inputs: 52, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 12 }
;   output 4 depends on inputs: { 8, 9, 10, 13 }
;   output 10 depends on inputs: { 40, 43, 44, 47 }
;   output 11 depends on inputs: { 41, 43, 45, 47 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = icmp ne i32 %4, 0
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = alloca [3 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = alloca [3 x float], align 4
  %44 = select i1 %5, float 1.000000e+00, float -1.000000e+00
  %45 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %46 = bitcast float %45 to i32
  %47 = ashr i32 %46, 1
  %48 = sub nsw i32 1597250115, %47
  %49 = fmul fast float %33, %44
  %50 = fmul fast float %34, %44
  %51 = fmul fast float %35, %44
  %52 = add i32 %6, 60
  %53 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %54 = extractvalue %dx.types.ResRet.i32 %53, 0
  %55 = add i32 %54, 0
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %56, i32 0)  ; GetDimensions(handle,mipLevel)
  %58 = extractvalue %dx.types.Dimensions %57, 0
  %59 = sitofp i32 %58 to float
  %60 = extractvalue %dx.types.Dimensions %57, 1
  %61 = sitofp i32 %60 to float
  %62 = add i32 %6, 24
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 2
  %65 = bitcast i32 %64 to float
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = getelementptr [3 x float], [3 x float]* %42, i32 0, i32 0
  store float %29, float* %70, align 4, !noalias !45
  %71 = getelementptr [3 x float], [3 x float]* %42, i32 0, i32 1
  store float %30, float* %71, align 4, !noalias !45
  %72 = fsub fast float 1.000000e+00, %29
  %73 = fsub fast float %72, %30
  %74 = getelementptr [3 x float], [3 x float]* %42, i32 0, i32 2
  store float %73, float* %74, align 4, !noalias !45
  %75 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 0
  %76 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 0
  store float %31, float* %75, align 4
  store float %32, float* %76, align 4
  %77 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 1
  %78 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 1
  store float %25, float* %77, align 4
  store float %26, float* %78, align 4
  %79 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 2
  %80 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 2
  store float %27, float* %79, align 4
  store float %28, float* %80, align 4
  %81 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 0
  store float %10, float* %81, align 4, !tbaa !63, !noalias !45
  %82 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 1
  store float %11, float* %82, align 4, !tbaa !63, !noalias !45
  %83 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 2
  store float %12, float* %83, align 4, !tbaa !63, !noalias !45
  %84 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 0
  %85 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 0
  store float %23, float* %84, align 4
  store float %24, float* %85, align 4
  %86 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 1
  %87 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 1
  store float %19, float* %86, align 4
  store float %20, float* %87, align 4
  %88 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 2
  %89 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 2
  store float %15, float* %88, align 4
  store float %16, float* %89, align 4
  %90 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 0
  %91 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 0
  store float %21, float* %90, align 4
  store float %22, float* %91, align 4
  %92 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 1
  %93 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 1
  store float %17, float* %92, align 4
  store float %18, float* %93, align 4
  %94 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 2
  %95 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 2
  store float %13, float* %94, align 4
  store float %14, float* %95, align 4
  br label %96

; <label>:96                                      ; preds = %214, %0
  %97 = phi float [ %216, %214 ], [ %29, %0 ]
  %98 = phi float [ %210, %214 ], [ 0.000000e+00, %0 ]
  %99 = phi float [ %211, %214 ], [ 1.000000e+00, %0 ]
  %100 = phi i32 [ %212, %214 ], [ 0, %0 ]
  %101 = fcmp fast ogt float %97, 0x3EB0C6F7A0000000
  br i1 %101, label %102, label %209

; <label>:102                                     ; preds = %96
  %103 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 %100
  %104 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 %100
  %105 = load float, float* %103, align 4
  %106 = load float, float* %104, align 4
  %107 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 %100
  %108 = load float, float* %107, align 4, !tbaa !63, !noalias !45
  %109 = fdiv fast float 1.000000e+00, %108
  %110 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 %100
  %111 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 %100
  %112 = load float, float* %110, align 4
  %113 = load float, float* %111, align 4
  %114 = fmul fast float %112, %109
  %115 = fmul fast float %113, %109
  %116 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 %100
  %117 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 %100
  %118 = load float, float* %116, align 4
  %119 = load float, float* %117, align 4
  %120 = fmul fast float %118, %109
  %121 = fmul fast float %119, %109
  %122 = fmul fast float %114, %59
  %123 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %125 = fmul fast float %115, %61
  %126 = call float @dx.op.unary.f32(i32 83, float %125)  ; DerivCoarseX(value)
  %127 = call float @dx.op.unary.f32(i32 84, float %125)  ; DerivCoarseY(value)
  %128 = fmul fast float %126, %126
  %129 = fmul fast float %127, %127
  %130 = fadd fast float %129, %128
  %131 = fmul fast float %126, %123
  %132 = fmul fast float %127, %124
  %133 = fadd fast float %132, %131
  %134 = fmul fast float %123, %123
  %135 = fmul fast float %124, %124
  %136 = fadd fast float %135, %134
  %137 = fmul fast float %130, %136
  %138 = fmul fast float %133, %133
  %139 = fsub fast float %137, %138
  %140 = bitcast float %139 to i32
  %141 = fadd fast float %130, %136
  %142 = bitcast float %141 to i32
  %143 = sub i32 8388608, %142
  %144 = add i32 %143, %140
  %145 = ashr i32 %144, 24
  %146 = sitofp i32 %145 to float
  %147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %148 = extractvalue %dx.types.ResRet.i32 %147, 3
  %149 = bitcast i32 %148 to float
  %150 = fdiv fast float 1.000000e+00, %149
  %151 = fptosi float %146 to i32
  %152 = shl i32 %151, 23
  %153 = add i32 %152, 2130706432
  %154 = bitcast float %59 to i32
  %155 = bitcast float %61 to i32
  %156 = sub i32 %153, %154
  %157 = sub i32 %153, %155
  %158 = bitcast i32 %156 to float
  %159 = bitcast i32 %157 to float
  %160 = fadd fast float %105, 5.000000e-01
  %161 = fadd fast float %106, 5.000000e-01
  %162 = fmul fast float %150, %160
  %163 = fmul fast float %150, %161
  %164 = add i32 %6, 72
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = add i32 %166, 0
  %168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %168, %dx.types.Handle %2, float %114, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float %146)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fmul fast float %170, 2.000000e+00
  %172 = fadd fast float %171, -1.000000e+00
  %173 = fmul fast float %172, %65
  %174 = fmul fast float %120, %173
  %175 = fmul fast float %121, %173
  %176 = fadd fast float %174, %114
  %177 = fadd fast float %175, %115
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %52, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = add i32 %179, 0
  %181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %181, %dx.types.Handle %2, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float %146)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = extractvalue %dx.types.ResRet.f32 %182, 2
  %186 = extractvalue %dx.types.ResRet.f32 %182, 3
  %187 = fmul fast float %183, 2.000000e+00
  %188 = fmul fast float %184, 2.000000e+00
  %189 = fmul fast float %185, 2.000000e+00
  %190 = fadd fast float %187, -1.000000e+00
  %191 = fadd fast float %188, -1.000000e+00
  %192 = fadd fast float %189, -1.000000e+00
  %193 = fsub fast float %176, %162
  %194 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %195 = fmul fast float %150, 5.000000e-01
  %196 = fsub fast float %195, %158
  %197 = fcmp fast ogt float %194, %196
  %198 = fsub fast float %177, %163
  %199 = call float @dx.op.unary.f32(i32 6, float %198)  ; FAbs(value)
  %200 = fsub fast float %195, %159
  %201 = fcmp fast ogt float %199, %200
  %202 = or i1 %197, %201
  %203 = select i1 %202, float 0.000000e+00, float %186
  %204 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = fmul fast float %204, %97
  %206 = fmul fast float %205, %203
  %207 = fcmp fast olt float %206, %99
  br i1 %207, label %208, label %209

; <label>:208                                     ; preds = %102
  br label %209

; <label>:209                                     ; preds = %208, %102, %96
  %210 = phi float [ %98, %102 ], [ %203, %208 ], [ %98, %96 ]
  %211 = phi float [ %99, %102 ], [ %206, %208 ], [ %99, %96 ]
  %212 = add nuw nsw i32 %100, 1
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %217, label %214

; <label>:214                                     ; preds = %209
  %215 = getelementptr [3 x float], [3 x float]* %42, i32 0, i32 %212
  %216 = load float, float* %215, align 4, !tbaa !63, !noalias !45
  br label %96

; <label>:217                                     ; preds = %209
  %218 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %219 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %220 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %221 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %222 = bitcast i32 %48 to float
  %223 = fmul fast float %49, %222
  %224 = fmul fast float %50, %222
  %225 = fmul fast float %51, %222
  %226 = fcmp fast olt float %210, 0x3FE0101020000000
  br i1 %226, label %227, label %228

; <label>:227                                     ; preds = %217
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %228

; <label>:228                                     ; preds = %227, %217
  %229 = fdiv fast float %219, %220
  %230 = fdiv fast float %9, %220
  %231 = fdiv fast float %7, %8
  %232 = fdiv fast float %218, %8
  %233 = fsub fast float %229, %231
  %234 = fsub fast float %230, %232
  %235 = fmul fast float %233, 5.000000e-01
  %236 = fmul fast float %234, -5.000000e-01
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 0
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %279

; <label>:240                                     ; preds = %228
  %241 = fmul fast float %233, 9.600000e+02
  %242 = fmul fast float %234, -5.400000e+02
  %243 = call float @dx.op.unary.f32(i32 6, float %241)  ; FAbs(value)
  %244 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %245 = fadd fast float %243, -3.000000e+00
  %246 = fadd fast float %244, -3.000000e+00
  %247 = fmul fast float %245, 0x3F8A98EF60000000
  %248 = fmul fast float %246, 0x3F8A98EF60000000
  %249 = call float @dx.op.unary.f32(i32 7, float %247)  ; Saturate(value)
  %250 = call float @dx.op.unary.f32(i32 7, float %248)  ; Saturate(value)
  %251 = fmul fast float %243, 0x3FD5555560000000
  %252 = fmul fast float %244, 0x3FD5555560000000
  %253 = call float @dx.op.unary.f32(i32 7, float %251)  ; Saturate(value)
  %254 = call float @dx.op.unary.f32(i32 7, float %252)  ; Saturate(value)
  %255 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %256 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %257 = fsub fast float %253, %255
  %258 = fsub fast float %254, %256
  %259 = fmul fast float %257, 5.000000e-01
  %260 = fmul fast float %258, 5.000000e-01
  %261 = fadd fast float %259, %255
  %262 = fadd fast float %260, %256
  %263 = fsub fast float -0.000000e+00, %261
  %264 = fsub fast float -0.000000e+00, %262
  %265 = fcmp fast olt float %241, 0.000000e+00
  %266 = fcmp fast olt float %242, 0.000000e+00
  %267 = select i1 %265, float 0.000000e+00, float 1.000000e+00
  %268 = select i1 %266, float 0.000000e+00, float 1.000000e+00
  %269 = fcmp fast une float %267, 0.000000e+00
  %270 = fcmp fast une float %268, 0.000000e+00
  %271 = select i1 %269, float %261, float %263
  %272 = select i1 %270, float %262, float %264
  %273 = fmul fast float %271, 5.000000e-01
  %274 = fmul fast float %272, 5.000000e-01
  %275 = fadd fast float %273, 0x3FE0101020000000
  %276 = fadd fast float %274, 0x3FE0101020000000
  %277 = call float @dx.op.unary.f32(i32 7, float %275)  ; Saturate(value)
  %278 = call float @dx.op.unary.f32(i32 7, float %276)  ; Saturate(value)
  br label %279

; <label>:279                                     ; preds = %240, %228
  %280 = phi float [ %277, %240 ], [ %235, %228 ]
  %281 = phi float [ %278, %240 ], [ %236, %228 ]
  %282 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %283 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %284 = fadd fast float %283, %282
  %285 = call float @dx.op.unary.f32(i32 6, float %225)  ; FAbs(value)
  %286 = fadd fast float %284, %285
  %287 = fdiv fast float %223, %286
  %288 = fdiv fast float %224, %286
  %289 = fdiv fast float %225, %286
  %290 = fcmp fast oge float %289, 0.000000e+00
  %291 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %292 = call float @dx.op.unary.f32(i32 6, float %287)  ; FAbs(value)
  %293 = fsub fast float 1.000000e+00, %291
  %294 = fsub fast float 1.000000e+00, %292
  %295 = fcmp fast oge float %287, 0.000000e+00
  %296 = select i1 %295, float 1.000000e+00, float -1.000000e+00
  %297 = fcmp fast oge float %288, 0.000000e+00
  %298 = select i1 %297, float 1.000000e+00, float -1.000000e+00
  %299 = fmul fast float %293, %296
  %300 = fmul fast float %294, %298
  %301 = select i1 %290, float %287, float %299
  %302 = select i1 %290, float %288, float %300
  %303 = fmul fast float %301, 1.275000e+02
  %304 = fmul fast float %302, 1.275000e+02
  %305 = fadd fast float %303, 1.275000e+02
  %306 = fadd fast float %304, 1.275000e+02
  %307 = call float @dx.op.unary.f32(i32 26, float %305)  ; Round_ne(value)
  %308 = call float @dx.op.unary.f32(i32 26, float %306)  ; Round_ne(value)
  %309 = fptoui float %307 to i32
  %310 = fptoui float %308 to i32
  %311 = shl i32 %310, 8
  %312 = or i32 %311, %309
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %221)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %280)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %281)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!13 = !{[54 x i32] [i32 52, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, !44}
!15 = !{!16, !40, null}
!16 = !{!17, !19, !20, !22, !24, !25, !28, !30, !31, !33, !34, !35, !37, !38, !39}
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
!35 = !{i32 11, !"CLIP_POS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 10, i8 0, !36}
!36 = !{i32 3, i32 11}
!37 = !{i32 12, !"PREV_CLIP_POS", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 11, i8 0, !36}
!38 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !18, i8 1, i32 1, i8 4, i32 12, i8 0, !23}
!39 = !{i32 14, !"SV_IsFrontFace", i8 5, i8 13, !18, i8 1, i32 1, i8 1, i32 3, i8 1, !23}
!40 = !{!41, !42, !43}
!41 = !{i32 0, !"SV_Target", i8 5, i8 16, !18, i8 0, i32 1, i8 1, i32 0, i8 0, !23}
!42 = !{i32 1, !"SV_Target", i8 5, i8 16, !26, i8 0, i32 1, i8 1, i32 1, i8 0, !23}
!43 = !{i32 2, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 2, i8 0, !27}
!44 = !{i32 0, i64 16}
!45 = !{!46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61}
!46 = distinct !{!46, !47, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!47 = distinct !{!47, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!48 = distinct !{!48, !47, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!49 = distinct !{!49, !47, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!50 = distinct !{!50, !47, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!51 = distinct !{!51, !52, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!52 = distinct !{!52, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!53 = distinct !{!53, !52, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!54 = distinct !{!54, !52, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!55 = distinct !{!55, !52, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!56 = distinct !{!56, !57, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outTexCoords"}
!57 = distinct !{!57, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z"}
!58 = distinct !{!58, !57, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outNormal"}
!59 = distinct !{!59, !57, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outMipLevel"}
!60 = distinct !{!60, !57, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outCoverage"}
!61 = distinct !{!61, !62, !"\01?ps_main_internal@@YA?AUPixelOutput@@UPixelInput@@@Z: %agg.result"}
!62 = distinct !{!62, !"\01?ps_main_internal@@YA?AUPixelOutput@@UPixelInput@@@Z"}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}

