;
; Note: shader requires additional functionality:
;       Barycentrics
;
;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float       
; TEXCOORD                 0   xy          2     NONE   float   xy  
; WATER_SUBTILE_ID         0   x           3     NONE    uint   x   
; WATER_VISBUF_VERTEX_ID     0    y          3     NONE    uint       
; SV_IsFrontFace           0     z         3    FFACE    uint     z 
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: bdbfbc812d784a930970fd0aafe49fb0
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
; NORMAL                   0                 linear       
; TEXCOORD                 0                 linear       
; FOAMMASK                 0                 linear       
; WATER_SUBTILE_ID         0        nointerpolation       
; WATER_VISBUF_VERTEX_ID     0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
; SV_ClipDistance          0                 linear       
; SV_ClipDistance          1                 linear       
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
;   [3376 x i8] (type annotation not present)
;
; }
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
;   [144 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb5     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   cbuffer      NA          NA     CB3            cb0     1
;                                   texture    byte         r/o      T0             t0     1
;                                       UAV     u32          2d      U0             u4     1
;
;
; ViewId state:
;
; Number of inputs: 18, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 14 }
;   output 1 depends on inputs: { 14 }
;   output 2 depends on inputs: { 14 }
;   output 3 depends on inputs: { 14 }
;   output 4 depends on inputs: { 8, 9, 12, 14 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.waterConstants = type { %hostlayout.struct.GfxWaterConstants }
%hostlayout.struct.GfxWaterConstants = type { i32, float, float, float, float, float, float, i32, <3 x float>, float, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, float, float, float, float, i32, float, float, float, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, float, float, float, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [16 x <4 x float>], [16 x <4 x float>], <4 x float>, <4 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, [2 x <4 x i32>], [2 x <4 x i32>], [2 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], [39 x <4 x i32>], <4 x i32>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, float, float, float, float, <3 x float>, i32, <3 x float>, i32, float, i32, i32, i32, float, float, float, float, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, i32, i32, i32, float, i32, i32, float, i32, i32, float, float, i32, float, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%perPrim = type { <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = alloca [4 x i32], align 4
  %8 = alloca [4 x float], align 4
  %9 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = icmp ne i32 %9, 0
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = fmul fast float %21, %17
  %23 = fmul fast float %21, %18
  %24 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %14, float %15, float %16)  ; Dot3(ax,ay,az,bx,by,bz)
  %25 = call float @dx.op.unary.f32(i32 25, float %24)  ; Rsqrt(value)
  %26 = fmul fast float %25, %14
  %27 = fmul fast float %25, %15
  %28 = fmul fast float %25, %16
  %29 = xor i1 %10, true
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %32, %29
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = and i32 %35, 256
  %37 = icmp ne i32 %36, 0
  %38 = and i1 %33, %37
  %39 = or i1 %10, %38
  %40 = select i1 %39, float 1.000000e+00, float -1.000000e+00
  %41 = fmul fast float %26, %40
  %42 = fmul fast float %27, %40
  %43 = fmul fast float %28, %40
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = call float @dx.op.unary.f32(i32 83, float %12)  ; DerivCoarseX(value)
  %47 = call float @dx.op.unary.f32(i32 83, float %13)  ; DerivCoarseX(value)
  %48 = call float @dx.op.unary.f32(i32 84, float %12)  ; DerivCoarseY(value)
  %49 = call float @dx.op.unary.f32(i32 84, float %13)  ; DerivCoarseY(value)
  %50 = fmul fast float %46, %45
  %51 = fmul fast float %47, %45
  %52 = fmul fast float %48, %45
  %53 = fmul fast float %49, %45
  %54 = call float @dx.op.dot2.f32(i32 54, float %52, float %53, float %52, float %53)  ; Dot2(ax,ay,bx,by)
  %55 = call float @dx.op.dot2.f32(i32 54, float %50, float %51, float %50, float %51)  ; Dot2(ax,ay,bx,by)
  %56 = call float @dx.op.binary.f32(i32 35, float %55, float %54)  ; FMax(a,b)
  %57 = call float @dx.op.unary.f32(i32 23, float %56)  ; Log(value)
  %58 = fmul fast float %57, 5.000000e-01
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %61 = fadd fast float %60, %58
  %62 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 3
  %65 = fadd fast float %64, %62
  %66 = select i1 %39, i32 1, i32 2
  %67 = fptoui float %22 to i32
  %68 = fptoui float %23 to i32
  %69 = lshr i32 %67, 1
  %70 = lshr i32 %68, 1
  %71 = call float @dx.op.unary.f32(i32 6, float %19)  ; FAbs(value)
  %72 = fadd fast float %71, 1.000000e+00
  %73 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %72)  ; FMax(a,b)
  %74 = call float @dx.op.unary.f32(i32 23, float %73)  ; Log(value)
  %75 = fmul fast float %74, 0x3FB2491D00000000
  %76 = call float @dx.op.unary.f32(i32 7, float %75)  ; Saturate(value)
  %77 = fmul fast float %76, 1.638200e+04
  %78 = fptoui float %77 to i32
  %79 = shl i32 %78, 18
  %80 = shl nuw nsw i32 %66, 16
  %81 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %82 = call float @dx.op.unary.f32(i32 6, float %42)  ; FAbs(value)
  %83 = fadd fast float %82, %81
  %84 = call float @dx.op.unary.f32(i32 6, float %43)  ; FAbs(value)
  %85 = fadd fast float %83, %84
  %86 = fdiv fast float %41, %85
  %87 = fdiv fast float %42, %85
  %88 = fdiv fast float %43, %85
  %89 = fcmp fast oge float %88, 0.000000e+00
  %90 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %91 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %92 = fsub fast float 1.000000e+00, %90
  %93 = fsub fast float 1.000000e+00, %91
  %94 = fcmp fast oge float %86, 0.000000e+00
  %95 = select i1 %94, float 1.000000e+00, float -1.000000e+00
  %96 = fcmp fast oge float %87, 0.000000e+00
  %97 = select i1 %96, float 1.000000e+00, float -1.000000e+00
  %98 = fmul fast float %92, %95
  %99 = fmul fast float %93, %97
  %100 = select i1 %89, float %86, float %98
  %101 = select i1 %89, float %87, float %99
  %102 = fmul fast float %100, 1.275000e+02
  %103 = fmul fast float %101, 1.275000e+02
  %104 = fadd fast float %102, 1.275000e+02
  %105 = fadd fast float %103, 1.275000e+02
  %106 = call float @dx.op.unary.f32(i32 26, float %104)  ; Round_ne(value)
  %107 = call float @dx.op.unary.f32(i32 26, float %105)  ; Round_ne(value)
  %108 = fptoui float %106 to i32
  %109 = fptoui float %107 to i32
  %110 = shl i32 %109, 8
  %111 = or i32 %79, %80
  %112 = or i32 %111, %108
  %113 = or i32 %112, %110
  %114 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 6, i32 %69, i32 %70, i32 undef, i32 %113)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %115 = uitofp i32 %66 to float
  %116 = fmul fast float %115, 0x3F70101020000000
  %117 = call float @dx.op.unary.f32(i32 7, float %116)  ; Saturate(value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = bitcast float %119 to i32
  %121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 193)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.i32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.i32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.i32 %121, 2
  %125 = extractvalue %dx.types.CBufRet.i32 %121, 3
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 0
  store i32 %122, i32* %126, align 4
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 2
  store i32 %124, i32* %128, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 3
  store i32 %125, i32* %129, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 %120
  %131 = load i32, i32* %130, align 4, !tbaa !39
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 194)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %137 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 0
  store float %133, float* %137, align 4
  %138 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 1
  store float %134, float* %138, align 4
  %139 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 2
  store float %135, float* %139, align 4
  %140 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 3
  store float %136, float* %140, align 4
  %141 = getelementptr inbounds [4 x float], [4 x float]* %8, i32 0, i32 %120
  %142 = load float, float* %141, align 4, !tbaa !43
  %143 = call i32 @dx.op.attributeAtVertex.i32(i32 137, i32 5, i32 0, i8 0, i8 0)  ; AttributeAtVertex(inputSigId,inputRowIndex,inputColIndex,VertexID)
  %144 = call i32 @dx.op.attributeAtVertex.i32(i32 137, i32 5, i32 0, i8 0, i8 1)  ; AttributeAtVertex(inputSigId,inputRowIndex,inputColIndex,VertexID)
  %145 = call i32 @dx.op.attributeAtVertex.i32(i32 137, i32 5, i32 0, i8 0, i8 2)  ; AttributeAtVertex(inputSigId,inputRowIndex,inputColIndex,VertexID)
  %146 = call i32 @dx.op.binary.i32(i32 40, i32 %144, i32 %145)  ; UMin(a,b)
  %147 = call i32 @dx.op.binary.i32(i32 40, i32 %143, i32 %146)  ; UMin(a,b)
  %148 = call i32 @dx.op.binary.i32(i32 39, i32 %143, i32 %144)  ; UMax(a,b)
  %149 = call i32 @dx.op.binary.i32(i32 40, i32 %148, i32 %145)  ; UMin(a,b)
  %150 = call i32 @dx.op.binary.i32(i32 40, i32 %143, i32 %144)  ; UMin(a,b)
  %151 = call i32 @dx.op.binary.i32(i32 39, i32 %150, i32 %149)  ; UMax(a,b)
  %152 = uitofp i32 %147 to float
  %153 = fmul fast float %152, %142
  %154 = fptoui float %153 to i32
  %155 = mul i32 %154, %131
  %156 = sub i32 %147, %155
  %157 = add i32 %131, -1
  %158 = call i32 @dx.op.tertiary.i32(i32 49, i32 %154, i32 %157, i32 %156)  ; UMad(a,b,c)
  %159 = shl i32 %158, 1
  %160 = add i32 %147, %131
  %161 = icmp ne i32 %160, %151
  %162 = zext i1 %161 to i32
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = fcmp fast ogt float %164, 0.000000e+00
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %168 = fsub fast float %65, %167
  %169 = and i32 %11, 8191
  %170 = and i32 %159, 510
  %171 = or i32 %170, %162
  %172 = shl nuw nsw i32 %171, 13
  %173 = shl i32 %120, 22
  %174 = zext i1 %39 to i32
  %175 = shl nuw nsw i32 %174, 24
  %176 = zext i1 %165 to i32
  %177 = shl nuw nsw i32 %176, 25
  %178 = fmul fast float %168, 0x3FD5555560000000
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = fmul fast float %179, 6.300000e+01
  %181 = fptoui float %180 to i32
  %182 = shl i32 %181, 26
  %183 = or i32 %175, %169
  %184 = or i32 %183, %173
  %185 = or i32 %184, %172
  %186 = or i32 %185, %177
  %187 = or i32 %186, %182
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %187)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.attributeAtVertex.i32(i32, i32, i32, i8, i8) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !7, !10, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{!8}
!8 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !9}
!9 = !{i32 0, i32 5}
!10 = !{!11, !12, !13, !14}
!11 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!12 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!14 = !{i32 3, %perPrim* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!15 = !{[20 x i32] [i32 18, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i32 16, i32 0, i32 31, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !38}
!17 = !{!18, !34, null}
!18 = !{!19, !22, !24, !26, !27, !29, !30, !31, !32}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 11}
!22 = !{i32 1, !"NORMAL", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 1, i8 0, !23}
!23 = !{i32 3, i32 7}
!24 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!25 = !{i32 3, i32 3}
!26 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !20, i8 2, i32 1, i8 1, i32 1, i8 3, null}
!27 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 3, i8 0, !28}
!28 = !{i32 3, i32 1}
!29 = !{i32 5, !"WATER_VISBUF_VERTEX_ID", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 3, i8 1, null}
!30 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !20, i8 1, i32 1, i8 1, i32 3, i8 2, !28}
!31 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !20, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!32 = !{i32 8, !"SV_ClipDistance", i8 9, i8 6, !33, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!33 = !{i32 1}
!34 = !{!35, !37}
!35 = !{i32 0, !"SV_Target", i8 9, i8 16, !20, i8 0, i32 1, i8 4, i32 0, i8 0, !36}
!36 = !{i32 3, i32 15}
!37 = !{i32 1, !"SV_Target", i8 5, i8 16, !33, i8 0, i32 1, i8 1, i32 1, i8 0, !28}
!38 = !{i32 0, i64 4194328}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !41, i64 0}

