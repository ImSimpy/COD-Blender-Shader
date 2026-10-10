;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; NORMAL                   0   xyz         2     NONE   float   xyz 
; PACKED_TRI_DATA          0   xyzw        3     NONE    uint   xy  
; SV_IsFrontFace           0   x           4    FFACE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: a210cb491d743a19d132b3520430c5d6
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
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture     f32          2d      T2     t37,space2     1
;
;
; ViewId state:
;
; Number of inputs: 17, outputs: 0
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = icmp ne i32 %5, 0
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %22 = fmul fast float %21, %16
  %23 = fmul fast float %21, %17
  %24 = select i1 %6, float 1.000000e+00, float -1.000000e+00
  %25 = call float @dx.op.dot3.f32(i32 55, float %9, float %10, float %11, float %9, float %10, float %11)  ; Dot3(ax,ay,az,bx,by,bz)
  %26 = bitcast float %25 to i32
  %27 = ashr i32 %26, 1
  %28 = sub nsw i32 1597250115, %27
  %29 = bitcast i32 %28 to float
  %30 = fmul fast float %9, %24
  %31 = fmul fast float %30, %29
  %32 = fmul fast float %10, %24
  %33 = fmul fast float %32, %29
  %34 = fmul fast float %11, %24
  %35 = fmul fast float %34, %29
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 2
  %38 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %39 = fmul fast float %22, 2.000000e+00
  %40 = fmul fast float %39, %37
  %41 = fmul fast float %23, 2.000000e+00
  %42 = fmul fast float %41, %38
  %43 = fsub fast float 1.000000e+00, %40
  %44 = fsub fast float 1.000000e+00, %42
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 1
  %48 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %49 = fmul fast float %43, %46
  %50 = fmul fast float %43, %47
  %51 = fmul fast float %43, %48
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %56 = fmul fast float %44, %53
  %57 = fmul fast float %44, %54
  %58 = fmul fast float %44, %55
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fadd fast float %56, %60
  %64 = fadd fast float %63, %49
  %65 = fadd fast float %57, %61
  %66 = fadd fast float %65, %50
  %67 = fadd fast float %58, %62
  %68 = fadd fast float %67, %51
  %69 = fmul fast float %64, %18
  %70 = fmul fast float %66, %18
  %71 = fmul fast float %68, %18
  %72 = bitcast i32 %8 to float
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = fptosi float %18 to i32
  %76 = sitofp i32 %75 to float
  %77 = fadd fast float %74, %76
  %78 = fmul fast float %77, 0x3FE3C6EF40000000
  %79 = frem fast float %22, 2.560000e+02
  %80 = frem fast float %23, 2.560000e+02
  %81 = fptoui float %79 to i32
  %82 = fptoui float %80 to i32
  %83 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %81, i32 %82, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = fadd fast float %84, %78
  %86 = call float @dx.op.unary.f32(i32 22, float %85)  ; Frc(value)
  %87 = add i32 %7, 360
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = extractvalue %dx.types.ResRet.i32 %88, 1
  %91 = extractvalue %dx.types.ResRet.i32 %88, 2
  %92 = extractvalue %dx.types.ResRet.i32 %88, 3
  %93 = bitcast i32 %89 to float
  %94 = bitcast i32 %90 to float
  %95 = bitcast i32 %91 to float
  %96 = bitcast i32 %92 to float
  %97 = call float @dx.op.dot3.f32(i32 55, float %31, float %33, float %35, float %31, float %33, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = call float @dx.op.unary.f32(i32 25, float %97)  ; Rsqrt(value)
  %99 = fmul fast float %98, %31
  %100 = fmul fast float %98, %33
  %101 = fmul fast float %98, %35
  %102 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = call float @dx.op.unary.f32(i32 25, float %102)  ; Rsqrt(value)
  %104 = fmul fast float %103, %69
  %105 = fmul fast float %103, %70
  %106 = fmul fast float %103, %71
  %107 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %108 = fmul fast float %107, %107
  %109 = fmul fast float %108, %95
  %110 = fadd fast float %109, %96
  %111 = call float @dx.op.unary.f32(i32 7, float %110)  ; Saturate(value)
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %114 = fmul fast float %113, %102
  %115 = fsub fast float %93, %114
  %116 = fmul fast float %115, %94
  %117 = call float @dx.op.unary.f32(i32 7, float %116)  ; Saturate(value)
  %118 = fmul fast float %117, %111
  %119 = fcmp fast ugt float %118, %86
  br i1 %119, label %121, label %120

; <label>:120                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %121

; <label>:121                                     ; preds = %120, %0
  %122 = add i32 %7, 348
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = and i32 %124, 16384
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %136, label %127

; <label>:127                                     ; preds = %121
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = fsub fast float %15, %129
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fmul fast float %130, %132
  %134 = call float @dx.op.unary.f32(i32 7, float %133)  ; Saturate(value)
  %135 = fmul fast float %134, %14
  br label %136

; <label>:136                                     ; preds = %127, %121
  %137 = phi float [ %135, %127 ], [ %14, %121 ]
  %138 = and i32 %124, 32768
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %154, label %140

; <label>:140                                     ; preds = %136
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %143 = fmul fast float %142, %72
  %144 = fsub fast float %72, %143
  %145 = fsub fast float %15, %143
  %146 = fdiv fast float %145, %144
  %147 = call float @dx.op.unary.f32(i32 7, float %146)  ; Saturate(value)
  %148 = fmul fast float %147, 2.000000e+00
  %149 = fsub fast float 3.000000e+00, %148
  %150 = fmul fast float %147, %147
  %151 = fmul fast float %150, %149
  %152 = fsub fast float 1.000000e+00, %151
  %153 = fmul fast float %152, %137
  br label %154

; <label>:154                                     ; preds = %140, %136
  %155 = phi float [ %153, %140 ], [ %137, %136 ]
  %156 = add i32 %7, 32
  %157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = shl i32 %158, 4
  %160 = and i32 %159, 32752
  %161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %160)  ; LegacyF16ToF32(value)
  %162 = lshr i32 %158, 7
  %163 = and i32 %162, 32752
  %164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %163)  ; LegacyF16ToF32(value)
  %165 = add i32 %7, 36
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = and i32 %167, 65535
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = lshr i32 %167, 16
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = lshr i32 %158, 22
  %173 = shl nuw nsw i32 %172, 5
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = call float @dx.op.unary.f32(i32 13, float %174)  ; Sin(value)
  %176 = call float @dx.op.unary.f32(i32 12, float %174)  ; Cos(value)
  %177 = fsub fast float -0.000000e+00, %175
  %178 = fmul fast float %161, %12
  %179 = fmul fast float %164, %13
  %180 = fmul fast float %176, %178
  %181 = call float @dx.op.tertiary.f32(i32 46, float %177, float %179, float %180)  ; FMad(a,b,c)
  %182 = fmul fast float %175, %178
  %183 = call float @dx.op.tertiary.f32(i32 46, float %176, float %179, float %182)  ; FMad(a,b,c)
  %184 = fadd fast float %181, %169
  %185 = fadd fast float %183, %171
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fcmp fast ogt float %187, 0.000000e+00
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 49152
  %192 = icmp ne i32 %191, 0
  %193 = and i1 %188, %192
  %194 = select i1 %193, float %86, float 0x3FE0101020000000
  %195 = add i32 %7, 456
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = add i32 %197, 0
  %199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %199, %dx.types.Handle %19, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fcmp fast olt float %201, 0x3FE0101020000000
  %203 = select i1 %202, float 0.000000e+00, float 1.000000e+00
  %204 = fmul fast float %203, %155
  %205 = fcmp fast ogt float %204, %194
  br i1 %205, label %207, label %206

; <label>:206                                     ; preds = %154
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %207

; <label>:207                                     ; preds = %206, %154
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!13 = !{!14}
!14 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!15 = !{[2 x i32] [i32 17, i32 0]}
!16 = !{void ()* @ps_main, !"ps_main", !17, !4, !30}
!17 = !{!18, null, null}
!18 = !{!19, !22, !24, !26, !28}
!19 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 11}
!22 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 15}
!24 = !{i32 2, !"NORMAL", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 2, i8 0, !25}
!25 = !{i32 3, i32 7}
!26 = !{i32 3, !"PACKED_TRI_DATA", i8 5, i8 0, !20, i8 1, i32 1, i8 4, i32 3, i8 0, !27}
!27 = !{i32 3, i32 3}
!28 = !{i32 4, !"SV_IsFrontFace", i8 5, i8 13, !20, i8 1, i32 1, i8 1, i32 4, i8 0, !29}
!29 = !{i32 3, i32 1}
!30 = !{i32 0, i64 16}

