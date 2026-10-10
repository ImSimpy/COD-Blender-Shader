;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint       
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             1     z         1     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        1     NONE    uint       
; TEXCOORD                 0   xy          2     NONE   float       
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float       
; TEXCOORD                 3     zw        3     NONE   float       
; TRANSIENT_INDEX          0   x           4     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TRANSIENT_INDEX          0   x           1     NONE    uint   x   
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
; shader hash: 41839c37f9bccb20e355f50fbc34d70e
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
; TANGENT_FRAME            0        nointerpolation       
; DISPLACEMENT             1        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
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
;   [192 x i8] (type annotation not present)
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
; Number of inputs: 17, outputs: 5, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 4 depends on inputs: { 16 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = lshr i32 %13, 30
  %17 = and i32 %13, 1023
  %18 = uitofp i32 %17 to float
  %19 = fdiv float %18, 1.023000e+03
  %20 = lshr i32 %13, 10
  %21 = and i32 %20, 1023
  %22 = uitofp i32 %21 to float
  %23 = fdiv float %22, 1.023000e+03
  %24 = lshr i32 %13, 20
  %25 = and i32 %24, 511
  %26 = uitofp i32 %25 to float
  %27 = fdiv float %26, 5.110000e+02
  %28 = fmul float %19, 2.000000e+00
  %29 = fmul float %23, 2.000000e+00
  %30 = fmul float %27, 2.000000e+00
  %31 = fadd float %28, -1.000000e+00
  %32 = fadd float %29, -1.000000e+00
  %33 = fadd float %30, -1.000000e+00
  %34 = fmul float %31, 0x3FE6A09E60000000
  %35 = fmul float %32, 0x3FE6A09E60000000
  %36 = fmul float %33, 0x3FE6A09E60000000
  %37 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %38 = call float @dx.op.unary.f32(i32 7, float %37), !dx.precise !24  ; Saturate(value)
  %39 = fsub float 1.000000e+00, %38
  %40 = call float @dx.op.unary.f32(i32 24, float %39), !dx.precise !24  ; Sqrt(value)
  %41 = icmp eq i32 %16, 0
  br i1 %41, label %48, label %42

; <label>:42                                      ; preds = %0
  %43 = icmp eq i32 %16, 1
  br i1 %43, label %48, label %44

; <label>:44                                      ; preds = %42
  %45 = icmp eq i32 %16, 2
  %46 = select i1 %45, float %40, float %36
  %47 = select i1 %45, float %36, float %40
  br label %48

; <label>:48                                      ; preds = %44, %42, %0
  %49 = phi float [ %40, %0 ], [ %34, %42 ], [ %34, %44 ]
  %50 = phi float [ %34, %0 ], [ %40, %42 ], [ %35, %44 ]
  %51 = phi float [ %35, %0 ], [ %35, %42 ], [ %46, %44 ]
  %52 = phi float [ %36, %0 ], [ %36, %42 ], [ %47, %44 ]
  %53 = fmul float %49, 2.000000e+00
  %54 = fmul float %53, %51
  %55 = fmul float %50, 2.000000e+00
  %56 = fmul float %55, %52
  %57 = fadd float %54, %56
  %58 = fmul float %55, %51
  %59 = fmul float %53, %52
  %60 = fsub float %58, %59
  %61 = fmul float %49, %53
  %62 = fsub float 1.000000e+00, %61
  %63 = fmul float %50, %55
  %64 = fsub float %62, %63
  %65 = and i32 %14, 65535
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65), !dx.precise !24  ; LegacyF16ToF32(value)
  %67 = lshr i32 %14, 16
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67), !dx.precise !24  ; LegacyF16ToF32(value)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = lshr i32 %74, 30
  %77 = and i32 %74, 1023
  %78 = uitofp i32 %77 to float
  %79 = fdiv float %78, 1.023000e+03
  %80 = lshr i32 %74, 10
  %81 = and i32 %80, 1023
  %82 = uitofp i32 %81 to float
  %83 = fdiv float %82, 1.023000e+03
  %84 = lshr i32 %74, 20
  %85 = and i32 %84, 511
  %86 = uitofp i32 %85 to float
  %87 = fdiv float %86, 5.110000e+02
  %88 = fmul float %79, 2.000000e+00
  %89 = fmul float %83, 2.000000e+00
  %90 = fmul float %87, 2.000000e+00
  %91 = fadd float %88, -1.000000e+00
  %92 = fadd float %89, -1.000000e+00
  %93 = fadd float %90, -1.000000e+00
  %94 = fmul float %91, 0x3FE6A09E60000000
  %95 = fmul float %92, 0x3FE6A09E60000000
  %96 = fmul float %93, 0x3FE6A09E60000000
  %97 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = call float @dx.op.unary.f32(i32 7, float %97), !dx.precise !24  ; Saturate(value)
  %99 = fsub float 1.000000e+00, %98
  %100 = call float @dx.op.unary.f32(i32 24, float %99), !dx.precise !24  ; Sqrt(value)
  %101 = icmp eq i32 %76, 0
  br i1 %101, label %108, label %102

; <label>:102                                     ; preds = %48
  %103 = icmp eq i32 %76, 1
  br i1 %103, label %108, label %104

; <label>:104                                     ; preds = %102
  %105 = icmp eq i32 %76, 2
  %106 = select i1 %105, float %100, float %96
  %107 = select i1 %105, float %96, float %100
  br label %108

; <label>:108                                     ; preds = %104, %102, %48
  %109 = phi float [ %100, %48 ], [ %94, %102 ], [ %94, %104 ]
  %110 = phi float [ %94, %48 ], [ %100, %102 ], [ %95, %104 ]
  %111 = phi float [ %95, %48 ], [ %95, %102 ], [ %106, %104 ]
  %112 = phi float [ %96, %48 ], [ %96, %102 ], [ %107, %104 ]
  %113 = fmul float %109, 2.000000e+00
  %114 = fmul float %113, %111
  %115 = fmul float %110, 2.000000e+00
  %116 = fmul float %115, %112
  %117 = fadd float %114, %116
  %118 = fmul float %115, %111
  %119 = fmul float %113, %112
  %120 = fsub float %118, %119
  %121 = fmul float %109, %113
  %122 = fsub float 1.000000e+00, %121
  %123 = fmul float %110, %115
  %124 = fsub float %122, %123
  %125 = and i32 %75, 65535
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125), !dx.precise !24  ; LegacyF16ToF32(value)
  %127 = lshr i32 %75, 16
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127), !dx.precise !24  ; LegacyF16ToF32(value)
  %129 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %130 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %131 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %132 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %133 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %134 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %135 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %136 = lshr i32 %134, 30
  %137 = and i32 %134, 1023
  %138 = uitofp i32 %137 to float
  %139 = fdiv float %138, 1.023000e+03
  %140 = lshr i32 %134, 10
  %141 = and i32 %140, 1023
  %142 = uitofp i32 %141 to float
  %143 = fdiv float %142, 1.023000e+03
  %144 = lshr i32 %134, 20
  %145 = and i32 %144, 511
  %146 = uitofp i32 %145 to float
  %147 = fdiv float %146, 5.110000e+02
  %148 = fmul float %139, 2.000000e+00
  %149 = fmul float %143, 2.000000e+00
  %150 = fmul float %147, 2.000000e+00
  %151 = fadd float %148, -1.000000e+00
  %152 = fadd float %149, -1.000000e+00
  %153 = fadd float %150, -1.000000e+00
  %154 = fmul float %151, 0x3FE6A09E60000000
  %155 = fmul float %152, 0x3FE6A09E60000000
  %156 = fmul float %153, 0x3FE6A09E60000000
  %157 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = call float @dx.op.unary.f32(i32 7, float %157), !dx.precise !24  ; Saturate(value)
  %159 = fsub float 1.000000e+00, %158
  %160 = call float @dx.op.unary.f32(i32 24, float %159), !dx.precise !24  ; Sqrt(value)
  %161 = icmp eq i32 %136, 0
  br i1 %161, label %168, label %162

; <label>:162                                     ; preds = %108
  %163 = icmp eq i32 %136, 1
  br i1 %163, label %168, label %164

; <label>:164                                     ; preds = %162
  %165 = icmp eq i32 %136, 2
  %166 = select i1 %165, float %160, float %156
  %167 = select i1 %165, float %156, float %160
  br label %168

; <label>:168                                     ; preds = %164, %162, %108
  %169 = phi float [ %160, %108 ], [ %154, %162 ], [ %154, %164 ]
  %170 = phi float [ %154, %108 ], [ %160, %162 ], [ %155, %164 ]
  %171 = phi float [ %155, %108 ], [ %155, %162 ], [ %166, %164 ]
  %172 = phi float [ %156, %108 ], [ %156, %162 ], [ %167, %164 ]
  %173 = fmul float %169, 2.000000e+00
  %174 = fmul float %173, %171
  %175 = fmul float %170, 2.000000e+00
  %176 = fmul float %175, %172
  %177 = fadd float %174, %176
  %178 = fmul float %175, %171
  %179 = fmul float %173, %172
  %180 = fsub float %178, %179
  %181 = fmul float %169, %173
  %182 = fsub float 1.000000e+00, %181
  %183 = fmul float %170, %175
  %184 = fsub float %182, %183
  %185 = and i32 %135, 65535
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185), !dx.precise !24  ; LegacyF16ToF32(value)
  %187 = lshr i32 %135, 16
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187), !dx.precise !24  ; LegacyF16ToF32(value)
  %189 = fmul float %5, %8
  %190 = fmul float %5, %9
  %191 = fmul float %5, %10
  %192 = fmul float %6, %69
  %193 = fmul float %6, %70
  %194 = fmul float %6, %71
  %195 = fadd float %189, %192
  %196 = fadd float %190, %193
  %197 = fadd float %191, %194
  %198 = fmul float %7, %129
  %199 = fmul float %7, %130
  %200 = fmul float %7, %131
  %201 = fadd float %195, %198
  %202 = fadd float %196, %199
  %203 = fadd float %197, %200
  %204 = fmul float %5, %11
  %205 = fmul float %5, %12
  %206 = fmul float %6, %72
  %207 = fmul float %6, %73
  %208 = fadd float %204, %206
  %209 = fadd float %205, %207
  %210 = fmul float %7, %132
  %211 = fmul float %7, %133
  %212 = fadd float %208, %210
  %213 = fadd float %209, %211
  %214 = fmul float %5, %57
  %215 = fmul float %5, %60
  %216 = fmul float %5, %64
  %217 = fmul float %6, %117
  %218 = fmul float %6, %120
  %219 = fmul float %6, %124
  %220 = fadd float %214, %217
  %221 = fadd float %215, %218
  %222 = fadd float %216, %219
  %223 = fmul float %7, %177
  %224 = fmul float %7, %180
  %225 = fmul float %7, %184
  %226 = fadd float %220, %223
  %227 = fadd float %221, %224
  %228 = fadd float %222, %225
  %229 = fmul float %5, %66
  %230 = fmul float %6, %126
  %231 = fadd float %229, %230
  %232 = fmul float %7, %186
  %233 = fadd float %231, %232
  %234 = fmul float %5, %68
  %235 = fmul float %6, %128
  %236 = fadd float %234, %235
  %237 = fmul float %7, %188
  %238 = fadd float %236, %237
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = fsub float %201, %240
  %244 = fsub float %202, %241
  %245 = fsub float %203, %242
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %250 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %251 = fmul float %243, %247
  %252 = call float @dx.op.tertiary.f32(i32 46, float %244, float %248, float %251), !dx.precise !24  ; FMad(a,b,c)
  %253 = call float @dx.op.tertiary.f32(i32 46, float %245, float %249, float %252), !dx.precise !24  ; FMad(a,b,c)
  %254 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %250, float %253), !dx.precise !24  ; FMad(a,b,c)
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float 0x3F1A36E2E0000000), !dx.precise !24  ; FMax(a,b)
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %260 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %261 = fmul float %257, 0.000000e+00
  %262 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %258, float %261), !dx.precise !24  ; FMad(a,b,c)
  %263 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %259, float %262), !dx.precise !24  ; FMad(a,b,c)
  %264 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %260, float %263), !dx.precise !24  ; FMad(a,b,c)
  %265 = fdiv float %255, %264
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = fdiv float %265, %267
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 344, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 1
  %271 = bitcast i32 %270 to float
  %272 = extractvalue %dx.types.ResRet.i32 %269, 0
  %273 = bitcast i32 %272 to float
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 488, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = add i32 %275, 0
  %277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %278 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %277, i32 0)  ; GetDimensions(handle,mipLevel)
  %279 = extractvalue %dx.types.Dimensions %278, 0
  %280 = sitofp i32 %279 to float
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = call float @dx.op.unary.f32(i32 6, float %282), !dx.precise !24  ; FAbs(value)
  %284 = fmul float %233, %283
  %285 = fcmp olt float %282, 0.000000e+00
  %286 = fmul float %238, 2.560000e+02
  %287 = fdiv float %284, %286
  %288 = select i1 %285, float %287, float %284
  %289 = fmul float %273, %288
  %290 = fadd float %289, 0.000000e+00
  %291 = fmul float %238, %280
  %292 = fmul float %268, %291
  %293 = call float @dx.op.unary.f32(i32 23, float %292), !dx.precise !24  ; Log(value)
  %294 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %295 = fadd float %293, %294
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %277, %dx.types.Handle %2, float %212, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float %295)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fmul float %273, %297
  %299 = fadd float %271, %298
  %300 = fmul float %288, %299
  %301 = fadd float %300, 0.000000e+00
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %308 = fcmp oeq float %307, 0.000000e+00
  br i1 %308, label %317, label %309

; <label>:309                                     ; preds = %168
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = fsub float %311, %201
  %315 = fsub float %312, %202
  %316 = fsub float %313, %203
  br label %317

; <label>:317                                     ; preds = %309, %168
  %318 = phi float [ %314, %309 ], [ %303, %168 ]
  %319 = phi float [ %315, %309 ], [ %304, %168 ]
  %320 = phi float [ %316, %309 ], [ %305, %168 ]
  %321 = call float @dx.op.dot3.f32(i32 55, float %318, float %319, float %320, float %318, float %319, float %320), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 25, float %321), !dx.precise !24  ; Rsqrt(value)
  %323 = fmul float %318, %322
  %324 = fmul float %319, %322
  %325 = fmul float %320, %322
  %326 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %323, float %324, float %325), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call float @dx.op.unary.f32(i32 6, float %326), !dx.precise !24  ; FAbs(value)
  %328 = call float @dx.op.unary.f32(i32 7, float %327), !dx.precise !24  ; Saturate(value)
  %329 = fmul float %328, 5.000000e-01
  %330 = fadd float %329, 2.500000e-01
  %331 = fmul float %290, %330
  %332 = fsub float %301, %331
  %333 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %226, float %227, float %228), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = call float @dx.op.unary.f32(i32 25, float %333), !dx.precise !24  ; Rsqrt(value)
  %335 = fmul float %226, %334
  %336 = fmul float %227, %334
  %337 = fmul float %228, %334
  %338 = fmul float %335, %332
  %339 = fmul float %336, %332
  %340 = fmul float %337, %332
  %341 = fadd float %201, %338
  %342 = fadd float %202, %339
  %343 = fadd float %203, %340
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fsub float %341, %345
  %349 = fsub float %342, %346
  %350 = fsub float %343, %347
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %355 = extractvalue %dx.types.CBufRet.f32 %351, 3
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %361 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %362 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %365 = fmul float %352, %348
  %366 = call float @dx.op.tertiary.f32(i32 46, float %349, float %353, float %365), !dx.precise !24  ; FMad(a,b,c)
  %367 = call float @dx.op.tertiary.f32(i32 46, float %350, float %354, float %366), !dx.precise !24  ; FMad(a,b,c)
  %368 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %355, float %367), !dx.precise !24  ; FMad(a,b,c)
  %369 = fmul float %357, %348
  %370 = call float @dx.op.tertiary.f32(i32 46, float %349, float %358, float %369), !dx.precise !24  ; FMad(a,b,c)
  %371 = call float @dx.op.tertiary.f32(i32 46, float %350, float %359, float %370), !dx.precise !24  ; FMad(a,b,c)
  %372 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %360, float %371), !dx.precise !24  ; FMad(a,b,c)
  %373 = fmul float %348, %303
  %374 = call float @dx.op.tertiary.f32(i32 46, float %349, float %304, float %373), !dx.precise !24  ; FMad(a,b,c)
  %375 = call float @dx.op.tertiary.f32(i32 46, float %350, float %305, float %374), !dx.precise !24  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %361, float %375), !dx.precise !24  ; FMad(a,b,c)
  %377 = fmul float %348, %362
  %378 = call float @dx.op.tertiary.f32(i32 46, float %349, float %363, float %377), !dx.precise !24  ; FMad(a,b,c)
  %379 = call float @dx.op.tertiary.f32(i32 46, float %350, float %307, float %378), !dx.precise !24  ; FMad(a,b,c)
  %380 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %364, float %379), !dx.precise !24  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %15)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!11 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!14 = !{[33 x i32] [i32 17, i32 5, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 16, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !43}
!16 = !{!17, !35, !39}
!17 = !{!18, !21, !22, !23, !26, !28, !30, !32, !33, !34}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, null}
!22 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, null}
!23 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 2, i8 2, !25}
!24 = !{i32 1}
!25 = !{i32 3, i32 3}
!26 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!27 = !{i32 2}
!28 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 3, i8 2, null}
!29 = !{i32 3}
!30 = !{i32 6, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !31}
!31 = !{i32 3, i32 1}
!32 = !{i32 7, !"DISPLACEMENT", i8 5, i8 0, !24, i8 1, i32 1, i8 1, i32 1, i8 2, !31}
!33 = !{i32 8, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 3, null}
!34 = !{i32 9, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 0, !31}
!35 = !{!36, !38}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!37 = !{i32 3, i32 15}
!38 = !{i32 1, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !31}
!39 = !{!40, !42}
!40 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !41, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!41 = !{i32 0, i32 1, i32 2}
!42 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!43 = !{i32 0, i64 16, i32 2, !44}
!44 = !{i32 2, i32 3}

