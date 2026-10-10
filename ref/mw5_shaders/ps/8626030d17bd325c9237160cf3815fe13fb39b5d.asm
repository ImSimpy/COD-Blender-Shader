;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xyz         1     NONE   float   xyz 
; TEXCOORD                 1   xyzw        2     NONE   float   xyzw
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 3870992cf4392536e9e614d0f0e80937
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
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32          3d      T0     t21,space2     1
;                                   texture     f32          3d      T1     t22,space2     1
;
;
; ViewId state:
;
; Number of inputs: 12, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 8, 9, 10, 11 }
;   output 1 depends on inputs: { 4, 5, 6, 8, 9, 10, 11 }
;   output 2 depends on inputs: { 4, 5, 6, 8, 9, 10, 11 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.dot3.f32(i32 55, float %9, float %10, float %11, float %9, float %10, float %11)  ; Dot3(ax,ay,az,bx,by,bz)
  %13 = call float @dx.op.unary.f32(i32 25, float %12)  ; Rsqrt(value)
  %14 = fmul fast float %13, %9
  %15 = fmul fast float %13, %10
  %16 = fmul fast float %13, %11
  %17 = fcmp fast olt float %8, 5.000000e-01
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 3
  br i1 %17, label %20, label %157

; <label>:20                                      ; preds = %0
  %21 = fmul fast float %7, 0x3FB5555560000000
  %22 = fmul fast float %15, 0x3FE3C6EF40000000
  %23 = fadd fast float %22, %14
  %24 = fcmp fast oge float %23, 0.000000e+00
  %25 = select i1 %24, float 0x3FEB388800000000, float 0xBFEB388800000000
  %26 = select i1 %24, float 0x3FE0D2CA00000000, float 0xBFE0D2CA00000000
  %27 = select i1 %24, float 0.000000e+00, float 2.500000e-01
  %28 = fadd fast float %27, %21
  %29 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %28, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = extractvalue %dx.types.ResRet.f32 %29, 1
  %32 = extractvalue %dx.types.ResRet.f32 %29, 2
  %33 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %25, float %26, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %34 = call float @dx.op.unary.f32(i32 7, float %33)  ; Saturate(value)
  %35 = fmul fast float %34, %34
  %36 = fmul fast float %35, 0x3FD3333340000000
  %37 = fadd fast float %36, 0x3FE6666660000000
  %38 = fmul fast float %37, %35
  %39 = fmul fast float %38, %30
  %40 = fmul fast float %38, %31
  %41 = fmul fast float %38, %32
  %42 = fsub fast float %14, %22
  %43 = fcmp fast oge float %42, 0.000000e+00
  %44 = select i1 %43, float 0x3FEB388800000000, float 0xBFEB388800000000
  %45 = select i1 %43, float 0xBFE0D2CA00000000, float 0x3FE0D2CA00000000
  %46 = select i1 %43, float 0x3FC5555560000000, float 0x3FB5555560000000
  %47 = fadd fast float %46, %21
  %48 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %47, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %44, float %45, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %53 = call float @dx.op.unary.f32(i32 7, float %52)  ; Saturate(value)
  %54 = fmul fast float %53, %53
  %55 = fmul fast float %54, 0x3FD3333340000000
  %56 = fadd fast float %55, 0x3FE6666660000000
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %57, %49
  %59 = fmul fast float %57, %50
  %60 = fmul fast float %57, %51
  %61 = fadd fast float %58, %39
  %62 = fadd fast float %59, %40
  %63 = fadd fast float %60, %41
  %64 = fmul fast float %16, 0x3FE3C6EF40000000
  %65 = fadd fast float %64, %15
  %66 = fcmp fast oge float %65, 0.000000e+00
  %67 = select i1 %66, float 0x3FEB388800000000, float 0xBFEB388800000000
  %68 = select i1 %66, float 0x3FE0D2CA00000000, float 0xBFE0D2CA00000000
  %69 = select i1 %66, float 0x3FD5555560000000, float 0x3FE2AAAAC0000000
  %70 = fadd fast float %69, %21
  %71 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %70, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %72 = extractvalue %dx.types.ResRet.f32 %71, 0
  %73 = extractvalue %dx.types.ResRet.f32 %71, 1
  %74 = extractvalue %dx.types.ResRet.f32 %71, 2
  %75 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float 0.000000e+00, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = call float @dx.op.unary.f32(i32 7, float %75)  ; Saturate(value)
  %77 = fmul fast float %76, %76
  %78 = fmul fast float %77, 0x3FD3333340000000
  %79 = fadd fast float %78, 0x3FE6666660000000
  %80 = fmul fast float %79, %77
  %81 = fmul fast float %80, %72
  %82 = fmul fast float %80, %73
  %83 = fmul fast float %80, %74
  %84 = fadd fast float %61, %81
  %85 = fadd fast float %62, %82
  %86 = fadd fast float %63, %83
  %87 = fsub fast float %15, %64
  %88 = fcmp fast oge float %87, 0.000000e+00
  %89 = select i1 %88, float 0x3FEB388800000000, float 0xBFEB388800000000
  %90 = select i1 %88, float 0xBFE0D2CA00000000, float 0x3FE0D2CA00000000
  %91 = select i1 %88, float 5.000000e-01, float 0x3FDAAAAAC0000000
  %92 = fadd fast float %91, %21
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %92, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float 0.000000e+00, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = call float @dx.op.unary.f32(i32 7, float %97)  ; Saturate(value)
  %99 = fmul fast float %98, %98
  %100 = fmul fast float %99, 0x3FD3333340000000
  %101 = fadd fast float %100, 0x3FE6666660000000
  %102 = fmul fast float %101, %99
  %103 = fmul fast float %102, %94
  %104 = fmul fast float %102, %95
  %105 = fmul fast float %102, %96
  %106 = fadd fast float %84, %103
  %107 = fadd fast float %85, %104
  %108 = fadd fast float %86, %105
  %109 = fmul fast float %14, 0x3FE3C6EF40000000
  %110 = fadd fast float %109, %16
  %111 = fcmp fast oge float %110, 0.000000e+00
  %112 = select i1 %111, float 0x3FE0D2CA00000000, float 0xBFE0D2CA00000000
  %113 = select i1 %111, float 0x3FEB388800000000, float 0xBFEB388800000000
  %114 = select i1 %111, float 0x3FE5555560000000, float 0x3FED555560000000
  %115 = fadd fast float %114, %21
  %116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = extractvalue %dx.types.ResRet.f32 %116, 1
  %119 = extractvalue %dx.types.ResRet.f32 %116, 2
  %120 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %112, float 0.000000e+00, float %113)  ; Dot3(ax,ay,az,bx,by,bz)
  %121 = call float @dx.op.unary.f32(i32 7, float %120)  ; Saturate(value)
  %122 = fmul fast float %121, %121
  %123 = fmul fast float %122, 0x3FD3333340000000
  %124 = fadd fast float %123, 0x3FE6666660000000
  %125 = fmul fast float %124, %122
  %126 = fmul fast float %125, %117
  %127 = fmul fast float %125, %118
  %128 = fmul fast float %125, %119
  %129 = fadd fast float %106, %126
  %130 = fadd fast float %107, %127
  %131 = fadd fast float %108, %128
  %132 = fsub fast float %109, %16
  %133 = fcmp fast oge float %132, 0.000000e+00
  %134 = select i1 %133, float 0x3FE0D2CA00000000, float 0xBFE0D2CA00000000
  %135 = select i1 %133, float 0xBFEB388800000000, float 0x3FEB388800000000
  %136 = select i1 %133, float 0x3FEAAAAAC0000000, float 7.500000e-01
  %137 = fadd fast float %136, %21
  %138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %137, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = extractvalue %dx.types.ResRet.f32 %138, 1
  %141 = extractvalue %dx.types.ResRet.f32 %138, 2
  %142 = call float @dx.op.dot3.f32(i32 55, float %14, float %15, float %16, float %134, float 0.000000e+00, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %143 = call float @dx.op.unary.f32(i32 7, float %142)  ; Saturate(value)
  %144 = fmul fast float %143, %143
  %145 = fmul fast float %144, 0x3FD3333340000000
  %146 = fadd fast float %145, 0x3FE6666660000000
  %147 = fmul fast float %146, %144
  %148 = fmul fast float %147, %139
  %149 = fmul fast float %147, %140
  %150 = fmul fast float %147, %141
  %151 = fadd fast float %129, %148
  %152 = fadd fast float %130, %149
  %153 = fadd fast float %131, %150
  %154 = fmul fast float %151, %19
  %155 = fmul fast float %152, %19
  %156 = fmul fast float %153, %19
  br label %320

; <label>:157                                     ; preds = %0
  %158 = fmul fast float %5, 5.000000e-01
  %159 = fmul fast float %6, 0x3FD5555560000000
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %5, float %6, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = extractvalue %dx.types.ResRet.f32 %160, 1
  %163 = extractvalue %dx.types.ResRet.f32 %160, 2
  %164 = fmul fast float %19, %161
  %165 = fmul fast float %19, %162
  %166 = fmul fast float %19, %163
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %158, float %159, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = extractvalue %dx.types.ResRet.f32 %167, 1
  %170 = extractvalue %dx.types.ResRet.f32 %167, 2
  %171 = extractvalue %dx.types.ResRet.f32 %167, 3
  %172 = fadd fast float %158, 5.000000e-01
  %173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %172, float %159, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = extractvalue %dx.types.ResRet.f32 %173, 1
  %176 = extractvalue %dx.types.ResRet.f32 %173, 2
  %177 = extractvalue %dx.types.ResRet.f32 %173, 3
  %178 = fadd fast float %159, 0x3FD5555560000000
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %158, float %178, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = extractvalue %dx.types.ResRet.f32 %179, 1
  %182 = extractvalue %dx.types.ResRet.f32 %179, 2
  %183 = extractvalue %dx.types.ResRet.f32 %179, 3
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %172, float %178, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  %188 = extractvalue %dx.types.ResRet.f32 %184, 3
  %189 = fadd fast float %159, 0x3FE5555560000000
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %158, float %189, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = extractvalue %dx.types.ResRet.f32 %190, 2
  %194 = extractvalue %dx.types.ResRet.f32 %190, 3
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %172, float %189, float %7, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = extractvalue %dx.types.ResRet.f32 %195, 3
  %200 = fmul fast float %168, 0x400BB67AE0000000
  %201 = fadd fast float %200, 0xBFFBB67AE0000000
  %202 = fmul fast float %169, 0x400BB67AE0000000
  %203 = fadd fast float %202, 0xBFFBB67AE0000000
  %204 = fmul fast float %170, 0x400BB67AE0000000
  %205 = fadd fast float %204, 0xBFFBB67AE0000000
  %206 = fmul fast float %171, 0x4011E377A0000000
  %207 = fadd fast float %206, 0xC001E377A0000000
  %208 = fmul fast float %174, 0x4011E377A0000000
  %209 = fadd fast float %208, 0xC001E377A0000000
  %210 = fmul fast float %175, 0x4011E377A0000000
  %211 = fadd fast float %210, 0xC001E377A0000000
  %212 = fmul fast float %176, 0x400BB67AE0000000
  %213 = fadd fast float %212, 0xBFFBB67AE0000000
  %214 = fmul fast float %177, 0x400BB67AE0000000
  %215 = fadd fast float %214, 0xBFFBB67AE0000000
  %216 = fmul fast float %180, 0x400BB67AE0000000
  %217 = fadd fast float %216, 0xBFFBB67AE0000000
  %218 = fmul fast float %181, 0x400BB67AE0000000
  %219 = fadd fast float %218, 0xBFFBB67AE0000000
  %220 = fmul fast float %182, 0x400BB67AE0000000
  %221 = fadd fast float %220, 0xBFFBB67AE0000000
  %222 = fmul fast float %183, 0x400BB67AE0000000
  %223 = fadd fast float %222, 0xBFFBB67AE0000000
  %224 = fmul fast float %185, 0x400EFBDEC0000000
  %225 = fadd fast float %224, 0xBFFEFBDEC0000000
  %226 = fmul fast float %186, 0x400EFBDEC0000000
  %227 = fadd fast float %226, 0xBFFEFBDEC0000000
  %228 = fmul fast float %187, 0x400EFBDEC0000000
  %229 = fadd fast float %228, 0xBFFEFBDEC0000000
  %230 = fmul fast float %188, 0x400EFBDEC0000000
  %231 = fadd fast float %230, 0xBFFEFBDEC0000000
  %232 = fmul fast float %191, 0x400EFBDEC0000000
  %233 = fadd fast float %232, 0xBFFEFBDEC0000000
  %234 = fmul fast float %192, 0x400EFBDEC0000000
  %235 = fadd fast float %234, 0xBFFEFBDEC0000000
  %236 = fmul fast float %193, 0x400EFBDEC0000000
  %237 = fadd fast float %236, 0xBFFEFBDEC0000000
  %238 = fmul fast float %194, 0x400EFBDEC0000000
  %239 = fadd fast float %238, 0xBFFEFBDEC0000000
  %240 = fmul fast float %196, 0x400EFBDEC0000000
  %241 = fadd fast float %240, 0xBFFEFBDEC0000000
  %242 = fmul fast float %197, 0x400EFBDEC0000000
  %243 = fadd fast float %242, 0xBFFEFBDEC0000000
  %244 = fmul fast float %198, 0x400EFBDEC0000000
  %245 = fadd fast float %244, 0xBFFEFBDEC0000000
  %246 = fmul fast float %199, 0x400EFBDEC0000000
  %247 = fadd fast float %246, 0xBFFEFBDEC0000000
  %248 = fmul fast float %16, 0x3FD4D8D7C0000000
  %249 = fmul fast float %248, %201
  %250 = fmul fast float %16, %16
  %251 = fmul fast float %250, 0x3FEE471020000000
  %252 = fadd fast float %251, 0xBFD42F6020000000
  %253 = fmul fast float %207, %252
  %254 = fmul fast float %219, %14
  %255 = fmul fast float %213, %15
  %256 = fmul fast float %16, 0xBFF17B1420000000
  %257 = fmul fast float %225, %14
  %258 = fmul fast float %231, %15
  %259 = fmul fast float %14, %14
  %260 = fmul fast float %15, %15
  %261 = fsub fast float %259, %260
  %262 = fmul fast float %261, 0x3FC17B1420000000
  %263 = fmul fast float %262, %237
  %264 = fmul fast float %10, 0x3FD17B1420000000
  %265 = fmul fast float %264, %13
  %266 = fmul fast float %265, %14
  %267 = fmul fast float %266, %243
  %268 = fadd fast float %257, %258
  %269 = fmul fast float %256, %268
  %270 = fadd fast float %269, %253
  %271 = fmul fast float %270, 2.500000e-01
  %272 = fadd fast float %249, 0x3FD20DD760000000
  %273 = fadd fast float %272, %271
  %274 = fadd fast float %273, %263
  %275 = fadd fast float %274, %267
  %276 = fadd fast float %254, %255
  %277 = fmul fast float %276, 0x3FD4D8D7C0000000
  %278 = fsub fast float %275, %277
  %279 = fmul fast float %164, %278
  %280 = fmul fast float %248, %203
  %281 = fmul fast float %209, %252
  %282 = fmul fast float %221, %14
  %283 = fmul fast float %215, %15
  %284 = fmul fast float %227, %14
  %285 = fmul fast float %233, %15
  %286 = fmul fast float %262, %239
  %287 = fmul fast float %266, %245
  %288 = fadd fast float %285, %284
  %289 = fmul fast float %256, %288
  %290 = fadd fast float %289, %281
  %291 = fmul fast float %290, 2.500000e-01
  %292 = fadd fast float %280, 0x3FD20DD760000000
  %293 = fadd fast float %292, %286
  %294 = fadd fast float %293, %291
  %295 = fadd fast float %294, %287
  %296 = fadd fast float %282, %283
  %297 = fmul fast float %296, 0x3FD4D8D7C0000000
  %298 = fsub fast float %295, %297
  %299 = fmul fast float %165, %298
  %300 = fmul fast float %248, %205
  %301 = fmul fast float %211, %252
  %302 = fmul fast float %223, %14
  %303 = fmul fast float %217, %15
  %304 = fmul fast float %229, %14
  %305 = fmul fast float %235, %15
  %306 = fmul fast float %262, %241
  %307 = fmul fast float %266, %247
  %308 = fadd fast float %305, %304
  %309 = fmul fast float %256, %308
  %310 = fadd fast float %309, %301
  %311 = fmul fast float %310, 2.500000e-01
  %312 = fadd fast float %300, 0x3FD20DD760000000
  %313 = fadd fast float %312, %311
  %314 = fadd fast float %313, %306
  %315 = fadd fast float %314, %307
  %316 = fadd fast float %302, %303
  %317 = fmul fast float %316, 0x3FD4D8D7C0000000
  %318 = fsub fast float %315, %317
  %319 = fmul fast float %166, %318
  br label %320

; <label>:320                                     ; preds = %157, %20
  %321 = phi float [ %154, %20 ], [ %279, %157 ]
  %322 = phi float [ %155, %20 ], [ %299, %157 ]
  %323 = phi float [ %156, %20 ], [ %319, %157 ]
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = fmul fast float %325, %321
  %327 = fmul fast float %325, %322
  %328 = fmul fast float %325, %323
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %326)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %327)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!6 = !{i32 0, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!13 = !{[14 x i32] [i32 12, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !24, null}
!16 = !{!17, !19, !21}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 3, i32 1, i8 0, !20}
!20 = !{i32 3, i32 7}
!21 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !22, i8 2, i32 1, i8 4, i32 2, i8 0, !23}
!22 = !{i32 1}
!23 = !{i32 3, i32 15}
!24 = !{!25}
!25 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !23}

