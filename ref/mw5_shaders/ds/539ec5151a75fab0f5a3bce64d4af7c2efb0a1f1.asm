;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; LMAP_INDEX               0    y          1     NONE    uint    y  
; TANGENT_FRAME            0     z         1     NONE    uint     z 
; NORMAL_TRANSFORM         1      w        1     NONE    uint      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; LIGHTING_TEXCOORD        0   xy          3     NONE   float   xy  
; NORMAL_TRANSFORM         2   x           4     NONE    uint       
; DISPLACEMENT             0    y          4     NONE    uint    y  
; TESSFACTORS_OFFSET       0     z         4     NONE    uint       
; TRANSIENT_INDEX          0      w        4     NONE    uint      w
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; TRANSIENT_INDEX          0   x           7     NONE    uint   x   
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
; shader hash: 4a6155123e8b1001f2c0c11b3f34736e
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
; COLOR                    0                 linear       
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
; Number of inputs: 20, outputs: 29, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 6, 8, 9, 17 }
;   output 1 depends on inputs: { 0, 1, 2, 6, 8, 9, 17 }
;   output 2 depends on inputs: { 0, 1, 2, 6, 8, 9, 17 }
;   output 3 depends on inputs: { 0, 1, 2, 6, 8, 9, 17 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10 }
;   output 11 depends on inputs: { 11 }
;   output 12 depends on inputs: { 12 }
;   output 13 depends on inputs: { 13 }
;   output 14 depends on inputs: { 5 }
;   output 16 depends on inputs: { 6 }
;   output 17 depends on inputs: { 6 }
;   output 18 depends on inputs: { 6 }
;   output 20 depends on inputs: { 6 }
;   output 21 depends on inputs: { 6 }
;   output 22 depends on inputs: { 6 }
;   output 23 depends on inputs: { 6 }
;   output 24 depends on inputs: { 7 }
;   output 25 depends on inputs: { 7 }
;   output 26 depends on inputs: { 7 }
;   output 27 depends on inputs: { 7 }
;   output 28 depends on inputs: { 19 }
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
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = and i32 %11, 255
  %24 = uitofp i32 %23 to float
  %25 = lshr i32 %11, 8
  %26 = and i32 %25, 255
  %27 = uitofp i32 %26 to float
  %28 = uitofp i32 %18 to float
  %29 = lshr i32 %19, 30
  %30 = and i32 %19, 1023
  %31 = uitofp i32 %30 to float
  %32 = fdiv float %31, 1.023000e+03
  %33 = lshr i32 %19, 10
  %34 = and i32 %33, 1023
  %35 = uitofp i32 %34 to float
  %36 = fdiv float %35, 1.023000e+03
  %37 = lshr i32 %19, 20
  %38 = and i32 %37, 511
  %39 = uitofp i32 %38 to float
  %40 = fdiv float %39, 5.110000e+02
  %41 = fmul float %32, 2.000000e+00
  %42 = fmul float %36, 2.000000e+00
  %43 = fmul float %40, 2.000000e+00
  %44 = fadd float %41, -1.000000e+00
  %45 = fadd float %42, -1.000000e+00
  %46 = fadd float %43, -1.000000e+00
  %47 = fmul float %44, 0x3FE6A09E60000000
  %48 = fmul float %45, 0x3FE6A09E60000000
  %49 = fmul float %46, 0x3FE6A09E60000000
  %50 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %51 = call float @dx.op.unary.f32(i32 7, float %50), !dx.precise !26  ; Saturate(value)
  %52 = fsub float 1.000000e+00, %51
  %53 = call float @dx.op.unary.f32(i32 24, float %52), !dx.precise !26  ; Sqrt(value)
  %54 = icmp eq i32 %29, 0
  br i1 %54, label %61, label %55

; <label>:55                                      ; preds = %0
  %56 = icmp eq i32 %29, 1
  br i1 %56, label %61, label %57

; <label>:57                                      ; preds = %55
  %58 = icmp eq i32 %29, 2
  %59 = select i1 %58, float %53, float %49
  %60 = select i1 %58, float %49, float %53
  br label %61

; <label>:61                                      ; preds = %57, %55, %0
  %62 = phi float [ %53, %0 ], [ %47, %55 ], [ %47, %57 ]
  %63 = phi float [ %47, %0 ], [ %53, %55 ], [ %48, %57 ]
  %64 = phi float [ %48, %0 ], [ %48, %55 ], [ %59, %57 ]
  %65 = phi float [ %49, %0 ], [ %49, %55 ], [ %60, %57 ]
  %66 = and i32 %19, 536870912
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %67, float -1.000000e+00, float 1.000000e+00
  %69 = fmul float %63, 2.000000e+00
  %70 = fmul float %63, %69
  %71 = fsub float 1.000000e+00, %70
  %72 = fmul float %64, 2.000000e+00
  %73 = fmul float %64, %72
  %74 = fsub float %71, %73
  %75 = fmul float %62, 2.000000e+00
  %76 = fmul float %75, %64
  %77 = fmul float %69, %65
  %78 = fadd float %76, %77
  %79 = fmul float %75, %63
  %80 = fmul float %72, %65
  %81 = fadd float %79, %80
  %82 = fmul float %69, %64
  %83 = fmul float %75, %65
  %84 = fsub float %82, %83
  %85 = fsub float %76, %77
  %86 = fmul float %62, %75
  %87 = fsub float 1.000000e+00, %86
  %88 = fsub float %87, %70
  %89 = and i32 %20, 255
  %90 = uitofp i32 %89 to float
  %91 = fmul fast float %90, 0x3F80101020000000
  %92 = fadd fast float %91, -1.000000e+00
  %93 = lshr i32 %20, 8
  %94 = and i32 %93, 255
  %95 = uitofp i32 %94 to float
  %96 = fmul fast float %95, 0x3F80101020000000
  %97 = fadd fast float %96, -1.000000e+00
  %98 = lshr i32 %20, 16
  %99 = and i32 %98, 255
  %100 = uitofp i32 %99 to float
  %101 = fmul fast float %100, 0x3F80101020000000
  %102 = fadd fast float %101, -1.000000e+00
  %103 = lshr i32 %20, 24
  %104 = uitofp i32 %103 to float
  %105 = fmul fast float %104, 0x3F80101020000000
  %106 = fadd fast float %105, -1.000000e+00
  %107 = and i32 %21, 65535
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107), !dx.precise !26  ; LegacyF16ToF32(value)
  %109 = lshr i32 %21, 16
  %110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %109), !dx.precise !26  ; LegacyF16ToF32(value)
  %111 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %112 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %113 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %114 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %115 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %116 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %117 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %118 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %119 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %120 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %121 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %122 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %123 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %124 = and i32 %114, 255
  %125 = uitofp i32 %124 to float
  %126 = lshr i32 %114, 8
  %127 = and i32 %126, 255
  %128 = uitofp i32 %127 to float
  %129 = lshr i32 %121, 30
  %130 = and i32 %121, 1023
  %131 = uitofp i32 %130 to float
  %132 = fdiv float %131, 1.023000e+03
  %133 = lshr i32 %121, 10
  %134 = and i32 %133, 1023
  %135 = uitofp i32 %134 to float
  %136 = fdiv float %135, 1.023000e+03
  %137 = lshr i32 %121, 20
  %138 = and i32 %137, 511
  %139 = uitofp i32 %138 to float
  %140 = fdiv float %139, 5.110000e+02
  %141 = fmul float %132, 2.000000e+00
  %142 = fmul float %136, 2.000000e+00
  %143 = fmul float %140, 2.000000e+00
  %144 = fadd float %141, -1.000000e+00
  %145 = fadd float %142, -1.000000e+00
  %146 = fadd float %143, -1.000000e+00
  %147 = fmul float %144, 0x3FE6A09E60000000
  %148 = fmul float %145, 0x3FE6A09E60000000
  %149 = fmul float %146, 0x3FE6A09E60000000
  %150 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %151 = call float @dx.op.unary.f32(i32 7, float %150), !dx.precise !26  ; Saturate(value)
  %152 = fsub float 1.000000e+00, %151
  %153 = call float @dx.op.unary.f32(i32 24, float %152), !dx.precise !26  ; Sqrt(value)
  %154 = icmp eq i32 %129, 0
  br i1 %154, label %161, label %155

; <label>:155                                     ; preds = %61
  %156 = icmp eq i32 %129, 1
  br i1 %156, label %161, label %157

; <label>:157                                     ; preds = %155
  %158 = icmp eq i32 %129, 2
  %159 = select i1 %158, float %153, float %149
  %160 = select i1 %158, float %149, float %153
  br label %161

; <label>:161                                     ; preds = %157, %155, %61
  %162 = phi float [ %153, %61 ], [ %147, %155 ], [ %147, %157 ]
  %163 = phi float [ %147, %61 ], [ %153, %155 ], [ %148, %157 ]
  %164 = phi float [ %148, %61 ], [ %148, %155 ], [ %159, %157 ]
  %165 = phi float [ %149, %61 ], [ %149, %155 ], [ %160, %157 ]
  %166 = fmul float %163, 2.000000e+00
  %167 = fmul float %163, %166
  %168 = fsub float 1.000000e+00, %167
  %169 = fmul float %164, 2.000000e+00
  %170 = fmul float %164, %169
  %171 = fsub float %168, %170
  %172 = fmul float %162, 2.000000e+00
  %173 = fmul float %172, %164
  %174 = fmul float %166, %165
  %175 = fadd float %173, %174
  %176 = fmul float %172, %163
  %177 = fmul float %169, %165
  %178 = fadd float %176, %177
  %179 = fmul float %166, %164
  %180 = fmul float %172, %165
  %181 = fsub float %179, %180
  %182 = fsub float %173, %174
  %183 = fmul float %162, %172
  %184 = fsub float 1.000000e+00, %183
  %185 = fsub float %184, %167
  %186 = and i32 %122, 255
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F80101020000000
  %189 = fadd fast float %188, -1.000000e+00
  %190 = lshr i32 %122, 8
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F80101020000000
  %194 = fadd fast float %193, -1.000000e+00
  %195 = lshr i32 %122, 16
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F80101020000000
  %199 = fadd fast float %198, -1.000000e+00
  %200 = lshr i32 %122, 24
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F80101020000000
  %203 = fadd fast float %202, -1.000000e+00
  %204 = and i32 %123, 65535
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204), !dx.precise !26  ; LegacyF16ToF32(value)
  %206 = lshr i32 %123, 16
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206), !dx.precise !26  ; LegacyF16ToF32(value)
  %208 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %209 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %210 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %211 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %212 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %213 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %214 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %215 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %216 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %217 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %218 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %219 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %220 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %221 = and i32 %211, 255
  %222 = uitofp i32 %221 to float
  %223 = lshr i32 %211, 8
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = lshr i32 %218, 30
  %227 = and i32 %218, 1023
  %228 = uitofp i32 %227 to float
  %229 = fdiv float %228, 1.023000e+03
  %230 = lshr i32 %218, 10
  %231 = and i32 %230, 1023
  %232 = uitofp i32 %231 to float
  %233 = fdiv float %232, 1.023000e+03
  %234 = lshr i32 %218, 20
  %235 = and i32 %234, 511
  %236 = uitofp i32 %235 to float
  %237 = fdiv float %236, 5.110000e+02
  %238 = fmul float %229, 2.000000e+00
  %239 = fmul float %233, 2.000000e+00
  %240 = fmul float %237, 2.000000e+00
  %241 = fadd float %238, -1.000000e+00
  %242 = fadd float %239, -1.000000e+00
  %243 = fadd float %240, -1.000000e+00
  %244 = fmul float %241, 0x3FE6A09E60000000
  %245 = fmul float %242, 0x3FE6A09E60000000
  %246 = fmul float %243, 0x3FE6A09E60000000
  %247 = call float @dx.op.dot3.f32(i32 55, float %244, float %245, float %246, float %244, float %245, float %246), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %248 = call float @dx.op.unary.f32(i32 7, float %247), !dx.precise !26  ; Saturate(value)
  %249 = fsub float 1.000000e+00, %248
  %250 = call float @dx.op.unary.f32(i32 24, float %249), !dx.precise !26  ; Sqrt(value)
  %251 = icmp eq i32 %226, 0
  br i1 %251, label %258, label %252

; <label>:252                                     ; preds = %161
  %253 = icmp eq i32 %226, 1
  br i1 %253, label %258, label %254

; <label>:254                                     ; preds = %252
  %255 = icmp eq i32 %226, 2
  %256 = select i1 %255, float %250, float %246
  %257 = select i1 %255, float %246, float %250
  br label %258

; <label>:258                                     ; preds = %254, %252, %161
  %259 = phi float [ %250, %161 ], [ %244, %252 ], [ %244, %254 ]
  %260 = phi float [ %244, %161 ], [ %250, %252 ], [ %245, %254 ]
  %261 = phi float [ %245, %161 ], [ %245, %252 ], [ %256, %254 ]
  %262 = phi float [ %246, %161 ], [ %246, %252 ], [ %257, %254 ]
  %263 = fmul float %260, 2.000000e+00
  %264 = fmul float %260, %263
  %265 = fsub float 1.000000e+00, %264
  %266 = fmul float %261, 2.000000e+00
  %267 = fmul float %261, %266
  %268 = fsub float %265, %267
  %269 = fmul float %259, 2.000000e+00
  %270 = fmul float %269, %261
  %271 = fmul float %263, %262
  %272 = fadd float %270, %271
  %273 = fmul float %269, %260
  %274 = fmul float %266, %262
  %275 = fadd float %273, %274
  %276 = fmul float %263, %261
  %277 = fmul float %269, %262
  %278 = fsub float %276, %277
  %279 = fsub float %270, %271
  %280 = fmul float %259, %269
  %281 = fsub float 1.000000e+00, %280
  %282 = fsub float %281, %264
  %283 = and i32 %219, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F80101020000000
  %286 = fadd fast float %285, -1.000000e+00
  %287 = lshr i32 %219, 8
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = fmul fast float %289, 0x3F80101020000000
  %291 = fadd fast float %290, -1.000000e+00
  %292 = lshr i32 %219, 16
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F80101020000000
  %296 = fadd fast float %295, -1.000000e+00
  %297 = lshr i32 %219, 24
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F80101020000000
  %300 = fadd fast float %299, -1.000000e+00
  %301 = and i32 %220, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301), !dx.precise !26  ; LegacyF16ToF32(value)
  %303 = lshr i32 %220, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303), !dx.precise !26  ; LegacyF16ToF32(value)
  %305 = fmul float %5, %8
  %306 = fmul float %5, %9
  %307 = fmul float %5, %10
  %308 = fmul float %6, %111
  %309 = fmul float %6, %112
  %310 = fmul float %6, %113
  %311 = fadd float %305, %308
  %312 = fadd float %306, %309
  %313 = fadd float %307, %310
  %314 = fmul float %7, %208
  %315 = fmul float %7, %209
  %316 = fmul float %7, %210
  %317 = fadd float %311, %314
  %318 = fadd float %312, %315
  %319 = fadd float %313, %316
  %320 = fmul fast float %24, %5
  %321 = fmul fast float %125, %6
  %322 = fmul fast float %222, %7
  %323 = fadd fast float %321, %320
  %324 = fadd fast float %323, %322
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = fmul fast float %27, %5
  %327 = fmul fast float %128, %6
  %328 = fmul fast float %225, %7
  %329 = fadd fast float %327, %326
  %330 = fadd fast float %329, %328
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = fmul float %5, %12
  %333 = fmul float %5, %13
  %334 = fmul float %6, %115
  %335 = fmul float %6, %116
  %336 = fadd float %332, %334
  %337 = fadd float %333, %335
  %338 = fmul float %7, %212
  %339 = fmul float %7, %213
  %340 = fadd float %336, %338
  %341 = fadd float %337, %339
  %342 = fmul float %5, %14
  %343 = fmul float %5, %15
  %344 = fmul float %6, %117
  %345 = fmul float %6, %118
  %346 = fadd float %342, %344
  %347 = fadd float %343, %345
  %348 = fmul float %7, %214
  %349 = fmul float %7, %215
  %350 = fadd float %346, %348
  %351 = fadd float %347, %349
  %352 = fmul fast float %16, %5
  %353 = fmul fast float %17, %5
  %354 = fmul fast float %119, %6
  %355 = fmul fast float %120, %6
  %356 = fadd fast float %354, %352
  %357 = fadd fast float %355, %353
  %358 = fmul fast float %216, %7
  %359 = fmul fast float %217, %7
  %360 = fadd fast float %356, %358
  %361 = fadd fast float %357, %359
  %362 = fmul float %5, %78
  %363 = fmul float %5, %84
  %364 = fmul float %5, %88
  %365 = fmul float %6, %175
  %366 = fmul float %6, %181
  %367 = fmul float %6, %185
  %368 = fadd float %362, %365
  %369 = fadd float %363, %366
  %370 = fadd float %364, %367
  %371 = fmul float %7, %272
  %372 = fmul float %7, %278
  %373 = fmul float %7, %282
  %374 = fadd float %368, %371
  %375 = fadd float %369, %372
  %376 = fadd float %370, %373
  %377 = fmul fast float %74, %5
  %378 = fmul fast float %81, %5
  %379 = fmul fast float %85, %5
  %380 = fmul fast float %171, %6
  %381 = fmul fast float %178, %6
  %382 = fmul fast float %182, %6
  %383 = fadd fast float %380, %377
  %384 = fadd fast float %381, %378
  %385 = fadd fast float %382, %379
  %386 = fmul fast float %268, %7
  %387 = fmul fast float %275, %7
  %388 = fmul fast float %279, %7
  %389 = fadd fast float %383, %386
  %390 = fadd fast float %384, %387
  %391 = fadd fast float %385, %388
  %392 = fmul fast float %92, %5
  %393 = fmul fast float %97, %5
  %394 = fmul fast float %102, %5
  %395 = fmul fast float %106, %5
  %396 = fmul fast float %189, %6
  %397 = fmul fast float %194, %6
  %398 = fmul fast float %199, %6
  %399 = fmul fast float %203, %6
  %400 = fadd fast float %396, %392
  %401 = fadd fast float %397, %393
  %402 = fadd fast float %398, %394
  %403 = fadd fast float %399, %395
  %404 = fmul fast float %286, %7
  %405 = fmul fast float %291, %7
  %406 = fmul fast float %296, %7
  %407 = fmul fast float %300, %7
  %408 = fadd fast float %400, %404
  %409 = fadd fast float %401, %405
  %410 = fadd fast float %402, %406
  %411 = fadd fast float %403, %407
  %412 = fmul float %5, %108
  %413 = fmul float %6, %205
  %414 = fadd float %412, %413
  %415 = fmul float %7, %302
  %416 = fadd float %414, %415
  %417 = fmul float %5, %110
  %418 = fmul float %6, %207
  %419 = fadd float %417, %418
  %420 = fmul float %7, %304
  %421 = fadd float %419, %420
  %422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %423 = extractvalue %dx.types.CBufRet.f32 %422, 0
  %424 = extractvalue %dx.types.CBufRet.f32 %422, 1
  %425 = extractvalue %dx.types.CBufRet.f32 %422, 2
  %426 = fsub float %317, %423
  %427 = fsub float %318, %424
  %428 = fsub float %319, %425
  %429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %430 = extractvalue %dx.types.CBufRet.f32 %429, 0
  %431 = extractvalue %dx.types.CBufRet.f32 %429, 1
  %432 = extractvalue %dx.types.CBufRet.f32 %429, 2
  %433 = extractvalue %dx.types.CBufRet.f32 %429, 3
  %434 = fmul float %426, %430
  %435 = call float @dx.op.tertiary.f32(i32 46, float %427, float %431, float %434), !dx.precise !26  ; FMad(a,b,c)
  %436 = call float @dx.op.tertiary.f32(i32 46, float %428, float %432, float %435), !dx.precise !26  ; FMad(a,b,c)
  %437 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %433, float %436), !dx.precise !26  ; FMad(a,b,c)
  %438 = call float @dx.op.binary.f32(i32 35, float %437, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %443 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %444 = fmul float %440, 0.000000e+00
  %445 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %441, float %444), !dx.precise !26  ; FMad(a,b,c)
  %446 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %442, float %445), !dx.precise !26  ; FMad(a,b,c)
  %447 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %443, float %446), !dx.precise !26  ; FMad(a,b,c)
  %448 = fdiv float %438, %447
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 0
  %451 = fdiv float %448, %450
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 272, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = add i32 %453, 0
  %455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 1
  %458 = bitcast i32 %457 to float
  %459 = extractvalue %dx.types.ResRet.i32 %456, 0
  %460 = bitcast i32 %459 to float
  %461 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %455, i32 0)  ; GetDimensions(handle,mipLevel)
  %462 = extractvalue %dx.types.Dimensions %461, 0
  %463 = sitofp i32 %462 to float
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %466 = call float @dx.op.unary.f32(i32 6, float %465), !dx.precise !26  ; FAbs(value)
  %467 = fmul float %416, %466
  %468 = fcmp olt float %465, 0.000000e+00
  %469 = fmul float %421, 2.560000e+02
  %470 = fdiv float %467, %469
  %471 = select i1 %468, float %470, float %467
  %472 = fmul float %421, %463
  %473 = fmul float %451, %472
  %474 = call float @dx.op.unary.f32(i32 23, float %473), !dx.precise !26  ; Log(value)
  %475 = extractvalue %dx.types.CBufRet.f32 %464, 1
  %476 = fadd float %474, %475
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %455, %dx.types.Handle %2, float %340, float %341, float undef, float undef, i32 0, i32 0, i32 undef, float %476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = fmul float %460, %478
  %480 = fadd float %458, %479
  %481 = fmul float %471, %480
  %482 = fadd float %481, 0.000000e+00
  %483 = call float @dx.op.dot3.f32(i32 55, float %374, float %375, float %376, float %374, float %375, float %376), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = call float @dx.op.unary.f32(i32 25, float %483), !dx.precise !26  ; Rsqrt(value)
  %485 = fmul float %374, %484
  %486 = fmul float %375, %484
  %487 = fmul float %376, %484
  %488 = fmul float %485, %482
  %489 = fmul float %486, %482
  %490 = fmul float %487, %482
  %491 = fadd float %317, %488
  %492 = fadd float %318, %489
  %493 = fadd float %319, %490
  %494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %495 = extractvalue %dx.types.CBufRet.f32 %494, 0
  %496 = extractvalue %dx.types.CBufRet.f32 %494, 1
  %497 = extractvalue %dx.types.CBufRet.f32 %494, 2
  %498 = fsub float %491, %495
  %499 = fsub float %492, %496
  %500 = fsub float %493, %497
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = extractvalue %dx.types.CBufRet.f32 %501, 1
  %504 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %505 = extractvalue %dx.types.CBufRet.f32 %501, 3
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 0
  %508 = extractvalue %dx.types.CBufRet.f32 %506, 1
  %509 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %510 = extractvalue %dx.types.CBufRet.f32 %506, 3
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = extractvalue %dx.types.CBufRet.f32 %511, 1
  %514 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %515 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 0
  %518 = extractvalue %dx.types.CBufRet.f32 %516, 1
  %519 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %520 = extractvalue %dx.types.CBufRet.f32 %516, 3
  %521 = fmul float %502, %498
  %522 = call float @dx.op.tertiary.f32(i32 46, float %499, float %503, float %521), !dx.precise !26  ; FMad(a,b,c)
  %523 = call float @dx.op.tertiary.f32(i32 46, float %500, float %504, float %522), !dx.precise !26  ; FMad(a,b,c)
  %524 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %505, float %523), !dx.precise !26  ; FMad(a,b,c)
  %525 = fmul float %507, %498
  %526 = call float @dx.op.tertiary.f32(i32 46, float %499, float %508, float %525), !dx.precise !26  ; FMad(a,b,c)
  %527 = call float @dx.op.tertiary.f32(i32 46, float %500, float %509, float %526), !dx.precise !26  ; FMad(a,b,c)
  %528 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %510, float %527), !dx.precise !26  ; FMad(a,b,c)
  %529 = fmul float %512, %498
  %530 = call float @dx.op.tertiary.f32(i32 46, float %499, float %513, float %529), !dx.precise !26  ; FMad(a,b,c)
  %531 = call float @dx.op.tertiary.f32(i32 46, float %500, float %514, float %530), !dx.precise !26  ; FMad(a,b,c)
  %532 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %515, float %531), !dx.precise !26  ; FMad(a,b,c)
  %533 = fmul float %498, %517
  %534 = call float @dx.op.tertiary.f32(i32 46, float %499, float %518, float %533), !dx.precise !26  ; FMad(a,b,c)
  %535 = call float @dx.op.tertiary.f32(i32 46, float %500, float %519, float %534), !dx.precise !26  ; FMad(a,b,c)
  %536 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %520, float %535), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %532)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %325)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %341)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %350)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %360)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %361)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %28)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %375)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %389)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %391)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %68)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 0, float %408)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 1, float %409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 2, float %410)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 6, i32 0, i8 3, float %411)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 7, i32 0, i8 0, i32 %22)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[36 x i32] [i32 20, i32 29, i32 15, i32 15, i32 15, i32 0, i32 48, i32 16384, i32 16187407, i32 251658240, i32 271, i32 527, i32 1024, i32 2048, i32 4096, i32 8192, i32 0, i32 0, i32 0, i32 15, i32 0, i32 268435456, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !50}
!16 = !{!17, !36, !46}
!17 = !{!18, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 2, !24}
!26 = !{i32 1}
!27 = !{i32 4, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 3, i8 0, !24}
!28 = !{i32 5, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!29 = !{i32 6, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!30 = !{i32 7, !"NORMAL_TRANSFORM", i8 5, i8 0, !26, i8 1, i32 1, i8 1, i32 1, i8 3, !22}
!31 = !{i32 8, !"NORMAL_TRANSFORM", i8 5, i8 0, !32, i8 1, i32 1, i8 1, i32 4, i8 0, null}
!32 = !{i32 2}
!33 = !{i32 9, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 1, !22}
!34 = !{i32 10, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 2, null}
!35 = !{i32 11, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 3, !22}
!36 = !{!37, !39, !40, !41, !42, !43, !44, !45}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !38}
!40 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !38}
!41 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 3, i8 0, !20}
!42 = !{i32 4, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!43 = !{i32 5, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 5, i8 0, !38}
!44 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 6, i8 0, !38}
!45 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 7, i8 0, !22}
!46 = !{!47, !49}
!47 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !48, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!48 = !{i32 0, i32 1, i32 2}
!49 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!50 = !{i32 0, i64 16, i32 2, !51}
!51 = !{i32 2, i32 3}

