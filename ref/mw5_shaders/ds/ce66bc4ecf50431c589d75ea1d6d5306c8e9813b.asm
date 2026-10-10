;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 0   xy          1     NONE   float   xy  
; LIGHTING_TEXCOORD        0     zw        1     NONE   float     zw
; LMAP_INDEX               0   x           2     NONE    uint   x   
; TANGENT_FRAME            0    y          2     NONE    uint    y  
; DISPLACEMENT             0     z         2     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        2     NONE    uint       
; TRANSIENT_INDEX          0   x           3     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           5     NONE    uint   x   
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
; shader hash: a9edfcf211b40cdb24b0d53576042d52
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
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
; TANGENT_FRAME            0        nointerpolation       
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
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
; Number of inputs: 13, outputs: 21, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 4, 5, 9, 10 }
;   output 1 depends on inputs: { 0, 1, 2, 4, 5, 9, 10 }
;   output 2 depends on inputs: { 0, 1, 2, 4, 5, 9, 10 }
;   output 3 depends on inputs: { 0, 1, 2, 4, 5, 9, 10 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 5 }
;   output 8 depends on inputs: { 6 }
;   output 9 depends on inputs: { 7 }
;   output 10 depends on inputs: { 8 }
;   output 12 depends on inputs: { 9 }
;   output 13 depends on inputs: { 9 }
;   output 14 depends on inputs: { 9 }
;   output 16 depends on inputs: { 9 }
;   output 17 depends on inputs: { 9 }
;   output 18 depends on inputs: { 9 }
;   output 19 depends on inputs: { 9 }
;   output 20 depends on inputs: { 12 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !44  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !44  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !44  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 0), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 0), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = uitofp i32 %15 to float
  %20 = lshr i32 %16, 30
  %21 = and i32 %16, 1023
  %22 = uitofp i32 %21 to float
  %23 = fdiv float %22, 1.023000e+03
  %24 = lshr i32 %16, 10
  %25 = and i32 %24, 1023
  %26 = uitofp i32 %25 to float
  %27 = fdiv float %26, 1.023000e+03
  %28 = lshr i32 %16, 20
  %29 = and i32 %28, 511
  %30 = uitofp i32 %29 to float
  %31 = fdiv float %30, 5.110000e+02
  %32 = fmul float %23, 2.000000e+00
  %33 = fmul float %27, 2.000000e+00
  %34 = fmul float %31, 2.000000e+00
  %35 = fadd float %32, -1.000000e+00
  %36 = fadd float %33, -1.000000e+00
  %37 = fadd float %34, -1.000000e+00
  %38 = fmul float %35, 0x3FE6A09E60000000
  %39 = fmul float %36, 0x3FE6A09E60000000
  %40 = fmul float %37, 0x3FE6A09E60000000
  %41 = call float @dx.op.dot3.f32(i32 55, float %38, float %39, float %40, float %38, float %39, float %40), !dx.precise !44  ; Dot3(ax,ay,az,bx,by,bz)
  %42 = call float @dx.op.unary.f32(i32 7, float %41), !dx.precise !44  ; Saturate(value)
  %43 = fsub float 1.000000e+00, %42
  %44 = call float @dx.op.unary.f32(i32 24, float %43), !dx.precise !44  ; Sqrt(value)
  %45 = icmp eq i32 %20, 0
  br i1 %45, label %52, label %46

; <label>:46                                      ; preds = %0
  %47 = icmp eq i32 %20, 1
  br i1 %47, label %52, label %48

; <label>:48                                      ; preds = %46
  %49 = icmp eq i32 %20, 2
  %50 = select i1 %49, float %44, float %40
  %51 = select i1 %49, float %40, float %44
  br label %52

; <label>:52                                      ; preds = %48, %46, %0
  %53 = phi float [ %44, %0 ], [ %38, %46 ], [ %38, %48 ]
  %54 = phi float [ %38, %0 ], [ %44, %46 ], [ %39, %48 ]
  %55 = phi float [ %39, %0 ], [ %39, %46 ], [ %50, %48 ]
  %56 = phi float [ %40, %0 ], [ %40, %46 ], [ %51, %48 ]
  %57 = and i32 %16, 536870912
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %58, float -1.000000e+00, float 1.000000e+00
  %60 = fmul float %54, 2.000000e+00
  %61 = fmul float %54, %60
  %62 = fsub float 1.000000e+00, %61
  %63 = fmul float %55, 2.000000e+00
  %64 = fmul float %55, %63
  %65 = fsub float %62, %64
  %66 = fmul float %53, 2.000000e+00
  %67 = fmul float %66, %55
  %68 = fmul float %60, %56
  %69 = fadd float %67, %68
  %70 = fmul float %66, %54
  %71 = fmul float %63, %56
  %72 = fadd float %70, %71
  %73 = fmul float %60, %55
  %74 = fmul float %66, %56
  %75 = fsub float %73, %74
  %76 = fsub float %67, %68
  %77 = fmul float %53, %66
  %78 = fsub float 1.000000e+00, %77
  %79 = fsub float %78, %61
  %80 = and i32 %17, 65535
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80), !dx.precise !44  ; LegacyF16ToF32(value)
  %82 = lshr i32 %17, 16
  %83 = call float @dx.op.legacyF16ToF32(i32 131, i32 %82), !dx.precise !44  ; LegacyF16ToF32(value)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 1), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 1), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = lshr i32 %91, 30
  %94 = and i32 %91, 1023
  %95 = uitofp i32 %94 to float
  %96 = fdiv float %95, 1.023000e+03
  %97 = lshr i32 %91, 10
  %98 = and i32 %97, 1023
  %99 = uitofp i32 %98 to float
  %100 = fdiv float %99, 1.023000e+03
  %101 = lshr i32 %91, 20
  %102 = and i32 %101, 511
  %103 = uitofp i32 %102 to float
  %104 = fdiv float %103, 5.110000e+02
  %105 = fmul float %96, 2.000000e+00
  %106 = fmul float %100, 2.000000e+00
  %107 = fmul float %104, 2.000000e+00
  %108 = fadd float %105, -1.000000e+00
  %109 = fadd float %106, -1.000000e+00
  %110 = fadd float %107, -1.000000e+00
  %111 = fmul float %108, 0x3FE6A09E60000000
  %112 = fmul float %109, 0x3FE6A09E60000000
  %113 = fmul float %110, 0x3FE6A09E60000000
  %114 = call float @dx.op.dot3.f32(i32 55, float %111, float %112, float %113, float %111, float %112, float %113), !dx.precise !44  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = call float @dx.op.unary.f32(i32 7, float %114), !dx.precise !44  ; Saturate(value)
  %116 = fsub float 1.000000e+00, %115
  %117 = call float @dx.op.unary.f32(i32 24, float %116), !dx.precise !44  ; Sqrt(value)
  %118 = icmp eq i32 %93, 0
  br i1 %118, label %125, label %119

; <label>:119                                     ; preds = %52
  %120 = icmp eq i32 %93, 1
  br i1 %120, label %125, label %121

; <label>:121                                     ; preds = %119
  %122 = icmp eq i32 %93, 2
  %123 = select i1 %122, float %117, float %113
  %124 = select i1 %122, float %113, float %117
  br label %125

; <label>:125                                     ; preds = %121, %119, %52
  %126 = phi float [ %117, %52 ], [ %111, %119 ], [ %111, %121 ]
  %127 = phi float [ %111, %52 ], [ %117, %119 ], [ %112, %121 ]
  %128 = phi float [ %112, %52 ], [ %112, %119 ], [ %123, %121 ]
  %129 = phi float [ %113, %52 ], [ %113, %119 ], [ %124, %121 ]
  %130 = fmul float %127, 2.000000e+00
  %131 = fmul float %127, %130
  %132 = fsub float 1.000000e+00, %131
  %133 = fmul float %128, 2.000000e+00
  %134 = fmul float %128, %133
  %135 = fsub float %132, %134
  %136 = fmul float %126, 2.000000e+00
  %137 = fmul float %136, %128
  %138 = fmul float %130, %129
  %139 = fadd float %137, %138
  %140 = fmul float %136, %127
  %141 = fmul float %133, %129
  %142 = fadd float %140, %141
  %143 = fmul float %130, %128
  %144 = fmul float %136, %129
  %145 = fsub float %143, %144
  %146 = fsub float %137, %138
  %147 = fmul float %126, %136
  %148 = fsub float 1.000000e+00, %147
  %149 = fsub float %148, %131
  %150 = and i32 %92, 65535
  %151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %150), !dx.precise !44  ; LegacyF16ToF32(value)
  %152 = lshr i32 %92, 16
  %153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %152), !dx.precise !44  ; LegacyF16ToF32(value)
  %154 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %155 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %156 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %157 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 2), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %158 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 2), !dx.precise !44  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %159 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %160 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %161 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %162 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %163 = lshr i32 %161, 30
  %164 = and i32 %161, 1023
  %165 = uitofp i32 %164 to float
  %166 = fdiv float %165, 1.023000e+03
  %167 = lshr i32 %161, 10
  %168 = and i32 %167, 1023
  %169 = uitofp i32 %168 to float
  %170 = fdiv float %169, 1.023000e+03
  %171 = lshr i32 %161, 20
  %172 = and i32 %171, 511
  %173 = uitofp i32 %172 to float
  %174 = fdiv float %173, 5.110000e+02
  %175 = fmul float %166, 2.000000e+00
  %176 = fmul float %170, 2.000000e+00
  %177 = fmul float %174, 2.000000e+00
  %178 = fadd float %175, -1.000000e+00
  %179 = fadd float %176, -1.000000e+00
  %180 = fadd float %177, -1.000000e+00
  %181 = fmul float %178, 0x3FE6A09E60000000
  %182 = fmul float %179, 0x3FE6A09E60000000
  %183 = fmul float %180, 0x3FE6A09E60000000
  %184 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %181, float %182, float %183), !dx.precise !44  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = call float @dx.op.unary.f32(i32 7, float %184), !dx.precise !44  ; Saturate(value)
  %186 = fsub float 1.000000e+00, %185
  %187 = call float @dx.op.unary.f32(i32 24, float %186), !dx.precise !44  ; Sqrt(value)
  %188 = icmp eq i32 %163, 0
  br i1 %188, label %195, label %189

; <label>:189                                     ; preds = %125
  %190 = icmp eq i32 %163, 1
  br i1 %190, label %195, label %191

; <label>:191                                     ; preds = %189
  %192 = icmp eq i32 %163, 2
  %193 = select i1 %192, float %187, float %183
  %194 = select i1 %192, float %183, float %187
  br label %195

; <label>:195                                     ; preds = %191, %189, %125
  %196 = phi float [ %187, %125 ], [ %181, %189 ], [ %181, %191 ]
  %197 = phi float [ %181, %125 ], [ %187, %189 ], [ %182, %191 ]
  %198 = phi float [ %182, %125 ], [ %182, %189 ], [ %193, %191 ]
  %199 = phi float [ %183, %125 ], [ %183, %189 ], [ %194, %191 ]
  %200 = fmul float %197, 2.000000e+00
  %201 = fmul float %197, %200
  %202 = fsub float 1.000000e+00, %201
  %203 = fmul float %198, 2.000000e+00
  %204 = fmul float %198, %203
  %205 = fsub float %202, %204
  %206 = fmul float %196, 2.000000e+00
  %207 = fmul float %206, %198
  %208 = fmul float %200, %199
  %209 = fadd float %207, %208
  %210 = fmul float %206, %197
  %211 = fmul float %203, %199
  %212 = fadd float %210, %211
  %213 = fmul float %200, %198
  %214 = fmul float %206, %199
  %215 = fsub float %213, %214
  %216 = fsub float %207, %208
  %217 = fmul float %196, %206
  %218 = fsub float 1.000000e+00, %217
  %219 = fsub float %218, %201
  %220 = and i32 %162, 65535
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220), !dx.precise !44  ; LegacyF16ToF32(value)
  %222 = lshr i32 %162, 16
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222), !dx.precise !44  ; LegacyF16ToF32(value)
  %224 = fmul float %5, %8
  %225 = fmul float %5, %9
  %226 = fmul float %5, %10
  %227 = fmul float %6, %84
  %228 = fmul float %6, %85
  %229 = fmul float %6, %86
  %230 = fadd float %224, %227
  %231 = fadd float %225, %228
  %232 = fadd float %226, %229
  %233 = fmul float %7, %154
  %234 = fmul float %7, %155
  %235 = fmul float %7, %156
  %236 = fadd float %230, %233
  %237 = fadd float %231, %234
  %238 = fadd float %232, %235
  %239 = fmul float %5, %11
  %240 = fmul float %5, %12
  %241 = fmul float %6, %87
  %242 = fmul float %6, %88
  %243 = fadd float %239, %241
  %244 = fadd float %240, %242
  %245 = fmul float %7, %157
  %246 = fmul float %7, %158
  %247 = fadd float %243, %245
  %248 = fadd float %244, %246
  %249 = fmul fast float %13, %5
  %250 = fmul fast float %14, %5
  %251 = fmul fast float %89, %6
  %252 = fmul fast float %90, %6
  %253 = fadd fast float %251, %249
  %254 = fadd fast float %252, %250
  %255 = fmul fast float %159, %7
  %256 = fmul fast float %160, %7
  %257 = fadd fast float %253, %255
  %258 = fadd fast float %254, %256
  %259 = fmul float %5, %69
  %260 = fmul float %5, %75
  %261 = fmul float %5, %79
  %262 = fmul float %6, %139
  %263 = fmul float %6, %145
  %264 = fmul float %6, %149
  %265 = fadd float %259, %262
  %266 = fadd float %260, %263
  %267 = fadd float %261, %264
  %268 = fmul float %7, %209
  %269 = fmul float %7, %215
  %270 = fmul float %7, %219
  %271 = fadd float %265, %268
  %272 = fadd float %266, %269
  %273 = fadd float %267, %270
  %274 = fmul fast float %65, %5
  %275 = fmul fast float %72, %5
  %276 = fmul fast float %76, %5
  %277 = fmul fast float %135, %6
  %278 = fmul fast float %142, %6
  %279 = fmul fast float %146, %6
  %280 = fadd fast float %277, %274
  %281 = fadd fast float %278, %275
  %282 = fadd fast float %279, %276
  %283 = fmul fast float %205, %7
  %284 = fmul fast float %212, %7
  %285 = fmul fast float %216, %7
  %286 = fadd fast float %280, %283
  %287 = fadd fast float %281, %284
  %288 = fadd fast float %282, %285
  %289 = fmul float %5, %81
  %290 = fmul float %6, %151
  %291 = fadd float %289, %290
  %292 = fmul float %7, %221
  %293 = fadd float %291, %292
  %294 = fmul float %5, %83
  %295 = fmul float %6, %153
  %296 = fadd float %294, %295
  %297 = fmul float %7, %223
  %298 = fadd float %296, %297
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %303 = fsub float %236, %300
  %304 = fsub float %237, %301
  %305 = fsub float %238, %302
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 0
  %308 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %309 = extractvalue %dx.types.CBufRet.f32 %306, 2
  %310 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %311 = fmul float %303, %307
  %312 = call float @dx.op.tertiary.f32(i32 46, float %304, float %308, float %311), !dx.precise !44  ; FMad(a,b,c)
  %313 = call float @dx.op.tertiary.f32(i32 46, float %305, float %309, float %312), !dx.precise !44  ; FMad(a,b,c)
  %314 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %310, float %313), !dx.precise !44  ; FMad(a,b,c)
  %315 = call float @dx.op.binary.f32(i32 35, float %314, float 0x3F1A36E2E0000000), !dx.precise !44  ; FMax(a,b)
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %321 = fmul float %317, 0.000000e+00
  %322 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %318, float %321), !dx.precise !44  ; FMad(a,b,c)
  %323 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %319, float %322), !dx.precise !44  ; FMad(a,b,c)
  %324 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %320, float %323), !dx.precise !44  ; FMad(a,b,c)
  %325 = fdiv float %315, %324
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = fdiv float %325, %327
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = add i32 %330, 0
  %332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 1
  %335 = bitcast i32 %334 to float
  %336 = extractvalue %dx.types.ResRet.i32 %333, 0
  %337 = bitcast i32 %336 to float
  %338 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %332, i32 0)  ; GetDimensions(handle,mipLevel)
  %339 = extractvalue %dx.types.Dimensions %338, 0
  %340 = sitofp i32 %339 to float
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %343 = call float @dx.op.unary.f32(i32 6, float %342), !dx.precise !44  ; FAbs(value)
  %344 = fmul float %293, %343
  %345 = fcmp olt float %342, 0.000000e+00
  %346 = fmul float %298, 2.560000e+02
  %347 = fdiv float %344, %346
  %348 = select i1 %345, float %347, float %344
  %349 = fmul float %298, %340
  %350 = fmul float %328, %349
  %351 = call float @dx.op.unary.f32(i32 23, float %350), !dx.precise !44  ; Log(value)
  %352 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %353 = fadd float %351, %352
  %354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %332, %dx.types.Handle %2, float %247, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = fmul float %337, %355
  %357 = fadd float %335, %356
  %358 = fmul float %348, %357
  %359 = fadd float %358, 0.000000e+00
  %360 = call float @dx.op.dot3.f32(i32 55, float %271, float %272, float %273, float %271, float %272, float %273), !dx.precise !44  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = call float @dx.op.unary.f32(i32 25, float %360), !dx.precise !44  ; Rsqrt(value)
  %362 = fmul float %271, %361
  %363 = fmul float %272, %361
  %364 = fmul float %273, %361
  %365 = fmul float %362, %359
  %366 = fmul float %363, %359
  %367 = fmul float %364, %359
  %368 = fadd float %236, %365
  %369 = fadd float %237, %366
  %370 = fadd float %238, %367
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = fsub float %368, %372
  %376 = fsub float %369, %373
  %377 = fsub float %370, %374
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.f32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.f32 %378, 1
  %381 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %382 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %387 = extractvalue %dx.types.CBufRet.f32 %383, 3
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = extractvalue %dx.types.CBufRet.f32 %388, 3
  %393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.f32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.f32 %393, 1
  %396 = extractvalue %dx.types.CBufRet.f32 %393, 2
  %397 = extractvalue %dx.types.CBufRet.f32 %393, 3
  %398 = fmul float %379, %375
  %399 = call float @dx.op.tertiary.f32(i32 46, float %376, float %380, float %398), !dx.precise !44  ; FMad(a,b,c)
  %400 = call float @dx.op.tertiary.f32(i32 46, float %377, float %381, float %399), !dx.precise !44  ; FMad(a,b,c)
  %401 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %382, float %400), !dx.precise !44  ; FMad(a,b,c)
  %402 = fmul float %384, %375
  %403 = call float @dx.op.tertiary.f32(i32 46, float %376, float %385, float %402), !dx.precise !44  ; FMad(a,b,c)
  %404 = call float @dx.op.tertiary.f32(i32 46, float %377, float %386, float %403), !dx.precise !44  ; FMad(a,b,c)
  %405 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %387, float %404), !dx.precise !44  ; FMad(a,b,c)
  %406 = fmul float %389, %375
  %407 = call float @dx.op.tertiary.f32(i32 46, float %376, float %390, float %406), !dx.precise !44  ; FMad(a,b,c)
  %408 = call float @dx.op.tertiary.f32(i32 46, float %377, float %391, float %407), !dx.precise !44  ; FMad(a,b,c)
  %409 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %392, float %408), !dx.precise !44  ; FMad(a,b,c)
  %410 = fmul float %375, %394
  %411 = call float @dx.op.tertiary.f32(i32 46, float %376, float %395, float %410), !dx.precise !44  ; FMad(a,b,c)
  %412 = call float @dx.op.tertiary.f32(i32 46, float %377, float %396, float %411), !dx.precise !44  ; FMad(a,b,c)
  %413 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %397, float %412), !dx.precise !44  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %401)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %405)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %413)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %247)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %248)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %258)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %19)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %271)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %272)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %273)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %287)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %288)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 3, float %59)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 5, i32 0, i8 0, i32 %18)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[29 x i32] [i32 13, i32 21, i32 15, i32 15, i32 15, i32 0, i32 31, i32 47, i32 256, i32 512, i32 1024, i32 1011727, i32 15, i32 0, i32 1048576, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !42}
!16 = !{!17, !30, !38}
!17 = !{!18, !21, !23, !24, !26, !27, !28, !29}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{i32 2, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 2, !22}
!24 = !{i32 3, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 2, i8 0, !25}
!25 = !{i32 3, i32 1}
!26 = !{i32 4, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 2, i8 1, !25}
!27 = !{i32 5, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 2, i8 2, !25}
!28 = !{i32 6, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 2, i8 3, null}
!29 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !25}
!30 = !{!31, !33, !34, !35, !36, !37}
!31 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !32}
!32 = !{i32 3, i32 15}
!33 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 0, !22}
!34 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 2, i8 0, !20}
!35 = !{i32 3, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 3, i8 0, !20}
!36 = !{i32 4, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 4, i8 0, !32}
!37 = !{i32 5, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 0, !25}
!38 = !{!39, !41}
!39 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !40, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!40 = !{i32 0, i32 1, i32 2}
!41 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!42 = !{i32 0, i64 16, i32 2, !43}
!43 = !{i32 2, i32 3}
!44 = !{i32 1}

