;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   x           1   TARGET   float   x   
;
; shader hash: 07c6166a99b8522067605c90b0a789cb
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
;   [224 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                   texture     f32          3d      T2     t74,space2     1
;                                   texture     f32          2d      T3             t2     1
;                                   texture     f32          2d      T4             t3     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6     t73,space2     1
;                                   texture     f32          2d      T7             t4     1
;                                   texture     f32          2d      T8             t5     1
;                                   texture    byte         r/o      T9     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 5
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;   output 1 depends on inputs: { 0, 1, 4, 5 }
;   output 2 depends on inputs: { 0, 1, 4, 5 }
;   output 4 depends on inputs: { 0, 1, 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%perObject = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%tonemapping = type { i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

@Gx.v.v = internal unnamed_addr constant [9 x float] [float -1.000000e+00, float -2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00]
@Gy.v.v = internal unnamed_addr constant [9 x float] [float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 0.000000e+00, float 2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00]

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 73, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 74, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = alloca [3 x i32], align 4
  %21 = alloca [3 x i32], align 4
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %25 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %26 = extractvalue %dx.types.CBufRet.f32 %22, 3
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 1
  %30 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %32 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.f32 %32, 0
  %34 = extractvalue %dx.types.CBufRet.f32 %32, 1
  %35 = extractvalue %dx.types.CBufRet.f32 %32, 2
  %36 = extractvalue %dx.types.CBufRet.f32 %32, 3
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %40 = fcmp fast une float %33, 0.000000e+00
  %41 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = extractvalue %dx.types.ResRet.f32 %41, 1
  %44 = extractvalue %dx.types.ResRet.f32 %41, 2
  %45 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = extractvalue %dx.types.ResRet.f32 %45, 1
  %48 = call float @dx.op.binary.f32(i32 35, float %46, float 0.000000e+00)  ; FMax(a,b)
  %49 = call float @dx.op.binary.f32(i32 35, float %47, float 0.000000e+00)  ; FMax(a,b)
  %50 = call float @dx.op.binary.f32(i32 36, float %48, float 3.225500e+04)  ; FMin(a,b)
  %51 = call float @dx.op.binary.f32(i32 36, float %49, float 3.225500e+04)  ; FMin(a,b)
  %52 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.i32 %52, 1
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = fsub fast float %57, %18
  %60 = fsub fast float %58, %19
  %61 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %62 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %63 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %64 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %65 = fsub fast float %61, %63
  %66 = fsub fast float %62, %64
  %67 = fcmp fast ogt float %65, 0.000000e+00
  %68 = fcmp fast ogt float %66, 0.000000e+00
  %69 = or i1 %67, %68
  %70 = or i1 %55, %69
  %71 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.i32 %71, 3
  %73 = and i32 %72, 3
  %74 = icmp ne i32 %73, 0
  %75 = and i32 %72, 4
  %76 = icmp ne i32 %75, 0
  %77 = and i1 %74, %76
  br i1 %77, label %78, label %85

; <label>:78                                      ; preds = %0
  %79 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %80 = extractvalue %dx.types.ResRet.f32 %79, 0
  %81 = fsub fast float 1.000000e+00, %80
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fcmp fast olt float %81, %83
  br label %88

; <label>:85                                      ; preds = %0
  %86 = icmp eq i32 %75, 0
  %87 = and i1 %74, %86
  br label %88

; <label>:88                                      ; preds = %85, %78
  %89 = phi i1 [ %84, %78 ], [ %87, %85 ]
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fcmp fast oge float %43, %91
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 3
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  %97 = and i32 %94, 4
  %98 = icmp eq i32 %97, 0
  %99 = and i1 %96, %98
  %100 = and i1 %92, %99
  br i1 %99, label %101, label %130

; <label>:101                                     ; preds = %88
  br i1 %70, label %102, label %112, !dx.controlflow.hints !39

; <label>:102                                     ; preds = %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %105 = fmul fast float %104, %42
  %106 = fmul fast float %104, %43
  %107 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %108 = fmul fast float %107, %50
  %109 = fmul fast float %107, %51
  %110 = fadd fast float %108, %105
  %111 = fadd fast float %109, %106
  br label %112

; <label>:112                                     ; preds = %102, %101
  %113 = phi float [ %110, %102 ], [ %42, %101 ]
  %114 = phi float [ %111, %102 ], [ %43, %101 ]
  br i1 %100, label %115, label %130

; <label>:115                                     ; preds = %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %114, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = extractvalue %dx.types.ResRet.f32 %118, 1
  %121 = extractvalue %dx.types.ResRet.f32 %118, 2
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = fcmp fast ogt float %123, 1.500000e+00
  %125 = select i1 %124, float %119, float %120
  %126 = select i1 %124, float %119, float %121
  %127 = fmul fast float %119, %117
  %128 = fmul fast float %125, %117
  %129 = fmul fast float %126, %117
  br label %130

; <label>:130                                     ; preds = %115, %112, %88
  %131 = phi float [ %127, %115 ], [ %42, %88 ], [ %113, %112 ]
  %132 = phi float [ %128, %115 ], [ %43, %88 ], [ %113, %112 ]
  %133 = phi float [ %129, %115 ], [ %44, %88 ], [ %113, %112 ]
  br i1 %40, label %134, label %504

; <label>:134                                     ; preds = %130
  br i1 %100, label %135, label %323

; <label>:135                                     ; preds = %134
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 219)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = bitcast float %137 to i32
  %139 = icmp eq i32 %138, 3
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = fsub fast float 1.000000e+00, %141
  br i1 %139, label %143, label %219

; <label>:143                                     ; preds = %135
  %144 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %145 = fmul fast float %144, 0x3FDAAAAAA0000000
  %146 = call float @dx.op.unary.f32(i32 21, float %145)  ; Exp(value)
  %147 = fsub fast float 1.000000e+00, %146
  %148 = call float @dx.op.unary.f32(i32 23, float %147)  ; Log(value)
  %149 = fmul fast float %148, 0x4003333340000000
  %150 = call float @dx.op.unary.f32(i32 21, float %149)  ; Exp(value)
  %151 = fdiv fast float %146, %147
  %152 = fadd fast float %151, %131
  %153 = fadd fast float %151, %132
  %154 = fadd fast float %151, %133
  %155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %152)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %153)  ; FMax(a,b)
  %157 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %154)  ; FMax(a,b)
  %158 = call float @dx.op.unary.f32(i32 23, float %155)  ; Log(value)
  %159 = call float @dx.op.unary.f32(i32 23, float %156)  ; Log(value)
  %160 = call float @dx.op.unary.f32(i32 23, float %157)  ; Log(value)
  %161 = fmul fast float %158, 0x4003333340000000
  %162 = fmul fast float %159, 0x4003333340000000
  %163 = fmul fast float %160, 0x4003333340000000
  %164 = call float @dx.op.unary.f32(i32 21, float %161)  ; Exp(value)
  %165 = call float @dx.op.unary.f32(i32 21, float %162)  ; Exp(value)
  %166 = call float @dx.op.unary.f32(i32 21, float %163)  ; Exp(value)
  %167 = fmul fast float %164, %150
  %168 = fmul fast float %165, %150
  %169 = fmul fast float %166, %150
  %170 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %171 = fmul fast float %167, %170
  %172 = fmul fast float %168, %170
  %173 = fmul fast float %169, %170
  %174 = fmul fast float %171, 0x3FE413A920000000
  %175 = call float @dx.op.tertiary.f32(i32 46, float 0x3FD5134040000000, float %172, float %174)  ; FMad(a,b,c)
  %176 = call float @dx.op.tertiary.f32(i32 46, float 0x3FA62B6AE0000000, float %173, float %175)  ; FMad(a,b,c)
  %177 = fmul fast float %171, 0x3FB1B089A0000000
  %178 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED6C8B40000000, float %172, float %177)  ; FMad(a,b,c)
  %179 = call float @dx.op.tertiary.f32(i32 46, float 0x3F8758E220000000, float %173, float %178)  ; FMad(a,b,c)
  %180 = fmul fast float %171, 0x3F90CB2960000000
  %181 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB6872B00000000, float %172, float %180)  ; FMad(a,b,c)
  %182 = call float @dx.op.tertiary.f32(i32 46, float 0x3FECA8C160000000, float %173, float %181)  ; FMad(a,b,c)
  %183 = fmul fast float %176, 0x3F1A36E2E0000000
  %184 = fmul fast float %179, 0x3F1A36E2E0000000
  %185 = fmul fast float %182, 0x3F1A36E2E0000000
  %186 = call float @dx.op.unary.f32(i32 23, float %183)  ; Log(value)
  %187 = call float @dx.op.unary.f32(i32 23, float %184)  ; Log(value)
  %188 = call float @dx.op.unary.f32(i32 23, float %185)  ; Log(value)
  %189 = fmul fast float %186, 0x3FC4640000000000
  %190 = fmul fast float %187, 0x3FC4640000000000
  %191 = fmul fast float %188, 0x3FC4640000000000
  %192 = call float @dx.op.unary.f32(i32 21, float %189)  ; Exp(value)
  %193 = call float @dx.op.unary.f32(i32 21, float %190)  ; Exp(value)
  %194 = call float @dx.op.unary.f32(i32 21, float %191)  ; Exp(value)
  %195 = fmul fast float %192, 0x4032DA0000000000
  %196 = fmul fast float %193, 0x4032DA0000000000
  %197 = fmul fast float %194, 0x4032DA0000000000
  %198 = fadd fast float %195, 8.359375e-01
  %199 = fadd fast float %196, 8.359375e-01
  %200 = fadd fast float %197, 8.359375e-01
  %201 = fmul fast float %192, 1.868750e+01
  %202 = fmul fast float %193, 1.868750e+01
  %203 = fmul fast float %194, 1.868750e+01
  %204 = fadd fast float %201, 1.000000e+00
  %205 = fadd fast float %202, 1.000000e+00
  %206 = fadd fast float %203, 1.000000e+00
  %207 = fdiv fast float %198, %204
  %208 = fdiv fast float %199, %205
  %209 = fdiv fast float %200, %206
  %210 = call float @dx.op.unary.f32(i32 23, float %207)  ; Log(value)
  %211 = call float @dx.op.unary.f32(i32 23, float %208)  ; Log(value)
  %212 = call float @dx.op.unary.f32(i32 23, float %209)  ; Log(value)
  %213 = fmul fast float %210, 7.884375e+01
  %214 = fmul fast float %211, 7.884375e+01
  %215 = fmul fast float %212, 7.884375e+01
  %216 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %217 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %218 = call float @dx.op.unary.f32(i32 21, float %215)  ; Exp(value)
  br label %310

; <label>:219                                     ; preds = %135
  %220 = icmp eq i32 %138, 4
  br i1 %220, label %221, label %310

; <label>:221                                     ; preds = %219
  %222 = call float @dx.op.unary.f32(i32 23, float 0.000000e+00)  ; Log(value)
  %223 = fmul fast float %222, 0x3FDAAAAAA0000000
  %224 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %225 = fsub fast float 1.000000e+00, %224
  %226 = call float @dx.op.unary.f32(i32 23, float %225)  ; Log(value)
  %227 = fmul fast float %226, 0x4003333340000000
  %228 = call float @dx.op.unary.f32(i32 21, float %227)  ; Exp(value)
  %229 = fdiv fast float %224, %225
  %230 = fadd fast float %229, %131
  %231 = fadd fast float %229, %132
  %232 = fadd fast float %229, %133
  %233 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %230)  ; FMax(a,b)
  %234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %231)  ; FMax(a,b)
  %235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %232)  ; FMax(a,b)
  %236 = call float @dx.op.unary.f32(i32 23, float %233)  ; Log(value)
  %237 = call float @dx.op.unary.f32(i32 23, float %234)  ; Log(value)
  %238 = call float @dx.op.unary.f32(i32 23, float %235)  ; Log(value)
  %239 = fmul fast float %236, 0x4003333340000000
  %240 = fmul fast float %237, 0x4003333340000000
  %241 = fmul fast float %238, 0x4003333340000000
  %242 = call float @dx.op.unary.f32(i32 21, float %239)  ; Exp(value)
  %243 = call float @dx.op.unary.f32(i32 21, float %240)  ; Exp(value)
  %244 = call float @dx.op.unary.f32(i32 21, float %241)  ; Exp(value)
  %245 = fmul fast float %242, %228
  %246 = fmul fast float %243, %228
  %247 = fmul fast float %244, %228
  %248 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %249 = fmul fast float %245, %248
  %250 = fmul fast float %246, %248
  %251 = fmul fast float %247, %248
  %252 = fmul fast float %249, 0x3FEA519BC0000000
  %253 = call float @dx.op.tertiary.f32(i32 46, float 0x3FC6B990A0000000, float %250, float %252)  ; FMad(a,b,c)
  %254 = fmul fast float %249, 0x3FA0FED480000000
  %255 = call float @dx.op.tertiary.f32(i32 46, float 0x3FEEF012C0000000, float %250, float %254)  ; FMad(a,b,c)
  %256 = fmul fast float %249, 0x3F917E1C00000000
  %257 = call float @dx.op.tertiary.f32(i32 46, float 0x3FB288A2E0000000, float %250, float %256)  ; FMad(a,b,c)
  %258 = call float @dx.op.tertiary.f32(i32 46, float 0x3FED22FAA0000000, float %251, float %257)  ; FMad(a,b,c)
  %259 = call float @dx.op.binary.f32(i32 35, float %249, float %250)  ; FMax(a,b)
  %260 = call float @dx.op.binary.f32(i32 35, float %259, float %251)  ; FMax(a,b)
  %261 = fadd fast float %260, -1.000000e+00
  %262 = fmul fast float %261, 2.500000e-01
  %263 = call float @dx.op.unary.f32(i32 7, float %262)  ; Saturate(value)
  %264 = fsub fast float 1.000000e+00, %263
  %265 = fmul fast float %264, %253
  %266 = fmul fast float %264, %255
  %267 = fmul fast float %264, %258
  %268 = fmul fast float %263, %249
  %269 = fmul fast float %263, %250
  %270 = fmul fast float %263, %251
  %271 = fadd fast float %265, %268
  %272 = fadd fast float %266, %269
  %273 = fadd fast float %267, %270
  %274 = fmul fast float %271, 0x3F1A36E2E0000000
  %275 = fmul fast float %272, 0x3F1A36E2E0000000
  %276 = fmul fast float %273, 0x3F1A36E2E0000000
  %277 = call float @dx.op.unary.f32(i32 23, float %274)  ; Log(value)
  %278 = call float @dx.op.unary.f32(i32 23, float %275)  ; Log(value)
  %279 = call float @dx.op.unary.f32(i32 23, float %276)  ; Log(value)
  %280 = fmul fast float %277, 0x3FC4640000000000
  %281 = fmul fast float %278, 0x3FC4640000000000
  %282 = fmul fast float %279, 0x3FC4640000000000
  %283 = call float @dx.op.unary.f32(i32 21, float %280)  ; Exp(value)
  %284 = call float @dx.op.unary.f32(i32 21, float %281)  ; Exp(value)
  %285 = call float @dx.op.unary.f32(i32 21, float %282)  ; Exp(value)
  %286 = fmul fast float %283, 0x4032DA0000000000
  %287 = fmul fast float %284, 0x4032DA0000000000
  %288 = fmul fast float %285, 0x4032DA0000000000
  %289 = fadd fast float %286, 8.359375e-01
  %290 = fadd fast float %287, 8.359375e-01
  %291 = fadd fast float %288, 8.359375e-01
  %292 = fmul fast float %283, 1.868750e+01
  %293 = fmul fast float %284, 1.868750e+01
  %294 = fmul fast float %285, 1.868750e+01
  %295 = fadd fast float %292, 1.000000e+00
  %296 = fadd fast float %293, 1.000000e+00
  %297 = fadd fast float %294, 1.000000e+00
  %298 = fdiv fast float %289, %295
  %299 = fdiv fast float %290, %296
  %300 = fdiv fast float %291, %297
  %301 = call float @dx.op.unary.f32(i32 23, float %298)  ; Log(value)
  %302 = call float @dx.op.unary.f32(i32 23, float %299)  ; Log(value)
  %303 = call float @dx.op.unary.f32(i32 23, float %300)  ; Log(value)
  %304 = fmul fast float %301, 7.884375e+01
  %305 = fmul fast float %302, 7.884375e+01
  %306 = fmul fast float %303, 7.884375e+01
  %307 = call float @dx.op.unary.f32(i32 21, float %304)  ; Exp(value)
  %308 = call float @dx.op.unary.f32(i32 21, float %305)  ; Exp(value)
  %309 = call float @dx.op.unary.f32(i32 21, float %306)  ; Exp(value)
  br label %310

; <label>:310                                     ; preds = %221, %219, %143
  %311 = phi float [ %216, %143 ], [ %307, %221 ], [ %131, %219 ]
  %312 = phi float [ %217, %143 ], [ %308, %221 ], [ %132, %219 ]
  %313 = phi float [ %218, %143 ], [ %309, %221 ], [ %133, %219 ]
  %314 = fmul float %142, %313
  %315 = fmul float %142, %312
  %316 = fmul float %142, %311
  %317 = fadd float %314, %141
  %318 = fadd float %315, %141
  %319 = fadd float %316, %141
  %320 = fmul fast float %319, %44
  %321 = fmul fast float %318, %44
  %322 = fmul fast float %317, %44
  br label %504

; <label>:323                                     ; preds = %134
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %332 = fsub fast float %331, %327
  %333 = fcmp fast ogt float %332, 0.000000e+00
  %334 = fcmp fast olt float %332, 0.000000e+00
  %335 = zext i1 %333 to i32
  %336 = zext i1 %334 to i32
  %337 = sub nsw i32 %335, %336
  %338 = sitofp i32 %337 to float
  %339 = call float @dx.op.unary.f32(i32 6, float %332)  ; FAbs(value)
  %340 = fsub fast float %339, %329
  %341 = call float @dx.op.binary.f32(i32 35, float %340, float 0.000000e+00)  ; FMax(a,b)
  %342 = fmul fast float %338, %341
  %343 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %344 = fsub fast float %331, %342
  %345 = fmul fast float %344, 0xBFF7154760000000
  %346 = call float @dx.op.unary.f32(i32 21, float %345)  ; Exp(value)
  %347 = fmul fast float %346, %343
  %348 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %349 = fadd fast float %347, -1.000000e+00
  %350 = fmul fast float %348, %349
  %351 = fadd fast float %350, 1.000000e+00
  %352 = fmul fast float %351, %131
  %353 = fmul fast float %351, %132
  %354 = fmul fast float %351, %133
  %355 = icmp eq i32 %95, 0
  %356 = icmp ne i32 %97, 0
  %357 = or i1 %355, %356
  %358 = and i1 %70, %357
  br i1 %358, label %359, label %381, !dx.controlflow.hints !40

; <label>:359                                     ; preds = %323
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %11, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = call float @dx.op.binary.f32(i32 35, float %361, float 0.000000e+00)  ; FMax(a,b)
  %365 = call float @dx.op.binary.f32(i32 35, float %362, float 0.000000e+00)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %363, float 0.000000e+00)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 36, float %364, float 3.225500e+04)  ; FMin(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float %365, float 3.225500e+04)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 36, float %366, float 3.225500e+04)  ; FMin(a,b)
  %370 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %371 = fmul fast float %370, %352
  %372 = fmul fast float %370, %353
  %373 = fmul fast float %370, %354
  %374 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %375 = fmul fast float %374, %367
  %376 = fmul fast float %374, %368
  %377 = fmul fast float %374, %369
  %378 = fadd fast float %375, %371
  %379 = fadd fast float %376, %372
  %380 = fadd fast float %377, %373
  br label %381

; <label>:381                                     ; preds = %359, %323
  %382 = phi float [ %378, %359 ], [ %352, %323 ]
  %383 = phi float [ %379, %359 ], [ %353, %323 ]
  %384 = phi float [ %380, %359 ], [ %354, %323 ]
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 2
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %389 = extractvalue %dx.types.CBufRet.f32 %387, 3
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = fcmp fast ugt float %386, 0.000000e+00
  br i1 %393, label %394, label %444

; <label>:394                                     ; preds = %381
  %395 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %396 = fcmp fast ogt float %395, 0.000000e+00
  %397 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %385, 0
  %401 = fadd fast float %16, -5.000000e-01
  %402 = fadd fast float %17, -5.000000e-01
  %403 = fmul fast float %400, %401
  %404 = fmul fast float %399, %402
  %405 = fadd fast float %403, %398
  %406 = fadd fast float %404, %397
  br i1 %396, label %407, label %414

; <label>:407                                     ; preds = %394
  %408 = fmul fast float %405, 5.000000e-01
  %409 = fmul fast float %406, 5.000000e-01
  %410 = fadd fast float %408, 5.000000e-01
  %411 = fadd fast float %409, 5.000000e-01
  %412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %410, float %411, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  br label %427

; <label>:414                                     ; preds = %394
  %415 = fsub fast float -0.000000e+00, %388
  %416 = fsub fast float -0.000000e+00, %389
  %417 = call float @dx.op.binary.f32(i32 35, float %405, float %415)  ; FMax(a,b)
  %418 = call float @dx.op.binary.f32(i32 35, float %406, float %416)  ; FMax(a,b)
  %419 = call float @dx.op.binary.f32(i32 36, float %417, float %388)  ; FMin(a,b)
  %420 = call float @dx.op.binary.f32(i32 36, float %418, float %389)  ; FMin(a,b)
  %421 = fsub fast float %405, %419
  %422 = fsub fast float %406, %420
  %423 = fmul fast float %421, %421
  %424 = fmul fast float %422, %422
  %425 = fadd fast float %424, %423
  %426 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  br label %427

; <label>:427                                     ; preds = %414, %407
  %428 = phi float [ %413, %407 ], [ %426, %414 ]
  %429 = fmul fast float %428, %391
  %430 = fadd fast float %429, %392
  %431 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %432 = fmul fast float %431, %431
  %433 = fmul fast float %431, 2.000000e+00
  %434 = fsub fast float 3.000000e+00, %433
  %435 = fmul fast float %432, %434
  %436 = fsub fast float %435, %431
  %437 = fmul fast float %436, 0x3FE3333340000000
  %438 = fadd fast float %437, %431
  %439 = fmul fast float %438, %386
  %440 = fsub fast float 1.000000e+00, %439
  %441 = fmul fast float %440, %382
  %442 = fmul fast float %440, %383
  %443 = fmul fast float %440, %384
  br label %444

; <label>:444                                     ; preds = %427, %381
  %445 = phi float [ %441, %427 ], [ %382, %381 ]
  %446 = phi float [ %442, %427 ], [ %383, %381 ]
  %447 = phi float [ %443, %427 ], [ %384, %381 ]
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %452 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %449, float %450, float %451)  ; Dot3(ax,ay,az,bx,by,bz)
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %456 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %457 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %454, float %455, float %456)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %459, float %460, float %461)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = fmul fast float %452, %325
  %464 = fmul fast float %457, %325
  %465 = fmul fast float %462, %325
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %468 = fmul fast float %463, %467
  %469 = fmul fast float %464, %467
  %470 = fmul fast float %465, %467
  %471 = fadd fast float %468, 9.765625e-04
  %472 = fadd fast float %469, 9.765625e-04
  %473 = fadd fast float %470, 9.765625e-04
  %474 = call float @dx.op.unary.f32(i32 23, float %471)  ; Log(value)
  %475 = call float @dx.op.unary.f32(i32 23, float %472)  ; Log(value)
  %476 = call float @dx.op.unary.f32(i32 23, float %473)  ; Log(value)
  %477 = fadd fast float %474, 1.000000e+01
  %478 = fadd fast float %475, 1.000000e+01
  %479 = fadd fast float %476, 1.000000e+01
  %480 = fmul fast float %477, 0x3FA99999A0000000
  %481 = fmul fast float %478, 0x3FA99999A0000000
  %482 = fmul fast float %479, 0x3FA99999A0000000
  %483 = call float @dx.op.unary.f32(i32 7, float %480)  ; Saturate(value)
  %484 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  %485 = call float @dx.op.unary.f32(i32 7, float %482)  ; Saturate(value)
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %490 = fmul fast float %487, %483
  %491 = fmul fast float %488, %484
  %492 = fmul fast float %489, %485
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %497 = fadd fast float %490, %494
  %498 = fadd fast float %491, %495
  %499 = fadd fast float %492, %496
  %500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %11, float %497, float %498, float %499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = extractvalue %dx.types.ResRet.f32 %500, 1
  %503 = extractvalue %dx.types.ResRet.f32 %500, 2
  br label %504

; <label>:504                                     ; preds = %444, %310, %130
  %505 = phi float [ %320, %310 ], [ %501, %444 ], [ %131, %130 ]
  %506 = phi float [ %321, %310 ], [ %502, %444 ], [ %132, %130 ]
  %507 = phi float [ %322, %310 ], [ %503, %444 ], [ %133, %130 ]
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = fcmp fast ogt float %509, 0.000000e+00
  br i1 %510, label %511, label %555

; <label>:511                                     ; preds = %504
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = extractvalue %dx.types.CBufRet.f32 %512, 1
  %515 = fmul fast float %513, %16
  %516 = fmul fast float %514, %17
  %517 = fptoui float %515 to i32
  %518 = fptoui float %516 to i32
  %519 = lshr i32 %517, 3
  %520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.i32 %520, 1
  %522 = shl i32 %521, 1
  %523 = lshr i32 %518, 5
  %524 = extractvalue %dx.types.CBufRet.i32 %520, 0
  %525 = mul i32 %523, %524
  %526 = lshr i32 %517, 6
  %527 = add i32 %526, %522
  %528 = add i32 %527, %525
  %529 = shl i32 %528, 2
  %530 = and i32 %518, 24
  %531 = and i32 %519, 7
  %532 = or i32 %531, %530
  %533 = shl i32 1, %532
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %533, %535
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %555, label %538

; <label>:538                                     ; preds = %511
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = fcmp fast oeq float %540, 0.000000e+00
  br i1 %541, label %542, label %555

; <label>:542                                     ; preds = %538
  %543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %12, float %16, float %17, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = extractvalue %dx.types.ResRet.f32 %543, 3
  %548 = fsub fast float 1.000000e+00, %547
  %549 = fmul fast float %548, %505
  %550 = fmul fast float %548, %506
  %551 = fmul fast float %548, %507
  %552 = fadd fast float %549, %544
  %553 = fadd fast float %550, %545
  %554 = fadd fast float %551, %546
  br label %555

; <label>:555                                     ; preds = %542, %538, %511, %504
  %556 = phi float [ %552, %542 ], [ %505, %538 ], [ %505, %511 ], [ %505, %504 ]
  %557 = phi float [ %553, %542 ], [ %506, %538 ], [ %506, %511 ], [ %506, %504 ]
  %558 = phi float [ %554, %542 ], [ %507, %538 ], [ %507, %511 ], [ %507, %504 ]
  %559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %560 = extractvalue %dx.types.CBufRet.f32 %559, 0
  %561 = extractvalue %dx.types.CBufRet.f32 %559, 1
  %562 = extractvalue %dx.types.CBufRet.f32 %559, 2
  %563 = call float @dx.op.dot3.f32(i32 55, float %556, float %557, float %558, float %560, float %561, float %562)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = and i32 %94, 8
  %565 = icmp ne i32 %564, 0
  %566 = or i1 %89, %565
  br i1 %566, label %567, label %760

; <label>:567                                     ; preds = %555
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 218)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 3
  br label %573

; <label>:573                                     ; preds = %711, %567
  %574 = phi float [ 0.000000e+00, %567 ], [ %699, %711 ]
  %575 = phi float [ 0.000000e+00, %567 ], [ %708, %711 ]
  %576 = phi i32 [ 0, %567 ], [ %712, %711 ]
  br label %577

; <label>:577                                     ; preds = %687, %573
  %578 = phi float [ %574, %573 ], [ %699, %687 ]
  %579 = phi float [ %575, %573 ], [ %708, %687 ]
  %580 = phi i32 [ 0, %573 ], [ %709, %687 ]
  %581 = add nsw i32 %576, -1
  %582 = sitofp i32 %581 to float
  %583 = add nsw i32 %580, -1
  %584 = sitofp i32 %583 to float
  %585 = fmul fast float %582, %571
  %586 = fmul fast float %584, %572
  %587 = fadd fast float %585, %16
  %588 = fadd fast float %586, %17
  %589 = icmp eq i32 %576, 1
  %590 = icmp eq i32 %580, 1
  %591 = and i1 %589, %590
  %592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %11, float %587, float %588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = select i1 %591, float %42, float %593
  %596 = select i1 %591, float %43, float %594
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = fcmp fast ult float %596, %598
  br i1 %599, label %617, label %600

; <label>:600                                     ; preds = %577
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 237)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %11, float %596, float 0.000000e+00, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %609 = fcmp fast ogt float %608, 1.500000e+00
  %610 = select i1 %609, float %604, float %605
  %611 = select i1 %609, float %604, float %606
  %612 = fmul fast float %602, %35
  %613 = fmul fast float %612, %604
  %614 = fmul fast float %612, %610
  %615 = fmul fast float %612, %611
  %616 = call float @dx.op.dot3.f32(i32 55, float %613, float %614, float %615, float 0x3FD5554760000000, float 0x3FD5554760000000, float 0x3FD5554760000000)  ; Dot3(ax,ay,az,bx,by,bz)
  br label %687

; <label>:617                                     ; preds = %577
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 304)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 305)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %622 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %15, i32 306)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %625 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %626 = fcmp fast ugt float %619, 0.000000e+00
  br i1 %626, label %627, label %675

; <label>:627                                     ; preds = %617
  %628 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %629 = fcmp fast ogt float %628, 0.000000e+00
  %630 = extractvalue %dx.types.CBufRet.f32 %620, 1
  %631 = extractvalue %dx.types.CBufRet.f32 %620, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %634 = fadd fast float %587, -5.000000e-01
  %635 = fadd fast float %588, -5.000000e-01
  %636 = fmul fast float %633, %634
  %637 = fmul fast float %632, %635
  %638 = fadd fast float %636, %631
  %639 = fadd fast float %637, %630
  br i1 %629, label %640, label %647

; <label>:640                                     ; preds = %627
  %641 = fmul fast float %638, 5.000000e-01
  %642 = fmul fast float %639, 5.000000e-01
  %643 = fadd fast float %641, 5.000000e-01
  %644 = fadd fast float %642, 5.000000e-01
  %645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %11, float %643, float %644, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  br label %660

; <label>:647                                     ; preds = %627
  %648 = fsub fast float -0.000000e+00, %621
  %649 = fsub fast float -0.000000e+00, %622
  %650 = call float @dx.op.binary.f32(i32 35, float %638, float %648)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 35, float %639, float %649)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 36, float %650, float %621)  ; FMin(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %651, float %622)  ; FMin(a,b)
  %654 = fsub fast float %638, %652
  %655 = fsub fast float %639, %653
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %655, %655
  %658 = fadd fast float %657, %656
  %659 = call float @dx.op.unary.f32(i32 24, float %658)  ; Sqrt(value)
  br label %660

; <label>:660                                     ; preds = %647, %640
  %661 = phi float [ %646, %640 ], [ %659, %647 ]
  %662 = fmul fast float %661, %624
  %663 = fadd fast float %662, %625
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = fmul fast float %664, %664
  %666 = fmul fast float %664, 2.000000e+00
  %667 = fsub fast float 3.000000e+00, %666
  %668 = fmul fast float %665, %667
  %669 = fsub fast float %668, %664
  %670 = fmul fast float %669, 0x3FE3333340000000
  %671 = fadd fast float %670, %664
  %672 = fmul fast float %671, %619
  %673 = fsub fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %595
  br label %675

; <label>:675                                     ; preds = %660, %617
  %676 = phi float [ %674, %660 ], [ %595, %617 ]
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %681 = call float @dx.op.dot3.f32(i32 55, float %676, float %676, float %676, float %678, float %679, float %680)  ; Dot3(ax,ay,az,bx,by,bz)
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 1
  %684 = fmul fast float %569, %34
  %685 = fmul fast float %684, %681
  %686 = fmul fast float %685, %683
  br label %687

; <label>:687                                     ; preds = %675, %600
  %688 = phi float [ %616, %600 ], [ %686, %675 ]
  %689 = add nuw nsw i32 %576, 3
  %690 = add nuw nsw i32 %576, 6
  %691 = getelementptr [3 x i32], [3 x i32]* %21, i32 0, i32 0
  store i32 %576, i32* %691, align 4
  %692 = getelementptr [3 x i32], [3 x i32]* %21, i32 0, i32 1
  store i32 %689, i32* %692, align 4
  %693 = getelementptr [3 x i32], [3 x i32]* %21, i32 0, i32 2
  store i32 %690, i32* %693, align 4
  %694 = getelementptr [3 x i32], [3 x i32]* %21, i32 0, i32 %580
  %695 = load i32, i32* %694, align 4
  %696 = getelementptr [9 x float], [9 x float]* @Gx.v.v, i32 0, i32 %695
  %697 = load float, float* %696, align 4, !tbaa !41
  %698 = fmul fast float %697, %688
  %699 = fadd fast float %698, %578
  %700 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 0
  store i32 %576, i32* %700, align 4
  %701 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 1
  store i32 %689, i32* %701, align 4
  %702 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 2
  store i32 %690, i32* %702, align 4
  %703 = getelementptr [3 x i32], [3 x i32]* %20, i32 0, i32 %580
  %704 = load i32, i32* %703, align 4
  %705 = getelementptr [9 x float], [9 x float]* @Gy.v.v, i32 0, i32 %704
  %706 = load float, float* %705, align 4, !tbaa !41
  %707 = fmul fast float %706, %688
  %708 = fadd fast float %707, %579
  %709 = add nuw nsw i32 %580, 1
  %710 = icmp eq i32 %709, 3
  br i1 %710, label %711, label %577

; <label>:711                                     ; preds = %687
  %712 = add nuw nsw i32 %576, 1
  %713 = icmp eq i32 %712, 3
  br i1 %713, label %714, label %573

; <label>:714                                     ; preds = %711
  %715 = call float @dx.op.unary.f32(i32 7, float %42)  ; Saturate(value)
  %716 = fmul fast float %699, %699
  %717 = fmul fast float %708, %708
  %718 = fadd fast float %717, %716
  %719 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %718)  ; FMax(a,b)
  %720 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %721 = fmul fast float %715, %31
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = fmul fast float %556, %33
  %724 = fmul fast float %557, %33
  %725 = fmul fast float %558, %33
  %726 = select i1 %40, float %723, float %722
  %727 = select i1 %40, float %724, float %722
  %728 = select i1 %40, float %725, float %722
  %729 = fsub fast float %28, %726
  %730 = fsub fast float %29, %727
  %731 = fsub fast float %30, %728
  %732 = fmul fast float %729, %722
  %733 = fmul fast float %730, %722
  %734 = fmul fast float %731, %722
  %735 = fadd fast float %732, %726
  %736 = fadd fast float %733, %727
  %737 = fadd fast float %734, %728
  %738 = fmul fast float %715, %26
  %739 = fsub fast float 1.000000e+00, %738
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  br i1 %92, label %741, label %744

; <label>:741                                     ; preds = %714
  %742 = fmul fast float %720, %38
  %743 = fmul fast float %742, %740
  br label %748

; <label>:744                                     ; preds = %714
  %745 = fmul fast float %720, %36
  %746 = fmul fast float %745, %740
  %747 = call float @dx.op.unary.f32(i32 7, float %746)  ; Saturate(value)
  br label %748

; <label>:748                                     ; preds = %744, %741
  %749 = phi float [ %743, %741 ], [ %747, %744 ]
  %750 = fmul fast float %749, %39
  %751 = fsub fast float %23, %735
  %752 = fsub fast float %24, %736
  %753 = fsub fast float %25, %737
  %754 = fmul fast float %750, %751
  %755 = fmul fast float %750, %752
  %756 = fmul fast float %750, %753
  %757 = fadd fast float %754, %735
  %758 = fadd fast float %755, %736
  %759 = fadd fast float %756, %737
  br label %760

; <label>:760                                     ; preds = %748, %555
  %761 = phi float [ %757, %748 ], [ %556, %555 ]
  %762 = phi float [ %758, %748 ], [ %557, %555 ]
  %763 = phi float [ %759, %748 ], [ %558, %555 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %761)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %762)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %763)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!24}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !17, !21}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 74, i32 1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 73, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!17 = !{!18, !19, !20}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 224, null}
!20 = !{i32 2, %tonemapping* undef, !"", i32 0, i32 4, i32 1, i32 64, null}
!21 = !{!22, !23}
!22 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!23 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!24 = !{[8 x i32] [i32 6, i32 5, i32 23, i32 23, i32 0, i32 0, i32 23, i32 23]}
!25 = !{void ()* @ps_main, !"ps_main", !26, !4, !38}
!26 = !{!27, !32, null}
!27 = !{!28, !31}
!28 = !{i32 0, !"SV_Position", i8 9, i8 3, !29, i8 4, i32 1, i8 4, i32 0, i8 0, !30}
!29 = !{i32 0}
!30 = !{i32 3, i32 3}
!31 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 1, i8 0, !30}
!32 = !{!33, !35}
!33 = !{i32 0, !"SV_Target", i8 9, i8 16, !29, i8 0, i32 1, i8 4, i32 0, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{i32 1, !"SV_Target", i8 9, i8 16, !36, i8 0, i32 1, i8 1, i32 1, i8 0, !37}
!36 = !{i32 1}
!37 = !{i32 3, i32 1}
!38 = !{i32 0, i64 16}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 1}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}

