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
; DISPLACEMENT             0     z         4     NONE    uint     z 
; DISPLACEMENT             1      w        4     NONE    uint      w
; TESSFACTORS_OFFSET       0   x           5     NONE    uint       
; TRANSIENT_INDEX          0    y          5     NONE    uint    y  
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
; shader hash: 534bf7fc819f239511e3f72054dd097c
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
; DISPLACEMENT             0        nointerpolation       
; DISPLACEMENT             1        nointerpolation       
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
; Number of inputs: 22, outputs: 37, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 18, 19 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 18, 19 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 18, 19 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 18, 19 }
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
;   output 36 depends on inputs: { 21 }
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
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = and i32 %11, 255
  %28 = uitofp i32 %27 to float
  %29 = lshr i32 %11, 8
  %30 = and i32 %29, 255
  %31 = uitofp i32 %30 to float
  %32 = lshr i32 %11, 16
  %33 = and i32 %32, 255
  %34 = uitofp i32 %33 to float
  %35 = uitofp i32 %20 to float
  %36 = lshr i32 %21, 30
  %37 = and i32 %21, 1023
  %38 = uitofp i32 %37 to float
  %39 = fdiv float %38, 1.023000e+03
  %40 = lshr i32 %21, 10
  %41 = and i32 %40, 1023
  %42 = uitofp i32 %41 to float
  %43 = fdiv float %42, 1.023000e+03
  %44 = lshr i32 %21, 20
  %45 = and i32 %44, 511
  %46 = uitofp i32 %45 to float
  %47 = fdiv float %46, 5.110000e+02
  %48 = fmul float %39, 2.000000e+00
  %49 = fmul float %43, 2.000000e+00
  %50 = fmul float %47, 2.000000e+00
  %51 = fadd float %48, -1.000000e+00
  %52 = fadd float %49, -1.000000e+00
  %53 = fadd float %50, -1.000000e+00
  %54 = fmul float %51, 0x3FE6A09E60000000
  %55 = fmul float %52, 0x3FE6A09E60000000
  %56 = fmul float %53, 0x3FE6A09E60000000
  %57 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %58 = call float @dx.op.unary.f32(i32 7, float %57), !dx.precise !26  ; Saturate(value)
  %59 = fsub float 1.000000e+00, %58
  %60 = call float @dx.op.unary.f32(i32 24, float %59), !dx.precise !26  ; Sqrt(value)
  %61 = icmp eq i32 %36, 0
  br i1 %61, label %68, label %62

; <label>:62                                      ; preds = %0
  %63 = icmp eq i32 %36, 1
  br i1 %63, label %68, label %64

; <label>:64                                      ; preds = %62
  %65 = icmp eq i32 %36, 2
  %66 = select i1 %65, float %60, float %56
  %67 = select i1 %65, float %56, float %60
  br label %68

; <label>:68                                      ; preds = %64, %62, %0
  %69 = phi float [ %60, %0 ], [ %54, %62 ], [ %54, %64 ]
  %70 = phi float [ %54, %0 ], [ %60, %62 ], [ %55, %64 ]
  %71 = phi float [ %55, %0 ], [ %55, %62 ], [ %66, %64 ]
  %72 = phi float [ %56, %0 ], [ %56, %62 ], [ %67, %64 ]
  %73 = and i32 %21, 536870912
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %74, float -1.000000e+00, float 1.000000e+00
  %76 = fmul float %70, 2.000000e+00
  %77 = fmul float %70, %76
  %78 = fsub float 1.000000e+00, %77
  %79 = fmul float %71, 2.000000e+00
  %80 = fmul float %71, %79
  %81 = fsub float %78, %80
  %82 = fmul float %69, 2.000000e+00
  %83 = fmul float %82, %71
  %84 = fmul float %76, %72
  %85 = fadd float %83, %84
  %86 = fmul float %82, %70
  %87 = fmul float %79, %72
  %88 = fadd float %86, %87
  %89 = fmul float %76, %71
  %90 = fmul float %82, %72
  %91 = fsub float %89, %90
  %92 = fsub float %83, %84
  %93 = fmul float %69, %82
  %94 = fsub float 1.000000e+00, %93
  %95 = fsub float %94, %77
  %96 = and i32 %22, 255
  %97 = uitofp i32 %96 to float
  %98 = fmul fast float %97, 0x3F80101020000000
  %99 = fadd fast float %98, -1.000000e+00
  %100 = lshr i32 %22, 8
  %101 = and i32 %100, 255
  %102 = uitofp i32 %101 to float
  %103 = fmul fast float %102, 0x3F80101020000000
  %104 = fadd fast float %103, -1.000000e+00
  %105 = lshr i32 %22, 16
  %106 = and i32 %105, 255
  %107 = uitofp i32 %106 to float
  %108 = fmul fast float %107, 0x3F80101020000000
  %109 = fadd fast float %108, -1.000000e+00
  %110 = lshr i32 %22, 24
  %111 = uitofp i32 %110 to float
  %112 = fmul fast float %111, 0x3F80101020000000
  %113 = fadd fast float %112, -1.000000e+00
  %114 = and i32 %23, 255
  %115 = uitofp i32 %114 to float
  %116 = fmul fast float %115, 0x3F80101020000000
  %117 = fadd fast float %116, -1.000000e+00
  %118 = lshr i32 %23, 8
  %119 = and i32 %118, 255
  %120 = uitofp i32 %119 to float
  %121 = fmul fast float %120, 0x3F80101020000000
  %122 = fadd fast float %121, -1.000000e+00
  %123 = lshr i32 %23, 16
  %124 = and i32 %123, 255
  %125 = uitofp i32 %124 to float
  %126 = fmul fast float %125, 0x3F80101020000000
  %127 = fadd fast float %126, -1.000000e+00
  %128 = lshr i32 %23, 24
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %129, 0x3F80101020000000
  %131 = fadd fast float %130, -1.000000e+00
  %132 = and i32 %24, 65535
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132), !dx.precise !26  ; LegacyF16ToF32(value)
  %134 = lshr i32 %24, 16
  %135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %134), !dx.precise !26  ; LegacyF16ToF32(value)
  %136 = and i32 %25, 65535
  %137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %136), !dx.precise !26  ; LegacyF16ToF32(value)
  %138 = lshr i32 %25, 16
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138), !dx.precise !26  ; LegacyF16ToF32(value)
  %140 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %141 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %142 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %143 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %144 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %145 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %146 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %147 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %148 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %149 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %150 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %151 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %152 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %153 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %154 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %155 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %156 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %157 = and i32 %143, 255
  %158 = uitofp i32 %157 to float
  %159 = lshr i32 %143, 8
  %160 = and i32 %159, 255
  %161 = uitofp i32 %160 to float
  %162 = lshr i32 %143, 16
  %163 = and i32 %162, 255
  %164 = uitofp i32 %163 to float
  %165 = lshr i32 %152, 30
  %166 = and i32 %152, 1023
  %167 = uitofp i32 %166 to float
  %168 = fdiv float %167, 1.023000e+03
  %169 = lshr i32 %152, 10
  %170 = and i32 %169, 1023
  %171 = uitofp i32 %170 to float
  %172 = fdiv float %171, 1.023000e+03
  %173 = lshr i32 %152, 20
  %174 = and i32 %173, 511
  %175 = uitofp i32 %174 to float
  %176 = fdiv float %175, 5.110000e+02
  %177 = fmul float %168, 2.000000e+00
  %178 = fmul float %172, 2.000000e+00
  %179 = fmul float %176, 2.000000e+00
  %180 = fadd float %177, -1.000000e+00
  %181 = fadd float %178, -1.000000e+00
  %182 = fadd float %179, -1.000000e+00
  %183 = fmul float %180, 0x3FE6A09E60000000
  %184 = fmul float %181, 0x3FE6A09E60000000
  %185 = fmul float %182, 0x3FE6A09E60000000
  %186 = call float @dx.op.dot3.f32(i32 55, float %183, float %184, float %185, float %183, float %184, float %185), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %187 = call float @dx.op.unary.f32(i32 7, float %186), !dx.precise !26  ; Saturate(value)
  %188 = fsub float 1.000000e+00, %187
  %189 = call float @dx.op.unary.f32(i32 24, float %188), !dx.precise !26  ; Sqrt(value)
  %190 = icmp eq i32 %165, 0
  br i1 %190, label %197, label %191

; <label>:191                                     ; preds = %68
  %192 = icmp eq i32 %165, 1
  br i1 %192, label %197, label %193

; <label>:193                                     ; preds = %191
  %194 = icmp eq i32 %165, 2
  %195 = select i1 %194, float %189, float %185
  %196 = select i1 %194, float %185, float %189
  br label %197

; <label>:197                                     ; preds = %193, %191, %68
  %198 = phi float [ %189, %68 ], [ %183, %191 ], [ %183, %193 ]
  %199 = phi float [ %183, %68 ], [ %189, %191 ], [ %184, %193 ]
  %200 = phi float [ %184, %68 ], [ %184, %191 ], [ %195, %193 ]
  %201 = phi float [ %185, %68 ], [ %185, %191 ], [ %196, %193 ]
  %202 = fmul float %199, 2.000000e+00
  %203 = fmul float %199, %202
  %204 = fsub float 1.000000e+00, %203
  %205 = fmul float %200, 2.000000e+00
  %206 = fmul float %200, %205
  %207 = fsub float %204, %206
  %208 = fmul float %198, 2.000000e+00
  %209 = fmul float %208, %200
  %210 = fmul float %202, %201
  %211 = fadd float %209, %210
  %212 = fmul float %208, %199
  %213 = fmul float %205, %201
  %214 = fadd float %212, %213
  %215 = fmul float %202, %200
  %216 = fmul float %208, %201
  %217 = fsub float %215, %216
  %218 = fsub float %209, %210
  %219 = fmul float %198, %208
  %220 = fsub float 1.000000e+00, %219
  %221 = fsub float %220, %203
  %222 = and i32 %153, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F80101020000000
  %225 = fadd fast float %224, -1.000000e+00
  %226 = lshr i32 %153, 8
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F80101020000000
  %230 = fadd fast float %229, -1.000000e+00
  %231 = lshr i32 %153, 16
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F80101020000000
  %235 = fadd fast float %234, -1.000000e+00
  %236 = lshr i32 %153, 24
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F80101020000000
  %239 = fadd fast float %238, -1.000000e+00
  %240 = and i32 %154, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F80101020000000
  %243 = fadd fast float %242, -1.000000e+00
  %244 = lshr i32 %154, 8
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F80101020000000
  %248 = fadd fast float %247, -1.000000e+00
  %249 = lshr i32 %154, 16
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F80101020000000
  %253 = fadd fast float %252, -1.000000e+00
  %254 = lshr i32 %154, 24
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F80101020000000
  %257 = fadd fast float %256, -1.000000e+00
  %258 = and i32 %155, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258), !dx.precise !26  ; LegacyF16ToF32(value)
  %260 = lshr i32 %155, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260), !dx.precise !26  ; LegacyF16ToF32(value)
  %262 = and i32 %156, 65535
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262), !dx.precise !26  ; LegacyF16ToF32(value)
  %264 = lshr i32 %156, 16
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264), !dx.precise !26  ; LegacyF16ToF32(value)
  %266 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %267 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %268 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %269 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %270 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %271 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %272 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %273 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %274 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %275 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %276 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %277 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %278 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %279 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %280 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %281 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %282 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %283 = and i32 %269, 255
  %284 = uitofp i32 %283 to float
  %285 = lshr i32 %269, 8
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = lshr i32 %269, 16
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = lshr i32 %278, 30
  %292 = and i32 %278, 1023
  %293 = uitofp i32 %292 to float
  %294 = fdiv float %293, 1.023000e+03
  %295 = lshr i32 %278, 10
  %296 = and i32 %295, 1023
  %297 = uitofp i32 %296 to float
  %298 = fdiv float %297, 1.023000e+03
  %299 = lshr i32 %278, 20
  %300 = and i32 %299, 511
  %301 = uitofp i32 %300 to float
  %302 = fdiv float %301, 5.110000e+02
  %303 = fmul float %294, 2.000000e+00
  %304 = fmul float %298, 2.000000e+00
  %305 = fmul float %302, 2.000000e+00
  %306 = fadd float %303, -1.000000e+00
  %307 = fadd float %304, -1.000000e+00
  %308 = fadd float %305, -1.000000e+00
  %309 = fmul float %306, 0x3FE6A09E60000000
  %310 = fmul float %307, 0x3FE6A09E60000000
  %311 = fmul float %308, 0x3FE6A09E60000000
  %312 = call float @dx.op.dot3.f32(i32 55, float %309, float %310, float %311, float %309, float %310, float %311), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %313 = call float @dx.op.unary.f32(i32 7, float %312), !dx.precise !26  ; Saturate(value)
  %314 = fsub float 1.000000e+00, %313
  %315 = call float @dx.op.unary.f32(i32 24, float %314), !dx.precise !26  ; Sqrt(value)
  %316 = icmp eq i32 %291, 0
  br i1 %316, label %323, label %317

; <label>:317                                     ; preds = %197
  %318 = icmp eq i32 %291, 1
  br i1 %318, label %323, label %319

; <label>:319                                     ; preds = %317
  %320 = icmp eq i32 %291, 2
  %321 = select i1 %320, float %315, float %311
  %322 = select i1 %320, float %311, float %315
  br label %323

; <label>:323                                     ; preds = %319, %317, %197
  %324 = phi float [ %315, %197 ], [ %309, %317 ], [ %309, %319 ]
  %325 = phi float [ %309, %197 ], [ %315, %317 ], [ %310, %319 ]
  %326 = phi float [ %310, %197 ], [ %310, %317 ], [ %321, %319 ]
  %327 = phi float [ %311, %197 ], [ %311, %317 ], [ %322, %319 ]
  %328 = fmul float %325, 2.000000e+00
  %329 = fmul float %325, %328
  %330 = fsub float 1.000000e+00, %329
  %331 = fmul float %326, 2.000000e+00
  %332 = fmul float %326, %331
  %333 = fsub float %330, %332
  %334 = fmul float %324, 2.000000e+00
  %335 = fmul float %334, %326
  %336 = fmul float %328, %327
  %337 = fadd float %335, %336
  %338 = fmul float %334, %325
  %339 = fmul float %331, %327
  %340 = fadd float %338, %339
  %341 = fmul float %328, %326
  %342 = fmul float %334, %327
  %343 = fsub float %341, %342
  %344 = fsub float %335, %336
  %345 = fmul float %324, %334
  %346 = fsub float 1.000000e+00, %345
  %347 = fsub float %346, %329
  %348 = and i32 %279, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F80101020000000
  %351 = fadd fast float %350, -1.000000e+00
  %352 = lshr i32 %279, 8
  %353 = and i32 %352, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F80101020000000
  %356 = fadd fast float %355, -1.000000e+00
  %357 = lshr i32 %279, 16
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F80101020000000
  %361 = fadd fast float %360, -1.000000e+00
  %362 = lshr i32 %279, 24
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F80101020000000
  %365 = fadd fast float %364, -1.000000e+00
  %366 = and i32 %280, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F80101020000000
  %369 = fadd fast float %368, -1.000000e+00
  %370 = lshr i32 %280, 8
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F80101020000000
  %374 = fadd fast float %373, -1.000000e+00
  %375 = lshr i32 %280, 16
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F80101020000000
  %379 = fadd fast float %378, -1.000000e+00
  %380 = lshr i32 %280, 24
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F80101020000000
  %383 = fadd fast float %382, -1.000000e+00
  %384 = and i32 %281, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384), !dx.precise !26  ; LegacyF16ToF32(value)
  %386 = lshr i32 %281, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386), !dx.precise !26  ; LegacyF16ToF32(value)
  %388 = and i32 %282, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388), !dx.precise !26  ; LegacyF16ToF32(value)
  %390 = lshr i32 %282, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390), !dx.precise !26  ; LegacyF16ToF32(value)
  %392 = fmul float %5, %8
  %393 = fmul float %5, %9
  %394 = fmul float %5, %10
  %395 = fmul float %6, %140
  %396 = fmul float %6, %141
  %397 = fmul float %6, %142
  %398 = fadd float %392, %395
  %399 = fadd float %393, %396
  %400 = fadd float %394, %397
  %401 = fmul float %7, %266
  %402 = fmul float %7, %267
  %403 = fmul float %7, %268
  %404 = fadd float %398, %401
  %405 = fadd float %399, %402
  %406 = fadd float %400, %403
  %407 = fmul fast float %28, %5
  %408 = fmul fast float %158, %6
  %409 = fmul fast float %284, %7
  %410 = fadd fast float %408, %407
  %411 = fadd fast float %410, %409
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = fmul fast float %31, %5
  %414 = fmul fast float %161, %6
  %415 = fmul fast float %287, %7
  %416 = fadd fast float %414, %413
  %417 = fadd fast float %416, %415
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = fmul fast float %34, %5
  %420 = fmul fast float %164, %6
  %421 = fmul fast float %290, %7
  %422 = fadd fast float %420, %419
  %423 = fadd fast float %422, %421
  %424 = fmul fast float %423, 0x3F70101020000000
  %425 = fmul float %5, %12
  %426 = fmul float %5, %13
  %427 = fmul float %6, %144
  %428 = fmul float %6, %145
  %429 = fadd float %425, %427
  %430 = fadd float %426, %428
  %431 = fmul float %7, %270
  %432 = fmul float %7, %271
  %433 = fadd float %429, %431
  %434 = fadd float %430, %432
  %435 = fmul float %5, %14
  %436 = fmul float %5, %15
  %437 = fmul float %6, %146
  %438 = fmul float %6, %147
  %439 = fadd float %435, %437
  %440 = fadd float %436, %438
  %441 = fmul float %7, %272
  %442 = fmul float %7, %273
  %443 = fadd float %439, %441
  %444 = fadd float %440, %442
  %445 = fmul float %5, %16
  %446 = fmul float %5, %17
  %447 = fmul float %6, %148
  %448 = fmul float %6, %149
  %449 = fadd float %445, %447
  %450 = fadd float %446, %448
  %451 = fmul float %7, %274
  %452 = fmul float %7, %275
  %453 = fadd float %449, %451
  %454 = fadd float %450, %452
  %455 = fmul fast float %18, %5
  %456 = fmul fast float %19, %5
  %457 = fmul fast float %150, %6
  %458 = fmul fast float %151, %6
  %459 = fadd fast float %457, %455
  %460 = fadd fast float %458, %456
  %461 = fmul fast float %276, %7
  %462 = fmul fast float %277, %7
  %463 = fadd fast float %459, %461
  %464 = fadd fast float %460, %462
  %465 = fmul float %5, %85
  %466 = fmul float %5, %91
  %467 = fmul float %5, %95
  %468 = fmul float %6, %211
  %469 = fmul float %6, %217
  %470 = fmul float %6, %221
  %471 = fadd float %465, %468
  %472 = fadd float %466, %469
  %473 = fadd float %467, %470
  %474 = fmul float %7, %337
  %475 = fmul float %7, %343
  %476 = fmul float %7, %347
  %477 = fadd float %471, %474
  %478 = fadd float %472, %475
  %479 = fadd float %473, %476
  %480 = fmul fast float %81, %5
  %481 = fmul fast float %88, %5
  %482 = fmul fast float %92, %5
  %483 = fmul fast float %207, %6
  %484 = fmul fast float %214, %6
  %485 = fmul fast float %218, %6
  %486 = fadd fast float %483, %480
  %487 = fadd fast float %484, %481
  %488 = fadd fast float %485, %482
  %489 = fmul fast float %333, %7
  %490 = fmul fast float %340, %7
  %491 = fmul fast float %344, %7
  %492 = fadd fast float %486, %489
  %493 = fadd fast float %487, %490
  %494 = fadd fast float %488, %491
  %495 = fmul fast float %99, %5
  %496 = fmul fast float %104, %5
  %497 = fmul fast float %109, %5
  %498 = fmul fast float %113, %5
  %499 = fmul fast float %225, %6
  %500 = fmul fast float %230, %6
  %501 = fmul fast float %235, %6
  %502 = fmul fast float %239, %6
  %503 = fadd fast float %499, %495
  %504 = fadd fast float %500, %496
  %505 = fadd fast float %501, %497
  %506 = fadd fast float %502, %498
  %507 = fmul fast float %351, %7
  %508 = fmul fast float %356, %7
  %509 = fmul fast float %361, %7
  %510 = fmul fast float %365, %7
  %511 = fadd fast float %503, %507
  %512 = fadd fast float %504, %508
  %513 = fadd fast float %505, %509
  %514 = fadd fast float %506, %510
  %515 = fmul fast float %117, %5
  %516 = fmul fast float %122, %5
  %517 = fmul fast float %127, %5
  %518 = fmul fast float %131, %5
  %519 = fmul fast float %243, %6
  %520 = fmul fast float %248, %6
  %521 = fmul fast float %253, %6
  %522 = fmul fast float %257, %6
  %523 = fadd fast float %519, %515
  %524 = fadd fast float %520, %516
  %525 = fadd fast float %521, %517
  %526 = fadd fast float %522, %518
  %527 = fmul fast float %369, %7
  %528 = fmul fast float %374, %7
  %529 = fmul fast float %379, %7
  %530 = fmul fast float %383, %7
  %531 = fadd fast float %523, %527
  %532 = fadd fast float %524, %528
  %533 = fadd fast float %525, %529
  %534 = fadd fast float %526, %530
  %535 = fmul float %5, %133
  %536 = fmul float %6, %259
  %537 = fadd float %535, %536
  %538 = fmul float %7, %385
  %539 = fadd float %537, %538
  %540 = fmul float %5, %135
  %541 = fmul float %6, %261
  %542 = fadd float %540, %541
  %543 = fmul float %7, %387
  %544 = fadd float %542, %543
  %545 = fmul float %5, %137
  %546 = fmul float %6, %263
  %547 = fadd float %545, %546
  %548 = fmul float %7, %389
  %549 = fadd float %547, %548
  %550 = fmul float %5, %139
  %551 = fmul float %6, %265
  %552 = fadd float %550, %551
  %553 = fmul float %7, %391
  %554 = fadd float %552, %553
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = fsub float %404, %556
  %560 = fsub float %405, %557
  %561 = fsub float %406, %558
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %567 = fmul float %559, %563
  %568 = call float @dx.op.tertiary.f32(i32 46, float %560, float %564, float %567), !dx.precise !26  ; FMad(a,b,c)
  %569 = call float @dx.op.tertiary.f32(i32 46, float %561, float %565, float %568), !dx.precise !26  ; FMad(a,b,c)
  %570 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %566, float %569), !dx.precise !26  ; FMad(a,b,c)
  %571 = call float @dx.op.binary.f32(i32 35, float %570, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %577 = fmul float %573, 0.000000e+00
  %578 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %574, float %577), !dx.precise !26  ; FMad(a,b,c)
  %579 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %575, float %578), !dx.precise !26  ; FMad(a,b,c)
  %580 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %576, float %579), !dx.precise !26  ; FMad(a,b,c)
  %581 = fdiv float %571, %580
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = fdiv float %581, %583
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 396, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = add i32 %586, 0
  %588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 1
  %591 = bitcast i32 %590 to float
  %592 = extractvalue %dx.types.ResRet.i32 %589, 0
  %593 = bitcast i32 %592 to float
  %594 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %588, i32 0)  ; GetDimensions(handle,mipLevel)
  %595 = extractvalue %dx.types.Dimensions %594, 0
  %596 = sitofp i32 %595 to float
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %599 = call float @dx.op.unary.f32(i32 6, float %598), !dx.precise !26  ; FAbs(value)
  %600 = fmul float %539, %599
  %601 = fcmp olt float %598, 0.000000e+00
  %602 = fmul float %544, 2.560000e+02
  %603 = fdiv float %600, %602
  %604 = select i1 %601, float %603, float %600
  %605 = fmul float %544, %596
  %606 = fmul float %584, %605
  %607 = call float @dx.op.unary.f32(i32 23, float %606), !dx.precise !26  ; Log(value)
  %608 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %609 = fadd float %607, %608
  %610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %588, %dx.types.Handle %2, float %433, float %434, float undef, float undef, i32 0, i32 0, i32 undef, float %609)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = fmul float %593, %611
  %613 = fadd float %591, %612
  %614 = fmul float %604, %613
  %615 = fadd float %614, 0.000000e+00
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 1
  %618 = bitcast i32 %617 to float
  %619 = extractvalue %dx.types.ResRet.i32 %616, 0
  %620 = bitcast i32 %619 to float
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 400, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %624, i32 0)  ; GetDimensions(handle,mipLevel)
  %626 = extractvalue %dx.types.Dimensions %625, 0
  %627 = sitofp i32 %626 to float
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %630 = call float @dx.op.unary.f32(i32 6, float %629), !dx.precise !26  ; FAbs(value)
  %631 = fmul float %549, %630
  %632 = fcmp olt float %629, 0.000000e+00
  %633 = fmul float %554, 2.560000e+02
  %634 = fdiv float %631, %633
  %635 = select i1 %632, float %634, float %631
  %636 = fmul float %554, %627
  %637 = fmul float %584, %636
  %638 = call float @dx.op.unary.f32(i32 23, float %637), !dx.precise !26  ; Log(value)
  %639 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %640 = fadd float %638, %639
  %641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %624, %dx.types.Handle %2, float %443, float %444, float undef, float undef, i32 0, i32 0, i32 undef, float %640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = fmul float %620, %642
  %644 = fadd float %618, %643
  %645 = fmul float %635, %644
  %646 = fadd float %615, %645
  %647 = call float @dx.op.dot3.f32(i32 55, float %477, float %478, float %479, float %477, float %478, float %479), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.unary.f32(i32 25, float %647), !dx.precise !26  ; Rsqrt(value)
  %649 = fmul float %477, %648
  %650 = fmul float %478, %648
  %651 = fmul float %479, %648
  %652 = fmul float %649, %646
  %653 = fmul float %650, %646
  %654 = fmul float %651, %646
  %655 = fadd float %404, %652
  %656 = fadd float %405, %653
  %657 = fadd float %406, %654
  %658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %659 = extractvalue %dx.types.CBufRet.f32 %658, 0
  %660 = extractvalue %dx.types.CBufRet.f32 %658, 1
  %661 = extractvalue %dx.types.CBufRet.f32 %658, 2
  %662 = fsub float %655, %659
  %663 = fsub float %656, %660
  %664 = fsub float %657, %661
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 0
  %667 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %668 = extractvalue %dx.types.CBufRet.f32 %665, 2
  %669 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %672 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %673 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %674 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %679 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 0
  %682 = extractvalue %dx.types.CBufRet.f32 %680, 1
  %683 = extractvalue %dx.types.CBufRet.f32 %680, 2
  %684 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %685 = fmul float %666, %662
  %686 = call float @dx.op.tertiary.f32(i32 46, float %663, float %667, float %685), !dx.precise !26  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %664, float %668, float %686), !dx.precise !26  ; FMad(a,b,c)
  %688 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %669, float %687), !dx.precise !26  ; FMad(a,b,c)
  %689 = fmul float %671, %662
  %690 = call float @dx.op.tertiary.f32(i32 46, float %663, float %672, float %689), !dx.precise !26  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %664, float %673, float %690), !dx.precise !26  ; FMad(a,b,c)
  %692 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %674, float %691), !dx.precise !26  ; FMad(a,b,c)
  %693 = fmul float %676, %662
  %694 = call float @dx.op.tertiary.f32(i32 46, float %663, float %677, float %693), !dx.precise !26  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float %664, float %678, float %694), !dx.precise !26  ; FMad(a,b,c)
  %696 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %679, float %695), !dx.precise !26  ; FMad(a,b,c)
  %697 = fmul float %662, %681
  %698 = call float @dx.op.tertiary.f32(i32 46, float %663, float %682, float %697), !dx.precise !26  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %664, float %683, float %698), !dx.precise !26  ; FMad(a,b,c)
  %700 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %684, float %699), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %688)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %692)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %696)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %700)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %412)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %424)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %433)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %434)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %443)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %444)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %453)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %463)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %464)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %35)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %477)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %479)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %494)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %75)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %511)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %512)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %514)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 0, float %531)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 1, float %532)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 2, float %533)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 3, float %534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 9, i32 0, i8 0, i32 %26)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[73 x i32] [i32 22, i32 37, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 112, i32 0, i32 262144, i32 0, i32 258998287, i32 0, i32 -268435456, i32 0, i32 271, i32 0, i32 527, i32 0, i32 1039, i32 0, i32 2063, i32 0, i32 4096, i32 0, i32 8192, i32 0, i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 15, i32 0, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 16, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !56}
!16 = !{!17, !40, !52}
!17 = !{!18, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39}
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
!36 = !{i32 11, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 2, !22}
!37 = !{i32 12, !"DISPLACEMENT", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 4, i8 3, !22}
!38 = !{i32 13, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 0, null}
!39 = !{i32 14, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 1, !22}
!40 = !{!41, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!41 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !42}
!45 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 3, i8 0, !42}
!46 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!47 = !{i32 5, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 5, i8 0, !20}
!48 = !{i32 6, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 6, i8 0, !42}
!49 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 7, i8 0, !42}
!50 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 8, i8 0, !42}
!51 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 9, i8 0, !22}
!52 = !{!53, !55}
!53 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !54, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!54 = !{i32 0, i32 1, i32 2}
!55 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!56 = !{i32 0, i64 16, i32 2, !57}
!57 = !{i32 2, i32 3}

