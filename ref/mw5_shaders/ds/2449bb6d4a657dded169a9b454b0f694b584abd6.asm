;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             0     z         1     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        1     NONE    uint       
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TRANSIENT_INDEX          0   x           3     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xy          2     NONE   float   xy  
; TRANSIENT_INDEX          0   x           3     NONE    uint   x   
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
; shader hash: 252e579e059536e5591288b5ac678a3f
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
; TRANSIENT_INDEX          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
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
; Number of inputs: 13, outputs: 13, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 8, 9 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 6 depends on inputs: { 4 }
;   output 7 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 12 depends on inputs: { 12 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !41  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !41  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !41  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = and i32 %11, 255
  %18 = uitofp i32 %17 to float
  %19 = lshr i32 %11, 8
  %20 = and i32 %19, 255
  %21 = uitofp i32 %20 to float
  %22 = lshr i32 %11, 16
  %23 = and i32 %22, 255
  %24 = uitofp i32 %23 to float
  %25 = lshr i32 %11, 24
  %26 = uitofp i32 %25 to float
  %27 = lshr i32 %14, 30
  %28 = and i32 %14, 1023
  %29 = uitofp i32 %28 to float
  %30 = fdiv float %29, 1.023000e+03
  %31 = lshr i32 %14, 10
  %32 = and i32 %31, 1023
  %33 = uitofp i32 %32 to float
  %34 = fdiv float %33, 1.023000e+03
  %35 = lshr i32 %14, 20
  %36 = and i32 %35, 511
  %37 = uitofp i32 %36 to float
  %38 = fdiv float %37, 5.110000e+02
  %39 = fmul float %30, 2.000000e+00
  %40 = fmul float %34, 2.000000e+00
  %41 = fmul float %38, 2.000000e+00
  %42 = fadd float %39, -1.000000e+00
  %43 = fadd float %40, -1.000000e+00
  %44 = fadd float %41, -1.000000e+00
  %45 = fmul float %42, 0x3FE6A09E60000000
  %46 = fmul float %43, 0x3FE6A09E60000000
  %47 = fmul float %44, 0x3FE6A09E60000000
  %48 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47), !dx.precise !41  ; Dot3(ax,ay,az,bx,by,bz)
  %49 = call float @dx.op.unary.f32(i32 7, float %48), !dx.precise !41  ; Saturate(value)
  %50 = fsub float 1.000000e+00, %49
  %51 = call float @dx.op.unary.f32(i32 24, float %50), !dx.precise !41  ; Sqrt(value)
  %52 = icmp eq i32 %27, 0
  br i1 %52, label %59, label %53

; <label>:53                                      ; preds = %0
  %54 = icmp eq i32 %27, 1
  br i1 %54, label %59, label %55

; <label>:55                                      ; preds = %53
  %56 = icmp eq i32 %27, 2
  %57 = select i1 %56, float %51, float %47
  %58 = select i1 %56, float %47, float %51
  br label %59

; <label>:59                                      ; preds = %55, %53, %0
  %60 = phi float [ %51, %0 ], [ %45, %53 ], [ %45, %55 ]
  %61 = phi float [ %45, %0 ], [ %51, %53 ], [ %46, %55 ]
  %62 = phi float [ %46, %0 ], [ %46, %53 ], [ %57, %55 ]
  %63 = phi float [ %47, %0 ], [ %47, %53 ], [ %58, %55 ]
  %64 = fmul float %60, 2.000000e+00
  %65 = fmul float %64, %62
  %66 = fmul float %61, 2.000000e+00
  %67 = fmul float %66, %63
  %68 = fadd float %65, %67
  %69 = fmul float %66, %62
  %70 = fmul float %64, %63
  %71 = fsub float %69, %70
  %72 = fmul float %60, %64
  %73 = fsub float 1.000000e+00, %72
  %74 = fmul float %61, %66
  %75 = fsub float %73, %74
  %76 = and i32 %15, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76), !dx.precise !41  ; LegacyF16ToF32(value)
  %78 = lshr i32 %15, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78), !dx.precise !41  ; LegacyF16ToF32(value)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = and i32 %83, 255
  %89 = uitofp i32 %88 to float
  %90 = lshr i32 %83, 8
  %91 = and i32 %90, 255
  %92 = uitofp i32 %91 to float
  %93 = lshr i32 %83, 16
  %94 = and i32 %93, 255
  %95 = uitofp i32 %94 to float
  %96 = lshr i32 %83, 24
  %97 = uitofp i32 %96 to float
  %98 = lshr i32 %86, 30
  %99 = and i32 %86, 1023
  %100 = uitofp i32 %99 to float
  %101 = fdiv float %100, 1.023000e+03
  %102 = lshr i32 %86, 10
  %103 = and i32 %102, 1023
  %104 = uitofp i32 %103 to float
  %105 = fdiv float %104, 1.023000e+03
  %106 = lshr i32 %86, 20
  %107 = and i32 %106, 511
  %108 = uitofp i32 %107 to float
  %109 = fdiv float %108, 5.110000e+02
  %110 = fmul float %101, 2.000000e+00
  %111 = fmul float %105, 2.000000e+00
  %112 = fmul float %109, 2.000000e+00
  %113 = fadd float %110, -1.000000e+00
  %114 = fadd float %111, -1.000000e+00
  %115 = fadd float %112, -1.000000e+00
  %116 = fmul float %113, 0x3FE6A09E60000000
  %117 = fmul float %114, 0x3FE6A09E60000000
  %118 = fmul float %115, 0x3FE6A09E60000000
  %119 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118), !dx.precise !41  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = call float @dx.op.unary.f32(i32 7, float %119), !dx.precise !41  ; Saturate(value)
  %121 = fsub float 1.000000e+00, %120
  %122 = call float @dx.op.unary.f32(i32 24, float %121), !dx.precise !41  ; Sqrt(value)
  %123 = icmp eq i32 %98, 0
  br i1 %123, label %130, label %124

; <label>:124                                     ; preds = %59
  %125 = icmp eq i32 %98, 1
  br i1 %125, label %130, label %126

; <label>:126                                     ; preds = %124
  %127 = icmp eq i32 %98, 2
  %128 = select i1 %127, float %122, float %118
  %129 = select i1 %127, float %118, float %122
  br label %130

; <label>:130                                     ; preds = %126, %124, %59
  %131 = phi float [ %122, %59 ], [ %116, %124 ], [ %116, %126 ]
  %132 = phi float [ %116, %59 ], [ %122, %124 ], [ %117, %126 ]
  %133 = phi float [ %117, %59 ], [ %117, %124 ], [ %128, %126 ]
  %134 = phi float [ %118, %59 ], [ %118, %124 ], [ %129, %126 ]
  %135 = fmul float %131, 2.000000e+00
  %136 = fmul float %135, %133
  %137 = fmul float %132, 2.000000e+00
  %138 = fmul float %137, %134
  %139 = fadd float %136, %138
  %140 = fmul float %137, %133
  %141 = fmul float %135, %134
  %142 = fsub float %140, %141
  %143 = fmul float %131, %135
  %144 = fsub float 1.000000e+00, %143
  %145 = fmul float %132, %137
  %146 = fsub float %144, %145
  %147 = and i32 %87, 65535
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147), !dx.precise !41  ; LegacyF16ToF32(value)
  %149 = lshr i32 %87, 16
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149), !dx.precise !41  ; LegacyF16ToF32(value)
  %151 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %152 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %153 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %154 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %155 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %156 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !41  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %157 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %158 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %159 = and i32 %154, 255
  %160 = uitofp i32 %159 to float
  %161 = lshr i32 %154, 8
  %162 = and i32 %161, 255
  %163 = uitofp i32 %162 to float
  %164 = lshr i32 %154, 16
  %165 = and i32 %164, 255
  %166 = uitofp i32 %165 to float
  %167 = lshr i32 %154, 24
  %168 = uitofp i32 %167 to float
  %169 = lshr i32 %157, 30
  %170 = and i32 %157, 1023
  %171 = uitofp i32 %170 to float
  %172 = fdiv float %171, 1.023000e+03
  %173 = lshr i32 %157, 10
  %174 = and i32 %173, 1023
  %175 = uitofp i32 %174 to float
  %176 = fdiv float %175, 1.023000e+03
  %177 = lshr i32 %157, 20
  %178 = and i32 %177, 511
  %179 = uitofp i32 %178 to float
  %180 = fdiv float %179, 5.110000e+02
  %181 = fmul float %172, 2.000000e+00
  %182 = fmul float %176, 2.000000e+00
  %183 = fmul float %180, 2.000000e+00
  %184 = fadd float %181, -1.000000e+00
  %185 = fadd float %182, -1.000000e+00
  %186 = fadd float %183, -1.000000e+00
  %187 = fmul float %184, 0x3FE6A09E60000000
  %188 = fmul float %185, 0x3FE6A09E60000000
  %189 = fmul float %186, 0x3FE6A09E60000000
  %190 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %187, float %188, float %189), !dx.precise !41  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = call float @dx.op.unary.f32(i32 7, float %190), !dx.precise !41  ; Saturate(value)
  %192 = fsub float 1.000000e+00, %191
  %193 = call float @dx.op.unary.f32(i32 24, float %192), !dx.precise !41  ; Sqrt(value)
  %194 = icmp eq i32 %169, 0
  br i1 %194, label %201, label %195

; <label>:195                                     ; preds = %130
  %196 = icmp eq i32 %169, 1
  br i1 %196, label %201, label %197

; <label>:197                                     ; preds = %195
  %198 = icmp eq i32 %169, 2
  %199 = select i1 %198, float %193, float %189
  %200 = select i1 %198, float %189, float %193
  br label %201

; <label>:201                                     ; preds = %197, %195, %130
  %202 = phi float [ %193, %130 ], [ %187, %195 ], [ %187, %197 ]
  %203 = phi float [ %187, %130 ], [ %193, %195 ], [ %188, %197 ]
  %204 = phi float [ %188, %130 ], [ %188, %195 ], [ %199, %197 ]
  %205 = phi float [ %189, %130 ], [ %189, %195 ], [ %200, %197 ]
  %206 = fmul float %202, 2.000000e+00
  %207 = fmul float %206, %204
  %208 = fmul float %203, 2.000000e+00
  %209 = fmul float %208, %205
  %210 = fadd float %207, %209
  %211 = fmul float %208, %204
  %212 = fmul float %206, %205
  %213 = fsub float %211, %212
  %214 = fmul float %202, %206
  %215 = fsub float 1.000000e+00, %214
  %216 = fmul float %203, %208
  %217 = fsub float %215, %216
  %218 = and i32 %158, 65535
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218), !dx.precise !41  ; LegacyF16ToF32(value)
  %220 = lshr i32 %158, 16
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220), !dx.precise !41  ; LegacyF16ToF32(value)
  %222 = fmul float %5, %8
  %223 = fmul float %5, %9
  %224 = fmul float %5, %10
  %225 = fmul float %6, %80
  %226 = fmul float %6, %81
  %227 = fmul float %6, %82
  %228 = fadd float %222, %225
  %229 = fadd float %223, %226
  %230 = fadd float %224, %227
  %231 = fmul float %7, %151
  %232 = fmul float %7, %152
  %233 = fmul float %7, %153
  %234 = fadd float %228, %231
  %235 = fadd float %229, %232
  %236 = fadd float %230, %233
  %237 = fmul fast float %26, %5
  %238 = fmul fast float %18, %5
  %239 = fmul fast float %21, %5
  %240 = fmul fast float %24, %5
  %241 = fmul fast float %97, %6
  %242 = fmul fast float %89, %6
  %243 = fmul fast float %92, %6
  %244 = fmul fast float %95, %6
  %245 = fmul fast float %168, %7
  %246 = fmul fast float %160, %7
  %247 = fmul fast float %163, %7
  %248 = fmul fast float %166, %7
  %249 = fadd fast float %241, %237
  %250 = fadd fast float %249, %245
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = fadd fast float %242, %238
  %253 = fadd fast float %252, %246
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = fadd fast float %243, %239
  %256 = fadd fast float %255, %247
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = fadd fast float %244, %240
  %259 = fadd fast float %258, %248
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = fmul float %5, %12
  %262 = fmul float %5, %13
  %263 = fmul float %6, %84
  %264 = fmul float %6, %85
  %265 = fadd float %261, %263
  %266 = fadd float %262, %264
  %267 = fmul float %7, %155
  %268 = fmul float %7, %156
  %269 = fadd float %265, %267
  %270 = fadd float %266, %268
  %271 = fmul float %5, %68
  %272 = fmul float %5, %71
  %273 = fmul float %5, %75
  %274 = fmul float %6, %139
  %275 = fmul float %6, %142
  %276 = fmul float %6, %146
  %277 = fadd float %271, %274
  %278 = fadd float %272, %275
  %279 = fadd float %273, %276
  %280 = fmul float %7, %210
  %281 = fmul float %7, %213
  %282 = fmul float %7, %217
  %283 = fadd float %277, %280
  %284 = fadd float %278, %281
  %285 = fadd float %279, %282
  %286 = fmul float %5, %77
  %287 = fmul float %6, %148
  %288 = fadd float %286, %287
  %289 = fmul float %7, %219
  %290 = fadd float %288, %289
  %291 = fmul float %5, %79
  %292 = fmul float %6, %150
  %293 = fadd float %291, %292
  %294 = fmul float %7, %221
  %295 = fadd float %293, %294
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = fsub float %234, %297
  %301 = fsub float %235, %298
  %302 = fsub float %236, %299
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %307 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %308 = fmul float %300, %304
  %309 = call float @dx.op.tertiary.f32(i32 46, float %301, float %305, float %308), !dx.precise !41  ; FMad(a,b,c)
  %310 = call float @dx.op.tertiary.f32(i32 46, float %302, float %306, float %309), !dx.precise !41  ; FMad(a,b,c)
  %311 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %307, float %310), !dx.precise !41  ; FMad(a,b,c)
  %312 = call float @dx.op.binary.f32(i32 35, float %311, float 0x3F1A36E2E0000000), !dx.precise !41  ; FMax(a,b)
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %318 = fmul float %314, 0.000000e+00
  %319 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %315, float %318), !dx.precise !41  ; FMad(a,b,c)
  %320 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %316, float %319), !dx.precise !41  ; FMad(a,b,c)
  %321 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %317, float %320), !dx.precise !41  ; FMad(a,b,c)
  %322 = fdiv float %312, %321
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = fdiv float %322, %324
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = add i32 %327, 0
  %329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 1
  %332 = bitcast i32 %331 to float
  %333 = extractvalue %dx.types.ResRet.i32 %330, 0
  %334 = bitcast i32 %333 to float
  %335 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %329, i32 0)  ; GetDimensions(handle,mipLevel)
  %336 = extractvalue %dx.types.Dimensions %335, 0
  %337 = sitofp i32 %336 to float
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %340 = call float @dx.op.unary.f32(i32 6, float %339), !dx.precise !41  ; FAbs(value)
  %341 = fmul float %290, %340
  %342 = fcmp olt float %339, 0.000000e+00
  %343 = fmul float %295, 2.560000e+02
  %344 = fdiv float %341, %343
  %345 = select i1 %342, float %344, float %341
  %346 = fmul float %334, %345
  %347 = fadd float %346, 0.000000e+00
  %348 = fmul float %295, %337
  %349 = fmul float %325, %348
  %350 = call float @dx.op.unary.f32(i32 23, float %349), !dx.precise !41  ; Log(value)
  %351 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %352 = fadd float %350, %351
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %329, %dx.types.Handle %2, float %269, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float %352)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = fmul float %334, %354
  %356 = fadd float %332, %355
  %357 = fmul float %345, %356
  %358 = fadd float %357, 0.000000e+00
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %365 = fcmp oeq float %364, 0.000000e+00
  br i1 %365, label %374, label %366

; <label>:366                                     ; preds = %201
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fsub float %368, %234
  %372 = fsub float %369, %235
  %373 = fsub float %370, %236
  br label %374

; <label>:374                                     ; preds = %366, %201
  %375 = phi float [ %371, %366 ], [ %360, %201 ]
  %376 = phi float [ %372, %366 ], [ %361, %201 ]
  %377 = phi float [ %373, %366 ], [ %362, %201 ]
  %378 = call float @dx.op.dot3.f32(i32 55, float %375, float %376, float %377, float %375, float %376, float %377), !dx.precise !41  ; Dot3(ax,ay,az,bx,by,bz)
  %379 = call float @dx.op.unary.f32(i32 25, float %378), !dx.precise !41  ; Rsqrt(value)
  %380 = fmul float %375, %379
  %381 = fmul float %376, %379
  %382 = fmul float %377, %379
  %383 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %380, float %381, float %382), !dx.precise !41  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = call float @dx.op.unary.f32(i32 6, float %383), !dx.precise !41  ; FAbs(value)
  %385 = call float @dx.op.unary.f32(i32 7, float %384), !dx.precise !41  ; Saturate(value)
  %386 = fmul float %385, 5.000000e-01
  %387 = fadd float %386, 2.500000e-01
  %388 = fmul float %347, %387
  %389 = fsub float %358, %388
  %390 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %283, float %284, float %285), !dx.precise !41  ; Dot3(ax,ay,az,bx,by,bz)
  %391 = call float @dx.op.unary.f32(i32 25, float %390), !dx.precise !41  ; Rsqrt(value)
  %392 = fmul float %283, %391
  %393 = fmul float %284, %391
  %394 = fmul float %285, %391
  %395 = fmul float %392, %389
  %396 = fmul float %393, %389
  %397 = fmul float %394, %389
  %398 = fadd float %234, %395
  %399 = fadd float %235, %396
  %400 = fadd float %236, %397
  %401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %402 = extractvalue %dx.types.CBufRet.f32 %401, 0
  %403 = extractvalue %dx.types.CBufRet.f32 %401, 1
  %404 = extractvalue %dx.types.CBufRet.f32 %401, 2
  %405 = fsub float %398, %402
  %406 = fsub float %399, %403
  %407 = fsub float %400, %404
  %408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.f32 %408, 0
  %410 = extractvalue %dx.types.CBufRet.f32 %408, 1
  %411 = extractvalue %dx.types.CBufRet.f32 %408, 2
  %412 = extractvalue %dx.types.CBufRet.f32 %408, 3
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = extractvalue %dx.types.CBufRet.f32 %413, 3
  %418 = extractvalue %dx.types.CBufRet.f32 %359, 3
  %419 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %420 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %421 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %422 = fmul float %409, %405
  %423 = call float @dx.op.tertiary.f32(i32 46, float %406, float %410, float %422), !dx.precise !41  ; FMad(a,b,c)
  %424 = call float @dx.op.tertiary.f32(i32 46, float %407, float %411, float %423), !dx.precise !41  ; FMad(a,b,c)
  %425 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %412, float %424), !dx.precise !41  ; FMad(a,b,c)
  %426 = fmul float %414, %405
  %427 = call float @dx.op.tertiary.f32(i32 46, float %406, float %415, float %426), !dx.precise !41  ; FMad(a,b,c)
  %428 = call float @dx.op.tertiary.f32(i32 46, float %407, float %416, float %427), !dx.precise !41  ; FMad(a,b,c)
  %429 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %417, float %428), !dx.precise !41  ; FMad(a,b,c)
  %430 = fmul float %405, %360
  %431 = call float @dx.op.tertiary.f32(i32 46, float %406, float %361, float %430), !dx.precise !41  ; FMad(a,b,c)
  %432 = call float @dx.op.tertiary.f32(i32 46, float %407, float %362, float %431), !dx.precise !41  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %418, float %432), !dx.precise !41  ; FMad(a,b,c)
  %434 = fmul float %405, %419
  %435 = call float @dx.op.tertiary.f32(i32 46, float %406, float %420, float %434), !dx.precise !41  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %407, float %364, float %435), !dx.precise !41  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %421, float %436), !dx.precise !41  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %425)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %429)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %433)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %437)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %251)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %254)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %260)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %269)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %270)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 3, i32 0, i8 0, i32 %16)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[29 x i32] [i32 13, i32 13, i32 15, i32 15, i32 15, i32 0, i32 240, i32 15, i32 15, i32 0, i32 271, i32 527, i32 0, i32 0, i32 4096, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !39}
!16 = !{!17, !29, !35}
!17 = !{!18, !21, !23, !25, !26, !27, !28}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!26 = !{i32 4, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!27 = !{i32 5, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 3, null}
!28 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !22}
!29 = !{!30, !32, !33, !34}
!30 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!33 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!34 = !{i32 3, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !22}
!35 = !{!36, !38}
!36 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !37, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!37 = !{i32 0, i32 1, i32 2}
!38 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!39 = !{i32 0, i64 16, i32 2, !40}
!40 = !{i32 2, i32 3}
!41 = !{i32 1}

