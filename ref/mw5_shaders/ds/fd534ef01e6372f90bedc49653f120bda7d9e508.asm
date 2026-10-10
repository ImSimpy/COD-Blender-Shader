;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 0   xy          1     NONE   float       
; TEXCOORD                 1     zw        1     NONE   float     zw
; TANGENT_FRAME            0   x           2     NONE    uint   x   
; DISPLACEMENT             0    y          2     NONE    uint       
; DISPLACEMENT             1     z         2     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        2     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; NORMAL                   0   xyz         1     NONE   float   xyz 
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
; shader hash: 52da928bf8543f666971bb08f8fa8387
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
; TANGENT_FRAME            0        nointerpolation       
; DISPLACEMENT             0        nointerpolation       
; DISPLACEMENT             1        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; NORMAL                   0                 linear       
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
;   [192 x i8] (type annotation not present)
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
; Number of inputs: 12, outputs: 7, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 4 depends on inputs: { 8 }
;   output 5 depends on inputs: { 8 }
;   output 6 depends on inputs: { 8 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !25  ; DomainLocation(component)
  %8 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !25  ; DomainLocation(component)
  %9 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !25  ; DomainLocation(component)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = lshr i32 %15, 30
  %18 = and i32 %15, 1023
  %19 = uitofp i32 %18 to float
  %20 = fdiv float %19, 1.023000e+03
  %21 = lshr i32 %15, 10
  %22 = and i32 %21, 1023
  %23 = uitofp i32 %22 to float
  %24 = fdiv float %23, 1.023000e+03
  %25 = lshr i32 %15, 20
  %26 = and i32 %25, 511
  %27 = uitofp i32 %26 to float
  %28 = fdiv float %27, 5.110000e+02
  %29 = fmul float %20, 2.000000e+00
  %30 = fmul float %24, 2.000000e+00
  %31 = fmul float %28, 2.000000e+00
  %32 = fadd float %29, -1.000000e+00
  %33 = fadd float %30, -1.000000e+00
  %34 = fadd float %31, -1.000000e+00
  %35 = fmul float %32, 0x3FE6A09E60000000
  %36 = fmul float %33, 0x3FE6A09E60000000
  %37 = fmul float %34, 0x3FE6A09E60000000
  %38 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %39 = call float @dx.op.unary.f32(i32 7, float %38), !dx.precise !25  ; Saturate(value)
  %40 = fsub float 1.000000e+00, %39
  %41 = call float @dx.op.unary.f32(i32 24, float %40), !dx.precise !25  ; Sqrt(value)
  %42 = icmp eq i32 %17, 0
  br i1 %42, label %49, label %43

; <label>:43                                      ; preds = %0
  %44 = icmp eq i32 %17, 1
  br i1 %44, label %49, label %45

; <label>:45                                      ; preds = %43
  %46 = icmp eq i32 %17, 2
  %47 = select i1 %46, float %41, float %37
  %48 = select i1 %46, float %37, float %41
  br label %49

; <label>:49                                      ; preds = %45, %43, %0
  %50 = phi float [ %41, %0 ], [ %35, %43 ], [ %35, %45 ]
  %51 = phi float [ %35, %0 ], [ %41, %43 ], [ %36, %45 ]
  %52 = phi float [ %36, %0 ], [ %36, %43 ], [ %47, %45 ]
  %53 = phi float [ %37, %0 ], [ %37, %43 ], [ %48, %45 ]
  %54 = fmul float %50, 2.000000e+00
  %55 = fmul float %54, %52
  %56 = fmul float %51, 2.000000e+00
  %57 = fmul float %56, %53
  %58 = fadd float %55, %57
  %59 = fmul float %56, %52
  %60 = fmul float %54, %53
  %61 = fsub float %59, %60
  %62 = fmul float %50, %54
  %63 = fsub float 1.000000e+00, %62
  %64 = fmul float %51, %56
  %65 = fsub float %63, %64
  %66 = and i32 %16, 65535
  %67 = call float @dx.op.legacyF16ToF32(i32 131, i32 %66), !dx.precise !25  ; LegacyF16ToF32(value)
  %68 = lshr i32 %16, 16
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68), !dx.precise !25  ; LegacyF16ToF32(value)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = lshr i32 %75, 30
  %78 = and i32 %75, 1023
  %79 = uitofp i32 %78 to float
  %80 = fdiv float %79, 1.023000e+03
  %81 = lshr i32 %75, 10
  %82 = and i32 %81, 1023
  %83 = uitofp i32 %82 to float
  %84 = fdiv float %83, 1.023000e+03
  %85 = lshr i32 %75, 20
  %86 = and i32 %85, 511
  %87 = uitofp i32 %86 to float
  %88 = fdiv float %87, 5.110000e+02
  %89 = fmul float %80, 2.000000e+00
  %90 = fmul float %84, 2.000000e+00
  %91 = fmul float %88, 2.000000e+00
  %92 = fadd float %89, -1.000000e+00
  %93 = fadd float %90, -1.000000e+00
  %94 = fadd float %91, -1.000000e+00
  %95 = fmul float %92, 0x3FE6A09E60000000
  %96 = fmul float %93, 0x3FE6A09E60000000
  %97 = fmul float %94, 0x3FE6A09E60000000
  %98 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %95, float %96, float %97), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %99 = call float @dx.op.unary.f32(i32 7, float %98), !dx.precise !25  ; Saturate(value)
  %100 = fsub float 1.000000e+00, %99
  %101 = call float @dx.op.unary.f32(i32 24, float %100), !dx.precise !25  ; Sqrt(value)
  %102 = icmp eq i32 %77, 0
  br i1 %102, label %109, label %103

; <label>:103                                     ; preds = %49
  %104 = icmp eq i32 %77, 1
  br i1 %104, label %109, label %105

; <label>:105                                     ; preds = %103
  %106 = icmp eq i32 %77, 2
  %107 = select i1 %106, float %101, float %97
  %108 = select i1 %106, float %97, float %101
  br label %109

; <label>:109                                     ; preds = %105, %103, %49
  %110 = phi float [ %101, %49 ], [ %95, %103 ], [ %95, %105 ]
  %111 = phi float [ %95, %49 ], [ %101, %103 ], [ %96, %105 ]
  %112 = phi float [ %96, %49 ], [ %96, %103 ], [ %107, %105 ]
  %113 = phi float [ %97, %49 ], [ %97, %103 ], [ %108, %105 ]
  %114 = fmul float %110, 2.000000e+00
  %115 = fmul float %114, %112
  %116 = fmul float %111, 2.000000e+00
  %117 = fmul float %116, %113
  %118 = fadd float %115, %117
  %119 = fmul float %116, %112
  %120 = fmul float %114, %113
  %121 = fsub float %119, %120
  %122 = fmul float %110, %114
  %123 = fsub float 1.000000e+00, %122
  %124 = fmul float %111, %116
  %125 = fsub float %123, %124
  %126 = and i32 %76, 65535
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126), !dx.precise !25  ; LegacyF16ToF32(value)
  %128 = lshr i32 %76, 16
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128), !dx.precise !25  ; LegacyF16ToF32(value)
  %130 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %131 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %132 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %133 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %134 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %135 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %136 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %137 = lshr i32 %135, 30
  %138 = and i32 %135, 1023
  %139 = uitofp i32 %138 to float
  %140 = fdiv float %139, 1.023000e+03
  %141 = lshr i32 %135, 10
  %142 = and i32 %141, 1023
  %143 = uitofp i32 %142 to float
  %144 = fdiv float %143, 1.023000e+03
  %145 = lshr i32 %135, 20
  %146 = and i32 %145, 511
  %147 = uitofp i32 %146 to float
  %148 = fdiv float %147, 5.110000e+02
  %149 = fmul float %140, 2.000000e+00
  %150 = fmul float %144, 2.000000e+00
  %151 = fmul float %148, 2.000000e+00
  %152 = fadd float %149, -1.000000e+00
  %153 = fadd float %150, -1.000000e+00
  %154 = fadd float %151, -1.000000e+00
  %155 = fmul float %152, 0x3FE6A09E60000000
  %156 = fmul float %153, 0x3FE6A09E60000000
  %157 = fmul float %154, 0x3FE6A09E60000000
  %158 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = call float @dx.op.unary.f32(i32 7, float %158), !dx.precise !25  ; Saturate(value)
  %160 = fsub float 1.000000e+00, %159
  %161 = call float @dx.op.unary.f32(i32 24, float %160), !dx.precise !25  ; Sqrt(value)
  %162 = icmp eq i32 %137, 0
  br i1 %162, label %169, label %163

; <label>:163                                     ; preds = %109
  %164 = icmp eq i32 %137, 1
  br i1 %164, label %169, label %165

; <label>:165                                     ; preds = %163
  %166 = icmp eq i32 %137, 2
  %167 = select i1 %166, float %161, float %157
  %168 = select i1 %166, float %157, float %161
  br label %169

; <label>:169                                     ; preds = %165, %163, %109
  %170 = phi float [ %161, %109 ], [ %155, %163 ], [ %155, %165 ]
  %171 = phi float [ %155, %109 ], [ %161, %163 ], [ %156, %165 ]
  %172 = phi float [ %156, %109 ], [ %156, %163 ], [ %167, %165 ]
  %173 = phi float [ %157, %109 ], [ %157, %163 ], [ %168, %165 ]
  %174 = fmul float %170, 2.000000e+00
  %175 = fmul float %174, %172
  %176 = fmul float %171, 2.000000e+00
  %177 = fmul float %176, %173
  %178 = fadd float %175, %177
  %179 = fmul float %176, %172
  %180 = fmul float %174, %173
  %181 = fsub float %179, %180
  %182 = fmul float %170, %174
  %183 = fsub float 1.000000e+00, %182
  %184 = fmul float %171, %176
  %185 = fsub float %183, %184
  %186 = and i32 %136, 65535
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186), !dx.precise !25  ; LegacyF16ToF32(value)
  %188 = lshr i32 %136, 16
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188), !dx.precise !25  ; LegacyF16ToF32(value)
  %190 = fmul float %7, %10
  %191 = fmul float %7, %11
  %192 = fmul float %7, %12
  %193 = fmul float %8, %70
  %194 = fmul float %8, %71
  %195 = fmul float %8, %72
  %196 = fadd float %190, %193
  %197 = fadd float %191, %194
  %198 = fadd float %192, %195
  %199 = fmul float %9, %130
  %200 = fmul float %9, %131
  %201 = fmul float %9, %132
  %202 = fadd float %196, %199
  %203 = fadd float %197, %200
  %204 = fadd float %198, %201
  %205 = fmul float %7, %13
  %206 = fmul float %7, %14
  %207 = fmul float %8, %73
  %208 = fmul float %8, %74
  %209 = fadd float %205, %207
  %210 = fadd float %206, %208
  %211 = fmul float %9, %133
  %212 = fmul float %9, %134
  %213 = fadd float %209, %211
  %214 = fadd float %210, %212
  %215 = fmul float %7, %58
  %216 = fmul float %7, %61
  %217 = fmul float %7, %65
  %218 = fmul float %8, %118
  %219 = fmul float %8, %121
  %220 = fmul float %8, %125
  %221 = fadd float %215, %218
  %222 = fadd float %216, %219
  %223 = fadd float %217, %220
  %224 = fmul float %9, %178
  %225 = fmul float %9, %181
  %226 = fmul float %9, %185
  %227 = fadd float %221, %224
  %228 = fadd float %222, %225
  %229 = fadd float %223, %226
  %230 = fadd float %7, %8
  %231 = fadd float %230, %9
  %232 = fmul float %7, %67
  %233 = fmul float %8, %127
  %234 = fadd float %232, %233
  %235 = fmul float %9, %187
  %236 = fadd float %234, %235
  %237 = fmul float %7, %69
  %238 = fmul float %8, %129
  %239 = fadd float %237, %238
  %240 = fmul float %9, %189
  %241 = fadd float %239, %240
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %249 = fmul float %202, %248
  %250 = fmul float %203, %248
  %251 = fmul float %204, %248
  %252 = fmul float %244, %251
  %253 = fmul float %245, %250
  %254 = fsub float %252, %253
  %255 = fmul float %245, %249
  %256 = fmul float %243, %251
  %257 = fsub float %255, %256
  %258 = fmul float %243, %250
  %259 = fmul float %244, %249
  %260 = fsub float %258, %259
  %261 = fmul float %254, 2.000000e+00
  %262 = fmul float %257, 2.000000e+00
  %263 = fmul float %260, 2.000000e+00
  %264 = fmul float %246, %261
  %265 = fmul float %246, %262
  %266 = fmul float %246, %263
  %267 = fadd float %249, %264
  %268 = fadd float %250, %265
  %269 = fadd float %251, %266
  %270 = fmul float %244, %263
  %271 = fmul float %245, %262
  %272 = fsub float %270, %271
  %273 = fmul float %245, %261
  %274 = fmul float %243, %263
  %275 = fsub float %273, %274
  %276 = fmul float %243, %262
  %277 = fmul float %244, %261
  %278 = fsub float %276, %277
  %279 = fadd float %267, %272
  %280 = fadd float %268, %275
  %281 = fadd float %269, %278
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %285 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.i32 %286, 0
  %288 = extractvalue %dx.types.CBufRet.i32 %286, 1
  %289 = extractvalue %dx.types.CBufRet.i32 %286, 2
  %290 = bitcast float %283 to i32
  %291 = bitcast float %284 to i32
  %292 = bitcast float %285 to i32
  %293 = sub i32 %287, %290
  %294 = sub i32 %288, %291
  %295 = sub i32 %289, %292
  %296 = sitofp i32 %293 to float
  %297 = sitofp i32 %294 to float
  %298 = sitofp i32 %295 to float
  %299 = fmul float %296, 0x3F30000000000000
  %300 = fmul float %297, 0x3F30000000000000
  %301 = fmul float %298, 0x3F30000000000000
  %302 = fadd float %299, %279
  %303 = fadd float %300, %280
  %304 = fadd float %301, %281
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %308 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %309 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %310 = fmul float %306, %302
  %311 = call float @dx.op.tertiary.f32(i32 46, float %303, float %307, float %310), !dx.precise !25  ; FMad(a,b,c)
  %312 = call float @dx.op.tertiary.f32(i32 46, float %304, float %308, float %311), !dx.precise !25  ; FMad(a,b,c)
  %313 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %309, float %312), !dx.precise !25  ; FMad(a,b,c)
  %314 = call float @dx.op.binary.f32(i32 35, float %313, float 0x3F1A36E2E0000000), !dx.precise !25  ; FMax(a,b)
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %318 = extractvalue %dx.types.CBufRet.f32 %315, 2
  %319 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %320 = fmul float %316, 0.000000e+00
  %321 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %317, float %320), !dx.precise !25  ; FMad(a,b,c)
  %322 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %318, float %321), !dx.precise !25  ; FMad(a,b,c)
  %323 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %319, float %322), !dx.precise !25  ; FMad(a,b,c)
  %324 = fdiv float %314, %323
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = fdiv float %324, %326
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = fadd float %329, %302
  %333 = fadd float %330, %303
  %334 = fadd float %331, %304
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 122)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 123)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %345 = call float @dx.op.dot4.f32(i32 56, float %332, float %333, float %334, float 1.000000e+00, float %336, float %337, float %338, float %339), !dx.precise !25  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %346 = call float @dx.op.dot4.f32(i32 56, float %332, float %333, float %334, float 1.000000e+00, float %341, float %342, float %343, float %344), !dx.precise !25  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %347 = fadd float %345, 1.000000e+00
  %348 = fadd float %346, 1.000000e+00
  %349 = fmul float %347, 5.000000e-01
  %350 = fmul float %348, 5.000000e-01
  %351 = fsub float 1.000000e+00, %350
  %352 = call float @dx.op.unary.f32(i32 7, float %349), !dx.precise !25  ; Saturate(value)
  %353 = call float @dx.op.unary.f32(i32 7, float %351), !dx.precise !25  ; Saturate(value)
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 1
  %356 = bitcast i32 %355 to float
  %357 = extractvalue %dx.types.ResRet.i32 %354, 0
  %358 = bitcast i32 %357 to float
  %359 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %360 = extractvalue %dx.types.Dimensions %359, 0
  %361 = sitofp i32 %360 to float
  %362 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %363 = call float @dx.op.unary.f32(i32 6, float %362), !dx.precise !25  ; FAbs(value)
  %364 = fmul float %231, %363
  %365 = fmul float %361, 3.906250e-03
  %366 = fmul float %327, %365
  %367 = call float @dx.op.unary.f32(i32 23, float %366), !dx.precise !25  ; Log(value)
  %368 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %369 = fadd float %367, %368
  %370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float %369)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = fmul float %358, %371
  %373 = fadd float %356, %372
  %374 = fmul float %364, %373
  %375 = fadd float %374, 0.000000e+00
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 1
  %378 = bitcast i32 %377 to float
  %379 = extractvalue %dx.types.ResRet.i32 %376, 0
  %380 = bitcast i32 %379 to float
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, 0
  %384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %385 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %384, i32 0)  ; GetDimensions(handle,mipLevel)
  %386 = extractvalue %dx.types.Dimensions %385, 0
  %387 = sitofp i32 %386 to float
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %390 = call float @dx.op.unary.f32(i32 6, float %389), !dx.precise !25  ; FAbs(value)
  %391 = fmul float %236, %390
  %392 = fcmp olt float %389, 0.000000e+00
  %393 = fmul float %241, 2.560000e+02
  %394 = fdiv float %391, %393
  %395 = select i1 %392, float %394, float %391
  %396 = fmul float %241, %387
  %397 = fmul float %327, %396
  %398 = call float @dx.op.unary.f32(i32 23, float %397), !dx.precise !25  ; Log(value)
  %399 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %400 = fadd float %398, %399
  %401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %384, %dx.types.Handle %3, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float %400)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = fmul float %380, %402
  %404 = fadd float %378, %403
  %405 = fmul float %395, %404
  %406 = fadd float %375, %405
  %407 = call float @dx.op.dot3.f32(i32 55, float %227, float %228, float %229, float %227, float %228, float %229), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = call float @dx.op.unary.f32(i32 25, float %407), !dx.precise !25  ; Rsqrt(value)
  %409 = fmul float %227, %408
  %410 = fmul float %228, %408
  %411 = fmul float %229, %408
  %412 = fmul float %409, %406
  %413 = fmul float %410, %406
  %414 = fmul float %411, %406
  %415 = fadd float %202, %412
  %416 = fadd float %203, %413
  %417 = fadd float %204, %414
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = extractvalue %dx.types.CBufRet.f32 %418, 3
  %423 = fmul fast float %420, %229
  %424 = fmul fast float %421, %228
  %425 = fsub fast float %423, %424
  %426 = fmul fast float %421, %227
  %427 = fmul fast float %419, %229
  %428 = fsub fast float %426, %427
  %429 = fmul fast float %419, %228
  %430 = fmul fast float %420, %227
  %431 = fsub fast float %429, %430
  %432 = fmul fast float %425, 2.000000e+00
  %433 = fmul fast float %428, 2.000000e+00
  %434 = fmul fast float %431, 2.000000e+00
  %435 = fmul fast float %432, %422
  %436 = fmul fast float %433, %422
  %437 = fmul fast float %434, %422
  %438 = fmul fast float %434, %420
  %439 = fmul fast float %433, %421
  %440 = fmul fast float %432, %421
  %441 = fmul fast float %434, %419
  %442 = fmul fast float %433, %419
  %443 = fmul fast float %432, %420
  %444 = fadd fast float %435, %227
  %445 = fsub fast float %444, %439
  %446 = fadd fast float %445, %438
  %447 = fadd fast float %436, %228
  %448 = fsub fast float %447, %441
  %449 = fadd fast float %448, %440
  %450 = fadd fast float %437, %229
  %451 = fsub fast float %450, %443
  %452 = fadd fast float %451, %442
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %455 = fmul float %454, %415
  %456 = fmul float %454, %416
  %457 = fmul float %454, %417
  %458 = fmul float %420, %457
  %459 = fmul float %421, %456
  %460 = fsub float %458, %459
  %461 = fmul float %421, %455
  %462 = fmul float %419, %457
  %463 = fsub float %461, %462
  %464 = fmul float %419, %456
  %465 = fmul float %420, %455
  %466 = fsub float %464, %465
  %467 = fmul float %460, 2.000000e+00
  %468 = fmul float %463, 2.000000e+00
  %469 = fmul float %466, 2.000000e+00
  %470 = fmul float %422, %467
  %471 = fmul float %422, %468
  %472 = fmul float %422, %469
  %473 = fadd float %455, %470
  %474 = fadd float %456, %471
  %475 = fadd float %457, %472
  %476 = fmul float %420, %469
  %477 = fmul float %421, %468
  %478 = fsub float %476, %477
  %479 = fmul float %421, %467
  %480 = fmul float %419, %469
  %481 = fsub float %479, %480
  %482 = fmul float %419, %468
  %483 = fmul float %420, %467
  %484 = fsub float %482, %483
  %485 = fadd float %473, %478
  %486 = fadd float %474, %481
  %487 = fadd float %475, %484
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 0
  %490 = extractvalue %dx.types.CBufRet.f32 %488, 1
  %491 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.i32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.i32 %492, 1
  %495 = extractvalue %dx.types.CBufRet.i32 %492, 2
  %496 = bitcast float %489 to i32
  %497 = bitcast float %490 to i32
  %498 = bitcast float %491 to i32
  %499 = sub i32 %493, %496
  %500 = sub i32 %494, %497
  %501 = sub i32 %495, %498
  %502 = sitofp i32 %499 to float
  %503 = sitofp i32 %500 to float
  %504 = sitofp i32 %501 to float
  %505 = fmul float %502, 0x3F30000000000000
  %506 = fmul float %503, 0x3F30000000000000
  %507 = fmul float %504, 0x3F30000000000000
  %508 = fadd float %505, %485
  %509 = fadd float %506, %486
  %510 = fadd float %507, %487
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %515 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %519 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %520 = extractvalue %dx.types.CBufRet.f32 %516, 3
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %524 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %525 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %528 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %529 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %530 = extractvalue %dx.types.CBufRet.f32 %526, 3
  %531 = fmul float %512, %508
  %532 = call float @dx.op.tertiary.f32(i32 46, float %509, float %513, float %531), !dx.precise !25  ; FMad(a,b,c)
  %533 = call float @dx.op.tertiary.f32(i32 46, float %510, float %514, float %532), !dx.precise !25  ; FMad(a,b,c)
  %534 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %515, float %533), !dx.precise !25  ; FMad(a,b,c)
  %535 = fmul float %517, %508
  %536 = call float @dx.op.tertiary.f32(i32 46, float %509, float %518, float %535), !dx.precise !25  ; FMad(a,b,c)
  %537 = call float @dx.op.tertiary.f32(i32 46, float %510, float %519, float %536), !dx.precise !25  ; FMad(a,b,c)
  %538 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %520, float %537), !dx.precise !25  ; FMad(a,b,c)
  %539 = fmul float %522, %508
  %540 = call float @dx.op.tertiary.f32(i32 46, float %509, float %523, float %539), !dx.precise !25  ; FMad(a,b,c)
  %541 = call float @dx.op.tertiary.f32(i32 46, float %510, float %524, float %540), !dx.precise !25  ; FMad(a,b,c)
  %542 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %525, float %541), !dx.precise !25  ; FMad(a,b,c)
  %543 = fmul float %527, %508
  %544 = call float @dx.op.tertiary.f32(i32 46, float %509, float %528, float %543), !dx.precise !25  ; FMad(a,b,c)
  %545 = call float @dx.op.tertiary.f32(i32 46, float %510, float %529, float %544), !dx.precise !25  ; FMad(a,b,c)
  %546 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %530, float %545), !dx.precise !25  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %538)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %542)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %446)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %449)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %452)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!12 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!13 = !{i32 2, %bModelConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!14 = !{!15}
!15 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!16 = !{[28 x i32] [i32 12, i32 7, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 127, i32 0, i32 15, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!17 = !{void ()* @ds_main, !"ds_main", !18, !4, !40}
!18 = !{!19, !32, !36}
!19 = !{!20, !23, !24, !27, !29, !30, !31}
!20 = !{i32 0, !"POSITION", i8 9, i8 0, !21, i8 2, i32 1, i8 3, i32 0, i8 0, !22}
!21 = !{i32 0}
!22 = !{i32 3, i32 7}
!23 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !21, i8 2, i32 1, i8 2, i32 1, i8 0, null}
!24 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 1, i8 2, !26}
!25 = !{i32 1}
!26 = !{i32 3, i32 3}
!27 = !{i32 3, !"TANGENT_FRAME", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 2, i8 0, !28}
!28 = !{i32 3, i32 1}
!29 = !{i32 4, !"DISPLACEMENT", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 2, i8 1, null}
!30 = !{i32 5, !"DISPLACEMENT", i8 5, i8 0, !25, i8 1, i32 1, i8 1, i32 2, i8 2, !28}
!31 = !{i32 6, !"TESSFACTORS_OFFSET", i8 5, i8 0, !21, i8 1, i32 1, i8 1, i32 2, i8 3, null}
!32 = !{!33, !35}
!33 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{i32 1, !"NORMAL", i8 9, i8 0, !21, i8 2, i32 1, i8 3, i32 1, i8 0, !22}
!36 = !{!37, !39}
!37 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !38, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!38 = !{i32 0, i32 1, i32 2}
!39 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !21, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!40 = !{i32 0, i64 16, i32 2, !41}
!41 = !{i32 2, i32 3}

