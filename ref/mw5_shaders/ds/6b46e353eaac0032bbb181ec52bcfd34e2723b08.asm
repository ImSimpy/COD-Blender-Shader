;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint       
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             1     z         1     NONE    uint     z 
; DISPLACEMENT             3      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float       
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float       
; TEXCOORD                 3     zw        3     NONE   float     zw
; TESSFACTORS_OFFSET       0   x           4     NONE    uint       
; TRANSIENT_INDEX          0    y          4     NONE    uint    y  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRANSIENT_INDEX          0   x           2     NONE    uint   x   
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
; shader hash: a18328468e27979f44aeefa8195f46d4
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
; DISPLACEMENT             3        nointerpolation       
; TESSFACTORS_OFFSET       0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; NORMAL                   0                 linear       
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
; Number of inputs: 18, outputs: 9, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 7, 10, 11, 14, 15 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 7, 10, 11, 14, 15 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 7, 10, 11, 14, 15 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 7, 10, 11, 14, 15 }
;   output 4 depends on inputs: { 5 }
;   output 5 depends on inputs: { 5 }
;   output 6 depends on inputs: { 5 }
;   output 8 depends on inputs: { 17 }
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
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = lshr i32 %15, 30
  %20 = and i32 %15, 1023
  %21 = uitofp i32 %20 to float
  %22 = fdiv float %21, 1.023000e+03
  %23 = lshr i32 %15, 10
  %24 = and i32 %23, 1023
  %25 = uitofp i32 %24 to float
  %26 = fdiv float %25, 1.023000e+03
  %27 = lshr i32 %15, 20
  %28 = and i32 %27, 511
  %29 = uitofp i32 %28 to float
  %30 = fdiv float %29, 5.110000e+02
  %31 = fmul float %22, 2.000000e+00
  %32 = fmul float %26, 2.000000e+00
  %33 = fmul float %30, 2.000000e+00
  %34 = fadd float %31, -1.000000e+00
  %35 = fadd float %32, -1.000000e+00
  %36 = fadd float %33, -1.000000e+00
  %37 = fmul float %34, 0x3FE6A09E60000000
  %38 = fmul float %35, 0x3FE6A09E60000000
  %39 = fmul float %36, 0x3FE6A09E60000000
  %40 = call float @dx.op.dot3.f32(i32 55, float %37, float %38, float %39, float %37, float %38, float %39), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %41 = call float @dx.op.unary.f32(i32 7, float %40), !dx.precise !24  ; Saturate(value)
  %42 = fsub float 1.000000e+00, %41
  %43 = call float @dx.op.unary.f32(i32 24, float %42), !dx.precise !24  ; Sqrt(value)
  %44 = icmp eq i32 %19, 0
  br i1 %44, label %51, label %45

; <label>:45                                      ; preds = %0
  %46 = icmp eq i32 %19, 1
  br i1 %46, label %51, label %47

; <label>:47                                      ; preds = %45
  %48 = icmp eq i32 %19, 2
  %49 = select i1 %48, float %43, float %39
  %50 = select i1 %48, float %39, float %43
  br label %51

; <label>:51                                      ; preds = %47, %45, %0
  %52 = phi float [ %43, %0 ], [ %37, %45 ], [ %37, %47 ]
  %53 = phi float [ %37, %0 ], [ %43, %45 ], [ %38, %47 ]
  %54 = phi float [ %38, %0 ], [ %38, %45 ], [ %49, %47 ]
  %55 = phi float [ %39, %0 ], [ %39, %45 ], [ %50, %47 ]
  %56 = fmul float %52, 2.000000e+00
  %57 = fmul float %56, %54
  %58 = fmul float %53, 2.000000e+00
  %59 = fmul float %58, %55
  %60 = fadd float %57, %59
  %61 = fmul float %58, %54
  %62 = fmul float %56, %55
  %63 = fsub float %61, %62
  %64 = fmul float %52, %56
  %65 = fsub float 1.000000e+00, %64
  %66 = fmul float %53, %58
  %67 = fsub float %65, %66
  %68 = and i32 %16, 65535
  %69 = call float @dx.op.legacyF16ToF32(i32 131, i32 %68), !dx.precise !24  ; LegacyF16ToF32(value)
  %70 = lshr i32 %16, 16
  %71 = call float @dx.op.legacyF16ToF32(i32 131, i32 %70), !dx.precise !24  ; LegacyF16ToF32(value)
  %72 = and i32 %17, 65535
  %73 = call float @dx.op.legacyF16ToF32(i32 131, i32 %72), !dx.precise !24  ; LegacyF16ToF32(value)
  %74 = lshr i32 %17, 16
  %75 = call float @dx.op.legacyF16ToF32(i32 131, i32 %74), !dx.precise !24  ; LegacyF16ToF32(value)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = lshr i32 %83, 30
  %87 = and i32 %83, 1023
  %88 = uitofp i32 %87 to float
  %89 = fdiv float %88, 1.023000e+03
  %90 = lshr i32 %83, 10
  %91 = and i32 %90, 1023
  %92 = uitofp i32 %91 to float
  %93 = fdiv float %92, 1.023000e+03
  %94 = lshr i32 %83, 20
  %95 = and i32 %94, 511
  %96 = uitofp i32 %95 to float
  %97 = fdiv float %96, 5.110000e+02
  %98 = fmul float %89, 2.000000e+00
  %99 = fmul float %93, 2.000000e+00
  %100 = fmul float %97, 2.000000e+00
  %101 = fadd float %98, -1.000000e+00
  %102 = fadd float %99, -1.000000e+00
  %103 = fadd float %100, -1.000000e+00
  %104 = fmul float %101, 0x3FE6A09E60000000
  %105 = fmul float %102, 0x3FE6A09E60000000
  %106 = fmul float %103, 0x3FE6A09E60000000
  %107 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %108 = call float @dx.op.unary.f32(i32 7, float %107), !dx.precise !24  ; Saturate(value)
  %109 = fsub float 1.000000e+00, %108
  %110 = call float @dx.op.unary.f32(i32 24, float %109), !dx.precise !24  ; Sqrt(value)
  %111 = icmp eq i32 %86, 0
  br i1 %111, label %118, label %112

; <label>:112                                     ; preds = %51
  %113 = icmp eq i32 %86, 1
  br i1 %113, label %118, label %114

; <label>:114                                     ; preds = %112
  %115 = icmp eq i32 %86, 2
  %116 = select i1 %115, float %110, float %106
  %117 = select i1 %115, float %106, float %110
  br label %118

; <label>:118                                     ; preds = %114, %112, %51
  %119 = phi float [ %110, %51 ], [ %104, %112 ], [ %104, %114 ]
  %120 = phi float [ %104, %51 ], [ %110, %112 ], [ %105, %114 ]
  %121 = phi float [ %105, %51 ], [ %105, %112 ], [ %116, %114 ]
  %122 = phi float [ %106, %51 ], [ %106, %112 ], [ %117, %114 ]
  %123 = fmul float %119, 2.000000e+00
  %124 = fmul float %123, %121
  %125 = fmul float %120, 2.000000e+00
  %126 = fmul float %125, %122
  %127 = fadd float %124, %126
  %128 = fmul float %125, %121
  %129 = fmul float %123, %122
  %130 = fsub float %128, %129
  %131 = fmul float %119, %123
  %132 = fsub float 1.000000e+00, %131
  %133 = fmul float %120, %125
  %134 = fsub float %132, %133
  %135 = and i32 %84, 65535
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135), !dx.precise !24  ; LegacyF16ToF32(value)
  %137 = lshr i32 %84, 16
  %138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %137), !dx.precise !24  ; LegacyF16ToF32(value)
  %139 = and i32 %85, 65535
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139), !dx.precise !24  ; LegacyF16ToF32(value)
  %141 = lshr i32 %85, 16
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141), !dx.precise !24  ; LegacyF16ToF32(value)
  %143 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %144 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %145 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %146 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %147 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %148 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %149 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %150 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %151 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %152 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %153 = lshr i32 %150, 30
  %154 = and i32 %150, 1023
  %155 = uitofp i32 %154 to float
  %156 = fdiv float %155, 1.023000e+03
  %157 = lshr i32 %150, 10
  %158 = and i32 %157, 1023
  %159 = uitofp i32 %158 to float
  %160 = fdiv float %159, 1.023000e+03
  %161 = lshr i32 %150, 20
  %162 = and i32 %161, 511
  %163 = uitofp i32 %162 to float
  %164 = fdiv float %163, 5.110000e+02
  %165 = fmul float %156, 2.000000e+00
  %166 = fmul float %160, 2.000000e+00
  %167 = fmul float %164, 2.000000e+00
  %168 = fadd float %165, -1.000000e+00
  %169 = fadd float %166, -1.000000e+00
  %170 = fadd float %167, -1.000000e+00
  %171 = fmul float %168, 0x3FE6A09E60000000
  %172 = fmul float %169, 0x3FE6A09E60000000
  %173 = fmul float %170, 0x3FE6A09E60000000
  %174 = call float @dx.op.dot3.f32(i32 55, float %171, float %172, float %173, float %171, float %172, float %173), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %175 = call float @dx.op.unary.f32(i32 7, float %174), !dx.precise !24  ; Saturate(value)
  %176 = fsub float 1.000000e+00, %175
  %177 = call float @dx.op.unary.f32(i32 24, float %176), !dx.precise !24  ; Sqrt(value)
  %178 = icmp eq i32 %153, 0
  br i1 %178, label %185, label %179

; <label>:179                                     ; preds = %118
  %180 = icmp eq i32 %153, 1
  br i1 %180, label %185, label %181

; <label>:181                                     ; preds = %179
  %182 = icmp eq i32 %153, 2
  %183 = select i1 %182, float %177, float %173
  %184 = select i1 %182, float %173, float %177
  br label %185

; <label>:185                                     ; preds = %181, %179, %118
  %186 = phi float [ %177, %118 ], [ %171, %179 ], [ %171, %181 ]
  %187 = phi float [ %171, %118 ], [ %177, %179 ], [ %172, %181 ]
  %188 = phi float [ %172, %118 ], [ %172, %179 ], [ %183, %181 ]
  %189 = phi float [ %173, %118 ], [ %173, %179 ], [ %184, %181 ]
  %190 = fmul float %186, 2.000000e+00
  %191 = fmul float %190, %188
  %192 = fmul float %187, 2.000000e+00
  %193 = fmul float %192, %189
  %194 = fadd float %191, %193
  %195 = fmul float %192, %188
  %196 = fmul float %190, %189
  %197 = fsub float %195, %196
  %198 = fmul float %186, %190
  %199 = fsub float 1.000000e+00, %198
  %200 = fmul float %187, %192
  %201 = fsub float %199, %200
  %202 = and i32 %151, 65535
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202), !dx.precise !24  ; LegacyF16ToF32(value)
  %204 = lshr i32 %151, 16
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204), !dx.precise !24  ; LegacyF16ToF32(value)
  %206 = and i32 %152, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206), !dx.precise !24  ; LegacyF16ToF32(value)
  %208 = lshr i32 %152, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208), !dx.precise !24  ; LegacyF16ToF32(value)
  %210 = fmul float %5, %8
  %211 = fmul float %5, %9
  %212 = fmul float %5, %10
  %213 = fmul float %6, %76
  %214 = fmul float %6, %77
  %215 = fmul float %6, %78
  %216 = fadd float %210, %213
  %217 = fadd float %211, %214
  %218 = fadd float %212, %215
  %219 = fmul float %7, %143
  %220 = fmul float %7, %144
  %221 = fmul float %7, %145
  %222 = fadd float %216, %219
  %223 = fadd float %217, %220
  %224 = fadd float %218, %221
  %225 = fmul float %5, %11
  %226 = fmul float %5, %12
  %227 = fmul float %6, %79
  %228 = fmul float %6, %80
  %229 = fadd float %225, %227
  %230 = fadd float %226, %228
  %231 = fmul float %7, %146
  %232 = fmul float %7, %147
  %233 = fadd float %229, %231
  %234 = fadd float %230, %232
  %235 = fmul float %5, %13
  %236 = fmul float %5, %14
  %237 = fmul float %6, %81
  %238 = fmul float %6, %82
  %239 = fadd float %235, %237
  %240 = fadd float %236, %238
  %241 = fmul float %7, %148
  %242 = fmul float %7, %149
  %243 = fadd float %239, %241
  %244 = fadd float %240, %242
  %245 = fmul float %5, %60
  %246 = fmul float %5, %63
  %247 = fmul float %5, %67
  %248 = fmul float %6, %127
  %249 = fmul float %6, %130
  %250 = fmul float %6, %134
  %251 = fadd float %245, %248
  %252 = fadd float %246, %249
  %253 = fadd float %247, %250
  %254 = fmul float %7, %194
  %255 = fmul float %7, %197
  %256 = fmul float %7, %201
  %257 = fadd float %251, %254
  %258 = fadd float %252, %255
  %259 = fadd float %253, %256
  %260 = fmul float %5, %69
  %261 = fmul float %6, %136
  %262 = fadd float %260, %261
  %263 = fmul float %7, %203
  %264 = fadd float %262, %263
  %265 = fmul float %5, %71
  %266 = fmul float %6, %138
  %267 = fadd float %265, %266
  %268 = fmul float %7, %205
  %269 = fadd float %267, %268
  %270 = fmul float %5, %73
  %271 = fmul float %6, %140
  %272 = fadd float %270, %271
  %273 = fmul float %7, %207
  %274 = fadd float %272, %273
  %275 = fmul float %5, %75
  %276 = fmul float %6, %142
  %277 = fadd float %275, %276
  %278 = fmul float %7, %209
  %279 = fadd float %277, %278
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %283 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %284 = fsub float %222, %281
  %285 = fsub float %223, %282
  %286 = fsub float %224, %283
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %290 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %291 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %292 = fmul float %284, %288
  %293 = call float @dx.op.tertiary.f32(i32 46, float %285, float %289, float %292), !dx.precise !24  ; FMad(a,b,c)
  %294 = call float @dx.op.tertiary.f32(i32 46, float %286, float %290, float %293), !dx.precise !24  ; FMad(a,b,c)
  %295 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %291, float %294), !dx.precise !24  ; FMad(a,b,c)
  %296 = call float @dx.op.binary.f32(i32 35, float %295, float 0x3F1A36E2E0000000), !dx.precise !24  ; FMax(a,b)
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %302 = fmul float %298, 0.000000e+00
  %303 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %299, float %302), !dx.precise !24  ; FMad(a,b,c)
  %304 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %300, float %303), !dx.precise !24  ; FMad(a,b,c)
  %305 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %301, float %304), !dx.precise !24  ; FMad(a,b,c)
  %306 = fdiv float %296, %305
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = fdiv float %306, %308
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 344, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 1
  %312 = bitcast i32 %311 to float
  %313 = extractvalue %dx.types.ResRet.i32 %310, 0
  %314 = bitcast i32 %313 to float
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 504, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = add i32 %316, 0
  %318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %319 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %318, i32 0)  ; GetDimensions(handle,mipLevel)
  %320 = extractvalue %dx.types.Dimensions %319, 0
  %321 = sitofp i32 %320 to float
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = call float @dx.op.unary.f32(i32 6, float %323), !dx.precise !24  ; FAbs(value)
  %325 = fmul float %264, %324
  %326 = fcmp olt float %323, 0.000000e+00
  %327 = fmul float %269, 2.560000e+02
  %328 = fdiv float %325, %327
  %329 = select i1 %326, float %328, float %325
  %330 = fmul float %269, %321
  %331 = fmul float %309, %330
  %332 = call float @dx.op.unary.f32(i32 23, float %331), !dx.precise !24  ; Log(value)
  %333 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %334 = fadd float %332, %333
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %318, %dx.types.Handle %2, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float %334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = fmul float %314, %336
  %338 = fadd float %312, %337
  %339 = fmul float %329, %338
  %340 = fadd float %339, 0.000000e+00
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 360, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 1
  %343 = bitcast i32 %342 to float
  %344 = extractvalue %dx.types.ResRet.i32 %341, 0
  %345 = bitcast i32 %344 to float
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 508, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = add i32 %347, 0
  %349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %349, i32 0)  ; GetDimensions(handle,mipLevel)
  %351 = extractvalue %dx.types.Dimensions %350, 0
  %352 = sitofp i32 %351 to float
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %355 = call float @dx.op.unary.f32(i32 6, float %354), !dx.precise !24  ; FAbs(value)
  %356 = fmul float %274, %355
  %357 = fcmp olt float %354, 0.000000e+00
  %358 = fmul float %279, 2.560000e+02
  %359 = fdiv float %356, %358
  %360 = select i1 %357, float %359, float %356
  %361 = fmul float %279, %352
  %362 = fmul float %309, %361
  %363 = call float @dx.op.unary.f32(i32 23, float %362), !dx.precise !24  ; Log(value)
  %364 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %365 = fadd float %363, %364
  %366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %349, %dx.types.Handle %2, float %243, float %244, float undef, float undef, i32 0, i32 0, i32 undef, float %365)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %367 = extractvalue %dx.types.ResRet.f32 %366, 0
  %368 = fmul float %345, %367
  %369 = fadd float %343, %368
  %370 = fmul float %360, %369
  %371 = fadd float %340, %370
  %372 = call float @dx.op.dot3.f32(i32 55, float %257, float %258, float %259, float %257, float %258, float %259), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.unary.f32(i32 25, float %372), !dx.precise !24  ; Rsqrt(value)
  %374 = fmul float %257, %373
  %375 = fmul float %258, %373
  %376 = fmul float %259, %373
  %377 = fmul float %374, %371
  %378 = fmul float %375, %371
  %379 = fmul float %376, %371
  %380 = fadd float %222, %377
  %381 = fadd float %223, %378
  %382 = fadd float %224, %379
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = fsub float %380, %384
  %388 = fsub float %381, %385
  %389 = fsub float %382, %386
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = extractvalue %dx.types.CBufRet.f32 %390, 3
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 0
  %397 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %398 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %399 = extractvalue %dx.types.CBufRet.f32 %395, 3
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = extractvalue %dx.types.CBufRet.f32 %400, 3
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %410 = fmul float %391, %387
  %411 = call float @dx.op.tertiary.f32(i32 46, float %388, float %392, float %410), !dx.precise !24  ; FMad(a,b,c)
  %412 = call float @dx.op.tertiary.f32(i32 46, float %389, float %393, float %411), !dx.precise !24  ; FMad(a,b,c)
  %413 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %394, float %412), !dx.precise !24  ; FMad(a,b,c)
  %414 = fmul float %396, %387
  %415 = call float @dx.op.tertiary.f32(i32 46, float %388, float %397, float %414), !dx.precise !24  ; FMad(a,b,c)
  %416 = call float @dx.op.tertiary.f32(i32 46, float %389, float %398, float %415), !dx.precise !24  ; FMad(a,b,c)
  %417 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %399, float %416), !dx.precise !24  ; FMad(a,b,c)
  %418 = fmul float %401, %387
  %419 = call float @dx.op.tertiary.f32(i32 46, float %388, float %402, float %418), !dx.precise !24  ; FMad(a,b,c)
  %420 = call float @dx.op.tertiary.f32(i32 46, float %389, float %403, float %419), !dx.precise !24  ; FMad(a,b,c)
  %421 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %404, float %420), !dx.precise !24  ; FMad(a,b,c)
  %422 = fmul float %387, %406
  %423 = call float @dx.op.tertiary.f32(i32 46, float %388, float %407, float %422), !dx.precise !24  ; FMad(a,b,c)
  %424 = call float @dx.op.tertiary.f32(i32 46, float %389, float %408, float %423), !dx.precise !24  ; FMad(a,b,c)
  %425 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %409, float %424), !dx.precise !24  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %413)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %258)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 2, i32 0, i8 0, i32 %18)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!11 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!14 = !{[34 x i32] [i32 18, i32 9, i32 15, i32 15, i32 15, i32 0, i32 0, i32 127, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 0, i32 256, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !45}
!16 = !{!17, !36, !41}
!17 = !{!18, !21, !22, !23, !26, !28, !30, !32, !33, !34, !35}
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
!28 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !29, i8 2, i32 1, i8 2, i32 3, i8 2, !25}
!29 = !{i32 3}
!30 = !{i32 6, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !31}
!31 = !{i32 3, i32 1}
!32 = !{i32 7, !"DISPLACEMENT", i8 5, i8 0, !24, i8 1, i32 1, i8 1, i32 1, i8 2, !31}
!33 = !{i32 8, !"DISPLACEMENT", i8 5, i8 0, !29, i8 1, i32 1, i8 1, i32 1, i8 3, !31}
!34 = !{i32 9, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 0, null}
!35 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 1, !31}
!36 = !{!37, !39, !40}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 1, i8 0, !20}
!40 = !{i32 2, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 2, i8 0, !31}
!41 = !{!42, !44}
!42 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !43, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!43 = !{i32 0, i32 1, i32 2}
!44 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!45 = !{i32 0, i64 16, i32 2, !46}
!46 = !{i32 2, i32 3}

