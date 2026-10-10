;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; TEXCOORD                 0   xy          1     NONE   float   xy  
; TEXCOORD                 1     zw        1     NONE   float     zw
; LIGHTING_TEXCOORD        0   xy          2     NONE   float   xy  
; LMAP_INDEX               0   x           3     NONE    uint   x   
; TANGENT_FRAME            0    y          3     NONE    uint    y  
; NORMAL_TRANSFORM         1     z         3     NONE    uint     z 
; NORMAL_TRANSFORM         2      w        3     NONE    uint       
; DISPLACEMENT             0   x           4     NONE    uint   x   
; TESSFACTORS_OFFSET       0    y          4     NONE    uint       
; TRANSIENT_INDEX          0     z         4     NONE    uint     z 
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xyzw        1     NONE   float   xyzw
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        5     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           6     NONE    uint   x   
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
; shader hash: 545a42336c363cddcb4b7677be57733e
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
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
; TANGENT_FRAME            0        nointerpolation       
; NORMAL_TRANSFORM         1        nointerpolation       
; NORMAL_TRANSFORM         2        nointerpolation       
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
; NORMAL_TRANSFORM         1                 linear       
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
; Number of inputs: 19, outputs: 25, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 4, 5, 13, 16 }
;   output 1 depends on inputs: { 0, 1, 2, 4, 5, 13, 16 }
;   output 2 depends on inputs: { 0, 1, 2, 4, 5, 13, 16 }
;   output 3 depends on inputs: { 0, 1, 2, 4, 5, 13, 16 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 5 }
;   output 6 depends on inputs: { 6 }
;   output 7 depends on inputs: { 7 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 12 }
;   output 12 depends on inputs: { 13 }
;   output 13 depends on inputs: { 13 }
;   output 14 depends on inputs: { 13 }
;   output 16 depends on inputs: { 13 }
;   output 17 depends on inputs: { 13 }
;   output 18 depends on inputs: { 13 }
;   output 19 depends on inputs: { 13 }
;   output 20 depends on inputs: { 14 }
;   output 21 depends on inputs: { 14 }
;   output 22 depends on inputs: { 14 }
;   output 23 depends on inputs: { 14 }
;   output 24 depends on inputs: { 18 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !24  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !24  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !24  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = uitofp i32 %17 to float
  %23 = lshr i32 %18, 30
  %24 = and i32 %18, 1023
  %25 = uitofp i32 %24 to float
  %26 = fdiv float %25, 1.023000e+03
  %27 = lshr i32 %18, 10
  %28 = and i32 %27, 1023
  %29 = uitofp i32 %28 to float
  %30 = fdiv float %29, 1.023000e+03
  %31 = lshr i32 %18, 20
  %32 = and i32 %31, 511
  %33 = uitofp i32 %32 to float
  %34 = fdiv float %33, 5.110000e+02
  %35 = fmul float %26, 2.000000e+00
  %36 = fmul float %30, 2.000000e+00
  %37 = fmul float %34, 2.000000e+00
  %38 = fadd float %35, -1.000000e+00
  %39 = fadd float %36, -1.000000e+00
  %40 = fadd float %37, -1.000000e+00
  %41 = fmul float %38, 0x3FE6A09E60000000
  %42 = fmul float %39, 0x3FE6A09E60000000
  %43 = fmul float %40, 0x3FE6A09E60000000
  %44 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %45 = call float @dx.op.unary.f32(i32 7, float %44), !dx.precise !24  ; Saturate(value)
  %46 = fsub float 1.000000e+00, %45
  %47 = call float @dx.op.unary.f32(i32 24, float %46), !dx.precise !24  ; Sqrt(value)
  %48 = icmp eq i32 %23, 0
  br i1 %48, label %55, label %49

; <label>:49                                      ; preds = %0
  %50 = icmp eq i32 %23, 1
  br i1 %50, label %55, label %51

; <label>:51                                      ; preds = %49
  %52 = icmp eq i32 %23, 2
  %53 = select i1 %52, float %47, float %43
  %54 = select i1 %52, float %43, float %47
  br label %55

; <label>:55                                      ; preds = %51, %49, %0
  %56 = phi float [ %47, %0 ], [ %41, %49 ], [ %41, %51 ]
  %57 = phi float [ %41, %0 ], [ %47, %49 ], [ %42, %51 ]
  %58 = phi float [ %42, %0 ], [ %42, %49 ], [ %53, %51 ]
  %59 = phi float [ %43, %0 ], [ %43, %49 ], [ %54, %51 ]
  %60 = and i32 %18, 536870912
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %61, float -1.000000e+00, float 1.000000e+00
  %63 = fmul float %57, 2.000000e+00
  %64 = fmul float %57, %63
  %65 = fsub float 1.000000e+00, %64
  %66 = fmul float %58, 2.000000e+00
  %67 = fmul float %58, %66
  %68 = fsub float %65, %67
  %69 = fmul float %56, 2.000000e+00
  %70 = fmul float %69, %58
  %71 = fmul float %63, %59
  %72 = fadd float %70, %71
  %73 = fmul float %69, %57
  %74 = fmul float %66, %59
  %75 = fadd float %73, %74
  %76 = fmul float %63, %58
  %77 = fmul float %69, %59
  %78 = fsub float %76, %77
  %79 = fsub float %70, %71
  %80 = fmul float %56, %69
  %81 = fsub float 1.000000e+00, %80
  %82 = fsub float %81, %64
  %83 = and i32 %19, 255
  %84 = uitofp i32 %83 to float
  %85 = fmul fast float %84, 0x3F80101020000000
  %86 = fadd fast float %85, -1.000000e+00
  %87 = lshr i32 %19, 8
  %88 = and i32 %87, 255
  %89 = uitofp i32 %88 to float
  %90 = fmul fast float %89, 0x3F80101020000000
  %91 = fadd fast float %90, -1.000000e+00
  %92 = lshr i32 %19, 16
  %93 = and i32 %92, 255
  %94 = uitofp i32 %93 to float
  %95 = fmul fast float %94, 0x3F80101020000000
  %96 = fadd fast float %95, -1.000000e+00
  %97 = lshr i32 %19, 24
  %98 = uitofp i32 %97 to float
  %99 = fmul fast float %98, 0x3F80101020000000
  %100 = fadd fast float %99, -1.000000e+00
  %101 = and i32 %20, 65535
  %102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %101), !dx.precise !24  ; LegacyF16ToF32(value)
  %103 = lshr i32 %20, 16
  %104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %103), !dx.precise !24  ; LegacyF16ToF32(value)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %107 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %108 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %112 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %113 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %114 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %115 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %116 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %117 = lshr i32 %114, 30
  %118 = and i32 %114, 1023
  %119 = uitofp i32 %118 to float
  %120 = fdiv float %119, 1.023000e+03
  %121 = lshr i32 %114, 10
  %122 = and i32 %121, 1023
  %123 = uitofp i32 %122 to float
  %124 = fdiv float %123, 1.023000e+03
  %125 = lshr i32 %114, 20
  %126 = and i32 %125, 511
  %127 = uitofp i32 %126 to float
  %128 = fdiv float %127, 5.110000e+02
  %129 = fmul float %120, 2.000000e+00
  %130 = fmul float %124, 2.000000e+00
  %131 = fmul float %128, 2.000000e+00
  %132 = fadd float %129, -1.000000e+00
  %133 = fadd float %130, -1.000000e+00
  %134 = fadd float %131, -1.000000e+00
  %135 = fmul float %132, 0x3FE6A09E60000000
  %136 = fmul float %133, 0x3FE6A09E60000000
  %137 = fmul float %134, 0x3FE6A09E60000000
  %138 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %135, float %136, float %137), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %139 = call float @dx.op.unary.f32(i32 7, float %138), !dx.precise !24  ; Saturate(value)
  %140 = fsub float 1.000000e+00, %139
  %141 = call float @dx.op.unary.f32(i32 24, float %140), !dx.precise !24  ; Sqrt(value)
  %142 = icmp eq i32 %117, 0
  br i1 %142, label %149, label %143

; <label>:143                                     ; preds = %55
  %144 = icmp eq i32 %117, 1
  br i1 %144, label %149, label %145

; <label>:145                                     ; preds = %143
  %146 = icmp eq i32 %117, 2
  %147 = select i1 %146, float %141, float %137
  %148 = select i1 %146, float %137, float %141
  br label %149

; <label>:149                                     ; preds = %145, %143, %55
  %150 = phi float [ %141, %55 ], [ %135, %143 ], [ %135, %145 ]
  %151 = phi float [ %135, %55 ], [ %141, %143 ], [ %136, %145 ]
  %152 = phi float [ %136, %55 ], [ %136, %143 ], [ %147, %145 ]
  %153 = phi float [ %137, %55 ], [ %137, %143 ], [ %148, %145 ]
  %154 = fmul float %151, 2.000000e+00
  %155 = fmul float %151, %154
  %156 = fsub float 1.000000e+00, %155
  %157 = fmul float %152, 2.000000e+00
  %158 = fmul float %152, %157
  %159 = fsub float %156, %158
  %160 = fmul float %150, 2.000000e+00
  %161 = fmul float %160, %152
  %162 = fmul float %154, %153
  %163 = fadd float %161, %162
  %164 = fmul float %160, %151
  %165 = fmul float %157, %153
  %166 = fadd float %164, %165
  %167 = fmul float %154, %152
  %168 = fmul float %160, %153
  %169 = fsub float %167, %168
  %170 = fsub float %161, %162
  %171 = fmul float %150, %160
  %172 = fsub float 1.000000e+00, %171
  %173 = fsub float %172, %155
  %174 = and i32 %115, 255
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, 0x3F80101020000000
  %177 = fadd fast float %176, -1.000000e+00
  %178 = lshr i32 %115, 8
  %179 = and i32 %178, 255
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F80101020000000
  %182 = fadd fast float %181, -1.000000e+00
  %183 = lshr i32 %115, 16
  %184 = and i32 %183, 255
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, 0x3F80101020000000
  %187 = fadd fast float %186, -1.000000e+00
  %188 = lshr i32 %115, 24
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %189, 0x3F80101020000000
  %191 = fadd fast float %190, -1.000000e+00
  %192 = and i32 %116, 65535
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192), !dx.precise !24  ; LegacyF16ToF32(value)
  %194 = lshr i32 %116, 16
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194), !dx.precise !24  ; LegacyF16ToF32(value)
  %196 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %197 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %198 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %199 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %200 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %201 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %202 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !24  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %203 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %204 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %205 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %206 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %207 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %208 = lshr i32 %205, 30
  %209 = and i32 %205, 1023
  %210 = uitofp i32 %209 to float
  %211 = fdiv float %210, 1.023000e+03
  %212 = lshr i32 %205, 10
  %213 = and i32 %212, 1023
  %214 = uitofp i32 %213 to float
  %215 = fdiv float %214, 1.023000e+03
  %216 = lshr i32 %205, 20
  %217 = and i32 %216, 511
  %218 = uitofp i32 %217 to float
  %219 = fdiv float %218, 5.110000e+02
  %220 = fmul float %211, 2.000000e+00
  %221 = fmul float %215, 2.000000e+00
  %222 = fmul float %219, 2.000000e+00
  %223 = fadd float %220, -1.000000e+00
  %224 = fadd float %221, -1.000000e+00
  %225 = fadd float %222, -1.000000e+00
  %226 = fmul float %223, 0x3FE6A09E60000000
  %227 = fmul float %224, 0x3FE6A09E60000000
  %228 = fmul float %225, 0x3FE6A09E60000000
  %229 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %226, float %227, float %228), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = call float @dx.op.unary.f32(i32 7, float %229), !dx.precise !24  ; Saturate(value)
  %231 = fsub float 1.000000e+00, %230
  %232 = call float @dx.op.unary.f32(i32 24, float %231), !dx.precise !24  ; Sqrt(value)
  %233 = icmp eq i32 %208, 0
  br i1 %233, label %240, label %234

; <label>:234                                     ; preds = %149
  %235 = icmp eq i32 %208, 1
  br i1 %235, label %240, label %236

; <label>:236                                     ; preds = %234
  %237 = icmp eq i32 %208, 2
  %238 = select i1 %237, float %232, float %228
  %239 = select i1 %237, float %228, float %232
  br label %240

; <label>:240                                     ; preds = %236, %234, %149
  %241 = phi float [ %232, %149 ], [ %226, %234 ], [ %226, %236 ]
  %242 = phi float [ %226, %149 ], [ %232, %234 ], [ %227, %236 ]
  %243 = phi float [ %227, %149 ], [ %227, %234 ], [ %238, %236 ]
  %244 = phi float [ %228, %149 ], [ %228, %234 ], [ %239, %236 ]
  %245 = fmul float %242, 2.000000e+00
  %246 = fmul float %242, %245
  %247 = fsub float 1.000000e+00, %246
  %248 = fmul float %243, 2.000000e+00
  %249 = fmul float %243, %248
  %250 = fsub float %247, %249
  %251 = fmul float %241, 2.000000e+00
  %252 = fmul float %251, %243
  %253 = fmul float %245, %244
  %254 = fadd float %252, %253
  %255 = fmul float %251, %242
  %256 = fmul float %248, %244
  %257 = fadd float %255, %256
  %258 = fmul float %245, %243
  %259 = fmul float %251, %244
  %260 = fsub float %258, %259
  %261 = fsub float %252, %253
  %262 = fmul float %241, %251
  %263 = fsub float 1.000000e+00, %262
  %264 = fsub float %263, %246
  %265 = and i32 %206, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F80101020000000
  %268 = fadd fast float %267, -1.000000e+00
  %269 = lshr i32 %206, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F80101020000000
  %273 = fadd fast float %272, -1.000000e+00
  %274 = lshr i32 %206, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F80101020000000
  %278 = fadd fast float %277, -1.000000e+00
  %279 = lshr i32 %206, 24
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F80101020000000
  %282 = fadd fast float %281, -1.000000e+00
  %283 = and i32 %207, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283), !dx.precise !24  ; LegacyF16ToF32(value)
  %285 = lshr i32 %207, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285), !dx.precise !24  ; LegacyF16ToF32(value)
  %287 = fmul float %5, %8
  %288 = fmul float %5, %9
  %289 = fmul float %5, %10
  %290 = fmul float %6, %105
  %291 = fmul float %6, %106
  %292 = fmul float %6, %107
  %293 = fadd float %287, %290
  %294 = fadd float %288, %291
  %295 = fadd float %289, %292
  %296 = fmul float %7, %196
  %297 = fmul float %7, %197
  %298 = fmul float %7, %198
  %299 = fadd float %293, %296
  %300 = fadd float %294, %297
  %301 = fadd float %295, %298
  %302 = fmul float %5, %11
  %303 = fmul float %5, %12
  %304 = fmul float %6, %108
  %305 = fmul float %6, %109
  %306 = fadd float %302, %304
  %307 = fadd float %303, %305
  %308 = fmul float %7, %199
  %309 = fmul float %7, %200
  %310 = fadd float %306, %308
  %311 = fadd float %307, %309
  %312 = fmul float %5, %13
  %313 = fmul float %5, %14
  %314 = fmul float %6, %110
  %315 = fmul float %6, %111
  %316 = fadd float %312, %314
  %317 = fadd float %313, %315
  %318 = fmul float %7, %201
  %319 = fmul float %7, %202
  %320 = fadd float %316, %318
  %321 = fadd float %317, %319
  %322 = fmul fast float %15, %5
  %323 = fmul fast float %16, %5
  %324 = fmul fast float %112, %6
  %325 = fmul fast float %113, %6
  %326 = fadd fast float %324, %322
  %327 = fadd fast float %325, %323
  %328 = fmul fast float %203, %7
  %329 = fmul fast float %204, %7
  %330 = fadd fast float %326, %328
  %331 = fadd fast float %327, %329
  %332 = fmul float %5, %72
  %333 = fmul float %5, %78
  %334 = fmul float %5, %82
  %335 = fmul float %6, %163
  %336 = fmul float %6, %169
  %337 = fmul float %6, %173
  %338 = fadd float %332, %335
  %339 = fadd float %333, %336
  %340 = fadd float %334, %337
  %341 = fmul float %7, %254
  %342 = fmul float %7, %260
  %343 = fmul float %7, %264
  %344 = fadd float %338, %341
  %345 = fadd float %339, %342
  %346 = fadd float %340, %343
  %347 = fmul fast float %68, %5
  %348 = fmul fast float %75, %5
  %349 = fmul fast float %79, %5
  %350 = fmul fast float %159, %6
  %351 = fmul fast float %166, %6
  %352 = fmul fast float %170, %6
  %353 = fadd fast float %350, %347
  %354 = fadd fast float %351, %348
  %355 = fadd fast float %352, %349
  %356 = fmul fast float %250, %7
  %357 = fmul fast float %257, %7
  %358 = fmul fast float %261, %7
  %359 = fadd fast float %353, %356
  %360 = fadd fast float %354, %357
  %361 = fadd fast float %355, %358
  %362 = fmul fast float %86, %5
  %363 = fmul fast float %91, %5
  %364 = fmul fast float %96, %5
  %365 = fmul fast float %100, %5
  %366 = fmul fast float %177, %6
  %367 = fmul fast float %182, %6
  %368 = fmul fast float %187, %6
  %369 = fmul fast float %191, %6
  %370 = fadd fast float %366, %362
  %371 = fadd fast float %367, %363
  %372 = fadd fast float %368, %364
  %373 = fadd fast float %369, %365
  %374 = fmul fast float %268, %7
  %375 = fmul fast float %273, %7
  %376 = fmul fast float %278, %7
  %377 = fmul fast float %282, %7
  %378 = fadd fast float %370, %374
  %379 = fadd fast float %371, %375
  %380 = fadd fast float %372, %376
  %381 = fadd fast float %373, %377
  %382 = fmul float %5, %102
  %383 = fmul float %6, %193
  %384 = fadd float %382, %383
  %385 = fmul float %7, %284
  %386 = fadd float %384, %385
  %387 = fmul float %5, %104
  %388 = fmul float %6, %195
  %389 = fadd float %387, %388
  %390 = fmul float %7, %286
  %391 = fadd float %389, %390
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 0
  %394 = extractvalue %dx.types.CBufRet.f32 %392, 1
  %395 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %396 = fsub float %299, %393
  %397 = fsub float %300, %394
  %398 = fsub float %301, %395
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %404 = fmul float %396, %400
  %405 = call float @dx.op.tertiary.f32(i32 46, float %397, float %401, float %404), !dx.precise !24  ; FMad(a,b,c)
  %406 = call float @dx.op.tertiary.f32(i32 46, float %398, float %402, float %405), !dx.precise !24  ; FMad(a,b,c)
  %407 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %403, float %406), !dx.precise !24  ; FMad(a,b,c)
  %408 = call float @dx.op.binary.f32(i32 35, float %407, float 0x3F1A36E2E0000000), !dx.precise !24  ; FMax(a,b)
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 0
  %411 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %412 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %413 = extractvalue %dx.types.CBufRet.f32 %409, 3
  %414 = fmul float %410, 0.000000e+00
  %415 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %411, float %414), !dx.precise !24  ; FMad(a,b,c)
  %416 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %412, float %415), !dx.precise !24  ; FMad(a,b,c)
  %417 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %413, float %416), !dx.precise !24  ; FMad(a,b,c)
  %418 = fdiv float %408, %417
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = fdiv float %418, %420
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 272, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %423, 0
  %425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 1
  %428 = bitcast i32 %427 to float
  %429 = extractvalue %dx.types.ResRet.i32 %426, 0
  %430 = bitcast i32 %429 to float
  %431 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %425, i32 0)  ; GetDimensions(handle,mipLevel)
  %432 = extractvalue %dx.types.Dimensions %431, 0
  %433 = sitofp i32 %432 to float
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 2
  %436 = call float @dx.op.unary.f32(i32 6, float %435), !dx.precise !24  ; FAbs(value)
  %437 = fmul float %386, %436
  %438 = fcmp olt float %435, 0.000000e+00
  %439 = fmul float %391, 2.560000e+02
  %440 = fdiv float %437, %439
  %441 = select i1 %438, float %440, float %437
  %442 = fmul float %391, %433
  %443 = fmul float %421, %442
  %444 = call float @dx.op.unary.f32(i32 23, float %443), !dx.precise !24  ; Log(value)
  %445 = extractvalue %dx.types.CBufRet.f32 %434, 1
  %446 = fadd float %444, %445
  %447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %425, %dx.types.Handle %2, float %310, float %311, float undef, float undef, i32 0, i32 0, i32 undef, float %446)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = fmul float %430, %448
  %450 = fadd float %428, %449
  %451 = fmul float %441, %450
  %452 = fadd float %451, 0.000000e+00
  %453 = call float @dx.op.dot3.f32(i32 55, float %344, float %345, float %346, float %344, float %345, float %346), !dx.precise !24  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = call float @dx.op.unary.f32(i32 25, float %453), !dx.precise !24  ; Rsqrt(value)
  %455 = fmul float %344, %454
  %456 = fmul float %345, %454
  %457 = fmul float %346, %454
  %458 = fmul float %455, %452
  %459 = fmul float %456, %452
  %460 = fmul float %457, %452
  %461 = fadd float %299, %458
  %462 = fadd float %300, %459
  %463 = fadd float %301, %460
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %468 = fsub float %461, %465
  %469 = fsub float %462, %466
  %470 = fsub float %463, %467
  %471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.f32 %471, 0
  %473 = extractvalue %dx.types.CBufRet.f32 %471, 1
  %474 = extractvalue %dx.types.CBufRet.f32 %471, 2
  %475 = extractvalue %dx.types.CBufRet.f32 %471, 3
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %476, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %476, 2
  %480 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.f32 %481, 0
  %483 = extractvalue %dx.types.CBufRet.f32 %481, 1
  %484 = extractvalue %dx.types.CBufRet.f32 %481, 2
  %485 = extractvalue %dx.types.CBufRet.f32 %481, 3
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 0
  %488 = extractvalue %dx.types.CBufRet.f32 %486, 1
  %489 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %490 = extractvalue %dx.types.CBufRet.f32 %486, 3
  %491 = fmul float %472, %468
  %492 = call float @dx.op.tertiary.f32(i32 46, float %469, float %473, float %491), !dx.precise !24  ; FMad(a,b,c)
  %493 = call float @dx.op.tertiary.f32(i32 46, float %470, float %474, float %492), !dx.precise !24  ; FMad(a,b,c)
  %494 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %475, float %493), !dx.precise !24  ; FMad(a,b,c)
  %495 = fmul float %477, %468
  %496 = call float @dx.op.tertiary.f32(i32 46, float %469, float %478, float %495), !dx.precise !24  ; FMad(a,b,c)
  %497 = call float @dx.op.tertiary.f32(i32 46, float %470, float %479, float %496), !dx.precise !24  ; FMad(a,b,c)
  %498 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %480, float %497), !dx.precise !24  ; FMad(a,b,c)
  %499 = fmul float %482, %468
  %500 = call float @dx.op.tertiary.f32(i32 46, float %469, float %483, float %499), !dx.precise !24  ; FMad(a,b,c)
  %501 = call float @dx.op.tertiary.f32(i32 46, float %470, float %484, float %500), !dx.precise !24  ; FMad(a,b,c)
  %502 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %485, float %501), !dx.precise !24  ; FMad(a,b,c)
  %503 = fmul float %468, %487
  %504 = call float @dx.op.tertiary.f32(i32 46, float %469, float %488, float %503), !dx.precise !24  ; FMad(a,b,c)
  %505 = call float @dx.op.tertiary.f32(i32 46, float %470, float %489, float %504), !dx.precise !24  ; FMad(a,b,c)
  %506 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %490, float %505), !dx.precise !24  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %494)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %498)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %502)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %506)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %310)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %320)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %321)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %22)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %346)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %360)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %361)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 3, float %62)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %378)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %381)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 6, i32 0, i8 0, i32 %21)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[35 x i32] [i32 19, i32 25, i32 15, i32 15, i32 15, i32 0, i32 31, i32 47, i32 64, i32 128, i32 256, i32 512, i32 0, i32 0, i32 1024, i32 1011727, i32 15728640, i32 0, i32 15, i32 0, i32 16777216, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !48}
!16 = !{!17, !35, !44}
!17 = !{!18, !21, !23, !25, !26, !28, !29, !30, !32, !33, !34}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 0, !22}
!22 = !{i32 3, i32 3}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 1, i8 2, !22}
!24 = !{i32 1}
!25 = !{i32 3, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !22}
!26 = !{i32 4, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, !27}
!27 = !{i32 3, i32 1}
!28 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 1, !27}
!29 = !{i32 6, !"NORMAL_TRANSFORM", i8 5, i8 0, !24, i8 1, i32 1, i8 1, i32 3, i8 2, !27}
!30 = !{i32 7, !"NORMAL_TRANSFORM", i8 5, i8 0, !31, i8 1, i32 1, i8 1, i32 3, i8 3, null}
!31 = !{i32 2}
!32 = !{i32 8, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 0, !27}
!33 = !{i32 9, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 1, null}
!34 = !{i32 10, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 2, !27}
!35 = !{!36, !38, !39, !40, !41, !42, !43}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !37}
!37 = !{i32 3, i32 15}
!38 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !37}
!39 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 2, i8 0, !20}
!40 = !{i32 3, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 3, i8 0, !20}
!41 = !{i32 4, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 4, i8 0, !37}
!42 = !{i32 5, !"NORMAL_TRANSFORM", i8 9, i8 0, !24, i8 2, i32 1, i8 4, i32 5, i8 0, !37}
!43 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 6, i8 0, !27}
!44 = !{!45, !47}
!45 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !46, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!46 = !{i32 0, i32 1, i32 2}
!47 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!48 = !{i32 0, i64 16, i32 2, !49}
!49 = !{i32 2, i32 3}

