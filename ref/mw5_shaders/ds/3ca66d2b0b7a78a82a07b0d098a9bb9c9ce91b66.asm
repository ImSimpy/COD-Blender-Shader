;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             1     z         1     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        1     NONE    uint       
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; TRANSIENT_INDEX          0   x           3     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
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
; shader hash: 48275c12bde52d9166d546bdeb02a08e
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
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 10, 11 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10 }
;   output 11 depends on inputs: { 11 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !26  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !26  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !26  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = and i32 %11, 255
  %20 = uitofp i32 %19 to float
  %21 = lshr i32 %11, 8
  %22 = and i32 %21, 255
  %23 = uitofp i32 %22 to float
  %24 = lshr i32 %16, 30
  %25 = and i32 %16, 1023
  %26 = uitofp i32 %25 to float
  %27 = fdiv float %26, 1.023000e+03
  %28 = lshr i32 %16, 10
  %29 = and i32 %28, 1023
  %30 = uitofp i32 %29 to float
  %31 = fdiv float %30, 1.023000e+03
  %32 = lshr i32 %16, 20
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
  %61 = fmul float %57, 2.000000e+00
  %62 = fmul float %61, %59
  %63 = fmul float %58, 2.000000e+00
  %64 = fmul float %63, %60
  %65 = fadd float %62, %64
  %66 = fmul float %63, %59
  %67 = fmul float %61, %60
  %68 = fsub float %66, %67
  %69 = fmul float %57, %61
  %70 = fsub float 1.000000e+00, %69
  %71 = fmul float %58, %63
  %72 = fsub float %70, %71
  %73 = and i32 %17, 65535
  %74 = call float @dx.op.legacyF16ToF32(i32 131, i32 %73), !dx.precise !26  ; LegacyF16ToF32(value)
  %75 = lshr i32 %17, 16
  %76 = call float @dx.op.legacyF16ToF32(i32 131, i32 %75), !dx.precise !26  ; LegacyF16ToF32(value)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = and i32 %80, 255
  %88 = uitofp i32 %87 to float
  %89 = lshr i32 %80, 8
  %90 = and i32 %89, 255
  %91 = uitofp i32 %90 to float
  %92 = lshr i32 %85, 30
  %93 = and i32 %85, 1023
  %94 = uitofp i32 %93 to float
  %95 = fdiv float %94, 1.023000e+03
  %96 = lshr i32 %85, 10
  %97 = and i32 %96, 1023
  %98 = uitofp i32 %97 to float
  %99 = fdiv float %98, 1.023000e+03
  %100 = lshr i32 %85, 20
  %101 = and i32 %100, 511
  %102 = uitofp i32 %101 to float
  %103 = fdiv float %102, 5.110000e+02
  %104 = fmul float %95, 2.000000e+00
  %105 = fmul float %99, 2.000000e+00
  %106 = fmul float %103, 2.000000e+00
  %107 = fadd float %104, -1.000000e+00
  %108 = fadd float %105, -1.000000e+00
  %109 = fadd float %106, -1.000000e+00
  %110 = fmul float %107, 0x3FE6A09E60000000
  %111 = fmul float %108, 0x3FE6A09E60000000
  %112 = fmul float %109, 0x3FE6A09E60000000
  %113 = call float @dx.op.dot3.f32(i32 55, float %110, float %111, float %112, float %110, float %111, float %112), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = call float @dx.op.unary.f32(i32 7, float %113), !dx.precise !26  ; Saturate(value)
  %115 = fsub float 1.000000e+00, %114
  %116 = call float @dx.op.unary.f32(i32 24, float %115), !dx.precise !26  ; Sqrt(value)
  %117 = icmp eq i32 %92, 0
  br i1 %117, label %124, label %118

; <label>:118                                     ; preds = %56
  %119 = icmp eq i32 %92, 1
  br i1 %119, label %124, label %120

; <label>:120                                     ; preds = %118
  %121 = icmp eq i32 %92, 2
  %122 = select i1 %121, float %116, float %112
  %123 = select i1 %121, float %112, float %116
  br label %124

; <label>:124                                     ; preds = %120, %118, %56
  %125 = phi float [ %116, %56 ], [ %110, %118 ], [ %110, %120 ]
  %126 = phi float [ %110, %56 ], [ %116, %118 ], [ %111, %120 ]
  %127 = phi float [ %111, %56 ], [ %111, %118 ], [ %122, %120 ]
  %128 = phi float [ %112, %56 ], [ %112, %118 ], [ %123, %120 ]
  %129 = fmul float %125, 2.000000e+00
  %130 = fmul float %129, %127
  %131 = fmul float %126, 2.000000e+00
  %132 = fmul float %131, %128
  %133 = fadd float %130, %132
  %134 = fmul float %131, %127
  %135 = fmul float %129, %128
  %136 = fsub float %134, %135
  %137 = fmul float %125, %129
  %138 = fsub float 1.000000e+00, %137
  %139 = fmul float %126, %131
  %140 = fsub float %138, %139
  %141 = and i32 %86, 65535
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141), !dx.precise !26  ; LegacyF16ToF32(value)
  %143 = lshr i32 %86, 16
  %144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %143), !dx.precise !26  ; LegacyF16ToF32(value)
  %145 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %146 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %147 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %148 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %149 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %150 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %151 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %152 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %153 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %154 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %155 = and i32 %148, 255
  %156 = uitofp i32 %155 to float
  %157 = lshr i32 %148, 8
  %158 = and i32 %157, 255
  %159 = uitofp i32 %158 to float
  %160 = lshr i32 %153, 30
  %161 = and i32 %153, 1023
  %162 = uitofp i32 %161 to float
  %163 = fdiv float %162, 1.023000e+03
  %164 = lshr i32 %153, 10
  %165 = and i32 %164, 1023
  %166 = uitofp i32 %165 to float
  %167 = fdiv float %166, 1.023000e+03
  %168 = lshr i32 %153, 20
  %169 = and i32 %168, 511
  %170 = uitofp i32 %169 to float
  %171 = fdiv float %170, 5.110000e+02
  %172 = fmul float %163, 2.000000e+00
  %173 = fmul float %167, 2.000000e+00
  %174 = fmul float %171, 2.000000e+00
  %175 = fadd float %172, -1.000000e+00
  %176 = fadd float %173, -1.000000e+00
  %177 = fadd float %174, -1.000000e+00
  %178 = fmul float %175, 0x3FE6A09E60000000
  %179 = fmul float %176, 0x3FE6A09E60000000
  %180 = fmul float %177, 0x3FE6A09E60000000
  %181 = call float @dx.op.dot3.f32(i32 55, float %178, float %179, float %180, float %178, float %179, float %180), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %182 = call float @dx.op.unary.f32(i32 7, float %181), !dx.precise !26  ; Saturate(value)
  %183 = fsub float 1.000000e+00, %182
  %184 = call float @dx.op.unary.f32(i32 24, float %183), !dx.precise !26  ; Sqrt(value)
  %185 = icmp eq i32 %160, 0
  br i1 %185, label %192, label %186

; <label>:186                                     ; preds = %124
  %187 = icmp eq i32 %160, 1
  br i1 %187, label %192, label %188

; <label>:188                                     ; preds = %186
  %189 = icmp eq i32 %160, 2
  %190 = select i1 %189, float %184, float %180
  %191 = select i1 %189, float %180, float %184
  br label %192

; <label>:192                                     ; preds = %188, %186, %124
  %193 = phi float [ %184, %124 ], [ %178, %186 ], [ %178, %188 ]
  %194 = phi float [ %178, %124 ], [ %184, %186 ], [ %179, %188 ]
  %195 = phi float [ %179, %124 ], [ %179, %186 ], [ %190, %188 ]
  %196 = phi float [ %180, %124 ], [ %180, %186 ], [ %191, %188 ]
  %197 = fmul float %193, 2.000000e+00
  %198 = fmul float %197, %195
  %199 = fmul float %194, 2.000000e+00
  %200 = fmul float %199, %196
  %201 = fadd float %198, %200
  %202 = fmul float %199, %195
  %203 = fmul float %197, %196
  %204 = fsub float %202, %203
  %205 = fmul float %193, %197
  %206 = fsub float 1.000000e+00, %205
  %207 = fmul float %194, %199
  %208 = fsub float %206, %207
  %209 = and i32 %154, 65535
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209), !dx.precise !26  ; LegacyF16ToF32(value)
  %211 = lshr i32 %154, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211), !dx.precise !26  ; LegacyF16ToF32(value)
  %213 = fmul float %5, %8
  %214 = fmul float %5, %9
  %215 = fmul float %5, %10
  %216 = fmul float %6, %77
  %217 = fmul float %6, %78
  %218 = fmul float %6, %79
  %219 = fadd float %213, %216
  %220 = fadd float %214, %217
  %221 = fadd float %215, %218
  %222 = fmul float %7, %145
  %223 = fmul float %7, %146
  %224 = fmul float %7, %147
  %225 = fadd float %219, %222
  %226 = fadd float %220, %223
  %227 = fadd float %221, %224
  %228 = fmul fast float %20, %5
  %229 = fmul fast float %88, %6
  %230 = fmul fast float %156, %7
  %231 = fadd fast float %229, %228
  %232 = fadd fast float %231, %230
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = fmul fast float %23, %5
  %235 = fmul fast float %91, %6
  %236 = fmul fast float %159, %7
  %237 = fadd fast float %235, %234
  %238 = fadd fast float %237, %236
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = fmul float %5, %12
  %241 = fmul float %5, %13
  %242 = fmul float %6, %81
  %243 = fmul float %6, %82
  %244 = fadd float %240, %242
  %245 = fadd float %241, %243
  %246 = fmul float %7, %149
  %247 = fmul float %7, %150
  %248 = fadd float %244, %246
  %249 = fadd float %245, %247
  %250 = fmul float %5, %14
  %251 = fmul float %5, %15
  %252 = fmul float %6, %83
  %253 = fmul float %6, %84
  %254 = fadd float %250, %252
  %255 = fadd float %251, %253
  %256 = fmul float %7, %151
  %257 = fmul float %7, %152
  %258 = fadd float %254, %256
  %259 = fadd float %255, %257
  %260 = fmul float %5, %65
  %261 = fmul float %5, %68
  %262 = fmul float %5, %72
  %263 = fmul float %6, %133
  %264 = fmul float %6, %136
  %265 = fmul float %6, %140
  %266 = fadd float %260, %263
  %267 = fadd float %261, %264
  %268 = fadd float %262, %265
  %269 = fmul float %7, %201
  %270 = fmul float %7, %204
  %271 = fmul float %7, %208
  %272 = fadd float %266, %269
  %273 = fadd float %267, %270
  %274 = fadd float %268, %271
  %275 = fmul float %5, %74
  %276 = fmul float %6, %142
  %277 = fadd float %275, %276
  %278 = fmul float %7, %210
  %279 = fadd float %277, %278
  %280 = fmul float %5, %76
  %281 = fmul float %6, %144
  %282 = fadd float %280, %281
  %283 = fmul float %7, %212
  %284 = fadd float %282, %283
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %288 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %289 = fsub float %225, %286
  %290 = fsub float %226, %287
  %291 = fsub float %227, %288
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %296 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %297 = fmul float %289, %293
  %298 = call float @dx.op.tertiary.f32(i32 46, float %290, float %294, float %297), !dx.precise !26  ; FMad(a,b,c)
  %299 = call float @dx.op.tertiary.f32(i32 46, float %291, float %295, float %298), !dx.precise !26  ; FMad(a,b,c)
  %300 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %296, float %299), !dx.precise !26  ; FMad(a,b,c)
  %301 = call float @dx.op.binary.f32(i32 35, float %300, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = extractvalue %dx.types.CBufRet.f32 %302, 3
  %307 = fmul float %303, 0.000000e+00
  %308 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %304, float %307), !dx.precise !26  ; FMad(a,b,c)
  %309 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %305, float %308), !dx.precise !26  ; FMad(a,b,c)
  %310 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %306, float %309), !dx.precise !26  ; FMad(a,b,c)
  %311 = fdiv float %301, %310
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 0
  %314 = fdiv float %311, %313
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 1
  %317 = bitcast i32 %316 to float
  %318 = extractvalue %dx.types.ResRet.i32 %315, 0
  %319 = bitcast i32 %318 to float
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 272, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = add i32 %321, 0
  %323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %323, i32 0)  ; GetDimensions(handle,mipLevel)
  %325 = extractvalue %dx.types.Dimensions %324, 0
  %326 = sitofp i32 %325 to float
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = call float @dx.op.unary.f32(i32 6, float %328), !dx.precise !26  ; FAbs(value)
  %330 = fmul float %279, %329
  %331 = fcmp olt float %328, 0.000000e+00
  %332 = fmul float %284, 2.560000e+02
  %333 = fdiv float %330, %332
  %334 = select i1 %331, float %333, float %330
  %335 = fmul float %319, %334
  %336 = fadd float %335, 0.000000e+00
  %337 = fmul float %284, %326
  %338 = fmul float %314, %337
  %339 = call float @dx.op.unary.f32(i32 23, float %338), !dx.precise !26  ; Log(value)
  %340 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %341 = fadd float %339, %340
  %342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %323, %dx.types.Handle %2, float %258, float %259, float undef, float undef, i32 0, i32 0, i32 undef, float %341)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = fmul float %319, %343
  %345 = fadd float %317, %344
  %346 = fmul float %334, %345
  %347 = fadd float %346, 0.000000e+00
  %348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.f32 %348, 0
  %350 = extractvalue %dx.types.CBufRet.f32 %348, 1
  %351 = extractvalue %dx.types.CBufRet.f32 %348, 2
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %354 = fcmp oeq float %353, 0.000000e+00
  br i1 %354, label %363, label %355

; <label>:355                                     ; preds = %192
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fsub float %357, %225
  %361 = fsub float %358, %226
  %362 = fsub float %359, %227
  br label %363

; <label>:363                                     ; preds = %355, %192
  %364 = phi float [ %360, %355 ], [ %349, %192 ]
  %365 = phi float [ %361, %355 ], [ %350, %192 ]
  %366 = phi float [ %362, %355 ], [ %351, %192 ]
  %367 = call float @dx.op.dot3.f32(i32 55, float %364, float %365, float %366, float %364, float %365, float %366), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %368 = call float @dx.op.unary.f32(i32 25, float %367), !dx.precise !26  ; Rsqrt(value)
  %369 = fmul float %364, %368
  %370 = fmul float %365, %368
  %371 = fmul float %366, %368
  %372 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %369, float %370, float %371), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.unary.f32(i32 6, float %372), !dx.precise !26  ; FAbs(value)
  %374 = call float @dx.op.unary.f32(i32 7, float %373), !dx.precise !26  ; Saturate(value)
  %375 = fmul float %374, 5.000000e-01
  %376 = fadd float %375, 2.500000e-01
  %377 = fmul float %336, %376
  %378 = fsub float %347, %377
  %379 = call float @dx.op.dot3.f32(i32 55, float %272, float %273, float %274, float %272, float %273, float %274), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %380 = call float @dx.op.unary.f32(i32 25, float %379), !dx.precise !26  ; Rsqrt(value)
  %381 = fmul float %272, %380
  %382 = fmul float %273, %380
  %383 = fmul float %274, %380
  %384 = fmul float %381, %378
  %385 = fmul float %382, %378
  %386 = fmul float %383, %378
  %387 = fadd float %225, %384
  %388 = fadd float %226, %385
  %389 = fadd float %227, %386
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = extractvalue %dx.types.CBufRet.f32 %390, 1
  %393 = extractvalue %dx.types.CBufRet.f32 %390, 2
  %394 = fsub float %387, %391
  %395 = fsub float %388, %392
  %396 = fsub float %389, %393
  %397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %398 = extractvalue %dx.types.CBufRet.f32 %397, 0
  %399 = extractvalue %dx.types.CBufRet.f32 %397, 1
  %400 = extractvalue %dx.types.CBufRet.f32 %397, 2
  %401 = extractvalue %dx.types.CBufRet.f32 %397, 3
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %407 = extractvalue %dx.types.CBufRet.f32 %348, 3
  %408 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %352, 3
  %411 = fmul float %398, %394
  %412 = call float @dx.op.tertiary.f32(i32 46, float %395, float %399, float %411), !dx.precise !26  ; FMad(a,b,c)
  %413 = call float @dx.op.tertiary.f32(i32 46, float %396, float %400, float %412), !dx.precise !26  ; FMad(a,b,c)
  %414 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %401, float %413), !dx.precise !26  ; FMad(a,b,c)
  %415 = fmul float %403, %394
  %416 = call float @dx.op.tertiary.f32(i32 46, float %395, float %404, float %415), !dx.precise !26  ; FMad(a,b,c)
  %417 = call float @dx.op.tertiary.f32(i32 46, float %396, float %405, float %416), !dx.precise !26  ; FMad(a,b,c)
  %418 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %406, float %417), !dx.precise !26  ; FMad(a,b,c)
  %419 = fmul float %394, %349
  %420 = call float @dx.op.tertiary.f32(i32 46, float %395, float %350, float %419), !dx.precise !26  ; FMad(a,b,c)
  %421 = call float @dx.op.tertiary.f32(i32 46, float %396, float %351, float %420), !dx.precise !26  ; FMad(a,b,c)
  %422 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %407, float %421), !dx.precise !26  ; FMad(a,b,c)
  %423 = fmul float %394, %408
  %424 = call float @dx.op.tertiary.f32(i32 46, float %395, float %409, float %423), !dx.precise !26  ; FMad(a,b,c)
  %425 = call float @dx.op.tertiary.f32(i32 46, float %396, float %353, float %424), !dx.precise !26  ; FMad(a,b,c)
  %426 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %410, float %425), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %414)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %422)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %233)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %248)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %249)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %258)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 3, i32 0, i8 0, i32 %18)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[29 x i32] [i32 13, i32 13, i32 15, i32 15, i32 15, i32 0, i32 48, i32 15, i32 15, i32 0, i32 256, i32 512, i32 1039, i32 2063, i32 4096, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !41}
!16 = !{!17, !31, !37}
!17 = !{!18, !21, !23, !25, !27, !28, !29, !30}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 2, !24}
!26 = !{i32 1}
!27 = !{i32 4, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!28 = !{i32 5, !"DISPLACEMENT", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!29 = !{i32 6, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 3, null}
!30 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !22}
!31 = !{!32, !34, !35, !36}
!32 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!35 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !33}
!36 = !{i32 3, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !22}
!37 = !{!38, !40}
!38 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !39, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!39 = !{i32 0, i32 1, i32 2}
!40 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!41 = !{i32 0, i64 16, i32 2, !42}
!42 = !{i32 2, i32 3}

