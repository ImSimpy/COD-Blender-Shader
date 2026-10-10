;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float   xyzw
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xy          3     NONE   float       
; TEXCOORD                 3   xyz         4     NONE   float   xy  
; COLOR                    3   xyz         5     NONE    uint   x   
; COLOR                    4      w        5     NONE    uint      w
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 19788095787eaff93dfcf88810a3d36a
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
; INTERPOLANT_POSITION     0                 linear       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
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
;   [192 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t1     1
;                                   texture    byte         r/o      T3             t2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 11, 16, 17, 20, 23 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 11, 16, 17, 20, 23 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 11, 16, 17, 20, 23 }
;   output 3 depends on inputs: { 4, 5, 6, 7, 11, 16, 17, 20, 23 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = fadd fast float %11, 1.000000e+00
  %17 = fsub fast float 1.000000e+00, %12
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 1
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %18, 2
  %24 = extractvalue %dx.types.CBufRet.f32 %18, 3
  %25 = fmul fast float %16, %19
  %26 = fmul fast float %25, %22
  %27 = fmul fast float %26, %23
  %28 = fmul fast float %17, %20
  %29 = fmul fast float %28, %22
  %30 = fmul fast float %29, %24
  %31 = fsub fast float 1.000000e+00, %27
  %32 = fsub fast float 1.000000e+00, %30
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %37 = fmul fast float %31, %34
  %38 = fmul fast float %31, %35
  %39 = fmul fast float %31, %36
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %43 = extractvalue %dx.types.CBufRet.f32 %40, 2
  %44 = fmul fast float %32, %41
  %45 = fmul fast float %32, %42
  %46 = fmul fast float %32, %43
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 1
  %50 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %51 = fadd fast float %44, %48
  %52 = fadd fast float %51, %37
  %53 = fadd fast float %45, %49
  %54 = fadd fast float %53, %38
  %55 = fadd fast float %46, %50
  %56 = fadd fast float %55, %39
  %57 = fmul fast float %52, %14
  %58 = fmul fast float %54, %14
  %59 = fmul fast float %56, %14
  %60 = mul i32 %7, 208
  %61 = add i32 %60, 188
  %62 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %61, i32 undef)  ; BufferLoad(srv,index,wot)
  %63 = extractvalue %dx.types.ResRet.i32 %62, 0
  %64 = shl i32 %6, 5
  %65 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = extractvalue %dx.types.ResRet.f32 %65, 1
  %68 = extractvalue %dx.types.ResRet.f32 %65, 2
  %69 = extractvalue %dx.types.ResRet.f32 %65, 3
  %70 = or i32 %64, 16
  %71 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %70, i32 undef)  ; BufferLoad(srv,index,wot)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = extractvalue %dx.types.ResRet.f32 %71, 3
  %76 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = call float @dx.op.unary.f32(i32 25, float %76)  ; Rsqrt(value)
  %78 = fmul fast float %77, %57
  %79 = fmul fast float %77, %58
  %80 = fmul fast float %77, %59
  %81 = fsub fast float -0.000000e+00, %78
  %82 = fsub fast float -0.000000e+00, %79
  %83 = fsub fast float -0.000000e+00, %80
  %84 = fsub fast float %72, %66
  %85 = fsub fast float %73, %67
  %86 = fsub fast float %74, %68
  %87 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %88 = fsub fast float %75, %69
  %89 = fmul fast float %88, %88
  %90 = fsub fast float %87, %89
  %91 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %92 = fmul fast float %91, %91
  %93 = fsub fast float %90, %92
  %94 = fadd fast float %93, 0x3EE4F8B580000000
  %95 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = fmul fast float %96, %90
  %99 = fmul fast float %95, %91
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %88, %75
  %102 = fmul fast float %101, %91
  %103 = fadd fast float %100, %102
  %104 = fmul fast float %97, %90
  %105 = fmul fast float %95, %95
  %106 = fmul fast float %75, 2.000000e+00
  %107 = fmul fast float %106, %88
  %108 = fmul fast float %107, %95
  %109 = fmul fast float %75, %75
  %110 = fmul fast float %109, %87
  %111 = fsub fast float -0.000000e+00, %110
  %112 = fsub fast float %111, %105
  %113 = fadd fast float %112, %104
  %114 = fadd fast float %113, %108
  %115 = fmul fast float %103, %103
  %116 = fmul fast float %114, %94
  %117 = fsub fast float %115, %116
  %118 = fcmp fast olt float %117, 0.000000e+00
  %119 = fsub fast float -0.000000e+00, %117
  %120 = select i1 %118, float -1.000000e+00, float 1.000000e+00
  %121 = select i1 %118, float %119, float %117
  %122 = call float @dx.op.unary.f32(i32 24, float %121)  ; Sqrt(value)
  %123 = fsub fast float -0.000000e+00, %122
  %124 = fsub fast float %123, %103
  %125 = fdiv fast float %124, %94
  %126 = fsub fast float %95, %101
  %127 = fmul fast float %125, %91
  %128 = fadd fast float %127, %126
  %129 = fcmp fast ogt float %128, 0.000000e+00
  %130 = fcmp fast olt float %128, %90
  %131 = and i1 %129, %130
  br i1 %131, label %132, label %134

; <label>:132                                     ; preds = %0
  %133 = fmul fast float %120, %125
  br label %173

; <label>:134                                     ; preds = %0
  %135 = fmul fast float %96, %96
  %136 = fsub fast float %135, %97
  %137 = fadd fast float %136, %109
  %138 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = fmul fast float %138, %138
  %140 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %141 = fsub fast float %139, %140
  %142 = fmul fast float %69, %69
  %143 = fadd fast float %141, %142
  %144 = call float @dx.op.binary.f32(i32 35, float %137, float %143)  ; FMax(a,b)
  %145 = fcmp fast olt float %144, 0.000000e+00
  br i1 %145, label %146, label %153

; <label>:146                                     ; preds = %134
  %147 = fcmp fast ogt float %143, %137
  %148 = fsub fast float -0.000000e+00, %143
  %149 = select i1 %147, float %148, float %143
  %150 = fcmp fast ogt float %137, %149
  %151 = fsub fast float -0.000000e+00, %137
  %152 = select i1 %150, float %151, float %137
  br label %153

; <label>:153                                     ; preds = %146, %134
  %154 = phi float [ -1.000000e+00, %146 ], [ %120, %134 ]
  %155 = phi float [ %152, %146 ], [ %137, %134 ]
  %156 = phi float [ %149, %146 ], [ %143, %134 ]
  %157 = fcmp fast ogt float %155, 0.000000e+00
  br i1 %157, label %158, label %163

; <label>:158                                     ; preds = %153
  %159 = fsub fast float -0.000000e+00, %96
  %160 = call float @dx.op.unary.f32(i32 24, float %155)  ; Sqrt(value)
  %161 = fsub fast float %159, %160
  %162 = fmul fast float %161, %154
  br label %163

; <label>:163                                     ; preds = %158, %153
  %164 = phi float [ %162, %158 ], [ 0x4415AF1D80000000, %153 ]
  %165 = fcmp fast ogt float %156, 0.000000e+00
  br i1 %165, label %166, label %173

; <label>:166                                     ; preds = %163
  %167 = fsub fast float -0.000000e+00, %138
  %168 = call float @dx.op.unary.f32(i32 24, float %156)  ; Sqrt(value)
  %169 = fsub fast float %167, %168
  %170 = fcmp fast olt float %169, %164
  br i1 %170, label %171, label %173

; <label>:171                                     ; preds = %166
  %172 = fmul fast float %169, %154
  br label %173

; <label>:173                                     ; preds = %171, %166, %163, %132
  %174 = phi float [ %133, %132 ], [ %172, %171 ], [ %164, %166 ], [ %164, %163 ]
  %175 = call float @dx.op.unary.f32(i32 6, float %174)  ; FAbs(value)
  %176 = fmul fast float %175, %78
  %177 = fmul fast float %175, %79
  %178 = fmul fast float %175, %80
  %179 = fsub fast float %66, %72
  %180 = fsub fast float %67, %73
  %181 = fsub fast float %68, %74
  %182 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = call float @dx.op.unary.f32(i32 25, float %182)  ; Rsqrt(value)
  %184 = fmul fast float %183, %179
  %185 = fmul fast float %183, %180
  %186 = fmul fast float %183, %181
  %187 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %188 = fmul fast float %187, %72
  %189 = fmul fast float %187, %73
  %190 = fmul fast float %187, %74
  %191 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %179, float %180, float %181)  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = fmul fast float %191, %66
  %193 = fmul fast float %191, %67
  %194 = fmul fast float %191, %68
  %195 = fsub fast float %188, %192
  %196 = fsub fast float %189, %193
  %197 = fsub fast float %190, %194
  %198 = call float @dx.op.dot3.f32(i32 55, float %195, float %196, float %197, float %195, float %196, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %199 = call float @dx.op.unary.f32(i32 25, float %198)  ; Rsqrt(value)
  %200 = fmul fast float %195, %199
  %201 = fmul fast float %196, %199
  %202 = fmul fast float %197, %199
  %203 = fmul fast float %202, %185
  %204 = fmul fast float %201, %186
  %205 = fsub fast float %203, %204
  %206 = fmul fast float %200, %186
  %207 = fmul fast float %202, %184
  %208 = fsub fast float %206, %207
  %209 = fmul fast float %201, %184
  %210 = fmul fast float %200, %185
  %211 = fsub fast float %209, %210
  %212 = fmul fast float %208, %186
  %213 = fmul fast float %211, %185
  %214 = fsub fast float %212, %213
  %215 = fmul fast float %211, %184
  %216 = fmul fast float %205, %186
  %217 = fsub fast float %215, %216
  %218 = fmul fast float %205, %185
  %219 = fmul fast float %208, %184
  %220 = fsub fast float %218, %219
  %221 = fsub fast float %176, %72
  %222 = fsub fast float %177, %73
  %223 = fsub fast float %178, %74
  %224 = fmul fast float %205, %221
  %225 = call float @dx.op.tertiary.f32(i32 46, float %208, float %222, float %224)  ; FMad(a,b,c)
  %226 = call float @dx.op.tertiary.f32(i32 46, float %211, float %223, float %225)  ; FMad(a,b,c)
  %227 = fmul fast float %214, %221
  %228 = call float @dx.op.tertiary.f32(i32 46, float %217, float %222, float %227)  ; FMad(a,b,c)
  %229 = call float @dx.op.tertiary.f32(i32 46, float %220, float %223, float %228)  ; FMad(a,b,c)
  %230 = fmul fast float %184, %221
  %231 = call float @dx.op.tertiary.f32(i32 46, float %185, float %222, float %230)  ; FMad(a,b,c)
  %232 = call float @dx.op.tertiary.f32(i32 46, float %186, float %223, float %231)  ; FMad(a,b,c)
  %233 = fmul fast float %84, %84
  %234 = fmul fast float %85, %85
  %235 = fadd fast float %233, %234
  %236 = fmul fast float %86, %86
  %237 = fadd fast float %235, %236
  %238 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %239 = fdiv fast float %232, %238
  %240 = fcmp fast olt float %239, 0.000000e+00
  %241 = uitofp i1 %240 to float
  %242 = fmul fast float %239, %238
  %243 = fdiv fast float %242, %75
  %244 = fadd fast float %243, 1.000000e+00
  %245 = fmul fast float %244, 2.500000e-01
  %246 = fmul fast float %245, %241
  %247 = fcmp fast oge float %239, 0.000000e+00
  %248 = uitofp i1 %247 to float
  %249 = fcmp fast olt float %239, 1.000000e+00
  %250 = uitofp i1 %249 to float
  %251 = fmul fast float %239, 5.000000e-01
  %252 = fadd fast float %251, 2.500000e-01
  %253 = fmul fast float %250, %252
  %254 = fcmp fast oge float %239, 1.000000e+00
  %255 = uitofp i1 %254 to float
  %256 = fadd fast float %239, -1.000000e+00
  %257 = fmul fast float %256, %238
  %258 = fdiv fast float %257, %69
  %259 = fmul fast float %258, 2.500000e-01
  %260 = fadd fast float %259, 7.500000e-01
  %261 = fmul fast float %260, %255
  %262 = fadd fast float %261, %253
  %263 = fmul fast float %262, %248
  %264 = fadd fast float %263, %246
  %265 = fdiv fast float %229, %226
  %266 = call float @dx.op.unary.f32(i32 17, float %265)  ; Atan(value)
  %267 = fadd fast float %266, 0x400921FB60000000
  %268 = fadd fast float %266, 0xC00921FB60000000
  %269 = fcmp fast olt float %226, 0.000000e+00
  %270 = fcmp fast oeq float %226, 0.000000e+00
  %271 = fcmp fast oge float %229, 0.000000e+00
  %272 = fcmp fast olt float %229, 0.000000e+00
  %273 = and i1 %269, %271
  %274 = select i1 %273, float %267, float %266
  %275 = and i1 %269, %272
  %276 = select i1 %275, float %268, float %274
  %277 = and i1 %270, %272
  %278 = and i1 %270, %271
  %279 = fadd fast float %276, 0x400921FB60000000
  %280 = fmul fast float %279, 0x3FC45F3060000000
  %281 = fadd fast float %280, 2.500000e-01
  %282 = select i1 %277, float 5.000000e-01, float %281
  %283 = select i1 %278, float 1.000000e+00, float %282
  %284 = fcmp fast ogt float %283, 1.000000e+00
  %285 = uitofp i1 %284 to float
  %286 = fsub fast float %283, %285
  %287 = fcmp fast ogt float %174, 0.000000e+00
  br i1 %287, label %289, label %288

; <label>:288                                     ; preds = %173
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %289

; <label>:289                                     ; preds = %288, %173
  %290 = fdiv fast float %8, %9
  %291 = fptoui float %290 to i32
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, %291
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 31
  %298 = lshr i32 %291, %297
  %299 = uitofp i32 %294 to float
  %300 = uitofp i32 %298 to float
  %301 = fadd fast float %264, %299
  %302 = fadd fast float %286, %300
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 2
  %305 = extractvalue %dx.types.ResRet.i32 %303, 3
  %306 = bitcast i32 %304 to float
  %307 = bitcast i32 %305 to float
  %308 = fmul fast float %306, %301
  %309 = fmul fast float %302, %307
  %310 = and i32 %63, 16
  %311 = icmp ne i32 %310, 0
  %312 = select i1 %311, float 1.000000e+00, float %10
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = add i32 %314, 0
  %316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %316, %dx.types.Handle %15, float %308, float %309, float undef, float undef, i32 0, i32 0, i32 undef, float %318, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fmul fast float %320, %312
  %322 = icmp eq i32 %310, 0
  br i1 %322, label %342, label %323, !dx.controlflow.hints !38

; <label>:323                                     ; preds = %289
  %324 = add i32 %60, 64
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = fadd fast float %326, 1.000000e+00
  %328 = fmul fast float %327, %10
  %329 = fsub fast float %328, %326
  %330 = fsub fast float %327, %329
  %331 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  %332 = fsub fast float 1.000000e+00, %328
  %333 = call float @dx.op.unary.f32(i32 7, float %332)  ; Saturate(value)
  %334 = fsub fast float %331, %333
  %335 = fsub fast float %321, %333
  %336 = fdiv fast float %335, %334
  %337 = call float @dx.op.unary.f32(i32 7, float %336)  ; Saturate(value)
  %338 = fmul fast float %337, 2.000000e+00
  %339 = fsub fast float 3.000000e+00, %338
  %340 = fmul fast float %337, %337
  %341 = fmul fast float %340, %339
  br label %342

; <label>:342                                     ; preds = %323, %289
  %343 = phi float [ %341, %323 ], [ %321, %289 ]
  %344 = fcmp fast ogt float %343, 0.000000e+00
  br i1 %344, label %346, label %345

; <label>:345                                     ; preds = %342
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %346

; <label>:346                                     ; preds = %345, %342
  %347 = call float @dx.op.unary.f32(i32 7, float %343)  ; Saturate(value)
  %348 = fsub fast float 1.000000e+00, %347
  %349 = call float @dx.op.dot3.f32(i32 55, float %348, float %348, float %348, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %352 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %353 = fmul fast float %352, 2.000000e+00
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = fmul fast float %355, %353
  %357 = fadd fast float %356, -1.000000e+00
  %358 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %359 = fadd fast float %349, -1.000000e+00
  %360 = fmul fast float %359, 0x3FEFFF8000000000
  %361 = fmul fast float %360, %358
  %362 = fadd fast float %361, 1.000000e+00
  %363 = call float @dx.op.unary.f32(i32 23, float %362)  ; Log(value)
  %364 = fmul fast float %363, 0xBFE62E4300000000
  %365 = fdiv fast float %364, %353
  %366 = fsub fast float %13, %353
  %367 = fmul fast float %365, 0x3FD45F3060000000
  %368 = fsub fast float 1.500000e+00, %366
  %369 = fmul fast float %368, 0x400921FB60000000
  %370 = call float @dx.op.unary.f32(i32 13, float %369)  ; Sin(value)
  %371 = fsub fast float 1.500000e+00, %13
  %372 = fmul fast float %371, 0x400921FB60000000
  %373 = call float @dx.op.unary.f32(i32 13, float %372)  ; Sin(value)
  %374 = fsub fast float %370, %373
  %375 = fmul fast float %367, %374
  %376 = fmul fast float %365, 0x3FC45F3060000000
  %377 = fmul fast float %368, 0x401921FB60000000
  %378 = call float @dx.op.unary.f32(i32 13, float %377)  ; Sin(value)
  %379 = fmul fast float %371, 0x401921FB60000000
  %380 = call float @dx.op.unary.f32(i32 13, float %379)  ; Sin(value)
  %381 = fsub fast float %378, %380
  %382 = fmul fast float %376, %381
  %383 = fmul fast float %365, 0x3FBB2995E0000000
  %384 = fmul fast float %368, 0x4022D97C80000000
  %385 = call float @dx.op.unary.f32(i32 13, float %384)  ; Sin(value)
  %386 = fmul fast float %371, 0x4022D97C80000000
  %387 = call float @dx.op.unary.f32(i32 13, float %386)  ; Sin(value)
  %388 = fsub fast float %385, %387
  %389 = fmul fast float %383, %388
  %390 = fmul fast float %365, 0x3FB45F3060000000
  %391 = fmul fast float %368, 0x402921FB60000000
  %392 = call float @dx.op.unary.f32(i32 13, float %391)  ; Sin(value)
  %393 = fmul fast float %371, 0x402921FB60000000
  %394 = call float @dx.op.unary.f32(i32 13, float %393)  ; Sin(value)
  %395 = fsub fast float %392, %394
  %396 = fmul fast float %390, %395
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %397 = call float @dx.op.binary.f32(i32 36, float %375, float 3.225500e+04)  ; FMin(a,b)
  %398 = call float @dx.op.binary.f32(i32 36, float %382, float 3.225500e+04)  ; FMin(a,b)
  %399 = call float @dx.op.binary.f32(i32 36, float %389, float 3.225500e+04)  ; FMin(a,b)
  %400 = call float @dx.op.binary.f32(i32 36, float %396, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %399)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %400)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!16}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !11, !14}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!14 = !{!15}
!15 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!16 = !{[26 x i32] [i32 24, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 15]}
!17 = !{void ()* @ps_main, !"ps_main", !18, !4, !37}
!18 = !{!19, !35, null}
!19 = !{!20, !22, !24, !26, !27, !30, !32, !34}
!20 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!21 = !{i32 0}
!22 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 1, i8 0, !23}
!23 = !{i32 3, i32 15}
!24 = !{i32 2, !"COLOR", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 2, i8 0, !25}
!25 = !{i32 3, i32 8}
!26 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!27 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 3, i32 4, i8 0, !29}
!28 = !{i32 3}
!29 = !{i32 3, i32 3}
!30 = !{i32 5, !"COLOR", i8 5, i8 0, !28, i8 1, i32 1, i8 3, i32 5, i8 0, !31}
!31 = !{i32 3, i32 1}
!32 = !{i32 6, !"COLOR", i8 5, i8 0, !33, i8 1, i32 1, i8 1, i32 5, i8 3, !31}
!33 = !{i32 4}
!34 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !21, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!35 = !{!36}
!36 = !{i32 0, !"SV_Target", i8 9, i8 16, !21, i8 0, i32 1, i8 4, i32 0, i8 0, !23}
!37 = !{i32 0, i64 24}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 1}

