;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; NORMAL                   0   xyz         1     NONE   float   xyz 
; FOAMMASK                 0      w        1     NONE   float       
; TEXCOORD                 0   xy          2     NONE   float   xy  
; WATER_SUBTILE_ID         0   x           3     NONE    uint   x   
; SV_IsFrontFace           0    y          3    FFACE    uint    y  
; SV_ClipDistance          0   x           4  CLIPDST   float       
; SV_ClipDistance          1    y          4  CLIPDST   float       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
;
; shader hash: bd0c87357bb8f5dbb58a75f00341c0b6
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32     2darray      T0      t0,space6unbounded
;                                   texture    byte         r/o      T1     t46,space1     1
;                                   texture    byte         r/o      T2             t0     1
;
;
; ViewId state:
;
; Number of inputs: 18, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 4 depends on inputs: { 4, 5, 6, 13 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = icmp ne i32 %6, 0
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.dot3.f32(i32 55, float %11, float %12, float %13, float %11, float %12, float %13)  ; Dot3(ax,ay,az,bx,by,bz)
  %15 = call float @dx.op.unary.f32(i32 25, float %14)  ; Rsqrt(value)
  %16 = select i1 %7, float 1.000000e+00, float -1.000000e+00
  %17 = fmul fast float %11, %16
  %18 = fmul fast float %17, %15
  %19 = fmul fast float %12, %16
  %20 = fmul fast float %19, %15
  %21 = fmul fast float %13, %16
  %22 = fmul fast float %21, %15
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %25 = call float @dx.op.unary.f32(i32 83, float %9)  ; DerivCoarseX(value)
  %26 = call float @dx.op.unary.f32(i32 83, float %10)  ; DerivCoarseX(value)
  %27 = call float @dx.op.unary.f32(i32 84, float %9)  ; DerivCoarseY(value)
  %28 = call float @dx.op.unary.f32(i32 84, float %10)  ; DerivCoarseY(value)
  %29 = fmul fast float %25, %24
  %30 = fmul fast float %26, %24
  %31 = fmul fast float %27, %24
  %32 = fmul fast float %28, %24
  %33 = call float @dx.op.dot2.f32(i32 54, float %31, float %32, float %31, float %32)  ; Dot2(ax,ay,bx,by)
  %34 = call float @dx.op.dot2.f32(i32 54, float %29, float %30, float %29, float %30)  ; Dot2(ax,ay,bx,by)
  %35 = call float @dx.op.binary.f32(i32 35, float %34, float %33)  ; FMax(a,b)
  %36 = call float @dx.op.unary.f32(i32 23, float %35)  ; Log(value)
  %37 = fmul fast float %36, 5.000000e-01
  %38 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.f32 %38, 1
  %40 = fadd fast float %39, %37
  %41 = call float @dx.op.binary.f32(i32 35, float %40, float 0.000000e+00)  ; FMax(a,b)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 3
  %44 = fadd fast float %43, %41
  %45 = shl i32 %8, 3
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = and i32 %47, 16383
  %49 = mul nuw nsw i32 %48, 148
  %50 = add nuw nsw i32 %49, 36
  %51 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %50, i32 undef)  ; BufferLoad(srv,index,wot)
  %52 = extractvalue %dx.types.ResRet.f32 %51, 0
  %53 = add nuw nsw i32 %49, 92
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %53, i32 undef)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %58 = fadd fast float %57, %44
  %59 = add i32 %55, 0
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %59, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %60, i32 0)  ; GetDimensions(handle,mipLevel)
  %62 = extractvalue %dx.types.Dimensions %61, 0
  %63 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %62)  ; FirstbitLo(value)
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 1
  %66 = sub nsw i32 %65, %63
  %67 = sitofp i32 %66 to float
  %68 = fsub fast float %58, %67
  %69 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %70 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %60, %dx.types.Handle %3, float %9, float %10, float %52, float undef, i32 0, i32 0, i32 undef, float %69)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fcmp fast ogt float %71, 0x3FE0101020000000
  %73 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.i32 %73, 0
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  %77 = or i1 %72, %76
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %79

; <label>:79                                      ; preds = %78, %0
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %80 = call float @dx.op.unary.f32(i32 6, float %18)  ; FAbs(value)
  %81 = call float @dx.op.unary.f32(i32 6, float %20)  ; FAbs(value)
  %82 = fadd fast float %81, %80
  %83 = call float @dx.op.unary.f32(i32 6, float %22)  ; FAbs(value)
  %84 = fadd fast float %82, %83
  %85 = fdiv fast float %18, %84
  %86 = fdiv fast float %20, %84
  %87 = fdiv fast float %22, %84
  %88 = fcmp fast oge float %87, 0.000000e+00
  %89 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %90 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %91 = fsub fast float 1.000000e+00, %89
  %92 = fsub fast float 1.000000e+00, %90
  %93 = fcmp fast oge float %85, 0.000000e+00
  %94 = select i1 %93, float 1.000000e+00, float -1.000000e+00
  %95 = fcmp fast oge float %86, 0.000000e+00
  %96 = select i1 %95, float 1.000000e+00, float -1.000000e+00
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %92, %96
  %99 = select i1 %88, float %85, float %97
  %100 = select i1 %88, float %86, float %98
  %101 = fmul fast float %99, 1.275000e+02
  %102 = fmul fast float %100, 1.275000e+02
  %103 = fadd fast float %101, 1.275000e+02
  %104 = fadd fast float %102, 1.275000e+02
  %105 = call float @dx.op.unary.f32(i32 26, float %103)  ; Round_ne(value)
  %106 = call float @dx.op.unary.f32(i32 26, float %104)  ; Round_ne(value)
  %107 = fptoui float %105 to i32
  %108 = fptoui float %106 to i32
  %109 = shl i32 %108, 8
  %110 = or i32 %109, %107
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %110)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 0)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

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
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{!11, !12}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!15 = !{[20 x i32] [i32 18, i32 5, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !35}
!17 = !{!18, !32, null}
!18 = !{!19, !21, !23, !25, !26, !28, !29, !30}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!20 = !{i32 0}
!21 = !{i32 1, !"NORMAL", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 1, i8 0, !22}
!22 = !{i32 3, i32 7}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !20, i8 2, i32 1, i8 1, i32 1, i8 3, null}
!26 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 3, i8 0, !27}
!27 = !{i32 3, i32 1}
!28 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !20, i8 1, i32 1, i8 1, i32 3, i8 1, !27}
!29 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !20, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!30 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !31, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!31 = !{i32 1}
!32 = !{!33, !34}
!33 = !{i32 0, !"SV_Target", i8 5, i8 16, !20, i8 0, i32 1, i8 1, i32 0, i8 0, !27}
!34 = !{i32 1, !"SV_Target", i8 5, i8 16, !31, i8 0, i32 1, i8 1, i32 1, i8 0, !27}
!35 = !{i32 0, i64 16}

