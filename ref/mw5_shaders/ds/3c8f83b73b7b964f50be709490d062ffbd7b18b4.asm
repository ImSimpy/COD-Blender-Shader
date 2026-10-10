;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 0   xy          1     NONE   float   xy  
; TEXCOORD                 1     zw        1     NONE   float     zw
; TEXCOORD                 2   xy          2     NONE   float   xy  
; LIGHTING_TEXCOORD        0     zw        2     NONE   float     zw
; LMAP_INDEX               0   x           3     NONE    uint   x   
; TANGENT_FRAME            0    y          3     NONE    uint    y  
; NORMAL_TRANSFORM         1     z         3     NONE    uint     z 
; NORMAL_TRANSFORM         2      w        3     NONE    uint      w
; NORMAL_TRANSFORM         3   x           4     NONE    uint       
; DISPLACEMENT             0    y          4     NONE    uint    y  
; TESSFACTORS_OFFSET       0     z         4     NONE    uint       
; TRANSIENT_INDEX          0      w        4     NONE    uint      w
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                1   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; NORMAL_TRANSFORM         2   xyzw        7     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           8     NONE    uint   x   
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
; shader hash: 88e845a275607c2bff8203c109db02ac
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
; TESSFACTORS_OFFSET       0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
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
; Number of inputs: 20, outputs: 33, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 4, 5, 13, 17 }
;   output 1 depends on inputs: { 0, 1, 2, 4, 5, 13, 17 }
;   output 2 depends on inputs: { 0, 1, 2, 4, 5, 13, 17 }
;   output 3 depends on inputs: { 0, 1, 2, 4, 5, 13, 17 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 5 }
;   output 6 depends on inputs: { 6 }
;   output 7 depends on inputs: { 7 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 12 depends on inputs: { 10 }
;   output 13 depends on inputs: { 11 }
;   output 14 depends on inputs: { 12 }
;   output 16 depends on inputs: { 13 }
;   output 17 depends on inputs: { 13 }
;   output 18 depends on inputs: { 13 }
;   output 20 depends on inputs: { 13 }
;   output 21 depends on inputs: { 13 }
;   output 22 depends on inputs: { 13 }
;   output 23 depends on inputs: { 13 }
;   output 24 depends on inputs: { 14 }
;   output 25 depends on inputs: { 14 }
;   output 26 depends on inputs: { 14 }
;   output 27 depends on inputs: { 14 }
;   output 28 depends on inputs: { 15 }
;   output 29 depends on inputs: { 15 }
;   output 30 depends on inputs: { 15 }
;   output 31 depends on inputs: { 15 }
;   output 32 depends on inputs: { 19 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !24  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !24  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !24  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = uitofp i32 %19 to float
  %26 = lshr i32 %20, 30
  %27 = and i32 %20, 1023
  %28 = uitofp i32 %27 to float
  %29 = fdiv float %28, 1.023000e+03
  %30 = lshr i32 %20, 10
  %31 = and i32 %30, 1023
  %32 = uitofp i32 %31 to float
  %33 = fdiv float %32, 1.023000e+03
  %34 = lshr i32 %20, 20
  %35 = and i32 %34, 511
  %36 = uitofp i32 %35 to float
  %37 = fdiv float %36, 5.110000e+02
  %38 = fmul float %29, 2.000000e+00
  %39 = fmul float %33, 2.000000e+00
  %40 = fmul float %37, 2.000000e+00
  %41 = fadd float %38, -1.000000e+00
  %42 = fadd float %39, -1.000000e+00
  %43 = fadd float %40, -1.000000e+00
  %44 = fmul float %41, 0x3FE6A09E60000000
  %45 = fmul float %42, 0x3FE6A09E60000000
  %46 = fmul float %43, 0x3FE6A09E60000000
  %47 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %48 = call float @dx.op.unary.f32(i32 7, float %47), !dx.precise !24  ; Saturate(value)
  %49 = fsub float 1.000000e+00, %48
  %50 = call float @dx.op.unary.f32(i32 24, float %49), !dx.precise !24  ; Sqrt(value)
  %51 = icmp eq i32 %26, 0
  br i1 %51, label %58, label %52

; <label>:52                                      ; preds = %0
  %53 = icmp eq i32 %26, 1
  br i1 %53, label %58, label %54

; <label>:54                                      ; preds = %52
  %55 = icmp eq i32 %26, 2
  %56 = select i1 %55, float %50, float %46
  %57 = select i1 %55, float %46, float %50
  br label %58

; <label>:58                                      ; preds = %54, %52, %0
  %59 = phi float [ %50, %0 ], [ %44, %52 ], [ %44, %54 ]
  %60 = phi float [ %44, %0 ], [ %50, %52 ], [ %45, %54 ]
  %61 = phi float [ %45, %0 ], [ %45, %52 ], [ %56, %54 ]
  %62 = phi float [ %46, %0 ], [ %46, %52 ], [ %57, %54 ]
  %63 = and i32 %20, 536870912
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %64, float -1.000000e+00, float 1.000000e+00
  %66 = fmul float %60, 2.000000e+00
  %67 = fmul float %60, %66
  %68 = fsub float 1.000000e+00, %67
  %69 = fmul float %61, 2.000000e+00
  %70 = fmul float %61, %69
  %71 = fsub float %68, %70
  %72 = fmul float %59, 2.000000e+00
  %73 = fmul float %72, %61
  %74 = fmul float %66, %62
  %75 = fadd float %73, %74
  %76 = fmul float %72, %60
  %77 = fmul float %69, %62
  %78 = fadd float %76, %77
  %79 = fmul float %66, %61
  %80 = fmul float %72, %62
  %81 = fsub float %79, %80
  %82 = fsub float %73, %74
  %83 = fmul float %59, %72
  %84 = fsub float 1.000000e+00, %83
  %85 = fsub float %84, %67
  %86 = and i32 %21, 255
  %87 = uitofp i32 %86 to float
  %88 = fmul fast float %87, 0x3F80101020000000
  %89 = fadd fast float %88, -1.000000e+00
  %90 = lshr i32 %21, 8
  %91 = and i32 %90, 255
  %92 = uitofp i32 %91 to float
  %93 = fmul fast float %92, 0x3F80101020000000
  %94 = fadd fast float %93, -1.000000e+00
  %95 = lshr i32 %21, 16
  %96 = and i32 %95, 255
  %97 = uitofp i32 %96 to float
  %98 = fmul fast float %97, 0x3F80101020000000
  %99 = fadd fast float %98, -1.000000e+00
  %100 = lshr i32 %21, 24
  %101 = uitofp i32 %100 to float
  %102 = fmul fast float %101, 0x3F80101020000000
  %103 = fadd fast float %102, -1.000000e+00
  %104 = and i32 %22, 255
  %105 = uitofp i32 %104 to float
  %106 = fmul fast float %105, 0x3F80101020000000
  %107 = fadd fast float %106, -1.000000e+00
  %108 = lshr i32 %22, 8
  %109 = and i32 %108, 255
  %110 = uitofp i32 %109 to float
  %111 = fmul fast float %110, 0x3F80101020000000
  %112 = fadd fast float %111, -1.000000e+00
  %113 = lshr i32 %22, 16
  %114 = and i32 %113, 255
  %115 = uitofp i32 %114 to float
  %116 = fmul fast float %115, 0x3F80101020000000
  %117 = fadd fast float %116, -1.000000e+00
  %118 = lshr i32 %22, 24
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %119, 0x3F80101020000000
  %121 = fadd fast float %120, -1.000000e+00
  %122 = and i32 %23, 65535
  %123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %122), !dx.precise !24  ; LegacyF16ToF32(value)
  %124 = lshr i32 %23, 16
  %125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %124), !dx.precise !24  ; LegacyF16ToF32(value)
  %126 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %127 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %128 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %129 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %130 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %131 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %132 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %133 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %134 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %135 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %136 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %137 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %138 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %139 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %140 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %141 = lshr i32 %137, 30
  %142 = and i32 %137, 1023
  %143 = uitofp i32 %142 to float
  %144 = fdiv float %143, 1.023000e+03
  %145 = lshr i32 %137, 10
  %146 = and i32 %145, 1023
  %147 = uitofp i32 %146 to float
  %148 = fdiv float %147, 1.023000e+03
  %149 = lshr i32 %137, 20
  %150 = and i32 %149, 511
  %151 = uitofp i32 %150 to float
  %152 = fdiv float %151, 5.110000e+02
  %153 = fmul float %144, 2.000000e+00
  %154 = fmul float %148, 2.000000e+00
  %155 = fmul float %152, 2.000000e+00
  %156 = fadd float %153, -1.000000e+00
  %157 = fadd float %154, -1.000000e+00
  %158 = fadd float %155, -1.000000e+00
  %159 = fmul float %156, 0x3FE6A09E60000000
  %160 = fmul float %157, 0x3FE6A09E60000000
  %161 = fmul float %158, 0x3FE6A09E60000000
  %162 = call float @dx.op.dot3.f32(i32 55, float %159, float %160, float %161, float %159, float %160, float %161), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call float @dx.op.unary.f32(i32 7, float %162), !dx.precise !24  ; Saturate(value)
  %164 = fsub float 1.000000e+00, %163
  %165 = call float @dx.op.unary.f32(i32 24, float %164), !dx.precise !24  ; Sqrt(value)
  %166 = icmp eq i32 %141, 0
  br i1 %166, label %173, label %167

; <label>:167                                     ; preds = %58
  %168 = icmp eq i32 %141, 1
  br i1 %168, label %173, label %169

; <label>:169                                     ; preds = %167
  %170 = icmp eq i32 %141, 2
  %171 = select i1 %170, float %165, float %161
  %172 = select i1 %170, float %161, float %165
  br label %173

; <label>:173                                     ; preds = %169, %167, %58
  %174 = phi float [ %165, %58 ], [ %159, %167 ], [ %159, %169 ]
  %175 = phi float [ %159, %58 ], [ %165, %167 ], [ %160, %169 ]
  %176 = phi float [ %160, %58 ], [ %160, %167 ], [ %171, %169 ]
  %177 = phi float [ %161, %58 ], [ %161, %167 ], [ %172, %169 ]
  %178 = fmul float %175, 2.000000e+00
  %179 = fmul float %175, %178
  %180 = fsub float 1.000000e+00, %179
  %181 = fmul float %176, 2.000000e+00
  %182 = fmul float %176, %181
  %183 = fsub float %180, %182
  %184 = fmul float %174, 2.000000e+00
  %185 = fmul float %184, %176
  %186 = fmul float %178, %177
  %187 = fadd float %185, %186
  %188 = fmul float %184, %175
  %189 = fmul float %181, %177
  %190 = fadd float %188, %189
  %191 = fmul float %178, %176
  %192 = fmul float %184, %177
  %193 = fsub float %191, %192
  %194 = fsub float %185, %186
  %195 = fmul float %174, %184
  %196 = fsub float 1.000000e+00, %195
  %197 = fsub float %196, %179
  %198 = and i32 %138, 255
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F80101020000000
  %201 = fadd fast float %200, -1.000000e+00
  %202 = lshr i32 %138, 8
  %203 = and i32 %202, 255
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F80101020000000
  %206 = fadd fast float %205, -1.000000e+00
  %207 = lshr i32 %138, 16
  %208 = and i32 %207, 255
  %209 = uitofp i32 %208 to float
  %210 = fmul fast float %209, 0x3F80101020000000
  %211 = fadd fast float %210, -1.000000e+00
  %212 = lshr i32 %138, 24
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F80101020000000
  %215 = fadd fast float %214, -1.000000e+00
  %216 = and i32 %139, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F80101020000000
  %219 = fadd fast float %218, -1.000000e+00
  %220 = lshr i32 %139, 8
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F80101020000000
  %224 = fadd fast float %223, -1.000000e+00
  %225 = lshr i32 %139, 16
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F80101020000000
  %229 = fadd fast float %228, -1.000000e+00
  %230 = lshr i32 %139, 24
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F80101020000000
  %233 = fadd fast float %232, -1.000000e+00
  %234 = and i32 %140, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234), !dx.precise !24  ; LegacyF16ToF32(value)
  %236 = lshr i32 %140, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236), !dx.precise !24  ; LegacyF16ToF32(value)
  %238 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %239 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %240 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %241 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %242 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %243 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %244 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %245 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %246 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %247 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %248 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %249 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %250 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %251 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %252 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %253 = lshr i32 %249, 30
  %254 = and i32 %249, 1023
  %255 = uitofp i32 %254 to float
  %256 = fdiv float %255, 1.023000e+03
  %257 = lshr i32 %249, 10
  %258 = and i32 %257, 1023
  %259 = uitofp i32 %258 to float
  %260 = fdiv float %259, 1.023000e+03
  %261 = lshr i32 %249, 20
  %262 = and i32 %261, 511
  %263 = uitofp i32 %262 to float
  %264 = fdiv float %263, 5.110000e+02
  %265 = fmul float %256, 2.000000e+00
  %266 = fmul float %260, 2.000000e+00
  %267 = fmul float %264, 2.000000e+00
  %268 = fadd float %265, -1.000000e+00
  %269 = fadd float %266, -1.000000e+00
  %270 = fadd float %267, -1.000000e+00
  %271 = fmul float %268, 0x3FE6A09E60000000
  %272 = fmul float %269, 0x3FE6A09E60000000
  %273 = fmul float %270, 0x3FE6A09E60000000
  %274 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float %271, float %272, float %273), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %275 = call float @dx.op.unary.f32(i32 7, float %274), !dx.precise !24  ; Saturate(value)
  %276 = fsub float 1.000000e+00, %275
  %277 = call float @dx.op.unary.f32(i32 24, float %276), !dx.precise !24  ; Sqrt(value)
  %278 = icmp eq i32 %253, 0
  br i1 %278, label %285, label %279

; <label>:279                                     ; preds = %173
  %280 = icmp eq i32 %253, 1
  br i1 %280, label %285, label %281

; <label>:281                                     ; preds = %279
  %282 = icmp eq i32 %253, 2
  %283 = select i1 %282, float %277, float %273
  %284 = select i1 %282, float %273, float %277
  br label %285

; <label>:285                                     ; preds = %281, %279, %173
  %286 = phi float [ %277, %173 ], [ %271, %279 ], [ %271, %281 ]
  %287 = phi float [ %271, %173 ], [ %277, %279 ], [ %272, %281 ]
  %288 = phi float [ %272, %173 ], [ %272, %279 ], [ %283, %281 ]
  %289 = phi float [ %273, %173 ], [ %273, %279 ], [ %284, %281 ]
  %290 = fmul float %287, 2.000000e+00
  %291 = fmul float %287, %290
  %292 = fsub float 1.000000e+00, %291
  %293 = fmul float %288, 2.000000e+00
  %294 = fmul float %288, %293
  %295 = fsub float %292, %294
  %296 = fmul float %286, 2.000000e+00
  %297 = fmul float %296, %288
  %298 = fmul float %290, %289
  %299 = fadd float %297, %298
  %300 = fmul float %296, %287
  %301 = fmul float %293, %289
  %302 = fadd float %300, %301
  %303 = fmul float %290, %288
  %304 = fmul float %296, %289
  %305 = fsub float %303, %304
  %306 = fsub float %297, %298
  %307 = fmul float %286, %296
  %308 = fsub float 1.000000e+00, %307
  %309 = fsub float %308, %291
  %310 = and i32 %250, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F80101020000000
  %313 = fadd fast float %312, -1.000000e+00
  %314 = lshr i32 %250, 8
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F80101020000000
  %318 = fadd fast float %317, -1.000000e+00
  %319 = lshr i32 %250, 16
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F80101020000000
  %323 = fadd fast float %322, -1.000000e+00
  %324 = lshr i32 %250, 24
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F80101020000000
  %327 = fadd fast float %326, -1.000000e+00
  %328 = and i32 %251, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F80101020000000
  %331 = fadd fast float %330, -1.000000e+00
  %332 = lshr i32 %251, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F80101020000000
  %336 = fadd fast float %335, -1.000000e+00
  %337 = lshr i32 %251, 16
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F80101020000000
  %341 = fadd fast float %340, -1.000000e+00
  %342 = lshr i32 %251, 24
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F80101020000000
  %345 = fadd fast float %344, -1.000000e+00
  %346 = and i32 %252, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346), !dx.precise !24  ; LegacyF16ToF32(value)
  %348 = lshr i32 %252, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348), !dx.precise !24  ; LegacyF16ToF32(value)
  %350 = fmul float %5, %8
  %351 = fmul float %5, %9
  %352 = fmul float %5, %10
  %353 = fmul float %6, %126
  %354 = fmul float %6, %127
  %355 = fmul float %6, %128
  %356 = fadd float %350, %353
  %357 = fadd float %351, %354
  %358 = fadd float %352, %355
  %359 = fmul float %7, %238
  %360 = fmul float %7, %239
  %361 = fmul float %7, %240
  %362 = fadd float %356, %359
  %363 = fadd float %357, %360
  %364 = fadd float %358, %361
  %365 = fmul float %5, %11
  %366 = fmul float %5, %12
  %367 = fmul float %6, %129
  %368 = fmul float %6, %130
  %369 = fadd float %365, %367
  %370 = fadd float %366, %368
  %371 = fmul float %7, %241
  %372 = fmul float %7, %242
  %373 = fadd float %369, %371
  %374 = fadd float %370, %372
  %375 = fmul float %5, %13
  %376 = fmul float %5, %14
  %377 = fmul float %6, %131
  %378 = fmul float %6, %132
  %379 = fadd float %375, %377
  %380 = fadd float %376, %378
  %381 = fmul float %7, %243
  %382 = fmul float %7, %244
  %383 = fadd float %379, %381
  %384 = fadd float %380, %382
  %385 = fmul float %5, %15
  %386 = fmul float %5, %16
  %387 = fmul float %6, %133
  %388 = fmul float %6, %134
  %389 = fadd float %385, %387
  %390 = fadd float %386, %388
  %391 = fmul float %7, %245
  %392 = fmul float %7, %246
  %393 = fadd float %389, %391
  %394 = fadd float %390, %392
  %395 = fmul fast float %17, %5
  %396 = fmul fast float %18, %5
  %397 = fmul fast float %135, %6
  %398 = fmul fast float %136, %6
  %399 = fadd fast float %397, %395
  %400 = fadd fast float %398, %396
  %401 = fmul fast float %247, %7
  %402 = fmul fast float %248, %7
  %403 = fadd fast float %399, %401
  %404 = fadd fast float %400, %402
  %405 = fmul float %5, %75
  %406 = fmul float %5, %81
  %407 = fmul float %5, %85
  %408 = fmul float %6, %187
  %409 = fmul float %6, %193
  %410 = fmul float %6, %197
  %411 = fadd float %405, %408
  %412 = fadd float %406, %409
  %413 = fadd float %407, %410
  %414 = fmul float %7, %299
  %415 = fmul float %7, %305
  %416 = fmul float %7, %309
  %417 = fadd float %411, %414
  %418 = fadd float %412, %415
  %419 = fadd float %413, %416
  %420 = fmul fast float %71, %5
  %421 = fmul fast float %78, %5
  %422 = fmul fast float %82, %5
  %423 = fmul fast float %183, %6
  %424 = fmul fast float %190, %6
  %425 = fmul fast float %194, %6
  %426 = fadd fast float %423, %420
  %427 = fadd fast float %424, %421
  %428 = fadd fast float %425, %422
  %429 = fmul fast float %295, %7
  %430 = fmul fast float %302, %7
  %431 = fmul fast float %306, %7
  %432 = fadd fast float %426, %429
  %433 = fadd fast float %427, %430
  %434 = fadd fast float %428, %431
  %435 = fmul fast float %89, %5
  %436 = fmul fast float %94, %5
  %437 = fmul fast float %99, %5
  %438 = fmul fast float %103, %5
  %439 = fmul fast float %201, %6
  %440 = fmul fast float %206, %6
  %441 = fmul fast float %211, %6
  %442 = fmul fast float %215, %6
  %443 = fadd fast float %439, %435
  %444 = fadd fast float %440, %436
  %445 = fadd fast float %441, %437
  %446 = fadd fast float %442, %438
  %447 = fmul fast float %313, %7
  %448 = fmul fast float %318, %7
  %449 = fmul fast float %323, %7
  %450 = fmul fast float %327, %7
  %451 = fadd fast float %443, %447
  %452 = fadd fast float %444, %448
  %453 = fadd fast float %445, %449
  %454 = fadd fast float %446, %450
  %455 = fmul fast float %107, %5
  %456 = fmul fast float %112, %5
  %457 = fmul fast float %117, %5
  %458 = fmul fast float %121, %5
  %459 = fmul fast float %219, %6
  %460 = fmul fast float %224, %6
  %461 = fmul fast float %229, %6
  %462 = fmul fast float %233, %6
  %463 = fadd fast float %459, %455
  %464 = fadd fast float %460, %456
  %465 = fadd fast float %461, %457
  %466 = fadd fast float %462, %458
  %467 = fmul fast float %331, %7
  %468 = fmul fast float %336, %7
  %469 = fmul fast float %341, %7
  %470 = fmul fast float %345, %7
  %471 = fadd fast float %463, %467
  %472 = fadd fast float %464, %468
  %473 = fadd fast float %465, %469
  %474 = fadd fast float %466, %470
  %475 = fmul float %5, %123
  %476 = fmul float %6, %235
  %477 = fadd float %475, %476
  %478 = fmul float %7, %347
  %479 = fadd float %477, %478
  %480 = fmul float %5, %125
  %481 = fmul float %6, %237
  %482 = fadd float %480, %481
  %483 = fmul float %7, %349
  %484 = fadd float %482, %483
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 0
  %487 = extractvalue %dx.types.CBufRet.f32 %485, 1
  %488 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %489 = fsub float %362, %486
  %490 = fsub float %363, %487
  %491 = fsub float %364, %488
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %495 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %496 = extractvalue %dx.types.CBufRet.f32 %492, 3
  %497 = fmul float %489, %493
  %498 = call float @dx.op.tertiary.f32(i32 46, float %490, float %494, float %497), !dx.precise !24  ; FMad(a,b,c)
  %499 = call float @dx.op.tertiary.f32(i32 46, float %491, float %495, float %498), !dx.precise !24  ; FMad(a,b,c)
  %500 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %496, float %499), !dx.precise !24  ; FMad(a,b,c)
  %501 = call float @dx.op.binary.f32(i32 35, float %500, float 0x3F1A36E2E0000000), !dx.precise !24  ; FMax(a,b)
  %502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.f32 %502, 0
  %504 = extractvalue %dx.types.CBufRet.f32 %502, 1
  %505 = extractvalue %dx.types.CBufRet.f32 %502, 2
  %506 = extractvalue %dx.types.CBufRet.f32 %502, 3
  %507 = fmul float %503, 0.000000e+00
  %508 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %504, float %507), !dx.precise !24  ; FMad(a,b,c)
  %509 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %505, float %508), !dx.precise !24  ; FMad(a,b,c)
  %510 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %506, float %509), !dx.precise !24  ; FMad(a,b,c)
  %511 = fdiv float %501, %510
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 0
  %514 = fdiv float %511, %513
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 380, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 1
  %521 = bitcast i32 %520 to float
  %522 = extractvalue %dx.types.ResRet.i32 %519, 0
  %523 = bitcast i32 %522 to float
  %524 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %518, i32 0)  ; GetDimensions(handle,mipLevel)
  %525 = extractvalue %dx.types.Dimensions %524, 0
  %526 = sitofp i32 %525 to float
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 2
  %529 = call float @dx.op.unary.f32(i32 6, float %528), !dx.precise !24  ; FAbs(value)
  %530 = fmul float %479, %529
  %531 = fcmp olt float %528, 0.000000e+00
  %532 = fmul float %484, 2.560000e+02
  %533 = fdiv float %530, %532
  %534 = select i1 %531, float %533, float %530
  %535 = fmul float %484, %526
  %536 = fmul float %514, %535
  %537 = call float @dx.op.unary.f32(i32 23, float %536), !dx.precise !24  ; Log(value)
  %538 = extractvalue %dx.types.CBufRet.f32 %527, 1
  %539 = fadd float %537, %538
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %518, %dx.types.Handle %2, float %373, float %374, float undef, float undef, i32 0, i32 0, i32 undef, float %539)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fmul float %523, %541
  %543 = fadd float %521, %542
  %544 = fmul float %534, %543
  %545 = fadd float %544, 0.000000e+00
  %546 = call float @dx.op.dot3.f32(i32 55, float %417, float %418, float %419, float %417, float %418, float %419), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = call float @dx.op.unary.f32(i32 25, float %546), !dx.precise !24  ; Rsqrt(value)
  %548 = fmul float %417, %547
  %549 = fmul float %418, %547
  %550 = fmul float %419, %547
  %551 = fmul float %548, %545
  %552 = fmul float %549, %545
  %553 = fmul float %550, %545
  %554 = fadd float %362, %551
  %555 = fadd float %363, %552
  %556 = fadd float %364, %553
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = fsub float %554, %558
  %562 = fsub float %555, %559
  %563 = fsub float %556, %560
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = extractvalue %dx.types.CBufRet.f32 %564, 1
  %567 = extractvalue %dx.types.CBufRet.f32 %564, 2
  %568 = extractvalue %dx.types.CBufRet.f32 %564, 3
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %572 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %573 = extractvalue %dx.types.CBufRet.f32 %569, 3
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = extractvalue %dx.types.CBufRet.f32 %574, 2
  %578 = extractvalue %dx.types.CBufRet.f32 %574, 3
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %582 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %583 = extractvalue %dx.types.CBufRet.f32 %579, 3
  %584 = fmul float %565, %561
  %585 = call float @dx.op.tertiary.f32(i32 46, float %562, float %566, float %584), !dx.precise !24  ; FMad(a,b,c)
  %586 = call float @dx.op.tertiary.f32(i32 46, float %563, float %567, float %585), !dx.precise !24  ; FMad(a,b,c)
  %587 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %568, float %586), !dx.precise !24  ; FMad(a,b,c)
  %588 = fmul float %570, %561
  %589 = call float @dx.op.tertiary.f32(i32 46, float %562, float %571, float %588), !dx.precise !24  ; FMad(a,b,c)
  %590 = call float @dx.op.tertiary.f32(i32 46, float %563, float %572, float %589), !dx.precise !24  ; FMad(a,b,c)
  %591 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %573, float %590), !dx.precise !24  ; FMad(a,b,c)
  %592 = fmul float %575, %561
  %593 = call float @dx.op.tertiary.f32(i32 46, float %562, float %576, float %592), !dx.precise !24  ; FMad(a,b,c)
  %594 = call float @dx.op.tertiary.f32(i32 46, float %563, float %577, float %593), !dx.precise !24  ; FMad(a,b,c)
  %595 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %578, float %594), !dx.precise !24  ; FMad(a,b,c)
  %596 = fmul float %561, %580
  %597 = call float @dx.op.tertiary.f32(i32 46, float %562, float %581, float %596), !dx.precise !24  ; FMad(a,b,c)
  %598 = call float @dx.op.tertiary.f32(i32 46, float %563, float %582, float %597), !dx.precise !24  ; FMad(a,b,c)
  %599 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %583, float %598), !dx.precise !24  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %587)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %599)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %373)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %383)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %384)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %393)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %394)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %403)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %404)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %25)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %432)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %433)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %434)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %65)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %451)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %452)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %453)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 0, float %471)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 1, float %472)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 2, float %473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 7, i32 0, i8 3, float %474)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 8, i32 0, i8 0, i32 %24)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[69 x i32] [i32 20, i32 33, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 31, i32 0, i32 47, i32 0, i32 64, i32 0, i32 128, i32 0, i32 256, i32 0, i32 512, i32 0, i32 4096, i32 0, i32 8192, i32 0, i32 16384, i32 0, i32 16187407, i32 0, i32 251658240, i32 0, i32 -268435456, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 1, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !53}
!16 = !{!17, !38, !49}
!17 = !{!18, !21, !23, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 1, i8 2, !22}
!24 = !{i32 1}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 0, !22}
!26 = !{i32 2}
!27 = !{i32 4, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 2, !22}
!28 = !{i32 5, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !29}
!29 = !{i32 3, i32 1}
!30 = !{i32 6, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 1, !29}
!31 = !{i32 7, !"NORMAL_TRANSFORM", i8 5, i8 0, !24, i8 1, i32 1, i8 1, i32 3, i8 2, !29}
!32 = !{i32 8, !"NORMAL_TRANSFORM", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 3, i8 3, !29}
!33 = !{i32 9, !"NORMAL_TRANSFORM", i8 5, i8 0, !34, i8 1, i32 1, i8 1, i32 4, i8 0, null}
!34 = !{i32 3}
!35 = !{i32 10, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 1, !29}
!36 = !{i32 11, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 2, null}
!37 = !{i32 12, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 3, !29}
!38 = !{!39, !41, !42, !43, !44, !45, !46, !47, !48}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !24, i8 2, i32 1, i8 4, i32 2, i8 0, !40}
!43 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 3, i8 0, !20}
!44 = !{i32 4, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!45 = !{i32 5, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 5, i8 0, !40}
!46 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !24, i8 2, i32 1, i8 4, i32 6, i8 0, !40}
!47 = !{i32 7, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 7, i8 0, !40}
!48 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 8, i8 0, !29}
!49 = !{!50, !52}
!50 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !51, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!51 = !{i32 0, i32 1, i32 2}
!52 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!53 = !{i32 0, i64 16, i32 2, !54}
!54 = !{i32 2, i32 3}

