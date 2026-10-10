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
; shader hash: 4ac9ca9b59fd018c05c2983845e9330a
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
;   [80 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
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
;   output 3 depends on inputs: { 4, 5 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 0
  %9 = extractvalue %dx.types.CBufRet.f32 %7, 1
  %10 = extractvalue %dx.types.CBufRet.f32 %7, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %7, 3
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 0
  %14 = extractvalue %dx.types.CBufRet.f32 %12, 1
  %15 = extractvalue %dx.types.CBufRet.f32 %12, 2
  %16 = extractvalue %dx.types.CBufRet.f32 %12, 3
  %17 = fadd fast float %8, %5
  %18 = fadd fast float %9, %6
  %19 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %1, %dx.types.Handle %2, float %17, float %18, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %20 = extractvalue %dx.types.ResRet.f32 %19, 0
  %21 = extractvalue %dx.types.ResRet.f32 %19, 1
  %22 = extractvalue %dx.types.ResRet.f32 %19, 2
  %23 = extractvalue %dx.types.ResRet.f32 %19, 3
  %24 = fcmp fast ogt float %20, -1.000000e+00
  %25 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %26 = extractvalue %dx.types.CBufRet.f32 %25, 1
  %27 = select i1 %24, float %26, float 1.000000e+00
  %28 = fadd fast float %20, 1.000000e+00
  %29 = fmul fast float %27, %28
  %30 = call float @dx.op.unary.f32(i32 6, float %29)  ; FAbs(value)
  %31 = fcmp uge float %20, -1.000000e+00
  %32 = fadd fast float %30, 4.000000e+02
  %33 = select i1 %31, float %32, float %30
  %34 = fdiv fast float 1.000000e+00, %30
  %35 = fmul fast float %34, %13
  %36 = fmul fast float %34, %15
  %37 = fadd fast float %35, %14
  %38 = fadd fast float %36, %16
  %39 = select i1 %31, float %37, float %38
  %40 = call float @dx.op.binary.f32(i32 35, float -1.000000e+00, float %39)  ; FMax(a,b)
  %41 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %39)  ; FMin(a,b)
  %42 = call float @dx.op.binary.f32(i32 36, float 6.550400e+04, float %33)  ; FMin(a,b)
  %43 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %33)  ; FMax(a,b)
  %44 = fcmp fast ogt float %21, -1.000000e+00
  %45 = select i1 %44, float %26, float 1.000000e+00
  %46 = fadd fast float %21, 1.000000e+00
  %47 = fmul fast float %45, %46
  %48 = call float @dx.op.unary.f32(i32 6, float %47)  ; FAbs(value)
  %49 = fcmp uge float %21, -1.000000e+00
  %50 = fadd fast float %48, 4.000000e+02
  %51 = select i1 %49, float %50, float %48
  %52 = fdiv fast float 1.000000e+00, %48
  %53 = fmul fast float %52, %13
  %54 = fmul fast float %52, %15
  %55 = fadd fast float %53, %14
  %56 = fadd fast float %54, %16
  %57 = select i1 %49, float %55, float %56
  %58 = call float @dx.op.binary.f32(i32 35, float %40, float %57)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 36, float %41, float %57)  ; FMin(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %42, float %51)  ; FMin(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %43, float %51)  ; FMax(a,b)
  %62 = fcmp fast ogt float %22, -1.000000e+00
  %63 = select i1 %62, float %26, float 1.000000e+00
  %64 = fadd fast float %22, 1.000000e+00
  %65 = fmul fast float %63, %64
  %66 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %67 = fcmp uge float %22, -1.000000e+00
  %68 = fadd fast float %66, 4.000000e+02
  %69 = select i1 %67, float %68, float %66
  %70 = fdiv fast float 1.000000e+00, %66
  %71 = fmul fast float %70, %13
  %72 = fmul fast float %70, %15
  %73 = fadd fast float %71, %14
  %74 = fadd fast float %72, %16
  %75 = select i1 %67, float %73, float %74
  %76 = call float @dx.op.binary.f32(i32 35, float %58, float %75)  ; FMax(a,b)
  %77 = call float @dx.op.binary.f32(i32 36, float %59, float %75)  ; FMin(a,b)
  %78 = call float @dx.op.binary.f32(i32 36, float %60, float %69)  ; FMin(a,b)
  %79 = call float @dx.op.binary.f32(i32 35, float %61, float %69)  ; FMax(a,b)
  %80 = fcmp fast ogt float %23, -1.000000e+00
  %81 = select i1 %80, float %26, float 1.000000e+00
  %82 = fadd fast float %23, 1.000000e+00
  %83 = fmul fast float %81, %82
  %84 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %85 = fcmp uge float %23, -1.000000e+00
  %86 = fadd fast float %84, 4.000000e+02
  %87 = select i1 %85, float %86, float %84
  %88 = fdiv fast float 1.000000e+00, %84
  %89 = fmul fast float %88, %13
  %90 = fmul fast float %88, %15
  %91 = fadd fast float %89, %14
  %92 = fadd fast float %90, %16
  %93 = select i1 %85, float %91, float %92
  %94 = call float @dx.op.binary.f32(i32 35, float %76, float %93)  ; FMax(a,b)
  %95 = call float @dx.op.binary.f32(i32 36, float %77, float %93)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %78, float %87)  ; FMin(a,b)
  %97 = call float @dx.op.binary.f32(i32 35, float %79, float %87)  ; FMax(a,b)
  %98 = fmul fast float %10, 2.000000e+00
  %99 = fmul fast float %11, 2.000000e+00
  %100 = fadd fast float %17, %98
  %101 = fadd fast float %18, %99
  %102 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %1, %dx.types.Handle %2, float %100, float %101, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = extractvalue %dx.types.ResRet.f32 %102, 3
  %107 = fcmp fast ogt float %103, -1.000000e+00
  %108 = select i1 %107, float %26, float 1.000000e+00
  %109 = fadd fast float %103, 1.000000e+00
  %110 = fmul fast float %108, %109
  %111 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %112 = fcmp uge float %103, -1.000000e+00
  %113 = fadd fast float %111, 4.000000e+02
  %114 = select i1 %112, float %113, float %111
  %115 = fdiv fast float 1.000000e+00, %111
  %116 = fmul fast float %115, %13
  %117 = fmul fast float %115, %15
  %118 = fadd fast float %116, %14
  %119 = fadd fast float %117, %16
  %120 = select i1 %112, float %118, float %119
  %121 = call float @dx.op.binary.f32(i32 35, float %94, float %120)  ; FMax(a,b)
  %122 = call float @dx.op.binary.f32(i32 36, float %95, float %120)  ; FMin(a,b)
  %123 = call float @dx.op.binary.f32(i32 36, float %96, float %114)  ; FMin(a,b)
  %124 = call float @dx.op.binary.f32(i32 35, float %97, float %114)  ; FMax(a,b)
  %125 = fcmp fast ogt float %104, -1.000000e+00
  %126 = select i1 %125, float %26, float 1.000000e+00
  %127 = fadd fast float %104, 1.000000e+00
  %128 = fmul fast float %126, %127
  %129 = call float @dx.op.unary.f32(i32 6, float %128)  ; FAbs(value)
  %130 = fcmp uge float %104, -1.000000e+00
  %131 = fadd fast float %129, 4.000000e+02
  %132 = select i1 %130, float %131, float %129
  %133 = fdiv fast float 1.000000e+00, %129
  %134 = fmul fast float %133, %13
  %135 = fmul fast float %133, %15
  %136 = fadd fast float %134, %14
  %137 = fadd fast float %135, %16
  %138 = select i1 %130, float %136, float %137
  %139 = call float @dx.op.binary.f32(i32 35, float %121, float %138)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 36, float %122, float %138)  ; FMin(a,b)
  %141 = call float @dx.op.binary.f32(i32 36, float %123, float %132)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 35, float %124, float %132)  ; FMax(a,b)
  %143 = fcmp fast ogt float %105, -1.000000e+00
  %144 = select i1 %143, float %26, float 1.000000e+00
  %145 = fadd fast float %105, 1.000000e+00
  %146 = fmul fast float %144, %145
  %147 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %148 = fcmp uge float %105, -1.000000e+00
  %149 = fadd fast float %147, 4.000000e+02
  %150 = select i1 %148, float %149, float %147
  %151 = fdiv fast float 1.000000e+00, %147
  %152 = fmul fast float %151, %13
  %153 = fmul fast float %151, %15
  %154 = fadd fast float %152, %14
  %155 = fadd fast float %153, %16
  %156 = select i1 %148, float %154, float %155
  %157 = call float @dx.op.binary.f32(i32 35, float %139, float %156)  ; FMax(a,b)
  %158 = call float @dx.op.binary.f32(i32 36, float %140, float %156)  ; FMin(a,b)
  %159 = call float @dx.op.binary.f32(i32 36, float %141, float %150)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %142, float %150)  ; FMax(a,b)
  %161 = fcmp fast ogt float %106, -1.000000e+00
  %162 = select i1 %161, float %26, float 1.000000e+00
  %163 = fadd fast float %106, 1.000000e+00
  %164 = fmul fast float %162, %163
  %165 = call float @dx.op.unary.f32(i32 6, float %164)  ; FAbs(value)
  %166 = fcmp uge float %106, -1.000000e+00
  %167 = fadd fast float %165, 4.000000e+02
  %168 = select i1 %166, float %167, float %165
  %169 = fdiv fast float 1.000000e+00, %165
  %170 = fmul fast float %169, %13
  %171 = fmul fast float %169, %15
  %172 = fadd fast float %170, %14
  %173 = fadd fast float %171, %16
  %174 = select i1 %166, float %172, float %173
  %175 = call float @dx.op.binary.f32(i32 35, float %157, float %174)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 36, float %158, float %174)  ; FMin(a,b)
  %177 = call float @dx.op.binary.f32(i32 36, float %159, float %168)  ; FMin(a,b)
  %178 = call float @dx.op.binary.f32(i32 35, float %160, float %168)  ; FMax(a,b)
  %179 = fmul fast float %10, 4.000000e+00
  %180 = fmul fast float %11, 4.000000e+00
  %181 = fadd fast float %17, %179
  %182 = fadd fast float %18, %180
  %183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %1, %dx.types.Handle %2, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = extractvalue %dx.types.ResRet.f32 %183, 3
  %188 = fcmp fast ogt float %184, -1.000000e+00
  %189 = select i1 %188, float %26, float 1.000000e+00
  %190 = fadd fast float %184, 1.000000e+00
  %191 = fmul fast float %189, %190
  %192 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %193 = fcmp uge float %184, -1.000000e+00
  %194 = fadd fast float %192, 4.000000e+02
  %195 = select i1 %193, float %194, float %192
  %196 = fdiv fast float 1.000000e+00, %192
  %197 = fmul fast float %196, %13
  %198 = fmul fast float %196, %15
  %199 = fadd fast float %197, %14
  %200 = fadd fast float %198, %16
  %201 = select i1 %193, float %199, float %200
  %202 = call float @dx.op.binary.f32(i32 35, float %175, float %201)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %176, float %201)  ; FMin(a,b)
  %204 = call float @dx.op.binary.f32(i32 36, float %177, float %195)  ; FMin(a,b)
  %205 = call float @dx.op.binary.f32(i32 35, float %178, float %195)  ; FMax(a,b)
  %206 = fcmp fast ogt float %185, -1.000000e+00
  %207 = select i1 %206, float %26, float 1.000000e+00
  %208 = fadd fast float %185, 1.000000e+00
  %209 = fmul fast float %207, %208
  %210 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %211 = fcmp uge float %185, -1.000000e+00
  %212 = fadd fast float %210, 4.000000e+02
  %213 = select i1 %211, float %212, float %210
  %214 = fdiv fast float 1.000000e+00, %210
  %215 = fmul fast float %214, %13
  %216 = fmul fast float %214, %15
  %217 = fadd fast float %215, %14
  %218 = fadd fast float %216, %16
  %219 = select i1 %211, float %217, float %218
  %220 = call float @dx.op.binary.f32(i32 35, float %202, float %219)  ; FMax(a,b)
  %221 = call float @dx.op.binary.f32(i32 36, float %203, float %219)  ; FMin(a,b)
  %222 = call float @dx.op.binary.f32(i32 36, float %204, float %213)  ; FMin(a,b)
  %223 = call float @dx.op.binary.f32(i32 35, float %205, float %213)  ; FMax(a,b)
  %224 = fcmp fast ogt float %186, -1.000000e+00
  %225 = select i1 %224, float %26, float 1.000000e+00
  %226 = fadd fast float %186, 1.000000e+00
  %227 = fmul fast float %225, %226
  %228 = call float @dx.op.unary.f32(i32 6, float %227)  ; FAbs(value)
  %229 = fcmp uge float %186, -1.000000e+00
  %230 = fadd fast float %228, 4.000000e+02
  %231 = select i1 %229, float %230, float %228
  %232 = fdiv fast float 1.000000e+00, %228
  %233 = fmul fast float %232, %13
  %234 = fmul fast float %232, %15
  %235 = fadd fast float %233, %14
  %236 = fadd fast float %234, %16
  %237 = select i1 %229, float %235, float %236
  %238 = call float @dx.op.binary.f32(i32 35, float %220, float %237)  ; FMax(a,b)
  %239 = call float @dx.op.binary.f32(i32 36, float %221, float %237)  ; FMin(a,b)
  %240 = call float @dx.op.binary.f32(i32 36, float %222, float %231)  ; FMin(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float %223, float %231)  ; FMax(a,b)
  %242 = fcmp fast ogt float %187, -1.000000e+00
  %243 = select i1 %242, float %26, float 1.000000e+00
  %244 = fadd fast float %187, 1.000000e+00
  %245 = fmul fast float %243, %244
  %246 = call float @dx.op.unary.f32(i32 6, float %245)  ; FAbs(value)
  %247 = fcmp uge float %187, -1.000000e+00
  %248 = fadd fast float %246, 4.000000e+02
  %249 = select i1 %247, float %248, float %246
  %250 = fdiv fast float 1.000000e+00, %246
  %251 = fmul fast float %250, %13
  %252 = fmul fast float %250, %15
  %253 = fadd fast float %251, %14
  %254 = fadd fast float %252, %16
  %255 = select i1 %247, float %253, float %254
  %256 = call float @dx.op.binary.f32(i32 35, float %238, float %255)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 36, float %239, float %255)  ; FMin(a,b)
  %258 = call float @dx.op.binary.f32(i32 36, float %240, float %249)  ; FMin(a,b)
  %259 = call float @dx.op.binary.f32(i32 35, float %241, float %249)  ; FMax(a,b)
  %260 = fmul fast float %10, 6.000000e+00
  %261 = fmul fast float %11, 6.000000e+00
  %262 = fadd fast float %17, %260
  %263 = fadd fast float %18, %261
  %264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %1, %dx.types.Handle %2, float %262, float %263, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = extractvalue %dx.types.ResRet.f32 %264, 3
  %269 = fcmp fast ogt float %265, -1.000000e+00
  %270 = select i1 %269, float %26, float 1.000000e+00
  %271 = fadd fast float %265, 1.000000e+00
  %272 = fmul fast float %270, %271
  %273 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %274 = fcmp uge float %265, -1.000000e+00
  %275 = fadd fast float %273, 4.000000e+02
  %276 = select i1 %274, float %275, float %273
  %277 = fdiv fast float 1.000000e+00, %273
  %278 = fmul fast float %277, %13
  %279 = fmul fast float %277, %15
  %280 = fadd fast float %278, %14
  %281 = fadd fast float %279, %16
  %282 = select i1 %274, float %280, float %281
  %283 = call float @dx.op.binary.f32(i32 35, float %256, float %282)  ; FMax(a,b)
  %284 = call float @dx.op.binary.f32(i32 36, float %257, float %282)  ; FMin(a,b)
  %285 = call float @dx.op.binary.f32(i32 36, float %258, float %276)  ; FMin(a,b)
  %286 = call float @dx.op.binary.f32(i32 35, float %259, float %276)  ; FMax(a,b)
  %287 = fcmp fast ogt float %266, -1.000000e+00
  %288 = select i1 %287, float %26, float 1.000000e+00
  %289 = fadd fast float %266, 1.000000e+00
  %290 = fmul fast float %288, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = fcmp uge float %266, -1.000000e+00
  %293 = fadd fast float %291, 4.000000e+02
  %294 = select i1 %292, float %293, float %291
  %295 = fdiv fast float 1.000000e+00, %291
  %296 = fmul fast float %295, %13
  %297 = fmul fast float %295, %15
  %298 = fadd fast float %296, %14
  %299 = fadd fast float %297, %16
  %300 = select i1 %292, float %298, float %299
  %301 = call float @dx.op.binary.f32(i32 35, float %283, float %300)  ; FMax(a,b)
  %302 = call float @dx.op.binary.f32(i32 36, float %284, float %300)  ; FMin(a,b)
  %303 = call float @dx.op.binary.f32(i32 36, float %285, float %294)  ; FMin(a,b)
  %304 = call float @dx.op.binary.f32(i32 35, float %286, float %294)  ; FMax(a,b)
  %305 = fcmp fast ogt float %267, -1.000000e+00
  %306 = select i1 %305, float %26, float 1.000000e+00
  %307 = fadd fast float %267, 1.000000e+00
  %308 = fmul fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %310 = fcmp uge float %267, -1.000000e+00
  %311 = fadd fast float %309, 4.000000e+02
  %312 = select i1 %310, float %311, float %309
  %313 = fdiv fast float 1.000000e+00, %309
  %314 = fmul fast float %313, %13
  %315 = fmul fast float %313, %15
  %316 = fadd fast float %314, %14
  %317 = fadd fast float %315, %16
  %318 = select i1 %310, float %316, float %317
  %319 = call float @dx.op.binary.f32(i32 35, float %301, float %318)  ; FMax(a,b)
  %320 = call float @dx.op.binary.f32(i32 36, float %302, float %318)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 36, float %303, float %312)  ; FMin(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %304, float %312)  ; FMax(a,b)
  %323 = fcmp fast ogt float %268, -1.000000e+00
  %324 = select i1 %323, float %26, float 1.000000e+00
  %325 = fadd fast float %268, 1.000000e+00
  %326 = fmul fast float %324, %325
  %327 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %328 = fcmp uge float %268, -1.000000e+00
  %329 = fadd fast float %327, 4.000000e+02
  %330 = select i1 %328, float %329, float %327
  %331 = fdiv fast float 1.000000e+00, %327
  %332 = fmul fast float %331, %13
  %333 = fmul fast float %331, %15
  %334 = fadd fast float %332, %14
  %335 = fadd fast float %333, %16
  %336 = select i1 %328, float %334, float %335
  %337 = call float @dx.op.binary.f32(i32 35, float %319, float %336)  ; FMax(a,b)
  %338 = call float @dx.op.binary.f32(i32 36, float %320, float %336)  ; FMin(a,b)
  %339 = call float @dx.op.binary.f32(i32 36, float %321, float %330)  ; FMin(a,b)
  %340 = call float @dx.op.binary.f32(i32 35, float %322, float %330)  ; FMax(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %337)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %339)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

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
!4 = !{!5, null, !8, !11}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10}
!9 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!10 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 80, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!13 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !21, null}
!16 = !{!17, !19}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !18, i8 2, i32 1, i8 2, i32 1, i8 0, !20}
!20 = !{i32 3, i32 3}
!21 = !{!22}
!22 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !23}
!23 = !{i32 3, i32 15}

