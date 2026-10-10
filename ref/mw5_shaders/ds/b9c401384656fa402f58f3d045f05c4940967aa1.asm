;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint       
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             0     z         1     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        1     NONE    uint       
; TEXCOORD                 0   xy          2     NONE   float   xy  
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
; shader hash: 6df5bbaebafbfe1233cab8eaba75534a
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
; TANGENT_FRAME            0        nointerpolation       
; DISPLACEMENT             0        nointerpolation       
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
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !38  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !38  ; DomainLocation(component)
  %8 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !38  ; DomainLocation(component)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = lshr i32 %14, 30
  %17 = and i32 %14, 1023
  %18 = uitofp i32 %17 to float
  %19 = fdiv float %18, 1.023000e+03
  %20 = lshr i32 %14, 10
  %21 = and i32 %20, 1023
  %22 = uitofp i32 %21 to float
  %23 = fdiv float %22, 1.023000e+03
  %24 = lshr i32 %14, 20
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
  %37 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %38 = call float @dx.op.unary.f32(i32 7, float %37), !dx.precise !38  ; Saturate(value)
  %39 = fsub float 1.000000e+00, %38
  %40 = call float @dx.op.unary.f32(i32 24, float %39), !dx.precise !38  ; Sqrt(value)
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
  %65 = and i32 %15, 65535
  %66 = call float @dx.op.legacyF16ToF32(i32 131, i32 %65), !dx.precise !38  ; LegacyF16ToF32(value)
  %67 = lshr i32 %15, 16
  %68 = call float @dx.op.legacyF16ToF32(i32 131, i32 %67), !dx.precise !38  ; LegacyF16ToF32(value)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %97 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %94, float %95, float %96), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %98 = call float @dx.op.unary.f32(i32 7, float %97), !dx.precise !38  ; Saturate(value)
  %99 = fsub float 1.000000e+00, %98
  %100 = call float @dx.op.unary.f32(i32 24, float %99), !dx.precise !38  ; Sqrt(value)
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
  %126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %125), !dx.precise !38  ; LegacyF16ToF32(value)
  %127 = lshr i32 %75, 16
  %128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %127), !dx.precise !38  ; LegacyF16ToF32(value)
  %129 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %130 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %131 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %132 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %133 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !38  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %134 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %135 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %157 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = call float @dx.op.unary.f32(i32 7, float %157), !dx.precise !38  ; Saturate(value)
  %159 = fsub float 1.000000e+00, %158
  %160 = call float @dx.op.unary.f32(i32 24, float %159), !dx.precise !38  ; Sqrt(value)
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
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185), !dx.precise !38  ; LegacyF16ToF32(value)
  %187 = lshr i32 %135, 16
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187), !dx.precise !38  ; LegacyF16ToF32(value)
  %189 = fmul float %6, %9
  %190 = fmul float %6, %10
  %191 = fmul float %6, %11
  %192 = fmul float %7, %69
  %193 = fmul float %7, %70
  %194 = fmul float %7, %71
  %195 = fadd float %189, %192
  %196 = fadd float %190, %193
  %197 = fadd float %191, %194
  %198 = fmul float %8, %129
  %199 = fmul float %8, %130
  %200 = fmul float %8, %131
  %201 = fadd float %195, %198
  %202 = fadd float %196, %199
  %203 = fadd float %197, %200
  %204 = fmul float %6, %12
  %205 = fmul float %6, %13
  %206 = fmul float %7, %72
  %207 = fmul float %7, %73
  %208 = fadd float %204, %206
  %209 = fadd float %205, %207
  %210 = fmul float %8, %132
  %211 = fmul float %8, %133
  %212 = fadd float %208, %210
  %213 = fadd float %209, %211
  %214 = fmul float %6, %57
  %215 = fmul float %6, %60
  %216 = fmul float %6, %64
  %217 = fmul float %7, %117
  %218 = fmul float %7, %120
  %219 = fmul float %7, %124
  %220 = fadd float %214, %217
  %221 = fadd float %215, %218
  %222 = fadd float %216, %219
  %223 = fmul float %8, %177
  %224 = fmul float %8, %180
  %225 = fmul float %8, %184
  %226 = fadd float %220, %223
  %227 = fadd float %221, %224
  %228 = fadd float %222, %225
  %229 = fmul float %6, %66
  %230 = fmul float %7, %126
  %231 = fadd float %229, %230
  %232 = fmul float %8, %186
  %233 = fadd float %231, %232
  %234 = fmul float %6, %68
  %235 = fmul float %7, %128
  %236 = fadd float %234, %235
  %237 = fmul float %8, %188
  %238 = fadd float %236, %237
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %246 = fmul float %201, %245
  %247 = fmul float %202, %245
  %248 = fmul float %203, %245
  %249 = fmul float %241, %248
  %250 = fmul float %242, %247
  %251 = fsub float %249, %250
  %252 = fmul float %242, %246
  %253 = fmul float %240, %248
  %254 = fsub float %252, %253
  %255 = fmul float %240, %247
  %256 = fmul float %241, %246
  %257 = fsub float %255, %256
  %258 = fmul float %251, 2.000000e+00
  %259 = fmul float %254, 2.000000e+00
  %260 = fmul float %257, 2.000000e+00
  %261 = fmul float %243, %258
  %262 = fmul float %243, %259
  %263 = fmul float %243, %260
  %264 = fadd float %246, %261
  %265 = fadd float %247, %262
  %266 = fadd float %248, %263
  %267 = fmul float %241, %260
  %268 = fmul float %242, %259
  %269 = fsub float %267, %268
  %270 = fmul float %242, %258
  %271 = fmul float %240, %260
  %272 = fsub float %270, %271
  %273 = fmul float %240, %259
  %274 = fmul float %241, %258
  %275 = fsub float %273, %274
  %276 = fadd float %264, %269
  %277 = fadd float %265, %272
  %278 = fadd float %266, %275
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %281 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %282 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.i32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.i32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.i32 %283, 2
  %287 = bitcast float %280 to i32
  %288 = bitcast float %281 to i32
  %289 = bitcast float %282 to i32
  %290 = sub i32 %284, %287
  %291 = sub i32 %285, %288
  %292 = sub i32 %286, %289
  %293 = sitofp i32 %290 to float
  %294 = sitofp i32 %291 to float
  %295 = sitofp i32 %292 to float
  %296 = fmul float %293, 0x3F30000000000000
  %297 = fmul float %294, 0x3F30000000000000
  %298 = fmul float %295, 0x3F30000000000000
  %299 = fadd float %296, %276
  %300 = fadd float %297, %277
  %301 = fadd float %298, %278
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %307 = fmul float %303, %299
  %308 = call float @dx.op.tertiary.f32(i32 46, float %300, float %304, float %307), !dx.precise !38  ; FMad(a,b,c)
  %309 = call float @dx.op.tertiary.f32(i32 46, float %301, float %305, float %308), !dx.precise !38  ; FMad(a,b,c)
  %310 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %306, float %309), !dx.precise !38  ; FMad(a,b,c)
  %311 = call float @dx.op.binary.f32(i32 35, float %310, float 0x3F1A36E2E0000000), !dx.precise !38  ; FMax(a,b)
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %315 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %316 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %317 = fmul float %313, 0.000000e+00
  %318 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %314, float %317), !dx.precise !38  ; FMad(a,b,c)
  %319 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %315, float %318), !dx.precise !38  ; FMad(a,b,c)
  %320 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %316, float %319), !dx.precise !38  ; FMad(a,b,c)
  %321 = fdiv float %311, %320
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = fdiv float %321, %323
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = add i32 %326, 0
  %328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 1
  %331 = bitcast i32 %330 to float
  %332 = extractvalue %dx.types.ResRet.i32 %329, 0
  %333 = bitcast i32 %332 to float
  %334 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %328, i32 0)  ; GetDimensions(handle,mipLevel)
  %335 = extractvalue %dx.types.Dimensions %334, 0
  %336 = sitofp i32 %335 to float
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %339 = call float @dx.op.unary.f32(i32 6, float %338), !dx.precise !38  ; FAbs(value)
  %340 = fmul float %233, %339
  %341 = fcmp olt float %338, 0.000000e+00
  %342 = fmul float %238, 2.560000e+02
  %343 = fdiv float %340, %342
  %344 = select i1 %341, float %343, float %340
  %345 = fmul float %333, %344
  %346 = fadd float %345, 0.000000e+00
  %347 = fmul float %238, %336
  %348 = fmul float %324, %347
  %349 = call float @dx.op.unary.f32(i32 23, float %348), !dx.precise !38  ; Log(value)
  %350 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %351 = fadd float %349, %350
  %352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %328, %dx.types.Handle %2, float %212, float %213, float undef, float undef, i32 0, i32 0, i32 undef, float %351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = fmul float %333, %353
  %355 = fadd float %331, %354
  %356 = fmul float %344, %355
  %357 = fadd float %356, 0.000000e+00
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = fcmp oeq float %363, 0.000000e+00
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = extractvalue %dx.types.CBufRet.f32 %365, 3
  br i1 %364, label %370, label %406

; <label>:370                                     ; preds = %168
  %371 = call float @dx.op.dot3.f32(i32 55, float %359, float %360, float %361, float %359, float %360, float %361), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %372 = call float @dx.op.unary.f32(i32 25, float %371), !dx.precise !38  ; Rsqrt(value)
  %373 = fmul float %359, %372
  %374 = fmul float %360, %372
  %375 = fmul float %361, %372
  %376 = fmul float %375, %367
  %377 = fmul float %374, %368
  %378 = fsub float %376, %377
  %379 = fmul float %373, %368
  %380 = fmul float %375, %366
  %381 = fsub float %379, %380
  %382 = fmul float %374, %366
  %383 = fmul float %373, %367
  %384 = fsub float %382, %383
  %385 = fmul float %378, 2.000000e+00
  %386 = fmul float %381, 2.000000e+00
  %387 = fmul float %384, 2.000000e+00
  %388 = fmul float %369, %385
  %389 = fmul float %369, %386
  %390 = fmul float %369, %387
  %391 = fsub float %373, %388
  %392 = fsub float %374, %389
  %393 = fsub float %375, %390
  %394 = fmul float %367, %387
  %395 = fmul float %368, %386
  %396 = fsub float %394, %395
  %397 = fmul float %368, %385
  %398 = fmul float %366, %387
  %399 = fsub float %397, %398
  %400 = fmul float %366, %386
  %401 = fmul float %367, %385
  %402 = fsub float %400, %401
  %403 = fadd float %391, %396
  %404 = fadd float %392, %399
  %405 = fadd float %393, %402
  br label %468

; <label>:406                                     ; preds = %168
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.i32 %411, 0
  %413 = extractvalue %dx.types.CBufRet.i32 %411, 1
  %414 = extractvalue %dx.types.CBufRet.i32 %411, 2
  %415 = bitcast float %408 to i32
  %416 = bitcast float %409 to i32
  %417 = bitcast float %410 to i32
  %418 = sub i32 %412, %415
  %419 = sub i32 %413, %416
  %420 = sub i32 %414, %417
  %421 = sitofp i32 %418 to float
  %422 = sitofp i32 %419 to float
  %423 = sitofp i32 %420 to float
  %424 = fmul float %421, 0x3F30000000000000
  %425 = fmul float %422, 0x3F30000000000000
  %426 = fmul float %423, 0x3F30000000000000
  %427 = fsub float -0.000000e+00, %424
  %428 = fsub float -0.000000e+00, %425
  %429 = fsub float -0.000000e+00, %426
  %430 = fmul float %367, %429
  %431 = fmul float %368, %428
  %432 = fsub float %430, %431
  %433 = fmul float %368, %427
  %434 = fmul float %366, %429
  %435 = fsub float %433, %434
  %436 = fmul float %366, %428
  %437 = fmul float %367, %427
  %438 = fsub float %436, %437
  %439 = fmul float %432, 2.000000e+00
  %440 = fmul float %435, 2.000000e+00
  %441 = fmul float %438, 2.000000e+00
  %442 = fmul float %369, %439
  %443 = fmul float %369, %440
  %444 = fmul float %369, %441
  %445 = fsub float %427, %442
  %446 = fsub float %428, %443
  %447 = fsub float %429, %444
  %448 = fmul float %367, %441
  %449 = fmul float %368, %440
  %450 = fsub float %448, %449
  %451 = fmul float %368, %439
  %452 = fmul float %366, %441
  %453 = fsub float %451, %452
  %454 = fmul float %366, %440
  %455 = fmul float %367, %439
  %456 = fsub float %454, %455
  %457 = fadd float %445, %450
  %458 = fadd float %446, %453
  %459 = fadd float %447, %456
  %460 = fsub float %457, %201
  %461 = fsub float %458, %202
  %462 = fsub float %459, %203
  %463 = call float @dx.op.dot3.f32(i32 55, float %460, float %461, float %462, float %460, float %461, float %462), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %464 = call float @dx.op.unary.f32(i32 25, float %463), !dx.precise !38  ; Rsqrt(value)
  %465 = fmul float %464, %460
  %466 = fmul float %464, %461
  %467 = fmul float %464, %462
  br label %468

; <label>:468                                     ; preds = %406, %370
  %469 = phi float [ %403, %370 ], [ %465, %406 ]
  %470 = phi float [ %404, %370 ], [ %466, %406 ]
  %471 = phi float [ %405, %370 ], [ %467, %406 ]
  %472 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %469, float %470, float %471), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = call float @dx.op.unary.f32(i32 6, float %472), !dx.precise !38  ; FAbs(value)
  %474 = call float @dx.op.unary.f32(i32 7, float %473), !dx.precise !38  ; Saturate(value)
  %475 = fmul float %474, 5.000000e-01
  %476 = fadd float %475, 2.500000e-01
  %477 = fmul float %346, %476
  %478 = fsub float %357, %477
  %479 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %226, float %227, float %228), !dx.precise !38  ; Dot3(ax,ay,az,bx,by,bz)
  %480 = call float @dx.op.unary.f32(i32 25, float %479), !dx.precise !38  ; Rsqrt(value)
  %481 = fmul float %226, %480
  %482 = fmul float %227, %480
  %483 = fmul float %228, %480
  %484 = fmul float %481, %478
  %485 = fmul float %482, %478
  %486 = fmul float %483, %478
  %487 = fadd float %201, %484
  %488 = fadd float %202, %485
  %489 = fadd float %203, %486
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 0
  %492 = extractvalue %dx.types.CBufRet.f32 %490, 1
  %493 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %494 = extractvalue %dx.types.CBufRet.f32 %490, 3
  %495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.f32 %495, 3
  %497 = fmul float %496, %487
  %498 = fmul float %496, %488
  %499 = fmul float %496, %489
  %500 = fmul float %492, %499
  %501 = fmul float %493, %498
  %502 = fsub float %500, %501
  %503 = fmul float %493, %497
  %504 = fmul float %491, %499
  %505 = fsub float %503, %504
  %506 = fmul float %491, %498
  %507 = fmul float %492, %497
  %508 = fsub float %506, %507
  %509 = fmul float %502, 2.000000e+00
  %510 = fmul float %505, 2.000000e+00
  %511 = fmul float %508, 2.000000e+00
  %512 = fmul float %494, %509
  %513 = fmul float %494, %510
  %514 = fmul float %494, %511
  %515 = fadd float %497, %512
  %516 = fadd float %498, %513
  %517 = fadd float %499, %514
  %518 = fmul float %492, %511
  %519 = fmul float %493, %510
  %520 = fsub float %518, %519
  %521 = fmul float %493, %509
  %522 = fmul float %491, %511
  %523 = fsub float %521, %522
  %524 = fmul float %491, %510
  %525 = fmul float %492, %509
  %526 = fsub float %524, %525
  %527 = fadd float %515, %520
  %528 = fadd float %516, %523
  %529 = fadd float %517, %526
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %530, 1
  %533 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.i32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.i32 %534, 1
  %537 = extractvalue %dx.types.CBufRet.i32 %534, 2
  %538 = bitcast float %531 to i32
  %539 = bitcast float %532 to i32
  %540 = bitcast float %533 to i32
  %541 = sub i32 %535, %538
  %542 = sub i32 %536, %539
  %543 = sub i32 %537, %540
  %544 = sitofp i32 %541 to float
  %545 = sitofp i32 %542 to float
  %546 = sitofp i32 %543 to float
  %547 = fmul float %544, 0x3F30000000000000
  %548 = fmul float %545, 0x3F30000000000000
  %549 = fmul float %546, 0x3F30000000000000
  %550 = fadd float %547, %527
  %551 = fadd float %548, %528
  %552 = fadd float %549, %529
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %561 = extractvalue %dx.types.CBufRet.f32 %558, 2
  %562 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %563 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %564 = extractvalue %dx.types.CBufRet.f32 %362, 0
  %565 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %566 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %567 = fmul float %554, %550
  %568 = call float @dx.op.tertiary.f32(i32 46, float %551, float %555, float %567), !dx.precise !38  ; FMad(a,b,c)
  %569 = call float @dx.op.tertiary.f32(i32 46, float %552, float %556, float %568), !dx.precise !38  ; FMad(a,b,c)
  %570 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %557, float %569), !dx.precise !38  ; FMad(a,b,c)
  %571 = fmul float %559, %550
  %572 = call float @dx.op.tertiary.f32(i32 46, float %551, float %560, float %571), !dx.precise !38  ; FMad(a,b,c)
  %573 = call float @dx.op.tertiary.f32(i32 46, float %552, float %561, float %572), !dx.precise !38  ; FMad(a,b,c)
  %574 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %562, float %573), !dx.precise !38  ; FMad(a,b,c)
  %575 = fmul float %359, %550
  %576 = call float @dx.op.tertiary.f32(i32 46, float %551, float %360, float %575), !dx.precise !38  ; FMad(a,b,c)
  %577 = call float @dx.op.tertiary.f32(i32 46, float %552, float %361, float %576), !dx.precise !38  ; FMad(a,b,c)
  %578 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %563, float %577), !dx.precise !38  ; FMad(a,b,c)
  %579 = fmul float %564, %550
  %580 = call float @dx.op.tertiary.f32(i32 46, float %551, float %565, float %579), !dx.precise !38  ; FMad(a,b,c)
  %581 = call float @dx.op.tertiary.f32(i32 46, float %552, float %363, float %580), !dx.precise !38  ; FMad(a,b,c)
  %582 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %566, float %581), !dx.precise !38  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %570)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %574)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %578)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %582)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!15}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"ds", i32 6, i32 0}
!4 = !{!5, null, !9, !13}
!5 = !{!6, !8}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11, !12}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!12 = !{i32 2, %bModelConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!15 = !{[26 x i32] [i32 10, i32 4, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 15, i32 15, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ds_main, !"ds_main", !17, !4, !36}
!17 = !{!18, !29, !32}
!18 = !{!19, !22, !23, !25, !27, !28}
!19 = !{i32 0, !"POSITION", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 7}
!22 = !{i32 1, !"COLOR", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 0, null}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TANGENT_FRAME", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 1, !26}
!26 = !{i32 3, i32 1}
!27 = !{i32 4, !"DISPLACEMENT", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 2, !26}
!28 = !{i32 5, !"TESSFACTORS_OFFSET", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 3, null}
!29 = !{!30}
!30 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{!33, !35}
!33 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !34, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!34 = !{i32 0, i32 1, i32 2}
!35 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !20, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!36 = !{i32 0, i64 16, i32 2, !37}
!37 = !{i32 2, i32 3}
!38 = !{i32 1}

