;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; LMAP_INDEX               0    y          1     NONE    uint    y  
; TANGENT_FRAME            0     z         1     NONE    uint     z 
; DISPLACEMENT             0      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; LIGHTING_TEXCOORD        0     zw        2     NONE   float     zw
; TESSFACTORS_OFFSET       0   x           3     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
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
; shader hash: 323e3ea92f1e2993be0bcf5351a90dd6
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
; LIGHTING_TEXCOORD        0                 linear       
; LMAP_INDEX               0        nointerpolation       
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
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
; Number of inputs: 13, outputs: 24, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 7, 8, 9 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 7, 8, 9 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 7, 8, 9 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 7, 8, 9 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 6 depends on inputs: { 4 }
;   output 7 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 12 depends on inputs: { 10 }
;   output 13 depends on inputs: { 11 }
;   output 14 depends on inputs: { 5 }
;   output 16 depends on inputs: { 6 }
;   output 17 depends on inputs: { 6 }
;   output 18 depends on inputs: { 6 }
;   output 20 depends on inputs: { 6 }
;   output 21 depends on inputs: { 6 }
;   output 22 depends on inputs: { 6 }
;   output 23 depends on inputs: { 6 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%bModelConstantBuffer = type { %struct.GfxBaseInstanceData }
%struct.GfxBaseInstanceData = type { <4 x float>, <3 x i32>, float }
%struct.SamplerState = type { i32 }

define void @ds_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !45  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !45  ; DomainLocation(component)
  %8 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !45  ; DomainLocation(component)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = and i32 %12, 255
  %21 = uitofp i32 %20 to float
  %22 = lshr i32 %12, 8
  %23 = and i32 %22, 255
  %24 = uitofp i32 %23 to float
  %25 = lshr i32 %12, 16
  %26 = and i32 %25, 255
  %27 = uitofp i32 %26 to float
  %28 = lshr i32 %12, 24
  %29 = uitofp i32 %28 to float
  %30 = uitofp i32 %17 to float
  %31 = lshr i32 %18, 30
  %32 = and i32 %18, 1023
  %33 = uitofp i32 %32 to float
  %34 = fdiv float %33, 1.023000e+03
  %35 = lshr i32 %18, 10
  %36 = and i32 %35, 1023
  %37 = uitofp i32 %36 to float
  %38 = fdiv float %37, 1.023000e+03
  %39 = lshr i32 %18, 20
  %40 = and i32 %39, 511
  %41 = uitofp i32 %40 to float
  %42 = fdiv float %41, 5.110000e+02
  %43 = fmul float %34, 2.000000e+00
  %44 = fmul float %38, 2.000000e+00
  %45 = fmul float %42, 2.000000e+00
  %46 = fadd float %43, -1.000000e+00
  %47 = fadd float %44, -1.000000e+00
  %48 = fadd float %45, -1.000000e+00
  %49 = fmul float %46, 0x3FE6A09E60000000
  %50 = fmul float %47, 0x3FE6A09E60000000
  %51 = fmul float %48, 0x3FE6A09E60000000
  %52 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51), !dx.precise !45  ; Dot3(ax,ay,az,bx,by,bz)
  %53 = call float @dx.op.unary.f32(i32 7, float %52), !dx.precise !45  ; Saturate(value)
  %54 = fsub float 1.000000e+00, %53
  %55 = call float @dx.op.unary.f32(i32 24, float %54), !dx.precise !45  ; Sqrt(value)
  %56 = icmp eq i32 %31, 0
  br i1 %56, label %63, label %57

; <label>:57                                      ; preds = %0
  %58 = icmp eq i32 %31, 1
  br i1 %58, label %63, label %59

; <label>:59                                      ; preds = %57
  %60 = icmp eq i32 %31, 2
  %61 = select i1 %60, float %55, float %51
  %62 = select i1 %60, float %51, float %55
  br label %63

; <label>:63                                      ; preds = %59, %57, %0
  %64 = phi float [ %55, %0 ], [ %49, %57 ], [ %49, %59 ]
  %65 = phi float [ %49, %0 ], [ %55, %57 ], [ %50, %59 ]
  %66 = phi float [ %50, %0 ], [ %50, %57 ], [ %61, %59 ]
  %67 = phi float [ %51, %0 ], [ %51, %57 ], [ %62, %59 ]
  %68 = and i32 %18, 536870912
  %69 = icmp ne i32 %68, 0
  %70 = select i1 %69, float -1.000000e+00, float 1.000000e+00
  %71 = fmul float %65, 2.000000e+00
  %72 = fmul float %65, %71
  %73 = fsub float 1.000000e+00, %72
  %74 = fmul float %66, 2.000000e+00
  %75 = fmul float %66, %74
  %76 = fsub float %73, %75
  %77 = fmul float %64, 2.000000e+00
  %78 = fmul float %77, %66
  %79 = fmul float %71, %67
  %80 = fadd float %78, %79
  %81 = fmul float %77, %65
  %82 = fmul float %74, %67
  %83 = fadd float %81, %82
  %84 = fmul float %71, %66
  %85 = fmul float %77, %67
  %86 = fsub float %84, %85
  %87 = fsub float %78, %79
  %88 = fmul float %64, %77
  %89 = fsub float 1.000000e+00, %88
  %90 = fsub float %89, %72
  %91 = and i32 %19, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91), !dx.precise !45  ; LegacyF16ToF32(value)
  %93 = lshr i32 %19, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93), !dx.precise !45  ; LegacyF16ToF32(value)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = and i32 %98, 255
  %106 = uitofp i32 %105 to float
  %107 = lshr i32 %98, 8
  %108 = and i32 %107, 255
  %109 = uitofp i32 %108 to float
  %110 = lshr i32 %98, 16
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = lshr i32 %98, 24
  %114 = uitofp i32 %113 to float
  %115 = lshr i32 %103, 30
  %116 = and i32 %103, 1023
  %117 = uitofp i32 %116 to float
  %118 = fdiv float %117, 1.023000e+03
  %119 = lshr i32 %103, 10
  %120 = and i32 %119, 1023
  %121 = uitofp i32 %120 to float
  %122 = fdiv float %121, 1.023000e+03
  %123 = lshr i32 %103, 20
  %124 = and i32 %123, 511
  %125 = uitofp i32 %124 to float
  %126 = fdiv float %125, 5.110000e+02
  %127 = fmul float %118, 2.000000e+00
  %128 = fmul float %122, 2.000000e+00
  %129 = fmul float %126, 2.000000e+00
  %130 = fadd float %127, -1.000000e+00
  %131 = fadd float %128, -1.000000e+00
  %132 = fadd float %129, -1.000000e+00
  %133 = fmul float %130, 0x3FE6A09E60000000
  %134 = fmul float %131, 0x3FE6A09E60000000
  %135 = fmul float %132, 0x3FE6A09E60000000
  %136 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135), !dx.precise !45  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = call float @dx.op.unary.f32(i32 7, float %136), !dx.precise !45  ; Saturate(value)
  %138 = fsub float 1.000000e+00, %137
  %139 = call float @dx.op.unary.f32(i32 24, float %138), !dx.precise !45  ; Sqrt(value)
  %140 = icmp eq i32 %115, 0
  br i1 %140, label %147, label %141

; <label>:141                                     ; preds = %63
  %142 = icmp eq i32 %115, 1
  br i1 %142, label %147, label %143

; <label>:143                                     ; preds = %141
  %144 = icmp eq i32 %115, 2
  %145 = select i1 %144, float %139, float %135
  %146 = select i1 %144, float %135, float %139
  br label %147

; <label>:147                                     ; preds = %143, %141, %63
  %148 = phi float [ %139, %63 ], [ %133, %141 ], [ %133, %143 ]
  %149 = phi float [ %133, %63 ], [ %139, %141 ], [ %134, %143 ]
  %150 = phi float [ %134, %63 ], [ %134, %141 ], [ %145, %143 ]
  %151 = phi float [ %135, %63 ], [ %135, %141 ], [ %146, %143 ]
  %152 = fmul float %149, 2.000000e+00
  %153 = fmul float %149, %152
  %154 = fsub float 1.000000e+00, %153
  %155 = fmul float %150, 2.000000e+00
  %156 = fmul float %150, %155
  %157 = fsub float %154, %156
  %158 = fmul float %148, 2.000000e+00
  %159 = fmul float %158, %150
  %160 = fmul float %152, %151
  %161 = fadd float %159, %160
  %162 = fmul float %158, %149
  %163 = fmul float %155, %151
  %164 = fadd float %162, %163
  %165 = fmul float %152, %150
  %166 = fmul float %158, %151
  %167 = fsub float %165, %166
  %168 = fsub float %159, %160
  %169 = fmul float %148, %158
  %170 = fsub float 1.000000e+00, %169
  %171 = fsub float %170, %153
  %172 = and i32 %104, 65535
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172), !dx.precise !45  ; LegacyF16ToF32(value)
  %174 = lshr i32 %104, 16
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174), !dx.precise !45  ; LegacyF16ToF32(value)
  %176 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %177 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %178 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %179 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %180 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %181 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !45  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %182 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %183 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %184 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %185 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %186 = and i32 %179, 255
  %187 = uitofp i32 %186 to float
  %188 = lshr i32 %179, 8
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = lshr i32 %179, 16
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = lshr i32 %179, 24
  %195 = uitofp i32 %194 to float
  %196 = lshr i32 %184, 30
  %197 = and i32 %184, 1023
  %198 = uitofp i32 %197 to float
  %199 = fdiv float %198, 1.023000e+03
  %200 = lshr i32 %184, 10
  %201 = and i32 %200, 1023
  %202 = uitofp i32 %201 to float
  %203 = fdiv float %202, 1.023000e+03
  %204 = lshr i32 %184, 20
  %205 = and i32 %204, 511
  %206 = uitofp i32 %205 to float
  %207 = fdiv float %206, 5.110000e+02
  %208 = fmul float %199, 2.000000e+00
  %209 = fmul float %203, 2.000000e+00
  %210 = fmul float %207, 2.000000e+00
  %211 = fadd float %208, -1.000000e+00
  %212 = fadd float %209, -1.000000e+00
  %213 = fadd float %210, -1.000000e+00
  %214 = fmul float %211, 0x3FE6A09E60000000
  %215 = fmul float %212, 0x3FE6A09E60000000
  %216 = fmul float %213, 0x3FE6A09E60000000
  %217 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %214, float %215, float %216), !dx.precise !45  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.unary.f32(i32 7, float %217), !dx.precise !45  ; Saturate(value)
  %219 = fsub float 1.000000e+00, %218
  %220 = call float @dx.op.unary.f32(i32 24, float %219), !dx.precise !45  ; Sqrt(value)
  %221 = icmp eq i32 %196, 0
  br i1 %221, label %228, label %222

; <label>:222                                     ; preds = %147
  %223 = icmp eq i32 %196, 1
  br i1 %223, label %228, label %224

; <label>:224                                     ; preds = %222
  %225 = icmp eq i32 %196, 2
  %226 = select i1 %225, float %220, float %216
  %227 = select i1 %225, float %216, float %220
  br label %228

; <label>:228                                     ; preds = %224, %222, %147
  %229 = phi float [ %220, %147 ], [ %214, %222 ], [ %214, %224 ]
  %230 = phi float [ %214, %147 ], [ %220, %222 ], [ %215, %224 ]
  %231 = phi float [ %215, %147 ], [ %215, %222 ], [ %226, %224 ]
  %232 = phi float [ %216, %147 ], [ %216, %222 ], [ %227, %224 ]
  %233 = fmul float %230, 2.000000e+00
  %234 = fmul float %230, %233
  %235 = fsub float 1.000000e+00, %234
  %236 = fmul float %231, 2.000000e+00
  %237 = fmul float %231, %236
  %238 = fsub float %235, %237
  %239 = fmul float %229, 2.000000e+00
  %240 = fmul float %239, %231
  %241 = fmul float %233, %232
  %242 = fadd float %240, %241
  %243 = fmul float %239, %230
  %244 = fmul float %236, %232
  %245 = fadd float %243, %244
  %246 = fmul float %233, %231
  %247 = fmul float %239, %232
  %248 = fsub float %246, %247
  %249 = fsub float %240, %241
  %250 = fmul float %229, %239
  %251 = fsub float 1.000000e+00, %250
  %252 = fsub float %251, %234
  %253 = and i32 %185, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253), !dx.precise !45  ; LegacyF16ToF32(value)
  %255 = lshr i32 %185, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255), !dx.precise !45  ; LegacyF16ToF32(value)
  %257 = fmul float %6, %9
  %258 = fmul float %6, %10
  %259 = fmul float %6, %11
  %260 = fmul float %7, %95
  %261 = fmul float %7, %96
  %262 = fmul float %7, %97
  %263 = fadd float %257, %260
  %264 = fadd float %258, %261
  %265 = fadd float %259, %262
  %266 = fmul float %8, %176
  %267 = fmul float %8, %177
  %268 = fmul float %8, %178
  %269 = fadd float %263, %266
  %270 = fadd float %264, %267
  %271 = fadd float %265, %268
  %272 = fmul fast float %29, %6
  %273 = fmul fast float %21, %6
  %274 = fmul fast float %24, %6
  %275 = fmul fast float %27, %6
  %276 = fmul fast float %114, %7
  %277 = fmul fast float %106, %7
  %278 = fmul fast float %109, %7
  %279 = fmul fast float %112, %7
  %280 = fmul fast float %195, %8
  %281 = fmul fast float %187, %8
  %282 = fmul fast float %190, %8
  %283 = fmul fast float %193, %8
  %284 = fadd fast float %276, %272
  %285 = fadd fast float %284, %280
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = fadd fast float %277, %273
  %288 = fadd fast float %287, %281
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = fadd fast float %278, %274
  %291 = fadd fast float %290, %282
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = fadd fast float %279, %275
  %294 = fadd fast float %293, %283
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = fmul float %6, %13
  %297 = fmul float %6, %14
  %298 = fmul float %7, %99
  %299 = fmul float %7, %100
  %300 = fadd float %296, %298
  %301 = fadd float %297, %299
  %302 = fmul float %8, %180
  %303 = fmul float %8, %181
  %304 = fadd float %300, %302
  %305 = fadd float %301, %303
  %306 = fmul fast float %15, %6
  %307 = fmul fast float %16, %6
  %308 = fmul fast float %101, %7
  %309 = fmul fast float %102, %7
  %310 = fadd fast float %308, %306
  %311 = fadd fast float %309, %307
  %312 = fmul fast float %182, %8
  %313 = fmul fast float %183, %8
  %314 = fadd fast float %310, %312
  %315 = fadd fast float %311, %313
  %316 = fmul float %6, %80
  %317 = fmul float %6, %86
  %318 = fmul float %6, %90
  %319 = fmul float %7, %161
  %320 = fmul float %7, %167
  %321 = fmul float %7, %171
  %322 = fadd float %316, %319
  %323 = fadd float %317, %320
  %324 = fadd float %318, %321
  %325 = fmul float %8, %242
  %326 = fmul float %8, %248
  %327 = fmul float %8, %252
  %328 = fadd float %322, %325
  %329 = fadd float %323, %326
  %330 = fadd float %324, %327
  %331 = fmul fast float %76, %6
  %332 = fmul fast float %83, %6
  %333 = fmul fast float %87, %6
  %334 = fmul fast float %157, %7
  %335 = fmul fast float %164, %7
  %336 = fmul fast float %168, %7
  %337 = fadd fast float %334, %331
  %338 = fadd fast float %335, %332
  %339 = fadd fast float %336, %333
  %340 = fmul fast float %238, %8
  %341 = fmul fast float %245, %8
  %342 = fmul fast float %249, %8
  %343 = fadd fast float %337, %340
  %344 = fadd fast float %338, %341
  %345 = fadd fast float %339, %342
  %346 = fmul float %6, %92
  %347 = fmul float %7, %173
  %348 = fadd float %346, %347
  %349 = fmul float %8, %254
  %350 = fadd float %348, %349
  %351 = fmul float %6, %94
  %352 = fmul float %7, %175
  %353 = fadd float %351, %352
  %354 = fmul float %8, %256
  %355 = fadd float %353, %354
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %363 = fmul float %269, %362
  %364 = fmul float %270, %362
  %365 = fmul float %271, %362
  %366 = fmul float %358, %365
  %367 = fmul float %359, %364
  %368 = fsub float %366, %367
  %369 = fmul float %359, %363
  %370 = fmul float %357, %365
  %371 = fsub float %369, %370
  %372 = fmul float %357, %364
  %373 = fmul float %358, %363
  %374 = fsub float %372, %373
  %375 = fmul float %368, 2.000000e+00
  %376 = fmul float %371, 2.000000e+00
  %377 = fmul float %374, 2.000000e+00
  %378 = fmul float %360, %375
  %379 = fmul float %360, %376
  %380 = fmul float %360, %377
  %381 = fadd float %363, %378
  %382 = fadd float %364, %379
  %383 = fadd float %365, %380
  %384 = fmul float %358, %377
  %385 = fmul float %359, %376
  %386 = fsub float %384, %385
  %387 = fmul float %359, %375
  %388 = fmul float %357, %377
  %389 = fsub float %387, %388
  %390 = fmul float %357, %376
  %391 = fmul float %358, %375
  %392 = fsub float %390, %391
  %393 = fadd float %381, %386
  %394 = fadd float %382, %389
  %395 = fadd float %383, %392
  %396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %397 = extractvalue %dx.types.CBufRet.f32 %396, 0
  %398 = extractvalue %dx.types.CBufRet.f32 %396, 1
  %399 = extractvalue %dx.types.CBufRet.f32 %396, 2
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.i32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.i32 %400, 2
  %404 = bitcast float %397 to i32
  %405 = bitcast float %398 to i32
  %406 = bitcast float %399 to i32
  %407 = sub i32 %401, %404
  %408 = sub i32 %402, %405
  %409 = sub i32 %403, %406
  %410 = sitofp i32 %407 to float
  %411 = sitofp i32 %408 to float
  %412 = sitofp i32 %409 to float
  %413 = fmul float %410, 0x3F30000000000000
  %414 = fmul float %411, 0x3F30000000000000
  %415 = fmul float %412, 0x3F30000000000000
  %416 = fadd float %413, %393
  %417 = fadd float %414, %394
  %418 = fadd float %415, %395
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 0
  %421 = extractvalue %dx.types.CBufRet.f32 %419, 1
  %422 = extractvalue %dx.types.CBufRet.f32 %419, 2
  %423 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %424 = fmul float %420, %416
  %425 = call float @dx.op.tertiary.f32(i32 46, float %417, float %421, float %424), !dx.precise !45  ; FMad(a,b,c)
  %426 = call float @dx.op.tertiary.f32(i32 46, float %418, float %422, float %425), !dx.precise !45  ; FMad(a,b,c)
  %427 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %423, float %426), !dx.precise !45  ; FMad(a,b,c)
  %428 = call float @dx.op.binary.f32(i32 35, float %427, float 0x3F1A36E2E0000000), !dx.precise !45  ; FMax(a,b)
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = extractvalue %dx.types.CBufRet.f32 %429, 3
  %434 = fmul float %430, 0.000000e+00
  %435 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %431, float %434), !dx.precise !45  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %432, float %435), !dx.precise !45  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %433, float %436), !dx.precise !45  ; FMad(a,b,c)
  %438 = fdiv float %428, %437
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = fdiv float %438, %440
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = add i32 %443, 0
  %445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 1
  %448 = bitcast i32 %447 to float
  %449 = extractvalue %dx.types.ResRet.i32 %446, 0
  %450 = bitcast i32 %449 to float
  %451 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %445, i32 0)  ; GetDimensions(handle,mipLevel)
  %452 = extractvalue %dx.types.Dimensions %451, 0
  %453 = sitofp i32 %452 to float
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %456 = call float @dx.op.unary.f32(i32 6, float %455), !dx.precise !45  ; FAbs(value)
  %457 = fmul float %350, %456
  %458 = fcmp olt float %455, 0.000000e+00
  %459 = fmul float %355, 2.560000e+02
  %460 = fdiv float %457, %459
  %461 = select i1 %458, float %460, float %457
  %462 = fmul float %355, %453
  %463 = fmul float %441, %462
  %464 = call float @dx.op.unary.f32(i32 23, float %463), !dx.precise !45  ; Log(value)
  %465 = extractvalue %dx.types.CBufRet.f32 %454, 1
  %466 = fadd float %464, %465
  %467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %445, %dx.types.Handle %2, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float %466)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  %469 = fmul float %450, %468
  %470 = fadd float %448, %469
  %471 = fmul float %461, %470
  %472 = fadd float %471, 0.000000e+00
  %473 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %328, float %329, float %330), !dx.precise !45  ; Dot3(ax,ay,az,bx,by,bz)
  %474 = call float @dx.op.unary.f32(i32 25, float %473), !dx.precise !45  ; Rsqrt(value)
  %475 = fmul float %328, %474
  %476 = fmul float %329, %474
  %477 = fmul float %330, %474
  %478 = fmul float %475, %472
  %479 = fmul float %476, %472
  %480 = fmul float %477, %472
  %481 = fadd float %269, %478
  %482 = fadd float %270, %479
  %483 = fadd float %271, %480
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %486 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %487 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %488 = extractvalue %dx.types.CBufRet.f32 %484, 3
  %489 = fmul fast float %486, %330
  %490 = fmul fast float %487, %329
  %491 = fsub fast float %489, %490
  %492 = fmul fast float %487, %328
  %493 = fmul fast float %485, %330
  %494 = fsub fast float %492, %493
  %495 = fmul fast float %485, %329
  %496 = fmul fast float %486, %328
  %497 = fsub fast float %495, %496
  %498 = fmul fast float %491, 2.000000e+00
  %499 = fmul fast float %494, 2.000000e+00
  %500 = fmul fast float %497, 2.000000e+00
  %501 = fmul fast float %498, %488
  %502 = fmul fast float %499, %488
  %503 = fmul fast float %500, %488
  %504 = fmul fast float %500, %486
  %505 = fmul fast float %499, %487
  %506 = fmul fast float %498, %487
  %507 = fmul fast float %500, %485
  %508 = fmul fast float %499, %485
  %509 = fmul fast float %498, %486
  %510 = fadd fast float %501, %328
  %511 = fsub fast float %510, %505
  %512 = fadd fast float %511, %504
  %513 = fadd fast float %502, %329
  %514 = fsub fast float %513, %507
  %515 = fadd fast float %514, %506
  %516 = fadd fast float %503, %330
  %517 = fsub fast float %516, %509
  %518 = fadd fast float %517, %508
  %519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %520 = extractvalue %dx.types.CBufRet.f32 %519, 3
  %521 = fmul float %520, %481
  %522 = fmul float %520, %482
  %523 = fmul float %520, %483
  %524 = fmul float %486, %523
  %525 = fmul float %487, %522
  %526 = fsub float %524, %525
  %527 = fmul float %487, %521
  %528 = fmul float %485, %523
  %529 = fsub float %527, %528
  %530 = fmul float %485, %522
  %531 = fmul float %486, %521
  %532 = fsub float %530, %531
  %533 = fmul float %526, 2.000000e+00
  %534 = fmul float %529, 2.000000e+00
  %535 = fmul float %532, 2.000000e+00
  %536 = fmul float %488, %533
  %537 = fmul float %488, %534
  %538 = fmul float %488, %535
  %539 = fadd float %521, %536
  %540 = fadd float %522, %537
  %541 = fadd float %523, %538
  %542 = fmul float %486, %535
  %543 = fmul float %487, %534
  %544 = fsub float %542, %543
  %545 = fmul float %487, %533
  %546 = fmul float %485, %535
  %547 = fsub float %545, %546
  %548 = fmul float %485, %534
  %549 = fmul float %486, %533
  %550 = fsub float %548, %549
  %551 = fadd float %539, %544
  %552 = fadd float %540, %547
  %553 = fadd float %541, %550
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 0
  %556 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %557 = extractvalue %dx.types.CBufRet.f32 %554, 2
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 0
  %560 = extractvalue %dx.types.CBufRet.i32 %558, 1
  %561 = extractvalue %dx.types.CBufRet.i32 %558, 2
  %562 = bitcast float %555 to i32
  %563 = bitcast float %556 to i32
  %564 = bitcast float %557 to i32
  %565 = sub i32 %559, %562
  %566 = sub i32 %560, %563
  %567 = sub i32 %561, %564
  %568 = sitofp i32 %565 to float
  %569 = sitofp i32 %566 to float
  %570 = sitofp i32 %567 to float
  %571 = fmul float %568, 0x3F30000000000000
  %572 = fmul float %569, 0x3F30000000000000
  %573 = fmul float %570, 0x3F30000000000000
  %574 = fadd float %571, %551
  %575 = fadd float %572, %552
  %576 = fadd float %573, %553
  %577 = fmul fast float %486, %345
  %578 = fmul fast float %487, %344
  %579 = fsub fast float %577, %578
  %580 = fmul fast float %487, %343
  %581 = fmul fast float %485, %345
  %582 = fsub fast float %580, %581
  %583 = fmul fast float %485, %344
  %584 = fmul fast float %486, %343
  %585 = fsub fast float %583, %584
  %586 = fmul fast float %579, 2.000000e+00
  %587 = fmul fast float %582, 2.000000e+00
  %588 = fmul fast float %585, 2.000000e+00
  %589 = fmul fast float %586, %488
  %590 = fmul fast float %587, %488
  %591 = fmul fast float %588, %488
  %592 = fmul fast float %588, %486
  %593 = fmul fast float %587, %487
  %594 = fmul fast float %586, %487
  %595 = fmul fast float %588, %485
  %596 = fmul fast float %587, %485
  %597 = fmul fast float %586, %486
  %598 = fadd fast float %589, %343
  %599 = fsub fast float %598, %593
  %600 = fadd fast float %599, %592
  %601 = fadd fast float %590, %344
  %602 = fsub fast float %601, %595
  %603 = fadd fast float %602, %594
  %604 = fadd fast float %591, %345
  %605 = fsub fast float %604, %597
  %606 = fadd fast float %605, %596
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %607, 2
  %611 = extractvalue %dx.types.CBufRet.f32 %607, 3
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = extractvalue %dx.types.CBufRet.f32 %612, 1
  %615 = extractvalue %dx.types.CBufRet.f32 %612, 2
  %616 = extractvalue %dx.types.CBufRet.f32 %612, 3
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %620 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %621 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %626 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %627 = fmul float %608, %574
  %628 = call float @dx.op.tertiary.f32(i32 46, float %575, float %609, float %627), !dx.precise !45  ; FMad(a,b,c)
  %629 = call float @dx.op.tertiary.f32(i32 46, float %576, float %610, float %628), !dx.precise !45  ; FMad(a,b,c)
  %630 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %611, float %629), !dx.precise !45  ; FMad(a,b,c)
  %631 = fmul float %613, %574
  %632 = call float @dx.op.tertiary.f32(i32 46, float %575, float %614, float %631), !dx.precise !45  ; FMad(a,b,c)
  %633 = call float @dx.op.tertiary.f32(i32 46, float %576, float %615, float %632), !dx.precise !45  ; FMad(a,b,c)
  %634 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %616, float %633), !dx.precise !45  ; FMad(a,b,c)
  %635 = fmul float %618, %574
  %636 = call float @dx.op.tertiary.f32(i32 46, float %575, float %619, float %635), !dx.precise !45  ; FMad(a,b,c)
  %637 = call float @dx.op.tertiary.f32(i32 46, float %576, float %620, float %636), !dx.precise !45  ; FMad(a,b,c)
  %638 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %621, float %637), !dx.precise !45  ; FMad(a,b,c)
  %639 = fmul float %623, %574
  %640 = call float @dx.op.tertiary.f32(i32 46, float %575, float %624, float %639), !dx.precise !45  ; FMad(a,b,c)
  %641 = call float @dx.op.tertiary.f32(i32 46, float %576, float %625, float %640), !dx.precise !45  ; FMad(a,b,c)
  %642 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %626, float %641), !dx.precise !45  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %630)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %634)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %289)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %292)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %295)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %304)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %30)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %512)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %515)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %603)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %606)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %70)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!11 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!12 = !{i32 2, %bModelConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!15 = !{[29 x i32] [i32 13, i32 24, i32 15, i32 15, i32 15, i32 0, i32 240, i32 16384, i32 16187407, i32 15, i32 271, i32 527, i32 4096, i32 8192, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!16 = !{void ()* @ds_main, !"ds_main", !17, !4, !43}
!17 = !{!18, !31, !39}
!18 = !{!19, !22, !24, !26, !27, !28, !29, !30}
!19 = !{i32 0, !"POSITION", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 0, i8 0, !21}
!20 = !{i32 0}
!21 = !{i32 3, i32 7}
!22 = !{i32 1, !"COLOR", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 0, !23}
!23 = !{i32 3, i32 1}
!24 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!25 = !{i32 3, i32 3}
!26 = !{i32 3, !"LIGHTING_TEXCOORD", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 2, !25}
!27 = !{i32 4, !"LMAP_INDEX", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 1, !23}
!28 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 2, !23}
!29 = !{i32 6, !"DISPLACEMENT", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 1, i8 3, !23}
!30 = !{i32 7, !"TESSFACTORS_OFFSET", i8 5, i8 0, !20, i8 1, i32 1, i8 1, i32 3, i8 0, null}
!31 = !{!32, !34, !35, !36, !37, !38}
!32 = !{i32 0, !"SV_Position", i8 9, i8 3, !20, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!35 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !20, i8 2, i32 1, i8 2, i32 2, i8 0, !25}
!36 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 3, i8 0, !21}
!37 = !{i32 4, !"NORMAL", i8 9, i8 0, !20, i8 2, i32 1, i8 3, i32 4, i8 0, !21}
!38 = !{i32 5, !"TANGENT", i8 9, i8 0, !20, i8 2, i32 1, i8 4, i32 5, i8 0, !33}
!39 = !{!40, !42}
!40 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !41, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!41 = !{i32 0, i32 1, i32 2}
!42 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !20, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!43 = !{i32 0, i64 16, i32 2, !44}
!44 = !{i32 2, i32 3}
!45 = !{i32 1}

