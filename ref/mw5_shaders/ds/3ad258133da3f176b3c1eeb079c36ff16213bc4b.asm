;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; LMAP_INDEX               0    y          1     NONE    uint    y  
; TANGENT_FRAME            0     z         1     NONE    uint     z 
; NORMAL_TRANSFORM         1      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float   xy  
; LIGHTING_TEXCOORD        0     zw        3     NONE   float     zw
; NORMAL_TRANSFORM         2   x           4     NONE    uint   x   
; NORMAL_TRANSFORM         3    y          4     NONE    uint       
; DISPLACEMENT             2     z         4     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        4     NONE    uint       
; TRANSIENT_INDEX          0   x           5     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xyzw
; LMAPCOORDS               0   xyz         4     NONE   float   xyz 
; NORMAL                   0   xyz         5     NONE   float   xyz 
; TANGENT                  0   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        7     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        8     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           9     NONE    uint   x   
;
;
; Patch Constant signature signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_TessFactor            0      w        0  TRIEDGE   float   xyzw
; SV_TessFactor            1      w        1  TRIEDGE   float   xyzw
; SV_TessFactor            2      w        2  TRIEDGE   float   xyzw
; SV_InsideTessFactor      0   x           3   TRIINT   float   xyzw
;
; shader hash: 913d6c9c49e277ab2428f650c1572b5e
;
; Pipeline Runtime Information: 
;
; Domain Shader
; InputControlPointCount=3
; OutputPositionPresent=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; POSITION                 0                 linear       
; COLOR                    0        nointerpolation       
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
; TEXCOORD                 2                 linear       
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
; TANGENT_FRAME            0        nointerpolation       
; NORMAL_TRANSFORM         1        nointerpolation       
; NORMAL_TRANSFORM         2        nointerpolation       
; NORMAL_TRANSFORM         3        nointerpolation       
; DISPLACEMENT             2        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; TEXCOORDS                1                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
; NORMAL_TRANSFORM         2                 linear       
; TRANSIENT_INDEX          0        nointerpolation       
;
; Patch Constant signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_TessFactor            0                              
; SV_InsideTessFactor      0                              
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
;   [208 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s5     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1             t0     1
;
;
; ViewId state:
;
; Number of inputs: 21, outputs: 37, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 12, 13, 18 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 12, 13, 18 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 12, 13, 18 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 12, 13, 18 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 6 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10 }
;   output 11 depends on inputs: { 11 }
;   output 12 depends on inputs: { 12 }
;   output 13 depends on inputs: { 13 }
;   output 16 depends on inputs: { 14 }
;   output 17 depends on inputs: { 15 }
;   output 18 depends on inputs: { 5 }
;   output 20 depends on inputs: { 6 }
;   output 21 depends on inputs: { 6 }
;   output 22 depends on inputs: { 6 }
;   output 24 depends on inputs: { 6 }
;   output 25 depends on inputs: { 6 }
;   output 26 depends on inputs: { 6 }
;   output 27 depends on inputs: { 6 }
;   output 28 depends on inputs: { 7 }
;   output 29 depends on inputs: { 7 }
;   output 30 depends on inputs: { 7 }
;   output 31 depends on inputs: { 7 }
;   output 32 depends on inputs: { 16 }
;   output 33 depends on inputs: { 16 }
;   output 34 depends on inputs: { 16 }
;   output 35 depends on inputs: { 16 }
;   output 36 depends on inputs: { 20 }
; PCInputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ds_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !26  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !26  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !26  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = and i32 %11, 255
  %27 = uitofp i32 %26 to float
  %28 = lshr i32 %11, 8
  %29 = and i32 %28, 255
  %30 = uitofp i32 %29 to float
  %31 = lshr i32 %11, 16
  %32 = and i32 %31, 255
  %33 = uitofp i32 %32 to float
  %34 = uitofp i32 %20 to float
  %35 = lshr i32 %21, 30
  %36 = and i32 %21, 1023
  %37 = uitofp i32 %36 to float
  %38 = fdiv float %37, 1.023000e+03
  %39 = lshr i32 %21, 10
  %40 = and i32 %39, 1023
  %41 = uitofp i32 %40 to float
  %42 = fdiv float %41, 1.023000e+03
  %43 = lshr i32 %21, 20
  %44 = and i32 %43, 511
  %45 = uitofp i32 %44 to float
  %46 = fdiv float %45, 5.110000e+02
  %47 = fmul float %38, 2.000000e+00
  %48 = fmul float %42, 2.000000e+00
  %49 = fmul float %46, 2.000000e+00
  %50 = fadd float %47, -1.000000e+00
  %51 = fadd float %48, -1.000000e+00
  %52 = fadd float %49, -1.000000e+00
  %53 = fmul float %50, 0x3FE6A09E60000000
  %54 = fmul float %51, 0x3FE6A09E60000000
  %55 = fmul float %52, 0x3FE6A09E60000000
  %56 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %57 = call float @dx.op.unary.f32(i32 7, float %56), !dx.precise !26  ; Saturate(value)
  %58 = fsub float 1.000000e+00, %57
  %59 = call float @dx.op.unary.f32(i32 24, float %58), !dx.precise !26  ; Sqrt(value)
  %60 = icmp eq i32 %35, 0
  br i1 %60, label %67, label %61

; <label>:61                                      ; preds = %0
  %62 = icmp eq i32 %35, 1
  br i1 %62, label %67, label %63

; <label>:63                                      ; preds = %61
  %64 = icmp eq i32 %35, 2
  %65 = select i1 %64, float %59, float %55
  %66 = select i1 %64, float %55, float %59
  br label %67

; <label>:67                                      ; preds = %63, %61, %0
  %68 = phi float [ %59, %0 ], [ %53, %61 ], [ %53, %63 ]
  %69 = phi float [ %53, %0 ], [ %59, %61 ], [ %54, %63 ]
  %70 = phi float [ %54, %0 ], [ %54, %61 ], [ %65, %63 ]
  %71 = phi float [ %55, %0 ], [ %55, %61 ], [ %66, %63 ]
  %72 = and i32 %21, 536870912
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %73, float -1.000000e+00, float 1.000000e+00
  %75 = fmul float %69, 2.000000e+00
  %76 = fmul float %69, %75
  %77 = fsub float 1.000000e+00, %76
  %78 = fmul float %70, 2.000000e+00
  %79 = fmul float %70, %78
  %80 = fsub float %77, %79
  %81 = fmul float %68, 2.000000e+00
  %82 = fmul float %81, %70
  %83 = fmul float %75, %71
  %84 = fadd float %82, %83
  %85 = fmul float %81, %69
  %86 = fmul float %78, %71
  %87 = fadd float %85, %86
  %88 = fmul float %75, %70
  %89 = fmul float %81, %71
  %90 = fsub float %88, %89
  %91 = fsub float %82, %83
  %92 = fmul float %68, %81
  %93 = fsub float 1.000000e+00, %92
  %94 = fsub float %93, %76
  %95 = and i32 %22, 255
  %96 = uitofp i32 %95 to float
  %97 = fmul fast float %96, 0x3F80101020000000
  %98 = fadd fast float %97, -1.000000e+00
  %99 = lshr i32 %22, 8
  %100 = and i32 %99, 255
  %101 = uitofp i32 %100 to float
  %102 = fmul fast float %101, 0x3F80101020000000
  %103 = fadd fast float %102, -1.000000e+00
  %104 = lshr i32 %22, 16
  %105 = and i32 %104, 255
  %106 = uitofp i32 %105 to float
  %107 = fmul fast float %106, 0x3F80101020000000
  %108 = fadd fast float %107, -1.000000e+00
  %109 = lshr i32 %22, 24
  %110 = uitofp i32 %109 to float
  %111 = fmul fast float %110, 0x3F80101020000000
  %112 = fadd fast float %111, -1.000000e+00
  %113 = and i32 %23, 255
  %114 = uitofp i32 %113 to float
  %115 = fmul fast float %114, 0x3F80101020000000
  %116 = fadd fast float %115, -1.000000e+00
  %117 = lshr i32 %23, 8
  %118 = and i32 %117, 255
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %119, 0x3F80101020000000
  %121 = fadd fast float %120, -1.000000e+00
  %122 = lshr i32 %23, 16
  %123 = and i32 %122, 255
  %124 = uitofp i32 %123 to float
  %125 = fmul fast float %124, 0x3F80101020000000
  %126 = fadd fast float %125, -1.000000e+00
  %127 = lshr i32 %23, 24
  %128 = uitofp i32 %127 to float
  %129 = fmul fast float %128, 0x3F80101020000000
  %130 = fadd fast float %129, -1.000000e+00
  %131 = and i32 %24, 65535
  %132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %131), !dx.precise !26  ; LegacyF16ToF32(value)
  %133 = lshr i32 %24, 16
  %134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %133), !dx.precise !26  ; LegacyF16ToF32(value)
  %135 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %136 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %137 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %138 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %139 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %140 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %141 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %142 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %143 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %144 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %145 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %146 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %147 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %148 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %149 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %150 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %151 = and i32 %138, 255
  %152 = uitofp i32 %151 to float
  %153 = lshr i32 %138, 8
  %154 = and i32 %153, 255
  %155 = uitofp i32 %154 to float
  %156 = lshr i32 %138, 16
  %157 = and i32 %156, 255
  %158 = uitofp i32 %157 to float
  %159 = lshr i32 %147, 30
  %160 = and i32 %147, 1023
  %161 = uitofp i32 %160 to float
  %162 = fdiv float %161, 1.023000e+03
  %163 = lshr i32 %147, 10
  %164 = and i32 %163, 1023
  %165 = uitofp i32 %164 to float
  %166 = fdiv float %165, 1.023000e+03
  %167 = lshr i32 %147, 20
  %168 = and i32 %167, 511
  %169 = uitofp i32 %168 to float
  %170 = fdiv float %169, 5.110000e+02
  %171 = fmul float %162, 2.000000e+00
  %172 = fmul float %166, 2.000000e+00
  %173 = fmul float %170, 2.000000e+00
  %174 = fadd float %171, -1.000000e+00
  %175 = fadd float %172, -1.000000e+00
  %176 = fadd float %173, -1.000000e+00
  %177 = fmul float %174, 0x3FE6A09E60000000
  %178 = fmul float %175, 0x3FE6A09E60000000
  %179 = fmul float %176, 0x3FE6A09E60000000
  %180 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float %177, float %178, float %179), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %181 = call float @dx.op.unary.f32(i32 7, float %180), !dx.precise !26  ; Saturate(value)
  %182 = fsub float 1.000000e+00, %181
  %183 = call float @dx.op.unary.f32(i32 24, float %182), !dx.precise !26  ; Sqrt(value)
  %184 = icmp eq i32 %159, 0
  br i1 %184, label %191, label %185

; <label>:185                                     ; preds = %67
  %186 = icmp eq i32 %159, 1
  br i1 %186, label %191, label %187

; <label>:187                                     ; preds = %185
  %188 = icmp eq i32 %159, 2
  %189 = select i1 %188, float %183, float %179
  %190 = select i1 %188, float %179, float %183
  br label %191

; <label>:191                                     ; preds = %187, %185, %67
  %192 = phi float [ %183, %67 ], [ %177, %185 ], [ %177, %187 ]
  %193 = phi float [ %177, %67 ], [ %183, %185 ], [ %178, %187 ]
  %194 = phi float [ %178, %67 ], [ %178, %185 ], [ %189, %187 ]
  %195 = phi float [ %179, %67 ], [ %179, %185 ], [ %190, %187 ]
  %196 = fmul float %193, 2.000000e+00
  %197 = fmul float %193, %196
  %198 = fsub float 1.000000e+00, %197
  %199 = fmul float %194, 2.000000e+00
  %200 = fmul float %194, %199
  %201 = fsub float %198, %200
  %202 = fmul float %192, 2.000000e+00
  %203 = fmul float %202, %194
  %204 = fmul float %196, %195
  %205 = fadd float %203, %204
  %206 = fmul float %202, %193
  %207 = fmul float %199, %195
  %208 = fadd float %206, %207
  %209 = fmul float %196, %194
  %210 = fmul float %202, %195
  %211 = fsub float %209, %210
  %212 = fsub float %203, %204
  %213 = fmul float %192, %202
  %214 = fsub float 1.000000e+00, %213
  %215 = fsub float %214, %197
  %216 = and i32 %148, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F80101020000000
  %219 = fadd fast float %218, -1.000000e+00
  %220 = lshr i32 %148, 8
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F80101020000000
  %224 = fadd fast float %223, -1.000000e+00
  %225 = lshr i32 %148, 16
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F80101020000000
  %229 = fadd fast float %228, -1.000000e+00
  %230 = lshr i32 %148, 24
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F80101020000000
  %233 = fadd fast float %232, -1.000000e+00
  %234 = and i32 %149, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F80101020000000
  %237 = fadd fast float %236, -1.000000e+00
  %238 = lshr i32 %149, 8
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F80101020000000
  %242 = fadd fast float %241, -1.000000e+00
  %243 = lshr i32 %149, 16
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F80101020000000
  %247 = fadd fast float %246, -1.000000e+00
  %248 = lshr i32 %149, 24
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F80101020000000
  %251 = fadd fast float %250, -1.000000e+00
  %252 = and i32 %150, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252), !dx.precise !26  ; LegacyF16ToF32(value)
  %254 = lshr i32 %150, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254), !dx.precise !26  ; LegacyF16ToF32(value)
  %256 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %257 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %258 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %259 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %260 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %261 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %262 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %263 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %264 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %265 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %266 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %267 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %268 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %269 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %270 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %271 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %272 = and i32 %259, 255
  %273 = uitofp i32 %272 to float
  %274 = lshr i32 %259, 8
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = lshr i32 %259, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = lshr i32 %268, 30
  %281 = and i32 %268, 1023
  %282 = uitofp i32 %281 to float
  %283 = fdiv float %282, 1.023000e+03
  %284 = lshr i32 %268, 10
  %285 = and i32 %284, 1023
  %286 = uitofp i32 %285 to float
  %287 = fdiv float %286, 1.023000e+03
  %288 = lshr i32 %268, 20
  %289 = and i32 %288, 511
  %290 = uitofp i32 %289 to float
  %291 = fdiv float %290, 5.110000e+02
  %292 = fmul float %283, 2.000000e+00
  %293 = fmul float %287, 2.000000e+00
  %294 = fmul float %291, 2.000000e+00
  %295 = fadd float %292, -1.000000e+00
  %296 = fadd float %293, -1.000000e+00
  %297 = fadd float %294, -1.000000e+00
  %298 = fmul float %295, 0x3FE6A09E60000000
  %299 = fmul float %296, 0x3FE6A09E60000000
  %300 = fmul float %297, 0x3FE6A09E60000000
  %301 = call float @dx.op.dot3.f32(i32 55, float %298, float %299, float %300, float %298, float %299, float %300), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %302 = call float @dx.op.unary.f32(i32 7, float %301), !dx.precise !26  ; Saturate(value)
  %303 = fsub float 1.000000e+00, %302
  %304 = call float @dx.op.unary.f32(i32 24, float %303), !dx.precise !26  ; Sqrt(value)
  %305 = icmp eq i32 %280, 0
  br i1 %305, label %312, label %306

; <label>:306                                     ; preds = %191
  %307 = icmp eq i32 %280, 1
  br i1 %307, label %312, label %308

; <label>:308                                     ; preds = %306
  %309 = icmp eq i32 %280, 2
  %310 = select i1 %309, float %304, float %300
  %311 = select i1 %309, float %300, float %304
  br label %312

; <label>:312                                     ; preds = %308, %306, %191
  %313 = phi float [ %304, %191 ], [ %298, %306 ], [ %298, %308 ]
  %314 = phi float [ %298, %191 ], [ %304, %306 ], [ %299, %308 ]
  %315 = phi float [ %299, %191 ], [ %299, %306 ], [ %310, %308 ]
  %316 = phi float [ %300, %191 ], [ %300, %306 ], [ %311, %308 ]
  %317 = fmul float %314, 2.000000e+00
  %318 = fmul float %314, %317
  %319 = fsub float 1.000000e+00, %318
  %320 = fmul float %315, 2.000000e+00
  %321 = fmul float %315, %320
  %322 = fsub float %319, %321
  %323 = fmul float %313, 2.000000e+00
  %324 = fmul float %323, %315
  %325 = fmul float %317, %316
  %326 = fadd float %324, %325
  %327 = fmul float %323, %314
  %328 = fmul float %320, %316
  %329 = fadd float %327, %328
  %330 = fmul float %317, %315
  %331 = fmul float %323, %316
  %332 = fsub float %330, %331
  %333 = fsub float %324, %325
  %334 = fmul float %313, %323
  %335 = fsub float 1.000000e+00, %334
  %336 = fsub float %335, %318
  %337 = and i32 %269, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F80101020000000
  %340 = fadd fast float %339, -1.000000e+00
  %341 = lshr i32 %269, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F80101020000000
  %345 = fadd fast float %344, -1.000000e+00
  %346 = lshr i32 %269, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F80101020000000
  %350 = fadd fast float %349, -1.000000e+00
  %351 = lshr i32 %269, 24
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F80101020000000
  %354 = fadd fast float %353, -1.000000e+00
  %355 = and i32 %270, 255
  %356 = uitofp i32 %355 to float
  %357 = fmul fast float %356, 0x3F80101020000000
  %358 = fadd fast float %357, -1.000000e+00
  %359 = lshr i32 %270, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F80101020000000
  %363 = fadd fast float %362, -1.000000e+00
  %364 = lshr i32 %270, 16
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F80101020000000
  %368 = fadd fast float %367, -1.000000e+00
  %369 = lshr i32 %270, 24
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F80101020000000
  %372 = fadd fast float %371, -1.000000e+00
  %373 = and i32 %271, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373), !dx.precise !26  ; LegacyF16ToF32(value)
  %375 = lshr i32 %271, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375), !dx.precise !26  ; LegacyF16ToF32(value)
  %377 = fmul float %5, %8
  %378 = fmul float %5, %9
  %379 = fmul float %5, %10
  %380 = fmul float %6, %135
  %381 = fmul float %6, %136
  %382 = fmul float %6, %137
  %383 = fadd float %377, %380
  %384 = fadd float %378, %381
  %385 = fadd float %379, %382
  %386 = fmul float %7, %256
  %387 = fmul float %7, %257
  %388 = fmul float %7, %258
  %389 = fadd float %383, %386
  %390 = fadd float %384, %387
  %391 = fadd float %385, %388
  %392 = fmul fast float %27, %5
  %393 = fmul fast float %152, %6
  %394 = fmul fast float %273, %7
  %395 = fadd fast float %393, %392
  %396 = fadd fast float %395, %394
  %397 = fmul fast float %396, 0x3F70101020000000
  %398 = fmul fast float %30, %5
  %399 = fmul fast float %155, %6
  %400 = fmul fast float %276, %7
  %401 = fadd fast float %399, %398
  %402 = fadd fast float %401, %400
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = fmul fast float %33, %5
  %405 = fmul fast float %158, %6
  %406 = fmul fast float %279, %7
  %407 = fadd fast float %405, %404
  %408 = fadd fast float %407, %406
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = fmul float %5, %12
  %411 = fmul float %5, %13
  %412 = fmul float %6, %139
  %413 = fmul float %6, %140
  %414 = fadd float %410, %412
  %415 = fadd float %411, %413
  %416 = fmul float %7, %260
  %417 = fmul float %7, %261
  %418 = fadd float %414, %416
  %419 = fadd float %415, %417
  %420 = fmul float %5, %14
  %421 = fmul float %5, %15
  %422 = fmul float %6, %141
  %423 = fmul float %6, %142
  %424 = fadd float %420, %422
  %425 = fadd float %421, %423
  %426 = fmul float %7, %262
  %427 = fmul float %7, %263
  %428 = fadd float %424, %426
  %429 = fadd float %425, %427
  %430 = fmul float %5, %16
  %431 = fmul float %5, %17
  %432 = fmul float %6, %143
  %433 = fmul float %6, %144
  %434 = fadd float %430, %432
  %435 = fadd float %431, %433
  %436 = fmul float %7, %264
  %437 = fmul float %7, %265
  %438 = fadd float %434, %436
  %439 = fadd float %435, %437
  %440 = fmul fast float %18, %5
  %441 = fmul fast float %19, %5
  %442 = fmul fast float %145, %6
  %443 = fmul fast float %146, %6
  %444 = fadd fast float %442, %440
  %445 = fadd fast float %443, %441
  %446 = fmul fast float %266, %7
  %447 = fmul fast float %267, %7
  %448 = fadd fast float %444, %446
  %449 = fadd fast float %445, %447
  %450 = fmul float %5, %84
  %451 = fmul float %5, %90
  %452 = fmul float %5, %94
  %453 = fmul float %6, %205
  %454 = fmul float %6, %211
  %455 = fmul float %6, %215
  %456 = fadd float %450, %453
  %457 = fadd float %451, %454
  %458 = fadd float %452, %455
  %459 = fmul float %7, %326
  %460 = fmul float %7, %332
  %461 = fmul float %7, %336
  %462 = fadd float %456, %459
  %463 = fadd float %457, %460
  %464 = fadd float %458, %461
  %465 = fmul fast float %80, %5
  %466 = fmul fast float %87, %5
  %467 = fmul fast float %91, %5
  %468 = fmul fast float %201, %6
  %469 = fmul fast float %208, %6
  %470 = fmul fast float %212, %6
  %471 = fadd fast float %468, %465
  %472 = fadd fast float %469, %466
  %473 = fadd fast float %470, %467
  %474 = fmul fast float %322, %7
  %475 = fmul fast float %329, %7
  %476 = fmul fast float %333, %7
  %477 = fadd fast float %471, %474
  %478 = fadd fast float %472, %475
  %479 = fadd fast float %473, %476
  %480 = fmul fast float %98, %5
  %481 = fmul fast float %103, %5
  %482 = fmul fast float %108, %5
  %483 = fmul fast float %112, %5
  %484 = fmul fast float %219, %6
  %485 = fmul fast float %224, %6
  %486 = fmul fast float %229, %6
  %487 = fmul fast float %233, %6
  %488 = fadd fast float %484, %480
  %489 = fadd fast float %485, %481
  %490 = fadd fast float %486, %482
  %491 = fadd fast float %487, %483
  %492 = fmul fast float %340, %7
  %493 = fmul fast float %345, %7
  %494 = fmul fast float %350, %7
  %495 = fmul fast float %354, %7
  %496 = fadd fast float %488, %492
  %497 = fadd fast float %489, %493
  %498 = fadd fast float %490, %494
  %499 = fadd fast float %491, %495
  %500 = fmul fast float %116, %5
  %501 = fmul fast float %121, %5
  %502 = fmul fast float %126, %5
  %503 = fmul fast float %130, %5
  %504 = fmul fast float %237, %6
  %505 = fmul fast float %242, %6
  %506 = fmul fast float %247, %6
  %507 = fmul fast float %251, %6
  %508 = fadd fast float %504, %500
  %509 = fadd fast float %505, %501
  %510 = fadd fast float %506, %502
  %511 = fadd fast float %507, %503
  %512 = fmul fast float %358, %7
  %513 = fmul fast float %363, %7
  %514 = fmul fast float %368, %7
  %515 = fmul fast float %372, %7
  %516 = fadd fast float %508, %512
  %517 = fadd fast float %509, %513
  %518 = fadd fast float %510, %514
  %519 = fadd fast float %511, %515
  %520 = fmul float %5, %132
  %521 = fmul float %6, %253
  %522 = fadd float %520, %521
  %523 = fmul float %7, %374
  %524 = fadd float %522, %523
  %525 = fmul float %5, %134
  %526 = fmul float %6, %255
  %527 = fadd float %525, %526
  %528 = fmul float %7, %376
  %529 = fadd float %527, %528
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = fsub float %389, %531
  %535 = fsub float %390, %532
  %536 = fsub float %391, %533
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 0
  %539 = extractvalue %dx.types.CBufRet.f32 %537, 1
  %540 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %541 = extractvalue %dx.types.CBufRet.f32 %537, 3
  %542 = fmul float %534, %538
  %543 = call float @dx.op.tertiary.f32(i32 46, float %535, float %539, float %542), !dx.precise !26  ; FMad(a,b,c)
  %544 = call float @dx.op.tertiary.f32(i32 46, float %536, float %540, float %543), !dx.precise !26  ; FMad(a,b,c)
  %545 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %541, float %544), !dx.precise !26  ; FMad(a,b,c)
  %546 = call float @dx.op.binary.f32(i32 35, float %545, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %551 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %552 = fmul float %548, 0.000000e+00
  %553 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %549, float %552), !dx.precise !26  ; FMad(a,b,c)
  %554 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %550, float %553), !dx.precise !26  ; FMad(a,b,c)
  %555 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %551, float %554), !dx.precise !26  ; FMad(a,b,c)
  %556 = fdiv float %546, %555
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = fdiv float %556, %558
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 1
  %562 = bitcast i32 %561 to float
  %563 = extractvalue %dx.types.ResRet.i32 %560, 0
  %564 = bitcast i32 %563 to float
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 380, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = add i32 %566, 0
  %568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %569 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %568, i32 0)  ; GetDimensions(handle,mipLevel)
  %570 = extractvalue %dx.types.Dimensions %569, 0
  %571 = sitofp i32 %570 to float
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %574 = call float @dx.op.unary.f32(i32 6, float %573), !dx.precise !26  ; FAbs(value)
  %575 = fmul float %524, %574
  %576 = fcmp olt float %573, 0.000000e+00
  %577 = fmul float %529, 2.560000e+02
  %578 = fdiv float %575, %577
  %579 = select i1 %576, float %578, float %575
  %580 = fmul float %529, %571
  %581 = fmul float %559, %580
  %582 = call float @dx.op.unary.f32(i32 23, float %581), !dx.precise !26  ; Log(value)
  %583 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %584 = fadd float %582, %583
  %585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %568, %dx.types.Handle %2, float %438, float %439, float undef, float undef, i32 0, i32 0, i32 undef, float %584)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = fmul float %564, %586
  %588 = fadd float %562, %587
  %589 = fmul float %579, %588
  %590 = fadd float %589, 0.000000e+00
  %591 = call float @dx.op.dot3.f32(i32 55, float %462, float %463, float %464, float %462, float %463, float %464), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = call float @dx.op.unary.f32(i32 25, float %591), !dx.precise !26  ; Rsqrt(value)
  %593 = fmul float %462, %592
  %594 = fmul float %463, %592
  %595 = fmul float %464, %592
  %596 = fmul float %593, %590
  %597 = fmul float %594, %590
  %598 = fmul float %595, %590
  %599 = fadd float %389, %596
  %600 = fadd float %390, %597
  %601 = fadd float %391, %598
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %605 = extractvalue %dx.types.CBufRet.f32 %602, 2
  %606 = fsub float %599, %603
  %607 = fsub float %600, %604
  %608 = fsub float %601, %605
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %609, 2
  %613 = extractvalue %dx.types.CBufRet.f32 %609, 3
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %618 = extractvalue %dx.types.CBufRet.f32 %614, 3
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 0
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %622 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %623 = extractvalue %dx.types.CBufRet.f32 %619, 3
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 0
  %626 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %628 = extractvalue %dx.types.CBufRet.f32 %624, 3
  %629 = fmul float %610, %606
  %630 = call float @dx.op.tertiary.f32(i32 46, float %607, float %611, float %629), !dx.precise !26  ; FMad(a,b,c)
  %631 = call float @dx.op.tertiary.f32(i32 46, float %608, float %612, float %630), !dx.precise !26  ; FMad(a,b,c)
  %632 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %613, float %631), !dx.precise !26  ; FMad(a,b,c)
  %633 = fmul float %615, %606
  %634 = call float @dx.op.tertiary.f32(i32 46, float %607, float %616, float %633), !dx.precise !26  ; FMad(a,b,c)
  %635 = call float @dx.op.tertiary.f32(i32 46, float %608, float %617, float %634), !dx.precise !26  ; FMad(a,b,c)
  %636 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %618, float %635), !dx.precise !26  ; FMad(a,b,c)
  %637 = fmul float %620, %606
  %638 = call float @dx.op.tertiary.f32(i32 46, float %607, float %621, float %637), !dx.precise !26  ; FMad(a,b,c)
  %639 = call float @dx.op.tertiary.f32(i32 46, float %608, float %622, float %638), !dx.precise !26  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %623, float %639), !dx.precise !26  ; FMad(a,b,c)
  %641 = fmul float %606, %625
  %642 = call float @dx.op.tertiary.f32(i32 46, float %607, float %626, float %641), !dx.precise !26  ; FMad(a,b,c)
  %643 = call float @dx.op.tertiary.f32(i32 46, float %608, float %627, float %642), !dx.precise !26  ; FMad(a,b,c)
  %644 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %628, float %643), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %632)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %636)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %640)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %403)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %428)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %429)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %438)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %449)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %34)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %462)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %463)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %464)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %477)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %479)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %74)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %496)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %497)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %498)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %499)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 0, float %516)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 1, float %517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 2, float %518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 3, float %519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 9, i32 0, i8 0, i32 %25)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.domainLocation.f32(i32, i8) #0

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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

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
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"ds", i32 6, i32 0}
!4 = !{!5, null, !9, !12}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!14 = !{[71 x i32] [i32 21, i32 37, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 112, i32 0, i32 262144, i32 0, i32 258998287, i32 0, i32 -268435456, i32 0, i32 256, i32 0, i32 512, i32 0, i32 1024, i32 0, i32 2048, i32 0, i32 4111, i32 0, i32 8207, i32 0, i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 16, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !55}
!16 = !{!17, !39, !51}
!17 = !{!18, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 2, !24}
!26 = !{i32 1}
!27 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 3, i8 0, !24}
!28 = !{i32 2}
!29 = !{i32 5, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 3, i8 2, !24}
!30 = !{i32 6, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!31 = !{i32 7, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!32 = !{i32 8, !"NORMAL_TRANSFORM", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 1, i8 3, !22}
!33 = !{i32 9, !"NORMAL_TRANSFORM", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 4, i8 0, !22}
!34 = !{i32 10, !"NORMAL_TRANSFORM", i8 5, i8 0, !35, i8 1, i32 1, i8 1, i32 4, i8 1, null}
!35 = !{i32 3}
!36 = !{i32 11, !"DISPLACEMENT", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 4, i8 2, !22}
!37 = !{i32 12, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 3, null}
!38 = !{i32 13, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 0, !22}
!39 = !{!40, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !41}
!44 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 3, i8 0, !41}
!45 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!46 = !{i32 5, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 5, i8 0, !20}
!47 = !{i32 6, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 6, i8 0, !41}
!48 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 7, i8 0, !41}
!49 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 8, i8 0, !41}
!50 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 9, i8 0, !22}
!51 = !{!52, !54}
!52 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !53, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!53 = !{i32 0, i32 1, i32 2}
!54 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!55 = !{i32 0, i64 16, i32 2, !56}
!56 = !{i32 2, i32 3}

