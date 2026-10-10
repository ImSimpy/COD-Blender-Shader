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
; LIGHTING_TEXCOORD        0   xy          3     NONE   float   xy  
; NORMAL_TRANSFORM         2   x           4     NONE    uint       
; DISPLACEMENT             0    y          4     NONE    uint    y  
; DISPLACEMENT             1     z         4     NONE    uint     z 
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
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           7     NONE    uint   x   
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
; shader hash: a8fd683a78f49f05080cee66a96bc954
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
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
; TANGENT_FRAME            0        nointerpolation       
; NORMAL_TRANSFORM         1        nointerpolation       
; NORMAL_TRANSFORM         2        nointerpolation       
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
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
; Number of inputs: 21, outputs: 29, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 17, 18 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 17, 18 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 17, 18 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 8, 9, 10, 11, 17, 18 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10 }
;   output 11 depends on inputs: { 11 }
;   output 12 depends on inputs: { 12 }
;   output 13 depends on inputs: { 13 }
;   output 14 depends on inputs: { 5 }
;   output 16 depends on inputs: { 6 }
;   output 17 depends on inputs: { 6 }
;   output 18 depends on inputs: { 6 }
;   output 20 depends on inputs: { 6 }
;   output 21 depends on inputs: { 6 }
;   output 22 depends on inputs: { 6 }
;   output 23 depends on inputs: { 6 }
;   output 24 depends on inputs: { 7 }
;   output 25 depends on inputs: { 7 }
;   output 26 depends on inputs: { 7 }
;   output 27 depends on inputs: { 7 }
;   output 28 depends on inputs: { 20 }
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
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = and i32 %11, 255
  %25 = uitofp i32 %24 to float
  %26 = lshr i32 %11, 8
  %27 = and i32 %26, 255
  %28 = uitofp i32 %27 to float
  %29 = uitofp i32 %18 to float
  %30 = lshr i32 %19, 30
  %31 = and i32 %19, 1023
  %32 = uitofp i32 %31 to float
  %33 = fdiv float %32, 1.023000e+03
  %34 = lshr i32 %19, 10
  %35 = and i32 %34, 1023
  %36 = uitofp i32 %35 to float
  %37 = fdiv float %36, 1.023000e+03
  %38 = lshr i32 %19, 20
  %39 = and i32 %38, 511
  %40 = uitofp i32 %39 to float
  %41 = fdiv float %40, 5.110000e+02
  %42 = fmul float %33, 2.000000e+00
  %43 = fmul float %37, 2.000000e+00
  %44 = fmul float %41, 2.000000e+00
  %45 = fadd float %42, -1.000000e+00
  %46 = fadd float %43, -1.000000e+00
  %47 = fadd float %44, -1.000000e+00
  %48 = fmul float %45, 0x3FE6A09E60000000
  %49 = fmul float %46, 0x3FE6A09E60000000
  %50 = fmul float %47, 0x3FE6A09E60000000
  %51 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %52 = call float @dx.op.unary.f32(i32 7, float %51), !dx.precise !26  ; Saturate(value)
  %53 = fsub float 1.000000e+00, %52
  %54 = call float @dx.op.unary.f32(i32 24, float %53), !dx.precise !26  ; Sqrt(value)
  %55 = icmp eq i32 %30, 0
  br i1 %55, label %62, label %56

; <label>:56                                      ; preds = %0
  %57 = icmp eq i32 %30, 1
  br i1 %57, label %62, label %58

; <label>:58                                      ; preds = %56
  %59 = icmp eq i32 %30, 2
  %60 = select i1 %59, float %54, float %50
  %61 = select i1 %59, float %50, float %54
  br label %62

; <label>:62                                      ; preds = %58, %56, %0
  %63 = phi float [ %54, %0 ], [ %48, %56 ], [ %48, %58 ]
  %64 = phi float [ %48, %0 ], [ %54, %56 ], [ %49, %58 ]
  %65 = phi float [ %49, %0 ], [ %49, %56 ], [ %60, %58 ]
  %66 = phi float [ %50, %0 ], [ %50, %56 ], [ %61, %58 ]
  %67 = and i32 %19, 536870912
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %68, float -1.000000e+00, float 1.000000e+00
  %70 = fmul float %64, 2.000000e+00
  %71 = fmul float %64, %70
  %72 = fsub float 1.000000e+00, %71
  %73 = fmul float %65, 2.000000e+00
  %74 = fmul float %65, %73
  %75 = fsub float %72, %74
  %76 = fmul float %63, 2.000000e+00
  %77 = fmul float %76, %65
  %78 = fmul float %70, %66
  %79 = fadd float %77, %78
  %80 = fmul float %76, %64
  %81 = fmul float %73, %66
  %82 = fadd float %80, %81
  %83 = fmul float %70, %65
  %84 = fmul float %76, %66
  %85 = fsub float %83, %84
  %86 = fsub float %77, %78
  %87 = fmul float %63, %76
  %88 = fsub float 1.000000e+00, %87
  %89 = fsub float %88, %71
  %90 = and i32 %20, 255
  %91 = uitofp i32 %90 to float
  %92 = fmul fast float %91, 0x3F80101020000000
  %93 = fadd fast float %92, -1.000000e+00
  %94 = lshr i32 %20, 8
  %95 = and i32 %94, 255
  %96 = uitofp i32 %95 to float
  %97 = fmul fast float %96, 0x3F80101020000000
  %98 = fadd fast float %97, -1.000000e+00
  %99 = lshr i32 %20, 16
  %100 = and i32 %99, 255
  %101 = uitofp i32 %100 to float
  %102 = fmul fast float %101, 0x3F80101020000000
  %103 = fadd fast float %102, -1.000000e+00
  %104 = lshr i32 %20, 24
  %105 = uitofp i32 %104 to float
  %106 = fmul fast float %105, 0x3F80101020000000
  %107 = fadd fast float %106, -1.000000e+00
  %108 = and i32 %21, 65535
  %109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %108), !dx.precise !26  ; LegacyF16ToF32(value)
  %110 = lshr i32 %21, 16
  %111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %110), !dx.precise !26  ; LegacyF16ToF32(value)
  %112 = and i32 %22, 65535
  %113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %112), !dx.precise !26  ; LegacyF16ToF32(value)
  %114 = lshr i32 %22, 16
  %115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %114), !dx.precise !26  ; LegacyF16ToF32(value)
  %116 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %117 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %118 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %119 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %120 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %121 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %122 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %123 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %124 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %125 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %126 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %127 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %128 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %129 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %130 = and i32 %119, 255
  %131 = uitofp i32 %130 to float
  %132 = lshr i32 %119, 8
  %133 = and i32 %132, 255
  %134 = uitofp i32 %133 to float
  %135 = lshr i32 %126, 30
  %136 = and i32 %126, 1023
  %137 = uitofp i32 %136 to float
  %138 = fdiv float %137, 1.023000e+03
  %139 = lshr i32 %126, 10
  %140 = and i32 %139, 1023
  %141 = uitofp i32 %140 to float
  %142 = fdiv float %141, 1.023000e+03
  %143 = lshr i32 %126, 20
  %144 = and i32 %143, 511
  %145 = uitofp i32 %144 to float
  %146 = fdiv float %145, 5.110000e+02
  %147 = fmul float %138, 2.000000e+00
  %148 = fmul float %142, 2.000000e+00
  %149 = fmul float %146, 2.000000e+00
  %150 = fadd float %147, -1.000000e+00
  %151 = fadd float %148, -1.000000e+00
  %152 = fadd float %149, -1.000000e+00
  %153 = fmul float %150, 0x3FE6A09E60000000
  %154 = fmul float %151, 0x3FE6A09E60000000
  %155 = fmul float %152, 0x3FE6A09E60000000
  %156 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %157 = call float @dx.op.unary.f32(i32 7, float %156), !dx.precise !26  ; Saturate(value)
  %158 = fsub float 1.000000e+00, %157
  %159 = call float @dx.op.unary.f32(i32 24, float %158), !dx.precise !26  ; Sqrt(value)
  %160 = icmp eq i32 %135, 0
  br i1 %160, label %167, label %161

; <label>:161                                     ; preds = %62
  %162 = icmp eq i32 %135, 1
  br i1 %162, label %167, label %163

; <label>:163                                     ; preds = %161
  %164 = icmp eq i32 %135, 2
  %165 = select i1 %164, float %159, float %155
  %166 = select i1 %164, float %155, float %159
  br label %167

; <label>:167                                     ; preds = %163, %161, %62
  %168 = phi float [ %159, %62 ], [ %153, %161 ], [ %153, %163 ]
  %169 = phi float [ %153, %62 ], [ %159, %161 ], [ %154, %163 ]
  %170 = phi float [ %154, %62 ], [ %154, %161 ], [ %165, %163 ]
  %171 = phi float [ %155, %62 ], [ %155, %161 ], [ %166, %163 ]
  %172 = fmul float %169, 2.000000e+00
  %173 = fmul float %169, %172
  %174 = fsub float 1.000000e+00, %173
  %175 = fmul float %170, 2.000000e+00
  %176 = fmul float %170, %175
  %177 = fsub float %174, %176
  %178 = fmul float %168, 2.000000e+00
  %179 = fmul float %178, %170
  %180 = fmul float %172, %171
  %181 = fadd float %179, %180
  %182 = fmul float %178, %169
  %183 = fmul float %175, %171
  %184 = fadd float %182, %183
  %185 = fmul float %172, %170
  %186 = fmul float %178, %171
  %187 = fsub float %185, %186
  %188 = fsub float %179, %180
  %189 = fmul float %168, %178
  %190 = fsub float 1.000000e+00, %189
  %191 = fsub float %190, %173
  %192 = and i32 %127, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F80101020000000
  %195 = fadd fast float %194, -1.000000e+00
  %196 = lshr i32 %127, 8
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F80101020000000
  %200 = fadd fast float %199, -1.000000e+00
  %201 = lshr i32 %127, 16
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F80101020000000
  %205 = fadd fast float %204, -1.000000e+00
  %206 = lshr i32 %127, 24
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F80101020000000
  %209 = fadd fast float %208, -1.000000e+00
  %210 = and i32 %128, 65535
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210), !dx.precise !26  ; LegacyF16ToF32(value)
  %212 = lshr i32 %128, 16
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212), !dx.precise !26  ; LegacyF16ToF32(value)
  %214 = and i32 %129, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214), !dx.precise !26  ; LegacyF16ToF32(value)
  %216 = lshr i32 %129, 16
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216), !dx.precise !26  ; LegacyF16ToF32(value)
  %218 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %219 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %220 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %221 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %222 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %223 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %224 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %225 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %226 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %227 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %228 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %229 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %230 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %231 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %232 = and i32 %221, 255
  %233 = uitofp i32 %232 to float
  %234 = lshr i32 %221, 8
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = lshr i32 %228, 30
  %238 = and i32 %228, 1023
  %239 = uitofp i32 %238 to float
  %240 = fdiv float %239, 1.023000e+03
  %241 = lshr i32 %228, 10
  %242 = and i32 %241, 1023
  %243 = uitofp i32 %242 to float
  %244 = fdiv float %243, 1.023000e+03
  %245 = lshr i32 %228, 20
  %246 = and i32 %245, 511
  %247 = uitofp i32 %246 to float
  %248 = fdiv float %247, 5.110000e+02
  %249 = fmul float %240, 2.000000e+00
  %250 = fmul float %244, 2.000000e+00
  %251 = fmul float %248, 2.000000e+00
  %252 = fadd float %249, -1.000000e+00
  %253 = fadd float %250, -1.000000e+00
  %254 = fadd float %251, -1.000000e+00
  %255 = fmul float %252, 0x3FE6A09E60000000
  %256 = fmul float %253, 0x3FE6A09E60000000
  %257 = fmul float %254, 0x3FE6A09E60000000
  %258 = call float @dx.op.dot3.f32(i32 55, float %255, float %256, float %257, float %255, float %256, float %257), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %259 = call float @dx.op.unary.f32(i32 7, float %258), !dx.precise !26  ; Saturate(value)
  %260 = fsub float 1.000000e+00, %259
  %261 = call float @dx.op.unary.f32(i32 24, float %260), !dx.precise !26  ; Sqrt(value)
  %262 = icmp eq i32 %237, 0
  br i1 %262, label %269, label %263

; <label>:263                                     ; preds = %167
  %264 = icmp eq i32 %237, 1
  br i1 %264, label %269, label %265

; <label>:265                                     ; preds = %263
  %266 = icmp eq i32 %237, 2
  %267 = select i1 %266, float %261, float %257
  %268 = select i1 %266, float %257, float %261
  br label %269

; <label>:269                                     ; preds = %265, %263, %167
  %270 = phi float [ %261, %167 ], [ %255, %263 ], [ %255, %265 ]
  %271 = phi float [ %255, %167 ], [ %261, %263 ], [ %256, %265 ]
  %272 = phi float [ %256, %167 ], [ %256, %263 ], [ %267, %265 ]
  %273 = phi float [ %257, %167 ], [ %257, %263 ], [ %268, %265 ]
  %274 = fmul float %271, 2.000000e+00
  %275 = fmul float %271, %274
  %276 = fsub float 1.000000e+00, %275
  %277 = fmul float %272, 2.000000e+00
  %278 = fmul float %272, %277
  %279 = fsub float %276, %278
  %280 = fmul float %270, 2.000000e+00
  %281 = fmul float %280, %272
  %282 = fmul float %274, %273
  %283 = fadd float %281, %282
  %284 = fmul float %280, %271
  %285 = fmul float %277, %273
  %286 = fadd float %284, %285
  %287 = fmul float %274, %272
  %288 = fmul float %280, %273
  %289 = fsub float %287, %288
  %290 = fsub float %281, %282
  %291 = fmul float %270, %280
  %292 = fsub float 1.000000e+00, %291
  %293 = fsub float %292, %275
  %294 = and i32 %229, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F80101020000000
  %297 = fadd fast float %296, -1.000000e+00
  %298 = lshr i32 %229, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F80101020000000
  %302 = fadd fast float %301, -1.000000e+00
  %303 = lshr i32 %229, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F80101020000000
  %307 = fadd fast float %306, -1.000000e+00
  %308 = lshr i32 %229, 24
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F80101020000000
  %311 = fadd fast float %310, -1.000000e+00
  %312 = and i32 %230, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312), !dx.precise !26  ; LegacyF16ToF32(value)
  %314 = lshr i32 %230, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314), !dx.precise !26  ; LegacyF16ToF32(value)
  %316 = and i32 %231, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316), !dx.precise !26  ; LegacyF16ToF32(value)
  %318 = lshr i32 %231, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318), !dx.precise !26  ; LegacyF16ToF32(value)
  %320 = fmul float %5, %8
  %321 = fmul float %5, %9
  %322 = fmul float %5, %10
  %323 = fmul float %6, %116
  %324 = fmul float %6, %117
  %325 = fmul float %6, %118
  %326 = fadd float %320, %323
  %327 = fadd float %321, %324
  %328 = fadd float %322, %325
  %329 = fmul float %7, %218
  %330 = fmul float %7, %219
  %331 = fmul float %7, %220
  %332 = fadd float %326, %329
  %333 = fadd float %327, %330
  %334 = fadd float %328, %331
  %335 = fmul fast float %25, %5
  %336 = fmul fast float %131, %6
  %337 = fmul fast float %233, %7
  %338 = fadd fast float %336, %335
  %339 = fadd fast float %338, %337
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = fmul fast float %28, %5
  %342 = fmul fast float %134, %6
  %343 = fmul fast float %236, %7
  %344 = fadd fast float %342, %341
  %345 = fadd fast float %344, %343
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = fmul float %5, %12
  %348 = fmul float %5, %13
  %349 = fmul float %6, %120
  %350 = fmul float %6, %121
  %351 = fadd float %347, %349
  %352 = fadd float %348, %350
  %353 = fmul float %7, %222
  %354 = fmul float %7, %223
  %355 = fadd float %351, %353
  %356 = fadd float %352, %354
  %357 = fmul float %5, %14
  %358 = fmul float %5, %15
  %359 = fmul float %6, %122
  %360 = fmul float %6, %123
  %361 = fadd float %357, %359
  %362 = fadd float %358, %360
  %363 = fmul float %7, %224
  %364 = fmul float %7, %225
  %365 = fadd float %361, %363
  %366 = fadd float %362, %364
  %367 = fmul fast float %16, %5
  %368 = fmul fast float %17, %5
  %369 = fmul fast float %124, %6
  %370 = fmul fast float %125, %6
  %371 = fadd fast float %369, %367
  %372 = fadd fast float %370, %368
  %373 = fmul fast float %226, %7
  %374 = fmul fast float %227, %7
  %375 = fadd fast float %371, %373
  %376 = fadd fast float %372, %374
  %377 = fmul float %5, %79
  %378 = fmul float %5, %85
  %379 = fmul float %5, %89
  %380 = fmul float %6, %181
  %381 = fmul float %6, %187
  %382 = fmul float %6, %191
  %383 = fadd float %377, %380
  %384 = fadd float %378, %381
  %385 = fadd float %379, %382
  %386 = fmul float %7, %283
  %387 = fmul float %7, %289
  %388 = fmul float %7, %293
  %389 = fadd float %383, %386
  %390 = fadd float %384, %387
  %391 = fadd float %385, %388
  %392 = fmul fast float %75, %5
  %393 = fmul fast float %82, %5
  %394 = fmul fast float %86, %5
  %395 = fmul fast float %177, %6
  %396 = fmul fast float %184, %6
  %397 = fmul fast float %188, %6
  %398 = fadd fast float %395, %392
  %399 = fadd fast float %396, %393
  %400 = fadd fast float %397, %394
  %401 = fmul fast float %279, %7
  %402 = fmul fast float %286, %7
  %403 = fmul fast float %290, %7
  %404 = fadd fast float %398, %401
  %405 = fadd fast float %399, %402
  %406 = fadd fast float %400, %403
  %407 = fmul fast float %93, %5
  %408 = fmul fast float %98, %5
  %409 = fmul fast float %103, %5
  %410 = fmul fast float %107, %5
  %411 = fmul fast float %195, %6
  %412 = fmul fast float %200, %6
  %413 = fmul fast float %205, %6
  %414 = fmul fast float %209, %6
  %415 = fadd fast float %411, %407
  %416 = fadd fast float %412, %408
  %417 = fadd fast float %413, %409
  %418 = fadd fast float %414, %410
  %419 = fmul fast float %297, %7
  %420 = fmul fast float %302, %7
  %421 = fmul fast float %307, %7
  %422 = fmul fast float %311, %7
  %423 = fadd fast float %415, %419
  %424 = fadd fast float %416, %420
  %425 = fadd fast float %417, %421
  %426 = fadd fast float %418, %422
  %427 = fmul float %5, %109
  %428 = fmul float %6, %211
  %429 = fadd float %427, %428
  %430 = fmul float %7, %313
  %431 = fadd float %429, %430
  %432 = fmul float %5, %111
  %433 = fmul float %6, %213
  %434 = fadd float %432, %433
  %435 = fmul float %7, %315
  %436 = fadd float %434, %435
  %437 = fmul float %5, %113
  %438 = fmul float %6, %215
  %439 = fadd float %437, %438
  %440 = fmul float %7, %317
  %441 = fadd float %439, %440
  %442 = fmul float %5, %115
  %443 = fmul float %6, %217
  %444 = fadd float %442, %443
  %445 = fmul float %7, %319
  %446 = fadd float %444, %445
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 2
  %451 = fsub float %332, %448
  %452 = fsub float %333, %449
  %453 = fsub float %334, %450
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %456 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %457 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %458 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %459 = fmul float %451, %455
  %460 = call float @dx.op.tertiary.f32(i32 46, float %452, float %456, float %459), !dx.precise !26  ; FMad(a,b,c)
  %461 = call float @dx.op.tertiary.f32(i32 46, float %453, float %457, float %460), !dx.precise !26  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %458, float %461), !dx.precise !26  ; FMad(a,b,c)
  %463 = call float @dx.op.binary.f32(i32 35, float %462, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %468 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %469 = fmul float %465, 0.000000e+00
  %470 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %466, float %469), !dx.precise !26  ; FMad(a,b,c)
  %471 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %467, float %470), !dx.precise !26  ; FMad(a,b,c)
  %472 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %468, float %471), !dx.precise !26  ; FMad(a,b,c)
  %473 = fdiv float %463, %472
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 0
  %476 = fdiv float %473, %475
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 288, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = add i32 %478, 0
  %480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 1
  %483 = bitcast i32 %482 to float
  %484 = extractvalue %dx.types.ResRet.i32 %481, 0
  %485 = bitcast i32 %484 to float
  %486 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %480, i32 0)  ; GetDimensions(handle,mipLevel)
  %487 = extractvalue %dx.types.Dimensions %486, 0
  %488 = sitofp i32 %487 to float
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 2
  %491 = call float @dx.op.unary.f32(i32 6, float %490), !dx.precise !26  ; FAbs(value)
  %492 = fmul float %431, %491
  %493 = fcmp olt float %490, 0.000000e+00
  %494 = fmul float %436, 2.560000e+02
  %495 = fdiv float %492, %494
  %496 = select i1 %493, float %495, float %492
  %497 = fmul float %436, %488
  %498 = fmul float %476, %497
  %499 = call float @dx.op.unary.f32(i32 23, float %498), !dx.precise !26  ; Log(value)
  %500 = extractvalue %dx.types.CBufRet.f32 %489, 1
  %501 = fadd float %499, %500
  %502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %480, %dx.types.Handle %2, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float %501)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = fmul float %485, %503
  %505 = fadd float %483, %504
  %506 = fmul float %496, %505
  %507 = fadd float %506, 0.000000e+00
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 1
  %510 = bitcast i32 %509 to float
  %511 = extractvalue %dx.types.ResRet.i32 %508, 0
  %512 = bitcast i32 %511 to float
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = add i32 %514, 0
  %516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %517 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %516, i32 0)  ; GetDimensions(handle,mipLevel)
  %518 = extractvalue %dx.types.Dimensions %517, 0
  %519 = sitofp i32 %518 to float
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %522 = call float @dx.op.unary.f32(i32 6, float %521), !dx.precise !26  ; FAbs(value)
  %523 = fmul float %441, %522
  %524 = fcmp olt float %521, 0.000000e+00
  %525 = fmul float %446, 2.560000e+02
  %526 = fdiv float %523, %525
  %527 = select i1 %524, float %526, float %523
  %528 = fmul float %446, %519
  %529 = fmul float %476, %528
  %530 = call float @dx.op.unary.f32(i32 23, float %529), !dx.precise !26  ; Log(value)
  %531 = extractvalue %dx.types.CBufRet.f32 %520, 1
  %532 = fadd float %530, %531
  %533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %516, %dx.types.Handle %2, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float %532)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = fmul float %512, %534
  %536 = fadd float %510, %535
  %537 = fmul float %527, %536
  %538 = fadd float %507, %537
  %539 = call float @dx.op.dot3.f32(i32 55, float %389, float %390, float %391, float %389, float %390, float %391), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = call float @dx.op.unary.f32(i32 25, float %539), !dx.precise !26  ; Rsqrt(value)
  %541 = fmul float %389, %540
  %542 = fmul float %390, %540
  %543 = fmul float %391, %540
  %544 = fmul float %541, %538
  %545 = fmul float %542, %538
  %546 = fmul float %543, %538
  %547 = fadd float %332, %544
  %548 = fadd float %333, %545
  %549 = fadd float %334, %546
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %553 = extractvalue %dx.types.CBufRet.f32 %550, 2
  %554 = fsub float %547, %551
  %555 = fsub float %548, %552
  %556 = fsub float %549, %553
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 0
  %559 = extractvalue %dx.types.CBufRet.f32 %557, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %557, 2
  %561 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 0
  %564 = extractvalue %dx.types.CBufRet.f32 %562, 1
  %565 = extractvalue %dx.types.CBufRet.f32 %562, 2
  %566 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %571 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %572, 3
  %577 = fmul float %558, %554
  %578 = call float @dx.op.tertiary.f32(i32 46, float %555, float %559, float %577), !dx.precise !26  ; FMad(a,b,c)
  %579 = call float @dx.op.tertiary.f32(i32 46, float %556, float %560, float %578), !dx.precise !26  ; FMad(a,b,c)
  %580 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %561, float %579), !dx.precise !26  ; FMad(a,b,c)
  %581 = fmul float %563, %554
  %582 = call float @dx.op.tertiary.f32(i32 46, float %555, float %564, float %581), !dx.precise !26  ; FMad(a,b,c)
  %583 = call float @dx.op.tertiary.f32(i32 46, float %556, float %565, float %582), !dx.precise !26  ; FMad(a,b,c)
  %584 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %566, float %583), !dx.precise !26  ; FMad(a,b,c)
  %585 = fmul float %568, %554
  %586 = call float @dx.op.tertiary.f32(i32 46, float %555, float %569, float %585), !dx.precise !26  ; FMad(a,b,c)
  %587 = call float @dx.op.tertiary.f32(i32 46, float %556, float %570, float %586), !dx.precise !26  ; FMad(a,b,c)
  %588 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %571, float %587), !dx.precise !26  ; FMad(a,b,c)
  %589 = fmul float %554, %573
  %590 = call float @dx.op.tertiary.f32(i32 46, float %555, float %574, float %589), !dx.precise !26  ; FMad(a,b,c)
  %591 = call float @dx.op.tertiary.f32(i32 46, float %556, float %575, float %590), !dx.precise !26  ; FMad(a,b,c)
  %592 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %576, float %591), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %580)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %365)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %375)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %29)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %389)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %391)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %404)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %405)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %69)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %423)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %424)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 7, i32 0, i8 0, i32 %23)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[37 x i32] [i32 21, i32 29, i32 15, i32 15, i32 15, i32 0, i32 48, i32 16384, i32 16187407, i32 251658240, i32 271, i32 527, i32 1039, i32 2063, i32 4096, i32 8192, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 268435456, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !51}
!16 = !{!17, !37, !47}
!17 = !{!18, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 2, !24}
!26 = !{i32 1}
!27 = !{i32 4, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 3, i8 0, !24}
!28 = !{i32 5, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!29 = !{i32 6, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!30 = !{i32 7, !"NORMAL_TRANSFORM", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 1, i8 3, !22}
!31 = !{i32 8, !"NORMAL_TRANSFORM", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 4, i8 0, null}
!32 = !{i32 2}
!33 = !{i32 9, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 1, !22}
!34 = !{i32 10, !"DISPLACEMENT", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 4, i8 2, !22}
!35 = !{i32 11, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 3, null}
!36 = !{i32 12, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 0, !22}
!37 = !{!38, !40, !41, !42, !43, !44, !45, !46}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !39}
!42 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 3, i8 0, !20}
!43 = !{i32 4, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!44 = !{i32 5, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!45 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!46 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 7, i8 0, !22}
!47 = !{!48, !50}
!48 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !49, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!49 = !{i32 0, i32 1, i32 2}
!50 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!51 = !{i32 0, i64 16, i32 2, !52}
!52 = !{i32 2, i32 3}

