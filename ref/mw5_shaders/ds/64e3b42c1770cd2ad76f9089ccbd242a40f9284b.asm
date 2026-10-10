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
; TRANSIENT_INDEX          0    y          3     NONE    uint    y  
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
; shader hash: 95ee2a76a5dfdbc446817834849b9088
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
; Number of inputs: 14, outputs: 25, patchconst: 13
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
;   output 24 depends on inputs: { 13 }
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
  %5 = call float @dx.op.domainLocation.f32(i32 105, i8 0), !dx.precise !46  ; DomainLocation(component)
  %6 = call float @dx.op.domainLocation.f32(i32 105, i8 1), !dx.precise !46  ; DomainLocation(component)
  %7 = call float @dx.op.domainLocation.f32(i32 105, i8 2), !dx.precise !46  ; DomainLocation(component)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 0), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 0), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 0), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = and i32 %11, 255
  %21 = uitofp i32 %20 to float
  %22 = lshr i32 %11, 8
  %23 = and i32 %22, 255
  %24 = uitofp i32 %23 to float
  %25 = lshr i32 %11, 16
  %26 = and i32 %25, 255
  %27 = uitofp i32 %26 to float
  %28 = lshr i32 %11, 24
  %29 = uitofp i32 %28 to float
  %30 = uitofp i32 %16 to float
  %31 = lshr i32 %17, 30
  %32 = and i32 %17, 1023
  %33 = uitofp i32 %32 to float
  %34 = fdiv float %33, 1.023000e+03
  %35 = lshr i32 %17, 10
  %36 = and i32 %35, 1023
  %37 = uitofp i32 %36 to float
  %38 = fdiv float %37, 1.023000e+03
  %39 = lshr i32 %17, 20
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
  %52 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51), !dx.precise !46  ; Dot3(ax,ay,az,bx,by,bz)
  %53 = call float @dx.op.unary.f32(i32 7, float %52), !dx.precise !46  ; Saturate(value)
  %54 = fsub float 1.000000e+00, %53
  %55 = call float @dx.op.unary.f32(i32 24, float %54), !dx.precise !46  ; Sqrt(value)
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
  %68 = and i32 %17, 536870912
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
  %91 = and i32 %18, 65535
  %92 = call float @dx.op.legacyF16ToF32(i32 131, i32 %91), !dx.precise !46  ; LegacyF16ToF32(value)
  %93 = lshr i32 %18, 16
  %94 = call float @dx.op.legacyF16ToF32(i32 131, i32 %93), !dx.precise !46  ; LegacyF16ToF32(value)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %136 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135), !dx.precise !46  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = call float @dx.op.unary.f32(i32 7, float %136), !dx.precise !46  ; Saturate(value)
  %138 = fsub float 1.000000e+00, %137
  %139 = call float @dx.op.unary.f32(i32 24, float %138), !dx.precise !46  ; Sqrt(value)
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
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172), !dx.precise !46  ; LegacyF16ToF32(value)
  %174 = lshr i32 %104, 16
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174), !dx.precise !46  ; LegacyF16ToF32(value)
  %176 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %177 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %178 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %179 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %180 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %181 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !46  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %217 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %214, float %215, float %216), !dx.precise !46  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.unary.f32(i32 7, float %217), !dx.precise !46  ; Saturate(value)
  %219 = fsub float 1.000000e+00, %218
  %220 = call float @dx.op.unary.f32(i32 24, float %219), !dx.precise !46  ; Sqrt(value)
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
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253), !dx.precise !46  ; LegacyF16ToF32(value)
  %255 = lshr i32 %185, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255), !dx.precise !46  ; LegacyF16ToF32(value)
  %257 = fmul float %5, %8
  %258 = fmul float %5, %9
  %259 = fmul float %5, %10
  %260 = fmul float %6, %95
  %261 = fmul float %6, %96
  %262 = fmul float %6, %97
  %263 = fadd float %257, %260
  %264 = fadd float %258, %261
  %265 = fadd float %259, %262
  %266 = fmul float %7, %176
  %267 = fmul float %7, %177
  %268 = fmul float %7, %178
  %269 = fadd float %263, %266
  %270 = fadd float %264, %267
  %271 = fadd float %265, %268
  %272 = fmul fast float %29, %5
  %273 = fmul fast float %21, %5
  %274 = fmul fast float %24, %5
  %275 = fmul fast float %27, %5
  %276 = fmul fast float %114, %6
  %277 = fmul fast float %106, %6
  %278 = fmul fast float %109, %6
  %279 = fmul fast float %112, %6
  %280 = fmul fast float %195, %7
  %281 = fmul fast float %187, %7
  %282 = fmul fast float %190, %7
  %283 = fmul fast float %193, %7
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
  %296 = fmul float %5, %12
  %297 = fmul float %5, %13
  %298 = fmul float %6, %99
  %299 = fmul float %6, %100
  %300 = fadd float %296, %298
  %301 = fadd float %297, %299
  %302 = fmul float %7, %180
  %303 = fmul float %7, %181
  %304 = fadd float %300, %302
  %305 = fadd float %301, %303
  %306 = fmul fast float %14, %5
  %307 = fmul fast float %15, %5
  %308 = fmul fast float %101, %6
  %309 = fmul fast float %102, %6
  %310 = fadd fast float %308, %306
  %311 = fadd fast float %309, %307
  %312 = fmul fast float %182, %7
  %313 = fmul fast float %183, %7
  %314 = fadd fast float %310, %312
  %315 = fadd fast float %311, %313
  %316 = fmul float %5, %80
  %317 = fmul float %5, %86
  %318 = fmul float %5, %90
  %319 = fmul float %6, %161
  %320 = fmul float %6, %167
  %321 = fmul float %6, %171
  %322 = fadd float %316, %319
  %323 = fadd float %317, %320
  %324 = fadd float %318, %321
  %325 = fmul float %7, %242
  %326 = fmul float %7, %248
  %327 = fmul float %7, %252
  %328 = fadd float %322, %325
  %329 = fadd float %323, %326
  %330 = fadd float %324, %327
  %331 = fmul fast float %76, %5
  %332 = fmul fast float %83, %5
  %333 = fmul fast float %87, %5
  %334 = fmul fast float %157, %6
  %335 = fmul fast float %164, %6
  %336 = fmul fast float %168, %6
  %337 = fadd fast float %334, %331
  %338 = fadd fast float %335, %332
  %339 = fadd fast float %336, %333
  %340 = fmul fast float %238, %7
  %341 = fmul fast float %245, %7
  %342 = fmul fast float %249, %7
  %343 = fadd fast float %337, %340
  %344 = fadd fast float %338, %341
  %345 = fadd fast float %339, %342
  %346 = fmul float %5, %92
  %347 = fmul float %6, %173
  %348 = fadd float %346, %347
  %349 = fmul float %7, %254
  %350 = fadd float %348, %349
  %351 = fmul float %5, %94
  %352 = fmul float %6, %175
  %353 = fadd float %351, %352
  %354 = fmul float %7, %256
  %355 = fadd float %353, %354
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fsub float %269, %357
  %361 = fsub float %270, %358
  %362 = fsub float %271, %359
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = extractvalue %dx.types.CBufRet.f32 %363, 3
  %368 = fmul float %360, %364
  %369 = call float @dx.op.tertiary.f32(i32 46, float %361, float %365, float %368), !dx.precise !46  ; FMad(a,b,c)
  %370 = call float @dx.op.tertiary.f32(i32 46, float %362, float %366, float %369), !dx.precise !46  ; FMad(a,b,c)
  %371 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %367, float %370), !dx.precise !46  ; FMad(a,b,c)
  %372 = call float @dx.op.binary.f32(i32 35, float %371, float 0x3F1A36E2E0000000), !dx.precise !46  ; FMax(a,b)
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = extractvalue %dx.types.CBufRet.f32 %373, 3
  %378 = fmul float %374, 0.000000e+00
  %379 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %375, float %378), !dx.precise !46  ; FMad(a,b,c)
  %380 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %376, float %379), !dx.precise !46  ; FMad(a,b,c)
  %381 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %377, float %380), !dx.precise !46  ; FMad(a,b,c)
  %382 = fdiv float %372, %381
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = fdiv float %382, %384
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = add i32 %387, 0
  %389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 1
  %392 = bitcast i32 %391 to float
  %393 = extractvalue %dx.types.ResRet.i32 %390, 0
  %394 = bitcast i32 %393 to float
  %395 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %389, i32 0)  ; GetDimensions(handle,mipLevel)
  %396 = extractvalue %dx.types.Dimensions %395, 0
  %397 = sitofp i32 %396 to float
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 2
  %400 = call float @dx.op.unary.f32(i32 6, float %399), !dx.precise !46  ; FAbs(value)
  %401 = fmul float %350, %400
  %402 = fcmp olt float %399, 0.000000e+00
  %403 = fmul float %355, 2.560000e+02
  %404 = fdiv float %401, %403
  %405 = select i1 %402, float %404, float %401
  %406 = fmul float %355, %397
  %407 = fmul float %385, %406
  %408 = call float @dx.op.unary.f32(i32 23, float %407), !dx.precise !46  ; Log(value)
  %409 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %410 = fadd float %408, %409
  %411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %389, %dx.types.Handle %2, float %304, float %305, float undef, float undef, i32 0, i32 0, i32 undef, float %410)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %412 = extractvalue %dx.types.ResRet.f32 %411, 0
  %413 = fmul float %394, %412
  %414 = fadd float %392, %413
  %415 = fmul float %405, %414
  %416 = fadd float %415, 0.000000e+00
  %417 = call float @dx.op.dot3.f32(i32 55, float %328, float %329, float %330, float %328, float %329, float %330), !dx.precise !46  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = call float @dx.op.unary.f32(i32 25, float %417), !dx.precise !46  ; Rsqrt(value)
  %419 = fmul float %328, %418
  %420 = fmul float %329, %418
  %421 = fmul float %330, %418
  %422 = fmul float %419, %416
  %423 = fmul float %420, %416
  %424 = fmul float %421, %416
  %425 = fadd float %269, %422
  %426 = fadd float %270, %423
  %427 = fadd float %271, %424
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fsub float %425, %429
  %433 = fsub float %426, %430
  %434 = fsub float %427, %431
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %444 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.f32 %445, 0
  %447 = extractvalue %dx.types.CBufRet.f32 %445, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %445, 2
  %449 = extractvalue %dx.types.CBufRet.f32 %445, 3
  %450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %451 = extractvalue %dx.types.CBufRet.f32 %450, 0
  %452 = extractvalue %dx.types.CBufRet.f32 %450, 1
  %453 = extractvalue %dx.types.CBufRet.f32 %450, 2
  %454 = extractvalue %dx.types.CBufRet.f32 %450, 3
  %455 = fmul float %436, %432
  %456 = call float @dx.op.tertiary.f32(i32 46, float %433, float %437, float %455), !dx.precise !46  ; FMad(a,b,c)
  %457 = call float @dx.op.tertiary.f32(i32 46, float %434, float %438, float %456), !dx.precise !46  ; FMad(a,b,c)
  %458 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %439, float %457), !dx.precise !46  ; FMad(a,b,c)
  %459 = fmul float %441, %432
  %460 = call float @dx.op.tertiary.f32(i32 46, float %433, float %442, float %459), !dx.precise !46  ; FMad(a,b,c)
  %461 = call float @dx.op.tertiary.f32(i32 46, float %434, float %443, float %460), !dx.precise !46  ; FMad(a,b,c)
  %462 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %444, float %461), !dx.precise !46  ; FMad(a,b,c)
  %463 = fmul float %446, %432
  %464 = call float @dx.op.tertiary.f32(i32 46, float %433, float %447, float %463), !dx.precise !46  ; FMad(a,b,c)
  %465 = call float @dx.op.tertiary.f32(i32 46, float %434, float %448, float %464), !dx.precise !46  ; FMad(a,b,c)
  %466 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %449, float %465), !dx.precise !46  ; FMad(a,b,c)
  %467 = fmul float %432, %451
  %468 = call float @dx.op.tertiary.f32(i32 46, float %433, float %452, float %467), !dx.precise !46  ; FMad(a,b,c)
  %469 = call float @dx.op.tertiary.f32(i32 46, float %434, float %453, float %468), !dx.precise !46  ; FMad(a,b,c)
  %470 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %454, float %469), !dx.precise !46  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %458)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %462)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %466)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %470)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %289)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %292)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %295)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %304)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float %30)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %329)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 0, float %343)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 1, float %344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 2, float %345)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 5, i32 0, i8 3, float %70)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 6, i32 0, i8 0, i32 %19)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[30 x i32] [i32 14, i32 25, i32 15, i32 15, i32 15, i32 0, i32 240, i32 16384, i32 16187407, i32 15, i32 271, i32 527, i32 4096, i32 8192, i32 0, i32 16777216, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !44}
!16 = !{!17, !31, !40}
!17 = !{!18, !21, !23, !25, !26, !27, !28, !29, !30}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"LIGHTING_TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 2, !24}
!26 = !{i32 4, !"LMAP_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!27 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!28 = !{i32 6, !"DISPLACEMENT", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 3, !22}
!29 = !{i32 7, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 0, null}
!30 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 3, i8 1, !22}
!31 = !{!32, !34, !35, !36, !37, !38, !39}
!32 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !33}
!33 = !{i32 3, i32 15}
!34 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !33}
!35 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!36 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 3, i8 0, !20}
!37 = !{i32 4, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!38 = !{i32 5, !"TANGENT", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 5, i8 0, !33}
!39 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 6, i8 0, !22}
!40 = !{!41, !43}
!41 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !42, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!42 = !{i32 0, i32 1, i32 2}
!43 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!44 = !{i32 0, i64 16, i32 2, !45}
!45 = !{i32 2, i32 3}
!46 = !{i32 1}

