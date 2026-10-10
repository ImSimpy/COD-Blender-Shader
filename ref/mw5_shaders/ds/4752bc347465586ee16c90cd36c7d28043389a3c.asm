;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; TEXCOORD                 0   xyz         0     NONE   float   xy  
; TEXCOORD                 2   x           1     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; POS                      0   xyz         1     NONE   float   xyz 
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; TEXCOORDS                6   xy          3     NONE   float   xy  
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
; shader hash: 98967044779412716a08cfaf604b6cc9
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
; TEXCOORD                 0                 linear       
; TEXCOORD                 2        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; POS                      0                 linear       
; TEXCOORDS                0                 linear       
; TEXCOORDS                6                 linear       
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
;   [144 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [36 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s2     1
;                                   sampler      NA          NA      S2             s5     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture    byte         r/o      T1     t41,space1     1
;                                   texture    byte         r/o      T2     t42,space1     1
;                                   texture    byte         r/o      T3     t36,space1     1
;                                   texture    byte         r/o      T4     t35,space1     1
;
;
; ViewId state:
;
; Number of inputs: 5, outputs: 14, patchconst: 13
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1 }
;   output 1 depends on inputs: { 0, 1 }
;   output 2 depends on inputs: { 0, 1 }
;   output 3 depends on inputs: { 0, 1 }
;   output 4 depends on inputs: { 0 }
;   output 5 depends on inputs: { 1 }
;   output 6 depends on inputs: { 0, 1 }
;   output 10 depends on inputs: { 0, 1 }
;   output 11 depends on inputs: { 0, 1 }
;   output 12 depends on inputs: { 0 }
;   output 13 depends on inputs: { 1 }
; PCInputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%superterrainConstantBuffer = type { %struct.GfxTerrainInstanceData }
%struct.GfxTerrainInstanceData = type { %struct.GfxBaseInstanceData, i32 }
%struct.GfxBaseInstanceData = type { <4 x float>, <3 x i32>, float }
%struct.SamplerState = type { i32 }

define void @ds_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call float @dx.op.domainLocation.f32(i32 105, i8 0)  ; DomainLocation(component)
  %11 = call float @dx.op.domainLocation.f32(i32 105, i8 1)  ; DomainLocation(component)
  %12 = call float @dx.op.domainLocation.f32(i32 105, i8 2)  ; DomainLocation(component)
  %13 = alloca [4 x i32], align 4
  %14 = alloca [4 x i32], align 4
  %15 = alloca [4 x i32], align 4
  %16 = alloca [4 x i32], align 4
  %17 = alloca [4 x i32], align 4
  %18 = alloca [4 x i32], align 4
  %19 = alloca [4 x i32], align 4
  %20 = alloca [4 x i32], align 4
  %21 = alloca [4 x i32], align 4
  %22 = alloca [4 x i32], align 4
  %23 = alloca [4 x i32], align 4
  %24 = alloca [4 x i32], align 4
  %25 = alloca [4 x i32], align 4
  %26 = alloca [4 x i32], align 4
  %27 = alloca [4 x i32], align 4
  %28 = alloca [4 x i32], align 4
  %29 = alloca [4 x float], align 4
  %30 = alloca [4 x float], align 4
  %31 = alloca [4 x float], align 4
  %32 = alloca [4 x float], align 4
  %33 = alloca [4 x float], align 4
  %34 = alloca [4 x float], align 4
  %35 = alloca [4 x float], align 4
  %36 = alloca [4 x float], align 4
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 0)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = fmul fast float %37, %10
  %40 = fmul fast float %38, %10
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 1)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = fmul fast float %41, %11
  %44 = fmul fast float %42, %11
  %45 = fadd fast float %43, %39
  %46 = fadd fast float %44, %40
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 2)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = fmul fast float %47, %12
  %50 = fmul fast float %48, %12
  %51 = fadd fast float %45, %49
  %52 = fadd fast float %46, %50
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 0
  %55 = mul i32 %54, 204
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.i32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.i32 %59, 1
  %62 = bitcast float %57 to i32
  %63 = bitcast float %58 to i32
  %64 = sub i32 %60, %62
  %65 = sub i32 %61, %63
  %66 = sitofp i32 %64 to float
  %67 = sitofp i32 %65 to float
  %68 = fmul fast float %66, 0x3F30000000000000
  %69 = fmul fast float %67, 0x3F30000000000000
  %70 = fadd fast float %68, %51
  %71 = fadd fast float %69, %52
  %72 = add i32 %55, 64
  %73 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = bitcast i32 %74 to float
  %76 = extractvalue %dx.types.ResRet.i32 %73, 1
  %77 = bitcast i32 %76 to float
  %78 = extractvalue %dx.types.ResRet.i32 %73, 2
  %79 = bitcast i32 %78 to float
  %80 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float 1.000000e+00, float %75, float %77, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = add i32 %55, 80
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 3
  %84 = bitcast i32 %83 to float
  %85 = add i32 %55, 96
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = bitcast i32 %87 to float
  %89 = extractvalue %dx.types.ResRet.i32 %86, 1
  %90 = bitcast i32 %89 to float
  %91 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float 1.000000e+00, float %84, float %88, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %92 = add i32 %55, 176
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 2
  %95 = lshr i32 %94, 24
  %96 = and i32 %95, 7
  %97 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.i32 %97, 3
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %114, !dx.controlflow.hints !43

; <label>:100                                     ; preds = %0
  %101 = add nuw nsw i32 %96, 282
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %101)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %105 = fdiv fast float 5.000000e-01, %103
  %106 = fmul fast float %105, 2.000000e+00
  %107 = fsub fast float 1.000000e+00, %106
  %108 = fmul fast float %107, %80
  %109 = fmul fast float %107, %91
  %110 = fadd fast float %108, %105
  %111 = fadd fast float %109, %105
  %112 = fmul fast float %110, %104
  %113 = fmul fast float %111, %104
  br label %114

; <label>:114                                     ; preds = %100, %0
  %115 = phi float [ %112, %100 ], [ %80, %0 ]
  %116 = phi float [ %113, %100 ], [ %91, %0 ]
  %117 = add i32 %55, 160
  %118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.i32 %118, 1
  %120 = bitcast i32 %119 to float
  %121 = extractvalue %dx.types.ResRet.i32 %118, 2
  %122 = bitcast i32 %121 to float
  %123 = extractvalue %dx.types.ResRet.i32 %118, 3
  %124 = bitcast i32 %123 to float
  %125 = extractvalue %dx.types.ResRet.i32 %93, 0
  %126 = bitcast i32 %125 to float
  br i1 %99, label %451, label %127, !dx.controlflow.hints !44

; <label>:127                                     ; preds = %114
  %128 = add i32 %55, 128
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 1
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = fadd fast float %132, %70
  %135 = fadd fast float %133, %71
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.i32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.i32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.i32 %144, 2
  %148 = extractvalue %dx.types.CBufRet.i32 %144, 3
  %149 = mul i32 %147, %147
  %150 = fadd fast float %137, 0xBF847AE140000000
  %151 = fadd fast float %138, 0xBF847AE140000000
  %152 = fsub fast float %134, %140
  %153 = fsub fast float %135, %141
  %154 = call float @dx.op.binary.f32(i32 35, float %152, float 0.000000e+00)  ; FMax(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %153, float 0.000000e+00)  ; FMax(a,b)
  %156 = call float @dx.op.binary.f32(i32 36, float %154, float %150)  ; FMin(a,b)
  %157 = call float @dx.op.binary.f32(i32 36, float %155, float %151)  ; FMin(a,b)
  %158 = fdiv fast float %156, %142
  %159 = fdiv fast float %157, %143
  %160 = fptoui float %158 to i32
  %161 = fptoui float %159 to i32
  %162 = mul i32 %161, %145
  %163 = add i32 %162, %160
  %164 = lshr i32 %163, 1
  %165 = shl i32 %164, 2
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = shl i32 %163, 4
  %169 = and i32 %168, 16
  %170 = lshr i32 %167, %169
  %171 = and i32 %170, 255
  %172 = lshr i32 %170, 8
  %173 = and i32 %172, 31
  %174 = shl i32 1, %173
  %175 = uitofp i32 %174 to float
  %176 = fmul fast float %175, %156
  %177 = fdiv fast float %176, %137
  %178 = fmul fast float %175, %157
  %179 = fdiv fast float %178, %138
  %180 = call float @dx.op.unary.f32(i32 22, float %177)  ; Frc(value)
  %181 = call float @dx.op.unary.f32(i32 22, float %179)  ; Frc(value)
  %182 = uitofp i32 %146 to float
  %183 = fmul fast float %180, %182
  %184 = fmul fast float %181, %182
  %185 = uitofp i32 %148 to float
  %186 = fadd fast float %183, %185
  %187 = fadd fast float %184, %185
  %188 = mul i32 %149, %171
  %189 = fadd fast float %186, -1.000000e+00
  %190 = fadd fast float %187, -1.000000e+00
  %191 = call float @dx.op.unary.f32(i32 22, float %189)  ; Frc(value)
  %192 = fptoui float %189 to i32
  %193 = fptoui float %187 to i32
  %194 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 0
  %195 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  store i32 %193, i32* %195, align 4
  %196 = add i32 %192, 1
  %197 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 1
  %198 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 1
  store i32 %196, i32* %197, align 4
  store i32 %193, i32* %198, align 4
  %199 = add i32 %193, 1
  %200 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 2
  %201 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 2
  store i32 %192, i32* %200, align 4
  store i32 %199, i32* %201, align 4
  %202 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 3
  %203 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 3
  store i32 %196, i32* %202, align 4
  store i32 %199, i32* %203, align 4
  %204 = add i32 %147, -1
  br label %205

; <label>:205                                     ; preds = %228, %127
  %206 = phi i32 [ %193, %127 ], [ %232, %228 ]
  %207 = phi i32 [ %192, %127 ], [ %230, %228 ]
  %208 = phi i32 [ 0, %127 ], [ %226, %228 ]
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %207, i32 %204)  ; UMin(a,b)
  %210 = call i32 @dx.op.binary.i32(i32 40, i32 %206, i32 %204)  ; UMin(a,b)
  %211 = mul i32 %210, %147
  %212 = add i32 %209, %188
  %213 = add i32 %212, %211
  %214 = lshr i32 %213, 1
  %215 = shl i32 %214, 2
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %213, 4
  %219 = and i32 %218, 16
  %220 = lshr i32 %217, %219
  %221 = and i32 %220, 65535
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3EF0002000000000
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 %208
  store float %224, float* %225, align 4, !tbaa !45, !noalias !49
  %226 = add nuw nsw i32 %208, 1
  %227 = icmp eq i32 %226, 4
  br i1 %227, label %233, label %228

; <label>:228                                     ; preds = %205
  %229 = getelementptr [4 x i32], [4 x i32]* %21, i32 0, i32 %226
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr [4 x i32], [4 x i32]* %22, i32 0, i32 %226
  %232 = load i32, i32* %231, align 4
  br label %205

; <label>:233                                     ; preds = %205
  %234 = bitcast i32 %130 to float
  %235 = fadd fast float %186, 1.000000e+00
  %236 = fadd fast float %187, 1.000000e+00
  %237 = call float @dx.op.unary.f32(i32 22, float %187)  ; Frc(value)
  %238 = fsub fast float 1.000000e+00, %191
  %239 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 0
  %240 = load float, float* %239, align 4, !tbaa !45, !noalias !49
  %241 = fmul fast float %240, %238
  %242 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 1
  %243 = load float, float* %242, align 4, !tbaa !45, !noalias !49
  %244 = fmul fast float %243, %191
  %245 = fadd fast float %244, %241
  %246 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 2
  %247 = load float, float* %246, align 4, !tbaa !45, !noalias !49
  %248 = getelementptr inbounds [4 x float], [4 x float]* %36, i32 0, i32 3
  %249 = load float, float* %248, align 4, !tbaa !45, !noalias !49
  %250 = fmul fast float %249, %191
  %251 = fsub fast float 1.000000e+00, %237
  %252 = fmul fast float %245, %251
  %253 = call float @dx.op.unary.f32(i32 22, float %235)  ; Frc(value)
  %254 = fptoui float %235 to i32
  %255 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 0
  %256 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 0
  store i32 %254, i32* %255, align 4
  store i32 %193, i32* %256, align 4
  %257 = add i32 %254, 1
  %258 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 1
  %259 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 1
  store i32 %257, i32* %258, align 4
  store i32 %193, i32* %259, align 4
  %260 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 2
  %261 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 2
  store i32 %254, i32* %260, align 4
  store i32 %199, i32* %261, align 4
  %262 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 3
  %263 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 3
  store i32 %257, i32* %262, align 4
  store i32 %199, i32* %263, align 4
  br label %264

; <label>:264                                     ; preds = %287, %233
  %265 = phi i32 [ %193, %233 ], [ %291, %287 ]
  %266 = phi i32 [ %254, %233 ], [ %289, %287 ]
  %267 = phi i32 [ 0, %233 ], [ %285, %287 ]
  %268 = call i32 @dx.op.binary.i32(i32 40, i32 %266, i32 %204)  ; UMin(a,b)
  %269 = call i32 @dx.op.binary.i32(i32 40, i32 %265, i32 %204)  ; UMin(a,b)
  %270 = mul i32 %269, %147
  %271 = add i32 %268, %188
  %272 = add i32 %271, %270
  %273 = lshr i32 %272, 1
  %274 = shl i32 %273, 2
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %272, 4
  %278 = and i32 %277, 16
  %279 = lshr i32 %276, %278
  %280 = and i32 %279, 65535
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3EF0002000000000
  %283 = call float @dx.op.unary.f32(i32 7, float %282)  ; Saturate(value)
  %284 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 %267
  store float %283, float* %284, align 4, !tbaa !45, !noalias !49
  %285 = add nuw nsw i32 %267, 1
  %286 = icmp eq i32 %285, 4
  br i1 %286, label %292, label %287

; <label>:287                                     ; preds = %264
  %288 = getelementptr [4 x i32], [4 x i32]* %23, i32 0, i32 %285
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr [4 x i32], [4 x i32]* %24, i32 0, i32 %285
  %291 = load i32, i32* %290, align 4
  br label %264

; <label>:292                                     ; preds = %264
  %293 = fmul fast float %247, %238
  %294 = fadd fast float %250, %293
  %295 = fmul fast float %294, %237
  %296 = fsub fast float 1.000000e+00, %253
  %297 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 0
  %298 = load float, float* %297, align 4, !tbaa !45, !noalias !49
  %299 = fmul fast float %298, %296
  %300 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 1
  %301 = load float, float* %300, align 4, !tbaa !45, !noalias !49
  %302 = fmul fast float %301, %253
  %303 = fadd fast float %302, %299
  %304 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 2
  %305 = load float, float* %304, align 4, !tbaa !45, !noalias !49
  %306 = getelementptr inbounds [4 x float], [4 x float]* %35, i32 0, i32 3
  %307 = load float, float* %306, align 4, !tbaa !45, !noalias !49
  %308 = fmul fast float %307, %253
  %309 = fmul fast float %303, %251
  %310 = call float @dx.op.unary.f32(i32 22, float %186)  ; Frc(value)
  %311 = fptoui float %186 to i32
  %312 = fptoui float %190 to i32
  %313 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 0
  %314 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 0
  store i32 %311, i32* %313, align 4
  store i32 %312, i32* %314, align 4
  %315 = add i32 %311, 1
  %316 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 1
  %317 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 1
  store i32 %315, i32* %316, align 4
  store i32 %312, i32* %317, align 4
  %318 = add i32 %312, 1
  %319 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 2
  %320 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 2
  store i32 %311, i32* %319, align 4
  store i32 %318, i32* %320, align 4
  %321 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 3
  %322 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 3
  store i32 %315, i32* %321, align 4
  store i32 %318, i32* %322, align 4
  br label %323

; <label>:323                                     ; preds = %346, %292
  %324 = phi i32 [ %312, %292 ], [ %350, %346 ]
  %325 = phi i32 [ %311, %292 ], [ %348, %346 ]
  %326 = phi i32 [ 0, %292 ], [ %344, %346 ]
  %327 = call i32 @dx.op.binary.i32(i32 40, i32 %325, i32 %204)  ; UMin(a,b)
  %328 = call i32 @dx.op.binary.i32(i32 40, i32 %324, i32 %204)  ; UMin(a,b)
  %329 = mul i32 %328, %147
  %330 = add i32 %327, %188
  %331 = add i32 %330, %329
  %332 = lshr i32 %331, 1
  %333 = shl i32 %332, 2
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = shl i32 %331, 4
  %337 = and i32 %336, 16
  %338 = lshr i32 %335, %337
  %339 = and i32 %338, 65535
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3EF0002000000000
  %342 = call float @dx.op.unary.f32(i32 7, float %341)  ; Saturate(value)
  %343 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 %326
  store float %342, float* %343, align 4, !tbaa !45, !noalias !49
  %344 = add nuw nsw i32 %326, 1
  %345 = icmp eq i32 %344, 4
  br i1 %345, label %351, label %346

; <label>:346                                     ; preds = %323
  %347 = getelementptr [4 x i32], [4 x i32]* %19, i32 0, i32 %344
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr [4 x i32], [4 x i32]* %20, i32 0, i32 %344
  %350 = load i32, i32* %349, align 4
  br label %323

; <label>:351                                     ; preds = %323
  %352 = fmul fast float %305, %296
  %353 = fadd fast float %308, %352
  %354 = fmul fast float %353, %237
  %355 = call float @dx.op.unary.f32(i32 22, float %190)  ; Frc(value)
  %356 = fsub fast float 1.000000e+00, %310
  %357 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 0
  %358 = load float, float* %357, align 4, !tbaa !45, !noalias !49
  %359 = fmul fast float %358, %356
  %360 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 1
  %361 = load float, float* %360, align 4, !tbaa !45, !noalias !49
  %362 = fmul fast float %361, %310
  %363 = fadd fast float %362, %359
  %364 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 2
  %365 = load float, float* %364, align 4, !tbaa !45, !noalias !49
  %366 = getelementptr inbounds [4 x float], [4 x float]* %34, i32 0, i32 3
  %367 = load float, float* %366, align 4, !tbaa !45, !noalias !49
  %368 = fmul fast float %367, %310
  %369 = fsub fast float 1.000000e+00, %355
  %370 = fmul fast float %363, %369
  %371 = fptoui float %236 to i32
  %372 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 0
  %373 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 0
  store i32 %311, i32* %372, align 4
  store i32 %371, i32* %373, align 4
  %374 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 1
  %375 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 1
  store i32 %315, i32* %374, align 4
  store i32 %371, i32* %375, align 4
  %376 = add i32 %371, 1
  %377 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 2
  %378 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 2
  store i32 %311, i32* %377, align 4
  store i32 %376, i32* %378, align 4
  %379 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 3
  %380 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 3
  store i32 %315, i32* %379, align 4
  store i32 %376, i32* %380, align 4
  br label %381

; <label>:381                                     ; preds = %404, %351
  %382 = phi i32 [ %371, %351 ], [ %408, %404 ]
  %383 = phi i32 [ %311, %351 ], [ %406, %404 ]
  %384 = phi i32 [ 0, %351 ], [ %402, %404 ]
  %385 = call i32 @dx.op.binary.i32(i32 40, i32 %383, i32 %204)  ; UMin(a,b)
  %386 = call i32 @dx.op.binary.i32(i32 40, i32 %382, i32 %204)  ; UMin(a,b)
  %387 = mul i32 %386, %147
  %388 = add i32 %385, %188
  %389 = add i32 %388, %387
  %390 = lshr i32 %389, 1
  %391 = shl i32 %390, 2
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = shl i32 %389, 4
  %395 = and i32 %394, 16
  %396 = lshr i32 %393, %395
  %397 = and i32 %396, 65535
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3EF0002000000000
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 %384
  store float %400, float* %401, align 4, !tbaa !45, !noalias !49
  %402 = add nuw nsw i32 %384, 1
  %403 = icmp eq i32 %402, 4
  br i1 %403, label %409, label %404

; <label>:404                                     ; preds = %381
  %405 = getelementptr [4 x i32], [4 x i32]* %17, i32 0, i32 %402
  %406 = load i32, i32* %405, align 4
  %407 = getelementptr [4 x i32], [4 x i32]* %18, i32 0, i32 %402
  %408 = load i32, i32* %407, align 4
  br label %381

; <label>:409                                     ; preds = %381
  %410 = fmul fast float %365, %356
  %411 = fadd fast float %368, %410
  %412 = fmul fast float %411, %355
  %413 = call float @dx.op.unary.f32(i32 22, float %236)  ; Frc(value)
  %414 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 0
  %415 = load float, float* %414, align 4, !tbaa !45, !noalias !49
  %416 = fmul fast float %415, %356
  %417 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 1
  %418 = load float, float* %417, align 4, !tbaa !45, !noalias !49
  %419 = fmul fast float %418, %310
  %420 = fadd fast float %419, %416
  %421 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 2
  %422 = load float, float* %421, align 4, !tbaa !45, !noalias !49
  %423 = fmul fast float %422, %356
  %424 = getelementptr inbounds [4 x float], [4 x float]* %33, i32 0, i32 3
  %425 = load float, float* %424, align 4, !tbaa !45, !noalias !49
  %426 = fmul fast float %425, %310
  %427 = fadd fast float %426, %423
  %428 = fsub fast float 1.000000e+00, %413
  %429 = fmul fast float %420, %428
  %430 = fmul fast float %427, %413
  %431 = fmul fast float %137, 2.000000e+00
  %432 = fmul fast float %175, %182
  %433 = fdiv fast float %431, %432
  %434 = fsub fast float -0.000000e+00, %252
  %435 = fsub fast float %434, %295
  %436 = fadd fast float %435, %309
  %437 = fadd fast float %436, %354
  %438 = fmul fast float %138, 2.000000e+00
  %439 = fdiv fast float %438, %432
  %440 = fsub fast float -0.000000e+00, %370
  %441 = fsub fast float %440, %412
  %442 = fadd fast float %441, %429
  %443 = fadd fast float %442, %430
  %444 = fmul fast float %234, %437
  %445 = fmul fast float %444, %439
  %446 = fsub fast float -0.000000e+00, %445
  %447 = fmul fast float %234, %433
  %448 = fmul fast float %447, %443
  %449 = fsub fast float -0.000000e+00, %448
  %450 = fmul fast float %439, %433
  br label %1016

; <label>:451                                     ; preds = %114
  %452 = fsub fast float %70, %120
  %453 = fsub fast float %71, %122
  %454 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float 1.000000e+00, float %84, float %88, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %455 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float 1.000000e+00, float %75, float %77, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = add nuw nsw i32 %96, 282
  %457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %456)  ; CBufferLoadLegacy(handle,regIndex)
  %458 = extractvalue %dx.types.CBufRet.f32 %457, 0
  %459 = extractvalue %dx.types.CBufRet.f32 %457, 2
  %460 = fdiv fast float 5.000000e-01, %458
  %461 = fmul fast float %460, 2.000000e+00
  %462 = fsub fast float 1.000000e+00, %461
  %463 = fmul fast float %462, %455
  %464 = fmul fast float %462, %454
  %465 = fadd fast float %463, %460
  %466 = fadd fast float %464, %460
  %467 = fmul fast float %465, %459
  %468 = fmul fast float %466, %459
  %469 = extractvalue %dx.types.ResRet.i32 %93, 1
  %470 = and i32 %469, 16777215
  %471 = add i32 %470, 0
  %472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %472, %dx.types.Handle %6, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = add i32 %55, 128
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = bitcast i32 %477 to float
  %479 = extractvalue %dx.types.ResRet.i32 %476, 1
  %480 = bitcast i32 %479 to float
  %481 = fmul fast float %480, %474
  %482 = fadd fast float %120, %70
  %483 = fadd fast float %122, %71
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = bitcast i32 %485 to float
  %487 = extractvalue %dx.types.ResRet.i32 %484, 1
  %488 = bitcast i32 %487 to float
  %489 = extractvalue %dx.types.ResRet.i32 %484, 2
  %490 = bitcast i32 %489 to float
  %491 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float 1.000000e+00, float %486, float %488, float %490)  ; Dot3(ax,ay,az,bx,by,bz)
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 3
  %494 = bitcast i32 %493 to float
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = bitcast i32 %496 to float
  %498 = extractvalue %dx.types.ResRet.i32 %495, 1
  %499 = bitcast i32 %498 to float
  %500 = call float @dx.op.dot3.f32(i32 55, float %482, float %483, float 1.000000e+00, float %494, float %497, float %499)  ; Dot3(ax,ay,az,bx,by,bz)
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 3
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %522, !dx.controlflow.hints !43

; <label>:505                                     ; preds = %451
  %506 = extractvalue %dx.types.ResRet.i32 %501, 2
  %507 = lshr i32 %506, 24
  %508 = and i32 %507, 7
  %509 = add nuw nsw i32 %508, 282
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %509)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 0
  %512 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %513 = fdiv fast float 5.000000e-01, %511
  %514 = fmul fast float %513, 2.000000e+00
  %515 = fsub fast float 1.000000e+00, %514
  %516 = fmul fast float %515, %491
  %517 = fmul fast float %515, %500
  %518 = fadd fast float %516, %513
  %519 = fadd fast float %517, %513
  %520 = fmul fast float %518, %512
  %521 = fmul fast float %519, %512
  br label %522

; <label>:522                                     ; preds = %505, %451
  %523 = phi float [ %520, %505 ], [ %491, %451 ]
  %524 = phi float [ %521, %505 ], [ %500, %451 ]
  br i1 %504, label %638, label %525, !dx.controlflow.hints !56

; <label>:525                                     ; preds = %522
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %528 = extractvalue %dx.types.CBufRet.f32 %526, 3
  %529 = fmul fast float %527, %523
  %530 = fmul fast float %528, %524
  %531 = extractvalue %dx.types.CBufRet.f32 %526, 0
  %532 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.i32 %533, 0
  %535 = extractvalue %dx.types.CBufRet.i32 %533, 1
  %536 = extractvalue %dx.types.CBufRet.i32 %533, 2
  %537 = extractvalue %dx.types.CBufRet.i32 %533, 3
  %538 = fadd fast float %527, 0xBF847AE140000000
  %539 = fadd fast float %528, 0xBF847AE140000000
  %540 = call float @dx.op.binary.f32(i32 35, float %529, float 0.000000e+00)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 35, float %530, float 0.000000e+00)  ; FMax(a,b)
  %542 = call float @dx.op.binary.f32(i32 36, float %540, float %538)  ; FMin(a,b)
  %543 = call float @dx.op.binary.f32(i32 36, float %541, float %539)  ; FMin(a,b)
  %544 = fdiv fast float %542, %531
  %545 = fdiv fast float %543, %532
  %546 = fptoui float %544 to i32
  %547 = fptoui float %545 to i32
  %548 = mul i32 %547, %534
  %549 = add i32 %548, %546
  %550 = lshr i32 %549, 1
  %551 = shl i32 %550, 2
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = shl i32 %549, 4
  %555 = and i32 %554, 16
  %556 = lshr i32 %553, %555
  %557 = and i32 %556, 255
  %558 = lshr i32 %556, 8
  %559 = and i32 %558, 31
  %560 = shl i32 1, %559
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, %542
  %563 = fdiv fast float %562, %527
  %564 = fmul fast float %561, %543
  %565 = fdiv fast float %564, %528
  %566 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %567 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %568 = uitofp i32 %535 to float
  %569 = fmul fast float %566, %568
  %570 = fmul fast float %567, %568
  %571 = uitofp i32 %537 to float
  %572 = fadd fast float %569, %571
  %573 = fadd fast float %570, %571
  %574 = mul i32 %557, %536
  %575 = call float @dx.op.unary.f32(i32 22, float %572)  ; Frc(value)
  %576 = fptoui float %572 to i32
  %577 = fptoui float %573 to i32
  %578 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 0
  %579 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 0
  store i32 %576, i32* %578, align 4
  store i32 %577, i32* %579, align 4
  %580 = add i32 %576, 1
  %581 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 1
  %582 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 1
  store i32 %580, i32* %581, align 4
  store i32 %577, i32* %582, align 4
  %583 = add i32 %577, 1
  %584 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 2
  %585 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 2
  store i32 %576, i32* %584, align 4
  store i32 %583, i32* %585, align 4
  %586 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 3
  %587 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 3
  store i32 %580, i32* %586, align 4
  store i32 %583, i32* %587, align 4
  br label %588

; <label>:588                                     ; preds = %612, %525
  %589 = phi i32 [ %577, %525 ], [ %616, %612 ]
  %590 = phi i32 [ %576, %525 ], [ %614, %612 ]
  %591 = phi i32 [ 0, %525 ], [ %610, %612 ]
  %592 = add i32 %536, -1
  %593 = call i32 @dx.op.binary.i32(i32 40, i32 %590, i32 %592)  ; UMin(a,b)
  %594 = call i32 @dx.op.binary.i32(i32 40, i32 %589, i32 %592)  ; UMin(a,b)
  %595 = add i32 %594, %574
  %596 = mul i32 %595, %536
  %597 = add i32 %596, %593
  %598 = lshr i32 %597, 1
  %599 = shl i32 %598, 2
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = shl i32 %597, 4
  %603 = and i32 %602, 16
  %604 = lshr i32 %601, %603
  %605 = and i32 %604, 65535
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3EF0002000000000
  %608 = call float @dx.op.unary.f32(i32 7, float %607)  ; Saturate(value)
  %609 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 %591
  store float %608, float* %609, align 4, !tbaa !45, !noalias !57
  %610 = add nuw nsw i32 %591, 1
  %611 = icmp eq i32 %610, 4
  br i1 %611, label %617, label %612

; <label>:612                                     ; preds = %588
  %613 = getelementptr [4 x i32], [4 x i32]* %15, i32 0, i32 %610
  %614 = load i32, i32* %613, align 4
  %615 = getelementptr [4 x i32], [4 x i32]* %16, i32 0, i32 %610
  %616 = load i32, i32* %615, align 4
  br label %588

; <label>:617                                     ; preds = %588
  %618 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %619 = fsub fast float 1.000000e+00, %575
  %620 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 0
  %621 = load float, float* %620, align 4, !tbaa !45, !noalias !57
  %622 = fmul fast float %621, %619
  %623 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 1
  %624 = load float, float* %623, align 4, !tbaa !45, !noalias !57
  %625 = fmul fast float %624, %575
  %626 = fadd fast float %625, %622
  %627 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 2
  %628 = load float, float* %627, align 4, !tbaa !45, !noalias !57
  %629 = fmul fast float %628, %619
  %630 = getelementptr inbounds [4 x float], [4 x float]* %32, i32 0, i32 3
  %631 = load float, float* %630, align 4, !tbaa !45, !noalias !57
  %632 = fmul fast float %631, %575
  %633 = fadd fast float %632, %629
  %634 = fsub fast float 1.000000e+00, %618
  %635 = fmul fast float %626, %634
  %636 = fmul fast float %633, %618
  %637 = fadd fast float %636, %635
  br label %645

; <label>:638                                     ; preds = %522
  %639 = extractvalue %dx.types.ResRet.i32 %501, 1
  %640 = and i32 %639, 16777215
  %641 = add i32 %640, 0
  %642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %642, %dx.types.Handle %6, float %523, float %524, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  br label %645

; <label>:645                                     ; preds = %638, %617
  %646 = phi float [ %637, %617 ], [ %644, %638 ]
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = bitcast i32 %648 to float
  %650 = extractvalue %dx.types.ResRet.i32 %647, 1
  %651 = bitcast i32 %650 to float
  %652 = fmul fast float %651, %646
  %653 = fsub fast float %70, %124
  %654 = fsub fast float %71, %126
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = bitcast i32 %656 to float
  %658 = extractvalue %dx.types.ResRet.i32 %655, 1
  %659 = bitcast i32 %658 to float
  %660 = extractvalue %dx.types.ResRet.i32 %655, 2
  %661 = bitcast i32 %660 to float
  %662 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float 1.000000e+00, float %657, float %659, float %661)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 3
  %665 = bitcast i32 %664 to float
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = bitcast i32 %667 to float
  %669 = extractvalue %dx.types.ResRet.i32 %666, 1
  %670 = bitcast i32 %669 to float
  %671 = call float @dx.op.dot3.f32(i32 55, float %653, float %654, float 1.000000e+00, float %665, float %668, float %670)  ; Dot3(ax,ay,az,bx,by,bz)
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.i32 %673, 3
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %693, !dx.controlflow.hints !43

; <label>:676                                     ; preds = %645
  %677 = extractvalue %dx.types.ResRet.i32 %672, 2
  %678 = lshr i32 %677, 24
  %679 = and i32 %678, 7
  %680 = add nuw nsw i32 %679, 282
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %680)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 0
  %683 = extractvalue %dx.types.CBufRet.f32 %681, 2
  %684 = fdiv fast float 5.000000e-01, %682
  %685 = fmul fast float %684, 2.000000e+00
  %686 = fsub fast float 1.000000e+00, %685
  %687 = fmul fast float %686, %662
  %688 = fmul fast float %686, %671
  %689 = fadd fast float %687, %684
  %690 = fadd fast float %688, %684
  %691 = fmul fast float %689, %683
  %692 = fmul fast float %690, %683
  br label %693

; <label>:693                                     ; preds = %676, %645
  %694 = phi float [ %691, %676 ], [ %662, %645 ]
  %695 = phi float [ %692, %676 ], [ %671, %645 ]
  br i1 %675, label %809, label %696, !dx.controlflow.hints !56

; <label>:696                                     ; preds = %693
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %699 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %700 = fmul fast float %698, %694
  %701 = fmul fast float %699, %695
  %702 = extractvalue %dx.types.CBufRet.f32 %697, 0
  %703 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.i32 %704, 0
  %706 = extractvalue %dx.types.CBufRet.i32 %704, 1
  %707 = extractvalue %dx.types.CBufRet.i32 %704, 2
  %708 = extractvalue %dx.types.CBufRet.i32 %704, 3
  %709 = fadd fast float %698, 0xBF847AE140000000
  %710 = fadd fast float %699, 0xBF847AE140000000
  %711 = call float @dx.op.binary.f32(i32 35, float %700, float 0.000000e+00)  ; FMax(a,b)
  %712 = call float @dx.op.binary.f32(i32 35, float %701, float 0.000000e+00)  ; FMax(a,b)
  %713 = call float @dx.op.binary.f32(i32 36, float %711, float %709)  ; FMin(a,b)
  %714 = call float @dx.op.binary.f32(i32 36, float %712, float %710)  ; FMin(a,b)
  %715 = fdiv fast float %713, %702
  %716 = fdiv fast float %714, %703
  %717 = fptoui float %715 to i32
  %718 = fptoui float %716 to i32
  %719 = mul i32 %718, %705
  %720 = add i32 %719, %717
  %721 = lshr i32 %720, 1
  %722 = shl i32 %721, 2
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = shl i32 %720, 4
  %726 = and i32 %725, 16
  %727 = lshr i32 %724, %726
  %728 = and i32 %727, 255
  %729 = lshr i32 %727, 8
  %730 = and i32 %729, 31
  %731 = shl i32 1, %730
  %732 = uitofp i32 %731 to float
  %733 = fmul fast float %732, %713
  %734 = fdiv fast float %733, %698
  %735 = fmul fast float %732, %714
  %736 = fdiv fast float %735, %699
  %737 = call float @dx.op.unary.f32(i32 22, float %734)  ; Frc(value)
  %738 = call float @dx.op.unary.f32(i32 22, float %736)  ; Frc(value)
  %739 = uitofp i32 %706 to float
  %740 = fmul fast float %737, %739
  %741 = fmul fast float %738, %739
  %742 = uitofp i32 %708 to float
  %743 = fadd fast float %740, %742
  %744 = fadd fast float %741, %742
  %745 = mul i32 %728, %707
  %746 = call float @dx.op.unary.f32(i32 22, float %743)  ; Frc(value)
  %747 = fptoui float %743 to i32
  %748 = fptoui float %744 to i32
  %749 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 0
  %750 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 0
  store i32 %747, i32* %749, align 4
  store i32 %748, i32* %750, align 4
  %751 = add i32 %747, 1
  %752 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 1
  %753 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 1
  store i32 %751, i32* %752, align 4
  store i32 %748, i32* %753, align 4
  %754 = add i32 %748, 1
  %755 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 2
  %756 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 2
  store i32 %747, i32* %755, align 4
  store i32 %754, i32* %756, align 4
  %757 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 3
  %758 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 3
  store i32 %751, i32* %757, align 4
  store i32 %754, i32* %758, align 4
  br label %759

; <label>:759                                     ; preds = %783, %696
  %760 = phi i32 [ %748, %696 ], [ %787, %783 ]
  %761 = phi i32 [ %747, %696 ], [ %785, %783 ]
  %762 = phi i32 [ 0, %696 ], [ %781, %783 ]
  %763 = add i32 %707, -1
  %764 = call i32 @dx.op.binary.i32(i32 40, i32 %761, i32 %763)  ; UMin(a,b)
  %765 = call i32 @dx.op.binary.i32(i32 40, i32 %760, i32 %763)  ; UMin(a,b)
  %766 = add i32 %765, %745
  %767 = mul i32 %766, %707
  %768 = add i32 %767, %764
  %769 = lshr i32 %768, 1
  %770 = shl i32 %769, 2
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = shl i32 %768, 4
  %774 = and i32 %773, 16
  %775 = lshr i32 %772, %774
  %776 = and i32 %775, 65535
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %777, 0x3EF0002000000000
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 %762
  store float %779, float* %780, align 4, !tbaa !45, !noalias !57
  %781 = add nuw nsw i32 %762, 1
  %782 = icmp eq i32 %781, 4
  br i1 %782, label %788, label %783

; <label>:783                                     ; preds = %759
  %784 = getelementptr [4 x i32], [4 x i32]* %13, i32 0, i32 %781
  %785 = load i32, i32* %784, align 4
  %786 = getelementptr [4 x i32], [4 x i32]* %14, i32 0, i32 %781
  %787 = load i32, i32* %786, align 4
  br label %759

; <label>:788                                     ; preds = %759
  %789 = call float @dx.op.unary.f32(i32 22, float %744)  ; Frc(value)
  %790 = fsub fast float 1.000000e+00, %746
  %791 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 0
  %792 = load float, float* %791, align 4, !tbaa !45, !noalias !57
  %793 = fmul fast float %792, %790
  %794 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 1
  %795 = load float, float* %794, align 4, !tbaa !45, !noalias !57
  %796 = fmul fast float %795, %746
  %797 = fadd fast float %796, %793
  %798 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 2
  %799 = load float, float* %798, align 4, !tbaa !45, !noalias !57
  %800 = fmul fast float %799, %790
  %801 = getelementptr inbounds [4 x float], [4 x float]* %31, i32 0, i32 3
  %802 = load float, float* %801, align 4, !tbaa !45, !noalias !57
  %803 = fmul fast float %802, %746
  %804 = fadd fast float %803, %800
  %805 = fsub fast float 1.000000e+00, %789
  %806 = fmul fast float %797, %805
  %807 = fmul fast float %804, %789
  %808 = fadd fast float %807, %806
  br label %816

; <label>:809                                     ; preds = %693
  %810 = extractvalue %dx.types.ResRet.i32 %672, 1
  %811 = and i32 %810, 16777215
  %812 = add i32 %811, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %813, %dx.types.Handle %6, float %694, float %695, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  br label %816

; <label>:816                                     ; preds = %809, %788
  %817 = phi float [ %808, %788 ], [ %815, %809 ]
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = bitcast i32 %819 to float
  %821 = extractvalue %dx.types.ResRet.i32 %818, 1
  %822 = bitcast i32 %821 to float
  %823 = fmul fast float %822, %817
  %824 = fadd fast float %124, %70
  %825 = fadd fast float %126, %71
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %72, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = bitcast i32 %827 to float
  %829 = extractvalue %dx.types.ResRet.i32 %826, 1
  %830 = bitcast i32 %829 to float
  %831 = extractvalue %dx.types.ResRet.i32 %826, 2
  %832 = bitcast i32 %831 to float
  %833 = call float @dx.op.dot3.f32(i32 55, float %824, float %825, float 1.000000e+00, float %828, float %830, float %832)  ; Dot3(ax,ay,az,bx,by,bz)
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 3
  %836 = bitcast i32 %835 to float
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = bitcast i32 %838 to float
  %840 = extractvalue %dx.types.ResRet.i32 %837, 1
  %841 = bitcast i32 %840 to float
  %842 = call float @dx.op.dot3.f32(i32 55, float %824, float %825, float 1.000000e+00, float %836, float %839, float %841)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.i32 %844, 3
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %864, !dx.controlflow.hints !43

; <label>:847                                     ; preds = %816
  %848 = extractvalue %dx.types.ResRet.i32 %843, 2
  %849 = lshr i32 %848, 24
  %850 = and i32 %849, 7
  %851 = add nuw nsw i32 %850, 282
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %851)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %855 = fdiv fast float 5.000000e-01, %853
  %856 = fmul fast float %855, 2.000000e+00
  %857 = fsub fast float 1.000000e+00, %856
  %858 = fmul fast float %857, %833
  %859 = fmul fast float %857, %842
  %860 = fadd fast float %858, %855
  %861 = fadd fast float %859, %855
  %862 = fmul fast float %860, %854
  %863 = fmul fast float %861, %854
  br label %864

; <label>:864                                     ; preds = %847, %816
  %865 = phi float [ %862, %847 ], [ %833, %816 ]
  %866 = phi float [ %863, %847 ], [ %842, %816 ]
  br i1 %846, label %980, label %867, !dx.controlflow.hints !56

; <label>:867                                     ; preds = %864
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %871 = fmul fast float %869, %865
  %872 = fmul fast float %870, %866
  %873 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %874 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.i32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.i32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.i32 %875, 2
  %879 = extractvalue %dx.types.CBufRet.i32 %875, 3
  %880 = fadd fast float %869, 0xBF847AE140000000
  %881 = fadd fast float %870, 0xBF847AE140000000
  %882 = call float @dx.op.binary.f32(i32 35, float %871, float 0.000000e+00)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 35, float %872, float 0.000000e+00)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %882, float %880)  ; FMin(a,b)
  %885 = call float @dx.op.binary.f32(i32 36, float %883, float %881)  ; FMin(a,b)
  %886 = fdiv fast float %884, %873
  %887 = fdiv fast float %885, %874
  %888 = fptoui float %886 to i32
  %889 = fptoui float %887 to i32
  %890 = mul i32 %889, %876
  %891 = add i32 %890, %888
  %892 = lshr i32 %891, 1
  %893 = shl i32 %892, 2
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = shl i32 %891, 4
  %897 = and i32 %896, 16
  %898 = lshr i32 %895, %897
  %899 = and i32 %898, 255
  %900 = lshr i32 %898, 8
  %901 = and i32 %900, 31
  %902 = shl i32 1, %901
  %903 = uitofp i32 %902 to float
  %904 = fmul fast float %903, %884
  %905 = fdiv fast float %904, %869
  %906 = fmul fast float %903, %885
  %907 = fdiv fast float %906, %870
  %908 = call float @dx.op.unary.f32(i32 22, float %905)  ; Frc(value)
  %909 = call float @dx.op.unary.f32(i32 22, float %907)  ; Frc(value)
  %910 = uitofp i32 %877 to float
  %911 = fmul fast float %908, %910
  %912 = fmul fast float %909, %910
  %913 = uitofp i32 %879 to float
  %914 = fadd fast float %911, %913
  %915 = fadd fast float %912, %913
  %916 = mul i32 %899, %878
  %917 = call float @dx.op.unary.f32(i32 22, float %914)  ; Frc(value)
  %918 = fptoui float %914 to i32
  %919 = fptoui float %915 to i32
  %920 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 0
  %921 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 0
  store i32 %918, i32* %920, align 4
  store i32 %919, i32* %921, align 4
  %922 = add i32 %918, 1
  %923 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 1
  %924 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 1
  store i32 %922, i32* %923, align 4
  store i32 %919, i32* %924, align 4
  %925 = add i32 %919, 1
  %926 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 2
  %927 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 2
  store i32 %918, i32* %926, align 4
  store i32 %925, i32* %927, align 4
  %928 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 3
  %929 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 3
  store i32 %922, i32* %928, align 4
  store i32 %925, i32* %929, align 4
  br label %930

; <label>:930                                     ; preds = %954, %867
  %931 = phi i32 [ %919, %867 ], [ %958, %954 ]
  %932 = phi i32 [ %918, %867 ], [ %956, %954 ]
  %933 = phi i32 [ 0, %867 ], [ %952, %954 ]
  %934 = add i32 %878, -1
  %935 = call i32 @dx.op.binary.i32(i32 40, i32 %932, i32 %934)  ; UMin(a,b)
  %936 = call i32 @dx.op.binary.i32(i32 40, i32 %931, i32 %934)  ; UMin(a,b)
  %937 = add i32 %936, %916
  %938 = mul i32 %937, %878
  %939 = add i32 %938, %935
  %940 = lshr i32 %939, 1
  %941 = shl i32 %940, 2
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = shl i32 %939, 4
  %945 = and i32 %944, 16
  %946 = lshr i32 %943, %945
  %947 = and i32 %946, 65535
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3EF0002000000000
  %950 = call float @dx.op.unary.f32(i32 7, float %949)  ; Saturate(value)
  %951 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 %933
  store float %950, float* %951, align 4, !tbaa !45, !noalias !57
  %952 = add nuw nsw i32 %933, 1
  %953 = icmp eq i32 %952, 4
  br i1 %953, label %959, label %954

; <label>:954                                     ; preds = %930
  %955 = getelementptr [4 x i32], [4 x i32]* %27, i32 0, i32 %952
  %956 = load i32, i32* %955, align 4
  %957 = getelementptr [4 x i32], [4 x i32]* %28, i32 0, i32 %952
  %958 = load i32, i32* %957, align 4
  br label %930

; <label>:959                                     ; preds = %930
  %960 = call float @dx.op.unary.f32(i32 22, float %915)  ; Frc(value)
  %961 = fsub fast float 1.000000e+00, %917
  %962 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 0
  %963 = load float, float* %962, align 4, !tbaa !45, !noalias !57
  %964 = fmul fast float %963, %961
  %965 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 1
  %966 = load float, float* %965, align 4, !tbaa !45, !noalias !57
  %967 = fmul fast float %966, %917
  %968 = fadd fast float %967, %964
  %969 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 2
  %970 = load float, float* %969, align 4, !tbaa !45, !noalias !57
  %971 = fmul fast float %970, %961
  %972 = getelementptr inbounds [4 x float], [4 x float]* %30, i32 0, i32 3
  %973 = load float, float* %972, align 4, !tbaa !45, !noalias !57
  %974 = fmul fast float %973, %917
  %975 = fadd fast float %974, %971
  %976 = fsub fast float 1.000000e+00, %960
  %977 = fmul fast float %968, %976
  %978 = fmul fast float %975, %960
  %979 = fadd fast float %978, %977
  br label %987

; <label>:980                                     ; preds = %864
  %981 = extractvalue %dx.types.ResRet.i32 %843, 1
  %982 = and i32 %981, 16777215
  %983 = add i32 %982, 0
  %984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %984, %dx.types.Handle %6, float %865, float %866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  br label %987

; <label>:987                                     ; preds = %980, %959
  %988 = phi float [ %979, %959 ], [ %986, %980 ]
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = bitcast i32 %990 to float
  %992 = extractvalue %dx.types.ResRet.i32 %989, 1
  %993 = bitcast i32 %992 to float
  %994 = fmul fast float %993, %988
  %995 = fmul fast float %124, 2.000000e+00
  %996 = fmul fast float %126, 2.000000e+00
  %997 = fsub fast float -0.000000e+00, %820
  %998 = fsub fast float %997, %823
  %999 = fadd fast float %998, %991
  %1000 = fadd fast float %999, %994
  %1001 = fmul fast float %120, 2.000000e+00
  %1002 = fmul fast float %122, 2.000000e+00
  %1003 = fsub fast float -0.000000e+00, %478
  %1004 = fsub fast float %1003, %481
  %1005 = fadd fast float %1004, %649
  %1006 = fadd fast float %1005, %652
  %1007 = fmul fast float %1000, %1002
  %1008 = fmul fast float %1006, %996
  %1009 = fsub fast float %1007, %1008
  %1010 = fmul fast float %1006, %995
  %1011 = fmul fast float %1000, %1001
  %1012 = fsub fast float %1010, %1011
  %1013 = fmul fast float %996, %1001
  %1014 = fmul fast float %995, %1002
  %1015 = fsub fast float %1013, %1014
  br label %1016

; <label>:1016                                    ; preds = %987, %409
  %1017 = phi float [ %446, %409 ], [ %1009, %987 ]
  %1018 = phi float [ %449, %409 ], [ %1012, %987 ]
  %1019 = phi float [ %450, %409 ], [ %1015, %987 ]
  %1020 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1018, float %1019, float %1017, float %1018, float %1019)  ; Dot3(ax,ay,az,bx,by,bz)
  %1021 = call float @dx.op.unary.f32(i32 25, float %1020)  ; Rsqrt(value)
  %1022 = fmul fast float %1021, %1017
  %1023 = fmul fast float %1021, %1018
  %1024 = fmul fast float %1021, %1019
  %1025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.i32 %1025, 3
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1141, label %1028, !dx.controlflow.hints !58

; <label>:1028                                    ; preds = %1016
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1032 = fmul fast float %1030, %115
  %1033 = fmul fast float %1031, %116
  %1034 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.i32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.i32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.i32 %1036, 2
  %1040 = extractvalue %dx.types.CBufRet.i32 %1036, 3
  %1041 = fadd fast float %1030, 0xBF847AE140000000
  %1042 = fadd fast float %1031, 0xBF847AE140000000
  %1043 = call float @dx.op.binary.f32(i32 35, float %1032, float 0.000000e+00)  ; FMax(a,b)
  %1044 = call float @dx.op.binary.f32(i32 35, float %1033, float 0.000000e+00)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1043, float %1041)  ; FMin(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1044, float %1042)  ; FMin(a,b)
  %1047 = fdiv fast float %1045, %1034
  %1048 = fdiv fast float %1046, %1035
  %1049 = fptoui float %1047 to i32
  %1050 = fptoui float %1048 to i32
  %1051 = mul i32 %1050, %1037
  %1052 = add i32 %1051, %1049
  %1053 = lshr i32 %1052, 1
  %1054 = shl i32 %1053, 2
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = shl i32 %1052, 4
  %1058 = and i32 %1057, 16
  %1059 = lshr i32 %1056, %1058
  %1060 = and i32 %1059, 255
  %1061 = lshr i32 %1059, 8
  %1062 = and i32 %1061, 31
  %1063 = shl i32 1, %1062
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, %1045
  %1066 = fdiv fast float %1065, %1030
  %1067 = fmul fast float %1064, %1046
  %1068 = fdiv fast float %1067, %1031
  %1069 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1070 = call float @dx.op.unary.f32(i32 22, float %1068)  ; Frc(value)
  %1071 = uitofp i32 %1038 to float
  %1072 = fmul fast float %1069, %1071
  %1073 = fmul fast float %1070, %1071
  %1074 = uitofp i32 %1040 to float
  %1075 = fadd fast float %1072, %1074
  %1076 = fadd fast float %1073, %1074
  %1077 = mul i32 %1060, %1039
  %1078 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1079 = fptoui float %1075 to i32
  %1080 = fptoui float %1076 to i32
  %1081 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 0
  %1082 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 0
  store i32 %1079, i32* %1081, align 4
  store i32 %1080, i32* %1082, align 4
  %1083 = add i32 %1079, 1
  %1084 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 1
  %1085 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 1
  store i32 %1083, i32* %1084, align 4
  store i32 %1080, i32* %1085, align 4
  %1086 = add i32 %1080, 1
  %1087 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 2
  %1088 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 2
  store i32 %1079, i32* %1087, align 4
  store i32 %1086, i32* %1088, align 4
  %1089 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 3
  %1090 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 3
  store i32 %1083, i32* %1089, align 4
  store i32 %1086, i32* %1090, align 4
  br label %1091

; <label>:1091                                    ; preds = %1115, %1028
  %1092 = phi i32 [ %1080, %1028 ], [ %1119, %1115 ]
  %1093 = phi i32 [ %1079, %1028 ], [ %1117, %1115 ]
  %1094 = phi i32 [ 0, %1028 ], [ %1113, %1115 ]
  %1095 = add i32 %1039, -1
  %1096 = call i32 @dx.op.binary.i32(i32 40, i32 %1093, i32 %1095)  ; UMin(a,b)
  %1097 = call i32 @dx.op.binary.i32(i32 40, i32 %1092, i32 %1095)  ; UMin(a,b)
  %1098 = add i32 %1097, %1077
  %1099 = mul i32 %1098, %1039
  %1100 = add i32 %1099, %1096
  %1101 = lshr i32 %1100, 1
  %1102 = shl i32 %1101, 2
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = shl i32 %1100, 4
  %1106 = and i32 %1105, 16
  %1107 = lshr i32 %1104, %1106
  %1108 = and i32 %1107, 65535
  %1109 = uitofp i32 %1108 to float
  %1110 = fmul fast float %1109, 0x3EF0002000000000
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 %1094
  store float %1111, float* %1112, align 4, !tbaa !45, !noalias !57
  %1113 = add nuw nsw i32 %1094, 1
  %1114 = icmp eq i32 %1113, 4
  br i1 %1114, label %1120, label %1115

; <label>:1115                                    ; preds = %1091
  %1116 = getelementptr [4 x i32], [4 x i32]* %25, i32 0, i32 %1113
  %1117 = load i32, i32* %1116, align 4
  %1118 = getelementptr [4 x i32], [4 x i32]* %26, i32 0, i32 %1113
  %1119 = load i32, i32* %1118, align 4
  br label %1091

; <label>:1120                                    ; preds = %1091
  %1121 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1122 = fsub fast float 1.000000e+00, %1078
  %1123 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 0
  %1124 = load float, float* %1123, align 4, !tbaa !45, !noalias !57
  %1125 = fmul fast float %1124, %1122
  %1126 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 1
  %1127 = load float, float* %1126, align 4, !tbaa !45, !noalias !57
  %1128 = fmul fast float %1127, %1078
  %1129 = fadd fast float %1128, %1125
  %1130 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 2
  %1131 = load float, float* %1130, align 4, !tbaa !45, !noalias !57
  %1132 = fmul fast float %1131, %1122
  %1133 = getelementptr inbounds [4 x float], [4 x float]* %29, i32 0, i32 3
  %1134 = load float, float* %1133, align 4, !tbaa !45, !noalias !57
  %1135 = fmul fast float %1134, %1078
  %1136 = fadd fast float %1135, %1132
  %1137 = fsub fast float 1.000000e+00, %1121
  %1138 = fmul fast float %1129, %1137
  %1139 = fmul fast float %1136, %1121
  %1140 = fadd fast float %1139, %1138
  br label %1149

; <label>:1141                                    ; preds = %1016
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 1
  %1144 = and i32 %1143, 16777215
  %1145 = add i32 %1144, 0
  %1146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1146, %dx.types.Handle %6, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  br label %1149

; <label>:1149                                    ; preds = %1141, %1120
  %1150 = phi float [ %1140, %1120 ], [ %1148, %1141 ]
  %1151 = add i32 %55, 128
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = bitcast i32 %1153 to float
  %1155 = extractvalue %dx.types.ResRet.i32 %1152, 1
  %1156 = bitcast i32 %1155 to float
  %1157 = fmul fast float %1156, %1150
  %1158 = fadd fast float %1157, %1154
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.i32 %1163, 0
  %1165 = extractvalue %dx.types.CBufRet.i32 %1163, 1
  %1166 = extractvalue %dx.types.CBufRet.i32 %1163, 2
  %1167 = bitcast float %1160 to i32
  %1168 = bitcast float %1161 to i32
  %1169 = bitcast float %1162 to i32
  %1170 = sub i32 %1164, %1167
  %1171 = sub i32 %1165, %1168
  %1172 = sub i32 %1166, %1169
  %1173 = sitofp i32 %1170 to float
  %1174 = sitofp i32 %1171 to float
  %1175 = sitofp i32 %1172 to float
  %1176 = fmul fast float %1173, 0x3F30000000000000
  %1177 = fmul fast float %1174, 0x3F30000000000000
  %1178 = fmul fast float %1175, 0x3F30000000000000
  %1179 = fadd fast float %1176, %51
  %1180 = fadd fast float %1177, %52
  %1181 = fadd fast float %1158, %1178
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.CBufRet.f32 %1185, 1
  %1188 = fsub fast float %1183, %1186
  %1189 = fadd fast float %1188, %1179
  %1190 = fsub fast float %1184, %1187
  %1191 = fadd fast float %1190, %1180
  %1192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.i32 %1192, 0
  %1194 = mul i32 %1193, 204
  %1195 = fmul fast float %1179, %1179
  %1196 = fmul fast float %1180, %1180
  %1197 = fadd fast float %1195, %1196
  %1198 = fmul fast float %1181, %1181
  %1199 = fadd fast float %1197, %1198
  %1200 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 299)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = fsub fast float %1203, %1202
  %1205 = fmul fast float %1204, 0x3FEE666660000000
  %1206 = fsub fast float %1200, %1202
  %1207 = fdiv fast float %1206, %1205
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1209, 2.000000e+00
  %1211 = fsub fast float 3.000000e+00, %1210
  %1212 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %1022, float %1023, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1213 = call float @dx.op.unary.f32(i32 25, float %1212)  ; Rsqrt(value)
  %1214 = fmul fast float %1213, %1022
  %1215 = fmul fast float %1213, %1023
  %1216 = fmul fast float %1213, %1024
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 1
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1354, label %1220

; <label>:1220                                    ; preds = %1149
  br label %1221

; <label>:1221                                    ; preds = %1350, %1220
  %1222 = phi float [ %1351, %1350 ], [ 0.000000e+00, %1220 ]
  %1223 = phi i32 [ %1228, %1350 ], [ %1218, %1220 ]
  %1224 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1223)  ; FirstbitLo(value)
  %1225 = and i32 %1224, 31
  %1226 = shl i32 1, %1225
  %1227 = xor i32 %1226, -1
  %1228 = and i32 %1223, %1227
  %1229 = add i32 %1194, 176
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 3
  %1232 = and i32 %1231, 65535
  %1233 = add i32 %1232, %1224
  %1234 = mul i32 %1233, 144
  %1235 = add i32 %1234, 128
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 1
  %1238 = and i32 %1237, 2
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1350, label %1240

; <label>:1240                                    ; preds = %1221
  %1241 = add i32 %1194, 64
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 3
  %1244 = bitcast i32 %1243 to float
  %1245 = add i32 %1194, 80
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = bitcast i32 %1247 to float
  %1249 = extractvalue %dx.types.ResRet.i32 %1246, 1
  %1250 = bitcast i32 %1249 to float
  %1251 = call float @dx.op.dot3.f32(i32 55, float %1179, float %1180, float 1.000000e+00, float %1244, float %1248, float %1250)  ; Dot3(ax,ay,az,bx,by,bz)
  %1252 = add i32 %1194, 96
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 2
  %1255 = bitcast i32 %1254 to float
  %1256 = extractvalue %dx.types.ResRet.i32 %1253, 3
  %1257 = bitcast i32 %1256 to float
  %1258 = add i32 %1194, 112
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = bitcast i32 %1260 to float
  %1262 = call float @dx.op.dot3.f32(i32 55, float %1179, float %1180, float 1.000000e+00, float %1255, float %1257, float %1261)  ; Dot3(ax,ay,az,bx,by,bz)
  %1263 = extractvalue %dx.types.ResRet.i32 %1230, 2
  %1264 = lshr i32 %1263, 24
  %1265 = and i32 %1264, 7
  %1266 = add nuw nsw i32 %1265, 290
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 %1266)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1270 = fdiv fast float 5.000000e-01, %1268
  %1271 = fmul fast float %1270, 2.000000e+00
  %1272 = fsub fast float 1.000000e+00, %1271
  %1273 = fmul fast float %1272, %1251
  %1274 = fmul fast float %1272, %1262
  %1275 = fadd fast float %1273, %1270
  %1276 = fadd fast float %1274, %1270
  %1277 = fmul fast float %1275, %1269
  %1278 = fmul fast float %1276, %1269
  %1279 = add i32 %1234, 32
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %1281, 0
  %1283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1282, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1283, %dx.types.Handle %5, float %1277, float %1278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = fcmp fast une float %1285, 0.000000e+00
  br i1 %1286, label %1287, label %1350

; <label>:1287                                    ; preds = %1240
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 1
  %1290 = and i32 %1289, 128
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1292, label %1295

; <label>:1292                                    ; preds = %1287
  %1293 = fmul fast float %1285, %1222
  %1294 = fsub fast float %1222, %1293
  br label %1350

; <label>:1295                                    ; preds = %1287
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 0
  %1298 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1299 = extractvalue %dx.types.CBufRet.f32 %1296, 2
  %1300 = fadd fast float %1297, %1179
  %1301 = fadd fast float %1298, %1180
  %1302 = fadd fast float %1299, %1181
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = bitcast i32 %1304 to float
  %1306 = extractvalue %dx.types.ResRet.i32 %1303, 1
  %1307 = bitcast i32 %1306 to float
  %1308 = extractvalue %dx.types.ResRet.i32 %1303, 2
  %1309 = bitcast i32 %1308 to float
  %1310 = extractvalue %dx.types.ResRet.i32 %1303, 3
  %1311 = bitcast i32 %1310 to float
  %1312 = call float @dx.op.dot4.f32(i32 56, float %1300, float %1301, float %1302, float 1.000000e+00, float %1305, float %1307, float %1309, float %1311)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1313 = add i32 %1234, 16
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = bitcast i32 %1315 to float
  %1317 = extractvalue %dx.types.ResRet.i32 %1314, 1
  %1318 = bitcast i32 %1317 to float
  %1319 = extractvalue %dx.types.ResRet.i32 %1314, 2
  %1320 = bitcast i32 %1319 to float
  %1321 = extractvalue %dx.types.ResRet.i32 %1314, 3
  %1322 = bitcast i32 %1321 to float
  %1323 = call float @dx.op.dot4.f32(i32 56, float %1300, float %1301, float %1302, float 1.000000e+00, float %1316, float %1318, float %1320, float %1322)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1324 = fmul fast float %1209, %1209
  %1325 = fmul fast float %1324, 5.000000e+00
  %1326 = fmul fast float %1325, %1211
  %1327 = add i32 %1234, 80
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 16777215
  %1331 = add i32 %1330, 0
  %1332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1332, %dx.types.Handle %1333, float %1312, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float %1326)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = add i32 %1234, 96
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 3
  %1339 = lshr i32 %1338, 16
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = add i32 %1234, 112
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = fsub fast float %1335, %1344
  %1346 = fmul fast float %1345, %1340
  %1347 = fsub fast float %1346, %1222
  %1348 = fmul fast float %1347, %1285
  %1349 = fadd fast float %1348, %1222
  br label %1350

; <label>:1350                                    ; preds = %1295, %1292, %1240, %1221
  %1351 = phi float [ %1222, %1221 ], [ %1349, %1295 ], [ %1294, %1292 ], [ %1222, %1240 ]
  %1352 = icmp eq i32 %1228, 0
  br i1 %1352, label %1353, label %1221

; <label>:1353                                    ; preds = %1350
  br label %1354

; <label>:1354                                    ; preds = %1353, %1149
  %1355 = phi float [ 0.000000e+00, %1149 ], [ %1351, %1353 ]
  %1356 = fmul fast float %1214, %1355
  %1357 = fmul fast float %1215, %1355
  %1358 = fmul fast float %1216, %1355
  %1359 = fadd fast float %1356, %1179
  %1360 = fadd fast float %1357, %1180
  %1361 = fadd fast float %1358, %1181
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1366 = extractvalue %dx.types.CBufRet.f32 %1362, 3
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.CBufRet.f32 %1367, 2
  %1371 = extractvalue %dx.types.CBufRet.f32 %1367, 3
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1376 = extractvalue %dx.types.CBufRet.f32 %1372, 3
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1382 = fmul fast float %1359, %1363
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1364, float %1382)  ; FMad(a,b,c)
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1365, float %1383)  ; FMad(a,b,c)
  %1385 = fadd fast float %1384, %1366
  %1386 = fmul fast float %1368, %1359
  %1387 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1369, float %1386)  ; FMad(a,b,c)
  %1388 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1370, float %1387)  ; FMad(a,b,c)
  %1389 = fadd fast float %1388, %1371
  %1390 = fmul fast float %1373, %1359
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1374, float %1390)  ; FMad(a,b,c)
  %1392 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1375, float %1391)  ; FMad(a,b,c)
  %1393 = fadd fast float %1392, %1376
  %1394 = fmul fast float %1378, %1359
  %1395 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1379, float %1394)  ; FMad(a,b,c)
  %1396 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1380, float %1395)  ; FMad(a,b,c)
  %1397 = fadd fast float %1396, %1381
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1385)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1389)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1393)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1179)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1180)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1181)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %80)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %91)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 0, float %1189)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 3, i32 0, i8 1, float %1191)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.domainLocation.f32(i32, i8) #0

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
!dx.viewIdState = !{!20}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"ds", i32 6, i32 0}
!4 = !{!5, null, !12, !16}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 41, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 42, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 36, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 35, i32 1, i32 11, i32 0, null}
!12 = !{!13, !14, !15}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!15 = !{i32 2, %superterrainConstantBuffer* undef, !"", i32 0, i32 0, i32 1, i32 36, null}
!16 = !{!17, !18, !19}
!17 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!20 = !{[21 x i32] [i32 5, i32 14, i32 7263, i32 11375, i32 0, i32 0, i32 0, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!21 = !{void ()* @ds_main, !"ds_main", !22, !4, !41}
!22 = !{!23, !29, !37}
!23 = !{!24, !27}
!24 = !{i32 0, !"TEXCOORD", i8 9, i8 0, !25, i8 2, i32 1, i8 3, i32 0, i8 0, !26}
!25 = !{i32 0}
!26 = !{i32 3, i32 3}
!27 = !{i32 1, !"TEXCOORD", i8 5, i8 0, !28, i8 1, i32 1, i8 1, i32 1, i8 0, null}
!28 = !{i32 2}
!29 = !{!30, !32, !34, !35}
!30 = !{i32 0, !"SV_Position", i8 9, i8 3, !25, i8 4, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 1, !"POS", i8 9, i8 0, !25, i8 2, i32 1, i8 3, i32 1, i8 0, !33}
!33 = !{i32 3, i32 7}
!34 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !25, i8 2, i32 1, i8 4, i32 2, i8 0, !31}
!35 = !{i32 3, !"TEXCOORDS", i8 9, i8 0, !36, i8 2, i32 1, i8 2, i32 3, i8 0, !26}
!36 = !{i32 6}
!37 = !{!38, !40}
!38 = !{i32 0, !"SV_TessFactor", i8 9, i8 25, !39, i8 0, i32 3, i8 1, i32 0, i8 3, null}
!39 = !{i32 0, i32 1, i32 2}
!40 = !{i32 1, !"SV_InsideTessFactor", i8 9, i8 26, !25, i8 0, i32 1, i8 1, i32 3, i8 0, null}
!41 = !{i32 0, i64 16, i32 2, !42}
!42 = !{i32 2, i32 3}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 1}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !52, !53, !55}
!50 = distinct !{!50, !51, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentX"}
!51 = distinct !{!51, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z"}
!52 = distinct !{!52, !51, !"\01?VHM_SampleNormal_Internal@@YA?AV?$vector@M$02@@UVHM_SampleContext@@MMAIAV1@1@Z: %tangentY"}
!53 = distinct !{!53, !54, !"\01?TerrainVertexShader@@YAXUTerrainVertexInput@@UInvocationIDs@@UTerrainPixelInput@@AIAV?$vector@M$02@@@Z: %pixel"}
!54 = distinct !{!54, !"\01?TerrainVertexShader@@YAXUTerrainVertexInput@@UInvocationIDs@@UTerrainPixelInput@@AIAV?$vector@M$02@@@Z"}
!55 = distinct !{!55, !54, !"\01?TerrainVertexShader@@YAXUTerrainVertexInput@@UInvocationIDs@@UTerrainPixelInput@@AIAV?$vector@M$02@@@Z: %objPos"}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = !{!53, !55}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}

