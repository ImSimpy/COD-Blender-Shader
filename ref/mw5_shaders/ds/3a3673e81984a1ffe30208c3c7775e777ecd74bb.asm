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
; TESSFACTORS_OFFSET       0      w        5     NONE    uint       
; TRANSIENT_INDEX          0   x           6     NONE    uint   x   
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
; shader hash: d09fee1cd9478bcc6d26a774f433a3e4
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
; Number of inputs: 25, outputs: 41, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 12, 13, 22 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 12, 13, 22 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 12, 13, 22 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 12, 13, 22 }
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
;   output 40 depends on inputs: { 24 }
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
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = and i32 %11, 255
  %30 = uitofp i32 %29 to float
  %31 = lshr i32 %11, 8
  %32 = and i32 %31, 255
  %33 = uitofp i32 %32 to float
  %34 = lshr i32 %11, 16
  %35 = and i32 %34, 255
  %36 = uitofp i32 %35 to float
  %37 = lshr i32 %11, 24
  %38 = uitofp i32 %37 to float
  %39 = uitofp i32 %22 to float
  %40 = lshr i32 %23, 30
  %41 = and i32 %23, 1023
  %42 = uitofp i32 %41 to float
  %43 = fdiv float %42, 1.023000e+03
  %44 = lshr i32 %23, 10
  %45 = and i32 %44, 1023
  %46 = uitofp i32 %45 to float
  %47 = fdiv float %46, 1.023000e+03
  %48 = lshr i32 %23, 20
  %49 = and i32 %48, 511
  %50 = uitofp i32 %49 to float
  %51 = fdiv float %50, 5.110000e+02
  %52 = fmul float %43, 2.000000e+00
  %53 = fmul float %47, 2.000000e+00
  %54 = fmul float %51, 2.000000e+00
  %55 = fadd float %52, -1.000000e+00
  %56 = fadd float %53, -1.000000e+00
  %57 = fadd float %54, -1.000000e+00
  %58 = fmul float %55, 0x3FE6A09E60000000
  %59 = fmul float %56, 0x3FE6A09E60000000
  %60 = fmul float %57, 0x3FE6A09E60000000
  %61 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %62 = call float @dx.op.unary.f32(i32 7, float %61), !dx.precise !26  ; Saturate(value)
  %63 = fsub float 1.000000e+00, %62
  %64 = call float @dx.op.unary.f32(i32 24, float %63), !dx.precise !26  ; Sqrt(value)
  %65 = icmp eq i32 %40, 0
  br i1 %65, label %72, label %66

; <label>:66                                      ; preds = %0
  %67 = icmp eq i32 %40, 1
  br i1 %67, label %72, label %68

; <label>:68                                      ; preds = %66
  %69 = icmp eq i32 %40, 2
  %70 = select i1 %69, float %64, float %60
  %71 = select i1 %69, float %60, float %64
  br label %72

; <label>:72                                      ; preds = %68, %66, %0
  %73 = phi float [ %64, %0 ], [ %58, %66 ], [ %58, %68 ]
  %74 = phi float [ %58, %0 ], [ %64, %66 ], [ %59, %68 ]
  %75 = phi float [ %59, %0 ], [ %59, %66 ], [ %70, %68 ]
  %76 = phi float [ %60, %0 ], [ %60, %66 ], [ %71, %68 ]
  %77 = and i32 %23, 536870912
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %78, float -1.000000e+00, float 1.000000e+00
  %80 = fmul float %74, 2.000000e+00
  %81 = fmul float %74, %80
  %82 = fsub float 1.000000e+00, %81
  %83 = fmul float %75, 2.000000e+00
  %84 = fmul float %75, %83
  %85 = fsub float %82, %84
  %86 = fmul float %73, 2.000000e+00
  %87 = fmul float %86, %75
  %88 = fmul float %80, %76
  %89 = fadd float %87, %88
  %90 = fmul float %86, %74
  %91 = fmul float %83, %76
  %92 = fadd float %90, %91
  %93 = fmul float %80, %75
  %94 = fmul float %86, %76
  %95 = fsub float %93, %94
  %96 = fsub float %87, %88
  %97 = fmul float %73, %86
  %98 = fsub float 1.000000e+00, %97
  %99 = fsub float %98, %81
  %100 = and i32 %24, 255
  %101 = uitofp i32 %100 to float
  %102 = fmul fast float %101, 0x3F80101020000000
  %103 = fadd fast float %102, -1.000000e+00
  %104 = lshr i32 %24, 8
  %105 = and i32 %104, 255
  %106 = uitofp i32 %105 to float
  %107 = fmul fast float %106, 0x3F80101020000000
  %108 = fadd fast float %107, -1.000000e+00
  %109 = lshr i32 %24, 16
  %110 = and i32 %109, 255
  %111 = uitofp i32 %110 to float
  %112 = fmul fast float %111, 0x3F80101020000000
  %113 = fadd fast float %112, -1.000000e+00
  %114 = lshr i32 %24, 24
  %115 = uitofp i32 %114 to float
  %116 = fmul fast float %115, 0x3F80101020000000
  %117 = fadd fast float %116, -1.000000e+00
  %118 = and i32 %25, 255
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %119, 0x3F80101020000000
  %121 = fadd fast float %120, -1.000000e+00
  %122 = lshr i32 %25, 8
  %123 = and i32 %122, 255
  %124 = uitofp i32 %123 to float
  %125 = fmul fast float %124, 0x3F80101020000000
  %126 = fadd fast float %125, -1.000000e+00
  %127 = lshr i32 %25, 16
  %128 = and i32 %127, 255
  %129 = uitofp i32 %128 to float
  %130 = fmul fast float %129, 0x3F80101020000000
  %131 = fadd fast float %130, -1.000000e+00
  %132 = lshr i32 %25, 24
  %133 = uitofp i32 %132 to float
  %134 = fmul fast float %133, 0x3F80101020000000
  %135 = fadd fast float %134, -1.000000e+00
  %136 = and i32 %26, 255
  %137 = uitofp i32 %136 to float
  %138 = fmul fast float %137, 0x3F80101020000000
  %139 = fadd fast float %138, -1.000000e+00
  %140 = lshr i32 %26, 8
  %141 = and i32 %140, 255
  %142 = uitofp i32 %141 to float
  %143 = fmul fast float %142, 0x3F80101020000000
  %144 = fadd fast float %143, -1.000000e+00
  %145 = lshr i32 %26, 16
  %146 = and i32 %145, 255
  %147 = uitofp i32 %146 to float
  %148 = fmul fast float %147, 0x3F80101020000000
  %149 = fadd fast float %148, -1.000000e+00
  %150 = lshr i32 %26, 24
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, 0x3F80101020000000
  %153 = fadd fast float %152, -1.000000e+00
  %154 = and i32 %27, 65535
  %155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %154), !dx.precise !26  ; LegacyF16ToF32(value)
  %156 = lshr i32 %27, 16
  %157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %156), !dx.precise !26  ; LegacyF16ToF32(value)
  %158 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %159 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %160 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %161 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %162 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %163 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %164 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %165 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %166 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %167 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %168 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %169 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %170 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %171 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %172 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %173 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %174 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %175 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %176 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %177 = and i32 %161, 255
  %178 = uitofp i32 %177 to float
  %179 = lshr i32 %161, 8
  %180 = and i32 %179, 255
  %181 = uitofp i32 %180 to float
  %182 = lshr i32 %161, 16
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = lshr i32 %161, 24
  %186 = uitofp i32 %185 to float
  %187 = lshr i32 %172, 30
  %188 = and i32 %172, 1023
  %189 = uitofp i32 %188 to float
  %190 = fdiv float %189, 1.023000e+03
  %191 = lshr i32 %172, 10
  %192 = and i32 %191, 1023
  %193 = uitofp i32 %192 to float
  %194 = fdiv float %193, 1.023000e+03
  %195 = lshr i32 %172, 20
  %196 = and i32 %195, 511
  %197 = uitofp i32 %196 to float
  %198 = fdiv float %197, 5.110000e+02
  %199 = fmul float %190, 2.000000e+00
  %200 = fmul float %194, 2.000000e+00
  %201 = fmul float %198, 2.000000e+00
  %202 = fadd float %199, -1.000000e+00
  %203 = fadd float %200, -1.000000e+00
  %204 = fadd float %201, -1.000000e+00
  %205 = fmul float %202, 0x3FE6A09E60000000
  %206 = fmul float %203, 0x3FE6A09E60000000
  %207 = fmul float %204, 0x3FE6A09E60000000
  %208 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %205, float %206, float %207), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %209 = call float @dx.op.unary.f32(i32 7, float %208), !dx.precise !26  ; Saturate(value)
  %210 = fsub float 1.000000e+00, %209
  %211 = call float @dx.op.unary.f32(i32 24, float %210), !dx.precise !26  ; Sqrt(value)
  %212 = icmp eq i32 %187, 0
  br i1 %212, label %219, label %213

; <label>:213                                     ; preds = %72
  %214 = icmp eq i32 %187, 1
  br i1 %214, label %219, label %215

; <label>:215                                     ; preds = %213
  %216 = icmp eq i32 %187, 2
  %217 = select i1 %216, float %211, float %207
  %218 = select i1 %216, float %207, float %211
  br label %219

; <label>:219                                     ; preds = %215, %213, %72
  %220 = phi float [ %211, %72 ], [ %205, %213 ], [ %205, %215 ]
  %221 = phi float [ %205, %72 ], [ %211, %213 ], [ %206, %215 ]
  %222 = phi float [ %206, %72 ], [ %206, %213 ], [ %217, %215 ]
  %223 = phi float [ %207, %72 ], [ %207, %213 ], [ %218, %215 ]
  %224 = fmul float %221, 2.000000e+00
  %225 = fmul float %221, %224
  %226 = fsub float 1.000000e+00, %225
  %227 = fmul float %222, 2.000000e+00
  %228 = fmul float %222, %227
  %229 = fsub float %226, %228
  %230 = fmul float %220, 2.000000e+00
  %231 = fmul float %230, %222
  %232 = fmul float %224, %223
  %233 = fadd float %231, %232
  %234 = fmul float %230, %221
  %235 = fmul float %227, %223
  %236 = fadd float %234, %235
  %237 = fmul float %224, %222
  %238 = fmul float %230, %223
  %239 = fsub float %237, %238
  %240 = fsub float %231, %232
  %241 = fmul float %220, %230
  %242 = fsub float 1.000000e+00, %241
  %243 = fsub float %242, %225
  %244 = and i32 %173, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F80101020000000
  %247 = fadd fast float %246, -1.000000e+00
  %248 = lshr i32 %173, 8
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F80101020000000
  %252 = fadd fast float %251, -1.000000e+00
  %253 = lshr i32 %173, 16
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F80101020000000
  %257 = fadd fast float %256, -1.000000e+00
  %258 = lshr i32 %173, 24
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F80101020000000
  %261 = fadd fast float %260, -1.000000e+00
  %262 = and i32 %174, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F80101020000000
  %265 = fadd fast float %264, -1.000000e+00
  %266 = lshr i32 %174, 8
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F80101020000000
  %270 = fadd fast float %269, -1.000000e+00
  %271 = lshr i32 %174, 16
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F80101020000000
  %275 = fadd fast float %274, -1.000000e+00
  %276 = lshr i32 %174, 24
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F80101020000000
  %279 = fadd fast float %278, -1.000000e+00
  %280 = and i32 %175, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F80101020000000
  %283 = fadd fast float %282, -1.000000e+00
  %284 = lshr i32 %175, 8
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F80101020000000
  %288 = fadd fast float %287, -1.000000e+00
  %289 = lshr i32 %175, 16
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F80101020000000
  %293 = fadd fast float %292, -1.000000e+00
  %294 = lshr i32 %175, 24
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F80101020000000
  %297 = fadd fast float %296, -1.000000e+00
  %298 = and i32 %176, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298), !dx.precise !26  ; LegacyF16ToF32(value)
  %300 = lshr i32 %176, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300), !dx.precise !26  ; LegacyF16ToF32(value)
  %302 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %303 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %304 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %305 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %306 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %307 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %308 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %309 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %310 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %311 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %312 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %313 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %314 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %315 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %316 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %317 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %318 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %319 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %320 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %321 = and i32 %305, 255
  %322 = uitofp i32 %321 to float
  %323 = lshr i32 %305, 8
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = lshr i32 %305, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = lshr i32 %305, 24
  %330 = uitofp i32 %329 to float
  %331 = lshr i32 %316, 30
  %332 = and i32 %316, 1023
  %333 = uitofp i32 %332 to float
  %334 = fdiv float %333, 1.023000e+03
  %335 = lshr i32 %316, 10
  %336 = and i32 %335, 1023
  %337 = uitofp i32 %336 to float
  %338 = fdiv float %337, 1.023000e+03
  %339 = lshr i32 %316, 20
  %340 = and i32 %339, 511
  %341 = uitofp i32 %340 to float
  %342 = fdiv float %341, 5.110000e+02
  %343 = fmul float %334, 2.000000e+00
  %344 = fmul float %338, 2.000000e+00
  %345 = fmul float %342, 2.000000e+00
  %346 = fadd float %343, -1.000000e+00
  %347 = fadd float %344, -1.000000e+00
  %348 = fadd float %345, -1.000000e+00
  %349 = fmul float %346, 0x3FE6A09E60000000
  %350 = fmul float %347, 0x3FE6A09E60000000
  %351 = fmul float %348, 0x3FE6A09E60000000
  %352 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %349, float %350, float %351), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = call float @dx.op.unary.f32(i32 7, float %352), !dx.precise !26  ; Saturate(value)
  %354 = fsub float 1.000000e+00, %353
  %355 = call float @dx.op.unary.f32(i32 24, float %354), !dx.precise !26  ; Sqrt(value)
  %356 = icmp eq i32 %331, 0
  br i1 %356, label %363, label %357

; <label>:357                                     ; preds = %219
  %358 = icmp eq i32 %331, 1
  br i1 %358, label %363, label %359

; <label>:359                                     ; preds = %357
  %360 = icmp eq i32 %331, 2
  %361 = select i1 %360, float %355, float %351
  %362 = select i1 %360, float %351, float %355
  br label %363

; <label>:363                                     ; preds = %359, %357, %219
  %364 = phi float [ %355, %219 ], [ %349, %357 ], [ %349, %359 ]
  %365 = phi float [ %349, %219 ], [ %355, %357 ], [ %350, %359 ]
  %366 = phi float [ %350, %219 ], [ %350, %357 ], [ %361, %359 ]
  %367 = phi float [ %351, %219 ], [ %351, %357 ], [ %362, %359 ]
  %368 = fmul float %365, 2.000000e+00
  %369 = fmul float %365, %368
  %370 = fsub float 1.000000e+00, %369
  %371 = fmul float %366, 2.000000e+00
  %372 = fmul float %366, %371
  %373 = fsub float %370, %372
  %374 = fmul float %364, 2.000000e+00
  %375 = fmul float %374, %366
  %376 = fmul float %368, %367
  %377 = fadd float %375, %376
  %378 = fmul float %374, %365
  %379 = fmul float %371, %367
  %380 = fadd float %378, %379
  %381 = fmul float %368, %366
  %382 = fmul float %374, %367
  %383 = fsub float %381, %382
  %384 = fsub float %375, %376
  %385 = fmul float %364, %374
  %386 = fsub float 1.000000e+00, %385
  %387 = fsub float %386, %369
  %388 = and i32 %317, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F80101020000000
  %391 = fadd fast float %390, -1.000000e+00
  %392 = lshr i32 %317, 8
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F80101020000000
  %396 = fadd fast float %395, -1.000000e+00
  %397 = lshr i32 %317, 16
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F80101020000000
  %401 = fadd fast float %400, -1.000000e+00
  %402 = lshr i32 %317, 24
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F80101020000000
  %405 = fadd fast float %404, -1.000000e+00
  %406 = and i32 %318, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F80101020000000
  %409 = fadd fast float %408, -1.000000e+00
  %410 = lshr i32 %318, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F80101020000000
  %414 = fadd fast float %413, -1.000000e+00
  %415 = lshr i32 %318, 16
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F80101020000000
  %419 = fadd fast float %418, -1.000000e+00
  %420 = lshr i32 %318, 24
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F80101020000000
  %423 = fadd fast float %422, -1.000000e+00
  %424 = and i32 %319, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F80101020000000
  %427 = fadd fast float %426, -1.000000e+00
  %428 = lshr i32 %319, 8
  %429 = and i32 %428, 255
  %430 = uitofp i32 %429 to float
  %431 = fmul fast float %430, 0x3F80101020000000
  %432 = fadd fast float %431, -1.000000e+00
  %433 = lshr i32 %319, 16
  %434 = and i32 %433, 255
  %435 = uitofp i32 %434 to float
  %436 = fmul fast float %435, 0x3F80101020000000
  %437 = fadd fast float %436, -1.000000e+00
  %438 = lshr i32 %319, 24
  %439 = uitofp i32 %438 to float
  %440 = fmul fast float %439, 0x3F80101020000000
  %441 = fadd fast float %440, -1.000000e+00
  %442 = and i32 %320, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442), !dx.precise !26  ; LegacyF16ToF32(value)
  %444 = lshr i32 %320, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444), !dx.precise !26  ; LegacyF16ToF32(value)
  %446 = fmul float %5, %8
  %447 = fmul float %5, %9
  %448 = fmul float %5, %10
  %449 = fmul float %6, %158
  %450 = fmul float %6, %159
  %451 = fmul float %6, %160
  %452 = fadd float %446, %449
  %453 = fadd float %447, %450
  %454 = fadd float %448, %451
  %455 = fmul float %7, %302
  %456 = fmul float %7, %303
  %457 = fmul float %7, %304
  %458 = fadd float %452, %455
  %459 = fadd float %453, %456
  %460 = fadd float %454, %457
  %461 = fmul fast float %30, %5
  %462 = fmul fast float %178, %6
  %463 = fmul fast float %322, %7
  %464 = fadd fast float %462, %461
  %465 = fadd fast float %464, %463
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = fmul fast float %33, %5
  %468 = fmul fast float %181, %6
  %469 = fmul fast float %325, %7
  %470 = fadd fast float %468, %467
  %471 = fadd fast float %470, %469
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = fmul fast float %36, %5
  %474 = fmul fast float %184, %6
  %475 = fmul fast float %328, %7
  %476 = fadd fast float %474, %473
  %477 = fadd fast float %476, %475
  %478 = fmul fast float %477, 0x3F70101020000000
  %479 = fmul fast float %38, %5
  %480 = fmul fast float %186, %6
  %481 = fmul fast float %330, %7
  %482 = fadd fast float %480, %479
  %483 = fadd fast float %482, %481
  %484 = fmul fast float %483, 0x3F70101020000000
  %485 = fmul float %5, %12
  %486 = fmul float %5, %13
  %487 = fmul float %6, %162
  %488 = fmul float %6, %163
  %489 = fadd float %485, %487
  %490 = fadd float %486, %488
  %491 = fmul float %7, %306
  %492 = fmul float %7, %307
  %493 = fadd float %489, %491
  %494 = fadd float %490, %492
  %495 = fmul float %5, %14
  %496 = fmul float %5, %15
  %497 = fmul float %6, %164
  %498 = fmul float %6, %165
  %499 = fadd float %495, %497
  %500 = fadd float %496, %498
  %501 = fmul float %7, %308
  %502 = fmul float %7, %309
  %503 = fadd float %499, %501
  %504 = fadd float %500, %502
  %505 = fmul float %5, %16
  %506 = fmul float %5, %17
  %507 = fmul float %6, %166
  %508 = fmul float %6, %167
  %509 = fadd float %505, %507
  %510 = fadd float %506, %508
  %511 = fmul float %7, %310
  %512 = fmul float %7, %311
  %513 = fadd float %509, %511
  %514 = fadd float %510, %512
  %515 = fmul float %5, %18
  %516 = fmul float %5, %19
  %517 = fmul float %6, %168
  %518 = fmul float %6, %169
  %519 = fadd float %515, %517
  %520 = fadd float %516, %518
  %521 = fmul float %7, %312
  %522 = fmul float %7, %313
  %523 = fadd float %519, %521
  %524 = fadd float %520, %522
  %525 = fmul fast float %20, %5
  %526 = fmul fast float %21, %5
  %527 = fmul fast float %170, %6
  %528 = fmul fast float %171, %6
  %529 = fadd fast float %527, %525
  %530 = fadd fast float %528, %526
  %531 = fmul fast float %314, %7
  %532 = fmul fast float %315, %7
  %533 = fadd fast float %529, %531
  %534 = fadd fast float %530, %532
  %535 = fmul float %5, %89
  %536 = fmul float %5, %95
  %537 = fmul float %5, %99
  %538 = fmul float %6, %233
  %539 = fmul float %6, %239
  %540 = fmul float %6, %243
  %541 = fadd float %535, %538
  %542 = fadd float %536, %539
  %543 = fadd float %537, %540
  %544 = fmul float %7, %377
  %545 = fmul float %7, %383
  %546 = fmul float %7, %387
  %547 = fadd float %541, %544
  %548 = fadd float %542, %545
  %549 = fadd float %543, %546
  %550 = fmul fast float %85, %5
  %551 = fmul fast float %92, %5
  %552 = fmul fast float %96, %5
  %553 = fmul fast float %229, %6
  %554 = fmul fast float %236, %6
  %555 = fmul fast float %240, %6
  %556 = fadd fast float %553, %550
  %557 = fadd fast float %554, %551
  %558 = fadd fast float %555, %552
  %559 = fmul fast float %373, %7
  %560 = fmul fast float %380, %7
  %561 = fmul fast float %384, %7
  %562 = fadd fast float %556, %559
  %563 = fadd fast float %557, %560
  %564 = fadd fast float %558, %561
  %565 = fmul fast float %103, %5
  %566 = fmul fast float %108, %5
  %567 = fmul fast float %113, %5
  %568 = fmul fast float %117, %5
  %569 = fmul fast float %247, %6
  %570 = fmul fast float %252, %6
  %571 = fmul fast float %257, %6
  %572 = fmul fast float %261, %6
  %573 = fadd fast float %569, %565
  %574 = fadd fast float %570, %566
  %575 = fadd fast float %571, %567
  %576 = fadd fast float %572, %568
  %577 = fmul fast float %391, %7
  %578 = fmul fast float %396, %7
  %579 = fmul fast float %401, %7
  %580 = fmul fast float %405, %7
  %581 = fadd fast float %573, %577
  %582 = fadd fast float %574, %578
  %583 = fadd fast float %575, %579
  %584 = fadd fast float %576, %580
  %585 = fmul fast float %121, %5
  %586 = fmul fast float %126, %5
  %587 = fmul fast float %131, %5
  %588 = fmul fast float %135, %5
  %589 = fmul fast float %265, %6
  %590 = fmul fast float %270, %6
  %591 = fmul fast float %275, %6
  %592 = fmul fast float %279, %6
  %593 = fadd fast float %589, %585
  %594 = fadd fast float %590, %586
  %595 = fadd fast float %591, %587
  %596 = fadd fast float %592, %588
  %597 = fmul fast float %409, %7
  %598 = fmul fast float %414, %7
  %599 = fmul fast float %419, %7
  %600 = fmul fast float %423, %7
  %601 = fadd fast float %593, %597
  %602 = fadd fast float %594, %598
  %603 = fadd fast float %595, %599
  %604 = fadd fast float %596, %600
  %605 = fmul fast float %139, %5
  %606 = fmul fast float %144, %5
  %607 = fmul fast float %149, %5
  %608 = fmul fast float %153, %5
  %609 = fmul fast float %283, %6
  %610 = fmul fast float %288, %6
  %611 = fmul fast float %293, %6
  %612 = fmul fast float %297, %6
  %613 = fadd fast float %609, %605
  %614 = fadd fast float %610, %606
  %615 = fadd fast float %611, %607
  %616 = fadd fast float %612, %608
  %617 = fmul fast float %427, %7
  %618 = fmul fast float %432, %7
  %619 = fmul fast float %437, %7
  %620 = fmul fast float %441, %7
  %621 = fadd fast float %613, %617
  %622 = fadd fast float %614, %618
  %623 = fadd fast float %615, %619
  %624 = fadd fast float %616, %620
  %625 = fmul float %5, %155
  %626 = fmul float %6, %299
  %627 = fadd float %625, %626
  %628 = fmul float %7, %443
  %629 = fadd float %627, %628
  %630 = fmul float %5, %157
  %631 = fmul float %6, %301
  %632 = fadd float %630, %631
  %633 = fmul float %7, %445
  %634 = fadd float %632, %633
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %638 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %639 = fsub float %458, %636
  %640 = fsub float %459, %637
  %641 = fsub float %460, %638
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = extractvalue %dx.types.CBufRet.f32 %642, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %642, 3
  %647 = fmul float %639, %643
  %648 = call float @dx.op.tertiary.f32(i32 46, float %640, float %644, float %647), !dx.precise !26  ; FMad(a,b,c)
  %649 = call float @dx.op.tertiary.f32(i32 46, float %641, float %645, float %648), !dx.precise !26  ; FMad(a,b,c)
  %650 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %646, float %649), !dx.precise !26  ; FMad(a,b,c)
  %651 = call float @dx.op.binary.f32(i32 35, float %650, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %656 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %657 = fmul float %653, 0.000000e+00
  %658 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %654, float %657), !dx.precise !26  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %655, float %658), !dx.precise !26  ; FMad(a,b,c)
  %660 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %656, float %659), !dx.precise !26  ; FMad(a,b,c)
  %661 = fdiv float %651, %660
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  %664 = fdiv float %661, %663
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 344, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 1
  %667 = bitcast i32 %666 to float
  %668 = extractvalue %dx.types.ResRet.i32 %665, 0
  %669 = bitcast i32 %668 to float
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 488, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %673, i32 0)  ; GetDimensions(handle,mipLevel)
  %675 = extractvalue %dx.types.Dimensions %674, 0
  %676 = sitofp i32 %675 to float
  %677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %678 = extractvalue %dx.types.CBufRet.f32 %677, 2
  %679 = call float @dx.op.unary.f32(i32 6, float %678), !dx.precise !26  ; FAbs(value)
  %680 = fmul float %629, %679
  %681 = fcmp olt float %678, 0.000000e+00
  %682 = fmul float %634, 2.560000e+02
  %683 = fdiv float %680, %682
  %684 = select i1 %681, float %683, float %680
  %685 = fmul float %634, %676
  %686 = fmul float %664, %685
  %687 = call float @dx.op.unary.f32(i32 23, float %686), !dx.precise !26  ; Log(value)
  %688 = extractvalue %dx.types.CBufRet.f32 %677, 1
  %689 = fadd float %687, %688
  %690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %2, float %513, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float %689)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = fmul float %669, %691
  %693 = fadd float %667, %692
  %694 = fmul float %684, %693
  %695 = fadd float %694, 0.000000e+00
  %696 = call float @dx.op.dot3.f32(i32 55, float %547, float %548, float %549, float %547, float %548, float %549), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696), !dx.precise !26  ; Rsqrt(value)
  %698 = fmul float %547, %697
  %699 = fmul float %548, %697
  %700 = fmul float %549, %697
  %701 = fmul float %698, %695
  %702 = fmul float %699, %695
  %703 = fmul float %700, %695
  %704 = fadd float %458, %701
  %705 = fadd float %459, %702
  %706 = fadd float %460, %703
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %711 = fsub float %704, %708
  %712 = fsub float %705, %709
  %713 = fsub float %706, %710
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 0
  %716 = extractvalue %dx.types.CBufRet.f32 %714, 1
  %717 = extractvalue %dx.types.CBufRet.f32 %714, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %714, 3
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %722 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %723 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %727 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %728 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %733 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %734 = fmul float %715, %711
  %735 = call float @dx.op.tertiary.f32(i32 46, float %712, float %716, float %734), !dx.precise !26  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float %713, float %717, float %735), !dx.precise !26  ; FMad(a,b,c)
  %737 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %718, float %736), !dx.precise !26  ; FMad(a,b,c)
  %738 = fmul float %720, %711
  %739 = call float @dx.op.tertiary.f32(i32 46, float %712, float %721, float %738), !dx.precise !26  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float %713, float %722, float %739), !dx.precise !26  ; FMad(a,b,c)
  %741 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %723, float %740), !dx.precise !26  ; FMad(a,b,c)
  %742 = fmul float %725, %711
  %743 = call float @dx.op.tertiary.f32(i32 46, float %712, float %726, float %742), !dx.precise !26  ; FMad(a,b,c)
  %744 = call float @dx.op.tertiary.f32(i32 46, float %713, float %727, float %743), !dx.precise !26  ; FMad(a,b,c)
  %745 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %728, float %744), !dx.precise !26  ; FMad(a,b,c)
  %746 = fmul float %711, %730
  %747 = call float @dx.op.tertiary.f32(i32 46, float %712, float %731, float %746), !dx.precise !26  ; FMad(a,b,c)
  %748 = call float @dx.op.tertiary.f32(i32 46, float %713, float %732, float %747), !dx.precise !26  ; FMad(a,b,c)
  %749 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %733, float %748), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %737)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %741)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %745)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %749)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %466)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %478)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %484)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %494)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %503)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %514)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %523)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float %524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %533)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %39)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %564)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %79)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %581)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %582)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %583)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 0, float %601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 1, float %602)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 2, float %603)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 3, float %604)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 0, float %621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 1, float %622)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 2, float %623)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 9, i32 0, i8 3, float %624)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 10, i32 0, i8 0, i32 %28)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[79 x i32] [i32 25, i32 41, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 240, i32 0, i32 262144, i32 0, i32 258998287, i32 0, i32 -268435456, i32 0, i32 256, i32 0, i32 512, i32 0, i32 1024, i32 0, i32 2048, i32 0, i32 4111, i32 0, i32 8207, i32 0, i32 16384, i32 0, i32 32768, i32 0, i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 0, i32 240, i32 15, i32 0, i32 0, i32 0, i32 0, i32 256, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !57}
!16 = !{!17, !40, !53}
!17 = !{!18, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39}
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
!38 = !{i32 13, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 3, null}
!39 = !{i32 14, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 6, i8 0, !22}
!40 = !{!41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
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
!51 = !{i32 9, !"NORMAL_TRANSFORM", i8 9, i8 0, !30, i8 2, i32 1, i8 4, i32 9, i8 0, !42}
!52 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 10, i8 0, !22}
!53 = !{!54, !56}
!54 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !55, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!55 = !{i32 0, i32 1, i32 2}
!56 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!57 = !{i32 0, i64 16, i32 2, !58}
!58 = !{i32 2, i32 3}

