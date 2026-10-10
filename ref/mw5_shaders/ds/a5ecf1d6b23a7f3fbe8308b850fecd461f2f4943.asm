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
; shader hash: 21db95ef7c63360c03f4cafe6745d6cb
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
; Number of inputs: 12, outputs: 4, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 7, 8, 10 }
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
  %365 = fmul float %358, %364
  %366 = fadd float %365, 0.000000e+00
  %367 = fmul float %361, 3.906250e-03
  %368 = fmul float %327, %367
  %369 = call float @dx.op.unary.f32(i32 23, float %368), !dx.precise !25  ; Log(value)
  %370 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %371 = fadd float %369, %370
  %372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float %371)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = fmul float %358, %373
  %375 = fadd float %356, %374
  %376 = fmul float %364, %375
  %377 = fadd float %376, 0.000000e+00
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 1
  %380 = bitcast i32 %379 to float
  %381 = extractvalue %dx.types.ResRet.i32 %378, 0
  %382 = bitcast i32 %381 to float
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 292, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %386, i32 0)  ; GetDimensions(handle,mipLevel)
  %388 = extractvalue %dx.types.Dimensions %387, 0
  %389 = sitofp i32 %388 to float
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %392 = call float @dx.op.unary.f32(i32 6, float %391), !dx.precise !25  ; FAbs(value)
  %393 = fmul float %236, %392
  %394 = fcmp olt float %391, 0.000000e+00
  %395 = fmul float %241, 2.560000e+02
  %396 = fdiv float %393, %395
  %397 = select i1 %394, float %396, float %393
  %398 = fmul float %382, %397
  %399 = fadd float %366, %398
  %400 = fmul float %241, %389
  %401 = fmul float %327, %400
  %402 = call float @dx.op.unary.f32(i32 23, float %401), !dx.precise !25  ; Log(value)
  %403 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %404 = fadd float %402, %403
  %405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %386, %dx.types.Handle %3, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float %404)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = fmul float %382, %406
  %408 = fadd float %380, %407
  %409 = fmul float %397, %408
  %410 = fadd float %377, %409
  %411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.f32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.f32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.f32 %411, 2
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %417 = fcmp oeq float %416, 0.000000e+00
  %418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.f32 %418, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %418, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %418, 2
  %422 = extractvalue %dx.types.CBufRet.f32 %418, 3
  br i1 %417, label %423, label %459

; <label>:423                                     ; preds = %169
  %424 = call float @dx.op.dot3.f32(i32 55, float %412, float %413, float %414, float %412, float %413, float %414), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %425 = call float @dx.op.unary.f32(i32 25, float %424), !dx.precise !25  ; Rsqrt(value)
  %426 = fmul float %412, %425
  %427 = fmul float %413, %425
  %428 = fmul float %414, %425
  %429 = fmul float %428, %420
  %430 = fmul float %427, %421
  %431 = fsub float %429, %430
  %432 = fmul float %426, %421
  %433 = fmul float %428, %419
  %434 = fsub float %432, %433
  %435 = fmul float %427, %419
  %436 = fmul float %426, %420
  %437 = fsub float %435, %436
  %438 = fmul float %431, 2.000000e+00
  %439 = fmul float %434, 2.000000e+00
  %440 = fmul float %437, 2.000000e+00
  %441 = fmul float %422, %438
  %442 = fmul float %422, %439
  %443 = fmul float %422, %440
  %444 = fsub float %426, %441
  %445 = fsub float %427, %442
  %446 = fsub float %428, %443
  %447 = fmul float %420, %440
  %448 = fmul float %421, %439
  %449 = fsub float %447, %448
  %450 = fmul float %421, %438
  %451 = fmul float %419, %440
  %452 = fsub float %450, %451
  %453 = fmul float %419, %439
  %454 = fmul float %420, %438
  %455 = fsub float %453, %454
  %456 = fadd float %444, %449
  %457 = fadd float %445, %452
  %458 = fadd float %446, %455
  br label %521

; <label>:459                                     ; preds = %169
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.i32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.i32 %464, 1
  %467 = extractvalue %dx.types.CBufRet.i32 %464, 2
  %468 = bitcast float %461 to i32
  %469 = bitcast float %462 to i32
  %470 = bitcast float %463 to i32
  %471 = sub i32 %465, %468
  %472 = sub i32 %466, %469
  %473 = sub i32 %467, %470
  %474 = sitofp i32 %471 to float
  %475 = sitofp i32 %472 to float
  %476 = sitofp i32 %473 to float
  %477 = fmul float %474, 0x3F30000000000000
  %478 = fmul float %475, 0x3F30000000000000
  %479 = fmul float %476, 0x3F30000000000000
  %480 = fsub float -0.000000e+00, %477
  %481 = fsub float -0.000000e+00, %478
  %482 = fsub float -0.000000e+00, %479
  %483 = fmul float %420, %482
  %484 = fmul float %421, %481
  %485 = fsub float %483, %484
  %486 = fmul float %421, %480
  %487 = fmul float %419, %482
  %488 = fsub float %486, %487
  %489 = fmul float %419, %481
  %490 = fmul float %420, %480
  %491 = fsub float %489, %490
  %492 = fmul float %485, 2.000000e+00
  %493 = fmul float %488, 2.000000e+00
  %494 = fmul float %491, 2.000000e+00
  %495 = fmul float %422, %492
  %496 = fmul float %422, %493
  %497 = fmul float %422, %494
  %498 = fsub float %480, %495
  %499 = fsub float %481, %496
  %500 = fsub float %482, %497
  %501 = fmul float %420, %494
  %502 = fmul float %421, %493
  %503 = fsub float %501, %502
  %504 = fmul float %421, %492
  %505 = fmul float %419, %494
  %506 = fsub float %504, %505
  %507 = fmul float %419, %493
  %508 = fmul float %420, %492
  %509 = fsub float %507, %508
  %510 = fadd float %498, %503
  %511 = fadd float %499, %506
  %512 = fadd float %500, %509
  %513 = fsub float %510, %202
  %514 = fsub float %511, %203
  %515 = fsub float %512, %204
  %516 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %513, float %514, float %515), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = call float @dx.op.unary.f32(i32 25, float %516), !dx.precise !25  ; Rsqrt(value)
  %518 = fmul float %517, %513
  %519 = fmul float %517, %514
  %520 = fmul float %517, %515
  br label %521

; <label>:521                                     ; preds = %459, %423
  %522 = phi float [ %456, %423 ], [ %518, %459 ]
  %523 = phi float [ %457, %423 ], [ %519, %459 ]
  %524 = phi float [ %458, %423 ], [ %520, %459 ]
  %525 = call float @dx.op.dot3.f32(i32 55, float %227, float %228, float %229, float %522, float %523, float %524), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call float @dx.op.unary.f32(i32 6, float %525), !dx.precise !25  ; FAbs(value)
  %527 = call float @dx.op.unary.f32(i32 7, float %526), !dx.precise !25  ; Saturate(value)
  %528 = fmul float %527, 5.000000e-01
  %529 = fadd float %528, 2.500000e-01
  %530 = fmul float %399, %529
  %531 = fsub float %410, %530
  %532 = call float @dx.op.dot3.f32(i32 55, float %227, float %228, float %229, float %227, float %228, float %229), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = call float @dx.op.unary.f32(i32 25, float %532), !dx.precise !25  ; Rsqrt(value)
  %534 = fmul float %227, %533
  %535 = fmul float %228, %533
  %536 = fmul float %229, %533
  %537 = fmul float %534, %531
  %538 = fmul float %535, %531
  %539 = fmul float %536, %531
  %540 = fadd float %202, %537
  %541 = fadd float %203, %538
  %542 = fadd float %204, %539
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 1
  %546 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %547 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = fmul float %549, %540
  %551 = fmul float %549, %541
  %552 = fmul float %549, %542
  %553 = fmul float %545, %552
  %554 = fmul float %546, %551
  %555 = fsub float %553, %554
  %556 = fmul float %546, %550
  %557 = fmul float %544, %552
  %558 = fsub float %556, %557
  %559 = fmul float %544, %551
  %560 = fmul float %545, %550
  %561 = fsub float %559, %560
  %562 = fmul float %555, 2.000000e+00
  %563 = fmul float %558, 2.000000e+00
  %564 = fmul float %561, 2.000000e+00
  %565 = fmul float %547, %562
  %566 = fmul float %547, %563
  %567 = fmul float %547, %564
  %568 = fadd float %550, %565
  %569 = fadd float %551, %566
  %570 = fadd float %552, %567
  %571 = fmul float %545, %564
  %572 = fmul float %546, %563
  %573 = fsub float %571, %572
  %574 = fmul float %546, %562
  %575 = fmul float %544, %564
  %576 = fsub float %574, %575
  %577 = fmul float %544, %563
  %578 = fmul float %545, %562
  %579 = fsub float %577, %578
  %580 = fadd float %568, %573
  %581 = fadd float %569, %576
  %582 = fadd float %570, %579
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %586 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.i32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.i32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.i32 %587, 2
  %591 = bitcast float %584 to i32
  %592 = bitcast float %585 to i32
  %593 = bitcast float %586 to i32
  %594 = sub i32 %588, %591
  %595 = sub i32 %589, %592
  %596 = sub i32 %590, %593
  %597 = sitofp i32 %594 to float
  %598 = sitofp i32 %595 to float
  %599 = sitofp i32 %596 to float
  %600 = fmul float %597, 0x3F30000000000000
  %601 = fmul float %598, 0x3F30000000000000
  %602 = fmul float %599, 0x3F30000000000000
  %603 = fadd float %600, %580
  %604 = fadd float %601, %581
  %605 = fadd float %602, %582
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %609 = extractvalue %dx.types.CBufRet.f32 %606, 2
  %610 = extractvalue %dx.types.CBufRet.f32 %606, 3
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %615 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %616 = extractvalue %dx.types.CBufRet.f32 %411, 3
  %617 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %618 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %619 = extractvalue %dx.types.CBufRet.f32 %415, 3
  %620 = fmul float %607, %603
  %621 = call float @dx.op.tertiary.f32(i32 46, float %604, float %608, float %620), !dx.precise !25  ; FMad(a,b,c)
  %622 = call float @dx.op.tertiary.f32(i32 46, float %605, float %609, float %621), !dx.precise !25  ; FMad(a,b,c)
  %623 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %610, float %622), !dx.precise !25  ; FMad(a,b,c)
  %624 = fmul float %612, %603
  %625 = call float @dx.op.tertiary.f32(i32 46, float %604, float %613, float %624), !dx.precise !25  ; FMad(a,b,c)
  %626 = call float @dx.op.tertiary.f32(i32 46, float %605, float %614, float %625), !dx.precise !25  ; FMad(a,b,c)
  %627 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %615, float %626), !dx.precise !25  ; FMad(a,b,c)
  %628 = fmul float %412, %603
  %629 = call float @dx.op.tertiary.f32(i32 46, float %604, float %413, float %628), !dx.precise !25  ; FMad(a,b,c)
  %630 = call float @dx.op.tertiary.f32(i32 46, float %605, float %414, float %629), !dx.precise !25  ; FMad(a,b,c)
  %631 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %616, float %630), !dx.precise !25  ; FMad(a,b,c)
  %632 = fmul float %617, %603
  %633 = call float @dx.op.tertiary.f32(i32 46, float %604, float %618, float %632), !dx.precise !25  ; FMad(a,b,c)
  %634 = call float @dx.op.tertiary.f32(i32 46, float %605, float %416, float %633), !dx.precise !25  ; FMad(a,b,c)
  %635 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %619, float %634), !dx.precise !25  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %623)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %631)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %635)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!16 = !{[28 x i32] [i32 12, i32 4, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!17 = !{void ()* @ds_main, !"ds_main", !18, !4, !39}
!18 = !{!19, !32, !35}
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
!32 = !{!33}
!33 = !{i32 0, !"SV_Position", i8 9, i8 3, !21, i8 4, i32 1, i8 4, i32 0, i8 0, !34}
!34 = !{i32 3, i32 15}
!35 = !{!36, !38}
!36 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !37, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!37 = !{i32 0, i32 1, i32 2}
!38 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !21, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!39 = !{i32 0, i64 16, i32 2, !40}
!40 = !{i32 2, i32 3}

