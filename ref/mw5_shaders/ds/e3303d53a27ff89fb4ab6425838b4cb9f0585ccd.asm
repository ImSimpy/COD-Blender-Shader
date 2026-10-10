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
; TEXCOORD                 3     zw        3     NONE   float     zw
; LIGHTING_TEXCOORD        0   xy          4     NONE   float   xy  
; NORMAL_TRANSFORM         2   x           5     NONE    uint   x   
; NORMAL_TRANSFORM         3    y          5     NONE    uint    y  
; DISPLACEMENT             2     z         5     NONE    uint     z 
; DISPLACEMENT             3      w        5     NONE    uint      w
; TESSFACTORS_OFFSET       0   x           6     NONE    uint       
; TRANSIENT_INDEX          0    y          6     NONE    uint    y  
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
; NORMAL_TRANSFORM         3   xyzw        9     NONE   float   xyzw
; TRANSIENT_INDEX          0   x          10     NONE    uint   x   
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
; shader hash: 53111604ae4fb983b13b72daad7ae501
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
; TEXCOORD                 3                 linear       
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
; TANGENT_FRAME            0        nointerpolation       
; NORMAL_TRANSFORM         1        nointerpolation       
; NORMAL_TRANSFORM         2        nointerpolation       
; NORMAL_TRANSFORM         3        nointerpolation       
; DISPLACEMENT             2        nointerpolation       
; DISPLACEMENT             3        nointerpolation       
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
; NORMAL_TRANSFORM         3                 linear       
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
; Number of inputs: 26, outputs: 41, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 12, 13, 14, 15, 22, 23 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 12, 13, 14, 15, 22, 23 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 12, 13, 14, 15, 22, 23 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 12, 13, 14, 15, 22, 23 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 6 depends on inputs: { 4 }
;   output 7 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10 }
;   output 11 depends on inputs: { 11 }
;   output 12 depends on inputs: { 12 }
;   output 13 depends on inputs: { 13 }
;   output 14 depends on inputs: { 14 }
;   output 15 depends on inputs: { 15 }
;   output 16 depends on inputs: { 16 }
;   output 17 depends on inputs: { 17 }
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
;   output 32 depends on inputs: { 20 }
;   output 33 depends on inputs: { 20 }
;   output 34 depends on inputs: { 20 }
;   output 35 depends on inputs: { 20 }
;   output 36 depends on inputs: { 21 }
;   output 37 depends on inputs: { 21 }
;   output 38 depends on inputs: { 21 }
;   output 39 depends on inputs: { 21 }
;   output 40 depends on inputs: { 25 }
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
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = and i32 %11, 255
  %31 = uitofp i32 %30 to float
  %32 = lshr i32 %11, 8
  %33 = and i32 %32, 255
  %34 = uitofp i32 %33 to float
  %35 = lshr i32 %11, 16
  %36 = and i32 %35, 255
  %37 = uitofp i32 %36 to float
  %38 = lshr i32 %11, 24
  %39 = uitofp i32 %38 to float
  %40 = uitofp i32 %22 to float
  %41 = lshr i32 %23, 30
  %42 = and i32 %23, 1023
  %43 = uitofp i32 %42 to float
  %44 = fdiv float %43, 1.023000e+03
  %45 = lshr i32 %23, 10
  %46 = and i32 %45, 1023
  %47 = uitofp i32 %46 to float
  %48 = fdiv float %47, 1.023000e+03
  %49 = lshr i32 %23, 20
  %50 = and i32 %49, 511
  %51 = uitofp i32 %50 to float
  %52 = fdiv float %51, 5.110000e+02
  %53 = fmul float %44, 2.000000e+00
  %54 = fmul float %48, 2.000000e+00
  %55 = fmul float %52, 2.000000e+00
  %56 = fadd float %53, -1.000000e+00
  %57 = fadd float %54, -1.000000e+00
  %58 = fadd float %55, -1.000000e+00
  %59 = fmul float %56, 0x3FE6A09E60000000
  %60 = fmul float %57, 0x3FE6A09E60000000
  %61 = fmul float %58, 0x3FE6A09E60000000
  %62 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %63 = call float @dx.op.unary.f32(i32 7, float %62), !dx.precise !26  ; Saturate(value)
  %64 = fsub float 1.000000e+00, %63
  %65 = call float @dx.op.unary.f32(i32 24, float %64), !dx.precise !26  ; Sqrt(value)
  %66 = icmp eq i32 %41, 0
  br i1 %66, label %73, label %67

; <label>:67                                      ; preds = %0
  %68 = icmp eq i32 %41, 1
  br i1 %68, label %73, label %69

; <label>:69                                      ; preds = %67
  %70 = icmp eq i32 %41, 2
  %71 = select i1 %70, float %65, float %61
  %72 = select i1 %70, float %61, float %65
  br label %73

; <label>:73                                      ; preds = %69, %67, %0
  %74 = phi float [ %65, %0 ], [ %59, %67 ], [ %59, %69 ]
  %75 = phi float [ %59, %0 ], [ %65, %67 ], [ %60, %69 ]
  %76 = phi float [ %60, %0 ], [ %60, %67 ], [ %71, %69 ]
  %77 = phi float [ %61, %0 ], [ %61, %67 ], [ %72, %69 ]
  %78 = and i32 %23, 536870912
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %79, float -1.000000e+00, float 1.000000e+00
  %81 = fmul float %75, 2.000000e+00
  %82 = fmul float %75, %81
  %83 = fsub float 1.000000e+00, %82
  %84 = fmul float %76, 2.000000e+00
  %85 = fmul float %76, %84
  %86 = fsub float %83, %85
  %87 = fmul float %74, 2.000000e+00
  %88 = fmul float %87, %76
  %89 = fmul float %81, %77
  %90 = fadd float %88, %89
  %91 = fmul float %87, %75
  %92 = fmul float %84, %77
  %93 = fadd float %91, %92
  %94 = fmul float %81, %76
  %95 = fmul float %87, %77
  %96 = fsub float %94, %95
  %97 = fsub float %88, %89
  %98 = fmul float %74, %87
  %99 = fsub float 1.000000e+00, %98
  %100 = fsub float %99, %82
  %101 = and i32 %24, 255
  %102 = uitofp i32 %101 to float
  %103 = fmul fast float %102, 0x3F80101020000000
  %104 = fadd fast float %103, -1.000000e+00
  %105 = lshr i32 %24, 8
  %106 = and i32 %105, 255
  %107 = uitofp i32 %106 to float
  %108 = fmul fast float %107, 0x3F80101020000000
  %109 = fadd fast float %108, -1.000000e+00
  %110 = lshr i32 %24, 16
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = fmul fast float %112, 0x3F80101020000000
  %114 = fadd fast float %113, -1.000000e+00
  %115 = lshr i32 %24, 24
  %116 = uitofp i32 %115 to float
  %117 = fmul fast float %116, 0x3F80101020000000
  %118 = fadd fast float %117, -1.000000e+00
  %119 = and i32 %25, 255
  %120 = uitofp i32 %119 to float
  %121 = fmul fast float %120, 0x3F80101020000000
  %122 = fadd fast float %121, -1.000000e+00
  %123 = lshr i32 %25, 8
  %124 = and i32 %123, 255
  %125 = uitofp i32 %124 to float
  %126 = fmul fast float %125, 0x3F80101020000000
  %127 = fadd fast float %126, -1.000000e+00
  %128 = lshr i32 %25, 16
  %129 = and i32 %128, 255
  %130 = uitofp i32 %129 to float
  %131 = fmul fast float %130, 0x3F80101020000000
  %132 = fadd fast float %131, -1.000000e+00
  %133 = lshr i32 %25, 24
  %134 = uitofp i32 %133 to float
  %135 = fmul fast float %134, 0x3F80101020000000
  %136 = fadd fast float %135, -1.000000e+00
  %137 = and i32 %26, 255
  %138 = uitofp i32 %137 to float
  %139 = fmul fast float %138, 0x3F80101020000000
  %140 = fadd fast float %139, -1.000000e+00
  %141 = lshr i32 %26, 8
  %142 = and i32 %141, 255
  %143 = uitofp i32 %142 to float
  %144 = fmul fast float %143, 0x3F80101020000000
  %145 = fadd fast float %144, -1.000000e+00
  %146 = lshr i32 %26, 16
  %147 = and i32 %146, 255
  %148 = uitofp i32 %147 to float
  %149 = fmul fast float %148, 0x3F80101020000000
  %150 = fadd fast float %149, -1.000000e+00
  %151 = lshr i32 %26, 24
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %152, 0x3F80101020000000
  %154 = fadd fast float %153, -1.000000e+00
  %155 = and i32 %27, 65535
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155), !dx.precise !26  ; LegacyF16ToF32(value)
  %157 = lshr i32 %27, 16
  %158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %157), !dx.precise !26  ; LegacyF16ToF32(value)
  %159 = and i32 %28, 65535
  %160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %159), !dx.precise !26  ; LegacyF16ToF32(value)
  %161 = lshr i32 %28, 16
  %162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %161), !dx.precise !26  ; LegacyF16ToF32(value)
  %163 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %164 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %165 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %166 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %167 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %168 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %169 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %170 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %171 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %172 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %173 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %174 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %175 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %176 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %177 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %178 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %179 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %180 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %181 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %182 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %183 = and i32 %166, 255
  %184 = uitofp i32 %183 to float
  %185 = lshr i32 %166, 8
  %186 = and i32 %185, 255
  %187 = uitofp i32 %186 to float
  %188 = lshr i32 %166, 16
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = lshr i32 %166, 24
  %192 = uitofp i32 %191 to float
  %193 = lshr i32 %177, 30
  %194 = and i32 %177, 1023
  %195 = uitofp i32 %194 to float
  %196 = fdiv float %195, 1.023000e+03
  %197 = lshr i32 %177, 10
  %198 = and i32 %197, 1023
  %199 = uitofp i32 %198 to float
  %200 = fdiv float %199, 1.023000e+03
  %201 = lshr i32 %177, 20
  %202 = and i32 %201, 511
  %203 = uitofp i32 %202 to float
  %204 = fdiv float %203, 5.110000e+02
  %205 = fmul float %196, 2.000000e+00
  %206 = fmul float %200, 2.000000e+00
  %207 = fmul float %204, 2.000000e+00
  %208 = fadd float %205, -1.000000e+00
  %209 = fadd float %206, -1.000000e+00
  %210 = fadd float %207, -1.000000e+00
  %211 = fmul float %208, 0x3FE6A09E60000000
  %212 = fmul float %209, 0x3FE6A09E60000000
  %213 = fmul float %210, 0x3FE6A09E60000000
  %214 = call float @dx.op.dot3.f32(i32 55, float %211, float %212, float %213, float %211, float %212, float %213), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 7, float %214), !dx.precise !26  ; Saturate(value)
  %216 = fsub float 1.000000e+00, %215
  %217 = call float @dx.op.unary.f32(i32 24, float %216), !dx.precise !26  ; Sqrt(value)
  %218 = icmp eq i32 %193, 0
  br i1 %218, label %225, label %219

; <label>:219                                     ; preds = %73
  %220 = icmp eq i32 %193, 1
  br i1 %220, label %225, label %221

; <label>:221                                     ; preds = %219
  %222 = icmp eq i32 %193, 2
  %223 = select i1 %222, float %217, float %213
  %224 = select i1 %222, float %213, float %217
  br label %225

; <label>:225                                     ; preds = %221, %219, %73
  %226 = phi float [ %217, %73 ], [ %211, %219 ], [ %211, %221 ]
  %227 = phi float [ %211, %73 ], [ %217, %219 ], [ %212, %221 ]
  %228 = phi float [ %212, %73 ], [ %212, %219 ], [ %223, %221 ]
  %229 = phi float [ %213, %73 ], [ %213, %219 ], [ %224, %221 ]
  %230 = fmul float %227, 2.000000e+00
  %231 = fmul float %227, %230
  %232 = fsub float 1.000000e+00, %231
  %233 = fmul float %228, 2.000000e+00
  %234 = fmul float %228, %233
  %235 = fsub float %232, %234
  %236 = fmul float %226, 2.000000e+00
  %237 = fmul float %236, %228
  %238 = fmul float %230, %229
  %239 = fadd float %237, %238
  %240 = fmul float %236, %227
  %241 = fmul float %233, %229
  %242 = fadd float %240, %241
  %243 = fmul float %230, %228
  %244 = fmul float %236, %229
  %245 = fsub float %243, %244
  %246 = fsub float %237, %238
  %247 = fmul float %226, %236
  %248 = fsub float 1.000000e+00, %247
  %249 = fsub float %248, %231
  %250 = and i32 %178, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F80101020000000
  %253 = fadd fast float %252, -1.000000e+00
  %254 = lshr i32 %178, 8
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F80101020000000
  %258 = fadd fast float %257, -1.000000e+00
  %259 = lshr i32 %178, 16
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F80101020000000
  %263 = fadd fast float %262, -1.000000e+00
  %264 = lshr i32 %178, 24
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F80101020000000
  %267 = fadd fast float %266, -1.000000e+00
  %268 = and i32 %179, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F80101020000000
  %271 = fadd fast float %270, -1.000000e+00
  %272 = lshr i32 %179, 8
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F80101020000000
  %276 = fadd fast float %275, -1.000000e+00
  %277 = lshr i32 %179, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F80101020000000
  %281 = fadd fast float %280, -1.000000e+00
  %282 = lshr i32 %179, 24
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F80101020000000
  %285 = fadd fast float %284, -1.000000e+00
  %286 = and i32 %180, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F80101020000000
  %289 = fadd fast float %288, -1.000000e+00
  %290 = lshr i32 %180, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F80101020000000
  %294 = fadd fast float %293, -1.000000e+00
  %295 = lshr i32 %180, 16
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F80101020000000
  %299 = fadd fast float %298, -1.000000e+00
  %300 = lshr i32 %180, 24
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F80101020000000
  %303 = fadd fast float %302, -1.000000e+00
  %304 = and i32 %181, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304), !dx.precise !26  ; LegacyF16ToF32(value)
  %306 = lshr i32 %181, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306), !dx.precise !26  ; LegacyF16ToF32(value)
  %308 = and i32 %182, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308), !dx.precise !26  ; LegacyF16ToF32(value)
  %310 = lshr i32 %182, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310), !dx.precise !26  ; LegacyF16ToF32(value)
  %312 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %313 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %314 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %315 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %316 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %317 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %318 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %319 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %320 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %321 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %322 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %323 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %324 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %325 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %326 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %327 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %328 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %329 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %330 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %331 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %332 = and i32 %315, 255
  %333 = uitofp i32 %332 to float
  %334 = lshr i32 %315, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = lshr i32 %315, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = lshr i32 %315, 24
  %341 = uitofp i32 %340 to float
  %342 = lshr i32 %326, 30
  %343 = and i32 %326, 1023
  %344 = uitofp i32 %343 to float
  %345 = fdiv float %344, 1.023000e+03
  %346 = lshr i32 %326, 10
  %347 = and i32 %346, 1023
  %348 = uitofp i32 %347 to float
  %349 = fdiv float %348, 1.023000e+03
  %350 = lshr i32 %326, 20
  %351 = and i32 %350, 511
  %352 = uitofp i32 %351 to float
  %353 = fdiv float %352, 5.110000e+02
  %354 = fmul float %345, 2.000000e+00
  %355 = fmul float %349, 2.000000e+00
  %356 = fmul float %353, 2.000000e+00
  %357 = fadd float %354, -1.000000e+00
  %358 = fadd float %355, -1.000000e+00
  %359 = fadd float %356, -1.000000e+00
  %360 = fmul float %357, 0x3FE6A09E60000000
  %361 = fmul float %358, 0x3FE6A09E60000000
  %362 = fmul float %359, 0x3FE6A09E60000000
  %363 = call float @dx.op.dot3.f32(i32 55, float %360, float %361, float %362, float %360, float %361, float %362), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = call float @dx.op.unary.f32(i32 7, float %363), !dx.precise !26  ; Saturate(value)
  %365 = fsub float 1.000000e+00, %364
  %366 = call float @dx.op.unary.f32(i32 24, float %365), !dx.precise !26  ; Sqrt(value)
  %367 = icmp eq i32 %342, 0
  br i1 %367, label %374, label %368

; <label>:368                                     ; preds = %225
  %369 = icmp eq i32 %342, 1
  br i1 %369, label %374, label %370

; <label>:370                                     ; preds = %368
  %371 = icmp eq i32 %342, 2
  %372 = select i1 %371, float %366, float %362
  %373 = select i1 %371, float %362, float %366
  br label %374

; <label>:374                                     ; preds = %370, %368, %225
  %375 = phi float [ %366, %225 ], [ %360, %368 ], [ %360, %370 ]
  %376 = phi float [ %360, %225 ], [ %366, %368 ], [ %361, %370 ]
  %377 = phi float [ %361, %225 ], [ %361, %368 ], [ %372, %370 ]
  %378 = phi float [ %362, %225 ], [ %362, %368 ], [ %373, %370 ]
  %379 = fmul float %376, 2.000000e+00
  %380 = fmul float %376, %379
  %381 = fsub float 1.000000e+00, %380
  %382 = fmul float %377, 2.000000e+00
  %383 = fmul float %377, %382
  %384 = fsub float %381, %383
  %385 = fmul float %375, 2.000000e+00
  %386 = fmul float %385, %377
  %387 = fmul float %379, %378
  %388 = fadd float %386, %387
  %389 = fmul float %385, %376
  %390 = fmul float %382, %378
  %391 = fadd float %389, %390
  %392 = fmul float %379, %377
  %393 = fmul float %385, %378
  %394 = fsub float %392, %393
  %395 = fsub float %386, %387
  %396 = fmul float %375, %385
  %397 = fsub float 1.000000e+00, %396
  %398 = fsub float %397, %380
  %399 = and i32 %327, 255
  %400 = uitofp i32 %399 to float
  %401 = fmul fast float %400, 0x3F80101020000000
  %402 = fadd fast float %401, -1.000000e+00
  %403 = lshr i32 %327, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F80101020000000
  %407 = fadd fast float %406, -1.000000e+00
  %408 = lshr i32 %327, 16
  %409 = and i32 %408, 255
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3F80101020000000
  %412 = fadd fast float %411, -1.000000e+00
  %413 = lshr i32 %327, 24
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F80101020000000
  %416 = fadd fast float %415, -1.000000e+00
  %417 = and i32 %328, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F80101020000000
  %420 = fadd fast float %419, -1.000000e+00
  %421 = lshr i32 %328, 8
  %422 = and i32 %421, 255
  %423 = uitofp i32 %422 to float
  %424 = fmul fast float %423, 0x3F80101020000000
  %425 = fadd fast float %424, -1.000000e+00
  %426 = lshr i32 %328, 16
  %427 = and i32 %426, 255
  %428 = uitofp i32 %427 to float
  %429 = fmul fast float %428, 0x3F80101020000000
  %430 = fadd fast float %429, -1.000000e+00
  %431 = lshr i32 %328, 24
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F80101020000000
  %434 = fadd fast float %433, -1.000000e+00
  %435 = and i32 %329, 255
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F80101020000000
  %438 = fadd fast float %437, -1.000000e+00
  %439 = lshr i32 %329, 8
  %440 = and i32 %439, 255
  %441 = uitofp i32 %440 to float
  %442 = fmul fast float %441, 0x3F80101020000000
  %443 = fadd fast float %442, -1.000000e+00
  %444 = lshr i32 %329, 16
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F80101020000000
  %448 = fadd fast float %447, -1.000000e+00
  %449 = lshr i32 %329, 24
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3F80101020000000
  %452 = fadd fast float %451, -1.000000e+00
  %453 = and i32 %330, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453), !dx.precise !26  ; LegacyF16ToF32(value)
  %455 = lshr i32 %330, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455), !dx.precise !26  ; LegacyF16ToF32(value)
  %457 = and i32 %331, 65535
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457), !dx.precise !26  ; LegacyF16ToF32(value)
  %459 = lshr i32 %331, 16
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459), !dx.precise !26  ; LegacyF16ToF32(value)
  %461 = fmul float %5, %8
  %462 = fmul float %5, %9
  %463 = fmul float %5, %10
  %464 = fmul float %6, %163
  %465 = fmul float %6, %164
  %466 = fmul float %6, %165
  %467 = fadd float %461, %464
  %468 = fadd float %462, %465
  %469 = fadd float %463, %466
  %470 = fmul float %7, %312
  %471 = fmul float %7, %313
  %472 = fmul float %7, %314
  %473 = fadd float %467, %470
  %474 = fadd float %468, %471
  %475 = fadd float %469, %472
  %476 = fmul fast float %31, %5
  %477 = fmul fast float %184, %6
  %478 = fmul fast float %333, %7
  %479 = fadd fast float %477, %476
  %480 = fadd fast float %479, %478
  %481 = fmul fast float %480, 0x3F70101020000000
  %482 = fmul fast float %34, %5
  %483 = fmul fast float %187, %6
  %484 = fmul fast float %336, %7
  %485 = fadd fast float %483, %482
  %486 = fadd fast float %485, %484
  %487 = fmul fast float %486, 0x3F70101020000000
  %488 = fmul fast float %37, %5
  %489 = fmul fast float %190, %6
  %490 = fmul fast float %339, %7
  %491 = fadd fast float %489, %488
  %492 = fadd fast float %491, %490
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = fmul fast float %39, %5
  %495 = fmul fast float %192, %6
  %496 = fmul fast float %341, %7
  %497 = fadd fast float %495, %494
  %498 = fadd fast float %497, %496
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = fmul float %5, %12
  %501 = fmul float %5, %13
  %502 = fmul float %6, %167
  %503 = fmul float %6, %168
  %504 = fadd float %500, %502
  %505 = fadd float %501, %503
  %506 = fmul float %7, %316
  %507 = fmul float %7, %317
  %508 = fadd float %504, %506
  %509 = fadd float %505, %507
  %510 = fmul float %5, %14
  %511 = fmul float %5, %15
  %512 = fmul float %6, %169
  %513 = fmul float %6, %170
  %514 = fadd float %510, %512
  %515 = fadd float %511, %513
  %516 = fmul float %7, %318
  %517 = fmul float %7, %319
  %518 = fadd float %514, %516
  %519 = fadd float %515, %517
  %520 = fmul float %5, %16
  %521 = fmul float %5, %17
  %522 = fmul float %6, %171
  %523 = fmul float %6, %172
  %524 = fadd float %520, %522
  %525 = fadd float %521, %523
  %526 = fmul float %7, %320
  %527 = fmul float %7, %321
  %528 = fadd float %524, %526
  %529 = fadd float %525, %527
  %530 = fmul float %5, %18
  %531 = fmul float %5, %19
  %532 = fmul float %6, %173
  %533 = fmul float %6, %174
  %534 = fadd float %530, %532
  %535 = fadd float %531, %533
  %536 = fmul float %7, %322
  %537 = fmul float %7, %323
  %538 = fadd float %534, %536
  %539 = fadd float %535, %537
  %540 = fmul fast float %20, %5
  %541 = fmul fast float %21, %5
  %542 = fmul fast float %175, %6
  %543 = fmul fast float %176, %6
  %544 = fadd fast float %542, %540
  %545 = fadd fast float %543, %541
  %546 = fmul fast float %324, %7
  %547 = fmul fast float %325, %7
  %548 = fadd fast float %544, %546
  %549 = fadd fast float %545, %547
  %550 = fmul float %5, %90
  %551 = fmul float %5, %96
  %552 = fmul float %5, %100
  %553 = fmul float %6, %239
  %554 = fmul float %6, %245
  %555 = fmul float %6, %249
  %556 = fadd float %550, %553
  %557 = fadd float %551, %554
  %558 = fadd float %552, %555
  %559 = fmul float %7, %388
  %560 = fmul float %7, %394
  %561 = fmul float %7, %398
  %562 = fadd float %556, %559
  %563 = fadd float %557, %560
  %564 = fadd float %558, %561
  %565 = fmul fast float %86, %5
  %566 = fmul fast float %93, %5
  %567 = fmul fast float %97, %5
  %568 = fmul fast float %235, %6
  %569 = fmul fast float %242, %6
  %570 = fmul fast float %246, %6
  %571 = fadd fast float %568, %565
  %572 = fadd fast float %569, %566
  %573 = fadd fast float %570, %567
  %574 = fmul fast float %384, %7
  %575 = fmul fast float %391, %7
  %576 = fmul fast float %395, %7
  %577 = fadd fast float %571, %574
  %578 = fadd fast float %572, %575
  %579 = fadd fast float %573, %576
  %580 = fmul fast float %104, %5
  %581 = fmul fast float %109, %5
  %582 = fmul fast float %114, %5
  %583 = fmul fast float %118, %5
  %584 = fmul fast float %253, %6
  %585 = fmul fast float %258, %6
  %586 = fmul fast float %263, %6
  %587 = fmul fast float %267, %6
  %588 = fadd fast float %584, %580
  %589 = fadd fast float %585, %581
  %590 = fadd fast float %586, %582
  %591 = fadd fast float %587, %583
  %592 = fmul fast float %402, %7
  %593 = fmul fast float %407, %7
  %594 = fmul fast float %412, %7
  %595 = fmul fast float %416, %7
  %596 = fadd fast float %588, %592
  %597 = fadd fast float %589, %593
  %598 = fadd fast float %590, %594
  %599 = fadd fast float %591, %595
  %600 = fmul fast float %122, %5
  %601 = fmul fast float %127, %5
  %602 = fmul fast float %132, %5
  %603 = fmul fast float %136, %5
  %604 = fmul fast float %271, %6
  %605 = fmul fast float %276, %6
  %606 = fmul fast float %281, %6
  %607 = fmul fast float %285, %6
  %608 = fadd fast float %604, %600
  %609 = fadd fast float %605, %601
  %610 = fadd fast float %606, %602
  %611 = fadd fast float %607, %603
  %612 = fmul fast float %420, %7
  %613 = fmul fast float %425, %7
  %614 = fmul fast float %430, %7
  %615 = fmul fast float %434, %7
  %616 = fadd fast float %608, %612
  %617 = fadd fast float %609, %613
  %618 = fadd fast float %610, %614
  %619 = fadd fast float %611, %615
  %620 = fmul fast float %140, %5
  %621 = fmul fast float %145, %5
  %622 = fmul fast float %150, %5
  %623 = fmul fast float %154, %5
  %624 = fmul fast float %289, %6
  %625 = fmul fast float %294, %6
  %626 = fmul fast float %299, %6
  %627 = fmul fast float %303, %6
  %628 = fadd fast float %624, %620
  %629 = fadd fast float %625, %621
  %630 = fadd fast float %626, %622
  %631 = fadd fast float %627, %623
  %632 = fmul fast float %438, %7
  %633 = fmul fast float %443, %7
  %634 = fmul fast float %448, %7
  %635 = fmul fast float %452, %7
  %636 = fadd fast float %628, %632
  %637 = fadd fast float %629, %633
  %638 = fadd fast float %630, %634
  %639 = fadd fast float %631, %635
  %640 = fmul float %5, %156
  %641 = fmul float %6, %305
  %642 = fadd float %640, %641
  %643 = fmul float %7, %454
  %644 = fadd float %642, %643
  %645 = fmul float %5, %158
  %646 = fmul float %6, %307
  %647 = fadd float %645, %646
  %648 = fmul float %7, %456
  %649 = fadd float %647, %648
  %650 = fmul float %5, %160
  %651 = fmul float %6, %309
  %652 = fadd float %650, %651
  %653 = fmul float %7, %458
  %654 = fadd float %652, %653
  %655 = fmul float %5, %162
  %656 = fmul float %6, %311
  %657 = fadd float %655, %656
  %658 = fmul float %7, %460
  %659 = fadd float %657, %658
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %664 = fsub float %473, %661
  %665 = fsub float %474, %662
  %666 = fsub float %475, %663
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %670 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %671 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %672 = fmul float %664, %668
  %673 = call float @dx.op.tertiary.f32(i32 46, float %665, float %669, float %672), !dx.precise !26  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %666, float %670, float %673), !dx.precise !26  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %671, float %674), !dx.precise !26  ; FMad(a,b,c)
  %676 = call float @dx.op.binary.f32(i32 35, float %675, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 0
  %679 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %680 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %681 = extractvalue %dx.types.CBufRet.f32 %677, 3
  %682 = fmul float %678, 0.000000e+00
  %683 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %679, float %682), !dx.precise !26  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %680, float %683), !dx.precise !26  ; FMad(a,b,c)
  %685 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %681, float %684), !dx.precise !26  ; FMad(a,b,c)
  %686 = fdiv float %676, %685
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 0
  %689 = fdiv float %686, %688
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 344, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 1
  %692 = bitcast i32 %691 to float
  %693 = extractvalue %dx.types.ResRet.i32 %690, 0
  %694 = bitcast i32 %693 to float
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 504, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %698, i32 0)  ; GetDimensions(handle,mipLevel)
  %700 = extractvalue %dx.types.Dimensions %699, 0
  %701 = sitofp i32 %700 to float
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %704 = call float @dx.op.unary.f32(i32 6, float %703), !dx.precise !26  ; FAbs(value)
  %705 = fmul float %644, %704
  %706 = fcmp olt float %703, 0.000000e+00
  %707 = fmul float %649, 2.560000e+02
  %708 = fdiv float %705, %707
  %709 = select i1 %706, float %708, float %705
  %710 = fmul float %649, %701
  %711 = fmul float %689, %710
  %712 = call float @dx.op.unary.f32(i32 23, float %711), !dx.precise !26  ; Log(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %714 = fadd float %712, %713
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %698, %dx.types.Handle %2, float %528, float %529, float undef, float undef, i32 0, i32 0, i32 undef, float %714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = fmul float %694, %716
  %718 = fadd float %692, %717
  %719 = fmul float %709, %718
  %720 = fadd float %719, 0.000000e+00
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 360, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 1
  %723 = bitcast i32 %722 to float
  %724 = extractvalue %dx.types.ResRet.i32 %721, 0
  %725 = bitcast i32 %724 to float
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 508, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %729, i32 0)  ; GetDimensions(handle,mipLevel)
  %731 = extractvalue %dx.types.Dimensions %730, 0
  %732 = sitofp i32 %731 to float
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %735 = call float @dx.op.unary.f32(i32 6, float %734), !dx.precise !26  ; FAbs(value)
  %736 = fmul float %654, %735
  %737 = fcmp olt float %734, 0.000000e+00
  %738 = fmul float %659, 2.560000e+02
  %739 = fdiv float %736, %738
  %740 = select i1 %737, float %739, float %736
  %741 = fmul float %659, %732
  %742 = fmul float %689, %741
  %743 = call float @dx.op.unary.f32(i32 23, float %742), !dx.precise !26  ; Log(value)
  %744 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %745 = fadd float %743, %744
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %729, %dx.types.Handle %2, float %538, float %539, float undef, float undef, i32 0, i32 0, i32 undef, float %745)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = fmul float %725, %747
  %749 = fadd float %723, %748
  %750 = fmul float %740, %749
  %751 = fadd float %720, %750
  %752 = call float @dx.op.dot3.f32(i32 55, float %562, float %563, float %564, float %562, float %563, float %564), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %753 = call float @dx.op.unary.f32(i32 25, float %752), !dx.precise !26  ; Rsqrt(value)
  %754 = fmul float %562, %753
  %755 = fmul float %563, %753
  %756 = fmul float %564, %753
  %757 = fmul float %754, %751
  %758 = fmul float %755, %751
  %759 = fmul float %756, %751
  %760 = fadd float %473, %757
  %761 = fadd float %474, %758
  %762 = fadd float %475, %759
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %767 = fsub float %760, %764
  %768 = fsub float %761, %765
  %769 = fsub float %762, %766
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %778 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %779 = extractvalue %dx.types.CBufRet.f32 %775, 3
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %783 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %784 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %788 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %789 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %790 = fmul float %771, %767
  %791 = call float @dx.op.tertiary.f32(i32 46, float %768, float %772, float %790), !dx.precise !26  ; FMad(a,b,c)
  %792 = call float @dx.op.tertiary.f32(i32 46, float %769, float %773, float %791), !dx.precise !26  ; FMad(a,b,c)
  %793 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %774, float %792), !dx.precise !26  ; FMad(a,b,c)
  %794 = fmul float %776, %767
  %795 = call float @dx.op.tertiary.f32(i32 46, float %768, float %777, float %794), !dx.precise !26  ; FMad(a,b,c)
  %796 = call float @dx.op.tertiary.f32(i32 46, float %769, float %778, float %795), !dx.precise !26  ; FMad(a,b,c)
  %797 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %779, float %796), !dx.precise !26  ; FMad(a,b,c)
  %798 = fmul float %781, %767
  %799 = call float @dx.op.tertiary.f32(i32 46, float %768, float %782, float %798), !dx.precise !26  ; FMad(a,b,c)
  %800 = call float @dx.op.tertiary.f32(i32 46, float %769, float %783, float %799), !dx.precise !26  ; FMad(a,b,c)
  %801 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %784, float %800), !dx.precise !26  ; FMad(a,b,c)
  %802 = fmul float %767, %786
  %803 = call float @dx.op.tertiary.f32(i32 46, float %768, float %787, float %802), !dx.precise !26  ; FMad(a,b,c)
  %804 = call float @dx.op.tertiary.f32(i32 46, float %769, float %788, float %803), !dx.precise !26  ; FMad(a,b,c)
  %805 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %789, float %804), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %797)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %801)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %805)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %481)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %487)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %499)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %509)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %538)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float %539)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %40)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %564)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %577)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %578)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %579)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %80)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %596)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %597)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %598)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %599)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 0, float %616)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 1, float %617)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 2, float %618)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 3, float %619)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 0, float %636)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 1, float %637)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 2, float %638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 3, float %639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 10, i32 0, i8 0, i32 %29)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[81 x i32] [i32 26, i32 41, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 240, i32 0, i32 262144, i32 0, i32 258998287, i32 0, i32 -268435456, i32 0, i32 256, i32 0, i32 512, i32 0, i32 1024, i32 0, i32 2048, i32 0, i32 4111, i32 0, i32 8207, i32 0, i32 16399, i32 0, i32 32783, i32 0, i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 240, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 256, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !58}
!16 = !{!17, !41, !54}
!17 = !{!18, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
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
!29 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !30, i8 2, i32 1, i8 2, i32 3, i8 2, !24}
!30 = !{i32 3}
!31 = !{i32 6, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 4, i8 0, !24}
!32 = !{i32 7, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!33 = !{i32 8, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!34 = !{i32 9, !"NORMAL_TRANSFORM", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 1, i8 3, !22}
!35 = !{i32 10, !"NORMAL_TRANSFORM", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 5, i8 0, !22}
!36 = !{i32 11, !"NORMAL_TRANSFORM", i8 5, i8 0, !30, i8 1, i32 1, i8 1, i32 5, i8 1, !22}
!37 = !{i32 12, !"DISPLACEMENT", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 5, i8 2, !22}
!38 = !{i32 13, !"DISPLACEMENT", i8 5, i8 0, !30, i8 1, i32 1, i8 1, i32 5, i8 3, !22}
!39 = !{i32 14, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 6, i8 0, null}
!40 = !{i32 15, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 6, i8 1, !22}
!41 = !{!42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
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
!52 = !{i32 9, !"NORMAL_TRANSFORM", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 9, i8 0, !43}
!53 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 10, i8 0, !22}
!54 = !{!55, !57}
!55 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !56, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!56 = !{i32 0, i32 1, i32 2}
!57 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!58 = !{i32 0, i64 16, i32 2, !59}
!59 = !{i32 2, i32 3}

