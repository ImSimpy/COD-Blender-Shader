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
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xy          2     NONE   float   xy  
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
; shader hash: c9b5a41d31286544d41d4e360da0d5b9
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
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
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
; Number of inputs: 10, outputs: 10, patchconst: 13
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
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !40  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !40  ; DomainLocation(component)
  %8 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !40  ; DomainLocation(component)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = and i32 %12, 255
  %18 = uitofp i32 %17 to float
  %19 = lshr i32 %12, 8
  %20 = and i32 %19, 255
  %21 = uitofp i32 %20 to float
  %22 = lshr i32 %12, 16
  %23 = and i32 %22, 255
  %24 = uitofp i32 %23 to float
  %25 = lshr i32 %12, 24
  %26 = uitofp i32 %25 to float
  %27 = lshr i32 %15, 30
  %28 = and i32 %15, 1023
  %29 = uitofp i32 %28 to float
  %30 = fdiv float %29, 1.023000e+03
  %31 = lshr i32 %15, 10
  %32 = and i32 %31, 1023
  %33 = uitofp i32 %32 to float
  %34 = fdiv float %33, 1.023000e+03
  %35 = lshr i32 %15, 20
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
  %48 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %49 = call float @dx.op.unary.f32(i32 7, float %48), !dx.precise !40  ; Saturate(value)
  %50 = fsub float 1.000000e+00, %49
  %51 = call float @dx.op.unary.f32(i32 24, float %50), !dx.precise !40  ; Sqrt(value)
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
  %76 = and i32 %16, 65535
  %77 = call float @dx.op.legacyF16ToF32(i32 131, i32 %76), !dx.precise !40  ; LegacyF16ToF32(value)
  %78 = lshr i32 %16, 16
  %79 = call float @dx.op.legacyF16ToF32(i32 131, i32 %78), !dx.precise !40  ; LegacyF16ToF32(value)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %119 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = call float @dx.op.unary.f32(i32 7, float %119), !dx.precise !40  ; Saturate(value)
  %121 = fsub float 1.000000e+00, %120
  %122 = call float @dx.op.unary.f32(i32 24, float %121), !dx.precise !40  ; Sqrt(value)
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
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147), !dx.precise !40  ; LegacyF16ToF32(value)
  %149 = lshr i32 %87, 16
  %150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %149), !dx.precise !40  ; LegacyF16ToF32(value)
  %151 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %152 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %153 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %154 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %155 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %156 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !40  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %190 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float %187, float %188, float %189), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %191 = call float @dx.op.unary.f32(i32 7, float %190), !dx.precise !40  ; Saturate(value)
  %192 = fsub float 1.000000e+00, %191
  %193 = call float @dx.op.unary.f32(i32 24, float %192), !dx.precise !40  ; Sqrt(value)
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
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218), !dx.precise !40  ; LegacyF16ToF32(value)
  %220 = lshr i32 %158, 16
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220), !dx.precise !40  ; LegacyF16ToF32(value)
  %222 = fmul float %6, %9
  %223 = fmul float %6, %10
  %224 = fmul float %6, %11
  %225 = fmul float %7, %80
  %226 = fmul float %7, %81
  %227 = fmul float %7, %82
  %228 = fadd float %222, %225
  %229 = fadd float %223, %226
  %230 = fadd float %224, %227
  %231 = fmul float %8, %151
  %232 = fmul float %8, %152
  %233 = fmul float %8, %153
  %234 = fadd float %228, %231
  %235 = fadd float %229, %232
  %236 = fadd float %230, %233
  %237 = fmul fast float %26, %6
  %238 = fmul fast float %18, %6
  %239 = fmul fast float %21, %6
  %240 = fmul fast float %24, %6
  %241 = fmul fast float %97, %7
  %242 = fmul fast float %89, %7
  %243 = fmul fast float %92, %7
  %244 = fmul fast float %95, %7
  %245 = fmul fast float %168, %8
  %246 = fmul fast float %160, %8
  %247 = fmul fast float %163, %8
  %248 = fmul fast float %166, %8
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
  %261 = fmul float %6, %13
  %262 = fmul float %6, %14
  %263 = fmul float %7, %84
  %264 = fmul float %7, %85
  %265 = fadd float %261, %263
  %266 = fadd float %262, %264
  %267 = fmul float %8, %155
  %268 = fmul float %8, %156
  %269 = fadd float %265, %267
  %270 = fadd float %266, %268
  %271 = fmul float %6, %68
  %272 = fmul float %6, %71
  %273 = fmul float %6, %75
  %274 = fmul float %7, %139
  %275 = fmul float %7, %142
  %276 = fmul float %7, %146
  %277 = fadd float %271, %274
  %278 = fadd float %272, %275
  %279 = fadd float %273, %276
  %280 = fmul float %8, %210
  %281 = fmul float %8, %213
  %282 = fmul float %8, %217
  %283 = fadd float %277, %280
  %284 = fadd float %278, %281
  %285 = fadd float %279, %282
  %286 = fmul float %6, %77
  %287 = fmul float %7, %148
  %288 = fadd float %286, %287
  %289 = fmul float %8, %219
  %290 = fadd float %288, %289
  %291 = fmul float %6, %79
  %292 = fmul float %7, %150
  %293 = fadd float %291, %292
  %294 = fmul float %8, %221
  %295 = fadd float %293, %294
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %303 = fmul float %234, %302
  %304 = fmul float %235, %302
  %305 = fmul float %236, %302
  %306 = fmul float %298, %305
  %307 = fmul float %299, %304
  %308 = fsub float %306, %307
  %309 = fmul float %299, %303
  %310 = fmul float %297, %305
  %311 = fsub float %309, %310
  %312 = fmul float %297, %304
  %313 = fmul float %298, %303
  %314 = fsub float %312, %313
  %315 = fmul float %308, 2.000000e+00
  %316 = fmul float %311, 2.000000e+00
  %317 = fmul float %314, 2.000000e+00
  %318 = fmul float %300, %315
  %319 = fmul float %300, %316
  %320 = fmul float %300, %317
  %321 = fadd float %303, %318
  %322 = fadd float %304, %319
  %323 = fadd float %305, %320
  %324 = fmul float %298, %317
  %325 = fmul float %299, %316
  %326 = fsub float %324, %325
  %327 = fmul float %299, %315
  %328 = fmul float %297, %317
  %329 = fsub float %327, %328
  %330 = fmul float %297, %316
  %331 = fmul float %298, %315
  %332 = fsub float %330, %331
  %333 = fadd float %321, %326
  %334 = fadd float %322, %329
  %335 = fadd float %323, %332
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.i32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.i32 %340, 2
  %344 = bitcast float %337 to i32
  %345 = bitcast float %338 to i32
  %346 = bitcast float %339 to i32
  %347 = sub i32 %341, %344
  %348 = sub i32 %342, %345
  %349 = sub i32 %343, %346
  %350 = sitofp i32 %347 to float
  %351 = sitofp i32 %348 to float
  %352 = sitofp i32 %349 to float
  %353 = fmul float %350, 0x3F30000000000000
  %354 = fmul float %351, 0x3F30000000000000
  %355 = fmul float %352, 0x3F30000000000000
  %356 = fadd float %353, %333
  %357 = fadd float %354, %334
  %358 = fadd float %355, %335
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = extractvalue %dx.types.CBufRet.f32 %359, 3
  %364 = fmul float %360, %356
  %365 = call float @dx.op.tertiary.f32(i32 46, float %357, float %361, float %364), !dx.precise !40  ; FMad(a,b,c)
  %366 = call float @dx.op.tertiary.f32(i32 46, float %358, float %362, float %365), !dx.precise !40  ; FMad(a,b,c)
  %367 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %363, float %366), !dx.precise !40  ; FMad(a,b,c)
  %368 = call float @dx.op.binary.f32(i32 35, float %367, float 0x3F1A36E2E0000000), !dx.precise !40  ; FMax(a,b)
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = extractvalue %dx.types.CBufRet.f32 %369, 3
  %374 = fmul float %370, 0.000000e+00
  %375 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %371, float %374), !dx.precise !40  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %372, float %375), !dx.precise !40  ; FMad(a,b,c)
  %377 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %373, float %376), !dx.precise !40  ; FMad(a,b,c)
  %378 = fdiv float %368, %377
  %379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.f32 %379, 0
  %381 = fdiv float %378, %380
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = add i32 %383, 0
  %385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 1
  %388 = bitcast i32 %387 to float
  %389 = extractvalue %dx.types.ResRet.i32 %386, 0
  %390 = bitcast i32 %389 to float
  %391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %385, i32 0)  ; GetDimensions(handle,mipLevel)
  %392 = extractvalue %dx.types.Dimensions %391, 0
  %393 = sitofp i32 %392 to float
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 2
  %396 = call float @dx.op.unary.f32(i32 6, float %395), !dx.precise !40  ; FAbs(value)
  %397 = fmul float %290, %396
  %398 = fcmp olt float %395, 0.000000e+00
  %399 = fmul float %295, 2.560000e+02
  %400 = fdiv float %397, %399
  %401 = select i1 %398, float %400, float %397
  %402 = fmul float %390, %401
  %403 = fadd float %402, 0.000000e+00
  %404 = fmul float %295, %393
  %405 = fmul float %381, %404
  %406 = call float @dx.op.unary.f32(i32 23, float %405), !dx.precise !40  ; Log(value)
  %407 = extractvalue %dx.types.CBufRet.f32 %394, 1
  %408 = fadd float %406, %407
  %409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %385, %dx.types.Handle %2, float %269, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float %408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %410 = extractvalue %dx.types.ResRet.f32 %409, 0
  %411 = fmul float %390, %410
  %412 = fadd float %388, %411
  %413 = fmul float %401, %412
  %414 = fadd float %413, 0.000000e+00
  %415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %416 = extractvalue %dx.types.CBufRet.f32 %415, 0
  %417 = extractvalue %dx.types.CBufRet.f32 %415, 1
  %418 = extractvalue %dx.types.CBufRet.f32 %415, 2
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %421 = fcmp oeq float %420, 0.000000e+00
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = extractvalue %dx.types.CBufRet.f32 %422, 3
  br i1 %421, label %427, label %463

; <label>:427                                     ; preds = %201
  %428 = call float @dx.op.dot3.f32(i32 55, float %416, float %417, float %418, float %416, float %417, float %418), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %429 = call float @dx.op.unary.f32(i32 25, float %428), !dx.precise !40  ; Rsqrt(value)
  %430 = fmul float %416, %429
  %431 = fmul float %417, %429
  %432 = fmul float %418, %429
  %433 = fmul float %432, %424
  %434 = fmul float %431, %425
  %435 = fsub float %433, %434
  %436 = fmul float %430, %425
  %437 = fmul float %432, %423
  %438 = fsub float %436, %437
  %439 = fmul float %431, %423
  %440 = fmul float %430, %424
  %441 = fsub float %439, %440
  %442 = fmul float %435, 2.000000e+00
  %443 = fmul float %438, 2.000000e+00
  %444 = fmul float %441, 2.000000e+00
  %445 = fmul float %426, %442
  %446 = fmul float %426, %443
  %447 = fmul float %426, %444
  %448 = fsub float %430, %445
  %449 = fsub float %431, %446
  %450 = fsub float %432, %447
  %451 = fmul float %424, %444
  %452 = fmul float %425, %443
  %453 = fsub float %451, %452
  %454 = fmul float %425, %442
  %455 = fmul float %423, %444
  %456 = fsub float %454, %455
  %457 = fmul float %423, %443
  %458 = fmul float %424, %442
  %459 = fsub float %457, %458
  %460 = fadd float %448, %453
  %461 = fadd float %449, %456
  %462 = fadd float %450, %459
  br label %525

; <label>:463                                     ; preds = %201
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.i32 %468, 0
  %470 = extractvalue %dx.types.CBufRet.i32 %468, 1
  %471 = extractvalue %dx.types.CBufRet.i32 %468, 2
  %472 = bitcast float %465 to i32
  %473 = bitcast float %466 to i32
  %474 = bitcast float %467 to i32
  %475 = sub i32 %469, %472
  %476 = sub i32 %470, %473
  %477 = sub i32 %471, %474
  %478 = sitofp i32 %475 to float
  %479 = sitofp i32 %476 to float
  %480 = sitofp i32 %477 to float
  %481 = fmul float %478, 0x3F30000000000000
  %482 = fmul float %479, 0x3F30000000000000
  %483 = fmul float %480, 0x3F30000000000000
  %484 = fsub float -0.000000e+00, %481
  %485 = fsub float -0.000000e+00, %482
  %486 = fsub float -0.000000e+00, %483
  %487 = fmul float %424, %486
  %488 = fmul float %425, %485
  %489 = fsub float %487, %488
  %490 = fmul float %425, %484
  %491 = fmul float %423, %486
  %492 = fsub float %490, %491
  %493 = fmul float %423, %485
  %494 = fmul float %424, %484
  %495 = fsub float %493, %494
  %496 = fmul float %489, 2.000000e+00
  %497 = fmul float %492, 2.000000e+00
  %498 = fmul float %495, 2.000000e+00
  %499 = fmul float %426, %496
  %500 = fmul float %426, %497
  %501 = fmul float %426, %498
  %502 = fsub float %484, %499
  %503 = fsub float %485, %500
  %504 = fsub float %486, %501
  %505 = fmul float %424, %498
  %506 = fmul float %425, %497
  %507 = fsub float %505, %506
  %508 = fmul float %425, %496
  %509 = fmul float %423, %498
  %510 = fsub float %508, %509
  %511 = fmul float %423, %497
  %512 = fmul float %424, %496
  %513 = fsub float %511, %512
  %514 = fadd float %502, %507
  %515 = fadd float %503, %510
  %516 = fadd float %504, %513
  %517 = fsub float %514, %234
  %518 = fsub float %515, %235
  %519 = fsub float %516, %236
  %520 = call float @dx.op.dot3.f32(i32 55, float %517, float %518, float %519, float %517, float %518, float %519), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 25, float %520), !dx.precise !40  ; Rsqrt(value)
  %522 = fmul float %521, %517
  %523 = fmul float %521, %518
  %524 = fmul float %521, %519
  br label %525

; <label>:525                                     ; preds = %463, %427
  %526 = phi float [ %460, %427 ], [ %522, %463 ]
  %527 = phi float [ %461, %427 ], [ %523, %463 ]
  %528 = phi float [ %462, %427 ], [ %524, %463 ]
  %529 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %526, float %527, float %528), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %530 = call float @dx.op.unary.f32(i32 6, float %529), !dx.precise !40  ; FAbs(value)
  %531 = call float @dx.op.unary.f32(i32 7, float %530), !dx.precise !40  ; Saturate(value)
  %532 = fmul float %531, 5.000000e-01
  %533 = fadd float %532, 2.500000e-01
  %534 = fmul float %403, %533
  %535 = fsub float %414, %534
  %536 = call float @dx.op.dot3.f32(i32 55, float %283, float %284, float %285, float %283, float %284, float %285), !dx.precise !40  ; Dot3(ax,ay,az,bx,by,bz)
  %537 = call float @dx.op.unary.f32(i32 25, float %536), !dx.precise !40  ; Rsqrt(value)
  %538 = fmul float %283, %537
  %539 = fmul float %284, %537
  %540 = fmul float %285, %537
  %541 = fmul float %538, %535
  %542 = fmul float %539, %535
  %543 = fmul float %540, %535
  %544 = fadd float %234, %541
  %545 = fadd float %235, %542
  %546 = fadd float %236, %543
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 0
  %549 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %550 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %551 = extractvalue %dx.types.CBufRet.f32 %547, 3
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 3
  %554 = fmul float %553, %544
  %555 = fmul float %553, %545
  %556 = fmul float %553, %546
  %557 = fmul float %549, %556
  %558 = fmul float %550, %555
  %559 = fsub float %557, %558
  %560 = fmul float %550, %554
  %561 = fmul float %548, %556
  %562 = fsub float %560, %561
  %563 = fmul float %548, %555
  %564 = fmul float %549, %554
  %565 = fsub float %563, %564
  %566 = fmul float %559, 2.000000e+00
  %567 = fmul float %562, 2.000000e+00
  %568 = fmul float %565, 2.000000e+00
  %569 = fmul float %551, %566
  %570 = fmul float %551, %567
  %571 = fmul float %551, %568
  %572 = fadd float %554, %569
  %573 = fadd float %555, %570
  %574 = fadd float %556, %571
  %575 = fmul float %549, %568
  %576 = fmul float %550, %567
  %577 = fsub float %575, %576
  %578 = fmul float %550, %566
  %579 = fmul float %548, %568
  %580 = fsub float %578, %579
  %581 = fmul float %548, %567
  %582 = fmul float %549, %566
  %583 = fsub float %581, %582
  %584 = fadd float %572, %577
  %585 = fadd float %573, %580
  %586 = fadd float %574, %583
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.i32 %591, 0
  %593 = extractvalue %dx.types.CBufRet.i32 %591, 1
  %594 = extractvalue %dx.types.CBufRet.i32 %591, 2
  %595 = bitcast float %588 to i32
  %596 = bitcast float %589 to i32
  %597 = bitcast float %590 to i32
  %598 = sub i32 %592, %595
  %599 = sub i32 %593, %596
  %600 = sub i32 %594, %597
  %601 = sitofp i32 %598 to float
  %602 = sitofp i32 %599 to float
  %603 = sitofp i32 %600 to float
  %604 = fmul float %601, 0x3F30000000000000
  %605 = fmul float %602, 0x3F30000000000000
  %606 = fmul float %603, 0x3F30000000000000
  %607 = fadd float %604, %584
  %608 = fadd float %605, %585
  %609 = fadd float %606, %586
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %612 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %614 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %618 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %619 = extractvalue %dx.types.CBufRet.f32 %615, 3
  %620 = extractvalue %dx.types.CBufRet.f32 %415, 3
  %621 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %622 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %623 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %624 = fmul float %611, %607
  %625 = call float @dx.op.tertiary.f32(i32 46, float %608, float %612, float %624), !dx.precise !40  ; FMad(a,b,c)
  %626 = call float @dx.op.tertiary.f32(i32 46, float %609, float %613, float %625), !dx.precise !40  ; FMad(a,b,c)
  %627 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %614, float %626), !dx.precise !40  ; FMad(a,b,c)
  %628 = fmul float %616, %607
  %629 = call float @dx.op.tertiary.f32(i32 46, float %608, float %617, float %628), !dx.precise !40  ; FMad(a,b,c)
  %630 = call float @dx.op.tertiary.f32(i32 46, float %609, float %618, float %629), !dx.precise !40  ; FMad(a,b,c)
  %631 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %619, float %630), !dx.precise !40  ; FMad(a,b,c)
  %632 = fmul float %416, %607
  %633 = call float @dx.op.tertiary.f32(i32 46, float %608, float %417, float %632), !dx.precise !40  ; FMad(a,b,c)
  %634 = call float @dx.op.tertiary.f32(i32 46, float %609, float %418, float %633), !dx.precise !40  ; FMad(a,b,c)
  %635 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %620, float %634), !dx.precise !40  ; FMad(a,b,c)
  %636 = fmul float %621, %607
  %637 = call float @dx.op.tertiary.f32(i32 46, float %608, float %622, float %636), !dx.precise !40  ; FMad(a,b,c)
  %638 = call float @dx.op.tertiary.f32(i32 46, float %609, float %420, float %637), !dx.precise !40  ; FMad(a,b,c)
  %639 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %623, float %638), !dx.precise !40  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %627)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %631)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %635)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %251)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %254)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %260)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %269)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %270)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!15 = !{[26 x i32] [i32 10, i32 10, i32 15, i32 15, i32 15, i32 0, i32 240, i32 15, i32 15, i32 0, i32 271, i32 527, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ds_main, !"ds_main", !17, !4, !38}
!17 = !{!18, !29, !34}
!18 = !{!19, !22, !24, !26, !27, !28}
!19 = !{i32 0, !"POSITION", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 7}
!22 = !{i32 1, !"COLOR", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 0, !23}
!23 = !{i32 3, i32 1}
!24 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!25 = !{i32 3, i32 3}
!26 = !{i32 3, !"TANGENT_FRAME", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 1, !23}
!27 = !{i32 4, !"DISPLACEMENT", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 2, !23}
!28 = !{i32 5, !"TESSFACTORS_OFFSET", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 3, null}
!29 = !{!30, !32, !33}
!30 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 1, !"COLOR", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !31}
!33 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!34 = !{!35, !37}
!35 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !36, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!36 = !{i32 0, i32 1, i32 2}
!37 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !20, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!38 = !{i32 0, i64 16, i32 2, !39}
!39 = !{i32 2, i32 3}
!40 = !{i32 1}

