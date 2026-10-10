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
; DISPLACEMENT             2   x           5     NONE    uint   x   
; TESSFACTORS_OFFSET       0    y          5     NONE    uint       
; TRANSIENT_INDEX          0     z         5     NONE    uint     z 
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
; shader hash: ddb342fc78c2bfe73bb3ec3588562196
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
; Number of inputs: 23, outputs: 37, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 12, 13, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 12, 13, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 12, 13, 18, 19, 20 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 12, 13, 18, 19, 20 }
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
;   output 36 depends on inputs: { 22 }
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
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = and i32 %11, 255
  %29 = uitofp i32 %28 to float
  %30 = lshr i32 %11, 8
  %31 = and i32 %30, 255
  %32 = uitofp i32 %31 to float
  %33 = lshr i32 %11, 16
  %34 = and i32 %33, 255
  %35 = uitofp i32 %34 to float
  %36 = uitofp i32 %20 to float
  %37 = lshr i32 %21, 30
  %38 = and i32 %21, 1023
  %39 = uitofp i32 %38 to float
  %40 = fdiv float %39, 1.023000e+03
  %41 = lshr i32 %21, 10
  %42 = and i32 %41, 1023
  %43 = uitofp i32 %42 to float
  %44 = fdiv float %43, 1.023000e+03
  %45 = lshr i32 %21, 20
  %46 = and i32 %45, 511
  %47 = uitofp i32 %46 to float
  %48 = fdiv float %47, 5.110000e+02
  %49 = fmul float %40, 2.000000e+00
  %50 = fmul float %44, 2.000000e+00
  %51 = fmul float %48, 2.000000e+00
  %52 = fadd float %49, -1.000000e+00
  %53 = fadd float %50, -1.000000e+00
  %54 = fadd float %51, -1.000000e+00
  %55 = fmul float %52, 0x3FE6A09E60000000
  %56 = fmul float %53, 0x3FE6A09E60000000
  %57 = fmul float %54, 0x3FE6A09E60000000
  %58 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %59 = call float @dx.op.unary.f32(i32 7, float %58), !dx.precise !26  ; Saturate(value)
  %60 = fsub float 1.000000e+00, %59
  %61 = call float @dx.op.unary.f32(i32 24, float %60), !dx.precise !26  ; Sqrt(value)
  %62 = icmp eq i32 %37, 0
  br i1 %62, label %69, label %63

; <label>:63                                      ; preds = %0
  %64 = icmp eq i32 %37, 1
  br i1 %64, label %69, label %65

; <label>:65                                      ; preds = %63
  %66 = icmp eq i32 %37, 2
  %67 = select i1 %66, float %61, float %57
  %68 = select i1 %66, float %57, float %61
  br label %69

; <label>:69                                      ; preds = %65, %63, %0
  %70 = phi float [ %61, %0 ], [ %55, %63 ], [ %55, %65 ]
  %71 = phi float [ %55, %0 ], [ %61, %63 ], [ %56, %65 ]
  %72 = phi float [ %56, %0 ], [ %56, %63 ], [ %67, %65 ]
  %73 = phi float [ %57, %0 ], [ %57, %63 ], [ %68, %65 ]
  %74 = and i32 %21, 536870912
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %75, float -1.000000e+00, float 1.000000e+00
  %77 = fmul float %71, 2.000000e+00
  %78 = fmul float %71, %77
  %79 = fsub float 1.000000e+00, %78
  %80 = fmul float %72, 2.000000e+00
  %81 = fmul float %72, %80
  %82 = fsub float %79, %81
  %83 = fmul float %70, 2.000000e+00
  %84 = fmul float %83, %72
  %85 = fmul float %77, %73
  %86 = fadd float %84, %85
  %87 = fmul float %83, %71
  %88 = fmul float %80, %73
  %89 = fadd float %87, %88
  %90 = fmul float %77, %72
  %91 = fmul float %83, %73
  %92 = fsub float %90, %91
  %93 = fsub float %84, %85
  %94 = fmul float %70, %83
  %95 = fsub float 1.000000e+00, %94
  %96 = fsub float %95, %78
  %97 = and i32 %22, 255
  %98 = uitofp i32 %97 to float
  %99 = fmul fast float %98, 0x3F80101020000000
  %100 = fadd fast float %99, -1.000000e+00
  %101 = lshr i32 %22, 8
  %102 = and i32 %101, 255
  %103 = uitofp i32 %102 to float
  %104 = fmul fast float %103, 0x3F80101020000000
  %105 = fadd fast float %104, -1.000000e+00
  %106 = lshr i32 %22, 16
  %107 = and i32 %106, 255
  %108 = uitofp i32 %107 to float
  %109 = fmul fast float %108, 0x3F80101020000000
  %110 = fadd fast float %109, -1.000000e+00
  %111 = lshr i32 %22, 24
  %112 = uitofp i32 %111 to float
  %113 = fmul fast float %112, 0x3F80101020000000
  %114 = fadd fast float %113, -1.000000e+00
  %115 = and i32 %23, 255
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %116, 0x3F80101020000000
  %118 = fadd fast float %117, -1.000000e+00
  %119 = lshr i32 %23, 8
  %120 = and i32 %119, 255
  %121 = uitofp i32 %120 to float
  %122 = fmul fast float %121, 0x3F80101020000000
  %123 = fadd fast float %122, -1.000000e+00
  %124 = lshr i32 %23, 16
  %125 = and i32 %124, 255
  %126 = uitofp i32 %125 to float
  %127 = fmul fast float %126, 0x3F80101020000000
  %128 = fadd fast float %127, -1.000000e+00
  %129 = lshr i32 %23, 24
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, 0x3F80101020000000
  %132 = fadd fast float %131, -1.000000e+00
  %133 = and i32 %24, 65535
  %134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %133), !dx.precise !26  ; LegacyF16ToF32(value)
  %135 = lshr i32 %24, 16
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135), !dx.precise !26  ; LegacyF16ToF32(value)
  %137 = and i32 %25, 65535
  %138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %137), !dx.precise !26  ; LegacyF16ToF32(value)
  %139 = lshr i32 %25, 16
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139), !dx.precise !26  ; LegacyF16ToF32(value)
  %141 = and i32 %26, 65535
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141), !dx.precise !26  ; LegacyF16ToF32(value)
  %143 = lshr i32 %26, 16
  %144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %143), !dx.precise !26  ; LegacyF16ToF32(value)
  %145 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %146 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %147 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %148 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %149 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %150 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %151 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %152 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %153 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %154 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %155 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %156 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %157 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %158 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %159 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %160 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %161 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %162 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %163 = and i32 %148, 255
  %164 = uitofp i32 %163 to float
  %165 = lshr i32 %148, 8
  %166 = and i32 %165, 255
  %167 = uitofp i32 %166 to float
  %168 = lshr i32 %148, 16
  %169 = and i32 %168, 255
  %170 = uitofp i32 %169 to float
  %171 = lshr i32 %157, 30
  %172 = and i32 %157, 1023
  %173 = uitofp i32 %172 to float
  %174 = fdiv float %173, 1.023000e+03
  %175 = lshr i32 %157, 10
  %176 = and i32 %175, 1023
  %177 = uitofp i32 %176 to float
  %178 = fdiv float %177, 1.023000e+03
  %179 = lshr i32 %157, 20
  %180 = and i32 %179, 511
  %181 = uitofp i32 %180 to float
  %182 = fdiv float %181, 5.110000e+02
  %183 = fmul float %174, 2.000000e+00
  %184 = fmul float %178, 2.000000e+00
  %185 = fmul float %182, 2.000000e+00
  %186 = fadd float %183, -1.000000e+00
  %187 = fadd float %184, -1.000000e+00
  %188 = fadd float %185, -1.000000e+00
  %189 = fmul float %186, 0x3FE6A09E60000000
  %190 = fmul float %187, 0x3FE6A09E60000000
  %191 = fmul float %188, 0x3FE6A09E60000000
  %192 = call float @dx.op.dot3.f32(i32 55, float %189, float %190, float %191, float %189, float %190, float %191), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %193 = call float @dx.op.unary.f32(i32 7, float %192), !dx.precise !26  ; Saturate(value)
  %194 = fsub float 1.000000e+00, %193
  %195 = call float @dx.op.unary.f32(i32 24, float %194), !dx.precise !26  ; Sqrt(value)
  %196 = icmp eq i32 %171, 0
  br i1 %196, label %203, label %197

; <label>:197                                     ; preds = %69
  %198 = icmp eq i32 %171, 1
  br i1 %198, label %203, label %199

; <label>:199                                     ; preds = %197
  %200 = icmp eq i32 %171, 2
  %201 = select i1 %200, float %195, float %191
  %202 = select i1 %200, float %191, float %195
  br label %203

; <label>:203                                     ; preds = %199, %197, %69
  %204 = phi float [ %195, %69 ], [ %189, %197 ], [ %189, %199 ]
  %205 = phi float [ %189, %69 ], [ %195, %197 ], [ %190, %199 ]
  %206 = phi float [ %190, %69 ], [ %190, %197 ], [ %201, %199 ]
  %207 = phi float [ %191, %69 ], [ %191, %197 ], [ %202, %199 ]
  %208 = fmul float %205, 2.000000e+00
  %209 = fmul float %205, %208
  %210 = fsub float 1.000000e+00, %209
  %211 = fmul float %206, 2.000000e+00
  %212 = fmul float %206, %211
  %213 = fsub float %210, %212
  %214 = fmul float %204, 2.000000e+00
  %215 = fmul float %214, %206
  %216 = fmul float %208, %207
  %217 = fadd float %215, %216
  %218 = fmul float %214, %205
  %219 = fmul float %211, %207
  %220 = fadd float %218, %219
  %221 = fmul float %208, %206
  %222 = fmul float %214, %207
  %223 = fsub float %221, %222
  %224 = fsub float %215, %216
  %225 = fmul float %204, %214
  %226 = fsub float 1.000000e+00, %225
  %227 = fsub float %226, %209
  %228 = and i32 %158, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F80101020000000
  %231 = fadd fast float %230, -1.000000e+00
  %232 = lshr i32 %158, 8
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F80101020000000
  %236 = fadd fast float %235, -1.000000e+00
  %237 = lshr i32 %158, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F80101020000000
  %241 = fadd fast float %240, -1.000000e+00
  %242 = lshr i32 %158, 24
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F80101020000000
  %245 = fadd fast float %244, -1.000000e+00
  %246 = and i32 %159, 255
  %247 = uitofp i32 %246 to float
  %248 = fmul fast float %247, 0x3F80101020000000
  %249 = fadd fast float %248, -1.000000e+00
  %250 = lshr i32 %159, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F80101020000000
  %254 = fadd fast float %253, -1.000000e+00
  %255 = lshr i32 %159, 16
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F80101020000000
  %259 = fadd fast float %258, -1.000000e+00
  %260 = lshr i32 %159, 24
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F80101020000000
  %263 = fadd fast float %262, -1.000000e+00
  %264 = and i32 %160, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264), !dx.precise !26  ; LegacyF16ToF32(value)
  %266 = lshr i32 %160, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266), !dx.precise !26  ; LegacyF16ToF32(value)
  %268 = and i32 %161, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268), !dx.precise !26  ; LegacyF16ToF32(value)
  %270 = lshr i32 %161, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270), !dx.precise !26  ; LegacyF16ToF32(value)
  %272 = and i32 %162, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272), !dx.precise !26  ; LegacyF16ToF32(value)
  %274 = lshr i32 %162, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274), !dx.precise !26  ; LegacyF16ToF32(value)
  %276 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %277 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %278 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %279 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %280 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %281 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %282 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %283 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %284 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %285 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %286 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %287 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %288 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %289 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %290 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %291 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %292 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %293 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %294 = and i32 %279, 255
  %295 = uitofp i32 %294 to float
  %296 = lshr i32 %279, 8
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = lshr i32 %279, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = lshr i32 %288, 30
  %303 = and i32 %288, 1023
  %304 = uitofp i32 %303 to float
  %305 = fdiv float %304, 1.023000e+03
  %306 = lshr i32 %288, 10
  %307 = and i32 %306, 1023
  %308 = uitofp i32 %307 to float
  %309 = fdiv float %308, 1.023000e+03
  %310 = lshr i32 %288, 20
  %311 = and i32 %310, 511
  %312 = uitofp i32 %311 to float
  %313 = fdiv float %312, 5.110000e+02
  %314 = fmul float %305, 2.000000e+00
  %315 = fmul float %309, 2.000000e+00
  %316 = fmul float %313, 2.000000e+00
  %317 = fadd float %314, -1.000000e+00
  %318 = fadd float %315, -1.000000e+00
  %319 = fadd float %316, -1.000000e+00
  %320 = fmul float %317, 0x3FE6A09E60000000
  %321 = fmul float %318, 0x3FE6A09E60000000
  %322 = fmul float %319, 0x3FE6A09E60000000
  %323 = call float @dx.op.dot3.f32(i32 55, float %320, float %321, float %322, float %320, float %321, float %322), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %324 = call float @dx.op.unary.f32(i32 7, float %323), !dx.precise !26  ; Saturate(value)
  %325 = fsub float 1.000000e+00, %324
  %326 = call float @dx.op.unary.f32(i32 24, float %325), !dx.precise !26  ; Sqrt(value)
  %327 = icmp eq i32 %302, 0
  br i1 %327, label %334, label %328

; <label>:328                                     ; preds = %203
  %329 = icmp eq i32 %302, 1
  br i1 %329, label %334, label %330

; <label>:330                                     ; preds = %328
  %331 = icmp eq i32 %302, 2
  %332 = select i1 %331, float %326, float %322
  %333 = select i1 %331, float %322, float %326
  br label %334

; <label>:334                                     ; preds = %330, %328, %203
  %335 = phi float [ %326, %203 ], [ %320, %328 ], [ %320, %330 ]
  %336 = phi float [ %320, %203 ], [ %326, %328 ], [ %321, %330 ]
  %337 = phi float [ %321, %203 ], [ %321, %328 ], [ %332, %330 ]
  %338 = phi float [ %322, %203 ], [ %322, %328 ], [ %333, %330 ]
  %339 = fmul float %336, 2.000000e+00
  %340 = fmul float %336, %339
  %341 = fsub float 1.000000e+00, %340
  %342 = fmul float %337, 2.000000e+00
  %343 = fmul float %337, %342
  %344 = fsub float %341, %343
  %345 = fmul float %335, 2.000000e+00
  %346 = fmul float %345, %337
  %347 = fmul float %339, %338
  %348 = fadd float %346, %347
  %349 = fmul float %345, %336
  %350 = fmul float %342, %338
  %351 = fadd float %349, %350
  %352 = fmul float %339, %337
  %353 = fmul float %345, %338
  %354 = fsub float %352, %353
  %355 = fsub float %346, %347
  %356 = fmul float %335, %345
  %357 = fsub float 1.000000e+00, %356
  %358 = fsub float %357, %340
  %359 = and i32 %289, 255
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3F80101020000000
  %362 = fadd fast float %361, -1.000000e+00
  %363 = lshr i32 %289, 8
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F80101020000000
  %367 = fadd fast float %366, -1.000000e+00
  %368 = lshr i32 %289, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F80101020000000
  %372 = fadd fast float %371, -1.000000e+00
  %373 = lshr i32 %289, 24
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F80101020000000
  %376 = fadd fast float %375, -1.000000e+00
  %377 = and i32 %290, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F80101020000000
  %380 = fadd fast float %379, -1.000000e+00
  %381 = lshr i32 %290, 8
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F80101020000000
  %385 = fadd fast float %384, -1.000000e+00
  %386 = lshr i32 %290, 16
  %387 = and i32 %386, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F80101020000000
  %390 = fadd fast float %389, -1.000000e+00
  %391 = lshr i32 %290, 24
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F80101020000000
  %394 = fadd fast float %393, -1.000000e+00
  %395 = and i32 %291, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395), !dx.precise !26  ; LegacyF16ToF32(value)
  %397 = lshr i32 %291, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397), !dx.precise !26  ; LegacyF16ToF32(value)
  %399 = and i32 %292, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399), !dx.precise !26  ; LegacyF16ToF32(value)
  %401 = lshr i32 %292, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401), !dx.precise !26  ; LegacyF16ToF32(value)
  %403 = and i32 %293, 65535
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403), !dx.precise !26  ; LegacyF16ToF32(value)
  %405 = lshr i32 %293, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405), !dx.precise !26  ; LegacyF16ToF32(value)
  %407 = fmul float %5, %8
  %408 = fmul float %5, %9
  %409 = fmul float %5, %10
  %410 = fmul float %6, %145
  %411 = fmul float %6, %146
  %412 = fmul float %6, %147
  %413 = fadd float %407, %410
  %414 = fadd float %408, %411
  %415 = fadd float %409, %412
  %416 = fmul float %7, %276
  %417 = fmul float %7, %277
  %418 = fmul float %7, %278
  %419 = fadd float %413, %416
  %420 = fadd float %414, %417
  %421 = fadd float %415, %418
  %422 = fmul fast float %29, %5
  %423 = fmul fast float %164, %6
  %424 = fmul fast float %295, %7
  %425 = fadd fast float %423, %422
  %426 = fadd fast float %425, %424
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = fmul fast float %32, %5
  %429 = fmul fast float %167, %6
  %430 = fmul fast float %298, %7
  %431 = fadd fast float %429, %428
  %432 = fadd fast float %431, %430
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = fmul fast float %35, %5
  %435 = fmul fast float %170, %6
  %436 = fmul fast float %301, %7
  %437 = fadd fast float %435, %434
  %438 = fadd fast float %437, %436
  %439 = fmul fast float %438, 0x3F70101020000000
  %440 = fmul float %5, %12
  %441 = fmul float %5, %13
  %442 = fmul float %6, %149
  %443 = fmul float %6, %150
  %444 = fadd float %440, %442
  %445 = fadd float %441, %443
  %446 = fmul float %7, %280
  %447 = fmul float %7, %281
  %448 = fadd float %444, %446
  %449 = fadd float %445, %447
  %450 = fmul float %5, %14
  %451 = fmul float %5, %15
  %452 = fmul float %6, %151
  %453 = fmul float %6, %152
  %454 = fadd float %450, %452
  %455 = fadd float %451, %453
  %456 = fmul float %7, %282
  %457 = fmul float %7, %283
  %458 = fadd float %454, %456
  %459 = fadd float %455, %457
  %460 = fmul float %5, %16
  %461 = fmul float %5, %17
  %462 = fmul float %6, %153
  %463 = fmul float %6, %154
  %464 = fadd float %460, %462
  %465 = fadd float %461, %463
  %466 = fmul float %7, %284
  %467 = fmul float %7, %285
  %468 = fadd float %464, %466
  %469 = fadd float %465, %467
  %470 = fmul fast float %18, %5
  %471 = fmul fast float %19, %5
  %472 = fmul fast float %155, %6
  %473 = fmul fast float %156, %6
  %474 = fadd fast float %472, %470
  %475 = fadd fast float %473, %471
  %476 = fmul fast float %286, %7
  %477 = fmul fast float %287, %7
  %478 = fadd fast float %474, %476
  %479 = fadd fast float %475, %477
  %480 = fmul float %5, %86
  %481 = fmul float %5, %92
  %482 = fmul float %5, %96
  %483 = fmul float %6, %217
  %484 = fmul float %6, %223
  %485 = fmul float %6, %227
  %486 = fadd float %480, %483
  %487 = fadd float %481, %484
  %488 = fadd float %482, %485
  %489 = fmul float %7, %348
  %490 = fmul float %7, %354
  %491 = fmul float %7, %358
  %492 = fadd float %486, %489
  %493 = fadd float %487, %490
  %494 = fadd float %488, %491
  %495 = fmul fast float %82, %5
  %496 = fmul fast float %89, %5
  %497 = fmul fast float %93, %5
  %498 = fmul fast float %213, %6
  %499 = fmul fast float %220, %6
  %500 = fmul fast float %224, %6
  %501 = fadd fast float %498, %495
  %502 = fadd fast float %499, %496
  %503 = fadd fast float %500, %497
  %504 = fmul fast float %344, %7
  %505 = fmul fast float %351, %7
  %506 = fmul fast float %355, %7
  %507 = fadd fast float %501, %504
  %508 = fadd fast float %502, %505
  %509 = fadd fast float %503, %506
  %510 = fmul fast float %100, %5
  %511 = fmul fast float %105, %5
  %512 = fmul fast float %110, %5
  %513 = fmul fast float %114, %5
  %514 = fmul fast float %231, %6
  %515 = fmul fast float %236, %6
  %516 = fmul fast float %241, %6
  %517 = fmul fast float %245, %6
  %518 = fadd fast float %514, %510
  %519 = fadd fast float %515, %511
  %520 = fadd fast float %516, %512
  %521 = fadd fast float %517, %513
  %522 = fmul fast float %362, %7
  %523 = fmul fast float %367, %7
  %524 = fmul fast float %372, %7
  %525 = fmul fast float %376, %7
  %526 = fadd fast float %518, %522
  %527 = fadd fast float %519, %523
  %528 = fadd fast float %520, %524
  %529 = fadd fast float %521, %525
  %530 = fmul fast float %118, %5
  %531 = fmul fast float %123, %5
  %532 = fmul fast float %128, %5
  %533 = fmul fast float %132, %5
  %534 = fmul fast float %249, %6
  %535 = fmul fast float %254, %6
  %536 = fmul fast float %259, %6
  %537 = fmul fast float %263, %6
  %538 = fadd fast float %534, %530
  %539 = fadd fast float %535, %531
  %540 = fadd fast float %536, %532
  %541 = fadd fast float %537, %533
  %542 = fmul fast float %380, %7
  %543 = fmul fast float %385, %7
  %544 = fmul fast float %390, %7
  %545 = fmul fast float %394, %7
  %546 = fadd fast float %538, %542
  %547 = fadd fast float %539, %543
  %548 = fadd fast float %540, %544
  %549 = fadd fast float %541, %545
  %550 = fmul float %5, %134
  %551 = fmul float %6, %265
  %552 = fadd float %550, %551
  %553 = fmul float %7, %396
  %554 = fadd float %552, %553
  %555 = fmul float %5, %136
  %556 = fmul float %6, %267
  %557 = fadd float %555, %556
  %558 = fmul float %7, %398
  %559 = fadd float %557, %558
  %560 = fmul float %5, %138
  %561 = fmul float %6, %269
  %562 = fadd float %560, %561
  %563 = fmul float %7, %400
  %564 = fadd float %562, %563
  %565 = fmul float %5, %140
  %566 = fmul float %6, %271
  %567 = fadd float %565, %566
  %568 = fmul float %7, %402
  %569 = fadd float %567, %568
  %570 = fmul float %5, %142
  %571 = fmul float %6, %273
  %572 = fadd float %570, %571
  %573 = fmul float %7, %404
  %574 = fadd float %572, %573
  %575 = fmul float %5, %144
  %576 = fmul float %6, %275
  %577 = fadd float %575, %576
  %578 = fmul float %7, %406
  %579 = fadd float %577, %578
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %584 = fsub float %419, %581
  %585 = fsub float %420, %582
  %586 = fsub float %421, %583
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %592 = fmul float %584, %588
  %593 = call float @dx.op.tertiary.f32(i32 46, float %585, float %589, float %592), !dx.precise !26  ; FMad(a,b,c)
  %594 = call float @dx.op.tertiary.f32(i32 46, float %586, float %590, float %593), !dx.precise !26  ; FMad(a,b,c)
  %595 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %591, float %594), !dx.precise !26  ; FMad(a,b,c)
  %596 = call float @dx.op.binary.f32(i32 35, float %595, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 0
  %599 = extractvalue %dx.types.CBufRet.f32 %597, 1
  %600 = extractvalue %dx.types.CBufRet.f32 %597, 2
  %601 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %602 = fmul float %598, 0.000000e+00
  %603 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %599, float %602), !dx.precise !26  ; FMad(a,b,c)
  %604 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %600, float %603), !dx.precise !26  ; FMad(a,b,c)
  %605 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %601, float %604), !dx.precise !26  ; FMad(a,b,c)
  %606 = fdiv float %596, %605
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = fdiv float %606, %608
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 412, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = add i32 %611, 0
  %613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 1
  %616 = bitcast i32 %615 to float
  %617 = extractvalue %dx.types.ResRet.i32 %614, 0
  %618 = bitcast i32 %617 to float
  %619 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %613, i32 0)  ; GetDimensions(handle,mipLevel)
  %620 = extractvalue %dx.types.Dimensions %619, 0
  %621 = sitofp i32 %620 to float
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %624 = call float @dx.op.unary.f32(i32 6, float %623), !dx.precise !26  ; FAbs(value)
  %625 = fmul float %554, %624
  %626 = fcmp olt float %623, 0.000000e+00
  %627 = fmul float %559, 2.560000e+02
  %628 = fdiv float %625, %627
  %629 = select i1 %626, float %628, float %625
  %630 = fmul float %559, %621
  %631 = fmul float %609, %630
  %632 = call float @dx.op.unary.f32(i32 23, float %631), !dx.precise !26  ; Log(value)
  %633 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %634 = fadd float %632, %633
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %613, %dx.types.Handle %2, float %448, float %449, float undef, float undef, i32 0, i32 0, i32 undef, float %634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = fmul float %618, %636
  %638 = fadd float %616, %637
  %639 = fmul float %629, %638
  %640 = fadd float %639, 0.000000e+00
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 1
  %643 = bitcast i32 %642 to float
  %644 = extractvalue %dx.types.ResRet.i32 %641, 0
  %645 = bitcast i32 %644 to float
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 416, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = add i32 %647, 0
  %649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %650 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %649, i32 0)  ; GetDimensions(handle,mipLevel)
  %651 = extractvalue %dx.types.Dimensions %650, 0
  %652 = sitofp i32 %651 to float
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %655 = call float @dx.op.unary.f32(i32 6, float %654), !dx.precise !26  ; FAbs(value)
  %656 = fmul float %564, %655
  %657 = fcmp olt float %654, 0.000000e+00
  %658 = fmul float %569, 2.560000e+02
  %659 = fdiv float %656, %658
  %660 = select i1 %657, float %659, float %656
  %661 = fmul float %569, %652
  %662 = fmul float %609, %661
  %663 = call float @dx.op.unary.f32(i32 23, float %662), !dx.precise !26  ; Log(value)
  %664 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %665 = fadd float %663, %664
  %666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %649, %dx.types.Handle %2, float %458, float %459, float undef, float undef, i32 0, i32 0, i32 undef, float %665)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = fmul float %645, %667
  %669 = fadd float %643, %668
  %670 = fmul float %660, %669
  %671 = fadd float %640, %670
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 296, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 1
  %674 = bitcast i32 %673 to float
  %675 = extractvalue %dx.types.ResRet.i32 %672, 0
  %676 = bitcast i32 %675 to float
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 420, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %680, i32 0)  ; GetDimensions(handle,mipLevel)
  %682 = extractvalue %dx.types.Dimensions %681, 0
  %683 = sitofp i32 %682 to float
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %686 = call float @dx.op.unary.f32(i32 6, float %685), !dx.precise !26  ; FAbs(value)
  %687 = fmul float %574, %686
  %688 = fcmp olt float %685, 0.000000e+00
  %689 = fmul float %579, 2.560000e+02
  %690 = fdiv float %687, %689
  %691 = select i1 %688, float %690, float %687
  %692 = fmul float %579, %683
  %693 = fmul float %609, %692
  %694 = call float @dx.op.unary.f32(i32 23, float %693), !dx.precise !26  ; Log(value)
  %695 = extractvalue %dx.types.CBufRet.f32 %684, 1
  %696 = fadd float %694, %695
  %697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %680, %dx.types.Handle %2, float %468, float %469, float undef, float undef, i32 0, i32 0, i32 undef, float %696)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = fmul float %676, %698
  %700 = fadd float %674, %699
  %701 = fmul float %691, %700
  %702 = fadd float %671, %701
  %703 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float %492, float %493, float %494), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.unary.f32(i32 25, float %703), !dx.precise !26  ; Rsqrt(value)
  %705 = fmul float %492, %704
  %706 = fmul float %493, %704
  %707 = fmul float %494, %704
  %708 = fmul float %705, %702
  %709 = fmul float %706, %702
  %710 = fmul float %707, %702
  %711 = fadd float %419, %708
  %712 = fadd float %420, %709
  %713 = fadd float %421, %710
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = fsub float %711, %715
  %719 = fsub float %712, %716
  %720 = fsub float %713, %717
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %724 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %725 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  %728 = extractvalue %dx.types.CBufRet.f32 %726, 1
  %729 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %735 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 1
  %739 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %740 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %741 = fmul float %722, %718
  %742 = call float @dx.op.tertiary.f32(i32 46, float %719, float %723, float %741), !dx.precise !26  ; FMad(a,b,c)
  %743 = call float @dx.op.tertiary.f32(i32 46, float %720, float %724, float %742), !dx.precise !26  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %725, float %743), !dx.precise !26  ; FMad(a,b,c)
  %745 = fmul float %727, %718
  %746 = call float @dx.op.tertiary.f32(i32 46, float %719, float %728, float %745), !dx.precise !26  ; FMad(a,b,c)
  %747 = call float @dx.op.tertiary.f32(i32 46, float %720, float %729, float %746), !dx.precise !26  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %730, float %747), !dx.precise !26  ; FMad(a,b,c)
  %749 = fmul float %732, %718
  %750 = call float @dx.op.tertiary.f32(i32 46, float %719, float %733, float %749), !dx.precise !26  ; FMad(a,b,c)
  %751 = call float @dx.op.tertiary.f32(i32 46, float %720, float %734, float %750), !dx.precise !26  ; FMad(a,b,c)
  %752 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %735, float %751), !dx.precise !26  ; FMad(a,b,c)
  %753 = fmul float %718, %737
  %754 = call float @dx.op.tertiary.f32(i32 46, float %719, float %738, float %753), !dx.precise !26  ; FMad(a,b,c)
  %755 = call float @dx.op.tertiary.f32(i32 46, float %720, float %739, float %754), !dx.precise !26  ; FMad(a,b,c)
  %756 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %740, float %755), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %744)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %748)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %752)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %756)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %433)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %439)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %449)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %458)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %468)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %469)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %479)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %36)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %494)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %507)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %76)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %526)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %527)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 0, float %546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 1, float %547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 2, float %548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 3, float %549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 9, i32 0, i8 0, i32 %27)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[75 x i32] [i32 23, i32 37, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 112, i32 0, i32 262144, i32 0, i32 258998287, i32 0, i32 -268435456, i32 0, i32 271, i32 0, i32 527, i32 0, i32 1039, i32 0, i32 2063, i32 0, i32 4111, i32 0, i32 8207, i32 0, i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 15, i32 0, i32 0, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 16, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !57}
!16 = !{!17, !41, !53}
!17 = !{!18, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40}
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
!38 = !{i32 13, !"DISPLACEMENT", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 5, i8 0, !22}
!39 = !{i32 14, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 1, null}
!40 = !{i32 15, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 2, !22}
!41 = !{!42, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!42 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !43}
!43 = !{i32 3, i32 15}
!44 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !43}
!45 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !43}
!46 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 3, i8 0, !43}
!47 = !{i32 4, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!48 = !{i32 5, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 5, i8 0, !20}
!49 = !{i32 6, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 6, i8 0, !43}
!50 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 7, i8 0, !43}
!51 = !{i32 8, !"NORMAL_TRANSFORM", i8 9, i8 0, !28, i8 2, i32 1, i8 4, i32 8, i8 0, !43}
!52 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 9, i8 0, !22}
!53 = !{!54, !56}
!54 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !55, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!55 = !{i32 0, i32 1, i32 2}
!56 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!57 = !{i32 0, i64 16, i32 2, !58}
!58 = !{i32 2, i32 3}

