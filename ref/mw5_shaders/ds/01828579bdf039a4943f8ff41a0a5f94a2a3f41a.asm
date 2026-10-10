;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 0   xy          1     NONE   float   xy  
; TEXCOORD                 1     zw        1     NONE   float     zw
; LIGHTING_TEXCOORD        0   xy          2     NONE   float   xy  
; LMAP_INDEX               0   x           3     NONE    uint   x   
; TANGENT_FRAME            0    y          3     NONE    uint    y  
; NORMAL_TRANSFORM         1     z         3     NONE    uint     z 
; NORMAL_TRANSFORM         2      w        3     NONE    uint       
; DISPLACEMENT             0   x           4     NONE    uint       
; DISPLACEMENT             1    y          4     NONE    uint    y  
; TESSFACTORS_OFFSET       0     z         4     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        5     NONE   float   xyzw
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
; shader hash: e3700cae125ad41851fb3f65c7c5888a
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
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
; TANGENT_FRAME            0        nointerpolation       
; NORMAL_TRANSFORM         1        nointerpolation       
; NORMAL_TRANSFORM         2        nointerpolation       
; DISPLACEMENT             0        nointerpolation       
; DISPLACEMENT             1        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORDS                0                 linear       
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; NORMAL_TRANSFORM         1                 linear       
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
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB2            cb0     1
;                                   sampler      NA          NA      S0             s5     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1             t0     1
;                                   texture     f32          2d      T2             t1     1
;
;
; ViewId state:
;
; Number of inputs: 19, outputs: 24, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 7, 13, 17 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 7, 13, 17 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 7, 13, 17 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 7, 13, 17 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 5 }
;   output 6 depends on inputs: { 6 }
;   output 7 depends on inputs: { 7 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 12 }
;   output 12 depends on inputs: { 13 }
;   output 13 depends on inputs: { 13 }
;   output 14 depends on inputs: { 13 }
;   output 16 depends on inputs: { 13 }
;   output 17 depends on inputs: { 13 }
;   output 18 depends on inputs: { 13 }
;   output 19 depends on inputs: { 13 }
;   output 20 depends on inputs: { 14 }
;   output 21 depends on inputs: { 14 }
;   output 22 depends on inputs: { 14 }
;   output 23 depends on inputs: { 14 }
; PCInputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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
%bModelConstantBuffer = type { %struct.GfxBaseInstanceData }
%struct.GfxBaseInstanceData = type { <4 x float>, <3 x i32>, float }
%struct.SamplerState = type { i32 }

define void @ds_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !26  ; DomainLocation(component)
  %8 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !26  ; DomainLocation(component)
  %9 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !26  ; DomainLocation(component)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = uitofp i32 %19 to float
  %24 = lshr i32 %20, 30
  %25 = and i32 %20, 1023
  %26 = uitofp i32 %25 to float
  %27 = fdiv float %26, 1.023000e+03
  %28 = lshr i32 %20, 10
  %29 = and i32 %28, 1023
  %30 = uitofp i32 %29 to float
  %31 = fdiv float %30, 1.023000e+03
  %32 = lshr i32 %20, 20
  %33 = and i32 %32, 511
  %34 = uitofp i32 %33 to float
  %35 = fdiv float %34, 5.110000e+02
  %36 = fmul float %27, 2.000000e+00
  %37 = fmul float %31, 2.000000e+00
  %38 = fmul float %35, 2.000000e+00
  %39 = fadd float %36, -1.000000e+00
  %40 = fadd float %37, -1.000000e+00
  %41 = fadd float %38, -1.000000e+00
  %42 = fmul float %39, 0x3FE6A09E60000000
  %43 = fmul float %40, 0x3FE6A09E60000000
  %44 = fmul float %41, 0x3FE6A09E60000000
  %45 = call float @dx.op.dot3.f32(i32 55, float %42, float %43, float %44, float %42, float %43, float %44), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %46 = call float @dx.op.unary.f32(i32 7, float %45), !dx.precise !26  ; Saturate(value)
  %47 = fsub float 1.000000e+00, %46
  %48 = call float @dx.op.unary.f32(i32 24, float %47), !dx.precise !26  ; Sqrt(value)
  %49 = icmp eq i32 %24, 0
  br i1 %49, label %56, label %50

; <label>:50                                      ; preds = %0
  %51 = icmp eq i32 %24, 1
  br i1 %51, label %56, label %52

; <label>:52                                      ; preds = %50
  %53 = icmp eq i32 %24, 2
  %54 = select i1 %53, float %48, float %44
  %55 = select i1 %53, float %44, float %48
  br label %56

; <label>:56                                      ; preds = %52, %50, %0
  %57 = phi float [ %48, %0 ], [ %42, %50 ], [ %42, %52 ]
  %58 = phi float [ %42, %0 ], [ %48, %50 ], [ %43, %52 ]
  %59 = phi float [ %43, %0 ], [ %43, %50 ], [ %54, %52 ]
  %60 = phi float [ %44, %0 ], [ %44, %50 ], [ %55, %52 ]
  %61 = and i32 %20, 536870912
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %62, float -1.000000e+00, float 1.000000e+00
  %64 = fmul float %58, 2.000000e+00
  %65 = fmul float %58, %64
  %66 = fsub float 1.000000e+00, %65
  %67 = fmul float %59, 2.000000e+00
  %68 = fmul float %59, %67
  %69 = fsub float %66, %68
  %70 = fmul float %57, 2.000000e+00
  %71 = fmul float %70, %59
  %72 = fmul float %64, %60
  %73 = fadd float %71, %72
  %74 = fmul float %70, %58
  %75 = fmul float %67, %60
  %76 = fadd float %74, %75
  %77 = fmul float %64, %59
  %78 = fmul float %70, %60
  %79 = fsub float %77, %78
  %80 = fsub float %71, %72
  %81 = fmul float %57, %70
  %82 = fsub float 1.000000e+00, %81
  %83 = fsub float %82, %65
  %84 = and i32 %21, 255
  %85 = uitofp i32 %84 to float
  %86 = fmul fast float %85, 0x3F80101020000000
  %87 = fadd fast float %86, -1.000000e+00
  %88 = lshr i32 %21, 8
  %89 = and i32 %88, 255
  %90 = uitofp i32 %89 to float
  %91 = fmul fast float %90, 0x3F80101020000000
  %92 = fadd fast float %91, -1.000000e+00
  %93 = lshr i32 %21, 16
  %94 = and i32 %93, 255
  %95 = uitofp i32 %94 to float
  %96 = fmul fast float %95, 0x3F80101020000000
  %97 = fadd fast float %96, -1.000000e+00
  %98 = lshr i32 %21, 24
  %99 = uitofp i32 %98 to float
  %100 = fmul fast float %99, 0x3F80101020000000
  %101 = fadd fast float %100, -1.000000e+00
  %102 = and i32 %22, 65535
  %103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %102), !dx.precise !26  ; LegacyF16ToF32(value)
  %104 = lshr i32 %22, 16
  %105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %104), !dx.precise !26  ; LegacyF16ToF32(value)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %112 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %113 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %114 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %115 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %116 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %117 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %118 = lshr i32 %115, 30
  %119 = and i32 %115, 1023
  %120 = uitofp i32 %119 to float
  %121 = fdiv float %120, 1.023000e+03
  %122 = lshr i32 %115, 10
  %123 = and i32 %122, 1023
  %124 = uitofp i32 %123 to float
  %125 = fdiv float %124, 1.023000e+03
  %126 = lshr i32 %115, 20
  %127 = and i32 %126, 511
  %128 = uitofp i32 %127 to float
  %129 = fdiv float %128, 5.110000e+02
  %130 = fmul float %121, 2.000000e+00
  %131 = fmul float %125, 2.000000e+00
  %132 = fmul float %129, 2.000000e+00
  %133 = fadd float %130, -1.000000e+00
  %134 = fadd float %131, -1.000000e+00
  %135 = fadd float %132, -1.000000e+00
  %136 = fmul float %133, 0x3FE6A09E60000000
  %137 = fmul float %134, 0x3FE6A09E60000000
  %138 = fmul float %135, 0x3FE6A09E60000000
  %139 = call float @dx.op.dot3.f32(i32 55, float %136, float %137, float %138, float %136, float %137, float %138), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = call float @dx.op.unary.f32(i32 7, float %139), !dx.precise !26  ; Saturate(value)
  %141 = fsub float 1.000000e+00, %140
  %142 = call float @dx.op.unary.f32(i32 24, float %141), !dx.precise !26  ; Sqrt(value)
  %143 = icmp eq i32 %118, 0
  br i1 %143, label %150, label %144

; <label>:144                                     ; preds = %56
  %145 = icmp eq i32 %118, 1
  br i1 %145, label %150, label %146

; <label>:146                                     ; preds = %144
  %147 = icmp eq i32 %118, 2
  %148 = select i1 %147, float %142, float %138
  %149 = select i1 %147, float %138, float %142
  br label %150

; <label>:150                                     ; preds = %146, %144, %56
  %151 = phi float [ %142, %56 ], [ %136, %144 ], [ %136, %146 ]
  %152 = phi float [ %136, %56 ], [ %142, %144 ], [ %137, %146 ]
  %153 = phi float [ %137, %56 ], [ %137, %144 ], [ %148, %146 ]
  %154 = phi float [ %138, %56 ], [ %138, %144 ], [ %149, %146 ]
  %155 = fmul float %152, 2.000000e+00
  %156 = fmul float %152, %155
  %157 = fsub float 1.000000e+00, %156
  %158 = fmul float %153, 2.000000e+00
  %159 = fmul float %153, %158
  %160 = fsub float %157, %159
  %161 = fmul float %151, 2.000000e+00
  %162 = fmul float %161, %153
  %163 = fmul float %155, %154
  %164 = fadd float %162, %163
  %165 = fmul float %161, %152
  %166 = fmul float %158, %154
  %167 = fadd float %165, %166
  %168 = fmul float %155, %153
  %169 = fmul float %161, %154
  %170 = fsub float %168, %169
  %171 = fsub float %162, %163
  %172 = fmul float %151, %161
  %173 = fsub float 1.000000e+00, %172
  %174 = fsub float %173, %156
  %175 = and i32 %116, 255
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F80101020000000
  %178 = fadd fast float %177, -1.000000e+00
  %179 = lshr i32 %116, 8
  %180 = and i32 %179, 255
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %181, 0x3F80101020000000
  %183 = fadd fast float %182, -1.000000e+00
  %184 = lshr i32 %116, 16
  %185 = and i32 %184, 255
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F80101020000000
  %188 = fadd fast float %187, -1.000000e+00
  %189 = lshr i32 %116, 24
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F80101020000000
  %192 = fadd fast float %191, -1.000000e+00
  %193 = and i32 %117, 65535
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193), !dx.precise !26  ; LegacyF16ToF32(value)
  %195 = lshr i32 %117, 16
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195), !dx.precise !26  ; LegacyF16ToF32(value)
  %197 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %198 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %199 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %200 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %201 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %202 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %203 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %204 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %205 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %206 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %207 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %208 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %209 = lshr i32 %206, 30
  %210 = and i32 %206, 1023
  %211 = uitofp i32 %210 to float
  %212 = fdiv float %211, 1.023000e+03
  %213 = lshr i32 %206, 10
  %214 = and i32 %213, 1023
  %215 = uitofp i32 %214 to float
  %216 = fdiv float %215, 1.023000e+03
  %217 = lshr i32 %206, 20
  %218 = and i32 %217, 511
  %219 = uitofp i32 %218 to float
  %220 = fdiv float %219, 5.110000e+02
  %221 = fmul float %212, 2.000000e+00
  %222 = fmul float %216, 2.000000e+00
  %223 = fmul float %220, 2.000000e+00
  %224 = fadd float %221, -1.000000e+00
  %225 = fadd float %222, -1.000000e+00
  %226 = fadd float %223, -1.000000e+00
  %227 = fmul float %224, 0x3FE6A09E60000000
  %228 = fmul float %225, 0x3FE6A09E60000000
  %229 = fmul float %226, 0x3FE6A09E60000000
  %230 = call float @dx.op.dot3.f32(i32 55, float %227, float %228, float %229, float %227, float %228, float %229), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %231 = call float @dx.op.unary.f32(i32 7, float %230), !dx.precise !26  ; Saturate(value)
  %232 = fsub float 1.000000e+00, %231
  %233 = call float @dx.op.unary.f32(i32 24, float %232), !dx.precise !26  ; Sqrt(value)
  %234 = icmp eq i32 %209, 0
  br i1 %234, label %241, label %235

; <label>:235                                     ; preds = %150
  %236 = icmp eq i32 %209, 1
  br i1 %236, label %241, label %237

; <label>:237                                     ; preds = %235
  %238 = icmp eq i32 %209, 2
  %239 = select i1 %238, float %233, float %229
  %240 = select i1 %238, float %229, float %233
  br label %241

; <label>:241                                     ; preds = %237, %235, %150
  %242 = phi float [ %233, %150 ], [ %227, %235 ], [ %227, %237 ]
  %243 = phi float [ %227, %150 ], [ %233, %235 ], [ %228, %237 ]
  %244 = phi float [ %228, %150 ], [ %228, %235 ], [ %239, %237 ]
  %245 = phi float [ %229, %150 ], [ %229, %235 ], [ %240, %237 ]
  %246 = fmul float %243, 2.000000e+00
  %247 = fmul float %243, %246
  %248 = fsub float 1.000000e+00, %247
  %249 = fmul float %244, 2.000000e+00
  %250 = fmul float %244, %249
  %251 = fsub float %248, %250
  %252 = fmul float %242, 2.000000e+00
  %253 = fmul float %252, %244
  %254 = fmul float %246, %245
  %255 = fadd float %253, %254
  %256 = fmul float %252, %243
  %257 = fmul float %249, %245
  %258 = fadd float %256, %257
  %259 = fmul float %246, %244
  %260 = fmul float %252, %245
  %261 = fsub float %259, %260
  %262 = fsub float %253, %254
  %263 = fmul float %242, %252
  %264 = fsub float 1.000000e+00, %263
  %265 = fsub float %264, %247
  %266 = and i32 %207, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F80101020000000
  %269 = fadd fast float %268, -1.000000e+00
  %270 = lshr i32 %207, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F80101020000000
  %274 = fadd fast float %273, -1.000000e+00
  %275 = lshr i32 %207, 16
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F80101020000000
  %279 = fadd fast float %278, -1.000000e+00
  %280 = lshr i32 %207, 24
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F80101020000000
  %283 = fadd fast float %282, -1.000000e+00
  %284 = and i32 %208, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284), !dx.precise !26  ; LegacyF16ToF32(value)
  %286 = lshr i32 %208, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286), !dx.precise !26  ; LegacyF16ToF32(value)
  %288 = fmul float %7, %10
  %289 = fmul float %7, %11
  %290 = fmul float %7, %12
  %291 = fmul float %8, %106
  %292 = fmul float %8, %107
  %293 = fmul float %8, %108
  %294 = fadd float %288, %291
  %295 = fadd float %289, %292
  %296 = fadd float %290, %293
  %297 = fmul float %9, %197
  %298 = fmul float %9, %198
  %299 = fmul float %9, %199
  %300 = fadd float %294, %297
  %301 = fadd float %295, %298
  %302 = fadd float %296, %299
  %303 = fmul float %7, %13
  %304 = fmul float %7, %14
  %305 = fmul float %8, %109
  %306 = fmul float %8, %110
  %307 = fadd float %303, %305
  %308 = fadd float %304, %306
  %309 = fmul float %9, %200
  %310 = fmul float %9, %201
  %311 = fadd float %307, %309
  %312 = fadd float %308, %310
  %313 = fmul float %7, %15
  %314 = fmul float %7, %16
  %315 = fmul float %8, %111
  %316 = fmul float %8, %112
  %317 = fadd float %313, %315
  %318 = fadd float %314, %316
  %319 = fmul float %9, %202
  %320 = fmul float %9, %203
  %321 = fadd float %317, %319
  %322 = fadd float %318, %320
  %323 = fmul fast float %17, %7
  %324 = fmul fast float %18, %7
  %325 = fmul fast float %113, %8
  %326 = fmul fast float %114, %8
  %327 = fadd fast float %325, %323
  %328 = fadd fast float %326, %324
  %329 = fmul fast float %204, %9
  %330 = fmul fast float %205, %9
  %331 = fadd fast float %327, %329
  %332 = fadd fast float %328, %330
  %333 = fmul float %7, %73
  %334 = fmul float %7, %79
  %335 = fmul float %7, %83
  %336 = fmul float %8, %164
  %337 = fmul float %8, %170
  %338 = fmul float %8, %174
  %339 = fadd float %333, %336
  %340 = fadd float %334, %337
  %341 = fadd float %335, %338
  %342 = fmul float %9, %255
  %343 = fmul float %9, %261
  %344 = fmul float %9, %265
  %345 = fadd float %339, %342
  %346 = fadd float %340, %343
  %347 = fadd float %341, %344
  %348 = fmul fast float %69, %7
  %349 = fmul fast float %76, %7
  %350 = fmul fast float %80, %7
  %351 = fmul fast float %160, %8
  %352 = fmul fast float %167, %8
  %353 = fmul fast float %171, %8
  %354 = fadd fast float %351, %348
  %355 = fadd fast float %352, %349
  %356 = fadd fast float %353, %350
  %357 = fmul fast float %251, %9
  %358 = fmul fast float %258, %9
  %359 = fmul fast float %262, %9
  %360 = fadd fast float %354, %357
  %361 = fadd fast float %355, %358
  %362 = fadd fast float %356, %359
  %363 = fmul fast float %87, %7
  %364 = fmul fast float %92, %7
  %365 = fmul fast float %97, %7
  %366 = fmul fast float %101, %7
  %367 = fmul fast float %178, %8
  %368 = fmul fast float %183, %8
  %369 = fmul fast float %188, %8
  %370 = fmul fast float %192, %8
  %371 = fadd fast float %367, %363
  %372 = fadd fast float %368, %364
  %373 = fadd fast float %369, %365
  %374 = fadd fast float %370, %366
  %375 = fmul fast float %269, %9
  %376 = fmul fast float %274, %9
  %377 = fmul fast float %279, %9
  %378 = fmul fast float %283, %9
  %379 = fadd fast float %371, %375
  %380 = fadd fast float %372, %376
  %381 = fadd fast float %373, %377
  %382 = fadd fast float %374, %378
  %383 = fadd float %7, %8
  %384 = fadd float %383, %9
  %385 = fmul float %7, %103
  %386 = fmul float %8, %194
  %387 = fadd float %385, %386
  %388 = fmul float %9, %285
  %389 = fadd float %387, %388
  %390 = fmul float %7, %105
  %391 = fmul float %8, %196
  %392 = fadd float %390, %391
  %393 = fmul float %9, %287
  %394 = fadd float %392, %393
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %402 = fmul float %300, %401
  %403 = fmul float %301, %401
  %404 = fmul float %302, %401
  %405 = fmul float %397, %404
  %406 = fmul float %398, %403
  %407 = fsub float %405, %406
  %408 = fmul float %398, %402
  %409 = fmul float %396, %404
  %410 = fsub float %408, %409
  %411 = fmul float %396, %403
  %412 = fmul float %397, %402
  %413 = fsub float %411, %412
  %414 = fmul float %407, 2.000000e+00
  %415 = fmul float %410, 2.000000e+00
  %416 = fmul float %413, 2.000000e+00
  %417 = fmul float %399, %414
  %418 = fmul float %399, %415
  %419 = fmul float %399, %416
  %420 = fadd float %402, %417
  %421 = fadd float %403, %418
  %422 = fadd float %404, %419
  %423 = fmul float %397, %416
  %424 = fmul float %398, %415
  %425 = fsub float %423, %424
  %426 = fmul float %398, %414
  %427 = fmul float %396, %416
  %428 = fsub float %426, %427
  %429 = fmul float %396, %415
  %430 = fmul float %397, %414
  %431 = fsub float %429, %430
  %432 = fadd float %420, %425
  %433 = fadd float %421, %428
  %434 = fadd float %422, %431
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.i32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.i32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.i32 %439, 2
  %443 = bitcast float %436 to i32
  %444 = bitcast float %437 to i32
  %445 = bitcast float %438 to i32
  %446 = sub i32 %440, %443
  %447 = sub i32 %441, %444
  %448 = sub i32 %442, %445
  %449 = sitofp i32 %446 to float
  %450 = sitofp i32 %447 to float
  %451 = sitofp i32 %448 to float
  %452 = fmul float %449, 0x3F30000000000000
  %453 = fmul float %450, 0x3F30000000000000
  %454 = fmul float %451, 0x3F30000000000000
  %455 = fadd float %452, %432
  %456 = fadd float %453, %433
  %457 = fadd float %454, %434
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %463 = fmul float %459, %455
  %464 = call float @dx.op.tertiary.f32(i32 46, float %456, float %460, float %463), !dx.precise !26  ; FMad(a,b,c)
  %465 = call float @dx.op.tertiary.f32(i32 46, float %457, float %461, float %464), !dx.precise !26  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %462, float %465), !dx.precise !26  ; FMad(a,b,c)
  %467 = call float @dx.op.binary.f32(i32 35, float %466, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %470 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %471 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %472 = extractvalue %dx.types.CBufRet.f32 %468, 3
  %473 = fmul float %469, 0.000000e+00
  %474 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %470, float %473), !dx.precise !26  ; FMad(a,b,c)
  %475 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %471, float %474), !dx.precise !26  ; FMad(a,b,c)
  %476 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %472, float %475), !dx.precise !26  ; FMad(a,b,c)
  %477 = fdiv float %467, %476
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 0
  %480 = fdiv float %477, %479
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %485 = fadd float %482, %455
  %486 = fadd float %483, %456
  %487 = fadd float %484, %457
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 122)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = extractvalue %dx.types.CBufRet.f32 %488, 3
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 123)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 0
  %495 = extractvalue %dx.types.CBufRet.f32 %493, 1
  %496 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %497 = extractvalue %dx.types.CBufRet.f32 %493, 3
  %498 = call float @dx.op.dot4.f32(i32 56, float %485, float %486, float %487, float 1.000000e+00, float %489, float %490, float %491, float %492), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %499 = call float @dx.op.dot4.f32(i32 56, float %485, float %486, float %487, float 1.000000e+00, float %494, float %495, float %496, float %497), !dx.precise !26  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %500 = fadd float %498, 1.000000e+00
  %501 = fadd float %499, 1.000000e+00
  %502 = fmul float %500, 5.000000e-01
  %503 = fmul float %501, 5.000000e-01
  %504 = fsub float 1.000000e+00, %503
  %505 = call float @dx.op.unary.f32(i32 7, float %502), !dx.precise !26  ; Saturate(value)
  %506 = call float @dx.op.unary.f32(i32 7, float %504), !dx.precise !26  ; Saturate(value)
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 1
  %509 = bitcast i32 %508 to float
  %510 = extractvalue %dx.types.ResRet.i32 %507, 0
  %511 = bitcast i32 %510 to float
  %512 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %513 = extractvalue %dx.types.Dimensions %512, 0
  %514 = sitofp i32 %513 to float
  %515 = extractvalue %dx.types.CBufRet.f32 %478, 2
  %516 = call float @dx.op.unary.f32(i32 6, float %515), !dx.precise !26  ; FAbs(value)
  %517 = fmul float %384, %516
  %518 = fmul float %514, 3.906250e-03
  %519 = fmul float %480, %518
  %520 = call float @dx.op.unary.f32(i32 23, float %519), !dx.precise !26  ; Log(value)
  %521 = extractvalue %dx.types.CBufRet.f32 %478, 1
  %522 = fadd float %520, %521
  %523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %505, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float %522)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = fmul float %511, %524
  %526 = fadd float %509, %525
  %527 = fmul float %517, %526
  %528 = fadd float %527, 0.000000e+00
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 1
  %531 = bitcast i32 %530 to float
  %532 = extractvalue %dx.types.ResRet.i32 %529, 0
  %533 = bitcast i32 %532 to float
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = add i32 %535, 0
  %537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %538 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %537, i32 0)  ; GetDimensions(handle,mipLevel)
  %539 = extractvalue %dx.types.Dimensions %538, 0
  %540 = sitofp i32 %539 to float
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %543 = call float @dx.op.unary.f32(i32 6, float %542), !dx.precise !26  ; FAbs(value)
  %544 = fmul float %389, %543
  %545 = fcmp olt float %542, 0.000000e+00
  %546 = fmul float %394, 2.560000e+02
  %547 = fdiv float %544, %546
  %548 = select i1 %545, float %547, float %544
  %549 = fmul float %394, %540
  %550 = fmul float %480, %549
  %551 = call float @dx.op.unary.f32(i32 23, float %550), !dx.precise !26  ; Log(value)
  %552 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %553 = fadd float %551, %552
  %554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %537, %dx.types.Handle %3, float %321, float %322, float undef, float undef, i32 0, i32 0, i32 undef, float %553)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = fmul float %533, %555
  %557 = fadd float %531, %556
  %558 = fmul float %548, %557
  %559 = fadd float %528, %558
  %560 = call float @dx.op.dot3.f32(i32 55, float %345, float %346, float %347, float %345, float %346, float %347), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.unary.f32(i32 25, float %560), !dx.precise !26  ; Rsqrt(value)
  %562 = fmul float %345, %561
  %563 = fmul float %346, %561
  %564 = fmul float %347, %561
  %565 = fmul float %562, %559
  %566 = fmul float %563, %559
  %567 = fmul float %564, %559
  %568 = fadd float %300, %565
  %569 = fadd float %301, %566
  %570 = fadd float %302, %567
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = extractvalue %dx.types.CBufRet.f32 %571, 3
  %576 = fmul fast float %573, %347
  %577 = fmul fast float %574, %346
  %578 = fsub fast float %576, %577
  %579 = fmul fast float %574, %345
  %580 = fmul fast float %572, %347
  %581 = fsub fast float %579, %580
  %582 = fmul fast float %572, %346
  %583 = fmul fast float %573, %345
  %584 = fsub fast float %582, %583
  %585 = fmul fast float %578, 2.000000e+00
  %586 = fmul fast float %581, 2.000000e+00
  %587 = fmul fast float %584, 2.000000e+00
  %588 = fmul fast float %585, %575
  %589 = fmul fast float %586, %575
  %590 = fmul fast float %587, %575
  %591 = fmul fast float %587, %573
  %592 = fmul fast float %586, %574
  %593 = fmul fast float %585, %574
  %594 = fmul fast float %587, %572
  %595 = fmul fast float %586, %572
  %596 = fmul fast float %585, %573
  %597 = fadd fast float %588, %345
  %598 = fsub fast float %597, %592
  %599 = fadd fast float %598, %591
  %600 = fadd fast float %589, %346
  %601 = fsub fast float %600, %594
  %602 = fadd fast float %601, %593
  %603 = fadd fast float %590, %347
  %604 = fsub fast float %603, %596
  %605 = fadd fast float %604, %595
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %608 = fmul float %607, %568
  %609 = fmul float %607, %569
  %610 = fmul float %607, %570
  %611 = fmul float %573, %610
  %612 = fmul float %574, %609
  %613 = fsub float %611, %612
  %614 = fmul float %574, %608
  %615 = fmul float %572, %610
  %616 = fsub float %614, %615
  %617 = fmul float %572, %609
  %618 = fmul float %573, %608
  %619 = fsub float %617, %618
  %620 = fmul float %613, 2.000000e+00
  %621 = fmul float %616, 2.000000e+00
  %622 = fmul float %619, 2.000000e+00
  %623 = fmul float %575, %620
  %624 = fmul float %575, %621
  %625 = fmul float %575, %622
  %626 = fadd float %608, %623
  %627 = fadd float %609, %624
  %628 = fadd float %610, %625
  %629 = fmul float %573, %622
  %630 = fmul float %574, %621
  %631 = fsub float %629, %630
  %632 = fmul float %574, %620
  %633 = fmul float %572, %622
  %634 = fsub float %632, %633
  %635 = fmul float %572, %621
  %636 = fmul float %573, %620
  %637 = fsub float %635, %636
  %638 = fadd float %626, %631
  %639 = fadd float %627, %634
  %640 = fadd float %628, %637
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %641, 2
  %645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.i32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.i32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.i32 %645, 2
  %649 = bitcast float %642 to i32
  %650 = bitcast float %643 to i32
  %651 = bitcast float %644 to i32
  %652 = sub i32 %646, %649
  %653 = sub i32 %647, %650
  %654 = sub i32 %648, %651
  %655 = sitofp i32 %652 to float
  %656 = sitofp i32 %653 to float
  %657 = sitofp i32 %654 to float
  %658 = fmul float %655, 0x3F30000000000000
  %659 = fmul float %656, 0x3F30000000000000
  %660 = fmul float %657, 0x3F30000000000000
  %661 = fadd float %658, %638
  %662 = fadd float %659, %639
  %663 = fadd float %660, %640
  %664 = fmul fast float %573, %362
  %665 = fmul fast float %574, %361
  %666 = fsub fast float %664, %665
  %667 = fmul fast float %574, %360
  %668 = fmul fast float %572, %362
  %669 = fsub fast float %667, %668
  %670 = fmul fast float %572, %361
  %671 = fmul fast float %573, %360
  %672 = fsub fast float %670, %671
  %673 = fmul fast float %666, 2.000000e+00
  %674 = fmul fast float %669, 2.000000e+00
  %675 = fmul fast float %672, 2.000000e+00
  %676 = fmul fast float %673, %575
  %677 = fmul fast float %674, %575
  %678 = fmul fast float %675, %575
  %679 = fmul fast float %675, %573
  %680 = fmul fast float %674, %574
  %681 = fmul fast float %673, %574
  %682 = fmul fast float %675, %572
  %683 = fmul fast float %674, %572
  %684 = fmul fast float %673, %573
  %685 = fadd fast float %676, %360
  %686 = fsub fast float %685, %680
  %687 = fadd fast float %686, %679
  %688 = fadd fast float %677, %361
  %689 = fsub fast float %688, %682
  %690 = fadd fast float %689, %681
  %691 = fadd fast float %678, %362
  %692 = fsub fast float %691, %684
  %693 = fadd fast float %692, %683
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 0
  %696 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %697 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %698 = extractvalue %dx.types.CBufRet.f32 %694, 3
  %699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %700 = extractvalue %dx.types.CBufRet.f32 %699, 0
  %701 = extractvalue %dx.types.CBufRet.f32 %699, 1
  %702 = extractvalue %dx.types.CBufRet.f32 %699, 2
  %703 = extractvalue %dx.types.CBufRet.f32 %699, 3
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %708 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = extractvalue %dx.types.CBufRet.f32 %709, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %709, 3
  %714 = fmul float %695, %661
  %715 = call float @dx.op.tertiary.f32(i32 46, float %662, float %696, float %714), !dx.precise !26  ; FMad(a,b,c)
  %716 = call float @dx.op.tertiary.f32(i32 46, float %663, float %697, float %715), !dx.precise !26  ; FMad(a,b,c)
  %717 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %698, float %716), !dx.precise !26  ; FMad(a,b,c)
  %718 = fmul float %700, %661
  %719 = call float @dx.op.tertiary.f32(i32 46, float %662, float %701, float %718), !dx.precise !26  ; FMad(a,b,c)
  %720 = call float @dx.op.tertiary.f32(i32 46, float %663, float %702, float %719), !dx.precise !26  ; FMad(a,b,c)
  %721 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %703, float %720), !dx.precise !26  ; FMad(a,b,c)
  %722 = fmul float %705, %661
  %723 = call float @dx.op.tertiary.f32(i32 46, float %662, float %706, float %722), !dx.precise !26  ; FMad(a,b,c)
  %724 = call float @dx.op.tertiary.f32(i32 46, float %663, float %707, float %723), !dx.precise !26  ; FMad(a,b,c)
  %725 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %708, float %724), !dx.precise !26  ; FMad(a,b,c)
  %726 = fmul float %710, %661
  %727 = call float @dx.op.tertiary.f32(i32 46, float %662, float %711, float %726), !dx.precise !26  ; FMad(a,b,c)
  %728 = call float @dx.op.tertiary.f32(i32 46, float %663, float %712, float %727), !dx.precise !26  ; FMad(a,b,c)
  %729 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %713, float %728), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %717)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %721)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %729)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %321)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %322)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %23)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %599)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %602)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %605)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %687)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %690)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %693)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 3, float %63)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %381)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!16}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"ds", i32 6, i32 0}
!4 = !{!5, null, !10, !14}
!5 = !{!6, !8, !9}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !12, !13}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!13 = !{i32 2, %bModelConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!16 = !{[35 x i32] [i32 19, i32 24, i32 15, i32 15, i32 15, i32 0, i32 16, i32 32, i32 79, i32 143, i32 256, i32 512, i32 0, i32 0, i32 1024, i32 1011727, i32 15728640, i32 0, i32 0, i32 15, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!17 = !{void ()* @ds_main, !"ds_main", !18, !4, !49}
!18 = !{!19, !37, !45}
!19 = !{!20, !23, !25, !27, !28, !30, !31, !32, !34, !35, !36}
!20 = !{i32 0, !"POSITION", i8 9, i8 0, !21, i8 2, i32 1, i8 3, i32 0, i8 0, !22}
!21 = !{i32 0}
!22 = !{i32 3, i32 7}
!23 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 1, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 1, i8 2, !24}
!26 = !{i32 1}
!27 = !{i32 3, !"LIGHTING_TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!28 = !{i32 4, !"LMAP_INDEX", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 3, i8 0, !29}
!29 = !{i32 3, i32 1}
!30 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 3, i8 1, !29}
!31 = !{i32 6, !"NORMAL_TRANSFORM", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 3, i8 2, !29}
!32 = !{i32 7, !"NORMAL_TRANSFORM", i8 5, i8 0, !33, i8 1, i32 1, i8 1, i32 3, i8 3, null}
!33 = !{i32 2}
!34 = !{i32 8, !"DISPLACEMENT", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 4, i8 0, null}
!35 = !{i32 9, !"DISPLACEMENT", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 4, i8 1, !29}
!36 = !{i32 10, !"TESSFACTORS_OFFSET", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 4, i8 2, null}
!37 = !{!38, !40, !41, !42, !43, !44}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !21, i8 2, i32 1, i8 3, i32 2, i8 0, !22}
!42 = !{i32 3, !"NORMAL", i8 9, i8 0, !21, i8 2, i32 1, i8 3, i32 3, i8 0, !22}
!43 = !{i32 4, !"TANGENT", i8 9, i8 0, !21, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!44 = !{i32 5, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!45 = !{!46, !48}
!46 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !47, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!47 = !{i32 0, i32 1, i32 2}
!48 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !21, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!49 = !{i32 0, i64 16, i32 2, !50}
!50 = !{i32 2, i32 3}

