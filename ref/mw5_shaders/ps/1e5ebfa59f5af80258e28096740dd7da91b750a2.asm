;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORDS                0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 70125f411763519fb46543a3207fc70c
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [112 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%perObject = type { <4 x float> }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.f32 %8, 2
  %10 = extractvalue %dx.types.CBufRet.f32 %8, 3
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 2
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 3
  %14 = fmul fast float %12, %9
  %15 = fmul fast float %13, %10
  %16 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %17 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %18 = fmul fast float %16, %6
  %19 = fmul fast float %17, %7
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = fmul fast float %21, 0x40165A5B00000000
  %23 = fadd fast float %22, %18
  %24 = fadd fast float %22, %19
  %25 = extractvalue %dx.types.CBufRet.f32 %20, 0
  %26 = fmul fast float %25, 2.000000e+00
  %27 = fadd fast float %26, -1.000000e+00
  %28 = fmul fast float %27, %23
  %29 = fmul fast float %27, %24
  %30 = call float @dx.op.dot2.f32(i32 54, float %28, float %29, float 0x3FB12E2860000000, float 0x3F77E8B200000000)  ; Dot2(ax,ay,bx,by)
  %31 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %32 = fmul fast float %31, 0x404A7DD040000000
  %33 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %34 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %6, float %7, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = call float @dx.op.binary.f32(i32 35, float %36, float %37)  ; FMax(a,b)
  %39 = call float @dx.op.binary.f32(i32 35, float %35, float %38)  ; FMax(a,b)
  %40 = fadd fast float %39, 1.000000e+00
  %41 = bitcast float %40 to i32
  %42 = sub nsw i32 2129859010, %41
  %43 = bitcast i32 %42 to float
  %44 = fmul fast float %43, 0x3FDEB71760000000
  %45 = fmul fast float %44, %35
  %46 = fmul fast float %44, %36
  %47 = fmul fast float %44, %37
  %48 = fmul fast float %33, 0x3FE921FB60000000
  %49 = fadd fast float %48, 0x3FE921FB60000000
  %50 = call float @dx.op.unary.f32(i32 13, float %49)  ; Sin(value)
  %51 = call float @dx.op.unary.f32(i32 12, float %49)  ; Cos(value)
  %52 = fmul fast float %14, 0x3FFE2F0140000000
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %15, 0x3FFE2F0140000000
  %55 = fmul fast float %54, %51
  %56 = fadd fast float %53, %6
  %57 = fadd fast float %55, %7
  %58 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %59 = extractvalue %dx.types.ResRet.f32 %58, 0
  %60 = extractvalue %dx.types.ResRet.f32 %58, 1
  %61 = extractvalue %dx.types.ResRet.f32 %58, 2
  %62 = call float @dx.op.binary.f32(i32 35, float %60, float %61)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 35, float %59, float %62)  ; FMax(a,b)
  %64 = fadd fast float %63, 1.000000e+00
  %65 = bitcast float %64 to i32
  %66 = sub nsw i32 2129859010, %65
  %67 = bitcast i32 %66 to float
  %68 = fmul fast float %67, 0x3FB3714BA0000000
  %69 = fmul fast float %68, %59
  %70 = fmul fast float %68, %60
  %71 = fmul fast float %68, %61
  %72 = fadd fast float %69, %45
  %73 = fadd fast float %70, %46
  %74 = fadd fast float %71, %47
  %75 = fadd fast float %68, %44
  %76 = fadd fast float %48, 0x4002D97C80000000
  %77 = call float @dx.op.unary.f32(i32 13, float %76)  ; Sin(value)
  %78 = call float @dx.op.unary.f32(i32 12, float %76)  ; Cos(value)
  %79 = fmul fast float %14, 0x3FEE145200000000
  %80 = fmul fast float %79, %77
  %81 = fmul fast float %15, 0x3FEE145200000000
  %82 = fmul fast float %81, %78
  %83 = fadd fast float %80, %6
  %84 = fadd fast float %82, %7
  %85 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %83, float %84, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = extractvalue %dx.types.ResRet.f32 %85, 1
  %88 = extractvalue %dx.types.ResRet.f32 %85, 2
  %89 = call float @dx.op.binary.f32(i32 35, float %87, float %88)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %86, float %89)  ; FMax(a,b)
  %91 = fadd fast float %90, 1.000000e+00
  %92 = bitcast float %91 to i32
  %93 = sub nsw i32 2129859010, %92
  %94 = bitcast i32 %93 to float
  %95 = fmul fast float %94, 0x3FD363C320000000
  %96 = fmul fast float %95, %86
  %97 = fmul fast float %95, %87
  %98 = fmul fast float %95, %88
  %99 = fadd fast float %72, %96
  %100 = fadd fast float %73, %97
  %101 = fadd fast float %74, %98
  %102 = fadd fast float %75, %95
  %103 = fadd fast float %48, 0x400F6A7A40000000
  %104 = call float @dx.op.unary.f32(i32 13, float %103)  ; Sin(value)
  %105 = call float @dx.op.unary.f32(i32 12, float %103)  ; Cos(value)
  %106 = fmul fast float %52, %104
  %107 = fmul fast float %54, %105
  %108 = fadd fast float %106, %6
  %109 = fadd fast float %107, %7
  %110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %108, float %109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = extractvalue %dx.types.ResRet.f32 %110, 1
  %113 = extractvalue %dx.types.ResRet.f32 %110, 2
  %114 = call float @dx.op.binary.f32(i32 35, float %112, float %113)  ; FMax(a,b)
  %115 = call float @dx.op.binary.f32(i32 35, float %111, float %114)  ; FMax(a,b)
  %116 = fadd fast float %115, 1.000000e+00
  %117 = bitcast float %116 to i32
  %118 = sub nsw i32 2129859010, %117
  %119 = bitcast i32 %118 to float
  %120 = fmul fast float %119, 0x3FB3714BA0000000
  %121 = fmul fast float %120, %111
  %122 = fmul fast float %120, %112
  %123 = fmul fast float %120, %113
  %124 = fadd fast float %99, %121
  %125 = fadd fast float %100, %122
  %126 = fadd fast float %101, %123
  %127 = fadd fast float %102, %120
  %128 = fadd fast float %48, 0x4015FDBC00000000
  %129 = call float @dx.op.unary.f32(i32 13, float %128)  ; Sin(value)
  %130 = call float @dx.op.unary.f32(i32 12, float %128)  ; Cos(value)
  %131 = fmul fast float %79, %129
  %132 = fmul fast float %81, %130
  %133 = fadd fast float %131, %6
  %134 = fadd fast float %132, %7
  %135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %133, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = extractvalue %dx.types.ResRet.f32 %135, 1
  %138 = extractvalue %dx.types.ResRet.f32 %135, 2
  %139 = call float @dx.op.binary.f32(i32 35, float %137, float %138)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %136, float %139)  ; FMax(a,b)
  %141 = fadd fast float %140, 1.000000e+00
  %142 = bitcast float %141 to i32
  %143 = sub nsw i32 2129859010, %142
  %144 = bitcast i32 %143 to float
  %145 = fmul fast float %144, 0x3FD363C320000000
  %146 = fmul fast float %145, %136
  %147 = fmul fast float %145, %137
  %148 = fmul fast float %145, %138
  %149 = fadd fast float %124, %146
  %150 = fadd fast float %125, %147
  %151 = fadd fast float %126, %148
  %152 = fadd fast float %127, %145
  %153 = call float @dx.op.binary.f32(i32 35, float %152, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %154 = fdiv fast float 1.000000e+00, %153
  %155 = fmul fast float %149, %154
  %156 = fmul fast float %150, %154
  %157 = fmul fast float %151, %154
  %158 = call float @dx.op.binary.f32(i32 35, float %155, float -3.225500e+04)  ; FMax(a,b)
  %159 = call float @dx.op.binary.f32(i32 35, float %156, float -3.225500e+04)  ; FMax(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %157, float -3.225500e+04)  ; FMax(a,b)
  %161 = call float @dx.op.binary.f32(i32 36, float %158, float 3.225500e+04)  ; FMin(a,b)
  %162 = call float @dx.op.binary.f32(i32 36, float %159, float 3.225500e+04)  ; FMin(a,b)
  %163 = call float @dx.op.binary.f32(i32 36, float %160, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %161)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %162)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %163)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, !12}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11}
!9 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!10 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!11 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!15 = !{void ()* @ps_main, !"ps_main", !16, !4, null}
!16 = !{!17, !22, null}
!17 = !{!18, !20}
!18 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!19 = !{i32 0}
!20 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 0, !21}
!21 = !{i32 3, i32 3}
!22 = !{!23}
!23 = !{i32 0, !"SV_Target", i8 9, i8 16, !19, i8 0, i32 1, i8 4, i32 0, i8 0, !24}
!24 = !{i32 3, i32 15}

