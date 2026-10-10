;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; POSITION                 0   xyz         0     NONE   float   xyz 
; COLOR                    0   x           1     NONE    uint   x   
; TANGENT_FRAME            0    y          1     NONE    uint    y  
; DISPLACEMENT             2     z         1     NONE    uint     z 
; TESSFACTORS_OFFSET       0      w        1     NONE    uint       
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1     zw        2     NONE   float     zw
; TEXCOORD                 2   xy          3     NONE   float   xy  
; TRANSIENT_INDEX          0   x           4     NONE    uint   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                1   xyzw        3     NONE   float   xyzw
; NORMAL                   0   xyz         4     NONE   float   xyz 
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
; shader hash: ccee1c2e38c13f7ba3482a590ca7d170
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
; DISPLACEMENT             2        nointerpolation       
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
; TEXCOORDS                1                 linear       
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
; Number of inputs: 17, outputs: 21, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 5, 6, 12, 13 }
;   output 1 depends on inputs: { 0, 1, 2, 5, 6, 12, 13 }
;   output 2 depends on inputs: { 0, 1, 2, 5, 6, 12, 13 }
;   output 3 depends on inputs: { 0, 1, 2, 5, 6, 12, 13 }
;   output 4 depends on inputs: { 4 }
;   output 5 depends on inputs: { 4 }
;   output 6 depends on inputs: { 4 }
;   output 8 depends on inputs: { 8 }
;   output 9 depends on inputs: { 9 }
;   output 10 depends on inputs: { 10, 11 }
;   output 11 depends on inputs: { 10, 11 }
;   output 12 depends on inputs: { 12 }
;   output 13 depends on inputs: { 13 }
;   output 16 depends on inputs: { 5 }
;   output 17 depends on inputs: { 5 }
;   output 18 depends on inputs: { 5 }
;   output 20 depends on inputs: { 16 }
; PCInputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
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
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 0), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = and i32 %11, 255
  %22 = uitofp i32 %21 to float
  %23 = lshr i32 %11, 8
  %24 = and i32 %23, 255
  %25 = uitofp i32 %24 to float
  %26 = lshr i32 %11, 16
  %27 = and i32 %26, 255
  %28 = uitofp i32 %27 to float
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = extractvalue %dx.types.ResRet.i32 %29, 1
  %32 = extractvalue %dx.types.ResRet.i32 %29, 2
  %33 = bitcast i32 %30 to float
  %34 = bitcast i32 %31 to float
  %35 = bitcast i32 %32 to float
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 3
  %38 = fmul float %35, %37
  %39 = fadd float %38, 0.000000e+00
  %40 = call float @dx.op.unary.f32(i32 12, float %39), !dx.precise !26  ; Cos(value)
  %41 = call float @dx.op.unary.f32(i32 13, float %39), !dx.precise !26  ; Sin(value)
  %42 = fadd float %14, -5.000000e-01
  %43 = fadd float %15, -5.000000e-01
  %44 = fmul float %42, %40
  %45 = fmul float %43, %41
  %46 = fsub float %44, %45
  %47 = fmul float %42, %41
  %48 = fmul float %43, %40
  %49 = fadd float %48, %47
  %50 = fadd float %46, 5.000000e-01
  %51 = fadd float %49, 5.000000e-01
  %52 = fmul float %33, %37
  %53 = fmul float %34, %37
  %54 = fadd float %50, %52
  %55 = fadd float %51, %53
  %56 = lshr i32 %18, 30
  %57 = and i32 %18, 1023
  %58 = uitofp i32 %57 to float
  %59 = fdiv float %58, 1.023000e+03
  %60 = lshr i32 %18, 10
  %61 = and i32 %60, 1023
  %62 = uitofp i32 %61 to float
  %63 = fdiv float %62, 1.023000e+03
  %64 = lshr i32 %18, 20
  %65 = and i32 %64, 511
  %66 = uitofp i32 %65 to float
  %67 = fdiv float %66, 5.110000e+02
  %68 = fmul float %59, 2.000000e+00
  %69 = fmul float %63, 2.000000e+00
  %70 = fmul float %67, 2.000000e+00
  %71 = fadd float %68, -1.000000e+00
  %72 = fadd float %69, -1.000000e+00
  %73 = fadd float %70, -1.000000e+00
  %74 = fmul float %71, 0x3FE6A09E60000000
  %75 = fmul float %72, 0x3FE6A09E60000000
  %76 = fmul float %73, 0x3FE6A09E60000000
  %77 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = call float @dx.op.unary.f32(i32 7, float %77), !dx.precise !26  ; Saturate(value)
  %79 = fsub float 1.000000e+00, %78
  %80 = call float @dx.op.unary.f32(i32 24, float %79), !dx.precise !26  ; Sqrt(value)
  %81 = icmp eq i32 %56, 0
  br i1 %81, label %88, label %82

; <label>:82                                      ; preds = %0
  %83 = icmp eq i32 %56, 1
  br i1 %83, label %88, label %84

; <label>:84                                      ; preds = %82
  %85 = icmp eq i32 %56, 2
  %86 = select i1 %85, float %80, float %76
  %87 = select i1 %85, float %76, float %80
  br label %88

; <label>:88                                      ; preds = %84, %82, %0
  %89 = phi float [ %80, %0 ], [ %74, %82 ], [ %74, %84 ]
  %90 = phi float [ %74, %0 ], [ %80, %82 ], [ %75, %84 ]
  %91 = phi float [ %75, %0 ], [ %75, %82 ], [ %86, %84 ]
  %92 = phi float [ %76, %0 ], [ %76, %82 ], [ %87, %84 ]
  %93 = fmul float %89, 2.000000e+00
  %94 = fmul float %93, %91
  %95 = fmul float %90, 2.000000e+00
  %96 = fmul float %95, %92
  %97 = fadd float %94, %96
  %98 = fmul float %95, %91
  %99 = fmul float %93, %92
  %100 = fsub float %98, %99
  %101 = fmul float %89, %93
  %102 = fsub float 1.000000e+00, %101
  %103 = fmul float %90, %95
  %104 = fsub float %102, %103
  %105 = and i32 %19, 65535
  %106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %105), !dx.precise !26  ; LegacyF16ToF32(value)
  %107 = lshr i32 %19, 16
  %108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %107), !dx.precise !26  ; LegacyF16ToF32(value)
  %109 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %110 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %111 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %112 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %113 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %114 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %115 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %116 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %117 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %118 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 1), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %119 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %120 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %121 = and i32 %112, 255
  %122 = uitofp i32 %121 to float
  %123 = lshr i32 %112, 8
  %124 = and i32 %123, 255
  %125 = uitofp i32 %124 to float
  %126 = lshr i32 %112, 16
  %127 = and i32 %126, 255
  %128 = uitofp i32 %127 to float
  %129 = fadd float %115, -5.000000e-01
  %130 = fadd float %116, -5.000000e-01
  %131 = fmul float %129, %40
  %132 = fmul float %130, %41
  %133 = fsub float %131, %132
  %134 = fmul float %129, %41
  %135 = fmul float %130, %40
  %136 = fadd float %135, %134
  %137 = fadd float %133, 5.000000e-01
  %138 = fadd float %136, 5.000000e-01
  %139 = fadd float %137, %52
  %140 = fadd float %138, %53
  %141 = lshr i32 %119, 30
  %142 = and i32 %119, 1023
  %143 = uitofp i32 %142 to float
  %144 = fdiv float %143, 1.023000e+03
  %145 = lshr i32 %119, 10
  %146 = and i32 %145, 1023
  %147 = uitofp i32 %146 to float
  %148 = fdiv float %147, 1.023000e+03
  %149 = lshr i32 %119, 20
  %150 = and i32 %149, 511
  %151 = uitofp i32 %150 to float
  %152 = fdiv float %151, 5.110000e+02
  %153 = fmul float %144, 2.000000e+00
  %154 = fmul float %148, 2.000000e+00
  %155 = fmul float %152, 2.000000e+00
  %156 = fadd float %153, -1.000000e+00
  %157 = fadd float %154, -1.000000e+00
  %158 = fadd float %155, -1.000000e+00
  %159 = fmul float %156, 0x3FE6A09E60000000
  %160 = fmul float %157, 0x3FE6A09E60000000
  %161 = fmul float %158, 0x3FE6A09E60000000
  %162 = call float @dx.op.dot3.f32(i32 55, float %159, float %160, float %161, float %159, float %160, float %161), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call float @dx.op.unary.f32(i32 7, float %162), !dx.precise !26  ; Saturate(value)
  %164 = fsub float 1.000000e+00, %163
  %165 = call float @dx.op.unary.f32(i32 24, float %164), !dx.precise !26  ; Sqrt(value)
  %166 = icmp eq i32 %141, 0
  br i1 %166, label %173, label %167

; <label>:167                                     ; preds = %88
  %168 = icmp eq i32 %141, 1
  br i1 %168, label %173, label %169

; <label>:169                                     ; preds = %167
  %170 = icmp eq i32 %141, 2
  %171 = select i1 %170, float %165, float %161
  %172 = select i1 %170, float %161, float %165
  br label %173

; <label>:173                                     ; preds = %169, %167, %88
  %174 = phi float [ %165, %88 ], [ %159, %167 ], [ %159, %169 ]
  %175 = phi float [ %159, %88 ], [ %165, %167 ], [ %160, %169 ]
  %176 = phi float [ %160, %88 ], [ %160, %167 ], [ %171, %169 ]
  %177 = phi float [ %161, %88 ], [ %161, %167 ], [ %172, %169 ]
  %178 = fmul float %174, 2.000000e+00
  %179 = fmul float %178, %176
  %180 = fmul float %175, 2.000000e+00
  %181 = fmul float %180, %177
  %182 = fadd float %179, %181
  %183 = fmul float %180, %176
  %184 = fmul float %178, %177
  %185 = fsub float %183, %184
  %186 = fmul float %174, %178
  %187 = fsub float 1.000000e+00, %186
  %188 = fmul float %175, %180
  %189 = fsub float %187, %188
  %190 = and i32 %120, 65535
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190), !dx.precise !26  ; LegacyF16ToF32(value)
  %192 = lshr i32 %120, 16
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192), !dx.precise !26  ; LegacyF16ToF32(value)
  %194 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %195 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %196 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %197 = call i32 @dx.op.loadInput.i32(i32 4, i32 1, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %198 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %199 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %200 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %201 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %202 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %203 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 2), !dx.precise !26  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %204 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %205 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %206 = and i32 %197, 255
  %207 = uitofp i32 %206 to float
  %208 = lshr i32 %197, 8
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = lshr i32 %197, 16
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fadd float %200, -5.000000e-01
  %215 = fadd float %201, -5.000000e-01
  %216 = fmul float %214, %40
  %217 = fmul float %215, %41
  %218 = fsub float %216, %217
  %219 = fmul float %214, %41
  %220 = fmul float %215, %40
  %221 = fadd float %220, %219
  %222 = fadd float %218, 5.000000e-01
  %223 = fadd float %221, 5.000000e-01
  %224 = fadd float %222, %52
  %225 = fadd float %223, %53
  %226 = lshr i32 %204, 30
  %227 = and i32 %204, 1023
  %228 = uitofp i32 %227 to float
  %229 = fdiv float %228, 1.023000e+03
  %230 = lshr i32 %204, 10
  %231 = and i32 %230, 1023
  %232 = uitofp i32 %231 to float
  %233 = fdiv float %232, 1.023000e+03
  %234 = lshr i32 %204, 20
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

; <label>:252                                     ; preds = %173
  %253 = icmp eq i32 %226, 1
  br i1 %253, label %258, label %254

; <label>:254                                     ; preds = %252
  %255 = icmp eq i32 %226, 2
  %256 = select i1 %255, float %250, float %246
  %257 = select i1 %255, float %246, float %250
  br label %258

; <label>:258                                     ; preds = %254, %252, %173
  %259 = phi float [ %250, %173 ], [ %244, %252 ], [ %244, %254 ]
  %260 = phi float [ %244, %173 ], [ %250, %252 ], [ %245, %254 ]
  %261 = phi float [ %245, %173 ], [ %245, %252 ], [ %256, %254 ]
  %262 = phi float [ %246, %173 ], [ %246, %252 ], [ %257, %254 ]
  %263 = fmul float %259, 2.000000e+00
  %264 = fmul float %263, %261
  %265 = fmul float %260, 2.000000e+00
  %266 = fmul float %265, %262
  %267 = fadd float %264, %266
  %268 = fmul float %265, %261
  %269 = fmul float %263, %262
  %270 = fsub float %268, %269
  %271 = fmul float %259, %263
  %272 = fsub float 1.000000e+00, %271
  %273 = fmul float %260, %265
  %274 = fsub float %272, %273
  %275 = and i32 %205, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275), !dx.precise !26  ; LegacyF16ToF32(value)
  %277 = lshr i32 %205, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277), !dx.precise !26  ; LegacyF16ToF32(value)
  %279 = fmul float %5, %8
  %280 = fmul float %5, %9
  %281 = fmul float %5, %10
  %282 = fmul float %6, %109
  %283 = fmul float %6, %110
  %284 = fmul float %6, %111
  %285 = fadd float %279, %282
  %286 = fadd float %280, %283
  %287 = fadd float %281, %284
  %288 = fmul float %7, %194
  %289 = fmul float %7, %195
  %290 = fmul float %7, %196
  %291 = fadd float %285, %288
  %292 = fadd float %286, %289
  %293 = fadd float %287, %290
  %294 = fmul fast float %22, %5
  %295 = fmul fast float %122, %6
  %296 = fmul fast float %207, %7
  %297 = fadd fast float %295, %294
  %298 = fadd fast float %297, %296
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = fmul fast float %25, %5
  %301 = fmul fast float %125, %6
  %302 = fmul fast float %210, %7
  %303 = fadd fast float %301, %300
  %304 = fadd fast float %303, %302
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = fmul fast float %28, %5
  %307 = fmul fast float %128, %6
  %308 = fmul fast float %213, %7
  %309 = fadd fast float %307, %306
  %310 = fadd fast float %309, %308
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = fmul float %5, %12
  %313 = fmul float %5, %13
  %314 = fmul float %6, %113
  %315 = fmul float %6, %114
  %316 = fadd float %312, %314
  %317 = fadd float %313, %315
  %318 = fmul float %7, %198
  %319 = fmul float %7, %199
  %320 = fadd float %316, %318
  %321 = fadd float %317, %319
  %322 = fmul float %5, %54
  %323 = fmul float %5, %55
  %324 = fmul float %6, %139
  %325 = fmul float %6, %140
  %326 = fadd float %322, %324
  %327 = fadd float %323, %325
  %328 = fmul float %7, %224
  %329 = fmul float %7, %225
  %330 = fadd float %326, %328
  %331 = fadd float %327, %329
  %332 = fmul float %5, %16
  %333 = fmul float %5, %17
  %334 = fmul float %6, %117
  %335 = fmul float %6, %118
  %336 = fadd float %332, %334
  %337 = fadd float %333, %335
  %338 = fmul float %7, %202
  %339 = fmul float %7, %203
  %340 = fadd float %336, %338
  %341 = fadd float %337, %339
  %342 = fmul float %5, %97
  %343 = fmul float %5, %100
  %344 = fmul float %5, %104
  %345 = fmul float %6, %182
  %346 = fmul float %6, %185
  %347 = fmul float %6, %189
  %348 = fadd float %342, %345
  %349 = fadd float %343, %346
  %350 = fadd float %344, %347
  %351 = fmul float %7, %267
  %352 = fmul float %7, %270
  %353 = fmul float %7, %274
  %354 = fadd float %348, %351
  %355 = fadd float %349, %352
  %356 = fadd float %350, %353
  %357 = fmul float %5, %106
  %358 = fmul float %6, %191
  %359 = fadd float %357, %358
  %360 = fmul float %7, %276
  %361 = fadd float %359, %360
  %362 = fmul float %5, %108
  %363 = fmul float %6, %193
  %364 = fadd float %362, %363
  %365 = fmul float %7, %278
  %366 = fadd float %364, %365
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fsub float %291, %368
  %372 = fsub float %292, %369
  %373 = fsub float %293, %370
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %378 = extractvalue %dx.types.CBufRet.f32 %374, 3
  %379 = fmul float %371, %375
  %380 = call float @dx.op.tertiary.f32(i32 46, float %372, float %376, float %379), !dx.precise !26  ; FMad(a,b,c)
  %381 = call float @dx.op.tertiary.f32(i32 46, float %373, float %377, float %380), !dx.precise !26  ; FMad(a,b,c)
  %382 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %378, float %381), !dx.precise !26  ; FMad(a,b,c)
  %383 = call float @dx.op.binary.f32(i32 35, float %382, float 0x3F1A36E2E0000000), !dx.precise !26  ; FMax(a,b)
  %384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %385 = extractvalue %dx.types.CBufRet.f32 %384, 0
  %386 = extractvalue %dx.types.CBufRet.f32 %384, 1
  %387 = extractvalue %dx.types.CBufRet.f32 %384, 2
  %388 = extractvalue %dx.types.CBufRet.f32 %384, 3
  %389 = fmul float %385, 0.000000e+00
  %390 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %386, float %389), !dx.precise !26  ; FMad(a,b,c)
  %391 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %387, float %390), !dx.precise !26  ; FMad(a,b,c)
  %392 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %388, float %391), !dx.precise !26  ; FMad(a,b,c)
  %393 = fdiv float %383, %392
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = fdiv float %393, %395
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 264, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 1
  %399 = bitcast i32 %398 to float
  %400 = extractvalue %dx.types.ResRet.i32 %397, 0
  %401 = bitcast i32 %400 to float
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 396, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = add i32 %403, 0
  %405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %406 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %405, i32 0)  ; GetDimensions(handle,mipLevel)
  %407 = extractvalue %dx.types.Dimensions %406, 0
  %408 = sitofp i32 %407 to float
  %409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 144)  ; CBufferLoadLegacy(handle,regIndex)
  %410 = extractvalue %dx.types.CBufRet.f32 %409, 2
  %411 = call float @dx.op.unary.f32(i32 6, float %410), !dx.precise !26  ; FAbs(value)
  %412 = fmul float %361, %411
  %413 = fcmp olt float %410, 0.000000e+00
  %414 = fmul float %366, 2.560000e+02
  %415 = fdiv float %412, %414
  %416 = select i1 %413, float %415, float %412
  %417 = fmul float %366, %408
  %418 = fmul float %396, %417
  %419 = call float @dx.op.unary.f32(i32 23, float %418), !dx.precise !26  ; Log(value)
  %420 = extractvalue %dx.types.CBufRet.f32 %409, 1
  %421 = fadd float %419, %420
  %422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %405, %dx.types.Handle %2, float %340, float %341, float undef, float undef, i32 0, i32 0, i32 undef, float %421)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = fmul float %401, %423
  %425 = fadd float %399, %424
  %426 = fmul float %416, %425
  %427 = fadd float %426, 0.000000e+00
  %428 = call float @dx.op.dot3.f32(i32 55, float %354, float %355, float %356, float %354, float %355, float %356), !dx.precise !26  ; Dot3(ax,ay,az,bx,by,bz)
  %429 = call float @dx.op.unary.f32(i32 25, float %428), !dx.precise !26  ; Rsqrt(value)
  %430 = fmul float %354, %429
  %431 = fmul float %355, %429
  %432 = fmul float %356, %429
  %433 = fmul float %430, %427
  %434 = fmul float %431, %427
  %435 = fmul float %432, %427
  %436 = fadd float %291, %433
  %437 = fadd float %292, %434
  %438 = fadd float %293, %435
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 2
  %443 = fsub float %436, %440
  %444 = fsub float %437, %441
  %445 = fsub float %438, %442
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 0
  %448 = extractvalue %dx.types.CBufRet.f32 %446, 1
  %449 = extractvalue %dx.types.CBufRet.f32 %446, 2
  %450 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 2
  %455 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = extractvalue %dx.types.CBufRet.f32 %456, 1
  %459 = extractvalue %dx.types.CBufRet.f32 %456, 2
  %460 = extractvalue %dx.types.CBufRet.f32 %456, 3
  %461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %462 = extractvalue %dx.types.CBufRet.f32 %461, 0
  %463 = extractvalue %dx.types.CBufRet.f32 %461, 1
  %464 = extractvalue %dx.types.CBufRet.f32 %461, 2
  %465 = extractvalue %dx.types.CBufRet.f32 %461, 3
  %466 = fmul float %447, %443
  %467 = call float @dx.op.tertiary.f32(i32 46, float %444, float %448, float %466), !dx.precise !26  ; FMad(a,b,c)
  %468 = call float @dx.op.tertiary.f32(i32 46, float %445, float %449, float %467), !dx.precise !26  ; FMad(a,b,c)
  %469 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %450, float %468), !dx.precise !26  ; FMad(a,b,c)
  %470 = fmul float %452, %443
  %471 = call float @dx.op.tertiary.f32(i32 46, float %444, float %453, float %470), !dx.precise !26  ; FMad(a,b,c)
  %472 = call float @dx.op.tertiary.f32(i32 46, float %445, float %454, float %471), !dx.precise !26  ; FMad(a,b,c)
  %473 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %455, float %472), !dx.precise !26  ; FMad(a,b,c)
  %474 = fmul float %457, %443
  %475 = call float @dx.op.tertiary.f32(i32 46, float %444, float %458, float %474), !dx.precise !26  ; FMad(a,b,c)
  %476 = call float @dx.op.tertiary.f32(i32 46, float %445, float %459, float %475), !dx.precise !26  ; FMad(a,b,c)
  %477 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %460, float %476), !dx.precise !26  ; FMad(a,b,c)
  %478 = fmul float %443, %462
  %479 = call float @dx.op.tertiary.f32(i32 46, float %444, float %463, float %478), !dx.precise !26  ; FMad(a,b,c)
  %480 = call float @dx.op.tertiary.f32(i32 46, float %445, float %464, float %479), !dx.precise !26  ; FMad(a,b,c)
  %481 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %465, float %480), !dx.precise !26  ; FMad(a,b,c)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %469)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %477)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %481)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %299)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %320)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %321)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %341)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 0, float %354)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 1, float %355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 4, i32 0, i8 2, float %356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 5, i32 0, i8 0, i32 %20)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!14 = !{[33 x i32] [i32 17, i32 21, i32 15, i32 15, i32 15, i32 0, i32 112, i32 458767, i32 15, i32 0, i32 256, i32 512, i32 3072, i32 3072, i32 4111, i32 8207, i32 0, i32 0, i32 1048576, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!15 = !{void ()* @ds_main, !"ds_main", !16, !4, !45}
!16 = !{!17, !33, !41}
!17 = !{!18, !21, !23, !25, !27, !29, !30, !31, !32}
!18 = !{i32 0, !"POSITION", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 0, i8 0, !20}
!19 = !{i32 0}
!20 = !{i32 3, i32 7}
!21 = !{i32 1, !"COLOR", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 0, !22}
!22 = !{i32 3, i32 1}
!23 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !24}
!24 = !{i32 3, i32 3}
!25 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !26, i8 2, i32 1, i8 2, i32 2, i8 2, !24}
!26 = !{i32 1}
!27 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !28, i8 2, i32 1, i8 2, i32 3, i8 0, !24}
!28 = !{i32 2}
!29 = !{i32 5, !"TANGENT_FRAME", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 1, !22}
!30 = !{i32 6, !"DISPLACEMENT", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 1, i8 2, !22}
!31 = !{i32 7, !"TESSFACTORS_OFFSET", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 1, i8 3, null}
!32 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 4, i8 0, !22}
!33 = !{!34, !36, !37, !38, !39, !40}
!34 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, !35}
!35 = !{i32 3, i32 15}
!36 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !35}
!37 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 2, i8 0, !35}
!38 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !26, i8 2, i32 1, i8 4, i32 3, i8 0, !35}
!39 = !{i32 4, !"NORMAL", i8 9, i8 0, !19, i8 2, i32 1, i8 3, i32 4, i8 0, !20}
!40 = !{i32 5, !"TRANSIENT_INDEX", i8 5, i8 0, !19, i8 1, i32 1, i8 1, i32 5, i8 0, !22}
!41 = !{!42, !44}
!42 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !43, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!43 = !{i32 0, i32 1, i32 2}
!44 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !19, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!45 = !{i32 0, i64 16, i32 2, !46}
!46 = !{i32 2, i32 3}

