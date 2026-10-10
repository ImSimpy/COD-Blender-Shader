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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x  w
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: 7f2455d817663fe68798201f7a2f9335
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
;                                   texture    byte         r/o      T2     t31,space1     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = icmp ne i32 %5, 0
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = select i1 %6, float 1.000000e+00, float -1.000000e+00
  %44 = call float @dx.op.dot3.f32(i32 55, float %32, float %33, float %34, float %32, float %33, float %34)  ; Dot3(ax,ay,az,bx,by,bz)
  %45 = bitcast float %44 to i32
  %46 = ashr i32 %45, 1
  %47 = sub nsw i32 1597250115, %46
  %48 = fmul fast float %32, %43
  %49 = fmul fast float %33, %43
  %50 = fmul fast float %34, %43
  %51 = lshr i32 %8, 8
  %52 = mul nuw nsw i32 %51, 24
  %53 = add nuw nsw i32 %52, 12
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = extractvalue %dx.types.ResRet.i32 %54, 1
  %57 = and i32 %55, 65535
  %58 = uitofp i32 %57 to float
  %59 = lshr i32 %55, 16
  %60 = uitofp i32 %59 to float
  %61 = and i32 %56, 65535
  %62 = uitofp i32 %61 to float
  %63 = lshr i32 %56, 16
  %64 = uitofp i32 %63 to float
  %65 = fmul fast float %58, 0x3F00001000000000
  %66 = fmul fast float %60, 0x3F00001000000000
  %67 = fmul fast float %62, 0x3F00001000000000
  %68 = fmul fast float %64, 0x3F00001000000000
  %69 = fadd fast float %65, -1.000000e+00
  %70 = fadd fast float %66, -1.000000e+00
  %71 = fadd fast float %67, -1.000000e+00
  %72 = fadd fast float %68, -1.000000e+00
  %73 = add i32 %7, 60
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = add i32 %75, 0
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %76, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %77, i32 0)  ; GetDimensions(handle,mipLevel)
  %79 = extractvalue %dx.types.Dimensions %78, 0
  %80 = sitofp i32 %79 to float
  %81 = extractvalue %dx.types.Dimensions %78, 1
  %82 = sitofp i32 %81 to float
  %83 = fmul fast float %60, 0x3F10001000000000
  %84 = fadd fast float %83, -2.000000e+00
  %85 = fmul fast float %84, %70
  %86 = fsub fast float 1.000000e+00, %85
  %87 = fmul fast float %62, 0x3F10001000000000
  %88 = fadd fast float %87, -2.000000e+00
  %89 = fmul fast float %88, %71
  %90 = fsub fast float %86, %89
  %91 = fmul fast float %58, 0x3F10001000000000
  %92 = fadd fast float %91, -2.000000e+00
  %93 = fmul fast float %92, %70
  %94 = fmul fast float %88, %72
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %92, %71
  %97 = fmul fast float %84, %72
  %98 = fadd fast float %96, %97
  %99 = fadd fast float %93, %94
  %100 = fmul fast float %92, %69
  %101 = fsub fast float 1.000000e+00, %100
  %102 = fsub fast float %101, %89
  %103 = fmul fast float %84, %71
  %104 = fmul fast float %92, %72
  %105 = fsub fast float %103, %104
  %106 = fsub fast float %96, %97
  %107 = fadd fast float %103, %104
  %108 = fsub fast float %101, %85
  %109 = add i32 %7, 24
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 2
  %112 = bitcast i32 %111 to float
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 0
  store float %28, float* %117, align 4, !noalias !43
  %118 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 1
  store float %29, float* %118, align 4, !noalias !43
  %119 = fsub fast float 1.000000e+00, %28
  %120 = fsub fast float %119, %29
  %121 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 2
  store float %120, float* %121, align 4, !noalias !43
  %122 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 0
  %123 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 0
  store float %30, float* %122, align 4
  store float %31, float* %123, align 4
  %124 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 1
  %125 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 1
  store float %24, float* %124, align 4
  store float %25, float* %125, align 4
  %126 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 2
  %127 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 2
  store float %26, float* %126, align 4
  store float %27, float* %127, align 4
  %128 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 0
  store float %9, float* %128, align 4, !tbaa !61, !noalias !43
  %129 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 1
  store float %10, float* %129, align 4, !tbaa !61, !noalias !43
  %130 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 2
  store float %11, float* %130, align 4, !tbaa !61, !noalias !43
  %131 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 0
  %132 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 0
  store float %22, float* %131, align 4
  store float %23, float* %132, align 4
  %133 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 1
  %134 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 1
  store float %18, float* %133, align 4
  store float %19, float* %134, align 4
  %135 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 2
  %136 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 2
  store float %14, float* %135, align 4
  store float %15, float* %136, align 4
  %137 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 0
  %138 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 0
  store float %20, float* %137, align 4
  store float %21, float* %138, align 4
  %139 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 1
  %140 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 1
  store float %16, float* %139, align 4
  store float %17, float* %140, align 4
  %141 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 2
  %142 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 2
  store float %12, float* %141, align 4
  store float %13, float* %142, align 4
  br label %143

; <label>:143                                     ; preds = %270, %0
  %144 = phi float [ %272, %270 ], [ %28, %0 ]
  %145 = phi float [ %266, %270 ], [ 0.000000e+00, %0 ]
  %146 = phi float [ %267, %270 ], [ 1.000000e+00, %0 ]
  %147 = phi i32 [ %268, %270 ], [ 0, %0 ]
  %148 = fcmp fast ogt float %144, 0x3EB0C6F7A0000000
  br i1 %148, label %149, label %265

; <label>:149                                     ; preds = %143
  %150 = getelementptr [3 x float], [3 x float]* %39, i32 0, i32 %147
  %151 = getelementptr [3 x float], [3 x float]* %40, i32 0, i32 %147
  %152 = load float, float* %150, align 4
  %153 = load float, float* %151, align 4
  %154 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 %147
  %155 = load float, float* %154, align 4, !tbaa !61, !noalias !43
  %156 = fdiv fast float 1.000000e+00, %155
  %157 = getelementptr [3 x float], [3 x float]* %35, i32 0, i32 %147
  %158 = getelementptr [3 x float], [3 x float]* %36, i32 0, i32 %147
  %159 = load float, float* %157, align 4
  %160 = load float, float* %158, align 4
  %161 = fmul fast float %159, %156
  %162 = fmul fast float %160, %156
  %163 = getelementptr [3 x float], [3 x float]* %37, i32 0, i32 %147
  %164 = getelementptr [3 x float], [3 x float]* %38, i32 0, i32 %147
  %165 = load float, float* %163, align 4
  %166 = load float, float* %164, align 4
  %167 = fmul fast float %165, %156
  %168 = fmul fast float %166, %156
  %169 = fmul fast float %161, %80
  %170 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %171 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %172 = fmul fast float %162, %82
  %173 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %174 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %175 = fmul fast float %173, %173
  %176 = fmul fast float %174, %174
  %177 = fadd fast float %176, %175
  %178 = fmul fast float %173, %170
  %179 = fmul fast float %174, %171
  %180 = fadd fast float %179, %178
  %181 = fmul fast float %170, %170
  %182 = fmul fast float %171, %171
  %183 = fadd fast float %182, %181
  %184 = fmul fast float %177, %183
  %185 = fmul fast float %180, %180
  %186 = fsub fast float %184, %185
  %187 = bitcast float %186 to i32
  %188 = fadd fast float %177, %183
  %189 = bitcast float %188 to i32
  %190 = sub i32 8388608, %189
  %191 = add i32 %190, %187
  %192 = ashr i32 %191, 24
  %193 = sitofp i32 %192 to float
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 3
  %196 = bitcast i32 %195 to float
  %197 = fdiv fast float 1.000000e+00, %196
  %198 = fptosi float %193 to i32
  %199 = shl i32 %198, 23
  %200 = add i32 %199, 2130706432
  %201 = bitcast float %80 to i32
  %202 = bitcast float %82 to i32
  %203 = sub i32 %200, %201
  %204 = sub i32 %200, %202
  %205 = bitcast i32 %203 to float
  %206 = bitcast i32 %204 to float
  %207 = fadd fast float %152, 5.000000e-01
  %208 = fadd fast float %153, 5.000000e-01
  %209 = fmul fast float %197, %207
  %210 = fmul fast float %197, %208
  %211 = add i32 %7, 72
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = add i32 %213, 0
  %215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %215, %dx.types.Handle %3, float %161, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float %193)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 0
  %218 = fmul fast float %217, 2.000000e+00
  %219 = fadd fast float %218, -1.000000e+00
  %220 = fmul fast float %219, %112
  %221 = fmul fast float %167, %220
  %222 = fmul fast float %168, %220
  %223 = fadd fast float %221, %161
  %224 = fadd fast float %222, %162
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = add i32 %226, 0
  %228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %228, %dx.types.Handle %3, float %223, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float %193)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = extractvalue %dx.types.ResRet.f32 %229, 3
  %234 = fmul fast float %230, 2.000000e+00
  %235 = fmul fast float %231, 2.000000e+00
  %236 = fmul fast float %232, 2.000000e+00
  %237 = fadd fast float %234, -1.000000e+00
  %238 = fadd fast float %235, -1.000000e+00
  %239 = fadd fast float %236, -1.000000e+00
  %240 = fmul fast float %237, %90
  %241 = call float @dx.op.tertiary.f32(i32 46, float %238, float %95, float %240)  ; FMad(a,b,c)
  %242 = call float @dx.op.tertiary.f32(i32 46, float %239, float %98, float %241)  ; FMad(a,b,c)
  %243 = fmul fast float %237, %99
  %244 = call float @dx.op.tertiary.f32(i32 46, float %238, float %102, float %243)  ; FMad(a,b,c)
  %245 = call float @dx.op.tertiary.f32(i32 46, float %239, float %105, float %244)  ; FMad(a,b,c)
  %246 = fmul fast float %237, %106
  %247 = call float @dx.op.tertiary.f32(i32 46, float %238, float %107, float %246)  ; FMad(a,b,c)
  %248 = call float @dx.op.tertiary.f32(i32 46, float %239, float %108, float %247)  ; FMad(a,b,c)
  %249 = fsub fast float %223, %209
  %250 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %251 = fmul fast float %197, 5.000000e-01
  %252 = fsub fast float %251, %205
  %253 = fcmp fast ogt float %250, %252
  %254 = fsub fast float %224, %210
  %255 = call float @dx.op.unary.f32(i32 6, float %254)  ; FAbs(value)
  %256 = fsub fast float %251, %206
  %257 = fcmp fast ogt float %255, %256
  %258 = or i1 %253, %257
  %259 = select i1 %258, float 0.000000e+00, float %233
  %260 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %242, float %245, float %248)  ; Dot3(ax,ay,az,bx,by,bz)
  %261 = fmul fast float %260, %144
  %262 = fmul fast float %261, %259
  %263 = fcmp fast olt float %262, %146
  br i1 %263, label %264, label %265

; <label>:264                                     ; preds = %149
  br label %265

; <label>:265                                     ; preds = %264, %149, %143
  %266 = phi float [ %145, %149 ], [ %259, %264 ], [ %145, %143 ]
  %267 = phi float [ %146, %149 ], [ %262, %264 ], [ %146, %143 ]
  %268 = add nuw nsw i32 %147, 1
  %269 = icmp eq i32 %268, 3
  br i1 %269, label %273, label %270

; <label>:270                                     ; preds = %265
  %271 = getelementptr [3 x float], [3 x float]* %41, i32 0, i32 %268
  %272 = load float, float* %271, align 4, !tbaa !61, !noalias !43
  br label %143

; <label>:273                                     ; preds = %265
  %274 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %275 = bitcast i32 %47 to float
  %276 = fmul fast float %48, %275
  %277 = fmul fast float %49, %275
  %278 = fmul fast float %50, %275
  %279 = fcmp fast olt float %266, 0x3FE0101020000000
  br i1 %279, label %280, label %281

; <label>:280                                     ; preds = %273
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %281

; <label>:281                                     ; preds = %280, %273
  %282 = call float @dx.op.unary.f32(i32 6, float %276)  ; FAbs(value)
  %283 = call float @dx.op.unary.f32(i32 6, float %277)  ; FAbs(value)
  %284 = fadd fast float %283, %282
  %285 = call float @dx.op.unary.f32(i32 6, float %278)  ; FAbs(value)
  %286 = fadd fast float %284, %285
  %287 = fdiv fast float %276, %286
  %288 = fdiv fast float %277, %286
  %289 = fdiv fast float %278, %286
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
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %274)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !10, !12}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 31, i32 1, i32 11, i32 0, null}
!10 = !{!11}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{[46 x i32] [i32 44, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ps_main, !"ps_main", !16, !4, !42}
!16 = !{!17, !39, null}
!17 = !{!18, !20, !21, !23, !25, !26, !29, !31, !32, !34, !35, !36, !38}
!18 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!19 = !{i32 0}
!20 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!21 = !{i32 2, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 2, i8 0, !22}
!22 = !{i32 3, i32 7}
!23 = !{i32 3, !"TRIID", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !24}
!24 = !{i32 3, i32 1}
!25 = !{i32 4, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !19, i8 2, i32 1, i8 1, i32 2, i8 3, null}
!26 = !{i32 5, !"CARD_BARY_AND_TILE", i8 9, i8 0, !27, i8 1, i32 1, i8 4, i32 4, i8 0, !28}
!27 = !{i32 1}
!28 = !{i32 3, i32 15}
!29 = !{i32 6, !"CARD_TILE2_AND_TILE", i8 9, i8 0, !30, i8 1, i32 1, i8 4, i32 5, i8 0, !28}
!30 = !{i32 3}
!31 = !{i32 7, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !27, i8 4, i32 1, i8 4, i32 6, i8 0, !28}
!32 = !{i32 8, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !33, i8 4, i32 1, i8 4, i32 7, i8 0, !28}
!33 = !{i32 2}
!34 = !{i32 9, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !30, i8 4, i32 1, i8 4, i32 8, i8 0, !28}
!35 = !{i32 10, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !19, i8 4, i32 1, i8 4, i32 9, i8 0, !22}
!36 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !19, i8 1, i32 1, i8 4, i32 10, i8 0, !37}
!37 = !{i32 3, i32 9}
!38 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !19, i8 1, i32 1, i8 1, i32 3, i8 1, !24}
!39 = !{!40, !41}
!40 = !{i32 0, !"SV_Target", i8 5, i8 16, !19, i8 0, i32 1, i8 1, i32 0, i8 0, !24}
!41 = !{i32 1, !"SV_Target", i8 5, i8 16, !27, i8 0, i32 1, i8 1, i32 1, i8 0, !24}
!42 = !{i32 0, i64 16}
!43 = !{!44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59}
!44 = distinct !{!44, !45, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outTexCoords"}
!45 = distinct !{!45, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z"}
!46 = distinct !{!46, !45, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outNormal"}
!47 = distinct !{!47, !45, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outCoverage"}
!48 = distinct !{!48, !45, !"\01?getCardTexcoordsNormalAlpha@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAIAIAMUPixelInput@@MV?$matrix@M$02$02@@V1@M@Z: %outMipLevel"}
!49 = distinct !{!49, !50, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outTexCoords"}
!50 = distinct !{!50, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z"}
!51 = distinct !{!51, !50, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outNormal"}
!52 = distinct !{!52, !50, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outMipLevel"}
!53 = distinct !{!53, !50, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@M@Z: %outCoverage"}
!54 = distinct !{!54, !55, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outTexCoords"}
!55 = distinct !{!55, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z"}
!56 = distinct !{!56, !55, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outNormal"}
!57 = distinct !{!57, !55, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outMipLevel"}
!58 = distinct !{!58, !55, !"\01?getCardTexcoordsNormal@@YAXAIAV?$vector@M$01@@AIAV?$vector@M$02@@AIAMAIAIUPixelInput@@@Z: %outCoverage"}
!59 = distinct !{!59, !60, !"\01?ps_main_internal@@YA?AUPixelOutput@@UPixelInput@@@Z: %agg.result"}
!60 = distinct !{!60, !"\01?ps_main_internal@@YA?AUPixelOutput@@UPixelInput@@@Z"}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}

