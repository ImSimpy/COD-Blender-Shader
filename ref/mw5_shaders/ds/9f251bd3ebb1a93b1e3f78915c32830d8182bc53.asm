;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint       
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             0     z         1     NONE    uint     z 
; DISPLACEMENT             1      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float   xy  
; DISPLACEMENT             2   x           4     NONE    uint   x   
; TESSFACTORS_OFFSET       0    y          4     NONE    uint       
; TRANSIENT_INDEX          0     z         4     NONE    uint     z 
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
; shader hash: 4d765e557d7e2b9d65dbd5d92cc64cf3
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
; TANGENT_FRAME            0        nointerpolation       
; DISPLACEMENT             0        nointerpolation       
; DISPLACEMENT             1        nointerpolation       
; DISPLACEMENT             2        nointerpolation       
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
; Number of inputs: 19, outputs: 9, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 4 depends on inputs: { 5 }
;   output 5 depends on inputs: { 5 }
;   output 6 depends on inputs: { 5 }
;   output 8 depends on inputs: { 18 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !25  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !25  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !25  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 0), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = lshr i32 %17, 30
  %23 = and i32 %17, 1023
  %24 = uitofp i32 %23 to float
  %25 = fdiv float %24, 1.023000e+03
  %26 = lshr i32 %17, 10
  %27 = and i32 %26, 1023
  %28 = uitofp i32 %27 to float
  %29 = fdiv float %28, 1.023000e+03
  %30 = lshr i32 %17, 20
  %31 = and i32 %30, 511
  %32 = uitofp i32 %31 to float
  %33 = fdiv float %32, 5.110000e+02
  %34 = fmul float %25, 2.000000e+00
  %35 = fmul float %29, 2.000000e+00
  %36 = fmul float %33, 2.000000e+00
  %37 = fadd float %34, -1.000000e+00
  %38 = fadd float %35, -1.000000e+00
  %39 = fadd float %36, -1.000000e+00
  %40 = fmul float %37, 0x3FE6A09E60000000
  %41 = fmul float %38, 0x3FE6A09E60000000
  %42 = fmul float %39, 0x3FE6A09E60000000
  %43 = call float @dx.op.dot3.f32(i32 55, float %40, float %41, float %42, float %40, float %41, float %42), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %44 = call float @dx.op.unary.f32(i32 7, float %43), !dx.precise !25  ; Saturate(value)
  %45 = fsub float 1.000000e+00, %44
  %46 = call float @dx.op.unary.f32(i32 24, float %45), !dx.precise !25  ; Sqrt(value)
  %47 = icmp eq i32 %22, 0
  br i1 %47, label %54, label %48

; <label>:48                                      ; preds = %0
  %49 = icmp eq i32 %22, 1
  br i1 %49, label %54, label %50

; <label>:50                                      ; preds = %48
  %51 = icmp eq i32 %22, 2
  %52 = select i1 %51, float %46, float %42
  %53 = select i1 %51, float %42, float %46
  br label %54

; <label>:54                                      ; preds = %50, %48, %0
  %55 = phi float [ %46, %0 ], [ %40, %48 ], [ %40, %50 ]
  %56 = phi float [ %40, %0 ], [ %46, %48 ], [ %41, %50 ]
  %57 = phi float [ %41, %0 ], [ %41, %48 ], [ %52, %50 ]
  %58 = phi float [ %42, %0 ], [ %42, %48 ], [ %53, %50 ]
  %59 = fmul float %55, 2.000000e+00
  %60 = fmul float %59, %57
  %61 = fmul float %56, 2.000000e+00
  %62 = fmul float %61, %58
  %63 = fadd float %60, %62
  %64 = fmul float %61, %57
  %65 = fmul float %59, %58
  %66 = fsub float %64, %65
  %67 = fmul float %55, %59
  %68 = fsub float 1.000000e+00, %67
  %69 = fmul float %56, %61
  %70 = fsub float %68, %69
  %71 = and i32 %18, 65535
  %72 = call float @dx.op.legacyF16ToF32(i32 131, i32 %71), !dx.precise !25  ; LegacyF16ToF32(value)
  %73 = lshr i32 %18, 16
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73), !dx.precise !25  ; LegacyF16ToF32(value)
  %75 = and i32 %19, 65535
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75), !dx.precise !25  ; LegacyF16ToF32(value)
  %77 = lshr i32 %19, 16
  %78 = call float @dx.op.legacyF16ToF32(i32 131, i32 %77), !dx.precise !25  ; LegacyF16ToF32(value)
  %79 = and i32 %20, 65535
  %80 = call float @dx.op.legacyF16ToF32(i32 131, i32 %79), !dx.precise !25  ; LegacyF16ToF32(value)
  %81 = lshr i32 %20, 16
  %82 = call float @dx.op.legacyF16ToF32(i32 131, i32 %81), !dx.precise !25  ; LegacyF16ToF32(value)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = lshr i32 %92, 30
  %97 = and i32 %92, 1023
  %98 = uitofp i32 %97 to float
  %99 = fdiv float %98, 1.023000e+03
  %100 = lshr i32 %92, 10
  %101 = and i32 %100, 1023
  %102 = uitofp i32 %101 to float
  %103 = fdiv float %102, 1.023000e+03
  %104 = lshr i32 %92, 20
  %105 = and i32 %104, 511
  %106 = uitofp i32 %105 to float
  %107 = fdiv float %106, 5.110000e+02
  %108 = fmul float %99, 2.000000e+00
  %109 = fmul float %103, 2.000000e+00
  %110 = fmul float %107, 2.000000e+00
  %111 = fadd float %108, -1.000000e+00
  %112 = fadd float %109, -1.000000e+00
  %113 = fadd float %110, -1.000000e+00
  %114 = fmul float %111, 0x3FE6A09E60000000
  %115 = fmul float %112, 0x3FE6A09E60000000
  %116 = fmul float %113, 0x3FE6A09E60000000
  %117 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %114, float %115, float %116), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %118 = call float @dx.op.unary.f32(i32 7, float %117), !dx.precise !25  ; Saturate(value)
  %119 = fsub float 1.000000e+00, %118
  %120 = call float @dx.op.unary.f32(i32 24, float %119), !dx.precise !25  ; Sqrt(value)
  %121 = icmp eq i32 %96, 0
  br i1 %121, label %128, label %122

; <label>:122                                     ; preds = %54
  %123 = icmp eq i32 %96, 1
  br i1 %123, label %128, label %124

; <label>:124                                     ; preds = %122
  %125 = icmp eq i32 %96, 2
  %126 = select i1 %125, float %120, float %116
  %127 = select i1 %125, float %116, float %120
  br label %128

; <label>:128                                     ; preds = %124, %122, %54
  %129 = phi float [ %120, %54 ], [ %114, %122 ], [ %114, %124 ]
  %130 = phi float [ %114, %54 ], [ %120, %122 ], [ %115, %124 ]
  %131 = phi float [ %115, %54 ], [ %115, %122 ], [ %126, %124 ]
  %132 = phi float [ %116, %54 ], [ %116, %122 ], [ %127, %124 ]
  %133 = fmul float %129, 2.000000e+00
  %134 = fmul float %133, %131
  %135 = fmul float %130, 2.000000e+00
  %136 = fmul float %135, %132
  %137 = fadd float %134, %136
  %138 = fmul float %135, %131
  %139 = fmul float %133, %132
  %140 = fsub float %138, %139
  %141 = fmul float %129, %133
  %142 = fsub float 1.000000e+00, %141
  %143 = fmul float %130, %135
  %144 = fsub float %142, %143
  %145 = and i32 %93, 65535
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145), !dx.precise !25  ; LegacyF16ToF32(value)
  %147 = lshr i32 %93, 16
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147), !dx.precise !25  ; LegacyF16ToF32(value)
  %149 = and i32 %94, 65535
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149), !dx.precise !25  ; LegacyF16ToF32(value)
  %151 = lshr i32 %94, 16
  %152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %151), !dx.precise !25  ; LegacyF16ToF32(value)
  %153 = and i32 %95, 65535
  %154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %153), !dx.precise !25  ; LegacyF16ToF32(value)
  %155 = lshr i32 %95, 16
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155), !dx.precise !25  ; LegacyF16ToF32(value)
  %157 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %158 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %159 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %160 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %161 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %162 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %163 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %164 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %165 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !25  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %166 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %167 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %168 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %169 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %170 = lshr i32 %166, 30
  %171 = and i32 %166, 1023
  %172 = uitofp i32 %171 to float
  %173 = fdiv float %172, 1.023000e+03
  %174 = lshr i32 %166, 10
  %175 = and i32 %174, 1023
  %176 = uitofp i32 %175 to float
  %177 = fdiv float %176, 1.023000e+03
  %178 = lshr i32 %166, 20
  %179 = and i32 %178, 511
  %180 = uitofp i32 %179 to float
  %181 = fdiv float %180, 5.110000e+02
  %182 = fmul float %173, 2.000000e+00
  %183 = fmul float %177, 2.000000e+00
  %184 = fmul float %181, 2.000000e+00
  %185 = fadd float %182, -1.000000e+00
  %186 = fadd float %183, -1.000000e+00
  %187 = fadd float %184, -1.000000e+00
  %188 = fmul float %185, 0x3FE6A09E60000000
  %189 = fmul float %186, 0x3FE6A09E60000000
  %190 = fmul float %187, 0x3FE6A09E60000000
  %191 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %192 = call float @dx.op.unary.f32(i32 7, float %191), !dx.precise !25  ; Saturate(value)
  %193 = fsub float 1.000000e+00, %192
  %194 = call float @dx.op.unary.f32(i32 24, float %193), !dx.precise !25  ; Sqrt(value)
  %195 = icmp eq i32 %170, 0
  br i1 %195, label %202, label %196

; <label>:196                                     ; preds = %128
  %197 = icmp eq i32 %170, 1
  br i1 %197, label %202, label %198

; <label>:198                                     ; preds = %196
  %199 = icmp eq i32 %170, 2
  %200 = select i1 %199, float %194, float %190
  %201 = select i1 %199, float %190, float %194
  br label %202

; <label>:202                                     ; preds = %198, %196, %128
  %203 = phi float [ %194, %128 ], [ %188, %196 ], [ %188, %198 ]
  %204 = phi float [ %188, %128 ], [ %194, %196 ], [ %189, %198 ]
  %205 = phi float [ %189, %128 ], [ %189, %196 ], [ %200, %198 ]
  %206 = phi float [ %190, %128 ], [ %190, %196 ], [ %201, %198 ]
  %207 = fmul float %203, 2.000000e+00
  %208 = fmul float %207, %205
  %209 = fmul float %204, 2.000000e+00
  %210 = fmul float %209, %206
  %211 = fadd float %208, %210
  %212 = fmul float %209, %205
  %213 = fmul float %207, %206
  %214 = fsub float %212, %213
  %215 = fmul float %203, %207
  %216 = fsub float 1.000000e+00, %215
  %217 = fmul float %204, %209
  %218 = fsub float %216, %217
  %219 = and i32 %167, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219), !dx.precise !25  ; LegacyF16ToF32(value)
  %221 = lshr i32 %167, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221), !dx.precise !25  ; LegacyF16ToF32(value)
  %223 = and i32 %168, 65535
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223), !dx.precise !25  ; LegacyF16ToF32(value)
  %225 = lshr i32 %168, 16
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225), !dx.precise !25  ; LegacyF16ToF32(value)
  %227 = and i32 %169, 65535
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227), !dx.precise !25  ; LegacyF16ToF32(value)
  %229 = lshr i32 %169, 16
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229), !dx.precise !25  ; LegacyF16ToF32(value)
  %231 = fmul float %5, %8
  %232 = fmul float %5, %9
  %233 = fmul float %5, %10
  %234 = fmul float %6, %83
  %235 = fmul float %6, %84
  %236 = fmul float %6, %85
  %237 = fadd float %231, %234
  %238 = fadd float %232, %235
  %239 = fadd float %233, %236
  %240 = fmul float %7, %157
  %241 = fmul float %7, %158
  %242 = fmul float %7, %159
  %243 = fadd float %237, %240
  %244 = fadd float %238, %241
  %245 = fadd float %239, %242
  %246 = fmul float %5, %11
  %247 = fmul float %5, %12
  %248 = fmul float %6, %86
  %249 = fmul float %6, %87
  %250 = fadd float %246, %248
  %251 = fadd float %247, %249
  %252 = fmul float %7, %160
  %253 = fmul float %7, %161
  %254 = fadd float %250, %252
  %255 = fadd float %251, %253
  %256 = fmul float %5, %13
  %257 = fmul float %5, %14
  %258 = fmul float %6, %88
  %259 = fmul float %6, %89
  %260 = fadd float %256, %258
  %261 = fadd float %257, %259
  %262 = fmul float %7, %162
  %263 = fmul float %7, %163
  %264 = fadd float %260, %262
  %265 = fadd float %261, %263
  %266 = fmul float %5, %15
  %267 = fmul float %5, %16
  %268 = fmul float %6, %90
  %269 = fmul float %6, %91
  %270 = fadd float %266, %268
  %271 = fadd float %267, %269
  %272 = fmul float %7, %164
  %273 = fmul float %7, %165
  %274 = fadd float %270, %272
  %275 = fadd float %271, %273
  %276 = fmul float %5, %63
  %277 = fmul float %5, %66
  %278 = fmul float %5, %70
  %279 = fmul float %6, %137
  %280 = fmul float %6, %140
  %281 = fmul float %6, %144
  %282 = fadd float %276, %279
  %283 = fadd float %277, %280
  %284 = fadd float %278, %281
  %285 = fmul float %7, %211
  %286 = fmul float %7, %214
  %287 = fmul float %7, %218
  %288 = fadd float %282, %285
  %289 = fadd float %283, %286
  %290 = fadd float %284, %287
  %291 = fmul float %5, %72
  %292 = fmul float %6, %146
  %293 = fadd float %291, %292
  %294 = fmul float %7, %220
  %295 = fadd float %293, %294
  %296 = fmul float %5, %74
  %297 = fmul float %6, %148
  %298 = fadd float %296, %297
  %299 = fmul float %7, %222
  %300 = fadd float %298, %299
  %301 = fmul float %5, %76
  %302 = fmul float %6, %150
  %303 = fadd float %301, %302
  %304 = fmul float %7, %224
  %305 = fadd float %303, %304
  %306 = fmul float %5, %78
  %307 = fmul float %6, %152
  %308 = fadd float %306, %307
  %309 = fmul float %7, %226
  %310 = fadd float %308, %309
  %311 = fmul float %5, %80
  %312 = fmul float %6, %154
  %313 = fadd float %311, %312
  %314 = fmul float %7, %228
  %315 = fadd float %313, %314
  %316 = fmul float %5, %82
  %317 = fmul float %6, %156
  %318 = fadd float %316, %317
  %319 = fmul float %7, %230
  %320 = fadd float %318, %319
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = fsub float %243, %322
  %326 = fsub float %244, %323
  %327 = fsub float %245, %324
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %333 = fmul float %325, %329
  %334 = call float @dx.op.tertiary.f32(i32 46, float %326, float %330, float %333), !dx.precise !25  ; FMad(a,b,c)
  %335 = call float @dx.op.tertiary.f32(i32 46, float %327, float %331, float %334), !dx.precise !25  ; FMad(a,b,c)
  %336 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %332, float %335), !dx.precise !25  ; FMad(a,b,c)
  %337 = call float @dx.op.binary.f32(i32 35, float %336, float 0x3F1A36E2E0000000), !dx.precise !25  ; FMax(a,b)
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %343 = fmul float %339, 0.000000e+00
  %344 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %340, float %343), !dx.precise !25  ; FMad(a,b,c)
  %345 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %341, float %344), !dx.precise !25  ; FMad(a,b,c)
  %346 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %342, float %345), !dx.precise !25  ; FMad(a,b,c)
  %347 = fdiv float %337, %346
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = fdiv float %347, %349
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 412, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = add i32 %352, 0
  %354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 1
  %357 = bitcast i32 %356 to float
  %358 = extractvalue %dx.types.ResRet.i32 %355, 0
  %359 = bitcast i32 %358 to float
  %360 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %354, i32 0)  ; GetDimensions(handle,mipLevel)
  %361 = extractvalue %dx.types.Dimensions %360, 0
  %362 = sitofp i32 %361 to float
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %365 = call float @dx.op.unary.f32(i32 6, float %364), !dx.precise !25  ; FAbs(value)
  %366 = fmul float %295, %365
  %367 = fcmp olt float %364, 0.000000e+00
  %368 = fmul float %300, 2.560000e+02
  %369 = fdiv float %366, %368
  %370 = select i1 %367, float %369, float %366
  %371 = fmul float %300, %362
  %372 = fmul float %350, %371
  %373 = call float @dx.op.unary.f32(i32 23, float %372), !dx.precise !25  ; Log(value)
  %374 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %375 = fadd float %373, %374
  %376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %354, %dx.types.Handle %2, float %254, float %255, float undef, float undef, i32 0, i32 0, i32 undef, float %375)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = fmul float %359, %377
  %379 = fadd float %357, %378
  %380 = fmul float %370, %379
  %381 = fadd float %380, 0.000000e+00
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 1
  %384 = bitcast i32 %383 to float
  %385 = extractvalue %dx.types.ResRet.i32 %382, 0
  %386 = bitcast i32 %385 to float
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 416, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = add i32 %388, 0
  %390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %390, i32 0)  ; GetDimensions(handle,mipLevel)
  %392 = extractvalue %dx.types.Dimensions %391, 0
  %393 = sitofp i32 %392 to float
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %396 = call float @dx.op.unary.f32(i32 6, float %395), !dx.precise !25  ; FAbs(value)
  %397 = fmul float %305, %396
  %398 = fcmp olt float %395, 0.000000e+00
  %399 = fmul float %310, 2.560000e+02
  %400 = fdiv float %397, %399
  %401 = select i1 %398, float %400, float %397
  %402 = fmul float %310, %393
  %403 = fmul float %350, %402
  %404 = call float @dx.op.unary.f32(i32 23, float %403), !dx.precise !25  ; Log(value)
  %405 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %406 = fadd float %404, %405
  %407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %390, %dx.types.Handle %2, float %264, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float %406)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = fmul float %386, %408
  %410 = fadd float %384, %409
  %411 = fmul float %401, %410
  %412 = fadd float %381, %411
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 296, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 1
  %415 = bitcast i32 %414 to float
  %416 = extractvalue %dx.types.ResRet.i32 %413, 0
  %417 = bitcast i32 %416 to float
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 420, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %419, 0
  %421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %422 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %421, i32 0)  ; GetDimensions(handle,mipLevel)
  %423 = extractvalue %dx.types.Dimensions %422, 0
  %424 = sitofp i32 %423 to float
  %425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %426 = extractvalue %dx.types.CBufRet.f32 %425, 2
  %427 = call float @dx.op.unary.f32(i32 6, float %426), !dx.precise !25  ; FAbs(value)
  %428 = fmul float %315, %427
  %429 = fcmp olt float %426, 0.000000e+00
  %430 = fmul float %320, 2.560000e+02
  %431 = fdiv float %428, %430
  %432 = select i1 %429, float %431, float %428
  %433 = fmul float %320, %424
  %434 = fmul float %350, %433
  %435 = call float @dx.op.unary.f32(i32 23, float %434), !dx.precise !25  ; Log(value)
  %436 = extractvalue %dx.types.CBufRet.f32 %425, 1
  %437 = fadd float %435, %436
  %438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %421, %dx.types.Handle %2, float %274, float %275, float undef, float undef, i32 0, i32 0, i32 undef, float %437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %439 = extractvalue %dx.types.ResRet.f32 %438, 0
  %440 = fmul float %417, %439
  %441 = fadd float %415, %440
  %442 = fmul float %432, %441
  %443 = fadd float %412, %442
  %444 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %288, float %289, float %290), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %445 = call float @dx.op.unary.f32(i32 25, float %444), !dx.precise !25  ; Rsqrt(value)
  %446 = fmul float %288, %445
  %447 = fmul float %289, %445
  %448 = fmul float %290, %445
  %449 = fmul float %446, %443
  %450 = fmul float %447, %443
  %451 = fmul float %448, %443
  %452 = fadd float %243, %449
  %453 = fadd float %244, %450
  %454 = fadd float %245, %451
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 2
  %459 = fsub float %452, %456
  %460 = fsub float %453, %457
  %461 = fsub float %454, %458
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = extractvalue %dx.types.CBufRet.f32 %462, 1
  %465 = extractvalue %dx.types.CBufRet.f32 %462, 2
  %466 = extractvalue %dx.types.CBufRet.f32 %462, 3
  %467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %468 = extractvalue %dx.types.CBufRet.f32 %467, 0
  %469 = extractvalue %dx.types.CBufRet.f32 %467, 1
  %470 = extractvalue %dx.types.CBufRet.f32 %467, 2
  %471 = extractvalue %dx.types.CBufRet.f32 %467, 3
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %475 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %476 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 0
  %479 = extractvalue %dx.types.CBufRet.f32 %477, 1
  %480 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %481 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %482 = fmul float %463, %459
  %483 = call float @dx.op.tertiary.f32(i32 46, float %460, float %464, float %482), !dx.precise !25  ; FMad(a,b,c)
  %484 = call float @dx.op.tertiary.f32(i32 46, float %461, float %465, float %483), !dx.precise !25  ; FMad(a,b,c)
  %485 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %466, float %484), !dx.precise !25  ; FMad(a,b,c)
  %486 = fmul float %468, %459
  %487 = call float @dx.op.tertiary.f32(i32 46, float %460, float %469, float %486), !dx.precise !25  ; FMad(a,b,c)
  %488 = call float @dx.op.tertiary.f32(i32 46, float %461, float %470, float %487), !dx.precise !25  ; FMad(a,b,c)
  %489 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %471, float %488), !dx.precise !25  ; FMad(a,b,c)
  %490 = fmul float %473, %459
  %491 = call float @dx.op.tertiary.f32(i32 46, float %460, float %474, float %490), !dx.precise !25  ; FMad(a,b,c)
  %492 = call float @dx.op.tertiary.f32(i32 46, float %461, float %475, float %491), !dx.precise !25  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %476, float %492), !dx.precise !25  ; FMad(a,b,c)
  %494 = fmul float %459, %478
  %495 = call float @dx.op.tertiary.f32(i32 46, float %460, float %479, float %494), !dx.precise !25  ; FMad(a,b,c)
  %496 = call float @dx.op.tertiary.f32(i32 46, float %461, float %480, float %495), !dx.precise !25  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %481, float %496), !dx.precise !25  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %485)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %497)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %288)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %289)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %290)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 2, i32 0, i8 0, i32 %21)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[35 x i32] [i32 19, i32 9, i32 15, i32 15, i32 15, i32 0, i32 0, i32 127, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 256, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !44}
!16 = !{!17, !35, !40}
!17 = !{!18, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, null}
!22 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !23}
!23 = !{i32 3, i32 3}
!24 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 2, i32 2, i8 2, !23}
!25 = !{i32 1}
!26 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !27, i8 2, i32 1, i8 2, i32 3, i8 0, !23}
!27 = !{i32 2}
!28 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !29}
!29 = !{i32 3, i32 1}
!30 = !{i32 6, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !29}
!31 = !{i32 7, !"DISPLACEMENT", i8 5, i8 0, !25, i8 1, i32 1, i8 1, i32 1, i8 3, !29}
!32 = !{i32 8, !"DISPLACEMENT", i8 5, i8 0, !27, i8 1, i32 1, i8 1, i32 4, i8 0, !29}
!33 = !{i32 9, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 1, null}
!34 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 2, !29}
!35 = !{!36, !38, !39}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!37 = !{i32 3, i32 15}
!38 = !{i32 1, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 1, i8 0, !20}
!39 = !{i32 2, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 2, i8 0, !29}
!40 = !{!41, !43}
!41 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !42, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!42 = !{i32 0, i32 1, i32 2}
!43 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!44 = !{i32 0, i64 16, i32 2, !45}
!45 = !{i32 2, i32 3}

