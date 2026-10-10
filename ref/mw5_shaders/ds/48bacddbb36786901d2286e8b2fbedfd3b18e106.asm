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
; shader hash: d2a9f02a8564cdb82874acadbbbce24f
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
;   output 10 depends on inputs: { 10, 11 }
;   output 11 depends on inputs: { 10, 11 }
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
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
  %34 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.i32 %34, 0
  %36 = extractvalue %dx.types.ResRet.i32 %34, 1
  %37 = extractvalue %dx.types.ResRet.i32 %34, 2
  %38 = bitcast i32 %35 to float
  %39 = bitcast i32 %36 to float
  %40 = bitcast i32 %37 to float
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %43 = fmul float %40, %42
  %44 = fadd float %43, 0.000000e+00
  %45 = call float @dx.op.unary.f32(i32 12, float %44), !dx.precise !26  ; Cos(value)
  %46 = call float @dx.op.unary.f32(i32 13, float %44), !dx.precise !26  ; Sin(value)
  %47 = fadd float %14, -5.000000e-01
  %48 = fadd float %15, -5.000000e-01
  %49 = fmul float %47, %45
  %50 = fmul float %48, %46
  %51 = fsub float %49, %50
  %52 = fmul float %47, %46
  %53 = fmul float %48, %45
  %54 = fadd float %53, %52
  %55 = fadd float %51, 5.000000e-01
  %56 = fadd float %54, 5.000000e-01
  %57 = fmul float %38, %42
  %58 = fmul float %39, %42
  %59 = fadd float %55, %57
  %60 = fadd float %56, %58
  %61 = uitofp i32 %20 to float
  %62 = lshr i32 %21, 30
  %63 = and i32 %21, 1023
  %64 = uitofp i32 %63 to float
  %65 = fdiv float %64, 1.023000e+03
  %66 = lshr i32 %21, 10
  %67 = and i32 %66, 1023
  %68 = uitofp i32 %67 to float
  %69 = fdiv float %68, 1.023000e+03
  %70 = lshr i32 %21, 20
  %71 = and i32 %70, 511
  %72 = uitofp i32 %71 to float
  %73 = fdiv float %72, 5.110000e+02
  %74 = fmul float %65, 2.000000e+00
  %75 = fmul float %69, 2.000000e+00
  %76 = fmul float %73, 2.000000e+00
  %77 = fadd float %74, -1.000000e+00
  %78 = fadd float %75, -1.000000e+00
  %79 = fadd float %76, -1.000000e+00
  %80 = fmul float %77, 0x3FE6A09E60000000
  %81 = fmul float %78, 0x3FE6A09E60000000
  %82 = fmul float %79, 0x3FE6A09E60000000
  %83 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %84 = call float @dx.op.unary.f32(i32 7, float %83), !dx.precise !26  ; Saturate(value)
  %85 = fsub float 1.000000e+00, %84
  %86 = call float @dx.op.unary.f32(i32 24, float %85), !dx.precise !26  ; Sqrt(value)
  %87 = icmp eq i32 %62, 0
  br i1 %87, label %94, label %88

; <label>:88                                      ; preds = %0
  %89 = icmp eq i32 %62, 1
  br i1 %89, label %94, label %90

; <label>:90                                      ; preds = %88
  %91 = icmp eq i32 %62, 2
  %92 = select i1 %91, float %86, float %82
  %93 = select i1 %91, float %82, float %86
  br label %94

; <label>:94                                      ; preds = %90, %88, %0
  %95 = phi float [ %86, %0 ], [ %80, %88 ], [ %80, %90 ]
  %96 = phi float [ %80, %0 ], [ %86, %88 ], [ %81, %90 ]
  %97 = phi float [ %81, %0 ], [ %81, %88 ], [ %92, %90 ]
  %98 = phi float [ %82, %0 ], [ %82, %88 ], [ %93, %90 ]
  %99 = and i32 %21, 536870912
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %100, float -1.000000e+00, float 1.000000e+00
  %102 = fmul float %96, 2.000000e+00
  %103 = fmul float %96, %102
  %104 = fsub float 1.000000e+00, %103
  %105 = fmul float %97, 2.000000e+00
  %106 = fmul float %97, %105
  %107 = fsub float %104, %106
  %108 = fmul float %95, 2.000000e+00
  %109 = fmul float %108, %97
  %110 = fmul float %102, %98
  %111 = fadd float %109, %110
  %112 = fmul float %108, %96
  %113 = fmul float %105, %98
  %114 = fadd float %112, %113
  %115 = fmul float %102, %97
  %116 = fmul float %108, %98
  %117 = fsub float %115, %116
  %118 = fsub float %109, %110
  %119 = fmul float %95, %108
  %120 = fsub float 1.000000e+00, %119
  %121 = fsub float %120, %103
  %122 = and i32 %22, 255
  %123 = uitofp i32 %122 to float
  %124 = fmul fast float %123, 0x3F80101020000000
  %125 = fadd fast float %124, -1.000000e+00
  %126 = lshr i32 %22, 8
  %127 = and i32 %126, 255
  %128 = uitofp i32 %127 to float
  %129 = fmul fast float %128, 0x3F80101020000000
  %130 = fadd fast float %129, -1.000000e+00
  %131 = lshr i32 %22, 16
  %132 = and i32 %131, 255
  %133 = uitofp i32 %132 to float
  %134 = fmul fast float %133, 0x3F80101020000000
  %135 = fadd fast float %134, -1.000000e+00
  %136 = lshr i32 %22, 24
  %137 = uitofp i32 %136 to float
  %138 = fmul fast float %137, 0x3F80101020000000
  %139 = fadd fast float %138, -1.000000e+00
  %140 = and i32 %23, 255
  %141 = uitofp i32 %140 to float
  %142 = fmul fast float %141, 0x3F80101020000000
  %143 = fadd fast float %142, -1.000000e+00
  %144 = lshr i32 %23, 8
  %145 = and i32 %144, 255
  %146 = uitofp i32 %145 to float
  %147 = fmul fast float %146, 0x3F80101020000000
  %148 = fadd fast float %147, -1.000000e+00
  %149 = lshr i32 %23, 16
  %150 = and i32 %149, 255
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, 0x3F80101020000000
  %153 = fadd fast float %152, -1.000000e+00
  %154 = lshr i32 %23, 24
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, 0x3F80101020000000
  %157 = fadd fast float %156, -1.000000e+00
  %158 = and i32 %24, 65535
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158), !dx.precise !26  ; LegacyF16ToF32(value)
  %160 = lshr i32 %24, 16
  %161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %160), !dx.precise !26  ; LegacyF16ToF32(value)
  %162 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %163 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %164 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %165 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %166 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %167 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %168 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %169 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %170 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %171 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %172 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %173 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %174 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %175 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %176 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %177 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %178 = and i32 %165, 255
  %179 = uitofp i32 %178 to float
  %180 = lshr i32 %165, 8
  %181 = and i32 %180, 255
  %182 = uitofp i32 %181 to float
  %183 = lshr i32 %165, 16
  %184 = and i32 %183, 255
  %185 = uitofp i32 %184 to float
  %186 = fadd float %168, -5.000000e-01
  %187 = fadd float %169, -5.000000e-01
  %188 = fmul float %186, %45
  %189 = fmul float %187, %46
  %190 = fsub float %188, %189
  %191 = fmul float %186, %46
  %192 = fmul float %187, %45
  %193 = fadd float %192, %191
  %194 = fadd float %190, 5.000000e-01
  %195 = fadd float %193, 5.000000e-01
  %196 = fadd float %194, %57
  %197 = fadd float %195, %58
  %198 = lshr i32 %174, 30
  %199 = and i32 %174, 1023
  %200 = uitofp i32 %199 to float
  %201 = fdiv float %200, 1.023000e+03
  %202 = lshr i32 %174, 10
  %203 = and i32 %202, 1023
  %204 = uitofp i32 %203 to float
  %205 = fdiv float %204, 1.023000e+03
  %206 = lshr i32 %174, 20
  %207 = and i32 %206, 511
  %208 = uitofp i32 %207 to float
  %209 = fdiv float %208, 5.110000e+02
  %210 = fmul float %201, 2.000000e+00
  %211 = fmul float %205, 2.000000e+00
  %212 = fmul float %209, 2.000000e+00
  %213 = fadd float %210, -1.000000e+00
  %214 = fadd float %211, -1.000000e+00
  %215 = fadd float %212, -1.000000e+00
  %216 = fmul float %213, 0x3FE6A09E60000000
  %217 = fmul float %214, 0x3FE6A09E60000000
  %218 = fmul float %215, 0x3FE6A09E60000000
  %219 = call float @dx.op.dot3.f32(i32 55, float %216, float %217, float %218, float %216, float %217, float %218), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 7, float %219), !dx.precise !26  ; Saturate(value)
  %221 = fsub float 1.000000e+00, %220
  %222 = call float @dx.op.unary.f32(i32 24, float %221), !dx.precise !26  ; Sqrt(value)
  %223 = icmp eq i32 %198, 0
  br i1 %223, label %230, label %224

; <label>:224                                     ; preds = %94
  %225 = icmp eq i32 %198, 1
  br i1 %225, label %230, label %226

; <label>:226                                     ; preds = %224
  %227 = icmp eq i32 %198, 2
  %228 = select i1 %227, float %222, float %218
  %229 = select i1 %227, float %218, float %222
  br label %230

; <label>:230                                     ; preds = %226, %224, %94
  %231 = phi float [ %222, %94 ], [ %216, %224 ], [ %216, %226 ]
  %232 = phi float [ %216, %94 ], [ %222, %224 ], [ %217, %226 ]
  %233 = phi float [ %217, %94 ], [ %217, %224 ], [ %228, %226 ]
  %234 = phi float [ %218, %94 ], [ %218, %224 ], [ %229, %226 ]
  %235 = fmul float %232, 2.000000e+00
  %236 = fmul float %232, %235
  %237 = fsub float 1.000000e+00, %236
  %238 = fmul float %233, 2.000000e+00
  %239 = fmul float %233, %238
  %240 = fsub float %237, %239
  %241 = fmul float %231, 2.000000e+00
  %242 = fmul float %241, %233
  %243 = fmul float %235, %234
  %244 = fadd float %242, %243
  %245 = fmul float %241, %232
  %246 = fmul float %238, %234
  %247 = fadd float %245, %246
  %248 = fmul float %235, %233
  %249 = fmul float %241, %234
  %250 = fsub float %248, %249
  %251 = fsub float %242, %243
  %252 = fmul float %231, %241
  %253 = fsub float 1.000000e+00, %252
  %254 = fsub float %253, %236
  %255 = and i32 %175, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F80101020000000
  %258 = fadd fast float %257, -1.000000e+00
  %259 = lshr i32 %175, 8
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F80101020000000
  %263 = fadd fast float %262, -1.000000e+00
  %264 = lshr i32 %175, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F80101020000000
  %268 = fadd fast float %267, -1.000000e+00
  %269 = lshr i32 %175, 24
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F80101020000000
  %272 = fadd fast float %271, -1.000000e+00
  %273 = and i32 %176, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F80101020000000
  %276 = fadd fast float %275, -1.000000e+00
  %277 = lshr i32 %176, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F80101020000000
  %281 = fadd fast float %280, -1.000000e+00
  %282 = lshr i32 %176, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F80101020000000
  %286 = fadd fast float %285, -1.000000e+00
  %287 = lshr i32 %176, 24
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F80101020000000
  %290 = fadd fast float %289, -1.000000e+00
  %291 = and i32 %177, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291), !dx.precise !26  ; LegacyF16ToF32(value)
  %293 = lshr i32 %177, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293), !dx.precise !26  ; LegacyF16ToF32(value)
  %295 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %296 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %297 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %298 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %299 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %300 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %301 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %302 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %303 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %304 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %305 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %306 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %307 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %308 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %309 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %310 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %311 = and i32 %298, 255
  %312 = uitofp i32 %311 to float
  %313 = lshr i32 %298, 8
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = lshr i32 %298, 16
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fadd float %301, -5.000000e-01
  %320 = fadd float %302, -5.000000e-01
  %321 = fmul float %319, %45
  %322 = fmul float %320, %46
  %323 = fsub float %321, %322
  %324 = fmul float %319, %46
  %325 = fmul float %320, %45
  %326 = fadd float %325, %324
  %327 = fadd float %323, 5.000000e-01
  %328 = fadd float %326, 5.000000e-01
  %329 = fadd float %327, %57
  %330 = fadd float %328, %58
  %331 = lshr i32 %307, 30
  %332 = and i32 %307, 1023
  %333 = uitofp i32 %332 to float
  %334 = fdiv float %333, 1.023000e+03
  %335 = lshr i32 %307, 10
  %336 = and i32 %335, 1023
  %337 = uitofp i32 %336 to float
  %338 = fdiv float %337, 1.023000e+03
  %339 = lshr i32 %307, 20
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

; <label>:357                                     ; preds = %230
  %358 = icmp eq i32 %331, 1
  br i1 %358, label %363, label %359

; <label>:359                                     ; preds = %357
  %360 = icmp eq i32 %331, 2
  %361 = select i1 %360, float %355, float %351
  %362 = select i1 %360, float %351, float %355
  br label %363

; <label>:363                                     ; preds = %359, %357, %230
  %364 = phi float [ %355, %230 ], [ %349, %357 ], [ %349, %359 ]
  %365 = phi float [ %349, %230 ], [ %355, %357 ], [ %350, %359 ]
  %366 = phi float [ %350, %230 ], [ %350, %357 ], [ %361, %359 ]
  %367 = phi float [ %351, %230 ], [ %351, %357 ], [ %362, %359 ]
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
  %388 = and i32 %308, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F80101020000000
  %391 = fadd fast float %390, -1.000000e+00
  %392 = lshr i32 %308, 8
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F80101020000000
  %396 = fadd fast float %395, -1.000000e+00
  %397 = lshr i32 %308, 16
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F80101020000000
  %401 = fadd fast float %400, -1.000000e+00
  %402 = lshr i32 %308, 24
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F80101020000000
  %405 = fadd fast float %404, -1.000000e+00
  %406 = and i32 %309, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F80101020000000
  %409 = fadd fast float %408, -1.000000e+00
  %410 = lshr i32 %309, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F80101020000000
  %414 = fadd fast float %413, -1.000000e+00
  %415 = lshr i32 %309, 16
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F80101020000000
  %419 = fadd fast float %418, -1.000000e+00
  %420 = lshr i32 %309, 24
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F80101020000000
  %423 = fadd fast float %422, -1.000000e+00
  %424 = and i32 %310, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424), !dx.precise !26  ; LegacyF16ToF32(value)
  %426 = lshr i32 %310, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426), !dx.precise !26  ; LegacyF16ToF32(value)
  %428 = fmul float %5, %8
  %429 = fmul float %5, %9
  %430 = fmul float %5, %10
  %431 = fmul float %6, %162
  %432 = fmul float %6, %163
  %433 = fmul float %6, %164
  %434 = fadd float %428, %431
  %435 = fadd float %429, %432
  %436 = fadd float %430, %433
  %437 = fmul float %7, %295
  %438 = fmul float %7, %296
  %439 = fmul float %7, %297
  %440 = fadd float %434, %437
  %441 = fadd float %435, %438
  %442 = fadd float %436, %439
  %443 = fmul fast float %27, %5
  %444 = fmul fast float %179, %6
  %445 = fmul fast float %312, %7
  %446 = fadd fast float %444, %443
  %447 = fadd fast float %446, %445
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = fmul fast float %30, %5
  %450 = fmul fast float %182, %6
  %451 = fmul fast float %315, %7
  %452 = fadd fast float %450, %449
  %453 = fadd fast float %452, %451
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = fmul fast float %33, %5
  %456 = fmul fast float %185, %6
  %457 = fmul fast float %318, %7
  %458 = fadd fast float %456, %455
  %459 = fadd fast float %458, %457
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = fmul float %5, %12
  %462 = fmul float %5, %13
  %463 = fmul float %6, %166
  %464 = fmul float %6, %167
  %465 = fadd float %461, %463
  %466 = fadd float %462, %464
  %467 = fmul float %7, %299
  %468 = fmul float %7, %300
  %469 = fadd float %465, %467
  %470 = fadd float %466, %468
  %471 = fmul float %5, %59
  %472 = fmul float %5, %60
  %473 = fmul float %6, %196
  %474 = fmul float %6, %197
  %475 = fadd float %471, %473
  %476 = fadd float %472, %474
  %477 = fmul float %7, %329
  %478 = fmul float %7, %330
  %479 = fadd float %475, %477
  %480 = fadd float %476, %478
  %481 = fmul float %5, %16
  %482 = fmul float %5, %17
  %483 = fmul float %6, %170
  %484 = fmul float %6, %171
  %485 = fadd float %481, %483
  %486 = fadd float %482, %484
  %487 = fmul float %7, %303
  %488 = fmul float %7, %304
  %489 = fadd float %485, %487
  %490 = fadd float %486, %488
  %491 = fmul fast float %18, %5
  %492 = fmul fast float %19, %5
  %493 = fmul fast float %172, %6
  %494 = fmul fast float %173, %6
  %495 = fadd fast float %493, %491
  %496 = fadd fast float %494, %492
  %497 = fmul fast float %305, %7
  %498 = fmul fast float %306, %7
  %499 = fadd fast float %495, %497
  %500 = fadd fast float %496, %498
  %501 = fmul float %5, %111
  %502 = fmul float %5, %117
  %503 = fmul float %5, %121
  %504 = fmul float %6, %244
  %505 = fmul float %6, %250
  %506 = fmul float %6, %254
  %507 = fadd float %501, %504
  %508 = fadd float %502, %505
  %509 = fadd float %503, %506
  %510 = fmul float %7, %377
  %511 = fmul float %7, %383
  %512 = fmul float %7, %387
  %513 = fadd float %507, %510
  %514 = fadd float %508, %511
  %515 = fadd float %509, %512
  %516 = fmul fast float %107, %5
  %517 = fmul fast float %114, %5
  %518 = fmul fast float %118, %5
  %519 = fmul fast float %240, %6
  %520 = fmul fast float %247, %6
  %521 = fmul fast float %251, %6
  %522 = fadd fast float %519, %516
  %523 = fadd fast float %520, %517
  %524 = fadd fast float %521, %518
  %525 = fmul fast float %373, %7
  %526 = fmul fast float %380, %7
  %527 = fmul fast float %384, %7
  %528 = fadd fast float %522, %525
  %529 = fadd fast float %523, %526
  %530 = fadd fast float %524, %527
  %531 = fmul fast float %125, %5
  %532 = fmul fast float %130, %5
  %533 = fmul fast float %135, %5
  %534 = fmul fast float %139, %5
  %535 = fmul fast float %258, %6
  %536 = fmul fast float %263, %6
  %537 = fmul fast float %268, %6
  %538 = fmul fast float %272, %6
  %539 = fadd fast float %535, %531
  %540 = fadd fast float %536, %532
  %541 = fadd fast float %537, %533
  %542 = fadd fast float %538, %534
  %543 = fmul fast float %391, %7
  %544 = fmul fast float %396, %7
  %545 = fmul fast float %401, %7
  %546 = fmul fast float %405, %7
  %547 = fadd fast float %539, %543
  %548 = fadd fast float %540, %544
  %549 = fadd fast float %541, %545
  %550 = fadd fast float %542, %546
  %551 = fmul fast float %143, %5
  %552 = fmul fast float %148, %5
  %553 = fmul fast float %153, %5
  %554 = fmul fast float %157, %5
  %555 = fmul fast float %276, %6
  %556 = fmul fast float %281, %6
  %557 = fmul fast float %286, %6
  %558 = fmul fast float %290, %6
  %559 = fadd fast float %555, %551
  %560 = fadd fast float %556, %552
  %561 = fadd fast float %557, %553
  %562 = fadd fast float %558, %554
  %563 = fmul fast float %409, %7
  %564 = fmul fast float %414, %7
  %565 = fmul fast float %419, %7
  %566 = fmul fast float %423, %7
  %567 = fadd fast float %559, %563
  %568 = fadd fast float %560, %564
  %569 = fadd fast float %561, %565
  %570 = fadd fast float %562, %566
  %571 = fmul float %5, %159
  %572 = fmul float %6, %292
  %573 = fadd float %571, %572
  %574 = fmul float %7, %425
  %575 = fadd float %573, %574
  %576 = fmul float %5, %161
  %577 = fmul float %6, %294
  %578 = fadd float %576, %577
  %579 = fmul float %7, %427
  %580 = fadd float %578, %579
  %581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %582 = extractvalue %dx.types.CBufRet.f32 %581, 0
  %583 = extractvalue %dx.types.CBufRet.f32 %581, 1
  %584 = extractvalue %dx.types.CBufRet.f32 %581, 2
  %585 = fsub float %440, %582
  %586 = fsub float %441, %583
  %587 = fsub float %442, %584
  %588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %589 = extractvalue %dx.types.CBufRet.f32 %588, 0
  %590 = extractvalue %dx.types.CBufRet.f32 %588, 1
  %591 = extractvalue %dx.types.CBufRet.f32 %588, 2
  %592 = extractvalue %dx.types.CBufRet.f32 %588, 3
  %593 = fmul float %585, %589
  %594 = call float @dx.op.tertiary.f32(i32 46, float %586, float %590, float %593), !dx.precise !26  ; FMad(a,b,c)
  %595 = call float @dx.op.tertiary.f32(i32 46, float %587, float %591, float %594), !dx.precise !26  ; FMad(a,b,c)
  %596 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %592, float %595), !dx.precise !26  ; FMad(a,b,c)
  %597 = call float @dx.op.binary.f32(i32 35, float %596, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = extractvalue %dx.types.CBufRet.f32 %598, 1
  %601 = extractvalue %dx.types.CBufRet.f32 %598, 2
  %602 = extractvalue %dx.types.CBufRet.f32 %598, 3
  %603 = fmul float %599, 0.000000e+00
  %604 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %600, float %603), !dx.precise !26  ; FMad(a,b,c)
  %605 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %601, float %604), !dx.precise !26  ; FMad(a,b,c)
  %606 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %602, float %605), !dx.precise !26  ; FMad(a,b,c)
  %607 = fdiv float %597, %606
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %610 = fdiv float %607, %609
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 1
  %613 = bitcast i32 %612 to float
  %614 = extractvalue %dx.types.ResRet.i32 %611, 0
  %615 = bitcast i32 %614 to float
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 396, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %619, i32 0)  ; GetDimensions(handle,mipLevel)
  %621 = extractvalue %dx.types.Dimensions %620, 0
  %622 = sitofp i32 %621 to float
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = call float @dx.op.unary.f32(i32 6, float %624), !dx.precise !26  ; FAbs(value)
  %626 = fmul float %575, %625
  %627 = fcmp olt float %624, 0.000000e+00
  %628 = fmul float %580, 2.560000e+02
  %629 = fdiv float %626, %628
  %630 = select i1 %627, float %629, float %626
  %631 = fmul float %580, %622
  %632 = fmul float %610, %631
  %633 = call float @dx.op.unary.f32(i32 23, float %632), !dx.precise !26  ; Log(value)
  %634 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %635 = fadd float %633, %634
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %619, %dx.types.Handle %2, float %489, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %635)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = fmul float %615, %637
  %639 = fadd float %613, %638
  %640 = fmul float %630, %639
  %641 = fadd float %640, 0.000000e+00
  %642 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %513, float %514, float %515), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = call float @dx.op.unary.f32(i32 25, float %642), !dx.precise !26  ; Rsqrt(value)
  %644 = fmul float %513, %643
  %645 = fmul float %514, %643
  %646 = fmul float %515, %643
  %647 = fmul float %644, %641
  %648 = fmul float %645, %641
  %649 = fmul float %646, %641
  %650 = fadd float %440, %647
  %651 = fadd float %441, %648
  %652 = fadd float %442, %649
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = fsub float %650, %654
  %658 = fsub float %651, %655
  %659 = fsub float %652, %656
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %664 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 0
  %667 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %668 = extractvalue %dx.types.CBufRet.f32 %665, 2
  %669 = extractvalue %dx.types.CBufRet.f32 %665, 3
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 0
  %672 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %673 = extractvalue %dx.types.CBufRet.f32 %670, 2
  %674 = extractvalue %dx.types.CBufRet.f32 %670, 3
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 0
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %678 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %679 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %680 = fmul float %661, %657
  %681 = call float @dx.op.tertiary.f32(i32 46, float %658, float %662, float %680), !dx.precise !26  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float %659, float %663, float %681), !dx.precise !26  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %664, float %682), !dx.precise !26  ; FMad(a,b,c)
  %684 = fmul float %666, %657
  %685 = call float @dx.op.tertiary.f32(i32 46, float %658, float %667, float %684), !dx.precise !26  ; FMad(a,b,c)
  %686 = call float @dx.op.tertiary.f32(i32 46, float %659, float %668, float %685), !dx.precise !26  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %669, float %686), !dx.precise !26  ; FMad(a,b,c)
  %688 = fmul float %671, %657
  %689 = call float @dx.op.tertiary.f32(i32 46, float %658, float %672, float %688), !dx.precise !26  ; FMad(a,b,c)
  %690 = call float @dx.op.tertiary.f32(i32 46, float %659, float %673, float %689), !dx.precise !26  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %674, float %690), !dx.precise !26  ; FMad(a,b,c)
  %692 = fmul float %657, %676
  %693 = call float @dx.op.tertiary.f32(i32 46, float %658, float %677, float %692), !dx.precise !26  ; FMad(a,b,c)
  %694 = call float @dx.op.tertiary.f32(i32 46, float %659, float %678, float %693), !dx.precise !26  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %679, float %694), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %683)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %687)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %691)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %695)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %460)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %469)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %479)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %480)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %499)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %500)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %61)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %514)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %515)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %530)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %101)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 0, float %567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 1, float %568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 2, float %569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 8, i32 0, i8 3, float %570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[71 x i32] [i32 21, i32 37, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 112, i32 0, i32 262144, i32 0, i32 258998287, i32 0, i32 -268435456, i32 0, i32 256, i32 0, i32 512, i32 0, i32 3072, i32 0, i32 3072, i32 0, i32 4111, i32 0, i32 8207, i32 0, i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 15, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 16, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
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

