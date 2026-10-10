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
; shader hash: dd055888ae6ac2423cb06eee62757696
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
; Number of inputs: 19, outputs: 5, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16 }
;   output 4 depends on inputs: { 18 }
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
  %371 = fmul float %359, %370
  %372 = fadd float %371, 0.000000e+00
  %373 = fmul float %300, %362
  %374 = fmul float %350, %373
  %375 = call float @dx.op.unary.f32(i32 23, float %374), !dx.precise !25  ; Log(value)
  %376 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %377 = fadd float %375, %376
  %378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %354, %dx.types.Handle %2, float %254, float %255, float undef, float undef, i32 0, i32 0, i32 undef, float %377)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %379 = extractvalue %dx.types.ResRet.f32 %378, 0
  %380 = fmul float %359, %379
  %381 = fadd float %357, %380
  %382 = fmul float %370, %381
  %383 = fadd float %382, 0.000000e+00
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 1
  %386 = bitcast i32 %385 to float
  %387 = extractvalue %dx.types.ResRet.i32 %384, 0
  %388 = bitcast i32 %387 to float
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 416, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = add i32 %390, 0
  %392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %393 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %392, i32 0)  ; GetDimensions(handle,mipLevel)
  %394 = extractvalue %dx.types.Dimensions %393, 0
  %395 = sitofp i32 %394 to float
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %398 = call float @dx.op.unary.f32(i32 6, float %397), !dx.precise !25  ; FAbs(value)
  %399 = fmul float %305, %398
  %400 = fcmp olt float %397, 0.000000e+00
  %401 = fmul float %310, 2.560000e+02
  %402 = fdiv float %399, %401
  %403 = select i1 %400, float %402, float %399
  %404 = fmul float %388, %403
  %405 = fadd float %372, %404
  %406 = fmul float %310, %395
  %407 = fmul float %350, %406
  %408 = call float @dx.op.unary.f32(i32 23, float %407), !dx.precise !25  ; Log(value)
  %409 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %410 = fadd float %408, %409
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %392, %dx.types.Handle %2, float %264, float %265, float undef, float undef, i32 0, i32 0, i32 undef, float %410)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = fmul float %388, %412
  %414 = fadd float %386, %413
  %415 = fmul float %403, %414
  %416 = fadd float %383, %415
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 296, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 1
  %419 = bitcast i32 %418 to float
  %420 = extractvalue %dx.types.ResRet.i32 %417, 0
  %421 = bitcast i32 %420 to float
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 420, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %423, 0
  %425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %426 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %425, i32 0)  ; GetDimensions(handle,mipLevel)
  %427 = extractvalue %dx.types.Dimensions %426, 0
  %428 = sitofp i32 %427 to float
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %431 = call float @dx.op.unary.f32(i32 6, float %430), !dx.precise !25  ; FAbs(value)
  %432 = fmul float %315, %431
  %433 = fcmp olt float %430, 0.000000e+00
  %434 = fmul float %320, 2.560000e+02
  %435 = fdiv float %432, %434
  %436 = select i1 %433, float %435, float %432
  %437 = fmul float %421, %436
  %438 = fadd float %405, %437
  %439 = fmul float %320, %428
  %440 = fmul float %350, %439
  %441 = call float @dx.op.unary.f32(i32 23, float %440), !dx.precise !25  ; Log(value)
  %442 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %443 = fadd float %441, %442
  %444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %425, %dx.types.Handle %2, float %274, float %275, float undef, float undef, i32 0, i32 0, i32 undef, float %443)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = fmul float %421, %445
  %447 = fadd float %419, %446
  %448 = fmul float %436, %447
  %449 = fadd float %416, %448
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %456 = fcmp oeq float %455, 0.000000e+00
  br i1 %456, label %465, label %457

; <label>:457                                     ; preds = %202
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %460 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %461 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %462 = fsub float %459, %243
  %463 = fsub float %460, %244
  %464 = fsub float %461, %245
  br label %465

; <label>:465                                     ; preds = %457, %202
  %466 = phi float [ %462, %457 ], [ %451, %202 ]
  %467 = phi float [ %463, %457 ], [ %452, %202 ]
  %468 = phi float [ %464, %457 ], [ %453, %202 ]
  %469 = call float @dx.op.dot3.f32(i32 55, float %466, float %467, float %468, float %466, float %467, float %468), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = call float @dx.op.unary.f32(i32 25, float %469), !dx.precise !25  ; Rsqrt(value)
  %471 = fmul float %466, %470
  %472 = fmul float %467, %470
  %473 = fmul float %468, %470
  %474 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %471, float %472, float %473), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %475 = call float @dx.op.unary.f32(i32 6, float %474), !dx.precise !25  ; FAbs(value)
  %476 = call float @dx.op.unary.f32(i32 7, float %475), !dx.precise !25  ; Saturate(value)
  %477 = fmul float %476, 5.000000e-01
  %478 = fadd float %477, 2.500000e-01
  %479 = fmul float %438, %478
  %480 = fsub float %449, %479
  %481 = call float @dx.op.dot3.f32(i32 55, float %288, float %289, float %290, float %288, float %289, float %290), !dx.precise !25  ; Dot3(ax,ay,az,bx,by,bz)
  %482 = call float @dx.op.unary.f32(i32 25, float %481), !dx.precise !25  ; Rsqrt(value)
  %483 = fmul float %288, %482
  %484 = fmul float %289, %482
  %485 = fmul float %290, %482
  %486 = fmul float %483, %480
  %487 = fmul float %484, %480
  %488 = fmul float %485, %480
  %489 = fadd float %243, %486
  %490 = fadd float %244, %487
  %491 = fadd float %245, %488
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %495 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %496 = fsub float %489, %493
  %497 = fsub float %490, %494
  %498 = fsub float %491, %495
  %499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %500 = extractvalue %dx.types.CBufRet.f32 %499, 0
  %501 = extractvalue %dx.types.CBufRet.f32 %499, 1
  %502 = extractvalue %dx.types.CBufRet.f32 %499, 2
  %503 = extractvalue %dx.types.CBufRet.f32 %499, 3
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 0
  %506 = extractvalue %dx.types.CBufRet.f32 %504, 1
  %507 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %508 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %509 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %510 = extractvalue %dx.types.CBufRet.f32 %454, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %512 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %513 = fmul float %500, %496
  %514 = call float @dx.op.tertiary.f32(i32 46, float %497, float %501, float %513), !dx.precise !25  ; FMad(a,b,c)
  %515 = call float @dx.op.tertiary.f32(i32 46, float %498, float %502, float %514), !dx.precise !25  ; FMad(a,b,c)
  %516 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %503, float %515), !dx.precise !25  ; FMad(a,b,c)
  %517 = fmul float %505, %496
  %518 = call float @dx.op.tertiary.f32(i32 46, float %497, float %506, float %517), !dx.precise !25  ; FMad(a,b,c)
  %519 = call float @dx.op.tertiary.f32(i32 46, float %498, float %507, float %518), !dx.precise !25  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %508, float %519), !dx.precise !25  ; FMad(a,b,c)
  %521 = fmul float %496, %451
  %522 = call float @dx.op.tertiary.f32(i32 46, float %497, float %452, float %521), !dx.precise !25  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %498, float %453, float %522), !dx.precise !25  ; FMad(a,b,c)
  %524 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %509, float %523), !dx.precise !25  ; FMad(a,b,c)
  %525 = fmul float %496, %510
  %526 = call float @dx.op.tertiary.f32(i32 46, float %497, float %511, float %525), !dx.precise !25  ; FMad(a,b,c)
  %527 = call float @dx.op.tertiary.f32(i32 46, float %498, float %455, float %526), !dx.precise !25  ; FMad(a,b,c)
  %528 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %512, float %527), !dx.precise !25  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %516)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %520)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %21)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[35 x i32] [i32 19, i32 5, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 0, i32 16, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !43}
!16 = !{!17, !35, !39}
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
!35 = !{!36, !38}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!37 = !{i32 3, i32 15}
!38 = !{i32 1, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !29}
!39 = !{!40, !42}
!40 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !41, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!41 = !{i32 0, i32 1, i32 2}
!42 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!43 = !{i32 0, i64 16, i32 2, !44}
!44 = !{i32 2, i32 3}

